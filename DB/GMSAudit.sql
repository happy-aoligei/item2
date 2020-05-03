/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSAudit
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:34:58
*/


-- ----------------------------
-- Table structure for Scrap
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Scrap]') AND type IN ('U'))
	DROP TABLE [dbo].[Scrap]
GO

CREATE TABLE [dbo].[Scrap] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [Servicelife] float(53)  NULL,
  [Reason] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [AuditState] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [ApplicantID] int  NULL,
  [Auditor1] int  NULL,
  [Auditor2] int  NULL,
  [ID] int  IDENTITY(1,1) NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Scrap] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'使用寿命',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'Servicelife'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报废原因',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'Reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审核状态（待审核、初审通过、初审不通过、终审通过、终审不通过）',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'AuditState'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请夹具报废的人的职工编号,提交报废申请的高级用户Operator2的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'ApplicantID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'初审的监管员Supervisor的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'Auditor1'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终审的Workcell经理Manager的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'Auditor2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'GMS表格呈现必须',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'GMS表格呈现必须',
'SCHEMA', N'dbo',
'TABLE', N'Scrap',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报废申请表',
'SCHEMA', N'dbo',
'TABLE', N'Scrap'
GO


-- ----------------------------
-- Records of Scrap
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Scrap] ON
GO

SET IDENTITY_INSERT [dbo].[Scrap] OFF
GO


-- ----------------------------
-- Table structure for Warehouse
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Warehouse]') AND type IN ('U'))
	DROP TABLE [dbo].[Warehouse]
GO

CREATE TABLE [dbo].[Warehouse] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [buyoff] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Owner] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Family] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Model] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [AuditState] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark1] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark2] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Operator2] int  NULL,
  [Supervisor] int  NULL,
  [Manager] int  NULL,
  [Location] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [bin] int  NULL,
  [ID] int  IDENTITY(1,1) NOT NULL,
  [CreateTime] datetime2(7)  NOT NULL,
  [jbuyoff] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Warehouse] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收编号',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'buyoff'
GO

EXEC sp_addextendedproperty
'MS_Description', N'责任人的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Owner'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审核状态（可选项：未审核、初审通过、初审不通过、终审通过、终审不通过）',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'AuditState'
GO

EXEC sp_addextendedproperty
'MS_Description', N'初审备注',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Remark1'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终审备注',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Remark2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请入库人',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Operator2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库初审人',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Supervisor'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库终审人',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Manager'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'Location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'bin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具的接收日期',
'SCHEMA', N'dbo',
'TABLE', N'Warehouse',
'COLUMN', N'jbuyoff'
GO


-- ----------------------------
-- Records of Warehouse
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Warehouse] ON
GO

INSERT INTO [dbo].[Warehouse] ([Code], [SeqID], [buyoff], [Owner], [Family], [Model], [AuditState], [Remark1], [Remark2], [Operator2], [Supervisor], [Manager], [Location], [bin], [ID], [CreateTime], [jbuyoff]) VALUES (N'1', N'1', N'001', NULL, NULL, NULL, N'初审通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'2001-01-01 00:00:00.0000000', N'2001-01-01 00:00:00.0000000')
GO

INSERT INTO [dbo].[Warehouse] ([Code], [SeqID], [buyoff], [Owner], [Family], [Model], [AuditState], [Remark1], [Remark2], [Operator2], [Supervisor], [Manager], [Location], [bin], [ID], [CreateTime], [jbuyoff]) VALUES (N'1111', N'1', N'002', N'YXQ', NULL, NULL, N'终审不通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'0001-01-01 00:00:00.0000000', N'2020-04-30 17:03:51.6897205')
GO

INSERT INTO [dbo].[Warehouse] ([Code], [SeqID], [buyoff], [Owner], [Family], [Model], [AuditState], [Remark1], [Remark2], [Operator2], [Supervisor], [Manager], [Location], [bin], [ID], [CreateTime], [jbuyoff]) VALUES (N'EF224', N'0', N'003', N'LPY2', NULL, NULL, N'终审通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'0001-01-01 00:00:00.0000000', N'0001-01-01 00:00:00.0000000')
GO

INSERT INTO [dbo].[Warehouse] ([Code], [SeqID], [buyoff], [Owner], [Family], [Model], [AuditState], [Remark1], [Remark2], [Operator2], [Supervisor], [Manager], [Location], [bin], [ID], [CreateTime], [jbuyoff]) VALUES (N'EF2241', N'0', N'004', N'YXQ', NULL, NULL, N'初审不通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4', N'0001-01-01 00:00:00.0000000', N'2020-04-30 17:25:05.1422850')
GO

INSERT INTO [dbo].[Warehouse] ([Code], [SeqID], [buyoff], [Owner], [Family], [Model], [AuditState], [Remark1], [Remark2], [Operator2], [Supervisor], [Manager], [Location], [bin], [ID], [CreateTime], [jbuyoff]) VALUES (N'EF2241', N'2', N'005', N'LPY', NULL, NULL, N'终审通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'19', N'0001-01-01 00:00:00.0000000', N'2020-04-30 17:37:36.4826297')
GO

SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO


-- ----------------------------
-- Auto increment value for Scrap
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Scrap]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Scrap
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Code_UNIQUE]
ON [dbo].[Scrap] (
  [Code] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [SeqID_UNIQUE]
ON [dbo].[Scrap] (
  [SeqID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Applicant_idx]
ON [dbo].[Scrap] (
  [ApplicantID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Auditor1_idx]
ON [dbo].[Scrap] (
  [Auditor1] ASC
)
GO

CREATE NONCLUSTERED INDEX [Auditor2_idx]
ON [dbo].[Scrap] (
  [Auditor2] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Scrap
-- ----------------------------
ALTER TABLE [dbo].[Scrap] ADD CONSTRAINT [PK__tongs_sc__C5F3D1BE4BAC3F29] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Warehouse
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Warehouse]', RESEED, 19)
GO


-- ----------------------------
-- Indexes structure for table Warehouse
-- ----------------------------
CREATE NONCLUSTERED INDEX [bin2_idx]
ON [dbo].[Warehouse] (
  [Location] ASC,
  [bin] ASC
)
GO

CREATE NONCLUSTERED INDEX [Supervisor_idx]
ON [dbo].[Warehouse] (
  [Supervisor] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator2_idx]
ON [dbo].[Warehouse] (
  [Operator2] ASC
)
GO

CREATE NONCLUSTERED INDEX [Manager_idx]
ON [dbo].[Warehouse] (
  [Manager] ASC
)
GO

CREATE NONCLUSTERED INDEX [Supervisor-1_idx]
ON [dbo].[Warehouse] (
  [Supervisor] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator2-1_idx]
ON [dbo].[Warehouse] (
  [Operator2] ASC
)
GO

CREATE NONCLUSTERED INDEX [Manager-1_idx]
ON [dbo].[Warehouse] (
  [Manager] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Warehouse
-- ----------------------------
ALTER TABLE [dbo].[Warehouse] ADD CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

