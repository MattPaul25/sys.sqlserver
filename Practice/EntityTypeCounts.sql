Use UniversalTool
Select Year(InputDate) as Anno, 
iif(ListEntityType.EntityType = 'Entrepreneurial Co', 'Company', ListEntityType.EntityType) as EntityType,
Count(BusinessEntity.EntityID) as EntityCount
  
  FROM BusinessEntity 
  inner join EntityType on BusinessEntity.EntityID=EntityType.EntityID
  inner join ListEntityType on EntityType.EntityTypeCode=ListEntityType.EntityCode
  Where Year(InputDate) >=1996
  Group By Year(InputDate),[EntityTypeCode], ListEntityType.EntityType
  Order by Year(InputDate)