use mydb;

INSERT INTO CUSTOMER (idCUSTOMER, FIRST_NAME, LAST_NAME) VALUES
(101, 'John', 'Doe'),
(102, 'Jane', 'Smith'),
(103, 'Alice', 'Brown');


INSERT INTO PRODUCT (idPRODUCT, PRODUCT_NAME) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Tablet'),
(4, 'Keyboard'),
(5, 'Monitor'),
(6, 'Pen');


INSERT INTO PURCHASE (idPURCHASE, CUSTOMER_idCUSTOMER, PRODUCT_idPRODUCT) VALUES
(1, 101, 1),
(2, 101, 2),
(3, 102, 3),
(4, 103, 4),
(5, 103, 5),
(6, 103, 6);