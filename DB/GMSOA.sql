/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSOA
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:33:18
*/


-- ----------------------------
-- Table structure for Branch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Branch]') AND type IN ('U'))
	DROP TABLE [dbo].[Branch]
GO

CREATE TABLE [dbo].[Branch] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Desc] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] int DEFAULT ((0)) NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Branch] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Branch
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Branch] ON
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'1', N'总经办', NULL, N'0', N'2013-12-20 23:09:46.140')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'2', N'测试部', NULL, N'6', N'2013-12-20 23:10:54.953')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'3', N'研发部', NULL, N'6', N'2013-12-21 23:06:57.147')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'4', N'前端组', NULL, N'3', N'2013-12-21 23:07:40.580')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'5', N'后端组', NULL, N'3', N'2013-12-21 23:10:15.353')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'6', N'开发中心', NULL, N'1', N'2013-12-21 23:10:44.617')
GO

INSERT INTO [dbo].[Branch] ([ID], [Name], [Desc], [ParentId], [CreateTime]) VALUES (N'7', N'人力资源部', NULL, N'1', N'2013-12-21 23:11:06.450')
GO

SET IDENTITY_INSERT [dbo].[Branch] OFF
GO


-- ----------------------------
-- Table structure for Staff
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type IN ('U'))
	DROP TABLE [dbo].[Staff]
GO

CREATE TABLE [dbo].[Staff] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CoverPicture] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gender] int DEFAULT ((0)) NOT NULL,
  [Position] int DEFAULT ((0)) NOT NULL,
  [BirthDate] datetime  NULL,
  [Tel] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NOT NULL,
  [Email] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [BranchId] int  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Staff] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Staff
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Staff] ON
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'1', N'程一冰', NULL, N'2', N'0', N'1981-12-02 00:00:00.000', N'13876540999', NULL, NULL, N'5', N'2013-12-22 13:13:50.267')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'3', N'欧景致', NULL, N'1', N'0', N'1978-12-02 00:00:00.000', N'13876544531', NULL, NULL, N'4', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'4', N'李敏', NULL, N'1', N'0', N'1983-12-02 00:00:00.000', N'13811329822', NULL, NULL, N'0', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'5', N'宋慈', NULL, N'1', N'0', N'1981-12-02 00:00:00.000', N'17627138777', NULL, NULL, N'0', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'6', N'郑然', NULL, N'2', N'0', N'1981-12-02 00:00:00.000', N'18978634571', NULL, NULL, N'7', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'7', N'张京微', NULL, N'1', N'0', N'1985-12-02 00:00:00.000', N'13456788765', NULL, NULL, N'0', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'8', N'黎西', NULL, N'2', N'0', N'1984-12-02 00:00:00.000', N'13487673000', NULL, NULL, N'0', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'9', N'李进', NULL, N'1', N'0', N'1980-12-02 00:00:00.000', N'14534567890', NULL, NULL, N'1', N'2013-12-22 13:17:46.437')
GO

INSERT INTO [dbo].[Staff] ([ID], [Name], [CoverPicture], [Gender], [Position], [BirthDate], [Tel], [Email], [Address], [BranchId], [CreateTime]) VALUES (N'10', N'张一易', NULL, N'1', N'2', N'1983-12-02 00:00:00.000', N'13987654356', NULL, NULL, N'3', N'2013-12-22 13:17:46.437')
GO

SET IDENTITY_INSERT [dbo].[Staff] OFF
GO


-- ----------------------------
-- Auto increment value for Branch
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Branch]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table Branch
-- ----------------------------
ALTER TABLE [dbo].[Branch] ADD CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Staff
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Staff]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table Staff
-- ----------------------------
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

