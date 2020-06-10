use thaotacvoibang;
CREATE TABLE customers
(id INT AUTO_INCREMENT PRIMARY KEY ,
name VARCHAR(40),
address VARCHAR(255),
email VARCHAR(255)

);

CREATE TABLE orders
(id INT AUTO_INCREMENT,
staff VARCHAR(50),
PRIMARY KEY (id),
custumers_id INT ,
FOREIGN KEY (custumers_id) REFERENCES customers(id)

);