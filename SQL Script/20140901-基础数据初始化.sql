USE qds126671222_db

--ϵͳ�����������ݳ�ʼ��
if not exists(select * from SystemBillType where BillType='TYPE0001')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0001','GBTϵͳ����','','system',GETDATE())
GO
if not exists(select * from SystemBillType where BillType='TYPE0002')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0002','����Աϵͳ','','system',GETDATE())
GO
if not exists(select * from SystemBillType where BillType='TYPE0003')
insert into SystemBillType(BillType,TypeName,Rules,Creater,CreateDate)
values('TYPE0003','�û�ϵͳ','','system',GETDATE())
GO
/*
--����Ա�û����ݳ�ʼ��
if not exists(select * from Users where BillNo='USER00001')
INSERT INTO Users(InnerID,BillNo,BillDate,BillType,EmployeeInnerId,EmployeeBillNo,UserName,Name,Password,Creater,CreateDate)
VALUES(NEWID(),'USER00001',GETDATE(),'TYPE0001','','','system','system','eV4KpEcgt+A=','root',GETDATE())
GO
if not exists(select * from Users where BillNo='USER00002')
INSERT INTO Users(InnerID,BillNo,BillDate,BillType,EmployeeInnerId,EmployeeBillNo,UserName,Name,Password,Creater,CreateDate)
VALUES(NEWID(),'USER00002',GETDATE(),'TYPE0001','','','shideming','ʩ����','tJVcwebyNXO6w0/u/gnawA==','system',GETDATE())
GO
*/
--Ȩ�����ݳ�ʼ��
--����Ȩ�ޱ�˫����
--Alter table Privilege Add  Constraint  PK_Privilege  Primary  Key(PrivilegeInnerID,ID)
--��ѯ
if not exists(select * from Privilege where Name='Query')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00001',GETDATE(),'TYPE0002','Query','Operation','','��ѯ','system',getdate())
GO
--����
if not exists(select * from Privilege where Name='Add')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00002',GETDATE(),'TYPE0002','Add','Operation','','����','system',getdate())
GO
--�޸�
if not exists(select * from Privilege where Name='Modify')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00003',GETDATE(),'TYPE0002','Modify','Operation','','�޸�','system',getdate())
GO
--ɾ��
if not exists(select * from Privilege where Name='Delete')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00004',GETDATE(),'TYPE0002','Delete','Operation','','ɾ��','system',getdate())
GO
--��ӡ
if not exists(select * from Privilege where Name='Print')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00005',GETDATE(),'TYPE0002','Print','Operation','','��ӡ','system',getdate())
GO
--���
if not exists(select * from Privilege where Name='Audit')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00006',GETDATE(),'TYPE0002','Audit','Operation','','���','system',getdate())
GO
--ȡ�����
if not exists(select * from Privilege where Name='Unaudited')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00007',GETDATE(),'TYPE0002','Unaudited','Operation','','ȡ�����','system',getdate())
GO
--����
if not exists(select * from Privilege where Name='Invalid')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00008',GETDATE(),'TYPE0002','Invalid','Operation','','����','system',getdate())
GO
--ȡ������
if not exists(select * from Privilege where Name='Valid')
insert into Privilege(InnerID,BillNo,BillDate,BillType,Name,Classes,State,Remark,Creater,CreateDate)
values(newid(),'QX00009',GETDATE(),'TYPE0002','Valid','Operation','','ȡ������','system',getdate())
GO

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

--��������ݳ�ʼ��
if not exists(select * from Operators where BillNo='YSF001')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF001',GETDATE(),'TYPE0002','=','����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF002')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF002',GETDATE(),'TYPE0002','!=','������','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF003')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF003',GETDATE(),'TYPE0002','Like','����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF004')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF004',GETDATE(),'TYPE0002','LeftLike','�����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF005')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF005',GETDATE(),'TYPE0002','RightLike','�Ұ���','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF006')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF006',GETDATE(),'TYPE0002','NotLike','������','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF007')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF007',GETDATE(),'TYPE0002','In','����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF008')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF008',GETDATE(),'TYPE0002','NotIn','������','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF009')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF009',GETDATE(),'TYPE0002','Between','����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF010')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF010',GETDATE(),'TYPE0002','>','����','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF011')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF011',GETDATE(),'TYPE0002','<','С��','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF012')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF012',GETDATE(),'TYPE0002','>=','���ڵ���','any','system',GETDATE())
GO
if not exists(select * from Operators where BillNo='YSF013')
insert into Operators(InnerID,BillNo,BillDate,BillType,Operator,Description,ColumnType,Creater,CreateDate)
values(NEWID(),'YSF013',GETDATE(),'TYPE0002','<=','С�ڵ���','any','system',GETDATE())
GO

--�û�ģ�����ݳ�ʼ��
if not exists(select * from [Modules] where BillNo='M00000')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00000','TYPE0002',GETDATE(),'����Ա�˵�','','','','',0,1,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00001')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00001','TYPE0003',GETDATE(),'OAϵͳ�˵�','','','','',0,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00002')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00002','TYPE0003',GETDATE(),'�û��Զ���˵�','','','','',0,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00010')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00010','TYPE0003',GETDATE(),'��Ӧ������','M00001','OAϵͳ�˵�','OA.BasicInformation.SuppliersType','OA',1,0,'root',GETDATE())
GO
if not exists(select * from [Modules] where BillNo='M00011')
INSERT INTO [Modules](InnerID,BillNo,BillType,BillDate,Name,ParentModuleID,ParentModule,WinClassName,AssemblyName,Depth,Manage,Creater,CreateDate) 
VALUES(NEWID(),'M00011','TYPE0003',GETDATE(),'ģ��','M00000','����Ա�˵�','TheAdministratorFrom.MainWindow','TheAdministratorFrom',1,1,'root',GETDATE())
GO

