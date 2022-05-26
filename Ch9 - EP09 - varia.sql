-- Ch9 - EP09 - variables

call get_unpaid_invoices_for_client(3);

-- user or session variables  
set @invoices_count = 0;

-- local variable 
delimiter $$

create procedure get_risk_factor()
begin
	declare risk_factor decimal(9,2) default 0; 
    declare invoices_total decimal(9,2);
    declare invoices_count int;
    
    select count(*), sum(invoice_total)
    into invoices_count, invoices_total
    from invoices;
    
    set risk_factor = invoices_total / invoices_count *5;
    
    select risk_factor;
end $$

delimiter ;