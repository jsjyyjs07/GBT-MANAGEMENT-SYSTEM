USE GBT

--����Ȩ�ޱ�˫����
--Alter table Privilege Add  Constraint  PK_Privilege  Primary  Key(PrivilegeInnerID,ID)
--��
if not exists(select Name from Privilege where Name='Read')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Read','Operation','','��','system',getdate())
--д
if not exists(select Name from Privilege where Name='Write')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Write','Operation','','д','system',getdate())
--��
if not exists(select Name from Privilege where Name='Alter')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Alter','Operation','','��','system',getdate())
--ɾ
if not exists(select * from Privilege where Name='Delete')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Delete','Operation','','ɾ','system',getdate())
--��ӡ
if not exists(select * from Privilege where Name='Print')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Print','Operation','','��ӡ','system',getdate())
--���
if not exists(select * from Privilege where Name='Audit')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Audit','Operation','','���','system',getdate())
--ȡ�����
if not exists(select * from Privilege where Name='Unaudited')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Unaudited','Operation','','ȡ�����','system',getdate())
--����
if not exists(select * from Privilege where Name='Invalid')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Invalid','Operation','','����','system',getdate())
--ȡ������
if not exists(select * from Privilege where Name='Valid')
insert into Privilege(PrivilegeInnerID,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'Valid','Operation','','ȡ������','system',getdate())

--����ģ���˫����
--Alter table Modules Add  Constraint  PK_Modules  Primary  Key(ModuleInnerID,ID)
--���ý�ɫ��˫����
--Alter table Role Add  Constraint  PK_Role  Primary  Key(RoleInnerID,ID)
--�����û���˫����
--Alter table Users Add  Constraint  PK_Users  Primary  Key(UserInnerID,ID)
--�����û���ɫ��˫����
--Alter table RoleUser Add  Constraint  PK_RoleUser  Primary  Key(RoleUserInnerID,ID)
--����ģ��Ȩ�ޱ�˫����
--Alter table RoleModulePermissions Add  Constraint  PK_RoleModulePermissions  Primary  Key(RoleModulePermissionsInnerID,ID)
--�����û�ģ��Ȩ�ޱ�˫����
--Alter table UserModulePermissions Add  Constraint  PK_UserModulePermissions  Primary  Key(UserModulePermissionInnerID,ID)
--�������Ա�˫����
--Alter table Language Add  Constraint  PK_Language  Primary  Key(LanguageInnerID,ID)



