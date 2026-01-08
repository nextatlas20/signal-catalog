SELECT
    order_date,
    COUNT(*) AS atlas_orders
FROM commerce.orders
WHERE source_service = 'atlas'
GROUP BY order_date
