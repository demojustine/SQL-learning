-- ch2 SELECT ep02
SELECT first_name, 
	   last_name,
       points * 10 + 100 AS 'discount factor'
FROM customers;

SELECT DISTINCT state
FROM customers;

-- ---------------------
-- Exercise Ch02 EP02 --
-- ---------------------
-- return all the products : name 
-- unit prices & new prices (unit prices *1.1)
SELECT name , unit_price,
       unit_price * 1.1 AS "new price"
FROM products;

