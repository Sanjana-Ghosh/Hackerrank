--Problem Statement
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Print the median of Northern Latitude values up to 4 decimal places.

*/

--Solution
with cte as
(select lat_n from station order by lat_n)
select round(max(lat_n),4) from cte where rownum < round((select count(*) from cte)/2)+1;
