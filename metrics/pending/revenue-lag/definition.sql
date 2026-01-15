SELECT
    booking_month,
    AVG(DATE_DIFF('day', booked_at, recognized_at)) AS recognition_lag_days
FROM finance.bookings
GROUP BY booking_month
