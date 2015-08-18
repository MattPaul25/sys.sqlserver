--using top
use UniversalTool
go

select top 100 * 
FROM Person
go

select top 20 PersonID, LastName, FirstName
From Person
Go

--uses a percentage of the record count
select top 20 PERCENT PersonID, LastName, FirstName
From Person
Go

--use with ties to pull items that might be tied
select top (20) With TIES RoundNo
From CoRound
order by RoundNo desc
Go

