SELECT COUNT(*) AS failing_rows
FROM analytics.daily_active_users
WHERE event_date > CURRENT_DATE;
