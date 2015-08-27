USE [DailyOps]
GO
/****** Object:  UserDefinedFunction [dbo].[FYCreate]    Script Date: 8/27/2015 2:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [dbo].[FYCreate](@YourDate DateTime)

RETURNS varchar(10)
AS
BEGIN
	 declare @ReturnVal varchar(10)
	 select @ReturnVal = 'FY '+(case
	when Month(@YourDate)<7 then cast(year(@YourDate) as varchar(4))
	else cast (year(@YourDate)+1 as varchar(4))
	end) 
	 return @ReturnVal
END
