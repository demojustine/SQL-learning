-- ch2 BETWEEN ep 06
select *
from customers
where points >= 1000 AND points <=3000;
-- not neat enough

select *
from customers
where points between 1000 and 3000;

-- excersise
-- return customers born between 1/1/1990 and 1/1/2000
select *
from customers
where birth_date between '1990-01-01' and '2020-01-01';

