SQL>Advanced Join>SQL Project Planning
https://www.hackerrank.com/challenges/sql-projects/problem

solution in Oracle SQL:

with project_start_dates as
(select start_date, rank() over (order by start_date) as rank_start from projects where start_date not in(select end_date from projects)),
project_end_dates as
(select end_date, rank() over (order by end_date) as rank_end from projects where end_date not in(select start_date from projects))
select start_date,end_date from  project_start_dates,project_end_dates
where rank_start = rank_end
order by end_date - start_date asc, start_date;

Alternate Solution:

SELECT Start_Date, min(End_Date) FROM
(SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) S,
(SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) E
WHERE Start_Date < End_Date
group by Start_Date
order by min(End_Date) - Start_Date asc, Start_Date;
