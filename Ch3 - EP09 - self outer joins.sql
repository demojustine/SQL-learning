-- Ch3 - EP09 - self outer joins
use sql_hr;

-- do not contain manager herself
select 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
from employees e
join employees m
	on e.reports_to = m.employee_id;
    
-- use outer joins 
select 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
from employees e
left join employees m
	on e.reports_to = m.employee_id