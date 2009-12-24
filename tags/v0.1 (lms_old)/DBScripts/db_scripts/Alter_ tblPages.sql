USE [IUDICO]
GO
/****** Object:  Table [dbo].[tblPages]    Script Date: 11/05/2008 14:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[tblPages] DROP COLUMN [FileName]
ALTER TABLE [dbo].[tblPages] ADD [PageName] [nvarchar](50) NULL
ALTER TABLE [dbo].[tblPages] ADD [PageFile] [varbinary](max) NULL
	