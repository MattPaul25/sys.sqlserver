USE [DailyOps]
GO
/****** Object:  UserDefinedFunction [dbo].[QrtCreate]    Script Date: 8/27/2015 2:59:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [dbo].[QrtCreate](@YourDate DateTime)

RETURNS varchar(10)
AS
BEGIN
	 declare @ReturnVal varchar(10)
	 select @ReturnVal = cast(year(@YourDate) as Varchar(4))+'-Q'+cast(datepart(q,@YourDate) as varchar(1)) 
	 return @ReturnVal
END
