SELECT COUNT(*) AS failing_rows
FROM (
    SELECT cohort_week, account_id
    FROM analytics.churn_cohort_members
    GROUP BY cohort_week, account_id
    HAVING COUNT(*) > 1
) duplicates;
