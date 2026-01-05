SELECT COUNT(*) AS failing_rows
FROM analytics.gross_bookings
WHERE gross_bookings < 0;
