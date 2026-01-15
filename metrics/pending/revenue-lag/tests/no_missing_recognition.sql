SELECT COUNT(*) AS failing_rows
FROM finance.bookings
WHERE recognized_at IS NULL;
