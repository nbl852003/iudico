/****** Object:  ForeignKey [FK_Nodes_Cources]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Cources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes] DROP CONSTRAINT [FK_Nodes_Cources]
GO
/****** Object:  ForeignKey [FK_Nodes_Nodes]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Nodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes] DROP CONSTRAINT [FK_Nodes_Nodes]
GO
/****** Object:  ForeignKey [FK_Stages_Curriculums]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Stages_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[Stages]'))
ALTER TABLE [dbo].[Stages] DROP CONSTRAINT [FK_Stages_Curriculums]
GO
/****** Object:  ForeignKey [FK_Themes_Stages]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Themes_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[Themes]'))
ALTER TABLE [dbo].[Themes] DROP CONSTRAINT [FK_Themes_Stages]
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Themes]') AND type in (N'U'))
DROP TABLE [dbo].[Themes]
GO
/****** Object:  Table [dbo].[Nodes]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nodes]') AND type in (N'U'))
DROP TABLE [dbo].[Nodes]
GO
/****** Object:  Table [dbo].[Stages]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stages]') AND type in (N'U'))
DROP TABLE [dbo].[Stages]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[Curriculums]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Curriculums]') AND type in (N'U'))
DROP TABLE [dbo].[Curriculums]
GO
/****** Object:  Default [DF_Courses_Deleted]    Script Date: 11/23/2010 04:33:53 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Courses_Deleted]') AND parent_object_id = OBJECT_ID(N'[dbo].[Courses]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Courses_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [DF_Courses_Deleted]
END


End
GO
/****** Object:  Table [dbo].[Curriculums]    Script Date: 11/23/2010 04:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Curriculums]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Curriculums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
 CONSTRAINT [PK_Curriculums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/23/2010 04:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Owner] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Cources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Stages]    Script Date: 11/23/2010 04:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[CurriculumRef] [int] NOT NULL,
 CONSTRAINT [PK_Stages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Nodes]    Script Date: 11/23/2010 04:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nodes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[CourseId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[IsFolder] [bit] NOT NULL,
	[Position] [int] NOT NULL,
 CONSTRAINT [PK_Nodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 11/23/2010 04:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Themes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Themes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[StageRef] [int] NOT NULL,
	[CourseRef] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Default [DF_Courses_Deleted]    Script Date: 11/23/2010 04:33:53 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Courses_Deleted]') AND parent_object_id = OBJECT_ID(N'[dbo].[Courses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Courses_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Deleted]  DEFAULT ((0)) FOR [Deleted]
END


End
GO
/****** Object:  ForeignKey [FK_Nodes_Cources]    Script Date: 11/23/2010 04:33:53 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Cources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes]  WITH CHECK ADD  CONSTRAINT [FK_Nodes_Cources] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Cources]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes] CHECK CONSTRAINT [FK_Nodes_Cources]
GO
/****** Object:  ForeignKey [FK_Nodes_Nodes]    Script Date: 11/23/2010 04:33:53 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Nodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes]  WITH CHECK ADD  CONSTRAINT [FK_Nodes_Nodes] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Nodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nodes_Nodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nodes]'))
ALTER TABLE [dbo].[Nodes] CHECK CONSTRAINT [FK_Nodes_Nodes]
GO
/****** Object:  ForeignKey [FK_Stages_Curriculums]    Script Date: 11/23/2010 04:33:53 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Stages_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[Stages]'))
ALTER TABLE [dbo].[Stages]  WITH CHECK ADD  CONSTRAINT [FK_Stages_Curriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [dbo].[Curriculums] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Stages_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[Stages]'))
ALTER TABLE [dbo].[Stages] CHECK CONSTRAINT [FK_Stages_Curriculums]
GO
/****** Object:  ForeignKey [FK_Themes_Stages]    Script Date: 11/23/2010 04:33:53 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Themes_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[Themes]'))
ALTER TABLE [dbo].[Themes]  WITH CHECK ADD  CONSTRAINT [FK_Themes_Stages] FOREIGN KEY([StageRef])
REFERENCES [dbo].[Stages] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Themes_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[Themes]'))
ALTER TABLE [dbo].[Themes] CHECK CONSTRAINT [FK_Themes_Stages]
GO
