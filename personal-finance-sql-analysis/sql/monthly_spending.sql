SELECT
    DATE_TRUNC('month', transaction_date) AS month,
    category,
    SUM(amount) AS total_spent
FROM
    transactions
WHERE
    type = 'debit'
GROUP BY
    month, category
ORDER BY
    month, total_spent DESC;
