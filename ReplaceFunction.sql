
use DailyOps

UPDATE [DailyOps].[dbo].[DailyLog]
SET Team = REPLACE(Team, 'TBD', 'Secondary')
WHERE Researcher = 'Mo Jalajel'