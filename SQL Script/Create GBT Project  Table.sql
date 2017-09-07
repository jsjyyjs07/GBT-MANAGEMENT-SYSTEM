USE qds126671222_db

GO
/*
--更新表字段描述语法 
EXEC sp_updateextendedproperty 'MS_Description','单据类型','user',dbo,'table',N'SystemBillType','column',N'BillType'
--删除表字段描述语法
EXEC sp_dropextendedproperty 'MS_Description','user',dbo,'table','SystemBillType','column',N'BillType'
*/
GO
/*
--电脑状态监控
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

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Time_Stamp'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'User_Name'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Host_Name'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'OS_Version'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service Pack' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Service_Pack'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Machine_Domain'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录 域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Logon_Domain'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录服务器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Logon_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'System_Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网卡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Card'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP 地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'IP_Address'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子网掩码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Subnet_Mask'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认网关' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Default_Gateway'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MAC 地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'MAC_Address'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络速度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Speed'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Network_Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DHCP 服务器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'DHCP_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DNS 服务器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'DNS_Server'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'CPU'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Memory'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Boot_Time'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快照时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Snapshot_Time'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IE 版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'IE_Version'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'磁盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Volumes'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空余磁盘' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable', @level2type=N'COLUMN',@level2name=N'Free_Space'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电脑状态监控' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BGInfoTable'
*/
GO
if not exists(select * from sysobjects where id = object_id('SystemBillType'))
--创建系统单据类型表
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

EXECUTE sp_addextendedproperty N'MS_Description', '系统单据类型', N'user', N'dbo', N'table', N'SystemBillType', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '类型名称', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'TypeName'

EXECUTE sp_addextendedproperty N'MS_Description', '规则', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Rules'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'SystemBillType', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemBillType', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Company'))
--创建Company公司表
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

EXECUTE sp_addextendedproperty N'MS_Description', '公司', N'user', N'dbo', N'table', N'Company', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Company', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '公司编号', N'user', N'dbo', N'table', N'Company', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Company', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Company', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '公司名称', N'user', N'dbo', N'table', N'Company', N'column', N'CompanyName'

EXECUTE sp_addextendedproperty N'MS_Description', '法人', N'user', N'dbo', N'table', N'Company', N'column', N'Corporation'

EXECUTE sp_addextendedproperty N'MS_Description', '创始人', N'user', N'dbo', N'table', N'Company', N'column', N'CompanyFounder'

EXECUTE sp_addextendedproperty N'MS_Description', '公司地址', N'user', N'dbo', N'table', N'Company', N'column', N'EnterpriseAddress'

EXECUTE sp_addextendedproperty N'MS_Description', '公司邮箱地址', N'user', N'dbo', N'table', N'Company', N'column', N'EnterpriseMailbox'

EXECUTE sp_addextendedproperty N'MS_Description', '公司传真', N'user', N'dbo', N'table', N'Company', N'column', N'SobeyFax'

EXECUTE sp_addextendedproperty N'MS_Description', '公司电话', N'user', N'dbo', N'table', N'Company', N'column', N'EnterprisePhone'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Company', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Company', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Company', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Company', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Company', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Company', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Company', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Company', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
--部门
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

EXECUTE sp_addextendedproperty N'MS_Description', '部门', N'user', N'dbo', N'table', N'Department', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Department', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '部门编号', N'user', N'dbo', N'table', N'Department', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Department', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Department', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '部门名称', N'user', N'dbo', N'table', N'Department', N'column', N'Department'

EXECUTE sp_addextendedproperty N'MS_Description', '隶属于', N'user', N'dbo', N'table', N'Department', N'column', N'MemberOf'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Department', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Department', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Department', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Department', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Department', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Department', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Department', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('EmployeeInformation'))
--创建员工信息表
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
	EmployeeName varchar(20) not null,--姓名
	Sex varchar(4) not null,--性别
	Nation varchar(10) not null,--民族
	Birthday date not null,--生日
	NativePlace varchar(20) not null,--籍贯
	CensusRegister varchar(30) not null,--户籍
	HomeAddress varchar(500) not null,--家庭住址
	IDCard varchar(20) not null,--身份证
	IdCardIsValid datetime not null,--身份证有效期
	Education varchar(10) null,--学历
	Major varchar(20) null,--专业
	MobilePhone varchar(20) null,--移动电话（手机）
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

EXECUTE sp_addextendedproperty N'MS_Description', '员工信息', N'user', N'dbo', N'table', N'EmployeeInformation', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','工号',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','员工姓名',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'EmployeeName'

EXECUTE sp_addextendedproperty N'MS_Description','性别',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Sex'

EXECUTE sp_addextendedproperty N'MS_Description','民族',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Nation'

EXECUTE sp_addextendedproperty N'MS_Description','生日',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'BirthDay'

EXECUTE sp_addextendedproperty N'MS_Description','籍贯',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'NativePlace'

EXECUTE sp_addextendedproperty N'MS_Description','户籍',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'CensusRegister'

EXECUTE sp_addextendedproperty N'MS_Description','家庭住址',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'HomeAddress'

EXECUTE sp_addextendedproperty N'MS_Description','身份证',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'IDCard'

EXECUTE sp_addextendedproperty N'MS_Description','身份证有效期',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'IdCardIsValid'

EXECUTE sp_addextendedproperty N'MS_Description','学历',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Education'

EXECUTE sp_addextendedproperty N'MS_Description','专业',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Major'

EXECUTE sp_addextendedproperty N'MS_Description','移动电话',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'MobilePhone'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'EmployeeInformation',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'EmployeeInformation', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'EmployeeInformation', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeeInformation', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Users'))
--创建Users用户表
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

EXECUTE sp_addextendedproperty N'MS_Description', '用户', N'user', N'dbo', N'table', N'Users', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Users', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '用户编号', N'user', N'dbo', N'table', N'Users', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Users', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Users', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '员工关联编号', N'user', N'dbo', N'table', N'Users', N'column', N'EmployeeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '员工编号', N'user', N'dbo', N'table', N'Users', N'column', N'EmployeeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '用户名', N'user', N'dbo', N'table', N'Users', N'column', N'UserName'

EXECUTE sp_addextendedproperty N'MS_Description', '姓名', N'user', N'dbo', N'table', N'Users', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '密码', N'user', N'dbo', N'table', N'Users', N'column', N'Password'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Users', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '锁定', N'user', N'dbo', N'table', N'Users', N'column', N'Lock'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Users', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Users', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Users', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Users', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Users', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Users', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Users', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Privilege'))
--创建Privilege权限表
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

EXECUTE sp_addextendedproperty N'MS_Description', '权限', N'user', N'dbo', N'table', N'Privilege', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Privilege', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '权限编号', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Privilege', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '权限名称', N'user', N'dbo', N'table', N'Privilege', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '权限类型', N'user', N'dbo', N'table', N'Privilege', N'column', N'Classes'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Privilege', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Privilege', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Privilege', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Privilege', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Privilege', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Privilege', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Privilege', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Privilege', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Roles'))
--创建Roles角色表
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

EXECUTE sp_addextendedproperty N'MS_Description', '角色', N'user', N'dbo', N'table', N'Roles', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Roles', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '角色编号', N'user', N'dbo', N'table', N'Roles', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Roles', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Roles', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '角色名称', N'user', N'dbo', N'table', N'Roles', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Roles', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Roles', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Roles', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Roles', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Roles', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Roles', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Roles', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Roles', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Modules'))
--创建Modules模型表
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

EXECUTE sp_addextendedproperty N'MS_Description', '模型', N'user', N'dbo', N'table', N'Modules', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Modules', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '模型编号', N'user', N'dbo', N'table', N'Modules', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Modules', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Modules', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '模型名称', N'user', N'dbo', N'table', N'Modules', N'column', N'Name'

EXECUTE sp_addextendedproperty N'MS_Description', '父模型编号', N'user', N'dbo', N'table', N'Modules', N'column', N'ParentModuleID'

EXECUTE sp_addextendedproperty N'MS_Description', '父模型', N'user', N'dbo', N'table', N'Modules', N'column', N'ParentModule'

EXECUTE sp_addextendedproperty N'MS_Description', '窗体类名', N'user', N'dbo', N'table', N'Modules', N'column', N'WinClassName'

EXECUTE sp_addextendedproperty N'MS_Description', '程序集', N'user', N'dbo', N'table', N'Modules', N'column', N'AssemblyName'

EXECUTE sp_addextendedproperty N'MS_Description', '节点深度', N'user', N'dbo', N'table', N'Modules', N'column', N'Depth'

EXECUTE sp_addextendedproperty N'MS_Description', '管理', N'user', N'dbo', N'table', N'Modules', N'column', N'Manage'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Modules', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Modules', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Modules', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Modules', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Modules', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Modules', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Modules', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Modules', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modules', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('RoleModulePermissions'))
--创建RoleModulePermission角色模型权限表
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

EXECUTE sp_addextendedproperty N'MS_Description', '角色模型权限', N'user', N'dbo', N'table', N'RoleModulePermissions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '序号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '单据编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '模型关联编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModulesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '模型编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModulesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '权限关联编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'PrivilegeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '权限编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'PrivilegeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '角色关联编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RolesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '角色编号', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'RolesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'RoleModulePermissions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleModulePermissions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('UserModulePermissions'))
--创建UserModulePermissions用户模型权限表
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

EXECUTE sp_addextendedproperty N'MS_Description', '用户模型权限', N'user', N'dbo', N'table', N'UserModulePermissions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '序号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '单据编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '模型关联编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModulesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '模型编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModulesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '权限关联编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'PrivilegeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '权限编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'PrivilegeBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '用户关联编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'UsersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '用户编号', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'UsersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'UserModulePermissions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserModulePermissions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('UserRoles'))
--创建UserRole用户角色表
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

EXECUTE sp_addextendedproperty N'MS_Description', '用户角色', N'user', N'dbo', N'table', N'UserRoles', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '序号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description', '单据编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'UserRoles', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '用户关联编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'UsersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '用户编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'UsersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '角色关联编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RolesInnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '角色编号', N'user', N'dbo', N'table', N'UserRoles', N'column', N'RolesBillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'UserRoles', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'UserRoles', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'UserRoles', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'UserRoles', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'UserRoles', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoles', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Languages'))
--创建Language语言表
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

EXECUTE sp_addextendedproperty N'MS_Description', '语言', N'user', N'dbo', N'table', N'Languages', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description', '关联编号', N'user', N'dbo', N'table', N'Languages', N'column', N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description', '语言编号', N'user', N'dbo', N'table', N'Languages', N'column', N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description', '单据类型', N'user', N'dbo', N'table', N'Languages', N'column', N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description', '单据日期', N'user', N'dbo', N'table', N'Languages', N'column', N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description', '语言', N'user', N'dbo', N'table', N'Languages', N'column', N'Language'

EXECUTE sp_addextendedproperty N'MS_Description', '模型', N'user', N'dbo', N'table', N'Languages', N'column', N'Module'

EXECUTE sp_addextendedproperty N'MS_Description', '窗体名称', N'user', N'dbo', N'table', N'Languages', N'column', N'WindowsName'

EXECUTE sp_addextendedproperty N'MS_Description', '控件名称', N'user', N'dbo', N'table', N'Languages', N'column', N'ControlName'

EXECUTE sp_addextendedproperty N'MS_Description', '语言值', N'user', N'dbo', N'table', N'Languages', N'column', N'LanguageValue'

EXECUTE sp_addextendedproperty N'MS_Description', '状态', N'user', N'dbo', N'table', N'Languages', N'column', N'State'

EXECUTE sp_addextendedproperty N'MS_Description', '备注', N'user', N'dbo', N'table', N'Languages', N'column', N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description', '创建人', N'user', N'dbo', N'table', N'Languages', N'column', N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description', '创建日期', N'user', N'dbo', N'table', N'Languages', N'column', N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description', '修改人', N'user', N'dbo', N'table', N'Languages', N'column', N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description', '修改日期', N'user', N'dbo', N'table', N'Languages', N'column', N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Languages', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Languages', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Languages', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Operators'))
--创建运算符表
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

EXECUTE sp_addextendedproperty N'MS_Description', '运算符', N'user', N'dbo', N'table', N'Operators', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'Operators',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','运算符编号',N'user',N'dbo',N'table',N'Operators',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'Operators',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'Operators',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','运算符',N'user',N'dbo',N'table',N'Operators',N'column',N'Operator'

EXECUTE sp_addextendedproperty N'MS_Description','描述',N'user',N'dbo',N'table',N'Operators',N'column',N'Description'

EXECUTE sp_addextendedproperty N'MS_Description','字段类型',N'user',N'dbo',N'table',N'Operators',N'column',N'ColumnType'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'Operators',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'Operators',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'Operators',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'Operators',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'Operators',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'Operators',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Operators', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Operators', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Operators', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('OperationLog'))
--创建日志表
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

EXECUTE sp_addextendedproperty N'MS_Description', '日志', N'user', N'dbo', N'table', N'OperationLog', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'OperationLog',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','单据编号',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'OperationLog',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','资料单据编号',N'user',N'dbo',N'table',N'OperationLog',N'column',N'DataBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','表名',N'user',N'dbo',N'table',N'OperationLog',N'column',N'TableName'

EXECUTE sp_addextendedproperty N'MS_Description','字段名',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnName'

EXECUTE sp_addextendedproperty N'MS_Description','字段描述',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnDesc'

EXECUTE sp_addextendedproperty N'MS_Description','原值',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ColumnValue'

EXECUTE sp_addextendedproperty N'MS_Description','新值',N'user',N'dbo',N'table',N'OperationLog',N'column',N'NewColumnValue'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'OperationLog',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'OperationLog',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'OperationLog',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'OperationLog',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'OperationLog', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'OperationLog', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('SuppliersType'))
--创建供应商类型表
CREATE TABLE SuppliersType
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SupplierType varchar(36) not null,--供应商类型
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

EXECUTE sp_addextendedproperty N'MS_Description', '供应商类型', N'user', N'dbo', N'table', N'SuppliersType', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','编号',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','供应商类型',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'SupplierType'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'SuppliersType',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'SuppliersType', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'SuppliersType', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuppliersType', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO
if not exists(select * from sysobjects where id = object_id('Suppliers'))
--创建供应商表
CREATE TABLE Suppliers
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SupplierName varchar(100) not null,--供应商全称
	ShortName varchar(50) not null,--供应商简称
	SupplierTypeInnerID varchar(36) not null,--供应商类型关联编号
	FromBillNo varchar(36) null,--来源供应商类型编号
	PaymentMethod varchar(30) null,--付款方式
	Tenor varchar(10) null,--付款期限
	Corporate varchar(20) null,--法人
	Telephone varchar(25) null,--电话
	Fax varchar(25) null,--传真
	SupplierAddress varchar(500) not null,--供应商地址
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

EXECUTE sp_addextendedproperty N'MS_Description', '供应商', N'user', N'dbo', N'table', N'Suppliers', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'Suppliers',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','编号',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'Suppliers',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','供应商全称',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierName'

EXECUTE sp_addextendedproperty N'MS_Description','简称',N'user',N'dbo',N'table',N'Suppliers',N'column',N'ShortName'

EXECUTE sp_addextendedproperty N'MS_Description','供应商类型',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierTypeInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','来源供应商类型编号',N'user',N'dbo',N'table',N'Suppliers',N'column',N'FromBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','付款方式',N'user',N'dbo',N'table',N'Suppliers',N'column',N'PaymentMethod'

EXECUTE sp_addextendedproperty N'MS_Description','付款期限',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Tenor'

EXECUTE sp_addextendedproperty N'MS_Description','法人',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Corporate'

EXECUTE sp_addextendedproperty N'MS_Description','电话',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Telephone'

EXECUTE sp_addextendedproperty N'MS_Description','传真',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Fax'

EXECUTE sp_addextendedproperty N'MS_Description','地址',N'user',N'dbo',N'table',N'Suppliers',N'column',N'SupplierAddress'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'Suppliers',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'Suppliers',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'Suppliers',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'Suppliers',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Suppliers', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Suppliers', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('SupplierContact'))
--创建供应商联系人表
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

EXECUTE sp_addextendedproperty N'MS_Description', '供应商联系人', N'user', N'dbo', N'table', N'SupplierContact', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','序号',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','编号',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','供应商关联编号',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','来源单号',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','默认',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Def'

EXECUTE sp_addextendedproperty N'MS_Description','姓名',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Name'

EXECUTE sp_addextendedproperty N'MS_Description','电话',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'TelePhone'

EXECUTE sp_addextendedproperty N'MS_Description','手机',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'MobilePhone'

EXECUTE sp_addextendedproperty N'MS_Description','传真',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Fax'

EXECUTE sp_addextendedproperty N'MS_Description','QQ',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'QQ'

EXECUTE sp_addextendedproperty N'MS_Description','Skype',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Skype'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'SupplierContact',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'SupplierContact', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'SupplierContact', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplierContact', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Unit'))
--创建单位主表
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

EXECUTE sp_addextendedproperty N'MS_Description', '单位', N'user', N'dbo', N'table', N'Unit', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'Unit',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','编号',N'user',N'dbo',N'table',N'Unit',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'Unit',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'Unit',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','单位名称',N'user',N'dbo',N'table',N'Unit',N'column',N'UnitName'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'Unit',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'Unit',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'Unit',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'Unit',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'Unit',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'Unit',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Unit', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Unit', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Unit', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Subscribe'))
--创建申购单表
CREATE TABLE Subscribe
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,
	BillType varchar(36) not null,
	BillDate date not null,
	SuppliersInnerID varchar(36) not null,--供应商关联ID
	SuppliersBillNo varchar(36) not null,--供应商单据编号
	BuyerID varchar(36) not null,--采购员ID
	BuyerName varchar(50) not null,--采购员姓名
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

EXECUTE sp_addextendedproperty N'MS_Description', '申购单', N'user', N'dbo', N'table', N'Subscribe', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'Subscribe',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','单据编号',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','供应商关联编号',N'user',N'dbo',N'table',N'Subscribe',N'column',N'SuppliersInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','供应商单据编号',N'user',N'dbo',N'table',N'Subscribe',N'column',N'SuppliersBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','采购员编号',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BuyerID'

EXECUTE sp_addextendedproperty N'MS_Description','采购员姓名',N'user',N'dbo',N'table',N'Subscribe',N'column',N'BuyerName'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'Subscribe',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'Subscribe',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'Subscribe',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'Subscribe',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Subscribe', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Subscribe', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subscribe', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Product'))
--创建货号信息表
CREATE TABLE Product
(
	InnerID varchar(36) not null,
	BillNo varchar(36) not null,--货号
	BillType varchar(36) not null,
	BillDate date not null,
	ProductType varchar(36) null,--产品类别
	ProductName varchar(100) null,--品名
	CommodityDescription varchar(1000) null,--品名描述
	ProductColour varchar(50) null,--产品颜色
	PackagingSolution varchar(50) null,--包装方案
	ProductLength numeric(18,2) null,--产品长
	ProductWidth numeric(18,2) null,--产品宽
	ProductHigh numeric(18,2) null,--产品高
	PackingSizeUnit varchar(20) null,--尺寸单位
	Weight numeric(18,4) null,--净重
	GrossWeight numeric(18,4) null,--毛重
	Material varchar(100) null,--材质
	Brand varchar(100) null,--品牌
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

EXECUTE sp_addextendedproperty N'MS_Description', '货号信息', N'user', N'dbo', N'table', N'Product', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'Product',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','货号',N'user',N'dbo',N'table',N'Product',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'Product',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'Product',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','产品类别',N'user',N'dbo',N'table',N'Product',N'column',N'ProductType'

EXECUTE sp_addextendedproperty N'MS_Description','品名',N'user',N'dbo',N'table',N'Product',N'column',N'ProductName'

EXECUTE sp_addextendedproperty N'MS_Description','品名描述',N'user',N'dbo',N'table',N'Product',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','产品颜色',N'user',N'dbo',N'table',N'Product',N'column',N'ProductColour'

EXECUTE sp_addextendedproperty N'MS_Description','包装方案',N'user',N'dbo',N'table',N'Product',N'column',N'PackagingSolution'

EXECUTE sp_addextendedproperty N'MS_Description','产品长',N'user',N'dbo',N'table',N'Product',N'column',N'ProductLength'

EXECUTE sp_addextendedproperty N'MS_Description','产品宽',N'user',N'dbo',N'table',N'Product',N'column',N'ProductWidth'

EXECUTE sp_addextendedproperty N'MS_Description','产品高',N'user',N'dbo',N'table',N'Product',N'column',N'ProductHigh'

EXECUTE sp_addextendedproperty N'MS_Description','尺寸单位',N'user',N'dbo',N'table',N'Product',N'column',N'PackingSizeUnit'

EXECUTE sp_addextendedproperty N'MS_Description','净重',N'user',N'dbo',N'table',N'Product',N'column',N'Weight'

EXECUTE sp_addextendedproperty N'MS_Description','毛重',N'user',N'dbo',N'table',N'Product',N'column',N'GrossWeight'

EXECUTE sp_addextendedproperty N'MS_Description','材质',N'user',N'dbo',N'table',N'Product',N'column',N'Material'

EXECUTE sp_addextendedproperty N'MS_Description','品牌',N'user',N'dbo',N'table',N'Product',N'column',N'Brand'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'Product',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'Product',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'Product',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'Product',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'Product',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'Product',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'Product', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'Product', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('ProductChild'))
--子货号信息表
CREATE TABLE ProductChild
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	ChildProductName varchar(100) null,--品名
	CommodityDescription varchar(1000) null,--品名描述
	ProductColour varchar(50) null,--产品颜色
	PackagingSolution varchar(50) null,--包装方案
	ProductLength numeric(18,2) null,--产品长
	ProductWidth numeric(18,2) null,--产品宽
	ProductHigh numeric(18,2) null,--产品高
	PackingSizeUnit varchar(20) null,--尺寸单位
	Weight numeric(18,4) null,--净重
	GrossWeight numeric(18,4) null,--毛重
	Material varchar(100) null,--材质
	Brand varchar(100) null,--品牌
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

EXECUTE sp_addextendedproperty N'MS_Description', '子货号信息', N'user', N'dbo', N'table', N'ProductChild', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'ProductChild',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','序号',N'user',N'dbo',N'table',N'ProductChild',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','子货号',N'user',N'dbo',N'table',N'ProductChild',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','来源编号',N'user',N'dbo',N'table',N'ProductChild',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','来源单号',N'user',N'dbo',N'table',N'ProductChild',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','品名',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ChildProductName'

EXECUTE sp_addextendedproperty N'MS_Description','品名描述',N'user',N'dbo',N'table',N'ProductChild',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','产品颜色',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductColour'

EXECUTE sp_addextendedproperty N'MS_Description','包装方案',N'user',N'dbo',N'table',N'ProductChild',N'column',N'PackagingSolution'

EXECUTE sp_addextendedproperty N'MS_Description','产品长',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductLength'

EXECUTE sp_addextendedproperty N'MS_Description','产品宽',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductWidth'

EXECUTE sp_addextendedproperty N'MS_Description','产品高',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ProductHigh'

EXECUTE sp_addextendedproperty N'MS_Description','尺寸单位',N'user',N'dbo',N'table',N'ProductChild',N'column',N'PackingSizeUnit'

EXECUTE sp_addextendedproperty N'MS_Description','净重',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Weight'

EXECUTE sp_addextendedproperty N'MS_Description','毛重',N'user',N'dbo',N'table',N'ProductChild',N'column',N'GrossWeight'

EXECUTE sp_addextendedproperty N'MS_Description','材质',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Material'

EXECUTE sp_addextendedproperty N'MS_Description','品牌',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Brand'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'ProductChild',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'ProductChild',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'ProductChild',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'ProductChild',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'ProductChild', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'ProductChild', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductChild', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('PackagingSolutions'))
--包装方案
CREATE TABLE PackagingSolutions
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,--编号
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	SolutionName varchar(100) null,--包装方案
	DisplayBox varchar(100) null,--展示盒
	DisplayBoxLength numeric(18,2) null,--展示盒长
	DisplayBoxWidth numeric(18,2) null,--展示盒宽
	DisplayBoxHigh numeric(18,2) null,--展示盒高
	InnerBox varchar(100) null,--内盒
	InnerBoxLength numeric(18,2) null,--内盒长
	InnerBoxWidth numeric(18,2) null,--内盒宽
	InnerBoxHigh numeric(18,2) null,--内盒高
	InnerBoxCoefficient numeric(18,2) null,--内盒系数
	InnerBoxNumber int null,--内盒装数
	OuterBox varchar(100) null,--外箱
	OuterBoxLength numeric(18,2) null,--外箱长
	OuterBoxWidth numeric(18,2) null,--外箱宽
	OuterBoxHigh numeric(18,2) null,--外箱高
	OuterBoxCoefficient numeric(18,2) null,--外箱系数
	OuterBoxNumber int null,--外箱装数
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

EXECUTE sp_addextendedproperty N'MS_Description', '包装方案', N'user', N'dbo', N'table', N'PackagingSolutions', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','序号',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','编号',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','来源编号',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','来源单号',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','包装方案',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'SolutionName'

EXECUTE sp_addextendedproperty N'MS_Description','展示盒',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBox'

EXECUTE sp_addextendedproperty N'MS_Description','展示盒长',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','展示盒宽',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','展示盒高',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'DisplayBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','内盒',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBox'

EXECUTE sp_addextendedproperty N'MS_Description','内盒长',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','内盒宽',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','内盒高',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','内盒系数',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxCoefficient'

EXECUTE sp_addextendedproperty N'MS_Description','内盒装数',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'InnerBoxNumber'

EXECUTE sp_addextendedproperty N'MS_Description','外箱',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBox'

EXECUTE sp_addextendedproperty N'MS_Description','外箱长',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxLength'

EXECUTE sp_addextendedproperty N'MS_Description','外箱宽',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxWidth'

EXECUTE sp_addextendedproperty N'MS_Description','外箱高',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxHigh'

EXECUTE sp_addextendedproperty N'MS_Description','外箱系数',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxCoefficient'

EXECUTE sp_addextendedproperty N'MS_Description','外箱装数',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'OuterBoxNumber'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'PackagingSolutions',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'PackagingSolutions', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'PackagingSolutions', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PackagingSolutions', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('StockIn'))
--入库单
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

EXECUTE sp_addextendedproperty N'MS_Description', '入库单', N'user', N'dbo', N'table', N'StockIn', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'StockIn',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','入库单号',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单据类型',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillType'

EXECUTE sp_addextendedproperty N'MS_Description','单据日期',N'user',N'dbo',N'table',N'StockIn',N'column',N'BillDate'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'StockIn',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'StockIn',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'StockIn',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'StockIn',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'StockIn',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'StockIn',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'StockIn', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'StockIn', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('StockInDetail'))
--入库单明细
CREATE TABLE StockInDetail
(
	InnerID varchar(36) not null,
	RowID int not null,
	BillNo varchar(36) not null,
	MasterInnerID varchar(36) not null,
	MasterBillNo varchar(36) not null,
	ProductInnerID varchar(36) not null,--产品编号
	ProductBillNo varchar(36) not null,--货号
	Picture varchar(1000) null,--图片
	ProductName varchar(100) null,--品名
	CommodityDescription varchar(1000) null,--品名描述
	Color varchar(100) null,--颜色
	ShoeSize int null,--配码
	SizeNum int null,--配码数量
	QTY int null,--每箱数量
	CTNS int null,--箱数
	Total int null,--总数量
	UnitInnerID varchar(36) null,--单位编号
	UnitBillNo varchar(36) null,--单位单号
	Price decimal null,--单价
	Amount decimal null,--金额
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

EXECUTE sp_addextendedproperty N'MS_Description', '入库单明细', N'user', N'dbo', N'table', N'StockInDetail', NULL, NULL

EXECUTE sp_addextendedproperty N'MS_Description','关联编号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'InnerID'

EXECUTE sp_addextendedproperty N'MS_Description','序号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'RowID'

EXECUTE sp_addextendedproperty N'MS_Description','入库单序号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'BillNo'

EXECUTE sp_addextendedproperty N'MS_Description','来源编号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'MasterInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','来源单号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'MasterBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','产品编号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','货号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','图片',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Picture'

EXECUTE sp_addextendedproperty N'MS_Description','品名',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ProductName'

EXECUTE sp_addextendedproperty N'MS_Description','品名描述',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CommodityDescription'

EXECUTE sp_addextendedproperty N'MS_Description','颜色',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Color'

EXECUTE sp_addextendedproperty N'MS_Description','配码',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ShoeSize'

EXECUTE sp_addextendedproperty N'MS_Description','配码数量',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'SizeNum'

EXECUTE sp_addextendedproperty N'MS_Description','每箱数量',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'QTY'

EXECUTE sp_addextendedproperty N'MS_Description','箱数',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CTNS'

EXECUTE sp_addextendedproperty N'MS_Description','总数量',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Total'

EXECUTE sp_addextendedproperty N'MS_Description','单位编号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'UnitInnerID'

EXECUTE sp_addextendedproperty N'MS_Description','单位单号',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'UnitBillNo'

EXECUTE sp_addextendedproperty N'MS_Description','单价',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Price'

EXECUTE sp_addextendedproperty N'MS_Description','金额',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Amount'

EXECUTE sp_addextendedproperty N'MS_Description','状态',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'State'

EXECUTE sp_addextendedproperty N'MS_Description','备注',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Remark'

EXECUTE sp_addextendedproperty N'MS_Description','创建人',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Creater'

EXECUTE sp_addextendedproperty N'MS_Description','创建日期',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'CreateDate'

EXECUTE sp_addextendedproperty N'MS_Description','修改人',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'Modifier'

EXECUTE sp_addextendedproperty N'MS_Description','修改日期',N'user',N'dbo',N'table',N'StockInDetail',N'column',N'ModifiedDate'

EXECUTE sp_addextendedproperty N'MS_Description', '审核人', N'user', N'dbo', N'table', N'StockInDetail', N'column', N'Auditor'

EXECUTE sp_addextendedproperty N'MS_Description', '审核日期', N'user', N'dbo', N'table', N'StockInDetail', N'column', N'AuditDate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockInDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Colors'))
--颜色
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Process'))
--工序
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Process'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Process', @level2type=N'COLUMN',@level2name=N'InvalidState'

GO

if not exists(select * from sysobjects where id = object_id('Customer'))
--客户
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=null,@level2name=null
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Short'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Contact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('Invoice'))
--发票
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票', @level0type=N'user', @level0name=N'dbo', @level1type=N'table', @level1name=N'Invoice', @level2type=NULL, @level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('InvoiceDetail'))
--发票明细
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=NULL,@level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个/斤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvoiceDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrder'))
--发货单
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货单', @level0type=N'user', @level0name=N'dbo', @level1type=N'table', @level1name=N'ShipOrder', @level2type=NULL, @level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'BillDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源单关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrder', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO

if not exists(select * from sysobjects where id = object_id('ShipOrderDetail'))
--发货明细
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=NULL,@level2name=NULL
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'RowID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货单序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'BillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Deseription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ColorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ReceivingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ShippingQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取样数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleQTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取样重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'SampleWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个/斤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'APerKilogram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ProcessID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货单关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'MasterBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源单关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromInnerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'FromBillNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Creater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Modifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'DateObsolete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'AuditorState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipOrderDetail', @level2type=N'COLUMN',@level2name=N'InvalidState'
GO

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