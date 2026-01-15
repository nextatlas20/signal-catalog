SELECT COUNT(*) AS failing_rows
FROM analytics.revenue_lag
WHERE recognition_lag_days < 0;
