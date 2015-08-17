use UniversalTool

CREATE TABLE Orders(
OrderID int Identity(1,1) Not Null, 
PersonID int Not Null,
ProductName nvarchar(50) Not null,
shippingAddress nvarchar(50) null
) on [PRIMARY] --The main table repo