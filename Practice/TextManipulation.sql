use UniversalTool
Go

--Text Manipulation
--Show results with SQLServer expression engine with the like clause on Names
Select Distinct FirstName 
from Person
--Show all distinct names that are like 'ndre' with letters between a and h
--[a-h] is a way of specifying all characters between a and h 
Where FirstName like '[a-h]ndre'


Select Distinct FirstName 
from Person
--Show all distinct names that are like 'on' with a single previous letter
--'_' is a way of specifying a single character before a set of characters
Where FirstName like '_on'

Select Distinct FirstName 
from Person
--Show all distinct names that are like '_on' but not 'kon'
--'[^k]' negates the k prior to the rest of the string
Where FirstName like '[^k]on'

Select Distinct FirstName 
from Person
--no names that end in 'on'
--show everthing that is not like '_on'
Where FirstName not like '%on'