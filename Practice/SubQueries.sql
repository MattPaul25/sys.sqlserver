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


--using exist keyword existential subqueries
--this shows all teh personids that don't exist in the person details table
select personid, FirstName, LastName, Prefix1, Education
From Person p
Where NOT EXISTS
		(Select *
		From PersonDetails pd
		where p.personid = pd.personid); --comparing p.personid = pd.personid - using aliases from the outer query makes this an existential subquery
go


--how to see what person id's arent in person details
select personid, FirstName, LastName, Prefix1, Education
From Person p
Where personid not in (select PersonID from PersonDetails)

