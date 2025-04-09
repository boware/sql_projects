SELECT
    description,
    category,
    COUNT(*) AS frequency,
    AVG(amount) AS avg_amount
FROM
    transactions
WHERE
    type = 'debit'
GROUP BY
    description, category
HAVING
    COUNT(*) > 1
ORDER BY
    frequency DESC;
