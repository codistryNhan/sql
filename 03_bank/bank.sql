--Create a new database called Second_International_Bank using MySQL Workbench
CREATE DATABASE second_international_bank;

USE second_international_bank;

/*
Within this new database, create a table called Customers with six columns that are capable of holding the following values...
ID: An integer that will be used as the primary key for the table and automatically increments
FirstName: A string which will hold a customer's first name
LastName: A string which will hold a customer's last name
Loan: A boolean which will let users know if the customer has any unpaid loans
Checking: A decimal value which will let users know how much money a customer has in their checking account
Savings: A decimal values which will let users know how much money a customer has in their savings account

Create five new rows of data to fill up the Customers table with some data
*/
CREATE TABLE customers (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  loan BOOLEAN,
  checking DECIMAL(13,2),
  savings DECIMAL(13,2),
  PRIMARY KEY (id)
);

INSERT INTO customers(first_name, last_name, loan, checking, savings)
VALUES
("Nhan", "Nguyen", false, 2531.50, 11345.61),
("Bob", "Smith", true, 543.31, 110.61),
("Suky", "Loo", false, 6678.23, 20304.55),
("David", "Black", true, 556.71, 0),
("Sarah", "Lee", false, 3456.11, 1000.00);

SELECT * FROM customers;
