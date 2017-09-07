USE GBT

--设置权限表双主键
--Alter table Privilege Add  Constraint  PK_Privilege  Primary  Key(PrivilegeInnerID,ID)
--读
if not exists(select Name from Privilege where Name='Read')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Read','Operation','','读','system',getdate())
--写
if not exists(select Name from Privilege where Name='Write')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Write','Operation','','写','system',getdate())
--改
if not exists(select Name from Privilege where Name='Alter')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Alter','Operation','','改','system',getdate())
--删
if not exists(select * from Privilege where Name='Delete')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Delete','Operation','','删','system',getdate())
--打印
if not exists(select * from Privilege where Name='Print')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Print','Operation','','打印','system',getdate())
--审核
if not exists(select * from Privilege where Name='Audit')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Audit','Operation','','审核','system',getdate())
--取消审核
if not exists(select * from Privilege where Name='Unaudited')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Unaudited','Operation','','取消审核','system',getdate())
--作废
if not exists(select * from Privilege where Name='Invalid')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Invalid','Operation','','作废','system',getdate())
--取消作废
if not exists(select * from Privilege where Name='Valid')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Valid','Operation','','取消作废','system',getdate())

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



