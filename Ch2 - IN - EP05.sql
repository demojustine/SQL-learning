-- ch2 IN ep 05
select *
from customers
where state = 'VA' OR 'GA' OR 'FL';
-- not true above because [state = 'VA'] is a boolean (the answer is true or flase)
-- but '[GA'] is only a string; can not compare
-- the true version is following
select *
from customers
where state = 'VA' OR state ='GA' OR state ='FL';

-- use IN the order is not matter
select *
from customers
where state NOT IN ('VA' ,'GA' ,'FL');

-- excercise 
-- return products with 
-- quantity in stock equal to 49,38,72

select *
from products
where quantity_in_stock IN (49,38,72)