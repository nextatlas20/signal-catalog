SELECT COUNT(*) AS failing_rows
FROM analytics.refund_rate
WHERE refund_rate < 0 OR refund_rate > 1;
