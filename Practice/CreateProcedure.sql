Create Procedure myProcedure (@Name as nvarchar(10))
as
select * from dbo.BusinessEntity
Where EntityName like '%' + @Name + '%'