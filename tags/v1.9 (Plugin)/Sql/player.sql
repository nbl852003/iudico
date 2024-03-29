USE [Training]
GO
/****** Object:  Role [LearningStore]    Script Date: 11/27/2010 21:56:22 ******/
CREATE ROLE [LearningStore] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[RubricItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RubricItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InteractionId] [bigint] NOT NULL,
	[Ordinal] [int] NOT NULL,
	[IsSatisfied] [bit] NULL,
	[Points] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[RubricItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the RubricItem item type
CREATE FUNCTION [dbo].[RubricItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [InteractionId], [Ordinal], [IsSatisfied], [Points]
    FROM [RubricItem]
)
GO
/****** Object:  Table [dbo].[SequencingLogEntryItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequencingLogEntryItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AttemptId] [bigint] NOT NULL,
	[ActivityAttemptId] [bigint] NULL,
	[EventType] [int] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[NavigationCommand] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SequencingLogEntryItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the SequencingLogEntryItem item type
CREATE FUNCTION [dbo].[SequencingLogEntryItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [AttemptId], [ActivityAttemptId], [EventType], [Message], [NavigationCommand], [Timestamp]
    FROM [SequencingLogEntryItem]
)
GO
/****** Object:  UserDefinedFunction [dbo].[SequencingLog]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SequencingLog view
CREATE FUNCTION [dbo].[SequencingLog](@UserKey nvarchar(250),@AttemptId bigint=NULL)
RETURNS TABLE
AS
RETURN (
    SELECT Id,
    Timestamp,
    EventType,
    NavigationCommand,
    Message
    FROM SequencingLogEntryItem
    WHERE AttemptId=@AttemptId
)
GO
/****** Object:  Table [dbo].[PackageGlobalObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageGlobalObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LearnerId] [bigint] NOT NULL,
	[GlobalObjectiveId] [bigint] NOT NULL,
	[ScaledScore] [real] NULL,
	[SuccessStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[PackageGlobalObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the PackageGlobalObjectiveItem item type
CREATE FUNCTION [dbo].[PackageGlobalObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [LearnerId], [GlobalObjectiveId], [ScaledScore], [SuccessStatus]
    FROM [PackageGlobalObjectiveItem]
)
GO
/****** Object:  Table [dbo].[LearnerGlobalObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearnerGlobalObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LearnerId] [bigint] NOT NULL,
	[GlobalObjectiveId] [bigint] NOT NULL,
	[ScaledScore] [real] NULL,
	[SuccessStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[LearnerGlobalObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the LearnerGlobalObjectiveItem item type
CREATE FUNCTION [dbo].[LearnerGlobalObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [LearnerId], [GlobalObjectiveId], [ScaledScore], [SuccessStatus]
    FROM [LearnerGlobalObjectiveItem]
)
GO
/****** Object:  Table [dbo].[EvaluationCommentItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluationCommentItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InteractionId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](255) NULL,
	[Ordinal] [int] NOT NULL,
	[Timestamp] [nvarchar](28) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[EvaluationCommentItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the EvaluationCommentItem item type
CREATE FUNCTION [dbo].[EvaluationCommentItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [InteractionId], [Comment], [Location], [Ordinal], [Timestamp]
    FROM [EvaluationCommentItem]
)
GO
/****** Object:  Table [dbo].[MapActivityObjectiveToGlobalObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityObjectiveId] [bigint] NOT NULL,
	[GlobalObjectiveId] [bigint] NOT NULL,
	[ReadSatisfiedStatus] [bit] NOT NULL,
	[ReadNormalizedMeasure] [bit] NOT NULL,
	[WriteSatisfiedStatus] [bit] NOT NULL,
	[WriteNormalizedMeasure] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[MapActivityObjectiveToGlobalObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the MapActivityObjectiveToGlobalObjectiveItem item type
CREATE FUNCTION [dbo].[MapActivityObjectiveToGlobalObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityObjectiveId], [GlobalObjectiveId], [ReadSatisfiedStatus], [ReadNormalizedMeasure], [WriteSatisfiedStatus], [WriteNormalizedMeasure]
    FROM [MapActivityObjectiveToGlobalObjectiveItem]
)
GO
/****** Object:  Table [dbo].[InteractionObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteractionObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InteractionId] [bigint] NOT NULL,
	[AttemptObjectiveId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[InteractionObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the InteractionObjectiveItem item type
CREATE FUNCTION [dbo].[InteractionObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [InteractionId], [AttemptObjectiveId]
    FROM [InteractionObjectiveItem]
)
GO
/****** Object:  Table [dbo].[InteractionItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteractionItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityAttemptId] [bigint] NOT NULL,
	[InteractionIdFromCmi] [nvarchar](max) NOT NULL,
	[InteractionType] [int] NULL,
	[Timestamp] [nvarchar](28) NULL,
	[Weighting] [real] NULL,
	[ResultState] [int] NULL,
	[ResultNumeric] [real] NULL,
	[Latency] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[LearnerResponseBool] [bit] NULL,
	[LearnerResponseString] [nvarchar](max) NULL,
	[LearnerResponseNumeric] [real] NULL,
	[ScaledScore] [real] NULL,
	[RawScore] [real] NULL,
	[MinScore] [real] NULL,
	[MaxScore] [real] NULL,
	[EvaluationPoints] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[InteractionItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the InteractionItem item type
CREATE FUNCTION [dbo].[InteractionItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityAttemptId], [InteractionIdFromCmi], [InteractionType], [Timestamp], [Weighting], [ResultState], [ResultNumeric], [Latency], [Description], [LearnerResponseBool], [LearnerResponseString], [LearnerResponseNumeric], [ScaledScore], [RawScore], [MinScore], [MaxScore], [EvaluationPoints]
    FROM [InteractionItem]
)
GO
/****** Object:  Table [dbo].[GlobalObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[Key] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavOrganizationGlobalObjectiveView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavOrganizationGlobalObjectiveView view
CREATE FUNCTION [dbo].[SeqNavOrganizationGlobalObjectiveView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT GlobalObjectiveItem.OrganizationId OrganizationId, GlobalObjectiveItem.[Key] [Key], PackageGlobalObjectiveItem.LearnerId LearnerId, PackageGlobalObjectiveItem.ScaledScore ScaledScore, PackageGlobalObjectiveItem.SuccessStatus SuccessStatus
    FROM GlobalObjectiveItem
    INNER JOIN PackageGlobalObjectiveItem ON PackageGlobalObjectiveItem.GlobalObjectiveId=GlobalObjectiveItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavLearnerGlobalObjectiveView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavLearnerGlobalObjectiveView view
CREATE FUNCTION [dbo].[SeqNavLearnerGlobalObjectiveView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT LearnerGlobalObjectiveItem.LearnerId LearnerId, GlobalObjectiveItem.[Key] [Key], LearnerGlobalObjectiveItem.ScaledScore ScaledScore, LearnerGlobalObjectiveItem.SuccessStatus SuccessStatus
    FROM GlobalObjectiveItem
    INNER JOIN LearnerGlobalObjectiveItem ON LearnerGlobalObjectiveItem.GlobalObjectiveId=GlobalObjectiveItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[GlobalObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the GlobalObjectiveItem item type
CREATE FUNCTION [dbo].[GlobalObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [OrganizationId], [Key], [Description]
    FROM [GlobalObjectiveItem]
)
GO
/****** Object:  Table [dbo].[ExtensionDataItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtensionDataItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityAttemptId] [bigint] NULL,
	[InteractionId] [bigint] NULL,
	[AttemptObjectiveId] [bigint] NULL,
	[Name] [nvarchar](256) NULL,
	[AttachmentGuid] [uniqueidentifier] NULL,
	[AttachmentValue] [varbinary](max) NULL,
	[BoolValue] [bit] NULL,
	[DateTimeValue] [datetime] NULL,
	[DoubleValue] [float] NULL,
	[IntValue] [int] NULL,
	[StringValue] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[ExtensionDataItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the ExtensionDataItem item type
CREATE FUNCTION [dbo].[ExtensionDataItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityAttemptId], [InteractionId], [AttemptObjectiveId], [Name], [AttachmentGuid], [AttachmentValue], [BoolValue], [DateTimeValue], [DoubleValue], [IntValue], [StringValue]
    FROM [ExtensionDataItem]
)
GO
/****** Object:  Table [dbo].[ActivityPackageItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityPackageItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityIdFromManifest] [nvarchar](max) NOT NULL,
	[OriginalPlacement] [int] NOT NULL,
	[ParentActivityId] [bigint] NULL,
	[PackageId] [bigint] NOT NULL,
	[PrimaryObjectiveId] [bigint] NULL,
	[ResourceId] [bigint] NULL,
	[PrimaryResourceFromManifest] [nvarchar](2000) NULL,
	[DataModelCache] [xml] NULL,
	[CompletionThreshold] [real] NULL,
	[Credit] [bit] NULL,
	[HideContinue] [bit] NOT NULL,
	[HidePrevious] [bit] NOT NULL,
	[HideExit] [bit] NOT NULL,
	[HideAbandon] [bit] NOT NULL,
	[IsVisibleInContents] [bit] NOT NULL,
	[LaunchData] [nvarchar](max) NULL,
	[MasteryScore] [real] NULL,
	[MaxAttempts] [int] NULL,
	[MaxTimeAllowed] [float] NULL,
	[ResourceParameters] [nvarchar](1000) NULL,
	[ScaledPassingScore] [real] NULL,
	[TimeLimitAction] [int] NULL,
	[Title] [nvarchar](200) NOT NULL,
	[ObjectivesGlobalToSystem] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavActivityTreeView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavActivityTreeView view
CREATE FUNCTION [dbo].[SeqNavActivityTreeView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    WITH TreeQuery(Id, ParentActivityId, DataModelCache, RootActivityId, ObjectivesGlobalToSystem)
    AS (
    SELECT Id, ParentActivityId, DataModelCache, Id, ObjectivesGlobalToSystem
    FROM ActivityPackageItem
    UNION ALL
    SELECT t1.Id, t1.ParentActivityId, t1.DataModelCache, t2.RootActivityId, t1.ObjectivesGlobalToSystem
    FROM TreeQuery t2
    INNER JOIN ActivityPackageItem t1 ON t1.ParentActivityId=t2.Id )
    SELECT Id, ParentActivityId, DataModelCache, RootActivityId, ObjectivesGlobalToSystem
    FROM TreeQuery
)
GO
/****** Object:  UserDefinedFunction [dbo].[ActivityPackageItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the ActivityPackageItem item type
CREATE FUNCTION [dbo].[ActivityPackageItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityIdFromManifest], [OriginalPlacement], [ParentActivityId], [PackageId], [PrimaryObjectiveId], [ResourceId], [PrimaryResourceFromManifest], [DataModelCache], [CompletionThreshold], [Credit], [HideContinue], [HidePrevious], [HideExit], [HideAbandon], [IsVisibleInContents], [LaunchData], [MasteryScore], [MaxAttempts], [MaxTimeAllowed], [ResourceParameters], [ScaledPassingScore], [TimeLimitAction], [Title], [ObjectivesGlobalToSystem]
    FROM [ActivityPackageItem]
)
GO
/****** Object:  Table [dbo].[ActivityObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityPackageId] [bigint] NOT NULL,
	[IsPrimaryObjective] [bit] NOT NULL,
	[Key] [nvarchar](max) NULL,
	[MinNormalizedMeasure] [real] NOT NULL,
	[SatisfiedByMeasure] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ActivityObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the ActivityObjectiveItem item type
CREATE FUNCTION [dbo].[ActivityObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityPackageId], [IsPrimaryObjective], [Key], [MinNormalizedMeasure], [SatisfiedByMeasure]
    FROM [ActivityObjectiveItem]
)
GO
/****** Object:  Table [dbo].[ActivityAttemptItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityAttemptItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AttemptId] [bigint] NOT NULL,
	[ActivityPackageId] [bigint] NOT NULL,
	[CompletionStatus] [int] NOT NULL,
	[AttemptCount] [int] NULL,
	[DataModelCache] [xml] NULL,
	[EvaluationPoints] [real] NULL,
	[Exit] [int] NULL,
	[LessonStatus] [int] NULL,
	[Location] [nvarchar](1000) NULL,
	[MinScore] [real] NULL,
	[MaxScore] [real] NULL,
	[ProgressMeasure] [real] NULL,
	[RandomPlacement] [int] NULL,
	[RawScore] [real] NULL,
	[ScaledScore] [real] NULL,
	[SequencingDataCache] [xml] NULL,
	[SessionStartTimestamp] [datetime] NULL,
	[SessionTime] [float] NULL,
	[SuccessStatus] [int] NULL,
	[SuspendData] [nvarchar](max) NULL,
	[TotalTime] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavActivityAttemptView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavActivityAttemptView view
CREATE FUNCTION [dbo].[SeqNavActivityAttemptView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ActivityAttemptItem.Id, ActivityAttemptItem.DataModelCache, ActivityAttemptItem.SequencingDataCache, ActivityAttemptItem.RandomPlacement, ActivityAttemptItem.AttemptId, ActivityAttemptItem.ActivityPackageId, ActivityPackageItem.DataModelCache StaticDataModelCache, ActivityPackageItem.ParentActivityId ParentId, ActivityPackageItem.ObjectivesGlobalToSystem ObjectivesGlobalToSystem, ActivityAttemptItem.CompletionStatus, ActivityAttemptItem.AttemptCount, ActivityAttemptItem.EvaluationPoints, ActivityAttemptItem.[Exit], ActivityAttemptItem.LessonStatus, ActivityAttemptItem.Location, ActivityAttemptItem.MinScore, ActivityAttemptItem.MaxScore, ActivityAttemptItem.ProgressMeasure, ActivityAttemptItem.RawScore, ActivityAttemptItem.ScaledScore, ActivityAttemptItem.SessionStartTimestamp, ActivityAttemptItem.SessionTime, ActivityAttemptItem.SuccessStatus, ActivityAttemptItem.SuspendData, ActivityAttemptItem.TotalTime
    FROM ActivityAttemptItem
    INNER JOIN ActivityPackageItem ON ActivityAttemptItem.ActivityPackageId=ActivityPackageItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[ActivityAttemptItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the ActivityAttemptItem item type
CREATE FUNCTION [dbo].[ActivityAttemptItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [AttemptId], [ActivityPackageId], [CompletionStatus], [AttemptCount], [DataModelCache], [EvaluationPoints], [Exit], [LessonStatus], [Location], [MinScore], [MaxScore], [ProgressMeasure], [RandomPlacement], [RawScore], [ScaledScore], [SequencingDataCache], [SessionStartTimestamp], [SessionTime], [SuccessStatus], [SuspendData], [TotalTime]
    FROM [ActivityAttemptItem]
)
GO
/****** Object:  Table [dbo].[AttemptObjectiveItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttemptObjectiveItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityAttemptId] [bigint] NOT NULL,
	[ActivityObjectiveId] [bigint] NULL,
	[CompletionStatus] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsPrimaryObjective] [bit] NOT NULL,
	[Key] [nvarchar](max) NULL,
	[LessonStatus] [int] NULL,
	[RawScore] [real] NULL,
	[MinScore] [real] NULL,
	[MaxScore] [real] NULL,
	[ProgressMeasure] [real] NULL,
	[ScaledScore] [real] NULL,
	[SuccessStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[AttemptObjectiveItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the AttemptObjectiveItem item type
CREATE FUNCTION [dbo].[AttemptObjectiveItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityAttemptId], [ActivityObjectiveId], [CompletionStatus], [Description], [IsPrimaryObjective], [Key], [LessonStatus], [RawScore], [MinScore], [MaxScore], [ProgressMeasure], [ScaledScore], [SuccessStatus]
    FROM [AttemptObjectiveItem]
)
GO
/****** Object:  Table [dbo].[AttemptItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttemptItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LearnerId] [bigint] NOT NULL,
	[RootActivityId] [bigint] NOT NULL,
	[CompletionStatus] [int] NOT NULL,
	[CurrentActivityId] [bigint] NULL,
	[SuspendedActivityId] [bigint] NULL,
	[PackageId] [bigint] NOT NULL,
	[AttemptStatus] [int] NOT NULL,
	[FinishedTimestamp] [datetime] NULL,
	[LogDetailSequencing] [bit] NOT NULL,
	[LogFinalSequencing] [bit] NOT NULL,
	[LogRollup] [bit] NOT NULL,
	[StartedTimestamp] [datetime] NULL,
	[SuccessStatus] [int] NOT NULL,
	[TotalPoints] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavCurrentActivityAttemptView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavCurrentActivityAttemptView view
CREATE FUNCTION [dbo].[SeqNavCurrentActivityAttemptView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ActivityAttemptItem.Id, ActivityAttemptItem.DataModelCache DataModelCache, ActivityAttemptItem.SequencingDataCache, ActivityAttemptItem.RandomPlacement, ActivityAttemptItem.AttemptId, ActivityPackageItem.DataModelCache StaticDataModelCache, ActivityPackageItem.ObjectivesGlobalToSystem ObjectivesGlobalToSystem, ActivityPackageItem.Credit Credit
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN ActivityPackageItem ON ActivityAttemptItem.ActivityPackageId=ActivityPackageItem.Id
    WHERE AttemptItem.CurrentActivityId=ActivityPackageItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptRubricView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptRubricView view
CREATE FUNCTION [dbo].[SeqNavAttemptRubricView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT RubricItem.Id RubricItemId, AttemptItem.Id AttemptId, RubricItem.InteractionId, RubricItem.Ordinal, RubricItem.IsSatisfied, RubricItem.Points
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN RubricItem ON RubricItem.InteractionId=InteractionItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptObjectiveView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptObjectiveView view
CREATE FUNCTION [dbo].[SeqNavAttemptObjectiveView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT AttemptObjectiveItem.Id AttemptObjectiveId, AttemptItem.Id AttemptId, AttemptObjectiveItem.CompletionStatus, AttemptObjectiveItem.Description, AttemptObjectiveItem.[Key], AttemptObjectiveItem.LessonStatus, AttemptObjectiveItem.RawScore, AttemptObjectiveItem.MinScore, AttemptObjectiveItem.MaxScore, AttemptObjectiveItem.ProgressMeasure, AttemptObjectiveItem.ScaledScore, AttemptObjectiveItem.SuccessStatus, AttemptObjectiveItem.ActivityAttemptId, AttemptObjectiveItem.IsPrimaryObjective
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN AttemptObjectiveItem ON AttemptObjectiveItem.ActivityAttemptId=ActivityAttemptItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptObjectiveExtensionDataView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptObjectiveExtensionDataView view
CREATE FUNCTION [dbo].[SeqNavAttemptObjectiveExtensionDataView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ExtensionDataItem.Id ExtensionDataId, ExtensionDataItem.AttemptObjectiveId, AttemptItem.Id AttemptId, ExtensionDataItem.Name, ExtensionDataItem.StringValue, ExtensionDataItem.IntValue, ExtensionDataItem.BoolValue, ExtensionDataItem.DoubleValue, ExtensionDataItem.DateTimeValue, ExtensionDataItem.AttachmentGuid, ExtensionDataItem.AttachmentValue
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN AttemptObjectiveItem ON AttemptObjectiveItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN ExtensionDataItem ON ExtensionDataItem.AttemptObjectiveId=AttemptObjectiveItem.Id
    WHERE ExtensionDataItem.InteractionId IS NULL AND
    ExtensionDataItem.AttemptObjectiveId IS NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptInteractionView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptInteractionView view
CREATE FUNCTION [dbo].[SeqNavAttemptInteractionView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT InteractionItem.Id InteractionId, AttemptItem.Id AttemptId, InteractionItem.InteractionIdFromCmi, InteractionItem.InteractionType, InteractionItem.Timestamp, InteractionItem.Weighting, InteractionItem.ResultState, InteractionItem.ResultNumeric, InteractionItem.Latency, InteractionItem.Description, InteractionItem.LearnerResponseBool, InteractionItem.LearnerResponseString, InteractionItem.LearnerResponseNumeric, InteractionItem.ScaledScore, InteractionItem.RawScore, InteractionItem.MinScore, InteractionItem.MaxScore, InteractionItem.ActivityAttemptId, InteractionItem.EvaluationPoints
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptInteractionObjectiveView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptInteractionObjectiveView view
CREATE FUNCTION [dbo].[SeqNavAttemptInteractionObjectiveView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT InteractionObjectiveItem.Id InteractionObjectiveId, AttemptItem.Id AttemptId, InteractionObjectiveItem.AttemptObjectiveId, InteractionObjectiveItem.InteractionId
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN InteractionObjectiveItem ON InteractionObjectiveItem.InteractionId=InteractionItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptInteractionExtensionDataView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptInteractionExtensionDataView view
CREATE FUNCTION [dbo].[SeqNavAttemptInteractionExtensionDataView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ExtensionDataItem.Id ExtensionDataId, ExtensionDataItem.InteractionId, AttemptItem.Id AttemptId, ExtensionDataItem.Name, ExtensionDataItem.StringValue, ExtensionDataItem.IntValue, ExtensionDataItem.BoolValue, ExtensionDataItem.DoubleValue, ExtensionDataItem.DateTimeValue, ExtensionDataItem.AttachmentGuid, ExtensionDataItem.AttachmentValue
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN ExtensionDataItem ON ExtensionDataItem.InteractionId=InteractionItem.Id
    WHERE ExtensionDataItem.AttemptObjectiveId IS NULL AND
    ExtensionDataItem.InteractionId IS NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptExtensionDataView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptExtensionDataView view
CREATE FUNCTION [dbo].[SeqNavAttemptExtensionDataView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ExtensionDataItem.Id ExtensionDataId, AttemptItem.Id AttemptId, ExtensionDataItem.Name, ExtensionDataItem.StringValue, ExtensionDataItem.IntValue, ExtensionDataItem.BoolValue, ExtensionDataItem.DoubleValue, ExtensionDataItem.DateTimeValue, ExtensionDataItem.AttachmentGuid, ExtensionDataItem.ActivityAttemptId
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN ExtensionDataItem ON ExtensionDataItem.ActivityAttemptId=ActivityAttemptItem.Id
    WHERE ExtensionDataItem.AttemptObjectiveId IS NULL AND
    ExtensionDataItem.InteractionId IS NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptEvaluationCommentLearnerView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptEvaluationCommentLearnerView view
CREATE FUNCTION [dbo].[SeqNavAttemptEvaluationCommentLearnerView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT EvaluationCommentItem.Id EvaluationCommentId, AttemptItem.Id AttemptId, EvaluationCommentItem.Comment, EvaluationCommentItem.Location, EvaluationCommentItem.Timestamp, EvaluationCommentItem.InteractionId, EvaluationCommentItem.Ordinal
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN EvaluationCommentItem ON EvaluationCommentItem.InteractionId=InteractionItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[AttemptItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the AttemptItem item type
CREATE FUNCTION [dbo].[AttemptItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [LearnerId], [RootActivityId], [CompletionStatus], [CurrentActivityId], [SuspendedActivityId], [PackageId], [AttemptStatus], [FinishedTimestamp], [LogDetailSequencing], [LogFinalSequencing], [LogRollup], [StartedTimestamp], [SuccessStatus], [TotalPoints]
    FROM [AttemptItem]
)
GO
/****** Object:  Table [dbo].[CommentFromLmsItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentFromLmsItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityPackageId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](28) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavCurrentCommentFromLmsView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavCurrentCommentFromLmsView view
CREATE FUNCTION [dbo].[SeqNavCurrentCommentFromLmsView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT CommentFromLmsItem.Comment, CommentFromLmsItem.Location, CommentFromLmsItem.Timestamp, AttemptItem.Id AttemptId, ActivityAttemptItem.DataModelCache
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN ActivityPackageItem ON ActivityAttemptItem.ActivityPackageId=ActivityPackageItem.Id
    INNER JOIN CommentFromLmsItem ON ActivityPackageItem.Id=CommentFromLmsItem.ActivityPackageId
    WHERE AttemptItem.CurrentActivityId=ActivityPackageItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[CommentFromLmsItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the CommentFromLmsItem item type
CREATE FUNCTION [dbo].[CommentFromLmsItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityPackageId], [Comment], [Location], [Timestamp]
    FROM [CommentFromLmsItem]
)
GO
/****** Object:  Table [dbo].[CommentFromLearnerItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentFromLearnerItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityAttemptId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](255) NULL,
	[Ordinal] [int] NOT NULL,
	[Timestamp] [nvarchar](28) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptCommentFromLearnerView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptCommentFromLearnerView view
CREATE FUNCTION [dbo].[SeqNavAttemptCommentFromLearnerView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT CommentFromLearnerItem.Id CommentFromLearnerId, AttemptItem.Id AttemptId, CommentFromLearnerItem.Comment, CommentFromLearnerItem.Location, CommentFromLearnerItem.Timestamp, CommentFromLearnerItem.ActivityAttemptId, CommentFromLearnerItem.Ordinal
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN CommentFromLearnerItem ON CommentFromLearnerItem.ActivityAttemptId=ActivityAttemptItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[CommentFromLearnerItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the CommentFromLearnerItem item type
CREATE FUNCTION [dbo].[CommentFromLearnerItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [ActivityAttemptId], [Comment], [Location], [Ordinal], [Timestamp]
    FROM [CommentFromLearnerItem]
)
GO
/****** Object:  Table [dbo].[CorrectResponseItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrectResponseItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InteractionId] [bigint] NOT NULL,
	[ResponsePattern] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptCorrectResponseView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptCorrectResponseView view
CREATE FUNCTION [dbo].[SeqNavAttemptCorrectResponseView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT CorrectResponseItem.Id CorrectResponseId, AttemptItem.Id AttemptId, CorrectResponseItem.InteractionId, CorrectResponseItem.ResponsePattern
    FROM AttemptItem
    INNER JOIN ActivityAttemptItem ON AttemptItem.Id=ActivityAttemptItem.AttemptId
    INNER JOIN InteractionItem ON InteractionItem.ActivityAttemptId=ActivityAttemptItem.Id
    INNER JOIN CorrectResponseItem ON CorrectResponseItem.InteractionId=InteractionItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[CorrectResponseItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the CorrectResponseItem item type
CREATE FUNCTION [dbo].[CorrectResponseItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [InteractionId], [ResponsePattern]
    FROM [CorrectResponseItem]
)
GO
/****** Object:  Table [dbo].[Configuration]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration](
	[EngineVersion] [int] NOT NULL,
	[SchemaDefinition] [xml] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompletionStatus]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompletionStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AudioCaptioning]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AudioCaptioning](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttemptStatus]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttemptStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[AddPackageReferenceRight]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the AddPackageReferenceRight right
CREATE FUNCTION [dbo].[AddPackageReferenceRight](@UserKey nvarchar(250))
RETURNS bit
AS
BEGIN
    RETURN (1)
END
GO
/****** Object:  Table [dbo].[ExitMode]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExitMode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LessonStatus]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LessonStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DisplayMode]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DisplayMode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InteractionType]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InteractionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InteractionResultState]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InteractionResultState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageFormat]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageFormat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NavigationCommand]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NavigationCommand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[MyAttemptsAndPackages$Security]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the MyAttemptsAndPackages view
CREATE FUNCTION [dbo].[MyAttemptsAndPackages$Security](@UserKey nvarchar(250))
RETURNS bit
AS
BEGIN
    RETURN (1)
END
GO
/****** Object:  Table [dbo].[TimeLimitAction]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeLimitAction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SuccessStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SequencingEventType]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SequencingEventType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[Me$Security]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the Me view
CREATE FUNCTION [dbo].[Me$Security](@UserKey nvarchar(250))
RETURNS bit
AS
BEGIN
    RETURN (1)
END
GO
/****** Object:  UserDefinedFunction [dbo].[UserItem$AddSecurity]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the add security on the UserItem item type
CREATE FUNCTION [dbo].[UserItem$AddSecurity](@UserKey nvarchar(250),@Key nvarchar(250),@Name nvarchar(255),@AudioCaptioning int=0,@AudioLevel float(24)=1,@DeliverySpeed float(24)=1,@Language nvarchar(255)='')
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN @Key=@UserKey THEN 1 ELSE 0 END)
END
GO
/****** Object:  Table [dbo].[UserItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[AudioCaptioning] [int] NOT NULL,
	[AudioLevel] [real] NOT NULL,
	[DeliverySpeed] [real] NOT NULL,
	[Language] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SequencingLog$Security]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the SequencingLog view
CREATE FUNCTION [dbo].[SequencingLog$Security](@UserKey nvarchar(250),@AttemptId bigint=NULL)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN EXISTS(SELECT * FROM AttemptItem INNER JOIN UserItem ON AttemptItem.LearnerId=UserItem.Id WHERE AttemptItem.Id=@AttemptId AND UserItem.[Key]=@UserKey) THEN 1 ELSE 0 END)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ExecuteSessionRight]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the ExecuteSessionRight right
CREATE FUNCTION [dbo].[ExecuteSessionRight](@UserKey nvarchar(250),@AttemptId bigint=NULL)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN EXISTS(SELECT * FROM AttemptItem INNER JOIN UserItem ON AttemptItem.LearnerId=UserItem.Id WHERE AttemptItem.Id=@AttemptId AND UserItem.[Key]=@UserKey) THEN 1 ELSE 0 END)
END
GO
/****** Object:  UserDefinedFunction [dbo].[DeleteAttemptRight]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the DeleteAttemptRight right
CREATE FUNCTION [dbo].[DeleteAttemptRight](@UserKey nvarchar(250),@AttemptId bigint=NULL)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN EXISTS(SELECT * FROM AttemptItem INNER JOIN UserItem ON AttemptItem.LearnerId=UserItem.Id WHERE AttemptItem.Id=@AttemptId AND UserItem.[Key]=@UserKey) THEN 1 ELSE 0 END)
END
GO
/****** Object:  Table [dbo].[PackageItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PackageFormat] [int] NOT NULL,
	[Location] [nvarchar](260) NOT NULL,
	[Manifest] [xml] NOT NULL,
	[Owner] [bigint] NULL,
	[FileName] [nvarchar](260) NOT NULL,
	[UploadDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavAttemptView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavAttemptView view
CREATE FUNCTION [dbo].[SeqNavAttemptView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT AttemptItem.Id Id, AttemptItem.AttemptStatus, AttemptItem.LogDetailSequencing, AttemptItem.LogFinalSequencing, AttemptItem.LogRollup, AttemptItem.CurrentActivityId, AttemptItem.SuspendedActivityId, AttemptItem.RootActivityId,AttemptItem.StartedTimestamp, AttemptItem.FinishedTimestamp,PackageItem.Id PackageId, PackageItem.PackageFormat PackageFormat, PackageItem.Location PackagePath, UserItem.Id LearnerId, UserItem.Name LearnerName, UserItem.AudioCaptioning LearnerAudioCaptioning, UserItem.AudioLevel LearnerAudioLevel, UserItem.DeliverySpeed LearnerDeliverySpeed, UserItem.Language LearnerLanguage, AttemptItem.TotalPoints, AttemptItem.SuccessStatus, AttemptItem.CompletionStatus
    FROM AttemptItem
    INNER JOIN PackageItem ON AttemptItem.PackageId=PackageItem.Id
    INNER JOIN UserItem ON AttemptItem.LearnerId=UserItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[SeqNavActivityPackageView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the SeqNavActivityPackageView view
CREATE FUNCTION [dbo].[SeqNavActivityPackageView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT ActivityPackageItem.Id, ActivityPackageItem.PackageId,PackageItem.PackageFormat PackageFormat, PackageItem.Location PackagePath
    FROM ActivityPackageItem
    INNER JOIN PackageItem ON ActivityPackageItem.PackageId=PackageItem.Id
)
GO
/****** Object:  UserDefinedFunction [dbo].[MyAttemptsAndPackages]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the MyAttemptsAndPackages view
CREATE FUNCTION [dbo].[MyAttemptsAndPackages](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT PackageItem.Id AS PackageId,
    PackageItem.FileName AS PackageFileName,
    ActivityPackageItem.Id AS OrganizationId,
    ActivityPackageItem.Title AS OrganizationTitle,
    AttemptItem.Id AS AttemptId,
    PackageItem.UploadDateTime,
    AttemptItem.AttemptStatus,
    AttemptItem.TotalPoints
    FROM ActivityPackageItem
    INNER JOIN PackageItem ON ActivityPackageItem.PackageId = PackageItem.Id
    LEFT OUTER JOIN ActivityAttemptItem ON ActivityPackageItem.Id = ActivityAttemptItem.ActivityPackageId
    LEFT OUTER JOIN AttemptItem ON ActivityAttemptItem.AttemptId = AttemptItem.Id
    INNER JOIN UserItem ON PackageItem.Owner = UserItem.Id
    WHERE (ActivityPackageItem.ParentActivityId IS NULL)
    AND (UserItem.[Key] = @UserKey)
)
GO
/****** Object:  UserDefinedFunction [dbo].[CreateAttemptRight]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the CreateAttemptRight right
CREATE FUNCTION [dbo].[CreateAttemptRight](@UserKey nvarchar(250),@RootActivityId bigint=NULL,@LearnerId bigint=NULL)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN
    (EXISTS(SELECT * FROM ActivityPackageItem INNER JOIN PackageItem ON ActivityPackageItem.PackageId=PackageItem.Id INNER JOIN UserItem ON PackageItem.Owner=UserItem.Id WHERE ActivityPackageItem.Id=@RootActivityId AND UserItem.[Key]=@UserKey)) AND
    (EXISTS(SELECT * FROM UserItem WHERE UserItem.[Key]=@UserKey AND Id=@LearnerId)) THEN 1 ELSE 0 END)
END
GO
/****** Object:  UserDefinedFunction [dbo].[UserItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the UserItem item type
CREATE FUNCTION [dbo].[UserItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [Key], [Name], [AudioCaptioning], [AudioLevel], [DeliverySpeed], [Language]
    FROM [UserItem]
)
GO
/****** Object:  UserDefinedFunction [dbo].[Me]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create a function that implements the Me view
CREATE FUNCTION [dbo].[Me](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id AS UserId,
    Name AS UserName
    FROM UserItem
    WHERE [Key]=@UserKey
)
GO
/****** Object:  Table [dbo].[ResourceItem]    Script Date: 11/27/2010 21:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PackageId] [bigint] NOT NULL,
	[ResourceXml] [xml] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[RemovePackageReferenceRight]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the security on the RemovePackageReferenceRight right
CREATE FUNCTION [dbo].[RemovePackageReferenceRight](@UserKey nvarchar(250),@PackageId bigint=NULL)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN EXISTS(SELECT * FROM PackageItem INNER JOIN UserItem ON PackageItem.Owner=UserItem.Id WHERE PackageItem.Id=@PackageId AND UserItem.[Key]=@UserKey) THEN 1 ELSE 0 END)
END
GO
/****** Object:  UserDefinedFunction [dbo].[PackageItem$UpdateSecurity]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function for the update security on the PackageItem item type
CREATE FUNCTION [dbo].[PackageItem$UpdateSecurity](@UserKey nvarchar(250),@Id bigint,@PackageFormat$Changed bit,@PackageFormat int,@Location$Changed bit,@Location nvarchar(260),@Manifest$Changed bit,@Manifest xml,@Owner$Changed bit,@Owner bigint,@FileName$Changed bit,@FileName nvarchar(260),@UploadDateTime$Changed bit,@UploadDateTime datetime)
RETURNS bit
AS
BEGIN
    RETURN (CASE WHEN @PackageFormat$Changed=0 AND @Location$Changed=0 AND @Manifest$Changed=0 AND
    EXISTS(SELECT * FROM PackageItem WHERE Id=@Id AND Owner IS NULL) AND @Owner$Changed=1 AND
    EXISTS(SELECT * FROM UserItem WHERE Id=@Owner AND [Key]=@UserKey) THEN 1 ELSE 0 END)
END
GO
/****** Object:  UserDefinedFunction [dbo].[PackageItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the PackageItem item type
CREATE FUNCTION [dbo].[PackageItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [PackageFormat], [Location], [Manifest], [Owner], [FileName], [UploadDateTime]
    FROM [PackageItem]
)
GO
/****** Object:  UserDefinedFunction [dbo].[ResourceItem$DefaultView]    Script Date: 11/27/2010 21:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create function that implements the default view for the ResourceItem item type
CREATE FUNCTION [dbo].[ResourceItem$DefaultView](@UserKey nvarchar(250))
RETURNS TABLE
AS
RETURN (
    SELECT Id, [PackageId], [ResourceXml]
    FROM [ResourceItem]
)
GO
/****** Object:  Default [DF__ActivityA__Compl__173876EA]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT ((0)) FOR [CompletionStatus]
GO
/****** Object:  Default [DF__ActivityA__Attem__182C9B23]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [AttemptCount]
GO
/****** Object:  Default [DF__ActivityA__DataM__1920BF5C]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [DataModelCache]
GO
/****** Object:  Default [DF__ActivityA__Evalu__1A14E395]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [EvaluationPoints]
GO
/****** Object:  Default [DF__ActivityAt__Exit__1B0907CE]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [Exit]
GO
/****** Object:  Default [DF__ActivityA__Lesso__1BFD2C07]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [LessonStatus]
GO
/****** Object:  Default [DF__ActivityA__Locat__1CF15040]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [Location]
GO
/****** Object:  Default [DF__ActivityA__MinSc__1DE57479]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [MinScore]
GO
/****** Object:  Default [DF__ActivityA__MaxSc__1ED998B2]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [MaxScore]
GO
/****** Object:  Default [DF__ActivityA__Progr__1FCDBCEB]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [ProgressMeasure]
GO
/****** Object:  Default [DF__ActivityA__Rando__20C1E124]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [RandomPlacement]
GO
/****** Object:  Default [DF__ActivityA__RawSc__21B6055D]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [RawScore]
GO
/****** Object:  Default [DF__ActivityA__Scale__22AA2996]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [ScaledScore]
GO
/****** Object:  Default [DF__ActivityA__Seque__239E4DCF]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [SequencingDataCache]
GO
/****** Object:  Default [DF__ActivityA__Sessi__24927208]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [SessionStartTimestamp]
GO
/****** Object:  Default [DF__ActivityA__Sessi__25869641]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [SessionTime]
GO
/****** Object:  Default [DF__ActivityA__Succe__267ABA7A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [SuccessStatus]
GO
/****** Object:  Default [DF__ActivityA__Suspe__276EDEB3]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT (NULL) FOR [SuspendData]
GO
/****** Object:  Default [DF__ActivityA__Total__29572725]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem] ADD  DEFAULT ((0)) FOR [TotalTime]
GO
/****** Object:  Default [DF__ActivityO__IsPri__2C3393D0]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityObjectiveItem] ADD  DEFAULT ((0)) FOR [IsPrimaryObjective]
GO
/****** Object:  Default [DF__ActivityO__MinNo__2E1BDC42]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityObjectiveItem] ADD  DEFAULT ((1)) FOR [MinNormalizedMeasure]
GO
/****** Object:  Default [DF__ActivityO__Satis__2F10007B]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityObjectiveItem] ADD  DEFAULT ((0)) FOR [SatisfiedByMeasure]
GO
/****** Object:  Default [DF__ActivityP__Paren__32E0915F]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [ParentActivityId]
GO
/****** Object:  Default [DF__ActivityP__Prima__33D4B598]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [PrimaryObjectiveId]
GO
/****** Object:  Default [DF__ActivityP__Resou__34C8D9D1]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [ResourceId]
GO
/****** Object:  Default [DF__ActivityP__Prima__35BCFE0A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [PrimaryResourceFromManifest]
GO
/****** Object:  Default [DF__ActivityP__DataM__36B12243]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [DataModelCache]
GO
/****** Object:  Default [DF__ActivityP__Compl__37A5467C]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [CompletionThreshold]
GO
/****** Object:  Default [DF__ActivityP__Credi__38996AB5]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((1)) FOR [Credit]
GO
/****** Object:  Default [DF__ActivityP__HideC__398D8EEE]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((0)) FOR [HideContinue]
GO
/****** Object:  Default [DF__ActivityP__HideP__3A81B327]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((0)) FOR [HidePrevious]
GO
/****** Object:  Default [DF__ActivityP__HideE__3B75D760]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((0)) FOR [HideExit]
GO
/****** Object:  Default [DF__ActivityP__HideA__3C69FB99]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((0)) FOR [HideAbandon]
GO
/****** Object:  Default [DF__ActivityP__IsVis__3D5E1FD2]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((1)) FOR [IsVisibleInContents]
GO
/****** Object:  Default [DF__ActivityP__Launc__3E52440B]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [LaunchData]
GO
/****** Object:  Default [DF__ActivityP__Maste__403A8C7D]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [MasteryScore]
GO
/****** Object:  Default [DF__ActivityP__MaxAt__412EB0B6]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [MaxAttempts]
GO
/****** Object:  Default [DF__ActivityP__MaxTi__4222D4EF]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((0)) FOR [MaxTimeAllowed]
GO
/****** Object:  Default [DF__ActivityP__Resou__4316F928]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [ResourceParameters]
GO
/****** Object:  Default [DF__ActivityP__Scale__440B1D61]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [ScaledPassingScore]
GO
/****** Object:  Default [DF__ActivityP__TimeL__44FF419A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT (NULL) FOR [TimeLimitAction]
GO
/****** Object:  Default [DF__ActivityP__Objec__45F365D3]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem] ADD  DEFAULT ((1)) FOR [ObjectivesGlobalToSystem]
GO
/****** Object:  Default [DF__AttemptIt__Compl__4CA06362]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [CompletionStatus]
GO
/****** Object:  Default [DF__AttemptIt__Curre__4D94879B]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT (NULL) FOR [CurrentActivityId]
GO
/****** Object:  Default [DF__AttemptIt__Suspe__4E88ABD4]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT (NULL) FOR [SuspendedActivityId]
GO
/****** Object:  Default [DF__AttemptIt__Attem__4F7CD00D]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [AttemptStatus]
GO
/****** Object:  Default [DF__AttemptIt__Finis__5070F446]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT (NULL) FOR [FinishedTimestamp]
GO
/****** Object:  Default [DF__AttemptIt__LogDe__5165187F]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [LogDetailSequencing]
GO
/****** Object:  Default [DF__AttemptIt__LogFi__52593CB8]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [LogFinalSequencing]
GO
/****** Object:  Default [DF__AttemptIt__LogRo__534D60F1]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [LogRollup]
GO
/****** Object:  Default [DF__AttemptIt__Succe__5441852A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT ((0)) FOR [SuccessStatus]
GO
/****** Object:  Default [DF__AttemptIt__Total__5535A963]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem] ADD  DEFAULT (NULL) FOR [TotalPoints]
GO
/****** Object:  Default [DF__AttemptOb__Activ__5812160E]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [ActivityObjectiveId]
GO
/****** Object:  Default [DF__AttemptOb__Compl__59063A47]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT ((0)) FOR [CompletionStatus]
GO
/****** Object:  Default [DF__AttemptOb__Descr__59FA5E80]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF__AttemptOb__IsPri__5AEE82B9]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT ((0)) FOR [IsPrimaryObjective]
GO
/****** Object:  Default [DF__AttemptOb__Lesso__5CD6CB2B]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT ((0)) FOR [LessonStatus]
GO
/****** Object:  Default [DF__AttemptOb__RawSc__5DCAEF64]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [RawScore]
GO
/****** Object:  Default [DF__AttemptOb__MinSc__5EBF139D]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [MinScore]
GO
/****** Object:  Default [DF__AttemptOb__MaxSc__5FB337D6]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [MaxScore]
GO
/****** Object:  Default [DF__AttemptOb__Progr__60A75C0F]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [ProgressMeasure]
GO
/****** Object:  Default [DF__AttemptOb__Scale__619B8048]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT (NULL) FOR [ScaledScore]
GO
/****** Object:  Default [DF__AttemptOb__Succe__628FA481]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem] ADD  DEFAULT ((0)) FOR [SuccessStatus]
GO
/****** Object:  Default [DF__Extension__Activ__6FE99F9F]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [ActivityAttemptId]
GO
/****** Object:  Default [DF__Extension__Inter__70DDC3D8]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [InteractionId]
GO
/****** Object:  Default [DF__Extension__Attem__71D1E811]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [AttemptObjectiveId]
GO
/****** Object:  Default [DF__ExtensionD__Name__72C60C4A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [Name]
GO
/****** Object:  Default [DF__Extension__Attac__73BA3083]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [AttachmentGuid]
GO
/****** Object:  Default [DF__Extension__Attac__74AE54BC]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [AttachmentValue]
GO
/****** Object:  Default [DF__Extension__BoolV__75A278F5]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [BoolValue]
GO
/****** Object:  Default [DF__Extension__DateT__76969D2E]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [DateTimeValue]
GO
/****** Object:  Default [DF__Extension__Doubl__778AC167]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [DoubleValue]
GO
/****** Object:  Default [DF__Extension__IntVa__787EE5A0]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [IntValue]
GO
/****** Object:  Default [DF__Extension__Strin__797309D9]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem] ADD  DEFAULT (NULL) FOR [StringValue]
GO
/****** Object:  Default [DF__GlobalObj__Organ__7D439ABD]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[GlobalObjectiveItem] ADD  DEFAULT (NULL) FOR [OrganizationId]
GO
/****** Object:  Default [DF__GlobalObj__Descr__7F2BE32F]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[GlobalObjectiveItem] ADD  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF__Interacti__Inter__03F0984C]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [InteractionType]
GO
/****** Object:  Default [DF__Interacti__Times__04E4BC85]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [Timestamp]
GO
/****** Object:  Default [DF__Interacti__Weigh__05D8E0BE]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [Weighting]
GO
/****** Object:  Default [DF__Interacti__Resul__06CD04F7]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [ResultState]
GO
/****** Object:  Default [DF__Interacti__Resul__07C12930]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [ResultNumeric]
GO
/****** Object:  Default [DF__Interacti__Laten__08B54D69]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [Latency]
GO
/****** Object:  Default [DF__Interacti__Descr__09A971A2]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF__Interacti__Learn__0A9D95DB]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [LearnerResponseBool]
GO
/****** Object:  Default [DF__Interacti__Learn__0B91BA14]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [LearnerResponseString]
GO
/****** Object:  Default [DF__Interacti__Learn__0C85DE4D]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [LearnerResponseNumeric]
GO
/****** Object:  Default [DF__Interacti__Scale__0D7A0286]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [ScaledScore]
GO
/****** Object:  Default [DF__Interacti__RawSc__0E6E26BF]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [RawScore]
GO
/****** Object:  Default [DF__Interacti__MinSc__0F624AF8]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [MinScore]
GO
/****** Object:  Default [DF__Interacti__MaxSc__10566F31]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [MaxScore]
GO
/****** Object:  Default [DF__Interacti__Evalu__114A936A]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem] ADD  DEFAULT (NULL) FOR [EvaluationPoints]
GO
/****** Object:  Default [DF__LearnerGl__Scale__160F4887]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem] ADD  DEFAULT (NULL) FOR [ScaledScore]
GO
/****** Object:  Default [DF__LearnerGl__Succe__17036CC0]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem] ADD  DEFAULT ((0)) FOR [SuccessStatus]
GO
/****** Object:  Default [DF__MapActivi__ReadS__19DFD96B]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] ADD  DEFAULT ((1)) FOR [ReadSatisfiedStatus]
GO
/****** Object:  Default [DF__MapActivi__ReadN__1AD3FDA4]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] ADD  DEFAULT ((1)) FOR [ReadNormalizedMeasure]
GO
/****** Object:  Default [DF__MapActivi__Write__1BC821DD]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] ADD  DEFAULT ((0)) FOR [WriteSatisfiedStatus]
GO
/****** Object:  Default [DF__MapActivi__Write__1CBC4616]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] ADD  DEFAULT ((0)) FOR [WriteNormalizedMeasure]
GO
/****** Object:  Default [DF__PackageGl__Scale__48CFD27E]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageGlobalObjectiveItem] ADD  DEFAULT (NULL) FOR [ScaledScore]
GO
/****** Object:  Default [DF__PackageGl__Succe__49C3F6B7]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageGlobalObjectiveItem] ADD  DEFAULT ((0)) FOR [SuccessStatus]
GO
/****** Object:  Default [DF__PackageIt__Owner__1F98B2C1]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageItem] ADD  DEFAULT (NULL) FOR [Owner]
GO
/****** Object:  Default [DF__PackageIt__FileN__208CD6FA]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageItem] ADD  DEFAULT ('') FOR [FileName]
GO
/****** Object:  Default [DF__PackageIt__Uploa__2180FB33]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageItem] ADD  DEFAULT (NULL) FOR [UploadDateTime]
GO
/****** Object:  Default [DF__RubricIte__IsSat__245D67DE]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[RubricItem] ADD  DEFAULT (NULL) FOR [IsSatisfied]
GO
/****** Object:  Default [DF__RubricIte__Point__25518C17]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[RubricItem] ADD  DEFAULT (NULL) FOR [Points]
GO
/****** Object:  Default [DF__UserItem__AudioC__2BFE89A6]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[UserItem] ADD  DEFAULT ((0)) FOR [AudioCaptioning]
GO
/****** Object:  Default [DF__UserItem__AudioL__2CF2ADDF]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[UserItem] ADD  DEFAULT ((1)) FOR [AudioLevel]
GO
/****** Object:  Default [DF__UserItem__Delive__2DE6D218]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[UserItem] ADD  DEFAULT ((1)) FOR [DeliverySpeed]
GO
/****** Object:  Default [DF__UserItem__Langua__2EDAF651]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[UserItem] ADD  DEFAULT ('') FOR [Language]
GO
/****** Object:  Check [CK__ActivityA__Suspe__286302EC]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD CHECK  ((len([SuspendData])<=(4096)))
GO
/****** Object:  Check [CK__ActivityObj__Key__2D27B809]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityObjectiveItem]  WITH CHECK ADD CHECK  ((len([Key])<=(4096)))
GO
/****** Object:  Check [CK__ActivityP__Activ__31EC6D26]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD CHECK  ((len([ActivityIdFromManifest])<=(4096)))
GO
/****** Object:  Check [CK__ActivityP__Launc__3F466844]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD CHECK  ((len([LaunchData])<=(4096)))
GO
/****** Object:  Check [CK__AttemptObje__Key__5BE2A6F2]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD CHECK  ((len([Key])<=(4096)))
GO
/****** Object:  Check [CK__CommentFr__Comme__656C112C]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[CommentFromLearnerItem]  WITH CHECK ADD CHECK  ((len([Comment])<=(4096)))
GO
/****** Object:  Check [CK__CommentFr__Comme__68487DD7]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[CommentFromLmsItem]  WITH CHECK ADD CHECK  ((len([Comment])<=(4096)))
GO
/****** Object:  Check [CK__Evaluatio__Comme__6D0D32F4]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[EvaluationCommentItem]  WITH CHECK ADD CHECK  ((len([Comment])<=(4096)))
GO
/****** Object:  Check [CK__Extension__Strin__7A672E12]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem]  WITH CHECK ADD CHECK  ((len([StringValue])<=(4096)))
GO
/****** Object:  Check [CK__GlobalObj__Descr__00200768]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[GlobalObjectiveItem]  WITH CHECK ADD CHECK  ((len([Description])<=(4096)))
GO
/****** Object:  Check [CK__GlobalObjec__Key__7E37BEF6]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[GlobalObjectiveItem]  WITH CHECK ADD CHECK  ((len([Key])<=(4096)))
GO
/****** Object:  Check [CK__Interacti__Inter__02FC7413]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem]  WITH CHECK ADD CHECK  ((len([InteractionIdFromCmi])<=(4096)))
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_ActivityPackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_ActivityPackageId] FOREIGN KEY([ActivityPackageId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_ActivityPackageId]
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_AttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_AttemptId] FOREIGN KEY([AttemptId])
REFERENCES [dbo].[AttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_AttemptId]
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_CompletionStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_CompletionStatus] FOREIGN KEY([CompletionStatus])
REFERENCES [dbo].[CompletionStatus] ([Id])
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_CompletionStatus]
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_Exit]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_Exit] FOREIGN KEY([Exit])
REFERENCES [dbo].[ExitMode] ([Id])
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_Exit]
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_LessonStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_LessonStatus] FOREIGN KEY([LessonStatus])
REFERENCES [dbo].[LessonStatus] ([Id])
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_LessonStatus]
GO
/****** Object:  ForeignKey [FK_ActivityAttemptItem_SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityAttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityAttemptItem_SuccessStatus] FOREIGN KEY([SuccessStatus])
REFERENCES [dbo].[SuccessStatus] ([Id])
GO
ALTER TABLE [dbo].[ActivityAttemptItem] CHECK CONSTRAINT [FK_ActivityAttemptItem_SuccessStatus]
GO
/****** Object:  ForeignKey [FK_ActivityObjectiveItem_ActivityPackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityObjectiveItem_ActivityPackageId] FOREIGN KEY([ActivityPackageId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityObjectiveItem] CHECK CONSTRAINT [FK_ActivityObjectiveItem_ActivityPackageId]
GO
/****** Object:  ForeignKey [FK_ActivityPackageItem_PackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityPackageItem_PackageId] FOREIGN KEY([PackageId])
REFERENCES [dbo].[PackageItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityPackageItem] CHECK CONSTRAINT [FK_ActivityPackageItem_PackageId]
GO
/****** Object:  ForeignKey [FK_ActivityPackageItem_ParentActivityId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityPackageItem_ParentActivityId] FOREIGN KEY([ParentActivityId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
GO
ALTER TABLE [dbo].[ActivityPackageItem] CHECK CONSTRAINT [FK_ActivityPackageItem_ParentActivityId]
GO
/****** Object:  ForeignKey [FK_ActivityPackageItem_PrimaryObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityPackageItem_PrimaryObjectiveId] FOREIGN KEY([PrimaryObjectiveId])
REFERENCES [dbo].[ActivityObjectiveItem] ([Id])
GO
ALTER TABLE [dbo].[ActivityPackageItem] CHECK CONSTRAINT [FK_ActivityPackageItem_PrimaryObjectiveId]
GO
/****** Object:  ForeignKey [FK_ActivityPackageItem_ResourceId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityPackageItem_ResourceId] FOREIGN KEY([ResourceId])
REFERENCES [dbo].[ResourceItem] ([Id])
GO
ALTER TABLE [dbo].[ActivityPackageItem] CHECK CONSTRAINT [FK_ActivityPackageItem_ResourceId]
GO
/****** Object:  ForeignKey [FK_ActivityPackageItem_TimeLimitAction]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ActivityPackageItem]  WITH CHECK ADD  CONSTRAINT [FK_ActivityPackageItem_TimeLimitAction] FOREIGN KEY([TimeLimitAction])
REFERENCES [dbo].[TimeLimitAction] ([Id])
GO
ALTER TABLE [dbo].[ActivityPackageItem] CHECK CONSTRAINT [FK_ActivityPackageItem_TimeLimitAction]
GO
/****** Object:  ForeignKey [FK_AttemptItem_AttemptStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_AttemptStatus] FOREIGN KEY([AttemptStatus])
REFERENCES [dbo].[AttemptStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_AttemptStatus]
GO
/****** Object:  ForeignKey [FK_AttemptItem_CompletionStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_CompletionStatus] FOREIGN KEY([CompletionStatus])
REFERENCES [dbo].[CompletionStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_CompletionStatus]
GO
/****** Object:  ForeignKey [FK_AttemptItem_CurrentActivityId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_CurrentActivityId] FOREIGN KEY([CurrentActivityId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_CurrentActivityId]
GO
/****** Object:  ForeignKey [FK_AttemptItem_LearnerId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_LearnerId] FOREIGN KEY([LearnerId])
REFERENCES [dbo].[UserItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_LearnerId]
GO
/****** Object:  ForeignKey [FK_AttemptItem_PackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_PackageId] FOREIGN KEY([PackageId])
REFERENCES [dbo].[PackageItem] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_PackageId]
GO
/****** Object:  ForeignKey [FK_AttemptItem_RootActivityId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_RootActivityId] FOREIGN KEY([RootActivityId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_RootActivityId]
GO
/****** Object:  ForeignKey [FK_AttemptItem_SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_SuccessStatus] FOREIGN KEY([SuccessStatus])
REFERENCES [dbo].[SuccessStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_SuccessStatus]
GO
/****** Object:  ForeignKey [FK_AttemptItem_SuspendedActivityId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptItem_SuspendedActivityId] FOREIGN KEY([SuspendedActivityId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
GO
ALTER TABLE [dbo].[AttemptItem] CHECK CONSTRAINT [FK_AttemptItem_SuspendedActivityId]
GO
/****** Object:  ForeignKey [FK_AttemptObjectiveItem_ActivityAttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptObjectiveItem_ActivityAttemptId] FOREIGN KEY([ActivityAttemptId])
REFERENCES [dbo].[ActivityAttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttemptObjectiveItem] CHECK CONSTRAINT [FK_AttemptObjectiveItem_ActivityAttemptId]
GO
/****** Object:  ForeignKey [FK_AttemptObjectiveItem_ActivityObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptObjectiveItem_ActivityObjectiveId] FOREIGN KEY([ActivityObjectiveId])
REFERENCES [dbo].[ActivityObjectiveItem] ([Id])
GO
ALTER TABLE [dbo].[AttemptObjectiveItem] CHECK CONSTRAINT [FK_AttemptObjectiveItem_ActivityObjectiveId]
GO
/****** Object:  ForeignKey [FK_AttemptObjectiveItem_CompletionStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptObjectiveItem_CompletionStatus] FOREIGN KEY([CompletionStatus])
REFERENCES [dbo].[CompletionStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptObjectiveItem] CHECK CONSTRAINT [FK_AttemptObjectiveItem_CompletionStatus]
GO
/****** Object:  ForeignKey [FK_AttemptObjectiveItem_LessonStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptObjectiveItem_LessonStatus] FOREIGN KEY([LessonStatus])
REFERENCES [dbo].[LessonStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptObjectiveItem] CHECK CONSTRAINT [FK_AttemptObjectiveItem_LessonStatus]
GO
/****** Object:  ForeignKey [FK_AttemptObjectiveItem_SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[AttemptObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_AttemptObjectiveItem_SuccessStatus] FOREIGN KEY([SuccessStatus])
REFERENCES [dbo].[SuccessStatus] ([Id])
GO
ALTER TABLE [dbo].[AttemptObjectiveItem] CHECK CONSTRAINT [FK_AttemptObjectiveItem_SuccessStatus]
GO
/****** Object:  ForeignKey [FK_CommentFromLearnerItem_ActivityAttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[CommentFromLearnerItem]  WITH CHECK ADD  CONSTRAINT [FK_CommentFromLearnerItem_ActivityAttemptId] FOREIGN KEY([ActivityAttemptId])
REFERENCES [dbo].[ActivityAttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentFromLearnerItem] CHECK CONSTRAINT [FK_CommentFromLearnerItem_ActivityAttemptId]
GO
/****** Object:  ForeignKey [FK_CommentFromLmsItem_ActivityPackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[CommentFromLmsItem]  WITH CHECK ADD  CONSTRAINT [FK_CommentFromLmsItem_ActivityPackageId] FOREIGN KEY([ActivityPackageId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentFromLmsItem] CHECK CONSTRAINT [FK_CommentFromLmsItem_ActivityPackageId]
GO
/****** Object:  ForeignKey [FK_CorrectResponseItem_InteractionId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[CorrectResponseItem]  WITH CHECK ADD  CONSTRAINT [FK_CorrectResponseItem_InteractionId] FOREIGN KEY([InteractionId])
REFERENCES [dbo].[InteractionItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CorrectResponseItem] CHECK CONSTRAINT [FK_CorrectResponseItem_InteractionId]
GO
/****** Object:  ForeignKey [FK_EvaluationCommentItem_InteractionId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[EvaluationCommentItem]  WITH CHECK ADD  CONSTRAINT [FK_EvaluationCommentItem_InteractionId] FOREIGN KEY([InteractionId])
REFERENCES [dbo].[InteractionItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EvaluationCommentItem] CHECK CONSTRAINT [FK_EvaluationCommentItem_InteractionId]
GO
/****** Object:  ForeignKey [FK_ExtensionDataItem_ActivityAttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem]  WITH CHECK ADD  CONSTRAINT [FK_ExtensionDataItem_ActivityAttemptId] FOREIGN KEY([ActivityAttemptId])
REFERENCES [dbo].[ActivityAttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExtensionDataItem] CHECK CONSTRAINT [FK_ExtensionDataItem_ActivityAttemptId]
GO
/****** Object:  ForeignKey [FK_ExtensionDataItem_AttemptObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem]  WITH CHECK ADD  CONSTRAINT [FK_ExtensionDataItem_AttemptObjectiveId] FOREIGN KEY([AttemptObjectiveId])
REFERENCES [dbo].[AttemptObjectiveItem] ([Id])
GO
ALTER TABLE [dbo].[ExtensionDataItem] CHECK CONSTRAINT [FK_ExtensionDataItem_AttemptObjectiveId]
GO
/****** Object:  ForeignKey [FK_ExtensionDataItem_InteractionId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ExtensionDataItem]  WITH CHECK ADD  CONSTRAINT [FK_ExtensionDataItem_InteractionId] FOREIGN KEY([InteractionId])
REFERENCES [dbo].[InteractionItem] ([Id])
GO
ALTER TABLE [dbo].[ExtensionDataItem] CHECK CONSTRAINT [FK_ExtensionDataItem_InteractionId]
GO
/****** Object:  ForeignKey [FK_GlobalObjectiveItem_OrganizationId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[GlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_GlobalObjectiveItem_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[ActivityPackageItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GlobalObjectiveItem] CHECK CONSTRAINT [FK_GlobalObjectiveItem_OrganizationId]
GO
/****** Object:  ForeignKey [FK_InteractionItem_ActivityAttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem]  WITH CHECK ADD  CONSTRAINT [FK_InteractionItem_ActivityAttemptId] FOREIGN KEY([ActivityAttemptId])
REFERENCES [dbo].[ActivityAttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InteractionItem] CHECK CONSTRAINT [FK_InteractionItem_ActivityAttemptId]
GO
/****** Object:  ForeignKey [FK_InteractionItem_InteractionType]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem]  WITH CHECK ADD  CONSTRAINT [FK_InteractionItem_InteractionType] FOREIGN KEY([InteractionType])
REFERENCES [dbo].[InteractionType] ([Id])
GO
ALTER TABLE [dbo].[InteractionItem] CHECK CONSTRAINT [FK_InteractionItem_InteractionType]
GO
/****** Object:  ForeignKey [FK_InteractionItem_ResultState]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionItem]  WITH CHECK ADD  CONSTRAINT [FK_InteractionItem_ResultState] FOREIGN KEY([ResultState])
REFERENCES [dbo].[InteractionResultState] ([Id])
GO
ALTER TABLE [dbo].[InteractionItem] CHECK CONSTRAINT [FK_InteractionItem_ResultState]
GO
/****** Object:  ForeignKey [FK_InteractionObjectiveItem_AttemptObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_InteractionObjectiveItem_AttemptObjectiveId] FOREIGN KEY([AttemptObjectiveId])
REFERENCES [dbo].[AttemptObjectiveItem] ([Id])
GO
ALTER TABLE [dbo].[InteractionObjectiveItem] CHECK CONSTRAINT [FK_InteractionObjectiveItem_AttemptObjectiveId]
GO
/****** Object:  ForeignKey [FK_InteractionObjectiveItem_InteractionId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[InteractionObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_InteractionObjectiveItem_InteractionId] FOREIGN KEY([InteractionId])
REFERENCES [dbo].[InteractionItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InteractionObjectiveItem] CHECK CONSTRAINT [FK_InteractionObjectiveItem_InteractionId]
GO
/****** Object:  ForeignKey [FK_LearnerGlobalObjectiveItem_GlobalObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_LearnerGlobalObjectiveItem_GlobalObjectiveId] FOREIGN KEY([GlobalObjectiveId])
REFERENCES [dbo].[GlobalObjectiveItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem] CHECK CONSTRAINT [FK_LearnerGlobalObjectiveItem_GlobalObjectiveId]
GO
/****** Object:  ForeignKey [FK_LearnerGlobalObjectiveItem_LearnerId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_LearnerGlobalObjectiveItem_LearnerId] FOREIGN KEY([LearnerId])
REFERENCES [dbo].[UserItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem] CHECK CONSTRAINT [FK_LearnerGlobalObjectiveItem_LearnerId]
GO
/****** Object:  ForeignKey [FK_LearnerGlobalObjectiveItem_SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_LearnerGlobalObjectiveItem_SuccessStatus] FOREIGN KEY([SuccessStatus])
REFERENCES [dbo].[SuccessStatus] ([Id])
GO
ALTER TABLE [dbo].[LearnerGlobalObjectiveItem] CHECK CONSTRAINT [FK_LearnerGlobalObjectiveItem_SuccessStatus]
GO
/****** Object:  ForeignKey [FK_MapActivityObjectiveToGlobalObjectiveItem_ActivityObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_MapActivityObjectiveToGlobalObjectiveItem_ActivityObjectiveId] FOREIGN KEY([ActivityObjectiveId])
REFERENCES [dbo].[ActivityObjectiveItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] CHECK CONSTRAINT [FK_MapActivityObjectiveToGlobalObjectiveItem_ActivityObjectiveId]
GO
/****** Object:  ForeignKey [FK_MapActivityObjectiveToGlobalObjectiveItem_GlobalObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_MapActivityObjectiveToGlobalObjectiveItem_GlobalObjectiveId] FOREIGN KEY([GlobalObjectiveId])
REFERENCES [dbo].[GlobalObjectiveItem] ([Id])
GO
ALTER TABLE [dbo].[MapActivityObjectiveToGlobalObjectiveItem] CHECK CONSTRAINT [FK_MapActivityObjectiveToGlobalObjectiveItem_GlobalObjectiveId]
GO
/****** Object:  ForeignKey [FK_PackageGlobalObjectiveItem_GlobalObjectiveId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_PackageGlobalObjectiveItem_GlobalObjectiveId] FOREIGN KEY([GlobalObjectiveId])
REFERENCES [dbo].[GlobalObjectiveItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PackageGlobalObjectiveItem] CHECK CONSTRAINT [FK_PackageGlobalObjectiveItem_GlobalObjectiveId]
GO
/****** Object:  ForeignKey [FK_PackageGlobalObjectiveItem_LearnerId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_PackageGlobalObjectiveItem_LearnerId] FOREIGN KEY([LearnerId])
REFERENCES [dbo].[UserItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PackageGlobalObjectiveItem] CHECK CONSTRAINT [FK_PackageGlobalObjectiveItem_LearnerId]
GO
/****** Object:  ForeignKey [FK_PackageGlobalObjectiveItem_SuccessStatus]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageGlobalObjectiveItem]  WITH CHECK ADD  CONSTRAINT [FK_PackageGlobalObjectiveItem_SuccessStatus] FOREIGN KEY([SuccessStatus])
REFERENCES [dbo].[SuccessStatus] ([Id])
GO
ALTER TABLE [dbo].[PackageGlobalObjectiveItem] CHECK CONSTRAINT [FK_PackageGlobalObjectiveItem_SuccessStatus]
GO
/****** Object:  ForeignKey [FK_PackageItem_Owner]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageItem]  WITH CHECK ADD  CONSTRAINT [FK_PackageItem_Owner] FOREIGN KEY([Owner])
REFERENCES [dbo].[UserItem] ([Id])
GO
ALTER TABLE [dbo].[PackageItem] CHECK CONSTRAINT [FK_PackageItem_Owner]
GO
/****** Object:  ForeignKey [FK_PackageItem_PackageFormat]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[PackageItem]  WITH CHECK ADD  CONSTRAINT [FK_PackageItem_PackageFormat] FOREIGN KEY([PackageFormat])
REFERENCES [dbo].[PackageFormat] ([Id])
GO
ALTER TABLE [dbo].[PackageItem] CHECK CONSTRAINT [FK_PackageItem_PackageFormat]
GO
/****** Object:  ForeignKey [FK_ResourceItem_PackageId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[ResourceItem]  WITH CHECK ADD  CONSTRAINT [FK_ResourceItem_PackageId] FOREIGN KEY([PackageId])
REFERENCES [dbo].[PackageItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceItem] CHECK CONSTRAINT [FK_ResourceItem_PackageId]
GO
/****** Object:  ForeignKey [FK_RubricItem_InteractionId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[RubricItem]  WITH CHECK ADD  CONSTRAINT [FK_RubricItem_InteractionId] FOREIGN KEY([InteractionId])
REFERENCES [dbo].[InteractionItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RubricItem] CHECK CONSTRAINT [FK_RubricItem_InteractionId]
GO
/****** Object:  ForeignKey [FK_SequencingLogEntryItem_ActivityAttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[SequencingLogEntryItem]  WITH CHECK ADD  CONSTRAINT [FK_SequencingLogEntryItem_ActivityAttemptId] FOREIGN KEY([ActivityAttemptId])
REFERENCES [dbo].[ActivityAttemptItem] ([Id])
GO
ALTER TABLE [dbo].[SequencingLogEntryItem] CHECK CONSTRAINT [FK_SequencingLogEntryItem_ActivityAttemptId]
GO
/****** Object:  ForeignKey [FK_SequencingLogEntryItem_AttemptId]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[SequencingLogEntryItem]  WITH CHECK ADD  CONSTRAINT [FK_SequencingLogEntryItem_AttemptId] FOREIGN KEY([AttemptId])
REFERENCES [dbo].[AttemptItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SequencingLogEntryItem] CHECK CONSTRAINT [FK_SequencingLogEntryItem_AttemptId]
GO
/****** Object:  ForeignKey [FK_SequencingLogEntryItem_EventType]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[SequencingLogEntryItem]  WITH CHECK ADD  CONSTRAINT [FK_SequencingLogEntryItem_EventType] FOREIGN KEY([EventType])
REFERENCES [dbo].[SequencingEventType] ([Id])
GO
ALTER TABLE [dbo].[SequencingLogEntryItem] CHECK CONSTRAINT [FK_SequencingLogEntryItem_EventType]
GO
/****** Object:  ForeignKey [FK_SequencingLogEntryItem_NavigationCommand]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[SequencingLogEntryItem]  WITH CHECK ADD  CONSTRAINT [FK_SequencingLogEntryItem_NavigationCommand] FOREIGN KEY([NavigationCommand])
REFERENCES [dbo].[NavigationCommand] ([Id])
GO
ALTER TABLE [dbo].[SequencingLogEntryItem] CHECK CONSTRAINT [FK_SequencingLogEntryItem_NavigationCommand]
GO
/****** Object:  ForeignKey [FK_UserItem_AudioCaptioning]    Script Date: 11/27/2010 21:56:19 ******/
ALTER TABLE [dbo].[UserItem]  WITH CHECK ADD  CONSTRAINT [FK_UserItem_AudioCaptioning] FOREIGN KEY([AudioCaptioning])
REFERENCES [dbo].[AudioCaptioning] ([Id])
GO
ALTER TABLE [dbo].[UserItem] CHECK CONSTRAINT [FK_UserItem_AudioCaptioning]
GO
