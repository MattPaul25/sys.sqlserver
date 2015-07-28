use universaltool
Select distinct BusinessEntity.EntityName
from
ActivityLog Join BusinessEntity on ActivityLog.EntityID = BusinessEntity.EntityID
Where Status = 'C'
and( ActivityLog.UserAssigned = 'ZB'or ActivityLog.EditBy like '%zainab%')
and ActivityLog.InputDate >= '5/1/2015'