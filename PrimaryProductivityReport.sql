use UniversalTool

select 

CallLog.UserName,
SUM(CASE WHEN CallLog.Result='LM' THEN 1 ELSE 0 END) as 'Left Voice Mail',
SUM(CASE WHEN CallLog.Result='SE' THEN 1 ELSE 0 END) as 'Sent Email',
SUM(CASE WHEN CallLog.Result='RM' THEN 1 ELSE 0 END) as 'Returned Message',
SUM(CASE WHEN CallLog.Result='RC' THEN 1 ELSE 0 END) as 'Returned Call',
SUM(CASE WHEN CallLog.Result='RE' THEN 1 ELSE 0 END) as 'Returned Email',
SUM(CASE WHEN CallLog.Result='TC' THEN 1 ELSE 0 END) as 'Took Call',
count(CallLog.Result) as 'Total',
SUM(CASE WHEN ActivityLog.Status='C' THEN 1 ELSE 0 END) as 'Closed Act Logs'

from
ActivityLog join CallLog on ActivityLog.ControlNo = CallLog.ControlNumber

where InputDate >= GETDATE() - 7
and (
ActivityLog.activity = 'ClRndPh' 
or ActivityLog.activity = 'RegPh'
)

group by CallLog.UserName