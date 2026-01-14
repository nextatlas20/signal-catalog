SELECT
    event_date,
    AVG(session_seconds) AS avg_session_seconds
FROM analytics.sessions
GROUP BY event_date
