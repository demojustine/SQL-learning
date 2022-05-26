-- Ch9 - EP01 - stored procedures
-- Ch9 - EP02 - create stored procedures
delimiter $$
create procedure get_clients()
begin
	select *
	from clients;
end$$

delimiter ;

call get_clients();

-- exercise 
delimiter $$
create procedure get_invoices_with_balance()
begin
	select *
	from invoices
    where (invoice_total- payment_total) >0;
end$$

delimiter ;
