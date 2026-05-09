SELECT
    customer_unique_id,
    ROUND(
        SUM(payment_value),
        2
    ) AS total_spend
FROM clean_orders
GROUP BY customer_unique_id
ORDER BY total_spend DESC;

SELECT
    ROUND(
        AVG(order_total),
        2
    ) AS average_order_value
FROM (
    SELECT
        order_id,
        SUM(payment_value) AS order_total
    FROM clean_orders
    GROUP BY order_id
) order_summary;