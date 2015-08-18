use UniversalTool

(Select a.EntityName, b.sitename, Len(a.EntityName) as Namelength,
case HQ
	when 1 then 'Head Quarters'
	else 'Sattelite'
end as HQ


from BusinessEntity as a join EntitySite as b on a.entityid = b.entityid
where sitename = 'Chicago'


union all

Select a.EntityName, b.sitename, Len(a.EntityName) as Namelength,
case HQ
	when 1 then 'Head Quarters'
	else 'Sattelite'
end as HQ

from BusinessEntity as a join EntitySite as b on a.entityid = b.entityid
where sitename = 'New York')
order by Namelength desc