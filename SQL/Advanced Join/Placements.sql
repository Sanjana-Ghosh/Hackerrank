https://www.hackerrank.com/challenges/placements/problem

select Name from
(select S.ID as own_ID,Name,Salary as own_sal from Packages P join Students S on P.ID = S.ID),
(select F.ID as ID, Friend_ID, Salary as Friend_sal from Friends F join Packages P on F.Friend_ID = P.ID)
where own_ID = ID and own_sal < Friend_sal order by Friend_sal;
