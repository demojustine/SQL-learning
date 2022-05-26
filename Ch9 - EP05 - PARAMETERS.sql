-- Ch9 - EP05 - PARAMETERS
drop procedure if exists get_clients_by_state;

DELIMITER $$
create procedure get_clients_by_state
(
	p_state char(2) -- varchar
)

begin
select * from clients c
where p_state = c.state ;
end$$

DELIMITER ;

call get_clients_by_state('CA');

-- exercise
drop procedure if exists get_invoices_by_client;

DELIMITER $$
create procedure get_invoices_by_client
(
	p_client int
)

begin
select * 
from invoices i
where p_client = i.client_id ;
end$$

DELIMITER ;

call get_invoices_by_client(1);