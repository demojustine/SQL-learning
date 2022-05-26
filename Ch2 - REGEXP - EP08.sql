-- ch2 REGEXP ep 08
select *
from customers
where last_name like '%field%';

select *
from customers
where last_name regexp 'field';

select *
from customers
where last_name regexp 'field|mac|rose';

select *
from customers
where last_name regexp '[gim]e';

select *
from customers
where last_name regexp '[a-h]e';

-- exercise
-- get the customers whose
-- first name are ELKA or AMBUR ==> 4,6
select *
from customers
where first_name regexp 'ELKA|AMBUR';

-- last names end with EY or ON ==> 1,3,5,7,
select *
from customers
where last_name regexp 'EY$|ON$';

-- last names start with MY or contains SE ==>4,8,10
select *
from customers
where last_name regexp '^MY|SE';

-- last names contain B followed by R or U ==> 2,4
select *
from customers
where last_name regexp 'B[RU]';