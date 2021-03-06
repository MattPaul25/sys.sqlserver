USE [DailyOps]
GO
/****** Object:  UserDefinedFunction [dbo].[WeekCreate]    Script Date: 8/21/2015 3:57:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Function [dbo].[WeekCreate](@YourDate DateTime)

Returns varchar(50)
as
 begin
 declare @ReturnVal varchar(50)
 select @ReturnVal = cast(year(@YourDate) as Varchar(4))+' ('
	+convert(varchar(2), @YourDate - (datepart(dw,@YourDate) - 1) ,101)+'.'+convert(varchar(2), @YourDate - (datepart(dw,@YourDate) - 1),103)+'-'+
convert(varchar(2), @YourDate + (7 - (datepart(dw,@YourDate))),101)+'.'+convert(varchar(2),@YourDate + (7 - (datepart(dw,@YourDate))),103)+')'
	   
Return @ReturnVal

end
