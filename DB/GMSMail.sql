/*
 Navicat Premium Data Transfer

 Source Server         : MSSQLSERVER2
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : PC-LPY\MSSQLSERVER2:1433
 Source Catalog        : GMSMail
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 02/05/2020 20:32:15
*/


-- ----------------------------
-- Table structure for MailInf
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MailInf]') AND type IN ('U'))
	DROP TABLE [dbo].[MailInf]
GO

CREATE TABLE [dbo].[MailInf] (
  [ID] int  NOT NULL,
  [Createtime] datetime2(0)  NOT NULL,
  [Sender] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Receiver] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Content] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [SenderDelState] bit  NOT NULL,
  [ReceiverDelState] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[MailInf] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'发件人',
'SCHEMA', N'dbo',
'TABLE', N'MailInf',
'COLUMN', N'Sender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'收件人',
'SCHEMA', N'dbo',
'TABLE', N'MailInf',
'COLUMN', N'Receiver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主题',
'SCHEMA', N'dbo',
'TABLE', N'MailInf',
'COLUMN', N'Title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'正文',
'SCHEMA', N'dbo',
'TABLE', N'MailInf',
'COLUMN', N'Content'
GO


-- ----------------------------
-- Records of MailInf
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table MailInf
-- ----------------------------
ALTER TABLE [dbo].[MailInf] ADD CONSTRAINT [PK__MailInf__3214EC277F60ED59] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

