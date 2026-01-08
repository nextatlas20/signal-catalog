SELECT COUNT(*) AS failing_rows
FROM analytics.atlas_orders
WHERE atlas_orders < 0;
