SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM clean_orders
GROUP BY customer_unique_id
HAVING total_orders = 1;

SELECT
    ROUND(
        (
            SUM(
                CASE
                    WHEN total_orders = 1 THEN 1
                    ELSE 0
                END
            ) * 100.0
        ) / COUNT(*),
        2
    ) AS churn_rate
FROM (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS total_orders
    FROM clean_orders
    GROUP BY customer_unique_id
) customer_summary;