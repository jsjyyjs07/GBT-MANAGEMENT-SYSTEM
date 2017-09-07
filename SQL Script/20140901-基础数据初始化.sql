USE qds126671222_db

--系统单据类型数据初始化
if not exists(select * from SystemBillType where BillType='TYPE0001')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0001','GBT系统控制','','system',GETDATE())
GO
if not exists(select * from SystemBillType where BillType='TYPE0002')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0002','管理员系统','','system',GETDATE())
GO
if not exists(select * from SystemBillType where BillType='TYPE0003')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0003','用户系统','','system',GETDATE())
GO
/*
--管理员用户数据初始化
if not exists(select * from Users where BillNo='USER00001')
INSERT INTO Users(InnerID,BillNo,BillDate,BillType,EmployeeInnerId,EmployeeBillNo,UserName,Name,Password,Creater,CreateDate)
VALUES(NEWID(),'USER00001',GETDATE(),'TYPE0001','','','system','system','eV4KpEcgt+A=','root',GETDATE())
GO
if not exists(select * from Users where BillNo='USER00002')
INSERT INTO Users(InnerID,BillNo,BillDate,BillType,EmployeeInnerId,EmployeeBillNo,UserName,Name,Password,Creater,CreateDate)
VALUES(NEWID(),'USER00002',GETDATE(),'TYPE0001','','','shideming','施德明','tJVcwebyNXO6w0/u/gnawA==','system',GETDATE())
GO
*/
--权限数据初始化
--设置权限表双主键
--Alter table Privilege Add  Constraint  PK_Privilege  Primary  Key(PrivilegeInnerID,ID)
--查询
if not exists(select * from Privilege where Name='Query')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00001',GETDATE(),'TYPE0002','Query','Operation','','查询','system',getdate())
GO
--新增
if not exists(select * from Privilege where Name='Add')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00002',GETDATE(),'TYPE0002','Add','Operation','','新增','system',getdate())
GO
--修改
if not exists(select * from Privilege where Name='Modify')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00003',GETDATE(),'TYPE0002','Modify','Operation','','修改','system',getdate())
GO
--删除
if not exists(select * from Privilege where Name='Delete')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00004',GETDATE(),'TYPE0002','Delete','Operation','','删除','system',getdate())
GO
--打印
if not exists(select * from Privilege where Name='Print')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00005',GETDATE(),'TYPE0002','Print','Operation','','打印','system',getdate())
GO
--审核
if not exists(select * from Privilege where Name='Audit')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00006',GETDATE(),'TYPE0002','Audit','Operation','','审核','system',getdate())
GO
--取消审核
if not exists(select * from Privilege where Name='Unaudited')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00007',GETDATE(),'TYPE0002','Unaudited','Operation','','取消审核','system',getdate())
GO
--作废
if not exists(select * from Privilege where Name='Invalid')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00008',GETDATE(),'TYPE0002','Invalid','Operation','','作废','system',getdate())
GO
--取消作废
if not exists(select * from Privilege where Name='Valid')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00009',GETDATE(),'TYPE0002','Valid','Operation','','取消作废','system',getdate())
GO

--设置模块表双主键
--Alter table Modules Add  Constraint  PK_Modules  Primary  Key(ModuleInnerID,ID)
--设置角色表双主键
--Alter table Role Add  Constraint  PK_Role  Primary  Key(RoleInnerID,ID)
--设置用户表双主键
--Alter table Users Add  Constraint  PK_Users  Primary  Key(UserInnerID,ID)
--设置用户角色表双主键
--Alter table RoleUser Add  Constraint  PK_RoleUser  Primary  Key(RoleUserInnerID,ID)
--设置模块权限表双主键
--Alter table RoleModulePermissions Add  Constraint  PK_RoleModulePermissions  Primary  Key(RoleModulePermissionsInnerID,ID)
--设置用户模块权限表双主键
--Alter table UserModulePermissions Add  Constraint  PK_UserModulePermissions  Primary  Key(UserModulePermissionInnerID,ID)
--设置语言表双主键
--Alter table Language Add  Constraint  PK_Language  Primary  Key(LanguageInnerID,ID)

--运算符数据初始化
if not exists(select * from Operators where BillNo='YSF001')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF001',GETDATE(),'TYPE0002','=','等于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF002')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF002',GETDATE(),'TYPE0002','!=','不等于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF003')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF003',GETDATE(),'TYPE0002','Like','包含','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF004')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF004',GETDATE(),'TYPE0002','LeftLike','左包含','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF005')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF005',GETDATE(),'TYPE0002','RightLike','右包含','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF006')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF006',GETDATE(),'TYPE0002','NotLike','不包含','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF007')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF007',GETDATE(),'TYPE0002','In','包括','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF008')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF008',GETDATE(),'TYPE0002','NotIn','不包括','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF009')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF009',GETDATE(),'TYPE0002','Between','介于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF010')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF010',GETDATE(),'TYPE0002','>','大于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF011')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF011',GETDATE(),'TYPE0002','<','小于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF012')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF012',GETDATE(),'TYPE0002','>=','大于等于','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF013')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF013',GETDATE(),'TYPE0002','<=','小于等于','any','system',GETDATE())
GO

--用户模型数据初始化
if not exists(select * from [Modules] where BillNo='M00000')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00000','TYPE0002',GETDATE(),'管理员菜单','','','','',0,1,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00001')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00001','TYPE0003',GETDATE(),'OA系统菜单','','','','',0,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00002')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00002','TYPE0003',GETDATE(),'用户自定义菜单','','','','',0,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00010')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00010','TYPE0003',GETDATE(),'供应商类型','M00001','OA系统菜单','OA.BasicInformation.SuppliersType','OA',1,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00011')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00011','TYPE0003',GETDATE(),'模型','M00000','管理员菜单','TheAdministratorFrom.MainWindow','TheAdministratorFrom',1,1,'root',GETDATE())
GO

