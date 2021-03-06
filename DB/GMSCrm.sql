/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSCrm
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:34:21
*/


-- ----------------------------
-- Table structure for Area
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Area]') AND type IN ('U'))
	DROP TABLE [dbo].[Area]
GO

CREATE TABLE [dbo].[Area] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CityId] int  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Area] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Area
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Area] ON
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'3', N'东洲街道', N'1', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'4', N'富春街道', N'1', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'5', N'鹿山街道', N'1', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'6', N'春江街道', N'1', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'7', N'新登镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'8', N'高桥镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'9', N'受降镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'10', N'万市镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'11', N'龙门镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'12', N'大源镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'13', N'常绿镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'14', N'其他乡镇', N'2', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'15', N'下城区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'16', N'拱墅区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'17', N'江干区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'18', N'上城区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'19', N'西湖区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'20', N'滨江区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'21', N'下沙新城', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'22', N'余杭区', N'3', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'23', N'省内其他城市', N'4', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'24', N'外省市', N'4', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'25', N'港澳台地区', N'4', N'2013-12-04 10:37:21.463')
GO

INSERT INTO [dbo].[Area] ([ID], [Name], [CityId], [CreateTime]) VALUES (N'26', N'境外地区', N'4', N'2013-12-04 10:37:21.463')
GO

SET IDENTITY_INSERT [dbo].[Area] OFF
GO


-- ----------------------------
-- Table structure for City
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type IN ('U'))
	DROP TABLE [dbo].[City]
GO

CREATE TABLE [dbo].[City] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[City] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of City
-- ----------------------------
SET IDENTITY_INSERT [dbo].[City] ON
GO

INSERT INTO [dbo].[City] ([ID], [Name], [CreateTime]) VALUES (N'1', N'富阳市区', N'2013-12-04 10:37:59.377')
GO

INSERT INTO [dbo].[City] ([ID], [Name], [CreateTime]) VALUES (N'2', N'富阳乡镇', N'2013-12-04 10:37:59.377')
GO

INSERT INTO [dbo].[City] ([ID], [Name], [CreateTime]) VALUES (N'3', N'杭州', N'2013-12-04 10:37:59.377')
GO

INSERT INTO [dbo].[City] ([ID], [Name], [CreateTime]) VALUES (N'4', N'其他', N'2013-12-04 10:37:59.377')
GO

SET IDENTITY_INSERT [dbo].[City] OFF
GO


-- ----------------------------
-- Table structure for Customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer]
GO

CREATE TABLE [dbo].[Customer] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Tel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserId] int  NOT NULL,
  [Username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Gender] int  NOT NULL,
  [Email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Category] int  NOT NULL,
  [Profession] int  NOT NULL,
  [AgeGroup] int  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Customer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer] ON
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'1', N'张一易', N'13987654356', N'1', N'guozili', N'PD120', N'1', NULL, NULL, N'1', N'3', N'3', N'2013-11-25 11:34:34.233')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'2', N'李进', N'14534567890', N'1', N'guozili', N'PS123', N'1', NULL, NULL, N'5', N'6', N'5', N'2013-11-25 12:00:07.453')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'3', N'黎西', N'13487673000', N'2', N'guozili2', N'PD333', N'2', NULL, NULL, N'1', N'14', N'4', N'2013-11-25 12:00:24.547')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'4', N'张京微', N'13456788765', N'2', N'guozili2', N'PA421', N'1', NULL, NULL, N'5', N'5', N'6', N'2013-11-25 12:00:48.970')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'5', N'郑然', N'18978634571', N'4', N'guozili3', N'JD183', N'2', NULL, NULL, N'3', N'3', N'2', N'2013-11-25 12:01:07.827')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'6', N'宋校冰', N'17627138777', N'4', N'guozili3', N'PD224', N'1', NULL, NULL, N'5', N'5', N'5', N'2013-11-25 12:01:38.077')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'7', N'李敏', N'13811329822', N'6', N'dakongyi', N'PS133', N'1', NULL, NULL, N'1', N'2', N'2', N'2013-11-25 12:54:04.657')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'8', N'欧径自', N'13876544531', N'6', N'dakongyi', N'ED429', N'1', NULL, NULL, N'1', N'2', N'2', N'2013-11-25 12:54:27.937')
GO

INSERT INTO [dbo].[Customer] ([ID], [Name], [Tel], [UserId], [Username], [Number], [Gender], [Email], [Address], [Category], [Profession], [AgeGroup], [CreateTime]) VALUES (N'9', N'程一雪', N'13876540999', N'6', N'dakongyi', N'ZD524', N'2', N'g', NULL, N'1', N'1', N'2', N'2013-11-25 12:55:03.470')
GO

SET IDENTITY_INSERT [dbo].[Customer] OFF
GO


-- ----------------------------
-- Table structure for Project
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type IN ('U'))
	DROP TABLE [dbo].[Project]
GO

CREATE TABLE [dbo].[Project] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Project] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Project
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Project] ON
GO

INSERT INTO [dbo].[Project] ([ID], [Name], [CreateTime]) VALUES (N'1', N'燕京航城第一期', N'2013-02-04 13:59:38.733')
GO

INSERT INTO [dbo].[Project] ([ID], [Name], [CreateTime]) VALUES (N'2', N'凤凰国际黄金海岸', N'2013-02-09 19:02:10.703')
GO

INSERT INTO [dbo].[Project] ([ID], [Name], [CreateTime]) VALUES (N'3', N'测试项目', N'2020-04-22 17:35:54.060')
GO

SET IDENTITY_INSERT [dbo].[Project] OFF
GO


-- ----------------------------
-- Table structure for VisitRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VisitRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[VisitRecord]
GO

CREATE TABLE [dbo].[VisitRecord] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [UserId] int  NULL,
  [Username] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VisitWay] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [ProjectId] int  NOT NULL,
  [FollowLevel] int  NOT NULL,
  [FollowStep] int  NOT NULL,
  [ProductType] int  NOT NULL,
  [Probability] int  NOT NULL,
  [Detail] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [VisitTime] datetime DEFAULT (getdate()) NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [AreaDemand] int  NOT NULL,
  [PriceResponse] int  NOT NULL,
  [CognitiveChannel] int  NOT NULL,
  [Focus] int  NOT NULL,
  [Motivation] int  NOT NULL,
  [CityId] int  NOT NULL,
  [AreaId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[VisitRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VisitRecord
-- ----------------------------
SET IDENTITY_INSERT [dbo].[VisitRecord] ON
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'1', N'1', N'guozili', N'2', N'1', N'1', N'1', N'1', N'1', N'10', NULL, N'2013-11-25 11:34:52.000', N'2013-11-25 11:34:52.077', N'4', N'4', N'32', N'8404992', N'5', N'2', N'7')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'3', N'1', N'guozili', N'1', N'2', N'1', N'2', N'2', N'1', N'20', NULL, N'2013-11-25 12:56:28.000', N'2013-11-25 12:56:28.843', N'3', N'3', N'8192', N'532480', N'3', N'2', N'7')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'4', N'1', N'guozili', N'1', N'1', N'1', N'2', N'2', N'1', N'30', NULL, N'2013-11-25 12:58:41.000', N'2013-11-25 12:58:41.983', N'4', N'3', N'4', N'256', N'4', N'1', N'4')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'5', N'1', N'guozili', N'1', N'1', N'1', N'2', N'3', N'1', N'30', NULL, N'2013-11-25 12:58:56.000', N'2013-11-25 12:58:56.733', N'2', N'3', N'260', N'4', N'2', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'6', N'1', N'guozili', N'1', N'2', N'1', N'1', N'2', N'1', N'30', NULL, N'2013-11-25 12:59:21.000', N'2013-11-25 12:59:21.470', N'2', N'2', N'8192', N'2', N'1', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'7', N'2', N'guozili2', N'1', N'3', N'1', N'1', N'1', N'1', N'10', NULL, N'2013-11-25 12:59:52.000', N'2013-11-25 12:59:52.687', N'1', N'1', N'1', N'1', N'1', N'3', N'16')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'8', N'2', N'guozili2', N'1', N'3', N'1', N'1', N'1', N'1', N'10', NULL, N'2013-11-25 18:59:32.000', N'2013-11-25 18:59:32.877', N'3', N'3', N'2', N'2', N'4', N'3', N'16')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'9', N'2', N'guozili2', N'1', N'4', N'1', N'1', N'2', N'1', N'20', NULL, N'2013-11-25 18:59:45.000', N'2013-11-25 18:59:45.423', N'2', N'2', N'1', N'2', N'2', N'3', N'15')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'10', N'2', N'guozili2', N'1', N'4', N'1', N'2', N'2', N'1', N'20', NULL, N'2013-11-25 18:59:55.000', N'2013-11-25 18:59:55.953', N'2', N'3', N'2', N'2', N'2', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'11', N'4', N'guozili3', N'1', N'5', N'2', N'1', N'1', N'1', N'10', NULL, N'2013-11-25 19:01:30.000', N'2013-11-25 19:01:30.453', N'2', N'0', N'128', N'532480', N'1', N'1', N'6')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'12', N'4', N'guozili3', N'1', N'5', N'2', N'2', N'1', N'1', N'20', NULL, N'2013-11-25 19:02:32.000', N'2013-11-25 19:02:32.343', N'4', N'0', N'4', N'1064960', N'4', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'13', N'4', N'guozili3', N'1', N'6', N'2', N'1', N'1', N'1', N'0', NULL, N'2013-11-25 19:02:42.000', N'2013-11-25 19:02:42.233', N'3', N'3', N'2', N'33554692', N'3', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'14', N'4', N'guozili3', N'1', N'5', N'2', N'2', N'1', N'1', N'10', NULL, N'2013-11-25 19:02:52.000', N'2013-11-25 19:02:52.907', N'4', N'3', N'8', N'32776', N'4', N'1', N'5')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'15', N'4', N'guozili3', N'2', N'6', N'1', N'2', N'1', N'2', N'20', NULL, N'2013-11-25 19:03:08.000', N'2013-11-25 19:03:08.453', N'2', N'2', N'2', N'130', N'2', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'16', N'6', N'dakongyi', N'2', N'7', N'1', N'1', N'1', N'2', N'10', NULL, N'2013-11-25 19:04:20.000', N'2013-11-25 19:04:20.673', N'2', N'2', N'2', N'2', N'2', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'17', N'6', N'dakongyi', N'1', N'8', N'1', N'1', N'1', N'2', N'10', NULL, N'2013-11-25 19:04:31.000', N'2013-11-25 19:04:31.203', N'2', N'2', N'2', N'2', N'3', N'1', N'3')
GO

INSERT INTO [dbo].[VisitRecord] ([ID], [UserId], [Username], [VisitWay], [CustomerId], [ProjectId], [FollowLevel], [FollowStep], [ProductType], [Probability], [Detail], [VisitTime], [CreateTime], [AreaDemand], [PriceResponse], [CognitiveChannel], [Focus], [Motivation], [CityId], [AreaId]) VALUES (N'18', N'6', N'dakongyi', N'1', N'2', N'1', N'2', N'1', N'2', N'20', N'暂时无', N'2013-11-25 19:04:47.000', N'2013-11-25 19:04:47.827', N'2', N'4', N'3', N'65110275', N'2', N'1', N'3')
GO

SET IDENTITY_INSERT [dbo].[VisitRecord] OFF
GO


-- ----------------------------
-- Auto increment value for Area
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Area]', RESEED, 26)
GO


-- ----------------------------
-- Primary Key structure for table Area
-- ----------------------------
ALTER TABLE [dbo].[Area] ADD CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for City
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[City]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table City
-- ----------------------------
ALTER TABLE [dbo].[City] ADD CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Customer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Customer]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Project
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Project]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table Project
-- ----------------------------
ALTER TABLE [dbo].[Project] ADD CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for VisitRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[VisitRecord]', RESEED, 18)
GO


-- ----------------------------
-- Primary Key structure for table VisitRecord
-- ----------------------------
ALTER TABLE [dbo].[VisitRecord] ADD CONSTRAINT [PK_VisitRecord] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

