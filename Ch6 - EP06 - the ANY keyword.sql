-- Ch6 - EP05 - the ANY keyword
select *
from invoices
where invoice_total > SOME (
	select invoice_total
    from invoices
    where client_id = 3
);

-- select clients with at least two invoices
select *
from clients
where client_id in (
select client_id
from invoices
group by client_id
having count(*) >=2
);

select *
from clients
where client_id = ANY (
select client_id
from invoices
group by client_id
having count(*) >=2
);