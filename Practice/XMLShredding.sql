use General

Declare @hdoc int;
Declare @doc varchar(1000);

Set @doc = 
'<Person>
<FirstName>John</FirstName>
<LastName>Smith</LastName>
</Person>';

Exec sp_xml_preparedocument @hdoc Output, @doc;

Select * 
INTO xmlTable
From 
OPENXML (@hdoc, '/Person', 2) with(FirstName varchar(250), LastName varchar(250))

exec sp_xml_removedocument @hdoc;
