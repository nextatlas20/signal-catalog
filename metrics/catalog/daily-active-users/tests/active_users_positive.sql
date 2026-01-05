SELECT COUNT(*) AS failing_rows
FROM analytics.daily_active_users
WHERE active_users < 0;
