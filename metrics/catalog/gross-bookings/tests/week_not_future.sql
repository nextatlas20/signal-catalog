SELECT COUNT(*) AS failing_rows
FROM analytics.gross_bookings
WHERE iso_week > DATE_TRUNC('week', CURRENT_DATE);
