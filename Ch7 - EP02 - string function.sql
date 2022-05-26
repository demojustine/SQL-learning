-- Ch7 - EP02 - string function 
select length ('sky');

select upper('sky');
select lower('SKYY');

select ltrim('  sky'); -- short for left trim
select rtrim('sky  ');
select trim('  sk y ');

select left('kingdergarten', 4);
select right('kingdergarten', 6);

select substring('kingdergarten', 3,2); -- if not have second number deafult is to the end

select locate('n','kingdergarten'); -- if do not have return 0

select replace('kingdergarten','garten','hah');

select concat ('first','last');

use sql_store;
select concat(first_name, ' ', last_name) as naame
from customers;