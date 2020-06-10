use classicmodels;
SELECT customers.customerNumber, customerName, phone, paymentDate
FROM customers
INNER JOIN payments ON customers.customerNumber = payments.customerNumber
WHERE city = 'Las Vegas';
SELECT customers.customerNumber, customers.customerName, orders.orderNumber,
       orders.status
FROM customers
LEFT JOIN orders ON customers.customerNumber = orders.customerNumber;
select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
                         on customers.customerNumber = orders.customerNumber
where orderNumber is null;

