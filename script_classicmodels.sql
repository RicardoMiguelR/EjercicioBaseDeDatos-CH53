-- a. Consultar las tablas por separado ->
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

--  b. Crear los JOINS necesarios para obtener las órdenes completas por cliente ->
SELECT
customers.customerNumber, 
customers.customerName, 
orders.orderNumber, 
orders.orderDate, 
orderdetails.productCode, 
products.productName, 
orderdetails.quantityOrdered, 
orderdetails.priceEach
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON orderdetails.productCode = products.productCode;

-- Comprobar que la vista fue creada ->
SELECT * FROM vista_ordenes_cliente;
