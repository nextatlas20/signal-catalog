SELECT
    iso_week,
    SUM(booking_amount) AS gross_bookings
FROM finance.confirmed_bookings
GROUP BY iso_week
