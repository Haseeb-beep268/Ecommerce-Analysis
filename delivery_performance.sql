SELECT 
    c.customer_state,
    ROUND(AVG(DATEDIFF(
        o.order_delivered_customer_date,
        o.order_estimated_delivery_date
    )), 2) AS avg_delay_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delay_days DESC;
