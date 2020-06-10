create database thaotacvoibang;
use thaotacvoibang;
create table contacts
(contacts_id INT(11) NOT NULL AUTO_INCREMENT,
last_name VARCHAR(30) NOT NULL ,
first_name VARCHAR(25),
birthday DATE,
CONSTRAINT contacts_pk PRIMARY KEY (contacts_id)
);

CREATE TABLE suppliers
(supplier_id INT(11) NOT NULL AUTO_INCREMENT,
supplier_name VARCHAR(50) NOT NULL ,
account_rep VARCHAR(30) NOT NULL DEFAULT 'TBD',
CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)

);
ALTER TABLE contacts
    ADD full_name VARCHAR(40) NOT NULL
        AFTER contacts_id;
ALTER TABLE contacts
    MODIFY last_name VARCHAR(50) NOT NULL ;
ALTER TABLE contacts
    DROP COLUMN full_name;
ALTER TABLE contacts
    CHANGE COLUMN center_name full_name
    VARCHAR(60) NOT NULL ;
ALTER TABLE contacts
    RENAME TO new_contacts;
