With Person_CTE (PersonID, FirstName, LastName, YearAdded)
As
(
select personid, FirstName, LastName,
YEAR(InputDate) as YearAdded
From person
where Year(inputdate) = 2015
)

--above is the created CTE (common table exprsesion- which is a stored table only in memory but not as a DB object)
--I can now use the cte as a normal table - i would need to execute the entire piece of code
-- must be executd as one block
--the go keyward will pull it from memory
Select * 
From Person_CTE
Where Firstname like 'matt%'
Go

--Select * from Person_CTE --does not exeute due to being pulled from memory by go statmenet
