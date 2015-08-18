use UniversalTool
go
--sub queries


--using sub queries in collection using the IN keyword
select FirstName, lastName, Prefix1, Education
From Person
Where FirstName IN(
Select FirstName
From person
where FirstName like '%phil%')
go


--correlated subquery

