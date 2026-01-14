SELECT COUNT(*) AS failing_rows
FROM analytics.session_depth
WHERE avg_session_seconds < 0;
