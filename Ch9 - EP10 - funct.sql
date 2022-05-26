-- Ch9 - EP10 - functions

select 
	client_id,
    name,
    get_risk_factor_for_client(client_id) as risk_factor
from clients;

-- 
drop function if exist 