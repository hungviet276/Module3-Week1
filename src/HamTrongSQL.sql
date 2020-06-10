use classicmodels;
SELECT AVG(buyPrice)
From products;
SELECT COUNT(productCode)
FROM products;
SELECT productName, MAX(buyPrice)
FROM products;
SELECT productName, MIN(buyPrice)
FROM products;
SELECT SUM(quantityInStock)
FROM products;
SELECT SUM(quantityInStock)
FROM products
WHERE productLine = 'Motorcycles';
SELECT UCASE(productName)
FROM products;
SELECT LCASE(productName)
FROM products;
SELECT LENGTH(productName)
FROM products
WHERE productCode = 'S10_1678';
SELECT NOW()
FROM products;
SELECT productVendor, COUNT(productCode)
FROM products
WHERE productLine = 'Motorcycles'
GROUP BY productVendor
ORDER BY productVendor;
SELECT productVendor, COUNT(productCode) AS count
From products
WHERE productLine = 'Motorcycles'
GROUP BY productVendor
HAVING count > 10
ORDER BY productVendor;
