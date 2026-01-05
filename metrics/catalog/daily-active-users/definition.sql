SELECT
    event_date,
    COUNT(DISTINCT user_id) AS active_users
FROM analytics.sessions
WHERE session_seconds >= 10
GROUP BY event_date
