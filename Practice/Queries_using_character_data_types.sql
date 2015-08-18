use UniversalTool
go


select firstname, lastname, middleinit 
from Person
where firstname like N'[A-F]ndy' --all names like Andy 
go

select firstname, lastname, middleinit 
from Person
where firstname like N'[^A-F]%' --negates any name starting with a through f
go


select firstname, lastname, middleinit,
len(firstname) as FirstNameLength, --gets character count
DATALENGTH(firstname) as FirstNameBytes --gets byte amount of string
from person
where firstname like N'[ABC]%' --any name that starts with an a b or c
go

select firstname, lastname, middleinit,
Replace(lastname, '''','') as CleanLastName --replacing apostrophes 
from person
where LastName like '%''%' --a name with an apostrophe
go

select REPLICATE('A', 10) --works like excel repeat, replacates a 10 times
go


select CHARINDEX(' ', a.FullName) as [Place of Space] --charindex gets the placement of character within string
from
(
select upper(firstname) + ' ' + lower(lastname) as FullName
from person) as a
go

select coalesce(RTRIM(LTRIM(firstname)), '') --kill spaces from left and right of the string
from person
go

select SUBSTRING(a.FullName, CHARINDEX(' ', a.fullname) + 1, 100) --getting last name using charindex and substring
from (
select upper(firstname) + ' ' + lower(lastname) as FullName
from person) as a