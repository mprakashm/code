select count(8) from employees

describe employees

select first_name|| ' '||last_name name,
case when commission_pct is NULL 
    then salary*.05
--case when commission_pct <= .15
  --  then salary*.02 + salary*commission_pct
--case when commission_pct > .15 AND commission_pct <= .5
  --  then salary*.03 + salary*commission_pct
else commission_pct*salary
end commission
 from employees
where 1=1

select first_name|| ' '||last_name name,
case when commission_pct is NULL 
    then salary*.05
else salary*commission_pct
end commission
from employees
