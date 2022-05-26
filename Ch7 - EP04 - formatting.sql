-- Ch7 - EP04 - formatting dates and times

select date_format(now(), '%y%Y %M%m %D%d');

select time_format(now(), '%H %h : %i %I %p %P');
