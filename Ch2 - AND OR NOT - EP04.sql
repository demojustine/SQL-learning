-- Ch2 AND & OR & NOT EP 04
select *
from customers
where birth_date > '1990-01-01' OR points > 1000 AND state = 'VA';

select *
from customers
where NOT birth_date > '1990-01-01' OR points > 1000;
-- same as
-- where birth_date <= '1990-01-01' AND points <= 1000

-- exerciese ch2 ep 04
-- from table ' order_items' get the items
-- for order #6
-- where the total price is grater than 30

select *
from order_items
where order_id = 6 and (quantity * unit_price > 30) 