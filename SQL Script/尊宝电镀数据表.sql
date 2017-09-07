USE qds126671222_db
GO

if not exists(select * from sysobjects where id = object_id('DataStructure'))
BEGIN
CREATE TABLE DataStructure
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillDate date not null,
	TableName varchar(100) not null,
	TableDecription varchar(200) null,
	ColumnsName varchar(100) not null,
	ColumnsDescription varchar(200) null,
	ColumnType varchar(50) not null,
	TypeLength int not null,
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
	Constraint PK_DataStructure Primary Key(BillNo)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', null,null))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݽṹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=null,@level2name=null
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'TableName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'TableName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'TableDecription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'TableDecription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'ColumnsName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'ColumnsName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'ColumnsDescription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'ColumnsDescription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'ColumnType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'ColumnType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'TypeLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'TypeLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'DataStructure', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataStructure', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('GBTLoginLog'))
BEGIN
CREATE TABLE [dbo].[GBTLoginLog](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[Project] [nvarchar](50) NOT NULL,
	[UserID] [varchar](20) NULL,
	[UserName] [varchar](20) NULL,
	[IP] [nvarchar](20) NOT NULL,
	[LocationIP] [nvarchar](20) NULL,
	[Remark] [varchar](max) NULL,
	[Creater] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
CONSTRAINT [PK_GBTLoginLog] PRIMARY KEY CLUSTERED 
(
	[BillNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'Project'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'Project'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'IP'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'IP'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'LocationIP'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'LocationIP'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GBTLoginLog', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��½��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GBTLoginLog'
GO

if not exists(select * from sysobjects where id = object_id('SystemBillType'))
BEGIN
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
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'TypeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Rules'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Rules'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SystemBillType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType'
GO

if not exists(select * from sysobjects where id = object_id('Users'))
--����Users�û���
CREATE TABLE Users
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
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
)

CREATE UNIQUE INDEX IX_UsersName ON Users(Name) WITH FILLFACTOR=30

IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'EmployeeInnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'EmployeeInnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'EmployeeBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'EmployeeBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Lock'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Lock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
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
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ�ޱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Classes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Classes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Privilege', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege'
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

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ�ͱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'ParentModuleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ģ�ͱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'ParentModuleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'ParentModule'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ģ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'ParentModule'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'WinClassName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'WinClassName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'AssemblyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'AssemblyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Depth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Depth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Manage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Manage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modules', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules'
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

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Operator'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Operator'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'ColumnType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'ColumnType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Operators', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators'
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
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'DataBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ϵ��ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'DataBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'TableName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'TableName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'ColumnName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'ColumnName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'ColumnDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֶ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'ColumnDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'ColumnValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'ColumnValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'NewColumnValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'NewColumnValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'OperationLog', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog'
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Color'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Color'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Colors', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors'
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Process'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Process'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Process', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process'
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Short'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Short'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'CustomerName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Contact'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Contact'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'ContactPhone'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Customer', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO

if not exists(select * from sysobjects where id = object_id('Invoice'))
--��Ʊ
CREATE TABLE [dbo].[Invoice](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[PaymentTerms] [varchar](50) NULL,
	[ElectroplatingWay] [varchar](50) NULL,
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Customer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Customer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'PaymentTerms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'PaymentTerms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'ElectroplatingWay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'ElectroplatingWay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Invoice', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice'
GO

if not exists(select * from sysobjects where id = object_id('InvoiceDetail'))
--��Ʊ��ϸ
CREATE TABLE [dbo].[InvoiceDetail](
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[CustomerID] [varchar](36) NOT NULL,
	[Customer] [varchar](100) NULL,
	[PaymentTerms] [varchar](50) NULL,
	[ElectroplatingWay] [varchar](50) NULL,
	[BillNo] [varchar](36) NOT NULL,
	[ReceivingTime] [datetime] NOT NULL,
	[ShippingTime] [datetime] NULL,
	[Deseription] [varchar](200) NULL,
	[ColorID] [varchar](36) NULL,
	[Color] [varchar](50) NULL,
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
	[InnerID] [varchar](36) NOT NULL,
	Constraint PK_InvoiceDetail Primary Key(BillNo),
	Constraint FK_Invoice Foreign Key(MasterBillNo) References Invoice(BillNo),
	Constraint FK_ColorInvoice Foreign Key(ColorID) References Colors(BillNo),
	Constraint FK_ProcessInvoice Foreign Key(ProcessID) References Process(BillNo)
)

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'MasterInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'MasterBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'RowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Customer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'PaymentTerms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'PaymentTerms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ElectroplatingWay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ElectroplatingWay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ReceivingTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ShippingTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Deseription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ColorID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Color'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ReceivingQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ShippingQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'SampleQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'SampleQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'SampleWeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'SampleWeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'APerKilogram'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��/��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'QTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ProcessID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'InvoiceDetail', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʊ��ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrder'))
--������
CREATE TABLE [dbo].[ShipOrder](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[Customer] [varchar](100) NOT NULL,
	[PaymentTerms] [varchar](50) NULL,
	[ElectroplatingWay] [varchar](50) NULL,
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'PaymentTerms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'PaymentTerms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'ElectroplatingWay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'ElectroplatingWay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Customer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Customer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrder', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrderDetail'))
--������ϸ
CREATE TABLE [dbo].[ShipOrderDetail](
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[CustomerID] [varchar](36) NOT NULL,
	[Customer] [varchar](100) NULL,
	[PaymentTerms] [varchar](50) NULL,
	[ElectroplatingWay] [varchar](50) NULL,
	[BillNo] [varchar](36) NOT NULL,
	[ReceivingTime] [datetime] NOT NULL,
	[ShippingTime] [datetime] NOT NULL,
	[Deseription] [varchar](200) NOT NULL,
	[ColorID] [varchar](36) NULL,
	[Color] [varchar](50) NULL,
	[ReceivingQTY] [numeric](18, 2) NULL,
	[ShippingQTY] [numeric](18, 2) NULL,
	[SurplusQTY] [numeric](18, 2) NULL,
	[OutShipping] [numeric](18, 2) NULL,
	[SampleQTY] [numeric](18,2) NULL,
	[SampleWeight] [numeric](18,2) NULL,
	[APerKilogram] [numeric](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[QTY] [numeric](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ProcessID] [varchar](36) NULL,
	[Remark] [varchar](50) NULL,
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
	[InnerID] [varchar](36) NOT NULL,
	Constraint PK_ShipOrderDetail Primary Key(BillNo),
	Constraint FK_ShipOrder Foreign Key(MasterBillNo) References ShipOrder(BillNo),
	Constraint FK_ColorShipOrder Foreign Key(ColorID) References Colors(BillNo),
	Constraint FK_ProcessShipOrder Foreign Key(ProcessID) References Process(BillNo)
)
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'MasterInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'MasterBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'RowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'CustomerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Customer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'PaymentTerms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'PaymentTerms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ElectroplatingWay'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ElectroplatingWay'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ReceivingTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ShippingTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Deseription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ColorID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Color'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ReceivingQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ShippingQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'SurplusQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SurplusQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'OutShipping'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ѳ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'OutShipping'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'SampleQTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleQTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'SampleWeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleWeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'APerKilogram'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��/��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'QTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ProcessID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ShipOrderDetail', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail'
GO

if not exists(select * from sysobjects where id = object_id('StockIn'))
--��ⵥ
CREATE TABLE [dbo].[StockIn](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[DeliveryUnit] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
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
	Constraint PK_StockIn Primary Key(BillNo),
	Constraint FK_StockInBillType Foreign Key(BillType) References SystemBillType(BillType)
) 
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ⵥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'DeliveryUnit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'DeliveryUnit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockIn', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ⵥ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn'
GO

if not exists(select * from sysobjects where id = object_id('StockInDetail'))
--�����ϸ
CREATE TABLE [dbo].[StockInDetail](
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[Deseription] [varchar](200) NULL,
	[Dimensions] [varchar](300) NULL,
	[QTY] [numeric](18, 2) NULL,
	[Unit] [varchar](10) NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remark] [varchar](50) NULL,
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
	[InnerID] [varchar](36) NOT NULL,
	Constraint PK_StockInDetail Primary Key(BillNo),
	Constraint FK_StockIn Foreign Key(MasterBillNo) References StockIn(BillNo)
)

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'MasterInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ⵥ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'MasterBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ⵥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'RowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ⵥ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Deseription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Dimensions'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Dimensions'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'QTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Unit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Unit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockInDetail', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail'
GO

if not exists(select * from sysobjects where id = object_id('StockOut'))
--���ⵥ
CREATE TABLE [dbo].[StockOut](
	[InnerID] [varchar](36) NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[BillType] [varchar](36) NOT NULL,
	[BillDate] [date] NOT NULL,
	[DeliveryUnit] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
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
	Constraint PK_StockOut Primary Key(BillNo),
	Constraint FK_StockOutBillType Foreign Key(BillType) References SystemBillType(BillType)
) 
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⵥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'BillType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'BillType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'BillDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'DeliveryUnit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'DeliveryUnit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Address'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Address'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���ݱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOut', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⵥ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut'
GO

if not exists(select * from sysobjects where id = object_id('StockOutDetail'))
--������ϸ
CREATE TABLE [dbo].[StockOutDetail](
	[MasterInnerID] [varchar](36) NOT NULL,
	[MasterBillNo] [varchar](36) NOT NULL,
	[RowID] [int] NOT NULL,
	[BillNo] [varchar](36) NOT NULL,
	[Deseription] [varchar](200) NULL,
	[Dimensions] [varchar](300) NULL,
	[QTY] [numeric](18, 2) NULL,
	[Unit] [varchar](10) NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remark] [varchar](50) NULL,
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
	[InnerID] [varchar](36) NOT NULL,
	Constraint PK_StockOutDetail Primary Key(BillNo),
	Constraint FK_StockOut Foreign Key(MasterBillNo) References StockOut(BillNo)
)

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'MasterInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⵥ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'MasterBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⵥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'RowID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'BillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⵥ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Deseription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Dimensions'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Dimensions'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'QTY'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Unit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Unit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'FromInnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'FromBillNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Creater'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Modifier'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'ModifiedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'Invalid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'DateObsolete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'AuditorState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'InvalidState'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', N'COLUMN',N'InnerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'StockOutDetail', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOutDetail'
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

