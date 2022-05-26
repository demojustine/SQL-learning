-- Ch9 - EP06 - parameters with default value 
drop procedure if exists get_clients_by_state;

DELIMITER $$
create procedure get_clients_by_state
(
	p_state char(2)
)

begin
if state is null then
	set state = 'CA';
end if;
select * from clients c
where p_state = c.state ;
end$$
DELIMITER ;

begin
if state is null then
	select * from clients;
else
	select * from clients c
	where p_state = c.state ;
end if;
end$$

begin
	select * from clients c
	where c.state = ifnull(state, c.state) ;
end$$

-- exercise 
drop procedure if exists get_clients_by_state;

DELIMITER $$
create procedure get_payment_by_client_payment
(
	p_client_id int,
    p_payment_method_id tinyint
)

begin
select * from payments p
where p.client_id = ifnull(p_client_id, p.client_id) and
	p.payment_method = ifnull(p_payment_method_id,p.payment_method);
end$$
DELIMITER ;

call get_payment_by_client_payment(1,1)