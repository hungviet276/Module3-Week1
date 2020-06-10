CREATE database khoachinhkhoangoai;
use khoachinhkhoangoai;
CREATE TABLE customers
(customer_number INT NOT NULL PRIMARY KEY ,
full_name NVARCHAR(50),
address NVARCHAR(100),
email NVARCHAR(100),
phone INT

);
CREATE TABLE accounts
(account_number INT(11) PRIMARY KEY ,
 account_type NVARCHAR(20),
 date DATE,
 balance INT,
 customer_number INT,
 FOREIGN KEY (customer_number) REFERENCES customers(customer_number)
);
CReaTE table transactions
(tran_number INT PRIMARY KEY ,
 account_number INT(11),
 date DATE,
 amounts INT,
 descriptions NVARCHAR(100),
 account_number INT(11),
 FOREIGN KEY (account_number) REFERENCES accounts(account_number)

);
