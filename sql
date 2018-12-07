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

===========

Joins in SQL

inner join

select * from tblA INNER JOIN tblB ON tblA.id=tblB.cust_id

--mysql
select * from tblA,tblB where tblA.id=tblB.cust_id

left outer join
select * from sales left join test on sales.salesid=test.id;
select * from sales left outer join test on sales.salesid=test.id;
--oracle = select * from sales, test where  sales.salesid=test.id(+);

right outer join
select * from sales right join test on sales.salesid=test.id;
select * from sales right outer join test on sales.salesid=test.id;
--oracle 
select * from sales, test where  sales.salesid(+)=test.id;

FULL Outer Join
select * from sales full outer join test on sales.salesid=test.id
mysql == union all of left join and right join

