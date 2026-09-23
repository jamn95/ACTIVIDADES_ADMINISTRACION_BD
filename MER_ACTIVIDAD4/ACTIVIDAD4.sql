use mydb;

INSERT INTO customers (customer_id, name, email, street, city, state, zip_code) VALUES
(1, 'John Smith', 'john@email.com', '123 Main St', 'Boston', 'MA', '02101'),
(2, 'Jane Doe', 'jane@email.com', '456 Oak Avenue', 'Portland', 'OR', '97201'),
(3, 'Sarah Johnson', 'sarah.j@company.com', '789 Pine Street', 'Seattle', 'WA', '98101');

INSERT INTO authors (author_id, name) VALUES
(1, 'C.J. Date'),
(2, 'Anthony Molinaro'),
(3, 'Joe Celko');

INSERT INTO books (book_id, title, author_id, price) VALUES
(1, 'Database Design Principles', 1, 45.99),
(2, 'SQL Cookbook', 2, 39.99),
(3, 'Advanced SQL Techniques', 3, 52.99);

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-01-15'),
(2, 1, '2024-01-20'),
(3, 2, '2024-01-18'),
(4, 1, '2024-02-01'),
(5, 3, '2024-02-03');

INSERT INTO order_items (order_id, book_id, quantity, unit_price) VALUES
(1, 1, 2, 45.99),
(1, 2, 1, 39.99),
(2, 1, 1, 46.99),
(3, 2, 1, 35.99),
(4, 3, 1, 52.99),
(5, 1, 3, 45.99);
