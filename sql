select count(8) from employees

describe employees

select first_name|| ' '||last_name name,
case when commission_pct is NULL 
    then salary*.05
else salary*commission_pct
end commission
from employees

-- CASE STATEMENTS
select first_name||' '||last_name name,
CASE WHEN commission_pct IS NULL 
    THEN salary*.05
 WHEN commission_pct <= .15
    THEN salary*commission_pct + salary*.02
 WHEN commission_pct > .15 AND commission_pct <= .5
    THEN salary*.03 + salary*commission_pct
ELSE commission_pct*salary
END commission
 from employees
where 1=1

