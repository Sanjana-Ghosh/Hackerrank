
https://www.hackerrank.com/challenges/symmetric-pairs/problem


solution:

with cte as(
select f1.x x1,f1.y y1,f2.x x2,f2.y y2 from functions f1 join functions f2 on f1.y = f2.x 
where f1.x = f2.y and f1.x <= f1.y)
select distinct x1,y1 from cte where x1<y1 or (x1,y1) in (select x1,y1 from
(select x1,y1,count(*) from cte where x1=y1 group by x1,y1 having count(*)>1))
order by x1;
