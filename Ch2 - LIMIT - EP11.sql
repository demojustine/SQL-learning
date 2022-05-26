-- ch2 LIMIT ep 011
SELECT *
FROM customers
LIMIT 6, 3;

-- exercise
-- get the top three loyal customers ==>5,6,3
SELECT *
FROM customers
order by points desc
LIMIT 3;