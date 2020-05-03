/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSToolManage
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:33:30
*/


-- ----------------------------
-- Table structure for attachments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[attachments]') AND type IN ('U'))
	DROP TABLE [dbo].[attachments]
GO

CREATE TABLE [dbo].[attachments] (
  [AttachmentID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Content] nvarchar(650) COLLATE Chinese_PRC_CI_AS  NULL,
  [ESRID] int  NULL
)
GO

ALTER TABLE [dbo].[attachments] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件的编号',
'SCHEMA', N'dbo',
'TABLE', N'attachments',
'COLUMN', N'AttachmentID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件名称',
'SCHEMA', N'dbo',
'TABLE', N'attachments',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件内容',
'SCHEMA', N'dbo',
'TABLE', N'attachments',
'COLUMN', N'Content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发邮件的编号',
'SCHEMA', N'dbo',
'TABLE', N'attachments',
'COLUMN', N'ESRID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件附件',
'SCHEMA', N'dbo',
'TABLE', N'attachments'
GO


-- ----------------------------
-- Records of attachments
-- ----------------------------

-- ----------------------------
-- Table structure for authorization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[authorization]') AND type IN ('U'))
	DROP TABLE [dbo].[authorization]
GO

CREATE TABLE [dbo].[authorization] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[authorization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of authorization
-- ----------------------------
INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'1', N'OperatorI')
GO

INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'2', N'OperatorII')
GO

INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'3', N'Supervisor')
GO

INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'4', N'Manager')
GO

INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'5', N'Admin')
GO

INSERT INTO [dbo].[authorization] ([ID], [Name]) VALUES (N'6', N'system')
GO


-- ----------------------------
-- Table structure for emails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[emails]') AND type IN ('U'))
	DROP TABLE [dbo].[emails]
GO

CREATE TABLE [dbo].[emails] (
  [EmailID] int  NOT NULL,
  [Title] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Content] nvarchar(245) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[emails] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件编号',
'SCHEMA', N'dbo',
'TABLE', N'emails',
'COLUMN', N'EmailID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'emails',
'COLUMN', N'Title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'emails',
'COLUMN', N'Content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件',
'SCHEMA', N'dbo',
'TABLE', N'emails'
GO


-- ----------------------------
-- Records of emails
-- ----------------------------

-- ----------------------------
-- Table structure for employees
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[employees]') AND type IN ('U'))
	DROP TABLE [dbo].[employees]
GO

CREATE TABLE [dbo].[employees] (
  [EmpID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [PhoneNo] nvarchar(11) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] date  NULL
)
GO

ALTER TABLE [dbo].[employees] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'xx公司-xx部门-xxx员工编号',
'SCHEMA', N'dbo',
'TABLE', N'employees',
'COLUMN', N'EmpID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'employees',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'employees',
'COLUMN', N'Sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话号码',
'SCHEMA', N'dbo',
'TABLE', N'employees',
'COLUMN', N'PhoneNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出生日期',
'SCHEMA', N'dbo',
'TABLE', N'employees',
'COLUMN', N'Birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职工',
'SCHEMA', N'dbo',
'TABLE', N'employees'
GO


-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1207001', N'邓武', N'女', N'15895259379', N'1994-11-24')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1207002', N'王锋', N'男', N'15152048082', N'1991-05-03')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1207003', N'杨恺', N'男', N'13905226080', N'1996-05-18')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1207004', N'王益', N'女', N'13905222902', N'1995-04-04')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1207005', N'刘明', N'男', N'13905222070', N'1990-01-01')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1212001', N'李哲', N'男', N'15895257629', N'1996-08-16')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1212002', N'王平', N'男', N'15152043093', N'1988-11-06')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1212003', N'刘韬', N'男', N'15152046201', N'1991-07-20')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1212004', N'王杰', N'男', N'15895258086', N'1993-07-04')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1212005', N'张恒', N'男', N'13905225310', N'1988-01-21')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236001', N'李成', N'男', N'15895254060', N'1988-05-07')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236002', N'张杉', N'男', N'15152046805', N'1992-09-16')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236003', N'李清', N'男', N'15895258669', N'1995-12-19')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236004', N'张易', N'男', N'15152047467', N'1989-11-01')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236005', N'刘忠', N'男', N'13905225730', N'1996-06-30')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236006', N'邓贵', N'女', N'13905224373', N'1990-04-15')
GO

INSERT INTO [dbo].[employees] ([EmpID], [Name], [Sex], [PhoneNo], [Birthday]) VALUES (N'1236007', N'张黎', N'男', N'13905221866', N'1991-05-24')
GO


-- ----------------------------
-- Table structure for in
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[in]') AND type IN ('U'))
	DROP TABLE [dbo].[in]
GO

CREATE TABLE [dbo].[in] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [ProductID] int  NULL,
  [LineID] int  NULL,
  [ShiftTime] int  NULL,
  [WarehousingDate] datetime2(0)  NULL,
  [BufferZone] nvarchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [BufferZDate] datetime2(0)  NULL,
  [Location] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Bin] int  NULL,
  [Handler1ID] int  NULL,
  [Recorder1ID] int  NULL,
  [Handler2ID] int  NULL,
  [Recorder2ID] int  NULL
)
GO

ALTER TABLE [dbo].[in] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产的产品编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'ProductID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'LineID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'班次（白班0、中班1、夜班2）    决定于归还人的操作时间    白班：6：00-14：00   中班：14：00-22：00   夜班：22：00-次日6：00',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'ShiftTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库日期',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'WarehousingDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否进缓冲区（是、否）',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'BufferZone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入缓冲区日期',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'BufferZDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库库位',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库库位',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Bin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'经手人1的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Handler1ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录人1的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Recorder1ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'经手人2的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Handler2ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录人2的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'in',
'COLUMN', N'Recorder2ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库信息表',
'SCHEMA', N'dbo',
'TABLE', N'in'
GO


-- ----------------------------
-- Records of in
-- ----------------------------
INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF0789', N'1', N'18', N'5', N'0', N'2019-10-25 10:26:58', N'否', NULL, N'3-A2', N'5', N'1212003', N'1212004', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF0798', N'1', N'17', N'16', N'0', N'2019-09-01 08:39:17', N'否', NULL, N'2-A2', N'3', N'1236006', N'1236005', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2184', N'1', N'21', N'24', N'2', N'2019-09-15 04:21:12', N'否', NULL, N'1-B4', N'3', N'1207005', N'1207005', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2185', N'1', N'24', N'26', N'0', N'2019-08-14 07:02:20', N'是', N'2019-08-16 23:12:06', N'1-A2', N'3', N'1236005', N'1236003', N'1236002', N'1236002')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2186', N'1', N'28', N'15', N'1', N'2019-09-25 15:33:53', N'是', N'2019-09-28 16:14:15', N'3-A3', N'3', N'1212004', N'1212002', N'1207003', N'1207003')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2187', N'1', N'20', N'9', N'0', N'2019-10-10 06:17:39', N'是', N'2019-10-15 09:09:49', N'1-B1', N'8', N'1236006', N'1236003', N'1236002', N'1236002')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2188', N'1', N'24', N'26', N'0', N'2019-09-10 07:26:19', N'是', N'2019-09-11 20:34:19', N'3-A2', N'6', N'1212003', N'1212003', N'1207003', N'1207003')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2189', N'1', N'13', N'19', N'1', N'2019-09-23 21:04:40', N'否', NULL, N'5-A3', N'1', N'1236007', N'1212002', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2190', N'1', N'22', N'25', N'2', N'2019-08-26 00:19:36', N'是', N'2019-08-30 04:23:16', N'5-B2', N'6', N'1212004', N'1236002', N'1236002', N'1236002')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2191', N'1', N'20', N'9', N'0', N'2019-08-15 10:35:41', N'否', NULL, N'4-B2', N'2', N'1212004', N'1236004', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2192', N'1', N'25', N'21', N'1', N'2019-10-11 17:37:55', N'否', NULL, N'4-B3', N'3', N'1207005', N'1236004', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2203', N'3', N'15', N'20', N'1', N'2019-10-02 21:17:50', N'否', NULL, N'4-A1', N'4', N'1207005', N'1212004', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2207', N'1', N'12', N'3', N'0', N'2019-09-10 13:50:32', N'是', N'2019-09-11 18:00:53', N'4-C4', N'7', N'1236006', N'1236002', N'1236004', N'1236004')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2208', N'1', N'27', N'14', N'2', N'2019-08-09 22:48:15', N'是', N'2019-08-11 02:55:20', N'4-A3', N'10', N'1236005', N'1236002', N'1212002', N'1212002')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2209', N'1', N'28', N'15', N'0', N'2019-10-17 06:34:05', N'否', NULL, N'1-B4', N'2', N'1207005', N'1236003', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2210', N'1', N'10', N'8', N'2', N'2019-10-14 05:32:09', N'否', NULL, N'4-C2', N'10', N'1207004', N'1236007', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2234', N'1', N'15', N'20', N'0', N'2019-08-05 09:34:40', N'是', N'2019-08-05 13:05:51', N'4-C2', N'5', N'1236006', N'1212003', N'1212002', N'1212002')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2235', N'1', N'17', N'16', N'1', N'2019-10-11 21:12:25', N'是', N'2019-10-14 04:34:25', N'4-C3', N'9', N'1212005', N'1236004', N'1207003', N'1207003')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2236', N'1', N'12', N'3', N'0', N'2019-09-12 09:41:23', N'是', N'2019-09-17 16:29:37', N'4-B3', N'8', N'1236007', N'1236007', N'1236004', N'1236004')
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2237', N'1', N'19', N'6', N'1', N'2019-10-01 14:53:43', N'否', NULL, N'5-C4', N'5', N'1236006', N'1236003', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2238', N'1', N'28', N'15', N'2', N'2019-10-17 01:34:40', N'否', NULL, N'5-A4', N'10', N'1212004', N'1212002', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2239', N'1', N'13', N'19', N'0', N'2019-10-15 10:34:38', N'否', NULL, N'2-A2', N'8', N'1236007', N'1236003', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2240', N'1', N'12', N'3', N'1', N'2019-09-13 18:34:34', N'否', NULL, N'1-B2', N'2', N'1236007', N'1207005', NULL, NULL)
GO

INSERT INTO [dbo].[in] ([Code], [SeqID], [ProductID], [LineID], [ShiftTime], [WarehousingDate], [BufferZone], [BufferZDate], [Location], [Bin], [Handler1ID], [Recorder1ID], [Handler2ID], [Recorder2ID]) VALUES (N'EF2241', N'1', N'10', N'8', N'1', N'2019-08-02 19:56:16', N'否', NULL, N'4-A2', N'10', N'1236006', N'1236005', NULL, NULL)
GO


-- ----------------------------
-- Table structure for location
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[location]') AND type IN ('U'))
	DROP TABLE [dbo].[location]
GO

CREATE TABLE [dbo].[location] (
  [Location] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Bin] int  NOT NULL,
  [State] int  NULL
)
GO

ALTER TABLE [dbo].[location] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'3', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-A4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'8', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'2', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'2', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'3', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-B4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'1-C4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'3', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'8', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-A4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-B4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'2-C4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'5', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'6', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'3', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-A4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-B4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'3-C4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'4', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A2', N'10', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A3', N'10', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-A4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'2', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'3', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'8', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-B4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'5', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C2', N'10', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'9', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'7', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'4-C4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'1', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-A4', N'10', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'6', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-B4', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C1', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C2', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'5', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C3', N'10', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'1', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'2', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'3', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'4', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'5', N'1')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'6', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'7', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'8', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'9', N'0')
GO

INSERT INTO [dbo].[location] ([Location], [Bin], [State]) VALUES (N'5-C4', N'10', N'0')
GO


-- ----------------------------
-- Table structure for maintenance_record
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[maintenance_record]') AND type IN ('U'))
	DROP TABLE [dbo].[maintenance_record]
GO

CREATE TABLE [dbo].[maintenance_record] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [ErrDescription] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [ErrPhoto] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [ApplicantID] int  NULL,
  [Operator2ID] int  NULL,
  [MaintainState] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [MaintainDate] date  NULL,
  [SupervisorID] int  NULL
)
GO

ALTER TABLE [dbo].[maintenance_record] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'故障描述',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'ErrDescription'
GO

EXEC sp_addextendedproperty
'MS_Description', N'故障照片',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'ErrPhoto'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请维修的人的职工编号(提交维修申请的Operator1的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'ApplicantID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理维修申请并将夹具送去维修的Operator2高级用户的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'Operator2ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维修状态（可选项：待维修、维修中、维修完成）',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'MaintainState'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维修时间',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'MaintainDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接到“维修完成”消息并修改夹具的“维修状态”的信息的Supervisor的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record',
'COLUMN', N'SupervisorID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维修记录表',
'SCHEMA', N'dbo',
'TABLE', N'maintenance_record'
GO


-- ----------------------------
-- Records of maintenance_record
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manager]') AND type IN ('U'))
	DROP TABLE [dbo].[manager]
GO

CREATE TABLE [dbo].[manager] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[manager] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO [dbo].[manager] ([ID], [Name]) VALUES (N'1207001', N'邓武')
GO


-- ----------------------------
-- Table structure for operator
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[operator]') AND type IN ('U'))
	DROP TABLE [dbo].[operator]
GO

CREATE TABLE [dbo].[operator] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[operator] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1207003', N'杨恺')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1207004', N'王益')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1207005', N'刘明')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1212002', N'王平')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1212003', N'刘韬')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1212004', N'王杰')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1212005', N'张恒')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236002', N'张杉')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236003', N'李清')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236004', N'张易')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236005', N'刘忠')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236006', N'邓贵')
GO

INSERT INTO [dbo].[operator] ([ID], [Name]) VALUES (N'1236007', N'张黎')
GO


-- ----------------------------
-- Table structure for operator1
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[operator1]') AND type IN ('U'))
	DROP TABLE [dbo].[operator1]
GO

CREATE TABLE [dbo].[operator1] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[operator1] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of operator1
-- ----------------------------
INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1207004', N'王益')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1207005', N'刘明')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1212003', N'刘韬')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1212004', N'王杰')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1212005', N'张恒')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1236005', N'刘忠')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1236006', N'邓贵')
GO

INSERT INTO [dbo].[operator1] ([ID], [Name]) VALUES (N'1236007', N'张黎')
GO


-- ----------------------------
-- Table structure for operator2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[operator2]') AND type IN ('U'))
	DROP TABLE [dbo].[operator2]
GO

CREATE TABLE [dbo].[operator2] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[operator2] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of operator2
-- ----------------------------
INSERT INTO [dbo].[operator2] ([ID], [Name]) VALUES (N'1207003', N'杨恺')
GO

INSERT INTO [dbo].[operator2] ([ID], [Name]) VALUES (N'1212002', N'王平')
GO

INSERT INTO [dbo].[operator2] ([ID], [Name]) VALUES (N'1236002', N'张杉')
GO

INSERT INTO [dbo].[operator2] ([ID], [Name]) VALUES (N'1236003', N'李清')
GO

INSERT INTO [dbo].[operator2] ([ID], [Name]) VALUES (N'1236004', N'张易')
GO


-- ----------------------------
-- Table structure for outstorage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[outstorage]') AND type IN ('U'))
	DROP TABLE [dbo].[outstorage]
GO

CREATE TABLE [dbo].[outstorage] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [Location] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Bin] int  NULL,
  [GoWhere] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [LineID] int  NULL,
  [ProductID] int  NULL,
  [OutstorageDate] datetime2(0)  NULL,
  [HandlerID] int  NULL,
  [RecorderID] int  NULL,
  [ShiftTime] int  NULL,
  [Remark] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[outstorage] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库的库位(柜子编号)',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'Location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库的库位(格子编号)',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'Bin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具去向（送去维保/生产线）',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'GoWhere'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线编号',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'LineID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产的产品编号',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'ProductID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库操作执行时间',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'OutstorageDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'经手人的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'HandlerID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'如果去仓库取夹具的人是使用系统的Operator1，则此时的记录人是Operator1的职工编号，此时的经手人也即记录人；若去仓库取夹具的人是不使用系统的生产线的产线员工，则此时的记录人便是仓管员Operator2的职工编号，经手人即产线员工，经手人的职工编号需要仓管员手动录入或刷信息卡录入',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'RecorderID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'班次（白班0、中班1、夜班2）    决定于归还人的操作时间    白班：6：00-14：00   中班：14：00-22：00   夜班：22：00-次日6：00',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'ShiftTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'outstorage',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库信息表',
'SCHEMA', N'dbo',
'TABLE', N'outstorage'
GO


-- ----------------------------
-- Records of outstorage
-- ----------------------------
INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF0789', N'1', N'3-A2', N'5', N'生产线', N'5', N'18', N'2019-10-12 01:16:13', N'1236005', N'1236005', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF0798', N'1', N'2-A2', N'3', N'生产线', N'16', N'17', N'2019-08-28 05:54:53', N'1212005', N'1207003', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2184', N'1', N'1-B4', N'3', N'生产线', N'24', N'21', N'2019-09-02 06:13:24', N'1236007', N'1236007', N'0', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2185', N'1', N'1-A2', N'3', N'生产线', N'26', N'24', N'2019-08-02 20:16:46', N'1236007', N'1236007', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2186', N'1', N'3-A3', N'3', N'生产线', N'15', N'28', N'2019-09-17 11:35:24', N'1207005', N'1207005', N'0', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2187', N'1', N'1-B1', N'8', N'生产线', N'9', N'20', N'2019-10-03 03:05:06', N'1236005', N'1236002', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2188', N'1', N'3-A2', N'6', N'生产线', N'26', N'24', N'2019-09-08 00:44:35', N'1212005', N'1236003', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2189', N'1', N'5-A3', N'1', N'生产线', N'19', N'13', N'2019-09-13 23:25:06', N'1236006', N'1236006', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2190', N'1', N'5-B2', N'6', N'生产线', N'25', N'22', N'2019-08-11 01:23:49', N'1212004', N'1212004', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2191', N'1', N'4-B2', N'2', N'生产线', N'9', N'20', N'2019-08-11 14:04:44', N'1212004', N'1212004', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2192', N'1', N'4-B3', N'3', N'生产线', N'21', N'25', N'2019-10-05 21:27:37', N'1236005', N'1236005', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2203', N'3', N'4-A1', N'4', N'生产线', N'20', N'15', N'2019-10-02 16:08:54', N'1212003', N'1212003', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2207', N'1', N'4-C4', N'7', N'生产线', N'3', N'12', N'2019-09-04 16:29:21', N'1212005', N'1212005', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2208', N'1', N'4-A3', N'10', N'生产线', N'14', N'27', N'2019-07-28 07:12:03', N'1236005', N'1236005', N'0', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2209', N'1', N'1-B4', N'2', N'生产线', N'15', N'28', N'2019-10-13 21:16:45', N'1236006', N'1236006', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2210', N'1', N'4-C2', N'10', N'生产线', N'8', N'10', N'2019-10-02 01:10:55', N'1212004', N'1212002', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2234', N'1', N'4-C2', N'5', N'生产线', N'20', N'15', N'2019-08-03 07:32:51', N'1207004', N'1236002', N'0', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2235', N'1', N'4-C3', N'9', N'生产线', N'16', N'17', N'2019-10-09 23:55:44', N'1236005', N'1236005', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2236', N'1', N'4-B3', N'8', N'生产线', N'3', N'12', N'2019-09-03 04:48:22', N'1236007', N'1236007', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2237', N'1', N'5-C4', N'5', N'生产线', N'6', N'19', N'2019-09-25 18:48:54', N'1212005', N'1236004', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2238', N'1', N'5-A4', N'10', N'生产线', N'15', N'28', N'2019-10-02 20:12:29', N'1212005', N'1236002', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2239', N'1', N'2-A2', N'8', N'生产线', N'19', N'13', N'2019-10-02 22:23:14', N'1212004', N'1236002', N'2', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2240', N'1', N'1-B2', N'2', N'生产线', N'3', N'12', N'2019-09-06 21:20:02', N'1207004', N'1236003', N'1', N'无')
GO

INSERT INTO [dbo].[outstorage] ([Code], [SeqID], [Location], [Bin], [GoWhere], [LineID], [ProductID], [OutstorageDate], [HandlerID], [RecorderID], [ShiftTime], [Remark]) VALUES (N'EF2241', N'1', N'4-A2', N'10', N'生产线', N'8', N'10', N'2019-07-19 15:54:40', N'1207004', N'1207004', N'1', N'无')
GO


-- ----------------------------
-- Table structure for production_line
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[production_line]') AND type IN ('U'))
	DROP TABLE [dbo].[production_line]
GO

CREATE TABLE [dbo].[production_line] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[production_line] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线编号',
'SCHEMA', N'dbo',
'TABLE', N'production_line',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线名称',
'SCHEMA', N'dbo',
'TABLE', N'production_line',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线列表',
'SCHEMA', N'dbo',
'TABLE', N'production_line'
GO


-- ----------------------------
-- Records of production_line
-- ----------------------------
INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'1', N'BLKA10-L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'2', N'BLKA13_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'3', N'BLKA14_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'4', N'BLKA15-L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'5', N'BLKA15_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'6', N'BLKA15_L3')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'7', N'BLKA15_L4')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'8', N'BLKA16_2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'9', N'BLKA16_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'10', N'BLKA18_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'11', N'BLKC01_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'12', N'BLKC01_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'13', N'BLKC03_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'14', N'BLKC05_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'15', N'BLKC06_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'16', N'BLKC06_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'17', N'BLKC07_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'18', N'BLKC07_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'19', N'BLKC21_L1')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'20', N'BLKC21_L2')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'21', N'BLKC21_L3')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'22', N'BLKA09')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'23', N'MSUP')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'24', N'SAU')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'25', N'SCU')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'26', N'Super   line')
GO

INSERT INTO [dbo].[production_line] ([ID], [Name]) VALUES (N'27', N'SXU 0501')
GO


-- ----------------------------
-- Table structure for send_emails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[send_emails]') AND type IN ('U'))
	DROP TABLE [dbo].[send_emails]
GO

CREATE TABLE [dbo].[send_emails] (
  [ESRID] int  NOT NULL,
  [ReceiveTime] datetime2(0)  NOT NULL,
  [IsReaded] nvarchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [EmailID] int  NULL,
  [sender] int  NULL,
  [recipient] int  NULL
)
GO

ALTER TABLE [dbo].[send_emails] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'发邮件的编号',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'ESRID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收时间',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'ReceiveTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'已读（是/否）',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'IsReaded'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮件编号',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'EmailID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发件人',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'sender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'收件人',
'SCHEMA', N'dbo',
'TABLE', N'send_emails',
'COLUMN', N'recipient'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发邮件',
'SCHEMA', N'dbo',
'TABLE', N'send_emails'
GO


-- ----------------------------
-- Records of send_emails
-- ----------------------------

-- ----------------------------
-- Table structure for supervisor
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[supervisor]') AND type IN ('U'))
	DROP TABLE [dbo].[supervisor]
GO

CREATE TABLE [dbo].[supervisor] (
  [ID] int  NOT NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[supervisor] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of supervisor
-- ----------------------------
INSERT INTO [dbo].[supervisor] ([ID], [Name]) VALUES (N'1207002', N'王锋')
GO

INSERT INTO [dbo].[supervisor] ([ID], [Name]) VALUES (N'1212001', N'李哲')
GO

INSERT INTO [dbo].[supervisor] ([ID], [Name]) VALUES (N'1236001', N'李成')
GO


-- ----------------------------
-- Table structure for system_email_account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[system_email_account]') AND type IN ('U'))
	DROP TABLE [dbo].[system_email_account]
GO

CREATE TABLE [dbo].[system_email_account] (
  [SystemID] int  NOT NULL,
  [Password] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[system_email_account] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统邮箱的邮箱账号（用户名）',
'SCHEMA', N'dbo',
'TABLE', N'system_email_account',
'COLUMN', N'SystemID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统账户的登录密码',
'SCHEMA', N'dbo',
'TABLE', N'system_email_account',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统邮箱',
'SCHEMA', N'dbo',
'TABLE', N'system_email_account'
GO


-- ----------------------------
-- Records of system_email_account
-- ----------------------------

-- ----------------------------
-- Table structure for tongs_definition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tongs_definition]') AND type IN ('U'))
	DROP TABLE [dbo].[tongs_definition]
GO

CREATE TABLE [dbo].[tongs_definition] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [WorkcellID] int  NULL,
  [Workcell] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [FamilyID] int  NULL,
  [Family] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Model] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [PartNo] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [UsedFor] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPL] int  NULL,
  [Owner] int  NULL,
  [OwnerName] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [PMPeriod] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [PMType] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [RecOn] datetime2(0)  NULL,
  [RecBy] int  NULL,
  [RecByName] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [EditOn] datetime2(0)  NULL,
  [EditBy] int  NULL,
  [EditByName] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tongs_definition] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作间编号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'WorkcellID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作间名称',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Workcell'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的Family编号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'FamilyID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的Family名称',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Family'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具名称',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的Model',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Model'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的夹具料号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'PartNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用途',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'UsedFor'
GO

EXEC sp_addextendedproperty
'MS_Description', N'该夹具在每条生产线上需要配备的数量',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'UPL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'责任人的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Owner'
GO

EXEC sp_addextendedproperty
'MS_Description', N'责任人姓名',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'OwnerName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保养点检周期',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'PMPeriod'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保养类型',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'PMType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'录入日期',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'RecOn'
GO

EXEC sp_addextendedproperty
'MS_Description', N'录入人职工编号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'RecBy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'录入人姓名',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'RecByName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改日期',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'EditOn'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人职工编号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'EditBy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人姓名',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition',
'COLUMN', N'EditByName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具定义表',
'SCHEMA', N'dbo',
'TABLE', N'tongs_definition'
GO


-- ----------------------------
-- Records of tongs_definition
-- ----------------------------
INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF0789', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 陶瓷组装夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'陶瓷组装', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:12:09', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:12:09', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF0798', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 刷锡膏夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 刷锡膏', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-18 15:59:14', N'1215072', N'Xianghai Zhang', N'2019-07-18 15:59:14', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2184', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-12 08:03:57', N'1215072', N'Xianghai Zhang', N'2019-07-12 08:03:57', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2185', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 防旋转夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'波导防旋转', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:13:01', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:13:01', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2186', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 保护夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'保护', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-12 08:02:37', N'1215072', N'Xianghai Zhang', N'2019-07-12 08:02:37', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2187', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 盖板螺丝夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'AIB盖板螺丝', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:13:43', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:13:43', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2188', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 底座夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 底座', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:14:38', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:14:38', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2189', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 调谐夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'打调谐盖板', N'3', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:09:08', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:09:08', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2190', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 盖板螺丝夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 打盖板螺丝', N'3', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:16:52', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:16:52', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2191', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 陶瓷安装夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'陶瓷安装', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:10:56', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:10:56', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2192', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 最终组装夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 最终组装', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-12 08:04:40', N'1215072', N'Xianghai Zhang', N'2019-07-12 08:04:40', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2203', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 波导防旋转夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 波导防旋转', N'2', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-04 16:15:18', N'1215072', N'Xianghai Zhang', N'2019-07-04 16:15:18', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2207', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 交叉耦合防旋转夹具', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 交叉耦合防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-16 15:16:26', N'1215072', N'Xianghai Zhang', N'2019-07-16 15:16:26', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2208', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 耦合防旋转夹具1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 RX耦合防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-16 15:14:48', N'1215072', N'Xianghai Zhang', N'2019-07-16 15:14:48', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2209', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 RX耦合防旋转夹具2', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 RX耦合防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-16 15:17:46', N'1215072', N'Xianghai Zhang', N'2019-07-16 15:17:46', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2210', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 盖板螺丝夹具', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 盖板螺丝', N'3', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-07-18 16:00:26', N'1215072', N'Xianghai Zhang', N'2019-07-18 16:00:26', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2234', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:03:06', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:23:05', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2235', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具2', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:04:20', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:23:25', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2236', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:05:13', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:23:43', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2237', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具2', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:06:12', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:23:59', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2238', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:06:46', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:24:14', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2239', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具2', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:07:29', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:24:31', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2240', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:08:10', N'1215072', N'Xianghai Zhang', N'2019-11-01 08:24:51', N'1215072', N'Xianghai Zhang')
GO

INSERT INTO [dbo].[tongs_definition] ([Code], [WorkcellID], [Workcell], [FamilyID], [Family], [Name], [Model], [PartNo], [Type], [UsedFor], [UPL], [Owner], [OwnerName], [Remark], [PMPeriod], [PMType], [RecOn], [RecBy], [RecByName], [EditOn], [EditBy], [EditByName]) VALUES (N'EF2241', N'7', N'JW05', N'79', N'JABIL FU', N'MOD 3XM2 防旋转夹具2', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', NULL, N'MOD 3XM2 防旋转', N'1', N'1230936', N'Lei Qian', NULL, N'30', NULL, N'2019-10-31 10:08:44', N'1215072', N'Xianghai Zhang', N'2019-11-07 10:00:53', N'1284663', N'Abin Liu')
GO


-- ----------------------------
-- Table structure for tongs_entity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tongs_entity]') AND type IN ('U'))
	DROP TABLE [dbo].[tongs_entity]
GO

CREATE TABLE [dbo].[tongs_entity] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [Model] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [PartNo] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [BillNo] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [RegDate] datetime2(0)  NULL,
  [Location] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Bin] int  NULL,
  [State] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [Photo] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [UsedCount] int  NULL,
  [ErrProbability] nvarchar(3) COLLATE Chinese_PRC_CI_AS  NULL,
  [ID] int  NOT NULL,
  [CreateTime] datetime2(0)  NOT NULL,
  [Workcell] int  NOT NULL
)
GO

ALTER TABLE [dbo].[tongs_entity] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具系列号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的Model',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'Model'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具所属的夹具料号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'PartNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'采购单据号',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'BillNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入库日期',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'RegDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存放库位',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'Location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存放库位',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'Bin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（可选项：在库、已出库、待维修、维修中、已报废）',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'State'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具的实物图片',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'Photo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'已使用次数',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'UsedCount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'故障概率',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity',
'COLUMN', N'ErrProbability'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具实体表',
'SCHEMA', N'dbo',
'TABLE', N'tongs_entity'
GO


-- ----------------------------
-- Records of tongs_entity
-- ----------------------------
INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF0789', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070500000002', N'2019-07-05 16:42:00', N'3-A2', N'5', N'在库', N'url:?', N'0', N'0', N'1', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF0798', N'1', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19072900000018', N'2019-07-29 08:54:00', N'2-A2', N'3', N'在库', N'url:?', N'0', N'0', N'2', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2184', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071200000004', N'2019-07-12 09:03:00', N'1-B4', N'3', N'在库', N'url:?', N'0', N'0', N'3', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2185', N'1', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070600000006', N'2019-07-09 15:48:00', N'1-A2', N'3', N'在库', N'url:?', N'0', N'0', N'4', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2186', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071200000002', N'2019-07-12 09:03:00', N'3-A3', N'3', N'在库', N'url:?', N'0', N'0', N'5', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2187', N'1', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070500000003', N'2019-07-05 16:42:00', N'1-B1', N'8', N'在库', N'url:?', N'0', N'0', N'6', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2188', N'1', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070500000005', N'2019-07-05 16:42:00', N'3-A2', N'6', N'在库', N'url:?', N'0', N'0', N'7', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2189', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070600000007', N'2019-07-09 15:48:00', N'5-A3', N'1', N'在库', N'url:?', N'0', N'0', N'8', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2190', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070500000006', N'2019-07-05 16:42:00', N'5-B2', N'6', N'在库', N'url:?', N'0', N'0', N'9', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2191', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19070500000007', N'2019-07-05 16:42:00', N'4-B2', N'2', N'在库', N'url:?', N'0', N'0', N'10', N'2020-04-24 22:59:08', N'1')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2192', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071200000005', N'2019-07-12 09:03:00', N'4-B3', N'3', N'在库', N'url:?', N'0', N'0', N'11', N'0001-01-01 00:00:00', N'0')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2203', N'3', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19080900000001', N'2019-08-09 04:32:00', N'4-A1', N'4', N'在库', N'url:?', N'0', N'0', N'12', N'0001-01-01 00:00:00', N'0')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2207', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071600000002', N'2019-07-16 16:09:00', N'4-C4', N'7', N'在库', N'url:?', N'0', N'0', N'13', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2208', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071600000003', N'2019-07-16 16:09:00', N'4-A3', N'10', N'在库', N'url:?', N'0', N'0', N'14', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2209', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19071600000004', N'2019-07-16 16:09:00', N'1-B4', N'2', N'在库', N'url:?', N'0', N'0', N'15', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2210', N'1', N'FU', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19072900000030', N'2019-07-29 08:53:00', N'4-C2', N'10', N'在库', N'url:?', N'0', N'0', N'16', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2234', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000001', N'2019-10-31 12:42:00', N'4-C2', N'5', N'在库', N'url:?', N'0', N'0', N'17', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2235', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000002', N'2019-10-31 12:42:00', N'4-C3', N'9', N'在库', N'url:?', N'0', N'0', N'18', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2236', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000003', N'2019-10-31 12:42:00', N'4-B3', N'8', N'在库', N'url:?', N'0', N'0', N'19', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2237', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000004', N'2019-10-31 12:42:00', N'5-C4', N'5', N'在库', N'url:?', N'0', N'0', N'20', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2238', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000005', N'2019-10-31 12:42:00', N'5-A4', N'10', N'在库', N'url:?', N'0', N'0', N'21', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2239', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000006', N'2019-10-31 12:42:00', N'2-A2', N'8', N'在库', N'url:?', N'0', N'0', N'22', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2240', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000007', N'2019-10-31 12:41:00', N'1-B2', N'2', N'在库', N'url:?', N'0', N'0', N'23', N'2020-04-24 22:59:08', N'2')
GO

INSERT INTO [dbo].[tongs_entity] ([Code], [SeqID], [Model], [PartNo], [BillNo], [RegDate], [Location], [Bin], [State], [Photo], [UsedCount], [ErrProbability], [ID], [CreateTime], [Workcell]) VALUES (N'EF2241', N'1', N'MOD 3XM2', N'PNA90320/1 PNA90320/2 PNA90322/1', N'BO19103100000008', N'2019-10-31 12:41:00', N'4-A2', N'10', N'在库', N'/Upload/6372388279990087281.png', N'0', N'0', N'24', N'0001-01-01 00:00:00', N'2')
GO


-- ----------------------------
-- Table structure for upkeep_check
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[upkeep_check]') AND type IN ('U'))
	DROP TABLE [dbo].[upkeep_check]
GO

CREATE TABLE [dbo].[upkeep_check] (
  [Code] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SeqID] int  NOT NULL,
  [LastMaintainTime] datetime2(0)  NULL,
  [MaintainCount] int  NULL,
  [EmpID] int  NULL
)
GO

ALTER TABLE [dbo].[upkeep_check] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具代码',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'夹具序列号',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check',
'COLUMN', N'SeqID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上次维修时间',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check',
'COLUMN', N'LastMaintainTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'总维修次数',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check',
'COLUMN', N'MaintainCount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保养点检的Operator1的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check',
'COLUMN', N'EmpID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保养点检表',
'SCHEMA', N'dbo',
'TABLE', N'upkeep_check'
GO


-- ----------------------------
-- Records of upkeep_check
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [username] int  NOT NULL,
  [Password] nvarchar(45) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EmpID] int  NULL,
  [Level] int  NOT NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户登录名',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户登录密码',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户对应的职工编号',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'EmpID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户权限等级',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'Level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户表',
'SCHEMA', N'dbo',
'TABLE', N'users'
GO


-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1000000', N'00000000', NULL, N'6')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1000001', N'12345678', NULL, N'5')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1207001', N'chushimima', N'1207001', N'4')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1207002', N'chushimima', N'1207002', N'3')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1207003', N'chushimima', N'1207003', N'2')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1207004', N'chushimima', N'1207004', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1207005', N'chushimima', N'1207005', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1212001', N'chushimima', N'1212001', N'3')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1212002', N'chushimima', N'1212002', N'2')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1212003', N'chushimima', N'1212003', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1212004', N'chushimima', N'1212004', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1212005', N'chushimima', N'1212005', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236001', N'chushimima', N'1236001', N'3')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236002', N'chushimima', N'1236002', N'2')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236003', N'chushimima', N'1236003', N'2')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236004', N'chushimima', N'1236004', N'2')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236005', N'chushimima', N'1236005', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236006', N'chushimima', N'1236006', N'1')
GO

INSERT INTO [dbo].[users] ([username], [Password], [EmpID], [Level]) VALUES (N'1236007', N'chushimima', N'1236007', N'1')
GO


-- ----------------------------
-- Indexes structure for table attachments
-- ----------------------------
CREATE NONCLUSTERED INDEX [ESRID_idx]
ON [dbo].[attachments] (
  [ESRID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table attachments
-- ----------------------------
ALTER TABLE [dbo].[attachments] ADD CONSTRAINT [PK__attachme__442C64DE239E4DCF] PRIMARY KEY CLUSTERED ([AttachmentID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table authorization
-- ----------------------------
ALTER TABLE [dbo].[authorization] ADD CONSTRAINT [PK__authoriz__3214EC271B0907CE] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table emails
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [EmailID_UNIQUE]
ON [dbo].[emails] (
  [EmailID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table emails
-- ----------------------------
ALTER TABLE [dbo].[emails] ADD CONSTRAINT [PK__emails__7ED91AEF20C1E124] PRIMARY KEY CLUSTERED ([EmailID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table employees
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [EmpID_UNIQUE]
ON [dbo].[employees] (
  [EmpID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table employees
-- ----------------------------
ALTER TABLE [dbo].[employees] ADD CONSTRAINT [PK__employee__AF2DBA791DE57479] PRIMARY KEY CLUSTERED ([EmpID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table in
-- ----------------------------
CREATE NONCLUSTERED INDEX [Location3_idx]
ON [dbo].[in] (
  [Location] ASC,
  [Bin] ASC
)
GO

CREATE NONCLUSTERED INDEX [Handler2_idx]
ON [dbo].[in] (
  [Handler2ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Recorder1_idx]
ON [dbo].[in] (
  [Recorder1ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Recorder2_idx]
ON [dbo].[in] (
  [Recorder2ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [LineID_idx]
ON [dbo].[in] (
  [LineID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Handler1_idx]
ON [dbo].[in] (
  [Handler1ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table in
-- ----------------------------
ALTER TABLE [dbo].[in] ADD CONSTRAINT [PK__warehous__C5F3D1BE5441852A] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table location
-- ----------------------------
ALTER TABLE [dbo].[location] ADD CONSTRAINT [PK__location__89302A0D267ABA7A] PRIMARY KEY CLUSTERED ([Location], [Bin])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table maintenance_record
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Code_UNIQUE]
ON [dbo].[maintenance_record] (
  [Code] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [SeqID_UNIQUE]
ON [dbo].[maintenance_record] (
  [SeqID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Applicant-4_idx]
ON [dbo].[maintenance_record] (
  [ApplicantID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator2-4_idx]
ON [dbo].[maintenance_record] (
  [Operator2ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Manager-3_idx]
ON [dbo].[maintenance_record] (
  [SupervisorID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table maintenance_record
-- ----------------------------
ALTER TABLE [dbo].[maintenance_record] ADD CONSTRAINT [PK__maintena__C5F3D1BE34C8D9D1] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table manager
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [managerID_UNIQUE]
ON [dbo].[manager] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table manager
-- ----------------------------
ALTER TABLE [dbo].[manager] ADD CONSTRAINT [PK__manager__3214EC2729572725] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table operator
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [OperatorID_UNIQUE]
ON [dbo].[operator] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table operator
-- ----------------------------
ALTER TABLE [dbo].[operator] ADD CONSTRAINT [PK__operator__3214EC272C3393D0] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table operator1
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Operator1ID_UNIQUE]
ON [dbo].[operator1] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table operator1
-- ----------------------------
ALTER TABLE [dbo].[operator1] ADD CONSTRAINT [PK__operator__3214EC272F10007B] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table operator2
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Operator2ID_UNIQUE]
ON [dbo].[operator2] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table operator2
-- ----------------------------
ALTER TABLE [dbo].[operator2] ADD CONSTRAINT [PK__operator__3214EC2731EC6D26] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table outstorage
-- ----------------------------
CREATE NONCLUSTERED INDEX [Location1_idx]
ON [dbo].[outstorage] (
  [Location] ASC,
  [Bin] ASC
)
GO

CREATE NONCLUSTERED INDEX [RecorderID_idx]
ON [dbo].[outstorage] (
  [RecorderID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table outstorage
-- ----------------------------
ALTER TABLE [dbo].[outstorage] ADD CONSTRAINT [PK__outstora__C5F3D1BE3A81B327] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table production_line
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [ID_UNIQUE]
ON [dbo].[production_line] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table production_line
-- ----------------------------
ALTER TABLE [dbo].[production_line] ADD CONSTRAINT [PK__producti__3214EC2737A5467C] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table send_emails
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [ReceiveTime_UNIQUE]
ON [dbo].[send_emails] (
  [ReceiveTime] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [ESRID_UNIQUE]
ON [dbo].[send_emails] (
  [ESRID] ASC
)
GO

CREATE NONCLUSTERED INDEX [sender_idx]
ON [dbo].[send_emails] (
  [sender] ASC
)
GO

CREATE NONCLUSTERED INDEX [recipient_idx]
ON [dbo].[send_emails] (
  [recipient] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table send_emails
-- ----------------------------
ALTER TABLE [dbo].[send_emails] ADD CONSTRAINT [PK__send_ema__5C615BC5403A8C7D] PRIMARY KEY CLUSTERED ([ESRID], [ReceiveTime])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table supervisor
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [SupervisorID_UNIQUE]
ON [dbo].[supervisor] (
  [ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table supervisor
-- ----------------------------
ALTER TABLE [dbo].[supervisor] ADD CONSTRAINT [PK__supervis__3214EC273D5E1FD2] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table system_email_account
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [SystemID_UNIQUE]
ON [dbo].[system_email_account] (
  [SystemID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table system_email_account
-- ----------------------------
ALTER TABLE [dbo].[system_email_account] ADD CONSTRAINT [PK__system_e__9394F6AA4316F928] PRIMARY KEY CLUSTERED ([SystemID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table tongs_definition
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Code_UNIQUE]
ON [dbo].[tongs_definition] (
  [Code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table tongs_definition
-- ----------------------------
ALTER TABLE [dbo].[tongs_definition] ADD CONSTRAINT [PK__tongs_de__A25C5AA64E88ABD4] PRIMARY KEY CLUSTERED ([Code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table tongs_entity
-- ----------------------------
CREATE NONCLUSTERED INDEX [Location_idx]
ON [dbo].[tongs_entity] (
  [Location] ASC,
  [Bin] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table tongs_entity
-- ----------------------------
ALTER TABLE [dbo].[tongs_entity] ADD CONSTRAINT [PK__tongs_en__C5F3D1BE48CFD27E] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table upkeep_check
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Code_UNIQUE]
ON [dbo].[upkeep_check] (
  [Code] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [SeqID_UNIQUE]
ON [dbo].[upkeep_check] (
  [SeqID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator_idx]
ON [dbo].[upkeep_check] (
  [EmpID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator1_idx]
ON [dbo].[upkeep_check] (
  [EmpID] ASC
)
GO

CREATE NONCLUSTERED INDEX [Operator1-1_idx]
ON [dbo].[upkeep_check] (
  [EmpID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table upkeep_check
-- ----------------------------
ALTER TABLE [dbo].[upkeep_check] ADD CONSTRAINT [PK__upkeep_c__C5F3D1BE5165187F] PRIMARY KEY CLUSTERED ([Code], [SeqID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmpID_idx]
ON [dbo].[users] (
  [username] ASC
)
GO

CREATE NONCLUSTERED INDEX [EmpID_idx1]
ON [dbo].[users] (
  [EmpID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK__users__F3DBC573571DF1D5] PRIMARY KEY CLUSTERED ([username])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table attachments
-- ----------------------------
ALTER TABLE [dbo].[attachments] ADD CONSTRAINT [ESRID] FOREIGN KEY ([ESRID]) REFERENCES [dbo].[send_emails] ([ESRID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

