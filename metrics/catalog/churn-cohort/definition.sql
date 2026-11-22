SELECT
    cohort_week,
    COUNT(DISTINCT account_id) AS retained_accounts
FROM analytics.subscriptions
WHERE cancelled_at IS NULL
GROUP BY cohort_week
