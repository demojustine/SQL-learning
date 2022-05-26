-- ch2 WHERE EP 03
SELECT *
FROM customers
WHERE points >3000;

select *
FROM customers
WHERE state = "VA";

-- exerceise ch2 EP 03
-- get the orders placed this year (2019)
-- table 'orders'
select *
from orders
where order_date >= "2019-01-01" 
