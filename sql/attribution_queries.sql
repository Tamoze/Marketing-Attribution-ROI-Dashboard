-- Clean Multi-Touch Attribution SQL Logic
-- Purpose:
--   Sequence customer touchpoints before purchase and calculate
--   first-touch, last-touch, and linear attribution.
--
-- Notes:
--   1. This version uses SQLite-style datetime syntax:
--        datetime(t.timestamp, '-30 days')
--   2. If using SQL Server, replace it with:
--        DATEADD(day, -30, t.timestamp)
--   3. refund_flag = 0 and gross_revenue IS NOT NULL are used to keep valid purchases.

WITH campaigns_extended AS (
    SELECT
        campaign_id,
        channel,
        objective,
        start_date,
        end_date,
        target_segment,
        expected_uplift
    FROM campaigns

    UNION ALL

    SELECT
        0 AS campaign_id,
        'No Campaign' AS channel,
        'Organic/Direct/Unattributed' AS objective,
        NULL AS start_date,
        NULL AS end_date,
        'Unknown' AS target_segment,
        0 AS expected_uplift
),

touchpoints AS (
    SELECT
        t.transaction_id,
        t.customer_id,
        t.timestamp AS transaction_time,
        t.gross_revenue,

        e.event_id,
        e.timestamp AS event_time,
        e.event_type,
        e.campaign_id,
        e.traffic_source,

        COALESCE(c.channel, 'No Campaign') AS channel,
        COALESCE(c.objective, 'Organic/Direct/Unattributed') AS objective

    FROM transactions t

    INNER JOIN events e
        ON t.customer_id = e.customer_id
       AND e.timestamp <= t.timestamp
       AND e.timestamp >= datetime(t.timestamp, '-30 days')

    LEFT JOIN campaigns_extended c
        ON e.campaign_id = c.campaign_id

    WHERE t.refund_flag = 0
      AND t.gross_revenue IS NOT NULL
      AND e.event_type IN ('view', 'click', 'add_to_cart')
),

sequenced_touchpoints AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY transaction_id
            ORDER BY event_time ASC
        ) AS touch_order_asc,

        ROW_NUMBER() OVER (
            PARTITION BY transaction_id
            ORDER BY event_time DESC
        ) AS touch_order_desc,

        COUNT(*) OVER (
            PARTITION BY transaction_id
        ) AS total_touches

    FROM touchpoints
),

attribution AS (
    SELECT
        transaction_id,
        customer_id,
        campaign_id,
        channel,
        objective,
        traffic_source,
        event_type,
        event_time,
        transaction_time,
        gross_revenue,
        touch_order_asc,
        touch_order_desc,
        total_touches,

        CASE
            WHEN touch_order_asc = 1 THEN gross_revenue
            ELSE 0
        END AS first_touch_revenue,

        CASE
            WHEN touch_order_desc = 1 THEN gross_revenue
            ELSE 0
        END AS last_touch_revenue,

        gross_revenue * 1.0 / total_touches AS linear_revenue

    FROM sequenced_touchpoints
)

SELECT *
FROM attribution;