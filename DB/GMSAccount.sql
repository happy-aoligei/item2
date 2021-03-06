/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSAccount
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:35:06
*/


-- ----------------------------
-- Table structure for LoginInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[LoginInfo]
GO

CREATE TABLE [dbo].[LoginInfo] (
  [ID] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [LoginToken] uniqueidentifier  NOT NULL,
  [LastAccessTime] datetime  NOT NULL,
  [UserID] int  NOT NULL,
  [LoginName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [BusinessPermissionString] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientIP] nvarchar(90) COLLATE Chinese_PRC_CI_AS  NULL,
  [EnumLoginAccountType] int DEFAULT ((0)) NOT NULL,
  [Workcell] int  NOT NULL
)
GO

ALTER TABLE [dbo].[LoginInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LoginInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[LoginInfo] ON
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'24', N'2013-11-25 21:47:25.767', N'0269DF35-E5AD-4500-B437-FAD47913AC94', N'2013-11-25 21:47:30.657', N'4', N'guozili3', N'', N'127.0.0.1', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'35', N'2013-12-29 15:12:16.360', N'EBACBB4D-89E9-4FDC-93FE-02420519A3AB', N'2013-12-29 20:46:25.140', N'1', N'guozili', N'101,102,201,202,301,302,303,304,401,402,403', N'127.0.0.1', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'36', N'2013-12-30 22:00:30.733', N'2D8F1A9D-0960-43C3-B8E2-C8AFC482964D', N'2013-12-30 23:18:44.327', N'7', N'admin', N'101,102,201,202,301,302,303,304,401,402,403', N'127.0.0.1', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'38', N'2020-04-20 22:26:49.927', N'16FF7309-BF1A-487B-AC05-47489CF5E327', N'2020-04-20 22:26:49.963', N'6', N'dakongyi', N'', N'Unknown', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'55', N'2020-04-30 20:31:37.303', N'0BEB36EB-6195-4184-9D7E-A639E7E1551C', N'2020-04-30 21:32:29.137', N'10', N'cgrkzs', N'601,604', N'Unknown', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'59', N'2020-04-30 22:09:11.580', N'B9236643-BDB6-4B84-8577-5C52EC9909E1', N'2020-04-30 22:09:11.617', N'7', N'admin', N'101,102,201,202,301,302,303,304,401,402,403,501,502,503,601,602,603,604', N'192.168.1.3', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'76', N'2020-05-01 16:53:39.977', N'7FBB6A21-D289-4AF9-85AC-18F1C640C748', N'2020-05-01 17:04:47.927', N'6', N'aqSeabiscuit', N'503', N'Unknown', N'0', N'1')
GO

INSERT INTO [dbo].[LoginInfo] ([ID], [CreateTime], [LoginToken], [LastAccessTime], [UserID], [LoginName], [BusinessPermissionString], [ClientIP], [EnumLoginAccountType], [Workcell]) VALUES (N'80', N'2020-05-01 23:56:40.797', N'9753DA75-26A4-4153-9AF5-3C6F97CA2E22', N'2020-05-02 15:41:53.610', N'7', N'admin', N'101,102,201,202,301,302,303,304,401,402,403,501,502,503,601,602,603,604', N'Unknown', N'0', N'1')
GO

SET IDENTITY_INSERT [dbo].[LoginInfo] OFF
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role] (
  [ID] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [Info] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [BusinessPermissionString] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Role] ON
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'1', N'系统管理员', N'2013-11-17 14:33:31.920', N'暂时无', N'101,102,201,202,301,302,303,304,401,402,403,501,502,503,601,602,603,604')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'2', N'高级工程师', N'2013-11-17 14:43:57.853', N'暂时无', N'101,501,502,503')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'3', N'测试工程师', N'2013-11-23 17:50:50.593', N'测试项目的人员', NULL)
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'4', N'初级用户', N'2020-04-29 23:32:02.357', NULL, N'503')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'5', N'高级用户', N'2020-04-29 23:32:17.317', NULL, N'601,602')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'6', N'监管员', N'2020-04-29 23:32:30.047', NULL, N'601,602')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'7', N'经理', N'2020-04-29 23:32:38.227', NULL, N'601,602')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'8', N'采购入库初审', N'2020-04-30 20:14:58.087', NULL, N'601,603')
GO

INSERT INTO [dbo].[Role] ([ID], [Name], [CreateTime], [Info], [BusinessPermissionString]) VALUES (N'9', N'采购入库终审', N'2020-04-30 20:15:13.310', NULL, N'601,604')
GO

SET IDENTITY_INSERT [dbo].[Role] OFF
GO


-- ----------------------------
-- Table structure for User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type IN ('U'))
	DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User] (
  [ID] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [Workcell] int  NOT NULL,
  [LoginName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Password] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [IsActive] bit DEFAULT ((1)) NOT NULL,
  [Email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Mobile] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[User] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of User
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User] ON
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'1', N'1', N'guozili', N'C9-55-45-E4-DE-40-C0-BE-F5-3D-BF-AF-69-FB-19-DE', N'2013-11-17 14:31:44.300', N'1', N'guozili@163.com', N'13911153443')
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'2', N'1', N'guozili2', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2013-11-23 14:19:41.767', N'0', N'guozili2@gmail.com', N'13856567825')
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'4', N'1', N'guozili3', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2013-11-23 16:45:44.610', N'1', N'guozili3@163.com', N'13911854551')
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'6', N'1', N'aqSeabiscuit', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2013-12-04 21:54:59.750', N'1', N'ai_xuanqingyu@163.com', N'17311689806')
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'7', N'1', N'admin', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2013-12-29 15:11:16.077', N'1', N'admin@admin.com', NULL)
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'9', N'1', N'cgrkcs', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2020-04-30 20:15:28.023', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'10', N'1', N'cgrkzs', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2020-04-30 20:15:43.880', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'11', N'2', N'aqSeabiscuit', N'96-E7-92-18-96-5E-B7-2C-92-A5-49-DD-5A-33-01-12', N'2020-05-01 16:22:32.700', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[User] ([ID], [Workcell], [LoginName], [Password], [CreateTime], [IsActive], [Email], [Mobile]) VALUES (N'12', N'2', N'admin', N'E1-0A-DC-39-49-BA-59-AB-BE-56-E0-57-F2-0F-88-3E', N'2020-05-01 23:54:44.697', N'1', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[User] OFF
GO


-- ----------------------------
-- Table structure for UserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[UserRole]
GO

CREATE TABLE [dbo].[UserRole] (
  [ID] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [UserID] int  NOT NULL,
  [RoleID] int  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[UserRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserRole
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UserRole] ON
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'1', N'1', N'1', N'2013-11-17 14:33:44.560')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'2', N'1', N'2', N'2013-11-17 14:45:12.183')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'7', N'2', N'1', N'2013-11-23 17:13:45.870')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'8', N'1', N'3', N'2013-11-23 18:58:36.640')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'9', N'5', N'3', N'2013-11-24 11:23:04.797')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'10', N'5', N'2', N'2013-11-24 11:23:12.037')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'12', N'4', N'3', N'2013-11-24 16:16:37.397')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'14', N'7', N'1', N'2013-12-29 15:11:16.247')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'17', N'9', N'8', N'2020-04-30 20:15:28.077')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'18', N'10', N'9', N'2020-04-30 20:15:43.903')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'21', N'11', N'4', N'2020-05-01 16:52:48.740')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'22', N'6', N'4', N'2020-05-01 16:53:09.483')
GO

INSERT INTO [dbo].[UserRole] ([ID], [UserID], [RoleID], [CreateTime]) VALUES (N'23', N'12', N'1', N'2020-05-01 23:54:44.803')
GO

SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO


-- ----------------------------
-- Table structure for UserSessionData
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSessionData]') AND type IN ('U'))
	DROP TABLE [dbo].[UserSessionData]
GO

CREATE TABLE [dbo].[UserSessionData] (
  [ID] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [LoginToken] uniqueidentifier  NOT NULL,
  [Key] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Value] image  NOT NULL
)
GO

ALTER TABLE [dbo].[UserSessionData] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserSessionData
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UserSessionData] ON
GO

SET IDENTITY_INSERT [dbo].[UserSessionData] OFF
GO


-- ----------------------------
-- Table structure for VerifyCode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VerifyCode]') AND type IN ('U'))
	DROP TABLE [dbo].[VerifyCode]
GO

CREATE TABLE [dbo].[VerifyCode] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [VerifyText] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Guid] uniqueidentifier  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[VerifyCode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VerifyCode
-- ----------------------------
SET IDENTITY_INSERT [dbo].[VerifyCode] ON
GO

SET IDENTITY_INSERT [dbo].[VerifyCode] OFF
GO


-- ----------------------------
-- Auto increment value for LoginInfo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LoginInfo]', RESEED, 82)
GO


-- ----------------------------
-- Primary Key structure for table LoginInfo
-- ----------------------------
ALTER TABLE [dbo].[LoginInfo] ADD CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Role
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Role]', RESEED, 9)
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for User
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[User]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED ([ID], [Workcell])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserRole
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UserRole]', RESEED, 23)
GO


-- ----------------------------
-- Primary Key structure for table UserRole
-- ----------------------------
ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserSessionData
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UserSessionData]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table UserSessionData
-- ----------------------------
ALTER TABLE [dbo].[UserSessionData] ADD CONSTRAINT [PK_UserSessionData] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for VerifyCode
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[VerifyCode]', RESEED, 256)
GO


-- ----------------------------
-- Primary Key structure for table VerifyCode
-- ----------------------------
ALTER TABLE [dbo].[VerifyCode] ADD CONSTRAINT [VerifyCode_PK] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

