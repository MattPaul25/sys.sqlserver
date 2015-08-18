Use UniversalTool
Go

Declare @bikeCount as int
set @bikeCount = (select Count(*) From BusinessEntity Where EntityName like 'Bifdafdasfdske%' )

If @bikeCount > 0
	Begin
		Print 'There is a bike based company, in fact there are ' + Convert(nvarchar(50), @bikeCount)
	End --begin and end statements act like code blocks
Else 
	Begin
		Print 'There are no bike based companies ' + cast(@bikeCount as nvarchar(50)) --cast is ansi
	End
Go