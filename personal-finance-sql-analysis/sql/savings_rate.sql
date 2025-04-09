SELECT
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(CASE WHEN type = 'credit' THEN amount ELSE 0 END) AS income,
    SUM(CASE WHEN type = 'debit' THEN amount ELSE 0 END) AS expenses,
    ROUND(100.0 * (
        SUM(CASE WHEN type = 'credit' THEN amount ELSE 0 END) -
        SUM(CASE WHEN type = 'debit' THEN amount ELSE 0 END)
    ) / NULLIF(SUM(CASE WHEN type = 'credit' THEN amount ELSE 0 END), 0), 2) AS savings_rate_percent
FROM
    transactions
GROUP BY
    month
ORDER BY
    month;
