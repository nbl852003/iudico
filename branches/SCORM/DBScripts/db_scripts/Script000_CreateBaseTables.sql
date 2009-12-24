USE [IUDICO]
GO
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'IUDICO')
BEGIN
CREATE DATABASE [IUDICO] ON  PRIMARY 
( NAME = N'IUDICO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\IUDICO.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IUDICO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\IUDICO_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
EXEC dbo.sp_dbcmptlevel @dbname=N'IUDICO', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IUDICO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IUDICO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IUDICO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IUDICO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IUDICO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IUDICO] SET ARITHABORT OFF 
GO
ALTER DATABASE [IUDICO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IUDICO] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [IUDICO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IUDICO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IUDICO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IUDICO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IUDICO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IUDICO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IUDICO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IUDICO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IUDICO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IUDICO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IUDICO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IUDICO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IUDICO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IUDICO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IUDICO] SET  READ_WRITE 
GO
ALTER DATABASE [IUDICO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IUDICO] SET  MULTI_USER 
GO
ALTER DATABASE [IUDICO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IUDICO] SET DB_CHAINING OFF 
USE [IUDICO]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdPageTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdPageTypes](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](10) NULL,
 CONSTRAINT [PK_PageType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGroups](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdRoles](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_fxdRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdCompiledStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdCompiledStatuses](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_fxdCompiledStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdCourseOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdCourseOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CanBeDelegated] [bit] NOT NULL,
 CONSTRAINT [PK_CourseOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdCurriculumOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdCurriculumOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CanBeDelegated] [bit] NOT NULL,
 CONSTRAINT [PK_CurriculumOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdPageOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdPageOrders](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_fxdPageOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdPageOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdPageOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CanBeDelegated] [bit] NOT NULL,
 CONSTRAINT [PK_PageOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdStageOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdStageOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CanBeDelegated] [bit] NOT NULL,
 CONSTRAINT [PK_StageOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdThemeOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdThemeOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CanBeDelegated] [bit] NOT NULL,
 CONSTRAINT [PK_ThemeOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCourses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCourses](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[UploadDate] [datetime] NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCurriculums]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCurriculums](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SdudyCourses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxdLanguages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxdLanguages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_fxdLanguages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPages](
	[ID] [int] NOT NULL,
	[ThemeRef] [int] NULL,
	[FileName] [nvarchar](max) NULL,
	[PageTypeRef] [int] NULL,
	[PageRank] [int] NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPermissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPermissions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentPermitionRef] [int] NULL,
	[DateSince] [datetime] NULL,
	[DateTill] [datetime] NULL,
	[UserRef] [int] NULL,
	[GroupRef] [int] NULL,
	[CanBeDelagated] [bit] NOT NULL,
	[CourseRef] [int] NULL,
	[CourseOperationRef] [int] NULL,
	[CurriculumRef] [int] NULL,
	[CurriculumsOperationRef] [int] NULL,
	[StageRef] [int] NULL,
	[StageOperationRef] [int] NULL,
	[ThemeRef] [int] NULL,
	[ThemeOperationRef] [int] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStagesThemes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStagesThemes](
	[StageRef] [int] NOT NULL,
	[ThemeRef] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblQuestions](
	[ID] [int] NOT NULL,
	[PageRef] [int] NULL,
	[TestName] [nvarchar](50) NULL,
	[CorrectAnswer] [nvarchar](max) NULL,
	[Rank] [int] NULL,
	[IsCompiled] [bit] NOT NULL,
	[CompiledQuestionRef] [int] NULL,
 CONSTRAINT [PK_CorrectAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUserAnswers](
	[ID] [int] NOT NULL,
	[UserRef] [int] NULL,
	[QuestionRef] [int] NULL,
	[UserAnswer] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[IsCompiledAnswer] [bit] NOT NULL,
	[CompiledAnswerRef] [int] NULL,
 CONSTRAINT [PK_UserAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswersData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledAnswersData](
	[UserRef] [int] NOT NULL,
	[CompiledQuestionsDataRef] [int] NOT NULL,
	[Output] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledAnswers](
	[ID] [int] NOT NULL,
	[TimeUsed] [int] NULL,
	[MemoryUsed] [int] NULL,
	[StatusRef] [int] NOT NULL,
 CONSTRAINT [PK_tblCompiledAnswers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledQuestions](
	[ID] [int] NOT NULL,
	[LanguageRef] [int] NOT NULL,
	[TimeLimit] [int] NULL,
	[MemoryLimit] [int] NULL,
	[OutputLimit] [int] NULL,
 CONSTRAINT [PK_tblCompiledQuestions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledQuestionsData](
	[ID] [int] NOT NULL,
	[CompiledQuestionRef] [int] NOT NULL,
	[Input] [nvarchar](max) NULL,
	[Output] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCompiledQuestionsData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblThemes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblThemes](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CourseRef] [int] NULL,
	[IsControl] [bit] NOT NULL,
	[PageOrderRef] [int] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CurriculumRef] [int] NULL,
 CONSTRAINT [PK_Stages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_PageType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_PageType] FOREIGN KEY([PageTypeRef])
REFERENCES [dbo].[fxdPageTypes] ([ID])
GO
ALTER TABLE [dbo].[tblPages] CHECK CONSTRAINT [FK_Page_PageType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Theme]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_Theme] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[tblPages] CHECK CONSTRAINT [FK_Page_Theme]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARENT_PERMITION]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_PARENT_PERMITION] FOREIGN KEY([ParentPermitionRef])
REFERENCES [dbo].[tblPermissions] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_PARENT_PERMITION]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CourseOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CourseOperations] FOREIGN KEY([CourseOperationRef])
REFERENCES [dbo].[fxdCourseOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_CourseOperations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Courses] FOREIGN KEY([CourseRef])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CurriculumOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CurriculumOperations] FOREIGN KEY([CurriculumsOperationRef])
REFERENCES [dbo].[fxdCurriculumOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_CurriculumOperations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Curriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [dbo].[tblCurriculums] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Curriculums]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Groups]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Groups] FOREIGN KEY([GroupRef])
REFERENCES [dbo].[tblGroups] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Groups]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_StageOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_StageOperations] FOREIGN KEY([StageOperationRef])
REFERENCES [dbo].[fxdStageOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_StageOperations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Stages] FOREIGN KEY([StageRef])
REFERENCES [dbo].[tblStages] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Stages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_ThemeOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_ThemeOperations] FOREIGN KEY([ThemeOperationRef])
REFERENCES [dbo].[fxdThemeOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_ThemeOperations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Themes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Themes] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Themes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Users] FOREIGN KEY([UserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StagesThemes_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStagesThemes]'))
ALTER TABLE [dbo].[tblStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_StagesThemes_Stages] FOREIGN KEY([StageRef])
REFERENCES [dbo].[tblStages] ([ID])
GO
ALTER TABLE [dbo].[tblStagesThemes] CHECK CONSTRAINT [FK_StagesThemes_Stages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StagesThemes_Themes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStagesThemes]'))
ALTER TABLE [dbo].[tblStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_StagesThemes_Themes] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[tblStagesThemes] CHECK CONSTRAINT [FK_StagesThemes_Themes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CorrectAnswer_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CorrectAnswer_Page] FOREIGN KEY([PageRef])
REFERENCES [dbo].[tblPages] ([ID])
GO
ALTER TABLE [dbo].[tblQuestions] CHECK CONSTRAINT [FK_CorrectAnswer_Page]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblQuestions_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblQuestions_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [dbo].[tblCompiledQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblQuestions] CHECK CONSTRAINT [FK_tblQuestions_tblCompiledQuestions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblUserAnswers_tblCompiledAnswers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblUserAnswers_tblCompiledAnswers] FOREIGN KEY([CompiledAnswerRef])
REFERENCES [dbo].[tblCompiledAnswers] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_tblUserAnswers_tblCompiledAnswers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswer_CorrectAnswer]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswer_CorrectAnswer] FOREIGN KEY([QuestionRef])
REFERENCES [dbo].[tblQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswer_CorrectAnswer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswers_Users] FOREIGN KEY([UserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswers_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswersData_tblCompiledQuestionsData]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswersData]'))
ALTER TABLE [dbo].[tblCompiledAnswersData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswersData_tblCompiledQuestionsData] FOREIGN KEY([CompiledQuestionsDataRef])
REFERENCES [dbo].[tblCompiledQuestionsData] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswersData] CHECK CONSTRAINT [FK_tblCompiledAnswersData_tblCompiledQuestionsData]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledOutputs_tblUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswersData]'))
ALTER TABLE [dbo].[tblCompiledAnswersData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledOutputs_tblUsers] FOREIGN KEY([UserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswersData] CHECK CONSTRAINT [FK_tblCompiledOutputs_tblUsers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_fxdCompiledStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses] FOREIGN KEY([StatusRef])
REFERENCES [dbo].[fxdCompiledStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswers] CHECK CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestions_fxdLanguages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]'))
ALTER TABLE [dbo].[tblCompiledQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages] FOREIGN KEY([LanguageRef])
REFERENCES [dbo].[fxdLanguages] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledQuestions] CHECK CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestionsData_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]'))
ALTER TABLE [dbo].[tblCompiledQuestionsData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [dbo].[tblCompiledQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledQuestionsData] CHECK CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Chapter_Course]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([CourseRef])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblThemes] CHECK CONSTRAINT [FK_Chapter_Course]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblThemes_fxdPageOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_tblThemes_fxdPageOrders] FOREIGN KEY([PageOrderRef])
REFERENCES [dbo].[fxdPageOrders] ([ID])
GO
ALTER TABLE [dbo].[tblThemes] CHECK CONSTRAINT [FK_tblThemes_fxdPageOrders]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblStages_tblCurriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStages]'))
ALTER TABLE [dbo].[tblStages]  WITH CHECK ADD  CONSTRAINT [FK_tblStages_tblCurriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [dbo].[tblCurriculums] ([ID])
GO
ALTER TABLE [dbo].[tblStages] CHECK CONSTRAINT [FK_tblStages_tblCurriculums]
