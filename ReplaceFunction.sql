
use DailyOps

UPDATE [DailyOps].[dbo].[DailyLog]
SET Researcher = REPLACE(Researcher, 'jocelyn.yu@dowjones.com', 'Jocelyn Yu')
WHERE Researcher = 'jocelyn.yu@dowjones.com'