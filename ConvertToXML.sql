use UniversalTool

select * 

from BusinessEntity as a join EntrepreneurialCo as b 
on a.entityId = b.entityid
where EntityName like 'wide%'
for XML Auto --uses attributes and <row> is the element
--for XML Raw --uses attributes <TableName> is the element
--for XML Path --uses Parenet elements and no attributes