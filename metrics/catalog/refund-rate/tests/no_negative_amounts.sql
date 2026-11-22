SELECT COUNT(*) AS failing_rows
FROM finance.payment_events
WHERE refund_amount < 0 OR gross_amount < 0;
