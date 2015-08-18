CREATE FUNCTION opposite(@phrase NVARCHAR(50))
RETURNS NVARCHAR(50)
AS
EXTERNAL NAME CLR_Functions.[CLR_Functions.myFunctions].opposite
