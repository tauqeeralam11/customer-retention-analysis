SELECT
    customer_unique_id,
    MIN(order_purchase_timestamp) AS first_purchase_date
FROM clean_orders
GROUP BY customer_unique_id;

SELECT
    customer_unique_id,
    DATE_FORMAT(
        MIN(order_purchase_timestamp),
        '%Y-%m'
    ) AS cohort_month
FROM clean_orders
GROUP BY customer_unique_id;