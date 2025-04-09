SELECT
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(CASE WHEN type = 'credit' THEN amount ELSE 0 END) AS total_income,
    SUM(CASE WHEN type = 'debit' THEN amount ELSE 0 END) AS total_expenses,
    SUM(CASE WHEN type = 'credit' THEN amount ELSE 0 END) -
    SUM(CASE WHEN type = 'debit' THEN amount ELSE 0 END) AS net_savings
FROM
    transactions
GROUP BY
    month
ORDER BY
    month;
