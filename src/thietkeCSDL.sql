CREATE DATABASE banhang;
use banhang;
CREATE TABLE customers
(customerNumber  INT PRIMARY KEY ,
 customerName varchar(50) NOT NULL ,
 contactLastName varchar(50) NOT NULL ,
 contactFirstName varchar(50) NOT NULL ,
 phone varchar(50) NOT NULL ,
 addressLine1 varchar(50) NOT NULL ,
 addressLine2 varchar(50),
 city varchar(50) NOT NULL ,
 state varchar(50) NOT NULL ,
 postalCode varchar(15) NOT NULL ,
 country varchar(50) NOT NULL ,
 creditLimit double,
 employeeNumber INT,
 CONSTRAINT customer_employee FOREIGN KEY (employeeNumber) REFERENCES employees(employeeNumber)

);
CREATE  TABLE orders
(orderNumber INT PRIMARY KEY ,
 orderDate DATE NOT NULL ,
 requiredDate DATE NOT NULL ,
 shippedDate DATE,
 status VARCHAR(15) NOT NULL ,
 comments TEXT,
 quantityOrdered INT NOT NULL ,
 priceEach DOUBLE NOT NULL,
 customerNumber INT,
 CONSTRAINT order_customer FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)

);
CREATE TABLE payments
(customerNumber INT NOT NULL UNIQUE ,
 checkNumber VARCHAR(50) NOT NULL ,
 paymentDate DATE NOT NULL ,
 amount DOUBLE NOT NULL,
 customerID INT,
 CONSTRAINT payment_customer FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)

);
CREATE TABLE products
(productCode VARCHAR(15) PRIMARY KEY ,
 productName VARCHAR(70) NOT NULL ,
 productScale VARCHAR(10) NOT NULL ,
 productVendor VARCHAR(50) NOT NULL ,
 productDescription TEXT NOT NULL ,
 quantityInStock INT NOT NULL ,
 buyPrice DOUBLE NOT NULL ,
 MSRP DOUBLE NOT NULL,
 productLine VARCHAR(50),
 CONSTRAINT product_productLine FOREIGN KEY (productLine) REFERENCES productlines(productLine)

);
CREATE TABLE productlines
(productLine VARCHAR(50) PRIMARY KEY ,
 textDescription VARCHAR(500),
 image VARCHAR(500)

);
CREATE TABLE employees
(employeeNumber INT PRIMARY KEY ,
 lastName VARCHAR(50) NOT NULL ,
 firstName VARCHAR(50) NOT NULL ,
 email VARCHAR(100) NOT NULL ,
 jobTitle VARCHAR(50) NOT NULL,
 reportTo INT,
 officeCode VARCHAR(10),
 CONSTRAINT employee_employee FOREIGN KEY (reportTo) REFERENCES employees(employeeNumber),
 CONSTRAINT employee_office FOREIGN KEY (officeCode) REFERENCES offices(officeCode)

);
CREATE TABLE offices
(officeCode VARCHAR(10) PRIMARY KEY ,
 city VARCHAR(50) NOT NULL ,
 phone VARCHAR(50) NOT NULL ,
 addressLine1 VARCHAR(50) NOT NULL ,
 addressLine2 VARCHAR(50),
 state VARCHAR(50),
 country VARCHAR(50) NOT NULL ,
 postalCode VARCHAR(15) NOT NULL

);
CREATE TABLE OrderDetails
(orderNumber INT,
 productCode  VARCHAR(15),
 CONSTRAINT order_orderDetail FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),
 CONSTRAINT product_orderDetail FOREIGN KEY (productCode) REFERENCES products(productCode)

)



