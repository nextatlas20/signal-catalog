SELECT
    refund_date,
    SUM(refund_amount) / NULLIF(SUM(gross_amount), 0) AS refund_rate
FROM finance.payment_events
GROUP BY refund_date
