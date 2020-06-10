use classicmodels;
SELECT status FROM orders
GROUP BY status;
SELECT status, COUNT(*) AS 'So luong stasus'
FROM orders
GROUP BY status;
SELECT status, SUM(quantityOrdered*priceEach) AS 'Tong tien'
FROM orders
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
GROUP BY status;
SELECT orders.orderNumber, COUNT(quantityOrdered*priceEach) AS 'Tong Tien'
FROM orders
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
GROUP BY orders.orderNumber;

SELECT orderNumber, COUNT(quantityOrdered*priceEach) AS 'Total'
FRom orderdetails
GROUP BY orderNumber;

SELECT year(orderDate) AS year, SUM(quantityOrdered*priceEach) AS 'Total'
From orders
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
WHERE status= 'shipped'
GROUP BY year
HAVING year > 2003;