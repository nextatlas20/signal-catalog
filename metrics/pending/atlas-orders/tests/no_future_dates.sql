SELECT COUNT(*) AS failing_rows
FROM analytics.atlas_orders
WHERE order_date > CURRENT_DATE;
