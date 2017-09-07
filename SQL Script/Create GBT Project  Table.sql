USE qds126671222_db

GO
/*
--���±��ֶ������﷨ 
EXEC sp_updateextendedproperty 'MS_Description','��������','user',dbo,'table',N'SystemBillType','column',N'BillType'
--ɾ�����ֶ������﷨
EXEC sp_dropextendedproperty 'MS_Description','user',dbo,'table','SystemBillType','column',N'BillType'
*/
GO
/*
--����״̬���
if not exists(select * from sysobjects where id = object_id('BGInfoTable'))
CREATE TABLE [dbo].[BGInfoTable](
	[Time_Stamp] [datetime] NOT NULL,
	[User_Name] [nvarchar](255) NULL,
	[Host_Name] [nvarchar](255) NULL,
	[OS_Version] [nvarchar](255) NULL,
	[Service_Pack] [nvarchar](255) NULL,
	[Machine_Domain] [nvarchar](255) NULL,
	[Logon_Domain] [nvarchar](255) NULL,
	[Logon_Server] [nvarchar](255) NULL,
	[System_Type] [nvarchar](255) NULL,
	[Network_Card] [nvarchar](255) NULL,
	[IP_Address] [nvarchar](255) NULL,
	[Subnet_Mask] [nvarchar](255) NULL,
	[Default_Gateway] [nvarchar](255) NULL,
	[MAC_Address] [nvarchar](255) NULL,
	[Network_Speed] [nvarchar](255) NULL,
	[Network_Type] [nvarchar](255) NULL,
	[DHCP_Server] [nvarchar](255) NULL,
	[DNS_Server] [nvarchar](255) NULL,
	[CPU] [nvarchar](255) NULL,
	[Memory] [nvarchar](255) NULL,
	[Boot_Time] [nvarchar](255) NULL,
	[Snapshot_Time] [nvarchar](255) NULL,
	[IE_Version] [nvarchar](255) NULL,
	[Volumes] [nvarchar](255) NULL,
	[Free_Space] [nvarchar](255) NULL
) ON [PRIMARY]

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Time_Stamp'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'User_Name'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Host_Name'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ϵͳ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'OS_Version'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service Pack' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Service_Pack'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Machine_Domain'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Logon_Domain'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Logon_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'System_Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Card'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'IP_Address'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Subnet_Mask'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ĭ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Default_Gateway'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MAC ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'MAC_Address'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ٶ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Speed'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DHCP ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'DHCP_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DNS ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'DNS_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'CPU'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Memory'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Boot_Time'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Snapshot_Time'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IE �汾' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'IE_Version'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Volumes'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Free_Space'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable'
*/
GO
if not exists(select * from sysobjects where id = object_id('SystemBillType'))
--����ϵͳ�������ͱ�
CREATE TABLE SystemBillType
(
	BillType varchar(36) not null,
	TypeName varchar(20) not null,
	Rules varchar(500) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_SystemBillType Primary Key(BillType),
)

EXECUTE sp_addextendedproperty N'MS_Description', 'ϵͳ��������', N'user', N'dbo', N'table', N'SystemBillType', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'TypeName'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Rules'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Company'))
--����Company��˾��
CREATE TABLE Company
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	CompanyName varchar(50) not null,
	Corporation varchar(20) not null,
	CompanyFounder varchar(20) not null,
	EnterpriseAddress varchar(255) not null,
	EnterpriseMailbox varchar(100) null,
	SobeyFax varchar(20) null,
	EnterprisePhone varchar(20) null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Company Primary Key(BillNo),
	Constraint FK_CompanyBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��˾', N'user', N'dbo', N'table', N'Company', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Company', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾���', N'user', N'dbo', N'table', N'Company', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Company', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Company', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾����', N'user', N'dbo', N'table', N'Company', N'column', N'CompanyName'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Company', N'column', N'Corporation'

EXECUTE sp_addextendedproperty N'MS_Description', '��ʼ��', N'user', N'dbo', N'table', N'Company', N'column', N'CompanyFounder'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾��ַ', N'user', N'dbo', N'table', N'Company', N'column', N'EnterpriseAddress'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾�����ַ', N'user', N'dbo', N'table', N'Company', N'column', N'EnterpriseMailbox'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾����', N'user', N'dbo', N'table', N'Company', N'column', N'SobeyFax'

EXECUTE sp_addextendedproperty N'MS_Description', '��˾�绰', N'user', N'dbo', N'table', N'Company', N'column', N'EnterprisePhone'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Company', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Company', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Company', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Company', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Company', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Company', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Company', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Company', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
--����
if not exists(select * from sysobjects where id = object_id('Department'))
CREATE TABLE Department
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	CompanyInnerID varchar(36) not null,
	CompanyBillNo varchar(36) not null,
	Department varchar(50) not null,
	MemberOf varchar(36) not null,
	State varchar(10) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Department Primary Key(BillNo),
	Constraint FK_DepartmentBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_DeptCompany Foreign Key(CompanyBillNo) References Company(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Department', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Department', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '���ű��', N'user', N'dbo', N'table', N'Department', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Department', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Department', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Department', N'column', N'Department'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Department', N'column', N'MemberOf'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Department', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Department', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Department', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Department', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Department', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Department', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Department', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('EmployeeInformation'))
--����Ա����Ϣ��
CREATE TABLE EmployeeInformation
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	CompanyInnerID varchar(36) not null,
	CompanyBillNo varchar(36) not null,
	DeptInnerID varchar(36) null,
	DeptBillNo varchar(36) null,
	EmployeeName varchar(20) not null,--����
	Sex varchar(4) not null,--�Ա�
	Nation varchar(10) not null,--����
	Birthday date not null,--����
	NativePlace varchar(20) not null,--����
	CensusRegister varchar(30) not null,--����
	HomeAddress varchar(500) not null,--��ͥסַ
	IDCard varchar(20) not null,--���֤
	IdCardIsValid datetime not null,--���֤��Ч��
	Education varchar(10) null,--ѧ��
	Major varchar(20) null,--רҵ
	MobilePhone varchar(20) null,--�ƶ��绰���ֻ���
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_EmployeeInformation Primary Key(BillNo),
	Constraint FK_EmployeeSystemBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_EmployeeCompany Foreign Key(CompanyBillNo) References Company(BillNo),
	Constraint FK_EmployeeDept Foreign Key(DeptBillNo) References Department(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', 'Ա����Ϣ', N'user', N'dbo', N'table', N'EmployeeInformation', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','Ա������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'EmployeeName'

EXECUTE sp_addextendedproperty N'MS_Description','�Ա�',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Sex'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Nation'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BirthDay'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'NativePlace'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'CensusRegister'

EXECUTE sp_addextendedproperty N'MS_Description','��ͥסַ',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'HomeAddress'

EXECUTE sp_addextendedproperty N'MS_Description','���֤',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'IDCard'

EXECUTE sp_addextendedproperty N'MS_Description','���֤��Ч��',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'IdCardIsValid'

EXECUTE sp_addextendedproperty N'MS_Description','ѧ��',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Education'

EXECUTE sp_addextendedproperty N'MS_Description','רҵ',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Major'

EXECUTE sp_addextendedproperty N'MS_Description','�ƶ��绰',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'MobilePhone'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'EmployeeInformation', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'EmployeeInformation', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Users'))
--����Users�û���
CREATE TABLE Users
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	EmployeeInnerId varchar(36) null,
	EmployeeBillNo varchar(36) null,
	UserName varchar(20) not null,
	Name varchar(20) not null,
	Password varchar(200) not null,
	State varchar(10) null,
	Lock bit null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_User Primary Key(BillNo),
	Constraint FK_UsersBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_UserEmployee Foreign Key(EmployeeBillNo) References EmployeeInformation(BillNo)
)

CREATE UNIQUE INDEX IX_UsersName ON Users(Name) WITH FILLFACTOR=30

EXECUTE sp_addextendedproperty N'MS_Description', '�û�', N'user', N'dbo', N'table', N'Users', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Users', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '�û����', N'user', N'dbo', N'table', N'Users', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Users', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Users', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ա���������', N'user', N'dbo', N'table', N'Users', N'column', N'EmployeeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ա�����', N'user', N'dbo', N'table', N'Users', N'column', N'EmployeeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '�û���', N'user', N'dbo', N'table', N'Users', N'column', N'UserName'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Users', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Users', N'column', N'Password'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Users', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Users', N'column', N'Lock'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Users', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Users', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Users', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Users', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Users', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Users', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Users', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Privilege'))
--����PrivilegeȨ�ޱ�
CREATE TABLE Privilege
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	Name varchar(50) not null,
	Classes varchar(50) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Privilege Primary Key(BillNo),
	Constraint FK_PrivilegeBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ��', N'user', N'dbo', N'table', N'Privilege', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Privilege', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�ޱ��', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ������', N'user', N'dbo', N'table', N'Privilege', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ������', N'user', N'dbo', N'table', N'Privilege', N'column', N'Classes'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Privilege', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Privilege', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Privilege', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Privilege', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Privilege', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Privilege', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Privilege', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Privilege', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Roles'))
--����Roles��ɫ��
CREATE TABLE Roles
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	Name varchar(50) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Role Primary Key(BillNo),
	Constraint FK_RolesBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ', N'user', N'dbo', N'table', N'Roles', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Roles', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ���', N'user', N'dbo', N'table', N'Roles', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Roles', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Roles', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ����', N'user', N'dbo', N'table', N'Roles', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Roles', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Roles', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Roles', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Roles', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Roles', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Roles', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Roles', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Roles', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Modules'))
--����Modulesģ�ͱ�
CREATE TABLE Modules
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	Name varchar(100) not null,
	ParentModuleID varchar(36) not null,
	ParentModule varchar(36) not null,
	WinClassName varchar(100) not null,
	AssemblyName varchar(100) not null,
	Depth int not null,
	Manage bit not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Module Primary Key(BillNo),
	Constraint FK_ModulesBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ��', N'user', N'dbo', N'table', N'Modules', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Modules', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ�ͱ��', N'user', N'dbo', N'table', N'Modules', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Modules', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Modules', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ������', N'user', N'dbo', N'table', N'Modules', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '��ģ�ͱ��', N'user', N'dbo', N'table', N'Modules', N'column', N'ParentModuleID'

EXECUTE sp_addextendedproperty N'MS_Description', '��ģ��', N'user', N'dbo', N'table', N'Modules', N'column', N'ParentModule'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Modules', N'column', N'WinClassName'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Modules', N'column', N'AssemblyName'

EXECUTE sp_addextendedproperty N'MS_Description', '�ڵ����', N'user', N'dbo', N'table', N'Modules', N'column', N'Depth'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Modules', N'column', N'Manage'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Modules', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Modules', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Modules', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Modules', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Modules', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Modules', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Modules', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Modules', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('RoleModulePermissions'))
--����RoleModulePermission��ɫģ��Ȩ�ޱ�
CREATE TABLE RoleModulePermissions
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	ModulesInnerID varchar(36) not null,
	ModulesBillNo varchar(36) not null,
	PrivilegeInnerID varchar(36) not null,
	PrivilegeBillNo varchar(36) not null,
	RolesInnerID varchar(36) not null,
	RolesBillNo varchar(36) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_RoleModulePermissions Primary Key(BillNo),
	Constraint FK_RMPBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_ModulesRMP Foreign Key(ModulesBillNo) References Modules(BillNo),
	Constraint FK_PrivilegeRoleRMP Foreign Key(PrivilegeBillNo) References Privilege(BillNo),
	Constraint FK_RolesRMP Foreign Key(RolesBillNo) References Roles(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫģ��Ȩ��', N'user', N'dbo', N'table', N'RoleModulePermissions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '���', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '���ݱ��', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ�͹������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModulesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ�ͱ��', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModulesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�޹������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'PrivilegeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�ޱ��', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'PrivilegeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ�������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RolesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ���', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RolesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('UserModulePermissions'))
--����UserModulePermissions�û�ģ��Ȩ�ޱ�
CREATE TABLE UserModulePermissions
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	ModulesInnerID varchar(36) not null,
	ModulesBillNo varchar(36) not null,
	UsersInnerID varchar(36) not null,
	UsersBillNo varchar(36) not null,
	PrivilegeInnerID varchar(36) not null,
	PrivilegeBillNo varchar(36) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_UserModulePermissions Primary Key(BillNo),
	Constraint FK_UMPBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_ModulesUMP Foreign Key(ModulesBillNo) References Modules(BillNo),
	Constraint FK_UsersUMP Foreign Key(UsersBillNo) References Users(BillNo),
	Constraint FK_PrivilegeUserUMP Foreign Key(PrivilegeBillNo) References Privilege(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '�û�ģ��Ȩ��', N'user', N'dbo', N'table', N'UserModulePermissions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '���', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '���ݱ��', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ�͹������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModulesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ�ͱ��', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModulesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�޹������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'PrivilegeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', 'Ȩ�ޱ��', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'PrivilegeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '�û��������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'UsersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '�û����', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'UsersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('UserRoles'))
--����UserRole�û���ɫ��
CREATE TABLE UserRoles
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	UsersInnerID varchar(36) not null,
	UsersBillNo varchar(36) not null,
	RolesInnerID varchar(36) not null,
	RolesBillNo varchar(36) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_UserRole Primary Key(BillNo),
	Constraint FK_URBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_UsersUR Foreign Key(UsersBillNo) References Users(BillNo),
	Constraint FK_RolesUR Foreign Key(RolesBillNo) References Roles(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '�û���ɫ', N'user', N'dbo', N'table', N'UserRoles', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '���', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '���ݱ��', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�û��������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'UsersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '�û����', N'user', N'dbo', N'table', N'UserRoles', N'column', N'UsersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ�������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RolesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '��ɫ���', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RolesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'UserRoles', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'UserRoles', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'UserRoles', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Languages'))
--����Language���Ա�
CREATE TABLE Languages
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	Language varchar(50) not null,
	Module varchar(50) not null,
	WindowsName varchar(50) not null,
	ControlName varchar(50) not null,
	LanguageValue varchar(50) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Language Primary Key(BillNo),
	Constraint FK_LanguagesBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Languages', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Languages', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '���Ա��', N'user', N'dbo', N'table', N'Languages', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Languages', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Languages', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '����', N'user', N'dbo', N'table', N'Languages', N'column', N'Language'

EXECUTE sp_addextendedproperty N'MS_Description', 'ģ��', N'user', N'dbo', N'table', N'Languages', N'column', N'Module'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Languages', N'column', N'WindowsName'

EXECUTE sp_addextendedproperty N'MS_Description', '�ؼ�����', N'user', N'dbo', N'table', N'Languages', N'column', N'ControlName'

EXECUTE sp_addextendedproperty N'MS_Description', '����ֵ', N'user', N'dbo', N'table', N'Languages', N'column', N'LanguageValue'

EXECUTE sp_addextendedproperty N'MS_Description', '״̬', N'user', N'dbo', N'table', N'Languages', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '��ע', N'user', N'dbo', N'table', N'Languages', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '������', N'user', N'dbo', N'table', N'Languages', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '��������', N'user', N'dbo', N'table', N'Languages', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸���', N'user', N'dbo', N'table', N'Languages', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '�޸�����', N'user', N'dbo', N'table', N'Languages', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Languages', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Languages', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Operators'))
--�����������
CREATE TABLE Operators
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	Operator varchar(10) not null,
	Description varchar(20) not null,
	ColumnType varchar(10) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Operators Primary Key(BillNo),
	Constraint FK_OperatorsBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Operators', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'Operators',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Operators',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Operators',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Operators',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','�����',N'user',N'dbo',N'table',N'Operators',N'column',N'Operator'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Operators',N'column',N'Description'

EXECUTE sp_addextendedproperty N'MS_Description','�ֶ�����',N'user',N'dbo',N'table',N'Operators',N'column',N'ColumnType'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'Operators',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'Operators',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'Operators',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Operators',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'Operators',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'Operators',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Operators', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Operators', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('OperationLog'))
--������־��
CREATE TABLE OperationLog
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	DataBillNo varchar(36) not null,
	TableName varchar(50) not null,
	ColumnName varchar(50) not null,
	ColumnDesc varchar(100) not null,
	ColumnValue varchar(1000) not null,
	NewColumnValue varchar(1000) not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_OperationLog Primary Key(BillNo),
	Constraint FK_OperationLogBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��־', N'user', N'dbo', N'table', N'OperationLog', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'OperationLog',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���ݱ��',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','���ϵ��ݱ��',N'user',N'dbo',N'table',N'OperationLog',N'column',N'DataBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'OperationLog',N'column',N'TableName'

EXECUTE sp_addextendedproperty N'MS_Description','�ֶ���',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnName'

EXECUTE sp_addextendedproperty N'MS_Description','�ֶ�����',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnDesc'

EXECUTE sp_addextendedproperty N'MS_Description','ԭֵ',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnValue'

EXECUTE sp_addextendedproperty N'MS_Description','��ֵ',N'user',N'dbo',N'table',N'OperationLog',N'column',N'NewColumnValue'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'OperationLog',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'OperationLog',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'OperationLog', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'OperationLog', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('SuppliersType'))
--������Ӧ�����ͱ�
CREATE TABLE SuppliersType
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SupplierType varchar(36) not null,--��Ӧ������
	State varchar(10) null,
	Remark varchar(1000) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_SuppliersType Primary Key(BillNo),
	Constraint FK_SuppliersTypeBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��Ӧ������', N'user', N'dbo', N'table', N'SuppliersType', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'SupplierType'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'SuppliersType', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'SuppliersType', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Suppliers'))
--������Ӧ�̱�
CREATE TABLE Suppliers
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SupplierName varchar(100) not null,--��Ӧ��ȫ��
	ShortName varchar(50) not null,--��Ӧ�̼��
	SupplierTypeInnerID varchar(36) not null,--��Ӧ�����͹������
	FromBillNo varchar(36) null,--��Դ��Ӧ�����ͱ��
	PaymentMethod varchar(30) null,--���ʽ
	Tenor varchar(10) null,--��������
	Corporate varchar(20) null,--����
	Telephone varchar(25) null,--�绰
	Fax varchar(25) null,--����
	SupplierAddress varchar(500) not null,--��Ӧ�̵�ַ
	State varchar(10) null,
	Remark varchar(1000) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Suppliers Primary Key(BillNo),
	Constraint FK_SuppliersBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_SupplierType Foreign Key(FromBillNo) References SuppliersType(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��Ӧ��', N'user', N'dbo', N'table', N'Suppliers', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ��ȫ��',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierName'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'Suppliers',N'column',N'ShortName'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierTypeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ��Ӧ�����ͱ��',N'user',N'dbo',N'table',N'Suppliers',N'column',N'FromBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','���ʽ',N'user',N'dbo',N'table',N'Suppliers',N'column',N'PaymentMethod'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Tenor'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Corporate'

EXECUTE sp_addextendedproperty N'MS_Description','�绰',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Telephone'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Fax'

EXECUTE sp_addextendedproperty N'MS_Description','��ַ',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierAddress'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'Suppliers',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Suppliers',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'Suppliers',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Suppliers', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Suppliers', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('SupplierContact'))
--������Ӧ����ϵ�˱�
CREATE TABLE SupplierContact
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) null,
	Def bit null,
	Name varchar(20) not null,
	TelePhone varchar(25) null,
	MobilePhone varchar(15) null,
	Fax varchar(25) null,
	QQ varchar(20) null,
	Skype varchar(20) null,
	State varchar(10) null,
	Remark varchar(1000) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_SupplierContact Primary Key(BillNo),
	Constraint FK_SupplierContactBillType Foreign Key(BillType) References SystemBillType(BillType),
	Constraint FK_Supplier Foreign Key(MasterBillNo) References Suppliers(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��Ӧ����ϵ��', N'user', N'dbo', N'table', N'SupplierContact', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ�̹������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ����',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','Ĭ��',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Def'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Name'

EXECUTE sp_addextendedproperty N'MS_Description','�绰',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'TelePhone'

EXECUTE sp_addextendedproperty N'MS_Description','�ֻ�',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MobilePhone'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Fax'

EXECUTE sp_addextendedproperty N'MS_Description','QQ',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'QQ'

EXECUTE sp_addextendedproperty N'MS_Description','Skype',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Skype'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'SupplierContact', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'SupplierContact', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Unit'))
--������λ����
CREATE TABLE Unit
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	UnitName varchar(10) not null,
	State varchar(10) null,
	Remark varchar(1000) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Unit Primary Key(BillNo),
	Constraint FK_UnitBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��λ', N'user', N'dbo', N'table', N'Unit', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'Unit',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'Unit',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Unit',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Unit',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��λ����',N'user',N'dbo',N'table',N'Unit',N'column',N'UnitName'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'Unit',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'Unit',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'Unit',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Unit',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'Unit',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'Unit',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Unit', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Unit', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Subscribe'))
--�����깺����
CREATE TABLE Subscribe
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SuppliersInnerID varchar(36) not null,--��Ӧ�̹���ID
	SuppliersBillNo varchar(36) not null,--��Ӧ�̵��ݱ��
	BuyerID varchar(36) not null,--�ɹ�ԱID
	BuyerName varchar(50) not null,--�ɹ�Ա����
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Subscribe Primary Key(BillNo),
	Constraint FK_SubscribeBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '�깺��', N'user', N'dbo', N'table', N'Subscribe', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���ݱ��',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ�̹������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'SuppliersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Ӧ�̵��ݱ��',N'user',N'dbo',N'table',N'Subscribe',N'column',N'SuppliersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','�ɹ�Ա���',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BuyerID'

EXECUTE sp_addextendedproperty N'MS_Description','�ɹ�Ա����',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BuyerName'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'Subscribe',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Subscribe',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'Subscribe',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Subscribe', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Subscribe', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Product'))
--����������Ϣ��
CREATE TABLE Product
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,--����
	BillType varchar(36) not null,
	BillDate date not null,
	ProductType varchar(36) null,--��Ʒ���
	ProductName varchar(100) null,--Ʒ��
	CommodityDescription varchar(1000) null,--Ʒ������
	ProductColour varchar(50) null,--��Ʒ��ɫ
	PackagingSolution varchar(50) null,--��װ����
	ProductLength numeric(18,2) null,--��Ʒ��
	ProductWidth numeric(18,2) null,--��Ʒ��
	ProductHigh numeric(18,2) null,--��Ʒ��
	PackingSizeUnit varchar(20) null,--�ߴ絥λ
	Weight numeric(18,4) null,--����
	GrossWeight numeric(18,4) null,--ë��
	Material varchar(100) null,--����
	Brand varchar(100) null,--Ʒ��
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Product Primary Key(BillNo),
	Constraint FK_ProductBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '������Ϣ', N'user', N'dbo', N'table', N'Product', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'Product',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Product',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Product',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Product',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ���',N'user',N'dbo',N'table',N'Product',N'column',N'ProductType'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ��',N'user',N'dbo',N'table',N'Product',N'column',N'ProductName'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ������',N'user',N'dbo',N'table',N'Product',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��ɫ',N'user',N'dbo',N'table',N'Product',N'column',N'ProductColour'

EXECUTE sp_addextendedproperty N'MS_Description','��װ����',N'user',N'dbo',N'table',N'Product',N'column',N'PackagingSolution'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'Product',N'column',N'ProductLength'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'Product',N'column',N'ProductWidth'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'Product',N'column',N'ProductHigh'

EXECUTE sp_addextendedproperty N'MS_Description','�ߴ絥λ',N'user',N'dbo',N'table',N'Product',N'column',N'PackingSizeUnit'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Product',N'column',N'Weight'

EXECUTE sp_addextendedproperty N'MS_Description','ë��',N'user',N'dbo',N'table',N'Product',N'column',N'GrossWeight'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'Product',N'column',N'Material'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ��',N'user',N'dbo',N'table',N'Product',N'column',N'Brand'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'Product',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'Product',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'Product',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'Product',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'Product',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'Product',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'Product', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'Product', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('ProductChild'))
--�ӻ�����Ϣ��
CREATE TABLE ProductChild
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	ChildProductName varchar(100) null,--Ʒ��
	CommodityDescription varchar(1000) null,--Ʒ������
	ProductColour varchar(50) null,--��Ʒ��ɫ
	PackagingSolution varchar(50) null,--��װ����
	ProductLength numeric(18,2) null,--��Ʒ��
	ProductWidth numeric(18,2) null,--��Ʒ��
	ProductHigh numeric(18,2) null,--��Ʒ��
	PackingSizeUnit varchar(20) null,--�ߴ絥λ
	Weight numeric(18,4) null,--����
	GrossWeight numeric(18,4) null,--ë��
	Material varchar(100) null,--����
	Brand varchar(100) null,--Ʒ��
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_ProductChild Primary Key(BillNo),
	Constraint FK_Product Foreign Key(MasterBillNo) References Product(BillNo),
)

EXECUTE sp_addextendedproperty N'MS_Description', '�ӻ�����Ϣ', N'user', N'dbo', N'table', N'ProductChild', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'ProductChild',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'ProductChild',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','�ӻ���',N'user',N'dbo',N'table',N'ProductChild',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ���',N'user',N'dbo',N'table',N'ProductChild',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ����',N'user',N'dbo',N'table',N'ProductChild',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ChildProductName'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ������',N'user',N'dbo',N'table',N'ProductChild',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��ɫ',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductColour'

EXECUTE sp_addextendedproperty N'MS_Description','��װ����',N'user',N'dbo',N'table',N'ProductChild',N'column',N'PackagingSolution'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductLength'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductWidth'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductHigh'

EXECUTE sp_addextendedproperty N'MS_Description','�ߴ絥λ',N'user',N'dbo',N'table',N'ProductChild',N'column',N'PackingSizeUnit'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Weight'

EXECUTE sp_addextendedproperty N'MS_Description','ë��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'GrossWeight'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Material'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ��',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Brand'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'ProductChild',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'ProductChild',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'ProductChild', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'ProductChild', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('PackagingSolutions'))
--��װ����
CREATE TABLE PackagingSolutions
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,--���
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	SolutionName varchar(100) null,--��װ����
	DisplayBox varchar(100) null,--չʾ��
	DisplayBoxLength numeric(18,2) null,--չʾ�г�
	DisplayBoxWidth numeric(18,2) null,--չʾ�п�
	DisplayBoxHigh numeric(18,2) null,--չʾ�и�
	InnerBox varchar(100) null,--�ں�
	InnerBoxLength numeric(18,2) null,--�ںг�
	InnerBoxWidth numeric(18,2) null,--�ںп�
	InnerBoxHigh numeric(18,2) null,--�ںи�
	InnerBoxCoefficient numeric(18,2) null,--�ں�ϵ��
	InnerBoxNumber int null,--�ں�װ��
	OuterBox varchar(100) null,--����
	OuterBoxLength numeric(18,2) null,--���䳤
	OuterBoxWidth numeric(18,2) null,--�����
	OuterBoxHigh numeric(18,2) null,--�����
	OuterBoxCoefficient numeric(18,2) null,--����ϵ��
	OuterBoxNumber int null,--����װ��
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_PackagingSolutions Primary Key(BillNo),
	Constraint FK_ProductSolutions Foreign Key(MasterBillNo) References Product(BillNo),
)

EXECUTE sp_addextendedproperty N'MS_Description', '��װ����', N'user', N'dbo', N'table', N'PackagingSolutions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ���',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��װ����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'SolutionName'

EXECUTE sp_addextendedproperty N'MS_Description','չʾ��',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBox'

EXECUTE sp_addextendedproperty N'MS_Description','չʾ�г�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','չʾ�п�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','չʾ�и�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','�ں�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBox'

EXECUTE sp_addextendedproperty N'MS_Description','�ںг�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','�ںп�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','�ںи�',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','�ں�ϵ��',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxCoefficient'

EXECUTE sp_addextendedproperty N'MS_Description','�ں�װ��',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxNumber'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBox'

EXECUTE sp_addextendedproperty N'MS_Description','���䳤',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','�����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','�����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','����ϵ��',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxCoefficient'

EXECUTE sp_addextendedproperty N'MS_Description','����װ��',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxNumber'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'PackagingSolutions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'PackagingSolutions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('StockIn'))
--��ⵥ
CREATE TABLE StockIn
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_StockIn Primary Key(BillNo),
	Constraint FK_StockInBillType Foreign Key(BillType) References SystemBillType(BillType)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��ⵥ', N'user', N'dbo', N'table', N'StockIn', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'StockIn',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��ⵥ��',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'StockIn',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'StockIn',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'StockIn',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'StockIn',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'StockIn',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'StockIn',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'StockIn', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'StockIn', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('StockInDetail'))
--��ⵥ��ϸ
CREATE TABLE StockInDetail
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	ProductInnerID varchar(36) not null,--��Ʒ���
	ProductBillNo varchar(36) not null,--����
	Picture varchar(1000) null,--ͼƬ
	ProductName varchar(100) null,--Ʒ��
	CommodityDescription varchar(1000) null,--Ʒ������
	Color varchar(100) null,--��ɫ
	ShoeSize int null,--����
	SizeNum int null,--��������
	QTY int null,--ÿ������
	CTNS int null,--����
	Total int null,--������
	UnitInnerID varchar(36) null,--��λ���
	UnitBillNo varchar(36) null,--��λ����
	Price decimal null,--����
	Amount decimal null,--���
	State varchar(10) null,
	Remark varchar(100) null,
	Creater varchar(20) not null,
	CreateDate datetime not null,
	Modifier varchar(20) null,
	ModifiedDate datetime null,
	Auditor varchar(20) null,
	AuditDate datetime null,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_StockInDetail Primary Key(BillNo),
	Constraint FK_ProductStockInDetail Foreign Key(ProductBillNo) References Product(BillNo),
	Constraint FK_UnitStockInDetail Foreign Key(UnitBillNo) References Unit(BillNo),
	Constraint FK_StockInToDetail Foreign Key(MasterBillNo) References StockIn(BillNo)
)

EXECUTE sp_addextendedproperty N'MS_Description', '��ⵥ��ϸ', N'user', N'dbo', N'table', N'StockInDetail', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','�������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','��ⵥ���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��Դ����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','��Ʒ���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','ͼƬ',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Picture'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ��',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductName'

EXECUTE sp_addextendedproperty N'MS_Description','Ʒ������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','��ɫ',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Color'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ShoeSize'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'SizeNum'

EXECUTE sp_addextendedproperty N'MS_Description','ÿ������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'QTY'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CTNS'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Total'

EXECUTE sp_addextendedproperty N'MS_Description','��λ���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'UnitInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','��λ����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'UnitBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Price'

EXECUTE sp_addextendedproperty N'MS_Description','���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Amount'

EXECUTE sp_addextendedproperty N'MS_Description','״̬',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','��ע',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','��������',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','�޸���',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','�޸�����',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '�����', N'user', N'dbo', N'table', N'StockInDetail', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '�������', N'user', N'dbo', N'table', N'StockInDetail', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Colors'))
--��ɫ
CREATE TABLE [dbo].[Colors](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[State] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Colors Primary Key(BillNo),
	Constraint FK_ColorsBillType Foreign Key(BillType) References SystemBillType(BillType)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Process'))
--����
CREATE TABLE [dbo].[Process](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Process] [varchar](50) NOT NULL,
	[State] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Process Primary Key(BillNo),
	Constraint FK_ProcessBillType Foreign Key(BillType) References SystemBillType(BillType)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Process'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Customer'))
--�ͻ�
CREATE TABLE [dbo].[Customer](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Short] [varchar](20) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[Contact] varchar(20) NULL,
	[ContactPhone] varchar(11) NULL,
	[State] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Customer Primary Key(BillNo),
	Constraint FK_CustomerBillType Foreign Key(BillType) References SystemBillType(BillType)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Short'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Contact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('Invoice'))
--��Ʊ
CREATE TABLE [dbo].[Invoice](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[State] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_Invoice Primary Key(BillNo),
	Constraint FK_InvoiceBillType Foreign Key(BillType) References SystemBillType(BillType)
) 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ', @level0type=N'user', @level0name=N'dbo', @level1type=N'table', @level1name=N'Invoice', @level2type=NULL, @level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('InvoiceDetail'))
--��Ʊ��ϸ
CREATE TABLE [dbo].[InvoiceDetail](
	[InnerID] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[ReceivingTime] [datetime] NOT NULL,
	[ShippingTime] [datetime] NULL,
	[Deseription] [varchar](200) NULL,
	[ColorID] [varchar](36) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[ReceivingQTY] [numeric](18, 2) NULL,
	[ShippingQTY] [numeric](18, 2) NULL,
	[APerKilogram] [numeric](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[QTY] [numeric](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ProcessID] [varchar](36) NULL,
	[Remark] [varchar](50) NULL,
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[State] [int] NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_InvoiceDetail Primary Key(BillNo),
	Constraint FK_Invoice Foreign Key(MasterBillNo) References Invoice(BillNo),
	Constraint FK_ColorInvoice Foreign Key(ColorID) References Colors(BillNo),
	Constraint FK_ProcessInvoice Foreign Key(ProcessID) References Process(BillNo)
)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=NULL,@level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��/��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrder'))
--������
CREATE TABLE [dbo].[ShipOrder](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[State] [int] NULL,
	[Remark] [varchar](200) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,	
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	[FromInnerID] [varchar](36) NULL,
	[FromBillNo] [varchar](36) NULL,
	Constraint PK_ShipOrder Primary Key(BillNo),
	Constraint FK_ShipOrderBillType Foreign Key(BillType) References SystemBillType(BillType)
) 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������', @level0type=N'user', @level0name=N'dbo', @level1type=N'table', @level1name=N'ShipOrder', @level2type=NULL, @level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrderDetail'))
--������ϸ
CREATE TABLE [dbo].[ShipOrderDetail](
	[InnerID] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[ReceivingTime] [datetime] NOT NULL,
	[ShippingTime] [datetime] NULL,
	[Deseription] [varchar](200) NULL,
	[ColorID] [varchar](36) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[ReceivingQTY] [numeric](18, 2) NULL,
	[ShippingQTY] [numeric](18, 2) NULL,
	[SampleQTY] [numeric](18,2) NULL,
	[SampleWeight] [numeric](18,2) NULL,
	[APerKilogram] [numeric](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[QTY] [numeric](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ProcessID] [varchar](36) NULL,
	[Remark] [varchar](50) NULL,
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[FromInnerID] [varchar](36) NULL,
	[FromBillNo] [varchar](36) NULL,
	[State] [int] NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Modifier] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[Auditor] [varchar](20) NULL,
	[AuditDate] [datetime] NULL,
	[Invalid] [varchar](20) NULL,
	[DateObsolete] [datetime] NULL,	
	[AuditorState] [int] NULL,
	[InvalidState] [int] NULL,
	Constraint PK_ShipOrderDetail Primary Key(BillNo),
	Constraint FK_ShipOrder Foreign Key(MasterBillNo) References Invoice(BillNo),
	Constraint FK_ColorShipOrder Foreign Key(ColorID) References Colors(BillNo),
	Constraint FK_ProcessShipOrder Foreign Key(ProcessID) References Process(BillNo)
)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=NULL,@level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��/��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

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