-- Ch7 - EP05 - calculating dates and times

select date_add(now(), interval 1 day);
select date_sub(now(), interval 1 day);

select datediff('2019-01-05 09:00', '2019-01-23 09:00');

select time_to_sec('09:00'); -- from 00:00 
select time_to_sec('09:00') - time_to_sec('09:02');


