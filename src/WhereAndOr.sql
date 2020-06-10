use classicmodels;
SELECT productCode, productName,buyPrice, quantityInStock FROM products
WHERE buyPrice > 56.76 AND quantityInStock >10;
SELECT productCode, productName, buyPrice ,textDescription From products
INNER JOIN productlines ON products.productLine = productlines.productLine
WHERE buyPrice < 95.59 AND buyPrice >56.76;
SELECT productCode, productName, buyPrice, quantityInStock, productVendor, productLine
FROM products
WHERE productLine = 'Classic Cars' OR productLine ='Min Lin Diecast';