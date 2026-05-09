SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT customer_unique_id) AS active_users
FROM clean_orders
GROUP BY month
ORDER BY month;


SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM clean_orders
GROUP BY customer_unique_id
HAVING total_orders > 1;


SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS total_orders
    FROM clean_orders
    GROUP BY customer_unique_id
    HAVING total_orders > 1
) repeat_customer_table;