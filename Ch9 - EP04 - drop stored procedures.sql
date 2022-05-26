-- Ch9 - EP04 - drop stored procedures

drop procedure if exists get_clients;

DELIMITER $$
create procedure get_clients()

begin
select * from clients;
end$$

DELIMITER ;