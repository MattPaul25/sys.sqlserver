USE [General]
GO
/****** Object:  UserDefinedFunction [dbo].[TRIM1]    Script Date: 8/27/2015 3:01:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[TRIM1](@string VARCHAR(MAX))

RETURNS VARCHAR(MAX)

BEGIN

RETURN LTRIM(RTRIM(@string))

END

