-- Ch6 - EP07 - correlated subqueries
-- select employees whose salary is above the average in their office

use sql_hr;
-- for each employees calculate the avg salary for office return if salary >avg

select *
from employees e
where salary >(
SELECT AVG (salary)
from employees
where office_id=e.office_id
);

-- exercse
-- get invoices that are larger than the client's average invoice amount

use sql_invoicing;

select *
from invoices i
where invoice_total > (
	select avg(invoice_total)
    from invoices
    where i.client_id = client_id 
)