


SELECT a.* FROM OPENROWSET('SQLOLEDB','60.190.96.190';'sa';'jsjyyjs',
'SELECT * FROM GBT.dbo.BGInfoTable') AS a

insert into [dbo].[BGInfoTable] SELECT a.* FROM OPENROWSET('SQLOLEDB','60.190.96.190';'sa';'jsjyyjs',
'SELECT * FROM GBT.dbo.BGInfoTable') AS a


exec sp_configure 'show advanced options',1 
go 
reconfigure; 
go 
exec sp_configure 'Ad Hoc Distributed Queries',1 
go 
reconfigure; 
go


