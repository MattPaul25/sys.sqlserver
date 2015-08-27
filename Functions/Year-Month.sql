USE [DailyOps]
GO
/****** Object:  UserDefinedFunction [dbo].[YrMnthCreate]    Script Date: 8/27/2015 3:00:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Function [dbo].[YrMnthCreate](@YourDate DateTime)

Returns varchar(50)
as
 begin
 declare @ReturnVal varchar(50)
 select @ReturnVal = cast(year(@YourDate) as Varchar(4))+'-'+convert(varchar(2),@YourDate,101)
	   
Return @ReturnVal

end

