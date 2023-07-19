//https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select case 
when A+B<=C OR B+C<=A OR C+A<=B then 'Not A Triangle' 
when A=B AND B=C then 'Equilateral'
when A=B OR B=C OR C=A then 'Isosceles'
else 'Scalene' end 
from TRIANGLES;
