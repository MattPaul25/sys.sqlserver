alter Function ReturnEmailAddress(@personName as varchar(250))
returns varchar(250)
as Begin

Declare @emailAddress as varchar(250)

Select 
@emailAddress = HomeEmailAddr
From Person
Where LastName = @personName

return @emailAddress
End