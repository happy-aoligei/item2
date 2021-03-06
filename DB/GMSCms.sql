/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSCms
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:34:41
*/


-- ----------------------------
-- Table structure for Article
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Article]') AND type IN ('U'))
	DROP TABLE [dbo].[Article]
GO

CREATE TABLE [dbo].[Article] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Title] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [ChannelId] int  NOT NULL,
  [CoverPicture] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [Hits] int DEFAULT ((0)) NOT NULL,
  [Diggs] int DEFAULT ((0)) NOT NULL,
  [IsActive] bit DEFAULT ((0)) NOT NULL,
  [UserId] int  NOT NULL,
  [UserName] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT ((0)) NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Article] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Article
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Article] ON
GO

INSERT INTO [dbo].[Article] ([ID], [Title], [Content], [ChannelId], [CoverPicture], [Hits], [Diggs], [IsActive], [UserId], [UserName], [CreateTime]) VALUES (N'16', N'吉林"最狠拆迁女市长"被双开 曾称有"尚方宝剑"', N'<p class="f_center"><img src="http://img6.cache.netease.com/cnews/2013/12/29/201312290432079cb70.jpg" alt="韩迎新资料图" /><br />韩迎新资料图</p><p>晨报讯 吉林省舒兰市原市委常委、副市长韩迎新昨天被证实开除党籍、公职，其涉嫌犯罪问题已移送司法机关依法处理。2011年，韩迎新曾因辖区内拆迁户到中央上访而受到舆论关注。</p><p>经查，韩迎新利用职务便利和职权影响，为他人牟取利益，收受他人贿赂数额较大。其行为已构成严重违纪。公开资料显示，韩迎新任副市长期间曾分管市监察局、市财政局、市审计局。并协助市长分管市政府办公室、市住房和城乡建设局、市城市管理局、市棚户区改造管理办公室、市政府采购中心等重要部门。</p><p>公开报道称，韩迎新曾说过“我不懂拆迁法，不按拆迁法办”、“我有尚方宝剑！你们随便告，我不怕”等言论，而被称为“史上最美最狠拆迁女市长”。2011年，韩迎新更是成为焦点人物。那一年，因门面房被无理强拆，舒兰市市民许桂芹到中央上访，并得到了时任总理温家宝的亲自接待。</p><!--EndFragment-->', N'3', NULL, N'0', N'0', N'1', N'1', N'guozili', N'2013-12-29 17:51:29.017')
GO

SET IDENTITY_INSERT [dbo].[Article] OFF
GO


-- ----------------------------
-- Table structure for ArticleTag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ArticleTag]') AND type IN ('U'))
	DROP TABLE [dbo].[ArticleTag]
GO

CREATE TABLE [dbo].[ArticleTag] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [ArticleId] int DEFAULT ((0)) NOT NULL,
  [TagId] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[ArticleTag] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ArticleTag
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ArticleTag] ON
GO

INSERT INTO [dbo].[ArticleTag] ([ID], [ArticleId], [TagId]) VALUES (N'26', N'16', N'18')
GO

INSERT INTO [dbo].[ArticleTag] ([ID], [ArticleId], [TagId]) VALUES (N'27', N'16', N'19')
GO

SET IDENTITY_INSERT [dbo].[ArticleTag] OFF
GO


-- ----------------------------
-- Table structure for Channel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Channel]') AND type IN ('U'))
	DROP TABLE [dbo].[Channel]
GO

CREATE TABLE [dbo].[Channel] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Desc] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [CoverPicture] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [Hits] int DEFAULT ((0)) NOT NULL,
  [IsActive] bit DEFAULT ((0)) NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Channel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Channel
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Channel] ON
GO

INSERT INTO [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (N'1', N'公司动态', N'暂时无', NULL, N'0', N'1', N'2013-12-01 14:05:45.407')
GO

INSERT INTO [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (N'2', N'最新通知', N'暂时无', NULL, N'0', N'1', N'2013-12-01 14:06:06.050')
GO

INSERT INTO [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (N'3', N'业界新闻', N'暂时没有', NULL, N'0', N'1', N'2013-12-01 19:40:47.517')
GO

SET IDENTITY_INSERT [dbo].[Channel] OFF
GO


-- ----------------------------
-- Table structure for Tag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Tag]') AND type IN ('U'))
	DROP TABLE [dbo].[Tag]
GO

CREATE TABLE [dbo].[Tag] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Hits] int DEFAULT ((0)) NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[Tag] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Tag
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Tag] ON
GO

INSERT INTO [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (N'15', N'最新', N'2', N'2013-12-02 23:37:32.047')
GO

INSERT INTO [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (N'16', N'最热', N'1', N'2013-12-02 23:37:32.047')
GO

INSERT INTO [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (N'18', N'反腐', N'0', N'2013-12-29 17:51:29.030')
GO

INSERT INTO [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (N'19', N'温家宝', N'0', N'2013-12-29 17:51:29.030')
GO

SET IDENTITY_INSERT [dbo].[Tag] OFF
GO


-- ----------------------------
-- Auto increment value for Article
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Article]', RESEED, 16)
GO


-- ----------------------------
-- Primary Key structure for table Article
-- ----------------------------
ALTER TABLE [dbo].[Article] ADD CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ArticleTag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ArticleTag]', RESEED, 27)
GO


-- ----------------------------
-- Primary Key structure for table ArticleTag
-- ----------------------------
ALTER TABLE [dbo].[ArticleTag] ADD CONSTRAINT [PK_ArticleTag] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Channel
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Channel]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table Channel
-- ----------------------------
ALTER TABLE [dbo].[Channel] ADD CONSTRAINT [PK_Channel] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Tag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Tag]', RESEED, 19)
GO


-- ----------------------------
-- Primary Key structure for table Tag
-- ----------------------------
ALTER TABLE [dbo].[Tag] ADD CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

