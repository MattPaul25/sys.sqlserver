use UniversalTool
go

--date and time query practice

SELECT entityID , entityname, inputdate
FROM BusinessEntity
where inputdate >= '01-01-2012' --is translated because SQL server instance is US based install
order by InputDate;
Go

--Query for dates between two dates
SELECT entityID , entityname, inputdate
FROM BusinessEntity
where inputdate BETWEEN '01-01-2012' AND '12-31-2012'
order by InputDate;
go

--Query for dates between two dates using comparitive operators
SELECT entityID , entityname, inputdate
FROM BusinessEntity
where inputdate >= '01-01-2012' AND inputdate <= '12-31-2012'
order by InputDate;
Go


--show date parts of the input date uses the Datepart function
SELECT entityID , entityname, inputdate,
Datepart(DAY, inputdate) as [Input Day],
Datepart(MONTH, inputdate) as [Input Month],
Datepart(YEAR, inputdate) as [Input Year]

FROM BusinessEntity
where inputdate >= '01-01-2012' AND inputdate <= '12-31-2012'
order by InputDate;
Go


--show datename using the datename function
SELECT entityID , entityname, inputdate,
Datename(WEEKDAY, inputdate) as [Input Day], --prints monday etc.
Datename(MONTH, inputdate) as [Input Month], --prints january etc.
Datename(YEAR, inputdate) as [Input Year]

FROM BusinessEntity
where inputdate >= '01-01-2012' AND inputdate <= '12-31-2012'
order by InputDate;
Go


--show the amount of time passed with date diff
SELECT entityID , entityname, inputdate,
DATEDIFF(YEAR, InputDate, GETDATE()) as [Years Passed], --difference in years
DATEDIFF(MONTH, InputDate, GETDATE()) as [Months Passed], --difference in Months
DATEDIFF(DAY, InputDate, GETDATE()) as [Days Passed] --difference in Days
FROM BusinessEntity
where inputdate >= '01-01-2012' AND inputdate <= '12-31-2012'
order by InputDate;
Go

--use date add to add time to a date
--here we are using it to pull 6 month and 3 year anniversaries
SELECT entityID , entityname, inputdate,
DATEADD(Month, 6, inputdate) as [6 Month Anniversary],
DATEADD(Year, 3, inputdate) as [3 Year Anniversary]
FROM BusinessEntity
where inputdate >= '01-01-2012' AND inputdate <= '12-31-2012'
order by InputDate;
Go

--get system date time (from server not remote computer)
Select SYSDATETIME();
Go

--get system date time (offset)
select SYSDATETIMEOFFSET()
Go
 
--gets time from hours minutes seconds etc.
Select TIMEFROMPARTS(22,45,30,0,0)
Go

