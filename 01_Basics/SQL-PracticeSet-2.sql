CREATE DATABASE Billing;

USE Billing;

CREATE TABLE Product(
Id INT(5) PRIMARY KEY,
Name VARCHAR(200) NOT NULL,
Price INT(5) NOT NULL,
Brand VARCHAR(200) NOT NULL,
Des VARCHAR(300) NOT NULL);

INSERT INTO Product (Id, Name, Price, Brand, Des) VALUES
(1, 'Biscuit', 15, 'TATA', 'Food snack item'),
(2, 'Pen', 5, 'TATA', 'Stationery product'),
(3, 'Battery', 50, 'Reliance', 'Electronic power device'),
(4, 'Mobile', 15000, 'Samsung', 'Electronic communication device'),
(5, 'Laptop', 55000, 'HP', 'Electronic computing device'),
(6, 'Refrigerator', 30000, 'Reliance', 'Electronic cooling appliance'),
(7, 'Fan', 1200, 'TATA', 'Electronic air cooling device'),
(8, 'Bread', 25, 'Britannia', 'Food bakery item'),
(9, 'Butter', 60, 'Amul', 'Dairy food product'),
(10, 'Printer', 8000, 'HP', 'Electronic printing device'),
(11, 'Camera', 12000, 'Sony', 'Electronic photography device'),
(12, 'Television', 22000, 'Reliance', 'Electronic entertainment device'),
(13, 'Powerbank', 1500, 'TATA', 'Electronic charging device'),
(14, 'Router', 2500, 'TPLink', 'Electronic networking device'),
(15, 'Rice', 40, 'TATA', 'Grocery food item'),
(16, 'Soap', 35, 'Patanjali', 'Daily use product'),
(17, 'Pasta', 70, 'Britannia', 'Food item'),
(18, 'ProteinBar', 120, 'Reliance', 'Health food item'),
(19, 'Keyboard', 900, 'HP', 'Electronic input device'),
(20, 'Pendrive', 600, 'TATA', 'Electronic storage device');

SELECT *FROM Product;

-- Query to search product name whose name contain b letter any where
SELECT *FROM Product WHERE Name LIKE '%b%';

-- Query to search product name whose name ends with nia and price greater than 10
SELECT *FROM Product WHERE Price>10 AND Name LIKE '%nia';

-- query to search product name whose name Start with p and price greater than equal 5 and less than equal 20
SELECT *FROM Product WHERE name LIKE 'p%' AND Price>=5 AND Price<=20;

-- Query count the total number of product whose brand is TATA
SELECT count(Name) FROM Product WHERE Brand='TATA';

-- query to count the sum of all product prices
SELECT sum(Price) FROM Product;

-- Query to calculate the avg () price of product
SELECT avg(Price) FROM Product;

--  query to show the min () and max () price of product
SELECT MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice FROM Product;

-- query to display the product details whose brand is Reliance and TATA
SELECT *FROM Product WHERE Brand IN ('Reliance','TATA');

-- query to display the product detail whose description contain electronic word
SELECT *FROM Product WHERE Des LIKE '%electronic%';

-- query to display the product information whose price not between 10 and 100
SELECT *FROM Product WHERE Price BETWEEN 10 AND 100;

