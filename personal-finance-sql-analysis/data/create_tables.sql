CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    description VARCHAR(255),
    category VARCHAR(100),
    type VARCHAR(10), -- 'credit' or 'debit'
    amount DECIMAL(10, 2),
    account_type VARCHAR(50)
);
