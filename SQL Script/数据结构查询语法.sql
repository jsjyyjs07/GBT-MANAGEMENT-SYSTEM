
--为表字段添加描述信息
EXECUTE sp_addextendedproperty N'MS_Description', '单据编号', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillNo'


Select name from syscolumns Where ID=OBJECT_ID('Users') 

select column_name,data_type,* from information_schema.columns
where table_name = 'Modules'


select SO.name as TableName,SC.name as TableCloumn,ST.name as DataType,
(
SELECT COUNT(1) AS Is_PK 
 FROM  syscolumns  
 JOIN  sysindexkeys  ON   syscolumns.id=sysindexkeys.id  AND  syscolumns.colid=sysindexkeys.colid   
 JOIN  sysindexes   ON   syscolumns.id=sysindexes.id  AND  sysindexkeys.indid=sysindexes.indid  
 JOIN  sysobjects   ON   sysindexes.name=sysobjects.name  AND  sysobjects.xtype='PK'
 WHERE syscolumns.name=SC.name AND syscolumns.id=object_id(SO.name)
) as IsPrimaryKey
,SC.colid as ColumnIndex 
from sysobjects SO 
inner join syscolumns SC on SO.id = SC.id  and  SO.xtype = 'U' and  SO.status >= 0 and SO.name= 'Users'
inner join systypes ST on SC.xtype = ST.xusertype 
order by SO.name asc, SC.colorder asc


SELECT 
TableName = OBJECT_NAME(c.object_id),
TableDecription = (SELECT a.[value] FROM sys.extended_properties a left JOIN  sysobjects b ON a.major_id=b.id WHERE b.name=OBJECT_NAME(c.object_id) and a.minor_id=0 ),
ColumnsName = c.name, 
Description = ex.value, 
ColumnType=t.name, 
Length=c.max_length
FROM 
sys.columns c 
LEFT OUTER JOIN 
sys.extended_properties ex 
ON 
ex.major_id = c.object_id 
AND ex.minor_id = c.column_id 
AND ex.name = 'MS_Description' 
left outer join 
systypes t 
on c.system_type_id = t.xtype 
WHERE 
OBJECTPROPERTY(c.object_id, 'IsMsShipped')=0 
AND OBJECT_NAME(c.object_id) in ('Users','UserRoles')
AND c.name not like '%inner%'
AND c.name != 'Password'

select * from sysobjects

select colid,* from syscolumns

select fkeyid,fkey,* from sysforeignkeys

SELECT a.[value] FROM sys.extended_properties a left JOIN  sysobjects b ON a.major_id=b.id 
WHERE b.name='Users' 

SELECT distinct TableName = OBJECT_NAME(c.object_id),
TableDecription = (SELECT a.[value] FROM sys.extended_properties a 
	left JOIN  sysobjects b ON a.major_id=b.id WHERE b.name=OBJECT_NAME(c.object_id) 
	and a.minor_id=0 ),
ColumnsName = c.name, Description = ex.value, ColumnType=t.name, Length=c.max_length,
strCount = len(OBJECT_NAME(c.object_id))
FROM sys.columns c 
LEFT OUTER JOIN sys.extended_properties ex ON ex.major_id = c.object_id 
AND ex.minor_id = c.column_id AND ex.name = 'MS_Description' 
left outer join systypes t on c.system_type_id = t.xtype 
WHERE OBJECTPROPERTY(c.object_id, 'IsMsShipped')=0 
AND OBJECT_NAME(c.object_id) in ('BGInfoTable')
AND c.name not like '%inner%'
AND c.name != 'Password'
AND t.name != 'sysname'
order by strCount

exec  sp_helpconstraint 'users'

select name,object_name(parent_object_id),
object_name(referenced_object_id),* from sys.foreign_keys

SELECT NAME , OBJECT_NAME(referenced_object_id) 
FROM sys.foreign_keys 
WHERE OBJECT_NAME(parent_object_id)='Privilege'



--外键表
select fkname = fk.name, ftablename = ftable.name, fkcolumns = cn.name, rtablename = rtable.name--,
--sourceColumns = case when cn.name='BillType' then 'BillType' 
--	else SUBSTRING(cn.name,len(rtable.name)+1,len(cn.name)-len(rtable.name)) end,
--strCount = len(ftable.name),pk.name
from sysforeignkeys 
inner join sysobjects fk on sysforeignkeys.constid = fk.id 
inner join sysobjects ftable on sysforeignkeys.fkeyid = ftable.id 
inner join sysobjects rtable on sysforeignkeys.rkeyid = rtable.id 
inner join syscolumns cn on sysforeignkeys.fkeyid = cn.id and sysforeignkeys.fkey = cn.colid
left join sysobjects pk on pk.xtype = 'pk' and pk.parent_obj = ftable.id
where ftable.name in ('Subscribe','Suppliers','SupplierContact')
--order by strCount


select * from sysobjects where parent_obj in (select id from sysobjects where name='Users') and xtype='pk'

select OBJECT_NAME(parent_obj),* from sysobjects where OBJECT_NAME(parent_obj)='Users' and xtype = 'pk'


exec  sp_helpconstraint 'Users'





