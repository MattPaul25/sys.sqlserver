Begin Transaction;

use UniversalTool
--tlog is blank until the following line is executed
Delete From Person 
	Where PersonID = 125;
--if we reach this point we assume that statement exectued succesfully and 
--we update the transaction log appropriately and ocmmit the changes to the database

Commit Transaction
Go


--new transaction (for data integrity purposes)
Begin Transaction DeletePerson
	With Mark N'Deleting an uneeded person';
	go 
	use UniversalTool
	go

Delete From person where personId = 140;

go
commit Transaction DeletePerson
Go

