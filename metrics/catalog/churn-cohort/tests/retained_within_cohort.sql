SELECT COUNT(*) AS failing_rows
FROM analytics.churn_cohort
WHERE retained_accounts < 0;
