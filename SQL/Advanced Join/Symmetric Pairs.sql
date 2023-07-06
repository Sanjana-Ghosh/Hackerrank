
https://www.hackerrank.com/challenges/symmetric-pairs/problem
Working Platform:- Oracle

solution:

with cte as(
select f1.x x1,f1.y y1,f2.x x2,f2.y y2 from functions f1 join functions f2 on f1.y = f2.x 
where f1.x = f2.y and f1.x <= f1.y)
select distinct x1,y1 from cte where x1<y1 or (x1,y1) in (select x1,y1 from
(select x1,y1,count(*) from cte where x1=y1 group by x1,y1 having count(*)>1))
order by x1;


Alternate sol:
  
select least(x,y),greatest(x,y) from functions
group by least(x,y),greatest(x,y) having count(*)>1
order by 1;

Alternate sol:

SELECT X, Y FROM FUNCTIONS F1
    WHERE EXISTS(SELECT * FROM FUNCTIONS F2 WHERE F2.Y = F1.X
    AND F2.X = F1.Y AND F2.X > F1.X) AND (X != Y)
UNION
SELECT X,Y FROM FUNCTIONS F1 WHERE X = Y AND 
    ((SELECT COUNT(*) FROM FUNCTIONS WHERE X = F1.X AND Y = F1.X) > 1)
      ORDER BY X;
