/****** Object:  ForeignKey [FK_relResourcesDependency_tblResources_Dependant]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesDependency_tblResources_Dependant]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
ALTER TABLE [dbo].[relResourcesDependency] DROP CONSTRAINT [FK_relResourcesDependency_tblResources_Dependant]
GO
/****** Object:  ForeignKey [FK_relResourcesDependency_tblResources_Dependency]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesDependency_tblResources_Dependency]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
ALTER TABLE [dbo].[relResourcesDependency] DROP CONSTRAINT [FK_relResourcesDependency_tblResources_Dependency]
GO
/****** Object:  ForeignKey [FK_relResourcesFiles_tblFiles]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesFiles_tblFiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
ALTER TABLE [dbo].[relResourcesFiles] DROP CONSTRAINT [FK_relResourcesFiles_tblFiles]
GO
/****** Object:  ForeignKey [FK_relResourcesFiles_tblResources]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesFiles_tblResources]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
ALTER TABLE [dbo].[relResourcesFiles] DROP CONSTRAINT [FK_relResourcesFiles_tblResources]
GO
/****** Object:  ForeignKey [FK_Stage]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Stage]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
ALTER TABLE [dbo].[relStagesThemes] DROP CONSTRAINT [FK_Stage]
GO
/****** Object:  ForeignKey [FK_Theme]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Theme]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
ALTER TABLE [dbo].[relStagesThemes] DROP CONSTRAINT [FK_Theme]
GO
/****** Object:  ForeignKey [FK_GROUP]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
ALTER TABLE [dbo].[relUserGroups] DROP CONSTRAINT [FK_GROUP]
GO
/****** Object:  ForeignKey [FK_USER]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
ALTER TABLE [dbo].[relUserGroups] DROP CONSTRAINT [FK_USER]
GO
/****** Object:  ForeignKey [FK_ROLE_ID]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ROLE_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
ALTER TABLE [dbo].[relUserRoles] DROP CONSTRAINT [FK_ROLE_ID]
GO
/****** Object:  ForeignKey [FK_USER_ID]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_USER_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
ALTER TABLE [dbo].[relUserRoles] DROP CONSTRAINT [FK_USER_ID]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_fxdCompiledStatuses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_fxdCompiledStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_tblCompiledQuestionsData]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_tblCompiledQuestionsData]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [FK_tblCompiledAnswers_tblCompiledQuestionsData]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_tblUserAnswers]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_tblUserAnswers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [FK_tblCompiledAnswers_tblUserAnswers]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestions_fxdLanguages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestions_fxdLanguages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]'))
ALTER TABLE [dbo].[tblCompiledQuestions] DROP CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestionsData_tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestionsData_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]'))
ALTER TABLE [dbo].[tblCompiledQuestionsData] DROP CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblItems_tblItems]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [FK_tblItems_tblItems]
GO
/****** Object:  ForeignKey [FK_tblItems_tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblOrganizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [FK_tblItems_tblOrganizations]
GO
/****** Object:  ForeignKey [FK_tblItems_tblResources]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblResources]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [FK_tblItems_tblResources]
GO
/****** Object:  ForeignKey [FK_tblOrganizations_tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblOrganizations_tblCourses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOrganizations]'))
ALTER TABLE [dbo].[tblOrganizations] DROP CONSTRAINT [FK_tblOrganizations_tblCourses]
GO
/****** Object:  ForeignKey [FK_Page_PageType]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_PageType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages] DROP CONSTRAINT [FK_Page_PageType]
GO
/****** Object:  ForeignKey [FK_Page_Theme]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Theme]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages] DROP CONSTRAINT [FK_Page_Theme]
GO
/****** Object:  ForeignKey [FK_PARENT_PERMITION]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARENT_PERMITION]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_PARENT_PERMITION]
GO
/****** Object:  ForeignKey [FK_Permissions_CourseOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CourseOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_CourseOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Courses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Courses]
GO
/****** Object:  ForeignKey [FK_Permissions_CurriculumOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CurriculumOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_CurriculumOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Curriculums]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Curriculums]
GO
/****** Object:  ForeignKey [FK_Permissions_GroupObjects]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_GroupObjects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_GroupObjects]
GO
/****** Object:  ForeignKey [FK_Permissions_GroupOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_GroupOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_GroupOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Groups]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Groups]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Groups]
GO
/****** Object:  ForeignKey [FK_Permissions_Organizations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Organizations]
GO
/****** Object:  ForeignKey [FK_Permissions_OwnerGroup]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_OwnerGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_OwnerGroup]
GO
/****** Object:  ForeignKey [FK_Permissions_OwnerUser]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_OwnerUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_OwnerUser]
GO
/****** Object:  ForeignKey [FK_Permissions_PageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_PageOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_PageOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Pages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Pages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Pages]
GO
/****** Object:  ForeignKey [FK_Permissions_StageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_StageOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_StageOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Stages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Stages]
GO
/****** Object:  ForeignKey [FK_Permissions_ThemeOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_ThemeOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_ThemeOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Themes]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Themes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_Themes]
GO
/****** Object:  ForeignKey [FK_Permissions_UserObjects]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_UserObjects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [FK_Permissions_UserObjects]
GO
/****** Object:  ForeignKey [FK_CorrectAnswer_Page]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CorrectAnswer_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions] DROP CONSTRAINT [FK_CorrectAnswer_Page]
GO
/****** Object:  ForeignKey [FK_tblQuestions_tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblQuestions_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions] DROP CONSTRAINT [FK_tblQuestions_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblResources_tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblResources_tblCourses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResources]'))
ALTER TABLE [dbo].[tblResources] DROP CONSTRAINT [FK_tblResources_tblCourses]
GO
/****** Object:  ForeignKey [FK_tblStages_tblCurriculums]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblStages_tblCurriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStages]'))
ALTER TABLE [dbo].[tblStages] DROP CONSTRAINT [FK_tblStages_tblCurriculums]
GO
/****** Object:  ForeignKey [FK_Chapter_Course]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Chapter_Course]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [FK_Chapter_Course]
GO
/****** Object:  ForeignKey [FK_tblThemes_fxdPageOrders]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblThemes_fxdPageOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [FK_tblThemes_fxdPageOrders]
GO
/****** Object:  ForeignKey [FK_tblThemes_tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblThemes_tblOrganizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [FK_tblThemes_tblOrganizations]
GO
/****** Object:  ForeignKey [FK_tblUserAnswers_AnswerTypeRef]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblUserAnswers_AnswerTypeRef]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers] DROP CONSTRAINT [FK_tblUserAnswers_AnswerTypeRef]
GO
/****** Object:  ForeignKey [FK_UserAnswer_CorrectAnswer]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswer_CorrectAnswer]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers] DROP CONSTRAINT [FK_UserAnswer_CorrectAnswer]
GO
/****** Object:  ForeignKey [FK_UserAnswers_Users]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers] DROP CONSTRAINT [FK_UserAnswers_Users]
GO
/****** Object:  Default [DF__fxAnswerT__sysSt__0C85DE4D]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxAnswerT__sysSt__0C85DE4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxAnswerType]'))
Begin
ALTER TABLE [dbo].[fxAnswerType] DROP CONSTRAINT [DF__fxAnswerT__sysSt__0C85DE4D]

End
GO
/****** Object:  Default [DF__fxCompile__sysSt__73BA3083]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCompile__sysSt__73BA3083]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCompiledStatuses]'))
Begin
ALTER TABLE [dbo].[fxCompiledStatuses] DROP CONSTRAINT [DF__fxCompile__sysSt__73BA3083]

End
GO
/****** Object:  Default [DF__fxCourseO__sysSt__72C60C4A]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCourseO__sysSt__72C60C4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCourseOperations]'))
Begin
ALTER TABLE [dbo].[fxCourseOperations] DROP CONSTRAINT [DF__fxCourseO__sysSt__72C60C4A]

End
GO
/****** Object:  Default [DF__fxCurricu__sysSt__71D1E811]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCurricu__sysSt__71D1E811]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCurriculumOperations]'))
Begin
ALTER TABLE [dbo].[fxCurriculumOperations] DROP CONSTRAINT [DF__fxCurricu__sysSt__71D1E811]

End
GO
/****** Object:  Default [DF__fxGroupOp__sysSt__03F0984C]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxGroupOp__sysSt__03F0984C]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxGroupOperations]'))
Begin
ALTER TABLE [dbo].[fxGroupOperations] DROP CONSTRAINT [DF__fxGroupOp__sysSt__03F0984C]

End
GO
/****** Object:  Default [DF__fxLanguag__sysSt__70DDC3D8]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxLanguag__sysSt__70DDC3D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxLanguages]'))
Begin
ALTER TABLE [dbo].[fxLanguages] DROP CONSTRAINT [DF__fxLanguag__sysSt__70DDC3D8]

End
GO
/****** Object:  Default [DF__fxPageOpe__sysSt__6FE99F9F]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageOpe__sysSt__6FE99F9F]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageOperations]'))
Begin
ALTER TABLE [dbo].[fxPageOperations] DROP CONSTRAINT [DF__fxPageOpe__sysSt__6FE99F9F]

End
GO
/****** Object:  Default [DF__fxPageOrd__sysSt__6EF57B66]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageOrd__sysSt__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageOrders]'))
Begin
ALTER TABLE [dbo].[fxPageOrders] DROP CONSTRAINT [DF__fxPageOrd__sysSt__6EF57B66]

End
GO
/****** Object:  Default [DF__fxPageTyp__sysSt__6E01572D]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageTyp__sysSt__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageTypes]'))
Begin
ALTER TABLE [dbo].[fxPageTypes] DROP CONSTRAINT [DF__fxPageTyp__sysSt__6E01572D]

End
GO
/****** Object:  Default [DF__fxRoles__sysStat__6D0D32F4]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxRoles__sysStat__6D0D32F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxRoles]'))
Begin
ALTER TABLE [dbo].[fxRoles] DROP CONSTRAINT [DF__fxRoles__sysStat__6D0D32F4]

End
GO
/****** Object:  Default [DF__fxSampleB__sysSt__6A30C649]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxSampleB__sysSt__6A30C649]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxSampleBusinesObjectOperation]'))
Begin
ALTER TABLE [dbo].[fxSampleBusinesObjectOperation] DROP CONSTRAINT [DF__fxSampleB__sysSt__6A30C649]

End
GO
/****** Object:  Default [DF__fxStageOp__sysSt__6C190EBB]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxStageOp__sysSt__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxStageOperations]'))
Begin
ALTER TABLE [dbo].[fxStageOperations] DROP CONSTRAINT [DF__fxStageOp__sysSt__6C190EBB]

End
GO
/****** Object:  Default [DF__fxThemeOp__sysSt__6B24EA82]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxThemeOp__sysSt__6B24EA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxThemeOperations]'))
Begin
ALTER TABLE [dbo].[fxThemeOperations] DROP CONSTRAINT [DF__fxThemeOp__sysSt__6B24EA82]

End
GO
/****** Object:  Default [DF_relResourcesDependency_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_relResourcesDependency_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
Begin
ALTER TABLE [dbo].[relResourcesDependency] DROP CONSTRAINT [DF_relResourcesDependency_sysState]

End
GO
/****** Object:  Default [DF_relResourcesFiles_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_relResourcesFiles_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
Begin
ALTER TABLE [dbo].[relResourcesFiles] DROP CONSTRAINT [DF_relResourcesFiles_sysState]

End
GO
/****** Object:  Default [DF__relStages__sysSt__7A672E12]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relStages__sysSt__7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
Begin
ALTER TABLE [dbo].[relStagesThemes] DROP CONSTRAINT [DF__relStages__sysSt__7A672E12]

End
GO
/****** Object:  Default [DF__relUserGr__sysSt__02FC7413]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relUserGr__sysSt__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
Begin
ALTER TABLE [dbo].[relUserGroups] DROP CONSTRAINT [DF__relUserGr__sysSt__02FC7413]

End
GO
/****** Object:  Default [DF__relUserRo__sysSt__02084FDA]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relUserRo__sysSt__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
Begin
ALTER TABLE [dbo].[relUserRoles] DROP CONSTRAINT [DF__relUserRo__sysSt__02084FDA]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__76969D2E]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__76969D2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [DF__tblCompil__sysSt__76969D2E]

End
GO
/****** Object:  Default [DF__tblCompil__UserA__04E4BC85]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__UserA__04E4BC85]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [DF__tblCompil__UserA__04E4BC85]

End
GO
/****** Object:  Default [DF__tblCompil__Compi__08B54D69]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__Compi__08B54D69]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] DROP CONSTRAINT [DF__tblCompil__Compi__08B54D69]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__778AC167]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__778AC167]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]'))
Begin
ALTER TABLE [dbo].[tblCompiledQuestions] DROP CONSTRAINT [DF__tblCompil__sysSt__778AC167]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__7D439ABD]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__7D439ABD]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]'))
Begin
ALTER TABLE [dbo].[tblCompiledQuestionsData] DROP CONSTRAINT [DF__tblCompil__sysSt__7D439ABD]

End
GO
/****** Object:  Default [DF__tblCourse__sysSt__75A278F5]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCourse__sysSt__75A278F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCourses]'))
Begin
ALTER TABLE [dbo].[tblCourses] DROP CONSTRAINT [DF__tblCourse__sysSt__75A278F5]

End
GO
/****** Object:  Default [DF__tblCurric__sysSt__74AE54BC]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCurric__sysSt__74AE54BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCurriculums]'))
Begin
ALTER TABLE [dbo].[tblCurriculums] DROP CONSTRAINT [DF__tblCurric__sysSt__74AE54BC]

End
GO
/****** Object:  Default [DF_tblFiles_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblFiles_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblFiles]'))
Begin
ALTER TABLE [dbo].[tblFiles] DROP CONSTRAINT [DF_tblFiles_sysState]

End
GO
/****** Object:  Default [DF__tblGroups__sysSt__693CA210]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblGroups__sysSt__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGroups]'))
Begin
ALTER TABLE [dbo].[tblGroups] DROP CONSTRAINT [DF__tblGroups__sysSt__693CA210]

End
GO
/****** Object:  Default [DF_tblItems_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblItems_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
Begin
ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [DF_tblItems_sysState]

End
GO
/****** Object:  Default [DF_tblOrganizations_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblOrganizations_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOrganizations]'))
Begin
ALTER TABLE [dbo].[tblOrganizations] DROP CONSTRAINT [DF_tblOrganizations_sysState]

End
GO
/****** Object:  Default [DF__tblPages__sysSta__7C4F7684]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPages__sysSta__7C4F7684]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
Begin
ALTER TABLE [dbo].[tblPages] DROP CONSTRAINT [DF__tblPages__sysSta__7C4F7684]

End
GO
/****** Object:  Default [DF__tblPermis__sysSt__7B5B524B]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPermis__sysSt__7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
Begin
ALTER TABLE [dbo].[tblPermissions] DROP CONSTRAINT [DF__tblPermis__sysSt__7B5B524B]

End
GO
/****** Object:  Default [DF__tblQuesti__sysSt__7E37BEF6]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblQuesti__sysSt__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
Begin
ALTER TABLE [dbo].[tblQuestions] DROP CONSTRAINT [DF__tblQuesti__sysSt__7E37BEF6]

End
GO
/****** Object:  Default [DF_tblResources_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblResources_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResources]'))
Begin
ALTER TABLE [dbo].[tblResources] DROP CONSTRAINT [DF_tblResources_sysState]

End
GO
/****** Object:  Default [DF__tblSample__sysSt__68487DD7]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblSample__sysSt__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSampleBusinesObject]'))
Begin
ALTER TABLE [dbo].[tblSampleBusinesObject] DROP CONSTRAINT [DF__tblSample__sysSt__68487DD7]

End
GO
/****** Object:  Default [DF__tblStages__sysSt__787EE5A0]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblStages__sysSt__787EE5A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStages]'))
Begin
ALTER TABLE [dbo].[tblStages] DROP CONSTRAINT [DF__tblStages__sysSt__787EE5A0]

End
GO
/****** Object:  Default [DF__tblThemes__sysSt__797309D9]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__sysSt__797309D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [DF__tblThemes__sysSt__797309D9]

End
GO
/****** Object:  Default [DF__tblThemes__PageC__06CD04F7]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__PageC__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [DF__tblThemes__PageC__06CD04F7]

End
GO
/****** Object:  Default [DF__tblThemes__MaxCo__07C12930]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__MaxCo__07C12930]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] DROP CONSTRAINT [DF__tblThemes__MaxCo__07C12930]

End
GO
/****** Object:  Default [DF__tblUserAn__sysSt__01142BA1]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserAn__sysSt__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
Begin
ALTER TABLE [dbo].[tblUserAnswers] DROP CONSTRAINT [DF__tblUserAn__sysSt__01142BA1]

End
GO
/****** Object:  Default [DF__tblUserAn__Answe__0D7A0286]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserAn__Answe__0D7A0286]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
Begin
ALTER TABLE [dbo].[tblUserAnswers] DROP CONSTRAINT [DF__tblUserAn__Answe__0D7A0286]

End
GO
/****** Object:  Default [DF__tblUsers__sysSta__6754599E]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUsers__sysSta__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUsers]'))
Begin
ALTER TABLE [dbo].[tblUsers] DROP CONSTRAINT [DF__tblUsers__sysSta__6754599E]

End
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsTheme]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsTheme]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetGroupPermissionsTheme]
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionTheme]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionTheme]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_CheckPermissionTheme]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsCourse]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetGroupPermissionsCourse]
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionCourse]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_CheckPermissionCourse]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsCurriculum]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetGroupPermissionsCurriculum]
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionCurriculum]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_CheckPermissionCurriculum]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsGroup]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetGroupPermissionsGroup]
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionGroup]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_CheckPermissionGroup]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsStage]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsStage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetGroupPermissionsStage]
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionStage]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionStage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_CheckPermissionStage]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForGroup]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetOperationsForGroup]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsStage]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsStage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetPermissionsStage]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForStage]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForStage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetOperationsForStage]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForTheme]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForTheme]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetOperationsForTheme]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsGroup]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetPermissionsGroup]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsCurriculum]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetPermissionsCurriculum]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForCurriculum]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetOperationsForCurriculum]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsCourse]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetPermissionsCourse]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForCourse]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetOperationsForCourse]
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsTheme]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsTheme]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Security_GetPermissionsTheme]
GO
/****** Object:  Table [dbo].[relUserGroups]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relUserGroups]') AND type in (N'U'))
DROP TABLE [dbo].[relUserGroups]
GO
/****** Object:  Table [dbo].[tblItems]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblItems]') AND type in (N'U'))
DROP TABLE [dbo].[tblItems]
GO
/****** Object:  Table [dbo].[relResourcesFiles]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]') AND type in (N'U'))
DROP TABLE [dbo].[relResourcesFiles]
GO
/****** Object:  Table [dbo].[relResourcesDependency]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]') AND type in (N'U'))
DROP TABLE [dbo].[relResourcesDependency]
GO
/****** Object:  Table [dbo].[relStagesThemes]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relStagesThemes]') AND type in (N'U'))
DROP TABLE [dbo].[relStagesThemes]
GO
/****** Object:  Table [dbo].[tblResources]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblResources]') AND type in (N'U'))
DROP TABLE [dbo].[tblResources]
GO
/****** Object:  Table [dbo].[tblCompiledAnswers]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]') AND type in (N'U'))
DROP TABLE [dbo].[tblCompiledAnswers]
GO
/****** Object:  Table [dbo].[tblCompiledQuestionsData]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]') AND type in (N'U'))
DROP TABLE [dbo].[tblCompiledQuestionsData]
GO
/****** Object:  Table [dbo].[tblUserAnswers]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]') AND type in (N'U'))
DROP TABLE [dbo].[tblUserAnswers]
GO
/****** Object:  Table [dbo].[tblQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblQuestions]') AND type in (N'U'))
DROP TABLE [dbo].[tblQuestions]
GO
/****** Object:  Table [dbo].[tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]') AND type in (N'U'))
DROP TABLE [dbo].[tblCompiledQuestions]
GO
/****** Object:  Table [dbo].[relUserRoles]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[relUserRoles]
GO
/****** Object:  Table [dbo].[tblPermissions]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPermissions]') AND type in (N'U'))
DROP TABLE [dbo].[tblPermissions]
GO
/****** Object:  Table [dbo].[tblPages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPages]') AND type in (N'U'))
DROP TABLE [dbo].[tblPages]
GO
/****** Object:  Table [dbo].[tblThemes]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblThemes]') AND type in (N'U'))
DROP TABLE [dbo].[tblThemes]
GO
/****** Object:  Table [dbo].[tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblOrganizations]') AND type in (N'U'))
DROP TABLE [dbo].[tblOrganizations]
GO
/****** Object:  Table [dbo].[tblStages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStages]') AND type in (N'U'))
DROP TABLE [dbo].[tblStages]
GO
/****** Object:  Table [dbo].[tblGroups]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGroups]') AND type in (N'U'))
DROP TABLE [dbo].[tblGroups]
GO
/****** Object:  Table [dbo].[tblSampleBusinesObject]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSampleBusinesObject]') AND type in (N'U'))
DROP TABLE [dbo].[tblSampleBusinesObject]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type in (N'U'))
DROP TABLE [dbo].[tblUsers]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSecurityID]    Script Date: 01/05/2010 00:32:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSecurityID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSecurityID]
GO
/****** Object:  Table [dbo].[tblFiles]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFiles]') AND type in (N'U'))
DROP TABLE [dbo].[tblFiles]
GO
/****** Object:  Table [dbo].[fxGroupOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxGroupOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxGroupOperations]
GO
/****** Object:  Table [dbo].[fxStageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxStageOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxStageOperations]
GO
/****** Object:  Table [dbo].[tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCourses]') AND type in (N'U'))
DROP TABLE [dbo].[tblCourses]
GO
/****** Object:  Table [dbo].[tblCurriculums]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCurriculums]') AND type in (N'U'))
DROP TABLE [dbo].[tblCurriculums]
GO
/****** Object:  Table [dbo].[fxCompiledStatuses]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCompiledStatuses]') AND type in (N'U'))
DROP TABLE [dbo].[fxCompiledStatuses]
GO
/****** Object:  Table [dbo].[fxCourseOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCourseOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxCourseOperations]
GO
/****** Object:  Table [dbo].[fxCurriculumOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCurriculumOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxCurriculumOperations]
GO
/****** Object:  Table [dbo].[fxLanguages]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxLanguages]') AND type in (N'U'))
DROP TABLE [dbo].[fxLanguages]
GO
/****** Object:  Table [dbo].[fxPageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxPageOperations]
GO
/****** Object:  Table [dbo].[fxPageOrders]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageOrders]') AND type in (N'U'))
DROP TABLE [dbo].[fxPageOrders]
GO
/****** Object:  Table [dbo].[fxAnswerType]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxAnswerType]') AND type in (N'U'))
DROP TABLE [dbo].[fxAnswerType]
GO
/****** Object:  Table [dbo].[fxPageTypes]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageTypes]') AND type in (N'U'))
DROP TABLE [dbo].[fxPageTypes]
GO
/****** Object:  Table [dbo].[fxRoles]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxRoles]') AND type in (N'U'))
DROP TABLE [dbo].[fxRoles]
GO
/****** Object:  Table [dbo].[fxThemeOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxThemeOperations]') AND type in (N'U'))
DROP TABLE [dbo].[fxThemeOperations]
GO
/****** Object:  Table [dbo].[fxSampleBusinesObjectOperation]    Script Date: 01/05/2010 00:32:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxSampleBusinesObjectOperation]') AND type in (N'U'))
DROP TABLE [dbo].[fxSampleBusinesObjectOperation]
GO
/****** Object:  Table [dbo].[fxSampleBusinesObjectOperation]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxSampleBusinesObjectOperation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxSampleBusinesObjectOperation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [UQ__fxSampleBusinesO__023D5A04] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[fxThemeOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxThemeOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxThemeOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_ThemeOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxThemeOperations] ON
INSERT [dbo].[fxThemeOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (5, N'View', N'View the theme', 0, 0)
INSERT [dbo].[fxThemeOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (6, N'Pass', N'Pass the theme', 0, 0)
SET IDENTITY_INSERT [dbo].[fxThemeOperations] OFF
/****** Object:  Table [dbo].[fxRoles]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) COLLATE Ukrainian_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxdRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxRoles] ON
INSERT [dbo].[fxRoles] ([ID], [Name], [Description], [sysState]) VALUES (1, N'STUDENT', NULL, 0)
INSERT [dbo].[fxRoles] ([ID], [Name], [Description], [sysState]) VALUES (2, N'LECTOR', NULL, 0)
INSERT [dbo].[fxRoles] ([ID], [Name], [Description], [sysState]) VALUES (3, N'TRAINER', NULL, 0)
INSERT [dbo].[fxRoles] ([ID], [Name], [Description], [sysState]) VALUES (4, N'ADMIN', NULL, 0)
INSERT [dbo].[fxRoles] ([ID], [Name], [Description], [sysState]) VALUES (5, N'SUPER_ADMIN', NULL, 0)
SET IDENTITY_INSERT [dbo].[fxRoles] OFF
/****** Object:  Table [dbo].[fxPageTypes]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxPageTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](10) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_PageType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxPageTypes] ON
INSERT [dbo].[fxPageTypes] ([ID], [Type], [sysState]) VALUES (1, N'Theory', 0)
INSERT [dbo].[fxPageTypes] ([ID], [Type], [sysState]) VALUES (2, N'Practice', 0)
SET IDENTITY_INSERT [dbo].[fxPageTypes] OFF
/****** Object:  Table [dbo].[fxAnswerType]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxAnswerType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxAnswerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxAnswerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxAnswerType] ON
INSERT [dbo].[fxAnswerType] ([ID], [Name], [sysState]) VALUES (1, N'UserAnswer', 0)
INSERT [dbo].[fxAnswerType] ([ID], [Name], [sysState]) VALUES (2, N'EmptyAnswer', 0)
INSERT [dbo].[fxAnswerType] ([ID], [Name], [sysState]) VALUES (3, N'NotIncludedAnswer', 0)
SET IDENTITY_INSERT [dbo].[fxAnswerType] OFF
/****** Object:  Table [dbo].[fxPageOrders]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxPageOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxdPageOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxPageOrders] ON
INSERT [dbo].[fxPageOrders] ([ID], [Name], [sysState]) VALUES (1, N'Straight', 0)
INSERT [dbo].[fxPageOrders] ([ID], [Name], [sysState]) VALUES (2, N'Random', 0)
SET IDENTITY_INSERT [dbo].[fxPageOrders] OFF
/****** Object:  Table [dbo].[fxPageOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxPageOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxPageOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_PageOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxPageOperations] ON
INSERT [dbo].[fxPageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (1, N'Add', N'Add new Page', 1, 0)
INSERT [dbo].[fxPageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (2, N'Edit', N'Edit Page', 1, 0)
INSERT [dbo].[fxPageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (3, N'View', N'View Page', 1, 0)
INSERT [dbo].[fxPageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (4, N'Delete', N'Delete Page', 1, 0)
SET IDENTITY_INSERT [dbo].[fxPageOperations] OFF
/****** Object:  Table [dbo].[fxLanguages]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxLanguages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxLanguages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxdLanguages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxLanguages] ON
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (17, N'Vs6CPlusPlus', 0)
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (18, N'Vs8CPlusPlus', 0)
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (19, N'DotNet2', 0)
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (20, N'DotNet3', 0)
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (21, N'Java6', 0)
INSERT [dbo].[fxLanguages] ([ID], [Name], [sysState]) VALUES (22, N'Delphi7', 0)
SET IDENTITY_INSERT [dbo].[fxLanguages] OFF
/****** Object:  Table [dbo].[fxCurriculumOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCurriculumOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxCurriculumOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_CurriculumOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxCurriculumOperations] ON
INSERT [dbo].[fxCurriculumOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (5, N'Modify', N'Modify curriculum by teacher', 1, 0)
INSERT [dbo].[fxCurriculumOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (6, N'Use', N'Use curriculum by teacher', 1, 0)
INSERT [dbo].[fxCurriculumOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (7, N'View', N'View the curriculum', 0, 0)
INSERT [dbo].[fxCurriculumOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (8, N'Pass', N'Pass the curriculum', 0, 0)
SET IDENTITY_INSERT [dbo].[fxCurriculumOperations] OFF
/****** Object:  Table [dbo].[fxCourseOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCourseOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxCourseOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_CourseOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxCourseOperations] ON
INSERT [dbo].[fxCourseOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (5, N'Modify', N'Modify course by teacher', 1, 0)
INSERT [dbo].[fxCourseOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (6, N'Use', N'Use course by teacher', 1, 0)
SET IDENTITY_INSERT [dbo].[fxCourseOperations] OFF
/****** Object:  Table [dbo].[fxCompiledStatuses]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxCompiledStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxCompiledStatuses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxdCompiledStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxCompiledStatuses] ON
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (1, N'WrongAnswer', N'Program was compiled, it passed time and memory limits,but it returns wrong output', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (2, N'Accepted', N'Program was compiled, it passed time and memory limits, and it returns correct output.', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (3, N'TimeLimit', N'Program was compiled, but it takes too much time to run.', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (4, N'MemoryLimit', N'Program was compiled, but it takes too much memory during run', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (5, N'CompilationError', N'Program wasnt compiled succesfully', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (6, N'Running', N'Program was compiled, and it is running right now', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (7, N'Enqueued', N'Program was received, and it is waiting too proceed', 0)
INSERT [dbo].[fxCompiledStatuses] ([ID], [Name], [Description], [sysState]) VALUES (8, N'Crashed', N'Program was compiled, but it crashed during execution', 0)
SET IDENTITY_INSERT [dbo].[fxCompiledStatuses] OFF
/****** Object:  Table [dbo].[tblCurriculums]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCurriculums]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCurriculums](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_SdudyCourses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblCurriculums] ON
INSERT [dbo].[tblCurriculums] ([ID], [Name], [Description], [sysState]) VALUES (1, N'test', N'123', 1)
INSERT [dbo].[tblCurriculums] ([ID], [Name], [Description], [sysState]) VALUES (2, N'qwe', N'qwe', 1)
INSERT [dbo].[tblCurriculums] ([ID], [Name], [Description], [sysState]) VALUES (3, N'DB_test', N'', 1)
INSERT [dbo].[tblCurriculums] ([ID], [Name], [Description], [sysState]) VALUES (4, N'DB_test', N'DB_test_desc', 0)
SET IDENTITY_INSERT [dbo].[tblCurriculums] OFF
/****** Object:  Table [dbo].[tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCourses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCourses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[UploadDate] [datetime] NULL,
	[Version] [int] NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblCourses] ON
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (1, N'test1', N'test123', CAST(0x00009CD6014A2FC3 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (2, N'test1', N'test123', CAST(0x00009CD6014A4F47 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (3, N'test1', N'test123', CAST(0x00009CD6014A6C42 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (4, N'test2', N'123', CAST(0x00009CD6014C948E AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (5, N'test2', N'123', CAST(0x00009CD6014CB296 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (6, N'test2', N'123', CAST(0x00009CD6014CC59D AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (7, N'test2', N'123', CAST(0x00009CD6014CD9C7 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (8, N'11', N'111', CAST(0x00009CD6014ECD71 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (9, N'11', N'111', CAST(0x00009CD60155DB1E AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (10, N'aaa', N'aaa', CAST(0x00009CD900B8D182 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (11, N'MyTests', N'', CAST(0x00009CE101366F07 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (12, N'course1', N'', CAST(0x00009CE10136C8E8 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (13, N'course1', N'', CAST(0x00009CE10137DE74 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (14, N'course1', N'', CAST(0x00009CE101386ADF AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (15, N'course1', N'', CAST(0x00009CE101398B01 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (16, N'course1', N'', CAST(0x00009CE1013C8A3B AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (17, N'course1', N'', CAST(0x00009CE1013CC841 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (18, N'course1', N'', CAST(0x00009CE1013D766B AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (19, N'course1', N'', CAST(0x00009CE101453C77 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (20, N'DB_test', N'', CAST(0x00009CE10145D856 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (21, N'DB_test', N'', CAST(0x00009CE1014CA25B AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (22, N'DB_test', N'', CAST(0x00009CE1014CF0C2 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (23, N'DB_test', N'', CAST(0x00009CE1014E1CCE AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (24, N'DB_test', N'', CAST(0x00009CE101538C3E AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (25, N'DB_test', N'', CAST(0x00009CE101540AED AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (26, N'DB_test', N'', CAST(0x00009CE1015BF4F5 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (27, N'DB_test', N'', CAST(0x00009CE101603E3E AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (28, N'DB_test', N'', CAST(0x00009CE10160A7F9 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (29, N'DB_test', N'', CAST(0x00009CE1016F6E63 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (30, N'DB_test', N'', CAST(0x00009CE2009E0105 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (31, N'DB_test', N'', CAST(0x00009CE2009E9C4B AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (32, N'DB_test', N'', CAST(0x00009CE2009FC0A6 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (33, N'DB_test', N'', CAST(0x00009CE200A05B5A AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (44, N'Inheritance', N'', CAST(0x00009CE900023CEC AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (45, N'Inheritance', N'', CAST(0x00009CE90002F588 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (46, N'Inheritance', N'', CAST(0x00009CE90003D7E9 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (47, N'Inheritance', N'', CAST(0x00009CE90004B15F AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (48, N'Inheritance', N'', CAST(0x00009CE900060A78 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (49, N'Inheritance', N'', CAST(0x00009CE90006A438 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (50, N'Inheritance', N'', CAST(0x00009CE900071843 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (51, N'Inheritance', N'', CAST(0x00009CE9000810B4 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (52, N'Inheritance', N'', CAST(0x00009CE90008B400 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (53, N'Inheritance', N'', CAST(0x00009CE900098CE2 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (54, N'Inheritance', N'', CAST(0x00009CE9000A7E2D AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (55, N'Inheritance', N'', CAST(0x00009CE9000D8194 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (56, N'Inheritance', N'', CAST(0x00009CE90010D5F2 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (57, N'Inheritance', N'', CAST(0x00009CE900114111 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (58, N'Inheritance', N'', CAST(0x00009CE900118FE2 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (59, N'Inheritance', N'', CAST(0x00009CE900122295 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (60, N'Inheritance', N'', CAST(0x00009CE90014419C AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (61, N'DB_test', N'', CAST(0x00009CF400005E45 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (62, N'DB_test', N'', CAST(0x00009CF400026A01 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (63, N'C++_first', N'', CAST(0x00009CF400C852DA AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (64, N'C++_first', N'', CAST(0x00009CF400CC03C4 AS DateTime), 1, 0)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (65, N'C++_first', N'', CAST(0x00009CF400CD6C20 AS DateTime), 1, 1)
INSERT [dbo].[tblCourses] ([ID], [Name], [Description], [UploadDate], [Version], [sysState]) VALUES (66, N'DB_test', N'', CAST(0x00009CF40163176C AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[tblCourses] OFF
/****** Object:  Table [dbo].[fxStageOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxStageOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxStageOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_StageOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxStageOperations] ON
INSERT [dbo].[fxStageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (5, N'View', N'View the stage', 0, 0)
INSERT [dbo].[fxStageOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (6, N'Pass', N'Pass the stage', 0, 0)
SET IDENTITY_INSERT [dbo].[fxStageOperations] OFF
/****** Object:  Table [dbo].[fxGroupOperations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fxGroupOperations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fxGroupOperations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CanBeDelegated] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_fxGroupOperations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UK_fxGroupOperations_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[fxGroupOperations] ON
INSERT [dbo].[fxGroupOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (1, N'View', NULL, 1, 0)
INSERT [dbo].[fxGroupOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (2, N'Rename', NULL, 1, 0)
INSERT [dbo].[fxGroupOperations] ([ID], [Name], [Description], [CanBeDelegated], [sysState]) VALUES (3, N'ChangeMembers', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[fxGroupOperations] OFF
/****** Object:  Table [dbo].[tblFiles]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](300) COLLATE Ukrainian_CI_AS NOT NULL,
	[sysState] [int] NOT NULL,
 CONSTRAINT [PK_tblFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblFiles] ON
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (1, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (2, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (3, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (4, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (5, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (6, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (7, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (8, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (9, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (10, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (11, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (12, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (13, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (14, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (15, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (16, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (17, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (18, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (19, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (20, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (21, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (22, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (23, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (24, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (25, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (26, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (27, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (28, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (29, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (30, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (31, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (32, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (33, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (34, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (35, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (36, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (37, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (38, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (39, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (40, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (41, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (42, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (43, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (44, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (45, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (46, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (47, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (48, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (49, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (50, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (51, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (52, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (53, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (54, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (55, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (56, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (57, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (58, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (59, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (60, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (61, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (62, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (63, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (64, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (65, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (66, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (67, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (68, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (69, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (70, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (71, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (72, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (73, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (74, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (75, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (76, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (77, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (78, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (79, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (80, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (81, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (82, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (83, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (84, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (85, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (86, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (87, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (88, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (89, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (90, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (91, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (92, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (93, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (94, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (95, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (96, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (97, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (98, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (99, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (100, N'New_Examination.html', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (101, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (102, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (103, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (104, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (105, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (106, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (107, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (108, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (109, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (110, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (111, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (112, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (113, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (114, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (115, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (116, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (117, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (118, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (119, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (120, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (121, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (122, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (123, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (124, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (125, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (126, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (127, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (128, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (129, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (130, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (131, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (132, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (133, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (134, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (135, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (136, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (137, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (138, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (139, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (140, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (141, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (142, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (143, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (144, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (145, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (146, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (147, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (148, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (149, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (150, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (151, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (152, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (153, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (154, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (155, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (156, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (157, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (158, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (159, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (160, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (161, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (162, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (163, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (164, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (165, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (166, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (167, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (168, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (169, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (170, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (171, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (172, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (173, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (174, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (175, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (176, N'SCOObj.js', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (177, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (178, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (179, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (180, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (181, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (182, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (183, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (184, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (185, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (186, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (187, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (188, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (189, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (190, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (191, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (192, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (193, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (194, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (195, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (196, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (197, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (198, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (199, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (200, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (201, N'SCOObj.js', 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (202, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (203, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (204, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (205, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (206, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (207, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (208, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (209, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (210, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (211, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (212, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (213, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (214, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (215, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (216, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (217, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (218, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (219, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (220, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (221, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (222, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (223, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (224, N'New_Examination_23.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (225, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (226, N'New_Theory_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (227, N'New_Theory_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (228, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (229, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (230, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (231, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (232, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (233, N'New_Theory_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (234, N'New_Theory_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (235, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (236, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (237, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (238, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (239, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (240, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (241, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (242, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (243, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (244, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (245, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (246, N'New_Theory_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (247, N'New_Theory_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (248, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (249, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (250, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (251, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (252, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (253, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (254, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (255, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (256, N'New_Examination_8.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (257, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (258, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (259, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (260, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (261, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (262, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (263, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (264, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (265, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (266, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (267, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (268, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (269, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (270, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (271, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (272, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (273, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (274, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (275, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (276, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (277, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (278, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (279, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (280, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (281, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (282, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (283, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (284, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (285, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (286, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (287, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (288, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (289, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (290, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (291, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (292, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (293, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (294, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (295, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (296, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (297, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (298, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (299, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (300, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (301, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (302, N'New_Examination_2.html', 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (303, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (304, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (305, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (306, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (307, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (308, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (309, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (310, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (311, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (312, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (313, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (314, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (315, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (316, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (317, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (318, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (319, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (320, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (321, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (322, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (323, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (324, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (325, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (326, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (327, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (328, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (329, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (330, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (331, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (332, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (333, N'New_Examination_10.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (334, N'New_Examination_11.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (335, N'New_Examination_12.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (336, N'New_Examination_13.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (337, N'New_Examination_14.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (338, N'New_Examination_15.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (339, N'New_Examination_16.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (340, N'New_Examination_17.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (341, N'New_Examination_18.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (342, N'New_Examination_19.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (343, N'New_Examination_20.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (344, N'New_Examination_21.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (345, N'New_Examination_22.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (346, N'New_Examination_23.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (347, N'New_Examination.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (348, N'New_Examination_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (349, N'New_Examination_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (350, N'New_Examination_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (351, N'New_Examination_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (352, N'New_Examination_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (353, N'New_Examination_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (354, N'New_Examination_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (355, N'New_Examination_8.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (356, N'New_Examination_9.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (357, N'New_Examination_10.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (358, N'New_Examination_11.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (359, N'New_Examination_12.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (360, N'New_Examination_13.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (361, N'New_Examination_14.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (362, N'New_Examination_15.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (363, N'New_Examination_16.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (364, N'New_Examination_17.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (365, N'New_Examination_18.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (366, N'New_Examination_19.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (367, N'New_Examination_20.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (368, N'New_Examination_21.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (369, N'New_Examination_22.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (370, N'New_Examination_23.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (371, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (372, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (373, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (374, N'New_Theory_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (375, N'New_Theory_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (376, N'New_Theory_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (377, N'New_Theory_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (378, N'New_Theory_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (379, N'New_Theory.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (380, N'New_Theory_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (381, N'New_Theory_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (382, N'New_Theory_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (383, N'New_Theory_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (384, N'New_Theory_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (385, N'New_Theory_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (386, N'New_Theory_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (387, N'New_Theory.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (388, N'New_Theory_1.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (389, N'New_Theory_2.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (390, N'New_Theory_3.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (391, N'New_Theory_4.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (392, N'New_Theory_5.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (393, N'New_Theory_6.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (394, N'New_Theory_7.html', 1)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (395, N'New_Examination.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (396, N'New_Examination_1.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (397, N'New_Examination_2.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (398, N'New_Examination_3.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (399, N'New_Examination_4.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (400, N'New_Examination_5.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (401, N'New_Examination_6.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (402, N'New_Examination_7.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (403, N'New_Examination_8.html', 0)
GO
print 'Processed 400 total records'
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (404, N'New_Examination_9.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (405, N'New_Examination_10.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (406, N'New_Examination_11.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (407, N'New_Examination_12.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (408, N'New_Examination_13.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (409, N'New_Examination_14.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (410, N'New_Examination_15.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (411, N'New_Examination_16.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (412, N'New_Examination_17.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (413, N'New_Examination_18.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (414, N'New_Examination_19.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (415, N'New_Examination_20.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (416, N'New_Examination_21.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (417, N'New_Examination_22.html', 0)
INSERT [dbo].[tblFiles] ([ID], [Path], [sysState]) VALUES (418, N'New_Examination_23.html', 0)
SET IDENTITY_INSERT [dbo].[tblFiles] OFF
/****** Object:  UserDefinedFunction [dbo].[GetSecurityID]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSecurityID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetSecurityID]()
RETURNS uniqueidentifier
AS
BEGIN
	RETURN ''04f251c9-432f-49b1-ac00-2d54547adb41'';
END' 
END
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[LastName] [nvarchar](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[Login] [nvarchar](32) COLLATE Ukrainian_CI_AS NOT NULL,
	[PasswordHash] [char](32) COLLATE Ukrainian_CI_AS NOT NULL,
	[Email] [char](50) COLLATE Ukrainian_CI_AS NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UK_EMAIL] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UK_Login] UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON
INSERT [dbo].[tblUsers] ([ID], [FirstName], [LastName], [Login], [PasswordHash], [Email], [sysState]) VALUES (1, N'Volodymyr', N'Shtenovych', N'lex', N'B067B3D3054D8868C950E1946300A3F4', N'ShVolodya@gmail.com                               ', 0)
INSERT [dbo].[tblUsers] ([ID], [FirstName], [LastName], [Login], [PasswordHash], [Email], [sysState]) VALUES (3, N'V', N'P', N'vladykx', N'123                             ', N'1                                                 ', 0)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
/****** Object:  Table [dbo].[tblSampleBusinesObject]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSampleBusinesObject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblSampleBusinesObject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [UQ__tblSampleBusines__7E6CC920] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblGroups]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblGroups] ON
INSERT [dbo].[tblGroups] ([ID], [Name], [sysState]) VALUES (1, N'123', 0)
SET IDENTITY_INSERT [dbo].[tblGroups] OFF
/****** Object:  Table [dbo].[tblStages]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblStages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[Description] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CurriculumRef] [int] NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Stages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblStages] ON
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (1, N'', N'', 1, 1)
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (2, N'', N'', 1, 1)
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (3, N'123', N'a', 1, 1)
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (4, N'DB_test', N'', 3, 1)
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (5, N'DB_test2', N'', 3, 1)
INSERT [dbo].[tblStages] ([ID], [Name], [Description], [CurriculumRef], [sysState]) VALUES (6, N'DB_test_stage', N'DB_test_stage_desc', 4, 0)
SET IDENTITY_INSERT [dbo].[tblStages] OFF
/****** Object:  Table [dbo].[tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblOrganizations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblOrganizations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Title] [nvarchar](200) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_tblOrganizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblOrganizations] ON
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (1, 52, NULL, 0)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (2, 53, NULL, 0)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (3, 54, NULL, 0)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (4, 55, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (5, 56, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (6, 57, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (7, 58, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (8, 59, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (9, 60, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (10, 61, NULL, 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (11, 62, N'DB_test', 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (12, 63, N'C++_first', 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (13, 64, N'C++_first', 0)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (14, 65, N'C++_first', 1)
INSERT [dbo].[tblOrganizations] ([ID], [CourseID], [Title], [sysState]) VALUES (15, 66, N'DB_test', 0)
SET IDENTITY_INSERT [dbo].[tblOrganizations] OFF
/****** Object:  Table [dbo].[tblThemes]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblThemes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblThemes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[CourseRef] [int] NULL,
	[OrganizationRef] [int] NULL,
	[IsControl] [bit] NOT NULL,
	[PageOrderRef] [int] NULL,
	[sysState] [smallint] NOT NULL,
	[PageCountToShow] [int] NULL,
	[MaxCountToSubmit] [int] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblThemes] ON
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (1, N'for', 1, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (2, N'for', 2, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (3, N'Test1', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (4, N'Test2', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (5, N'Test3', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (6, N'Test4', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (7, N'Test5', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (8, N'Test6', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (9, N'Test7', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (10, N'Test8', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (11, N'Test9', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (12, N'Test10', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (13, N'Test11', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (14, N'Test12', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (15, N'Test13', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (16, N'Test14', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (17, N'Test15', 3, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (18, N'for', 4, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (19, N'for', 5, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (20, N'for', 6, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (21, N'Test1', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (22, N'Test2', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (23, N'Test3', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (24, N'Test4', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (25, N'Test5', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (26, N'Test6', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (27, N'Test7', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (28, N'Test8', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (29, N'Test9', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (30, N'Test10', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (31, N'Test11', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (32, N'Test12', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (33, N'Test13', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (34, N'Test14', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (35, N'Test15', 7, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (36, N'for', 8, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (37, N'DBColoquium1General_SQL', 9, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (38, N'DBColoquium1General_SQL', 10, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (39, N'Test1', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (40, N'Test2', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (41, N'Test3', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (42, N'Test4', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (43, N'Test5', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (44, N'Test6', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (45, N'Test7', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (46, N'Test8', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (47, N'Test9', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (48, N'Test10', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (49, N'Test11', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (50, N'Test12', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (51, N'Test13', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (52, N'Test14', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (53, N'Test15', 11, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (54, N'title1', 18, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (55, N'title1', 19, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (56, N'DBColoquium1General_SQL', 20, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (57, N'DBColoquium1General_SQL', 22, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (58, N'DBColoquium1General_SQL', 23, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (59, N'DBColoquium1General_SQL', 24, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (60, N'DBColoquium1General_SQL', 25, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (61, N'DBColoquium1General_SQL', 26, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (62, N'DBColoquium1General_SQL', 27, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (63, N'DBColoquium1General_SQL', 28, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (64, N'DBColoquium1General_SQL', 29, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (65, N'DBColoquium1General_SQL', 30, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (66, N'DBColoquium1General_SQL', 31, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (67, N'DBColoquium1General_SQL', 32, NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (68, N'DBColoquium1General_SQL', 33, NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[tblThemes] ([ID], [Name], [CourseRef], [OrganizationRef], [IsControl], [PageOrderRef], [sysState], [PageCountToShow], [MaxCountToSubmit]) VALUES (69, N'DB_test', 15, NULL, 0, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblThemes] OFF
/****** Object:  Table [dbo].[tblPages]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThemeRef] [int] NULL,
	[PageTypeRef] [int] NULL,
	[PageRank] [int] NULL,
	[PageName] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[PageFile] [varchar](250) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblPages] ON
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (1, 1, 2, 1, N'for_easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (2, 2, 2, 1, N'easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (3, 18, 2, 1, N'easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (4, 19, 2, 1, N'easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (5, 20, 2, 1, N'for_easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (6, 36, 2, 1, N'for_easy1', NULL, 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (7, 37, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (8, 37, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (9, 37, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (10, 37, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (11, 37, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (12, 37, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (13, 37, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (14, 37, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (15, 37, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (16, 37, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (17, 37, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (18, 37, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (19, 37, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (20, 37, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (21, 37, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (22, 37, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (23, 37, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (24, 37, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (25, 37, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (26, 37, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (27, 37, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (28, 37, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (29, 37, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (30, 37, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (31, 38, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (32, 38, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (33, 38, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (34, 38, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (35, 38, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (36, 38, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (37, 38, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (38, 38, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (39, 38, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (40, 38, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (41, 38, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (42, 38, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (43, 38, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (44, 38, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (45, 38, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (46, 38, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (47, 38, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (48, 38, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (49, 38, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (50, 38, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (51, 38, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (52, 38, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (53, 38, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (54, 38, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (55, 56, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (56, 56, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (57, 56, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (58, 56, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (59, 56, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (60, 56, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (61, 56, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (62, 56, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (63, 56, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (64, 56, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (65, 56, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (66, 56, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (67, 56, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (68, 56, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (69, 56, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (70, 56, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (71, 56, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (72, 56, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (73, 56, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (74, 56, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (75, 56, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (76, 56, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (77, 56, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (78, 56, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (79, 57, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (80, 57, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (81, 57, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (82, 57, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (83, 57, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (84, 57, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (85, 57, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (86, 57, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (87, 57, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (88, 57, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (89, 57, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (90, 57, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (91, 57, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (92, 57, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (93, 57, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (94, 57, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (95, 57, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (96, 57, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (97, 57, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (98, 57, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (99, 57, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (100, 57, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (101, 57, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (102, 57, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (103, 58, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (104, 59, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (105, 60, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (106, 60, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (107, 60, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (108, 60, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (109, 60, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (110, 60, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (111, 60, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (112, 60, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (113, 60, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (114, 60, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (115, 60, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (116, 60, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (117, 60, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (118, 60, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (119, 60, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (120, 60, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (121, 60, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (122, 60, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (123, 60, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (124, 60, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (125, 60, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (126, 60, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (127, 60, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (128, 60, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (129, 61, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (130, 61, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (131, 61, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (132, 61, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (133, 61, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (134, 61, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (135, 61, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (136, 61, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (137, 61, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (138, 61, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (139, 61, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (140, 61, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (141, 61, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (142, 61, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (143, 61, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (144, 61, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (145, 61, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (146, 61, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (147, 61, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (148, 61, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (149, 61, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (150, 61, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (151, 61, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (152, 61, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (153, 62, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (154, 62, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (155, 62, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (156, 62, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (157, 62, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (158, 62, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (159, 62, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (160, 62, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (161, 62, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (162, 62, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (163, 62, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (164, 62, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (165, 62, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (166, 62, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (167, 62, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (168, 62, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (169, 62, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (170, 62, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (171, 62, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (172, 62, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (173, 62, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (174, 62, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (175, 62, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (176, 62, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (177, 63, 2, 1, N'test_1', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (178, 63, 2, 1, N'test_2', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (179, 63, 2, 1, N'test_3', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (180, 63, 2, 1, N'test_4', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (181, 63, 2, 1, N'test_5', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (182, 63, 2, 1, N'test_6', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (183, 63, 2, 1, N'test_7', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (184, 63, 2, 1, N'test_8', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (185, 63, 2, 1, N'test_9', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (186, 63, 2, 1, N'test_10', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (187, 63, 2, 1, N'test_11', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (188, 63, 2, 1, N'test_12', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (189, 63, 2, 1, N'test_13', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (190, 63, 2, 1, N'test_14', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (191, 63, 2, 1, N'test_15', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (192, 63, 2, 1, N'test_16', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (193, 63, 2, 1, N'test_17', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (194, 63, 2, 1, N'test_18', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (195, 63, 2, 1, N'test_19', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (196, 63, 2, 1, N'test_20', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (197, 63, 2, 1, N'test_21', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (198, 63, 2, 1, N'test_22', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (199, 63, 2, 1, N'test_23', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (200, 63, 2, 1, N'test_24', N'<%@ Control Language="C#"%>
<%@ Register Src="~/Controls/TestControls/TextBoxTest.ascx" TagName="TextBoxTest" TagPrefix="it"', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (201, 64, 2, 1, N'test_1', N'New_Examination.html', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (202, 64, 2, 1, N'test_2', N'New_Examination_1.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (203, 64, 2, 1, N'test_3', N'New_Examination_2.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (204, 64, 2, 1, N'test_4', N'New_Examination_3.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (205, 64, 2, 1, N'test_5', N'New_Examination_4.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (206, 64, 2, 1, N'test_6', N'New_Examination_5.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (207, 64, 2, 1, N'test_7', N'New_Examination_6.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (208, 64, 2, 1, N'test_8', N'New_Examination_7.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (209, 64, 2, 1, N'test_9', N'New_Examination_8.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (210, 64, 2, 1, N'test_10', N'New_Examination_9.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (211, 64, 2, 1, N'test_11', N'New_Examination_10.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (212, 64, 2, 1, N'test_12', N'New_Examination_11.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (213, 64, 2, 1, N'test_13', N'New_Examination_12.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (214, 64, 2, 1, N'test_14', N'New_Examination_13.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (215, 64, 2, 1, N'test_15', N'New_Examination_14.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (216, 64, 2, 1, N'test_16', N'New_Examination_15.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (217, 64, 2, 1, N'test_17', N'New_Examination_16.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (218, 64, 2, 1, N'test_18', N'New_Examination_17.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (219, 64, 2, 1, N'test_19', N'New_Examination_18.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (220, 64, 2, 1, N'test_20', N'New_Examination_19.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (221, 64, 2, 1, N'test_21', N'New_Examination_20.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (222, 64, 2, 1, N'test_22', N'New_Examination_21.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (223, 64, 2, 1, N'test_23', N'New_Examination_22.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (224, 64, 2, 1, N'test_24', N'New_Examination_23.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (225, 65, 2, 1, N'test_1', N'New_Examination.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (226, 65, 2, 1, N'test_2', N'New_Examination_1.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (227, 65, 2, 1, N'test_3', N'New_Examination_2.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (228, 65, 2, 1, N'test_4', N'New_Examination_3.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (229, 65, 2, 1, N'test_5', N'New_Examination_4.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (230, 65, 2, 1, N'test_6', N'New_Examination_5.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (231, 65, 2, 1, N'test_7', N'New_Examination_6.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (232, 65, 2, 1, N'test_8', N'New_Examination_7.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (233, 65, 2, 1, N'test_9', N'New_Examination_8.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (234, 65, 2, 1, N'test_10', N'New_Examination_9.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (235, 65, 2, 1, N'test_11', N'New_Examination_10.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (236, 65, 2, 1, N'test_12', N'New_Examination_11.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (237, 65, 2, 1, N'test_13', N'New_Examination_12.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (238, 65, 2, 1, N'test_14', N'New_Examination_13.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (239, 65, 2, 1, N'test_15', N'New_Examination_14.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (240, 65, 2, 1, N'test_16', N'New_Examination_15.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (241, 65, 2, 1, N'test_17', N'New_Examination_16.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (242, 65, 2, 1, N'test_18', N'New_Examination_17.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (243, 65, 2, 1, N'test_19', N'New_Examination_18.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (244, 65, 2, 1, N'test_20', N'New_Examination_19.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (245, 65, 2, 1, N'test_21', N'New_Examination_20.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (246, 65, 2, 1, N'test_22', N'New_Examination_21.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (247, 65, 2, 1, N'test_23', N'New_Examination_22.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (248, 65, 2, 1, N'test_24', N'New_Examination_23.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (249, 66, 2, 1, N'test_1', N'New_Examination.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (250, 66, 2, 1, N'test_2', N'New_Examination_1.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (251, 66, 2, 1, N'test_3', N'New_Examination_2.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (252, 66, 2, 1, N'test_4', N'New_Examination_3.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (253, 66, 2, 1, N'test_5', N'New_Examination_4.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (254, 66, 2, 1, N'test_6', N'New_Examination_5.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (255, 66, 2, 1, N'test_7', N'New_Examination_6.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (256, 66, 2, 1, N'test_8', N'New_Examination_7.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (257, 66, 2, 1, N'test_9', N'New_Examination_8.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (258, 66, 2, 1, N'test_10', N'New_Examination_9.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (259, 66, 2, 1, N'test_11', N'New_Examination_10.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (260, 66, 2, 1, N'test_12', N'New_Examination_11.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (261, 66, 2, 1, N'test_13', N'New_Examination_12.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (262, 66, 2, 1, N'test_14', N'New_Examination_13.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (263, 66, 2, 1, N'test_15', N'New_Examination_14.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (264, 66, 2, 1, N'test_16', N'New_Examination_15.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (265, 66, 2, 1, N'test_17', N'New_Examination_16.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (266, 66, 2, 1, N'test_18', N'New_Examination_17.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (267, 66, 2, 1, N'test_19', N'New_Examination_18.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (268, 66, 2, 1, N'test_20', N'New_Examination_19.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (269, 66, 2, 1, N'test_21', N'New_Examination_20.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (270, 66, 2, 1, N'test_22', N'New_Examination_21.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (271, 66, 2, 1, N'test_23', N'New_Examination_22.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (272, 66, 2, 1, N'test_24', N'New_Examination_23.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (273, 67, 2, 1, N'test_1', N'New_Examination.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (274, 67, 2, 1, N'test_2', N'New_Examination_1.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (275, 67, 2, 1, N'test_3', N'New_Examination_2.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (276, 67, 2, 1, N'test_4', N'New_Examination_3.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (277, 67, 2, 1, N'test_5', N'New_Examination_4.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (278, 67, 2, 1, N'test_6', N'New_Examination_5.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (279, 67, 2, 1, N'test_7', N'New_Examination_6.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (280, 67, 2, 1, N'test_8', N'New_Examination_7.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (281, 67, 2, 1, N'test_9', N'New_Examination_8.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (282, 67, 2, 1, N'test_10', N'New_Examination_9.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (283, 67, 2, 1, N'test_11', N'New_Examination_10.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (284, 67, 2, 1, N'test_12', N'New_Examination_11.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (285, 67, 2, 1, N'test_13', N'New_Examination_12.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (286, 67, 2, 1, N'test_14', N'New_Examination_13.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (287, 67, 2, 1, N'test_15', N'New_Examination_14.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (288, 67, 2, 1, N'test_16', N'New_Examination_15.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (289, 67, 2, 1, N'test_17', N'New_Examination_16.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (290, 67, 2, 1, N'test_18', N'New_Examination_17.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (291, 67, 2, 1, N'test_19', N'New_Examination_18.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (292, 67, 2, 1, N'test_20', N'New_Examination_19.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (293, 67, 2, 1, N'test_21', N'New_Examination_20.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (294, 67, 2, 1, N'test_22', N'New_Examination_21.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (295, 67, 2, 1, N'test_23', N'New_Examination_22.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (296, 67, 2, 1, N'test_24', N'New_Examination_23.html', 1)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (297, 68, 2, 1, N'test_1', N'200', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (298, 68, 2, 1, N'test_2', N'202', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (299, 68, 2, 1, N'test_3', N'203', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (300, 68, 2, 1, N'test_4', N'204', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (301, 68, 2, 1, N'test_5', N'205', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (302, 68, 2, 1, N'test_6', N'206', 0)
GO
print 'Processed 300 total records'
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (303, 68, 2, 1, N'test_7', N'207', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (304, 68, 2, 1, N'test_8', N'208', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (305, 68, 2, 1, N'test_9', N'209', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (306, 68, 2, 1, N'test_10', N'210', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (307, 68, 2, 1, N'test_11', N'211', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (308, 68, 2, 1, N'test_12', N'212', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (309, 68, 2, 1, N'test_13', N'213', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (310, 68, 2, 1, N'test_14', N'214', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (311, 68, 2, 1, N'test_15', N'215', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (312, 68, 2, 1, N'test_16', N'216', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (313, 68, 2, 1, N'test_17', N'217', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (314, 68, 2, 1, N'test_18', N'218', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (315, 68, 2, 1, N'test_19', N'219', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (316, 68, 2, 1, N'test_20', N'220', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (317, 68, 2, 1, N'test_21', N'221', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (318, 68, 2, 1, N'test_22', N'222', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (319, 68, 2, 1, N'test_23', N'223', 0)
INSERT [dbo].[tblPages] ([ID], [ThemeRef], [PageTypeRef], [PageRank], [PageName], [PageFile], [sysState]) VALUES (320, 68, 2, 1, N'test_24', N'224', 0)
SET IDENTITY_INSERT [dbo].[tblPages] OFF
/****** Object:  Table [dbo].[tblPermissions]    Script Date: 01/05/2010 00:32:52 ******/
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
	[OwnerUserRef] [int] NULL,
	[OwnerGroupRef] [int] NULL,
	[CanBeDelagated] [bit] NOT NULL,
	[CourseRef] [int] NULL,
	[CourseOperationRef] [int] NULL,
	[CurriculumRef] [int] NULL,
	[CurriculumOperationRef] [int] NULL,
	[StageRef] [int] NULL,
	[StageOperationRef] [int] NULL,
	[ThemeRef] [int] NULL,
	[ThemeOperationRef] [int] NULL,
	[PageRef] [int] NULL,
	[PageOperationRef] [int] NULL,
	[UserObjectRef] [int] NULL,
	[GroupObjectRef] [int] NULL,
	[GroupRef] [int] NULL,
	[GroupOperationRef] [int] NULL,
	[OrganizationRef] [int] NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblPermissions] ON
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (1, NULL, NULL, NULL, 1, NULL, 1, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (2, NULL, NULL, NULL, 1, NULL, 1, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (3, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (4, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (5, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (6, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (7, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (8, NULL, NULL, NULL, 1, NULL, 1, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (9, NULL, NULL, NULL, 1, NULL, 1, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (10, NULL, CAST(0x00009CD600000000 AS DateTime), NULL, NULL, 1, 1, NULL, NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (11, NULL, CAST(0x00009CD600000000 AS DateTime), CAST(0x00009CDB00000000 AS DateTime), NULL, 1, 1, NULL, NULL, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (12, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (13, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (14, NULL, NULL, NULL, 1, NULL, 1, 9, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (15, NULL, NULL, NULL, 1, NULL, 1, 9, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (16, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (17, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (18, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (19, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (20, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (21, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (22, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (23, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (24, NULL, NULL, NULL, 1, NULL, 1, 10, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (25, NULL, NULL, NULL, 1, NULL, 1, 10, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (26, NULL, NULL, NULL, 1, NULL, 1, 11, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (27, NULL, NULL, NULL, 1, NULL, 1, 11, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (28, NULL, NULL, NULL, 1, NULL, 1, 12, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (29, NULL, NULL, NULL, 1, NULL, 1, 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (30, NULL, NULL, NULL, 1, NULL, 1, 13, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (31, NULL, NULL, NULL, 1, NULL, 1, 13, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (32, NULL, NULL, NULL, 1, NULL, 1, 14, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (33, NULL, NULL, NULL, 1, NULL, 1, 14, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (34, NULL, NULL, NULL, 1, NULL, 1, 18, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (35, NULL, NULL, NULL, 1, NULL, 1, 18, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (36, NULL, NULL, NULL, 1, NULL, 1, 19, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (37, NULL, NULL, NULL, 1, NULL, 1, 19, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (38, NULL, NULL, NULL, 1, NULL, 1, 20, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (39, NULL, NULL, NULL, 1, NULL, 1, 20, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (40, NULL, NULL, NULL, 1, NULL, 1, 22, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (41, NULL, NULL, NULL, 1, NULL, 1, 22, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (42, NULL, NULL, NULL, 1, NULL, 1, 25, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (43, NULL, NULL, NULL, 1, NULL, 1, 25, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (44, NULL, NULL, NULL, 1, NULL, 1, 26, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (45, NULL, NULL, NULL, 1, NULL, 1, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (46, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (47, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (48, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (49, NULL, CAST(0x00009CE100000000 AS DateTime), CAST(0x00009E4D00000000 AS DateTime), NULL, 1, 1, NULL, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (50, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (51, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (52, NULL, NULL, NULL, 1, NULL, 1, 27, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (53, NULL, NULL, NULL, 1, NULL, 1, 27, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (54, NULL, NULL, NULL, 1, NULL, 1, 28, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (55, NULL, NULL, NULL, 1, NULL, 1, 28, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (56, NULL, NULL, NULL, 1, NULL, 1, 29, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (57, NULL, NULL, NULL, 1, NULL, 1, 29, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (58, NULL, NULL, NULL, 1, NULL, 1, 30, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (59, NULL, NULL, NULL, 1, NULL, 1, 30, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (60, NULL, NULL, NULL, 1, NULL, 1, 31, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (61, NULL, NULL, NULL, 1, NULL, 1, 31, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (62, NULL, NULL, NULL, 1, NULL, 1, 32, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (63, NULL, NULL, NULL, 1, NULL, 1, 32, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (64, NULL, NULL, NULL, 1, NULL, 1, 33, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (65, NULL, NULL, NULL, 1, NULL, 1, 33, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (66, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (67, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (68, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (69, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (74, NULL, NULL, NULL, 1, NULL, 1, 55, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (75, NULL, NULL, NULL, 1, NULL, 1, 55, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (76, NULL, NULL, NULL, 1, NULL, 1, 56, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (77, NULL, NULL, NULL, 1, NULL, 1, 56, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (78, NULL, NULL, NULL, 1, NULL, 1, 57, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (79, NULL, NULL, NULL, 1, NULL, 1, 57, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (80, NULL, NULL, NULL, 1, NULL, 1, 58, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (81, NULL, NULL, NULL, 1, NULL, 1, 58, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (82, NULL, NULL, NULL, 1, NULL, 1, 59, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (83, NULL, NULL, NULL, 1, NULL, 1, 59, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (84, NULL, NULL, NULL, 1, NULL, 1, 60, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (85, NULL, NULL, NULL, 1, NULL, 1, 60, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (86, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (87, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (88, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (89, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (90, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (91, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (92, NULL, NULL, NULL, 1, NULL, 1, 61, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (93, NULL, NULL, NULL, 1, NULL, 1, 61, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (94, NULL, NULL, NULL, 1, NULL, 1, 62, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (95, NULL, NULL, NULL, 1, NULL, 1, 62, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (96, NULL, NULL, NULL, 1, NULL, 1, 63, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (97, NULL, NULL, NULL, 1, NULL, 1, 63, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (98, NULL, NULL, NULL, 1, NULL, 1, 65, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (99, NULL, NULL, NULL, 1, NULL, 1, 65, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (100, NULL, NULL, NULL, 1, NULL, 1, 66, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (101, NULL, NULL, NULL, 1, NULL, 1, 66, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (102, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (103, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (104, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (105, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (106, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 6, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (107, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tblPermissions] ([ID], [ParentPermitionRef], [DateSince], [DateTill], [OwnerUserRef], [OwnerGroupRef], [CanBeDelagated], [CourseRef], [CourseOperationRef], [CurriculumRef], [CurriculumOperationRef], [StageRef], [StageOperationRef], [ThemeRef], [ThemeOperationRef], [PageRef], [PageOperationRef], [UserObjectRef], [GroupObjectRef], [GroupRef], [GroupOperationRef], [OrganizationRef], [sysState]) VALUES (108, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 6, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblPermissions] OFF
/****** Object:  Table [dbo].[relUserRoles]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relUserRoles](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_USER_ROLE] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[relUserRoles] ([UserID], [RoleID], [sysState]) VALUES (1, 1, 0)
INSERT [dbo].[relUserRoles] ([UserID], [RoleID], [sysState]) VALUES (1, 2, 0)
INSERT [dbo].[relUserRoles] ([UserID], [RoleID], [sysState]) VALUES (1, 3, 0)
INSERT [dbo].[relUserRoles] ([UserID], [RoleID], [sysState]) VALUES (1, 4, 0)
INSERT [dbo].[relUserRoles] ([UserID], [RoleID], [sysState]) VALUES (1, 5, 0)
/****** Object:  Table [dbo].[tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledQuestions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageRef] [int] NOT NULL,
	[TimeLimit] [int] NULL,
	[MemoryLimit] [int] NULL,
	[OutputLimit] [int] NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCompiledQuestions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblQuestions]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblQuestions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageRef] [int] NULL,
	[TestName] [nvarchar](50) COLLATE Ukrainian_CI_AS NULL,
	[CorrectAnswer] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[Rank] [int] NULL,
	[IsCompiled] [bit] NOT NULL,
	[CompiledQuestionRef] [int] NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_CorrectAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblQuestions] ON
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (1, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (2, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (3, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (4, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (5, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (6, NULL, NULL, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (7, 7, N'SimpleQuestion1', N'1100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (8, 8, N'SimpleQuestion1', N'010110', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (9, 9, N'SimpleQuestion1', N'10110', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (10, 10, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (11, 11, N'SimpleQuestion1', N'001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (12, 12, N'SimpleQuestion1', N'100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (13, 13, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (14, 14, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (15, 15, N'SimpleQuestion1', N'00010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (16, 16, N'SimpleQuestion1', N'00001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (17, 17, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (18, 18, N'SimpleQuestion1', N'001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (19, 19, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (20, 20, N'SimpleQuestion1', N'10100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (21, 21, N'SimpleQuestion1', N'00100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (22, 22, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (23, 23, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (24, 24, N'SimpleQuestion1', N'0010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (25, 25, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (26, 26, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (27, 27, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (28, 28, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (29, 29, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (30, 30, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (31, 31, N'SimpleQuestion1', N'1100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (32, 32, N'SimpleQuestion1', N'010110', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (33, 33, N'SimpleQuestion1', N'10110', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (34, 34, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (35, 35, N'SimpleQuestion1', N'001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (36, 36, N'SimpleQuestion1', N'100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (37, 37, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (38, 38, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (39, 39, N'SimpleQuestion1', N'00010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (40, 40, N'SimpleQuestion1', N'00001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (41, 41, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (42, 42, N'SimpleQuestion1', N'001', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (43, 43, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (44, 44, N'SimpleQuestion1', N'10100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (45, 45, N'SimpleQuestion1', N'00100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (46, 46, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (47, 47, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (48, 48, N'SimpleQuestion1', N'0010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (49, 49, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (50, 50, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (51, 51, N'SimpleQuestion1', N'010', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (52, 52, N'SimpleQuestion1', N'01', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (53, 53, N'SimpleQuestion1', N'0100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (54, 54, N'SimpleQuestion1', N'10', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (55, 55, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (56, 56, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (57, 57, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (58, 58, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (59, 59, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (60, 60, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (61, 61, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (62, 62, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (63, 63, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (64, 64, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (65, 65, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (66, 66, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (67, 67, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (68, 68, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (69, 69, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (70, 70, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (71, 71, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (72, 72, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (73, 73, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (74, 74, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (75, 75, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (76, 76, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (77, 77, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (78, 78, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (79, 79, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (80, 80, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (81, 81, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (82, 82, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (83, 83, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (84, 84, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (85, 85, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (86, 86, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (87, 87, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (88, 88, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (89, 89, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (90, 90, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (91, 91, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (92, 92, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (93, 93, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (94, 94, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (95, 95, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (96, 96, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (97, 97, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (98, 98, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (99, 99, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (100, 100, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (101, 101, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (102, 102, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (103, 103, N'SimpleQuestion1', N'1100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (104, 104, N'SimpleQuestion1', N'1100', 1, 0, NULL, 0)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (105, 105, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (106, 106, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (107, 107, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (108, 108, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (109, 109, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (110, 110, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (111, 111, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (112, 112, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (113, 113, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (114, 114, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (115, 115, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (116, 116, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (117, 117, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (118, 118, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (119, 119, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (120, 120, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (121, 121, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (122, 122, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (123, 123, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (124, 124, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (125, 125, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (126, 126, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (127, 127, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (128, 128, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (129, 129, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (130, 130, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (131, 131, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (132, 132, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (133, 133, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (134, 134, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (135, 135, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (136, 136, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (137, 137, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (138, 138, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (139, 139, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (140, 140, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (141, 141, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (142, 142, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (143, 143, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (144, 144, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (145, 145, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (146, 146, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (147, 147, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (148, 148, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (149, 149, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (150, 150, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (151, 151, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (152, 152, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (153, 153, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (154, 154, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (155, 155, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (156, 156, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (157, 157, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (158, 158, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (159, 159, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (160, 160, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (161, 161, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (162, 162, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (163, 163, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (164, 164, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (165, 165, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (166, 166, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (167, 167, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (168, 168, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (169, 169, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (170, 170, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (171, 171, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (172, 172, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (173, 173, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (174, 174, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (175, 175, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (176, 176, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (177, 177, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (178, 177, N'SimpleQuestion1', N'1100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (179, 178, N'SimpleQuestion1', N'010110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (180, 179, N'SimpleQuestion1', N'10110', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (181, 180, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (182, 181, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (183, 182, N'SimpleQuestion1', N'100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (184, 183, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (185, 184, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (186, 185, N'SimpleQuestion1', N'00010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (187, 186, N'SimpleQuestion1', N'00001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (188, 187, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (189, 188, N'SimpleQuestion1', N'001', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (190, 189, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (191, 190, N'SimpleQuestion1', N'10100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (192, 191, N'SimpleQuestion1', N'00100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (193, 192, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (194, 193, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (195, 194, N'SimpleQuestion1', N'0010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (196, 195, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (197, 196, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (198, 197, N'SimpleQuestion1', N'010', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (199, 198, N'SimpleQuestion1', N'01', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (200, 199, N'SimpleQuestion1', N'0100', 1, 0, NULL, 1)
INSERT [dbo].[tblQuestions] ([ID], [PageRef], [TestName], [CorrectAnswer], [Rank], [IsCompiled], [CompiledQuestionRef], [sysState]) VALUES (201, 200, N'SimpleQuestion1', N'10', 1, 0, NULL, 1)
GO
print 'Processed 200 total records'
SET IDENTITY_INSERT [dbo].[tblQuestions] OFF
/****** Object:  Table [dbo].[tblUserAnswers]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUserAnswers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserRef] [int] NULL,
	[QuestionRef] [int] NULL,
	[UserAnswer] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[Date] [datetime] NULL,
	[IsCompiledAnswer] [bit] NOT NULL,
	[sysState] [smallint] NOT NULL,
	[AnswerTypeRef] [int] NOT NULL,
 CONSTRAINT [PK_UserAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblUserAnswers] ON
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (1, 1, 7, N'', CAST(0x00009CD6015805EB AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (2, 1, 8, N'', CAST(0x00009CD6015805F9 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (3, 1, 9, N'', CAST(0x00009CD601580602 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (4, 1, 10, N'', CAST(0x00009CD601580607 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (5, 1, 11, N'', CAST(0x00009CD601580610 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (6, 1, 12, N'', CAST(0x00009CD60158061A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (7, 1, 13, N'', CAST(0x00009CD60158061E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (8, 1, 14, N'', CAST(0x00009CD601580628 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (9, 1, 15, N'', CAST(0x00009CD601580631 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (10, 1, 16, N'', CAST(0x00009CD60158063B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (11, 1, 17, N'', CAST(0x00009CD60158063F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (12, 1, 18, N'', CAST(0x00009CD601580649 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (13, 1, 19, N'', CAST(0x00009CD601580652 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (14, 1, 20, N'', CAST(0x00009CD601580657 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (15, 1, 21, N'', CAST(0x00009CD601580660 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (16, 1, 22, N'', CAST(0x00009CD601580669 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (17, 1, 23, N'', CAST(0x00009CD601580673 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (18, 1, 24, N'', CAST(0x00009CD601580677 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (19, 1, 25, N'', CAST(0x00009CD601580681 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (20, 1, 26, N'', CAST(0x00009CD60158068A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (21, 1, 27, N'', CAST(0x00009CD60158068F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (22, 1, 28, N'', CAST(0x00009CD601580698 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (23, 1, 29, N'', CAST(0x00009CD6015806A2 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (24, 1, 30, N'', CAST(0x00009CD6015806B0 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (25, 1, 7, N'', CAST(0x00009CD60158F9D8 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (26, 1, 8, N'', CAST(0x00009CD60158F9F8 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (27, 1, 9, N'', CAST(0x00009CD60158FA02 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (28, 1, 10, N'', CAST(0x00009CD60158FA07 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (29, 1, 11, N'', CAST(0x00009CD60158FA10 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (30, 1, 12, N'', CAST(0x00009CD60158FA19 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (31, 1, 13, N'', CAST(0x00009CD60158FA1E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (32, 1, 14, N'', CAST(0x00009CD60158FA2C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (33, 1, 15, N'', CAST(0x00009CD60158FA35 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (34, 1, 16, N'', CAST(0x00009CD60158FA3F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (35, 1, 17, N'', CAST(0x00009CD60158FA5B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (36, 1, 18, N'', CAST(0x00009CD60158FA5F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (37, 1, 19, N'', CAST(0x00009CD60158FA69 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (38, 1, 20, N'', CAST(0x00009CD60158FA72 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (39, 1, 21, N'', CAST(0x00009CD60158FA7C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (40, 1, 22, N'', CAST(0x00009CD60158FA85 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (41, 1, 23, N'', CAST(0x00009CD60158FA8E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (42, 1, 24, N'', CAST(0x00009CD60158FA93 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (43, 1, 25, N'', CAST(0x00009CD60158FA9C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (44, 1, 26, N'', CAST(0x00009CD60158FAA6 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (45, 1, 27, N'', CAST(0x00009CD60158FAAF AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (46, 1, 28, N'', CAST(0x00009CD60158FAB4 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (47, 1, 29, N'', CAST(0x00009CD60158FABD AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (48, 1, 30, N'', CAST(0x00009CD60158FAC6 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (49, 1, 7, N'', CAST(0x00009CD601684882 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (50, 1, 8, N'', CAST(0x00009CD601684899 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (51, 1, 9, N'', CAST(0x00009CD6016848A3 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (52, 1, 10, N'', CAST(0x00009CD6016848A7 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (53, 1, 11, N'', CAST(0x00009CD6016848B1 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (54, 1, 12, N'', CAST(0x00009CD6016848BA AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (55, 1, 13, N'', CAST(0x00009CD6016848C3 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (56, 1, 14, N'', CAST(0x00009CD6016848CD AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (57, 1, 15, N'', CAST(0x00009CD6016848D2 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (58, 1, 16, N'', CAST(0x00009CD6016848DB AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (59, 1, 17, N'', CAST(0x00009CD6016848E4 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (60, 1, 18, N'', CAST(0x00009CD6016848E9 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (61, 1, 19, N'', CAST(0x00009CD6016848F2 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (62, 1, 20, N'', CAST(0x00009CD6016848FC AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (63, 1, 21, N'', CAST(0x00009CD601684900 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (64, 1, 22, N'', CAST(0x00009CD60168490A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (65, 1, 23, N'', CAST(0x00009CD601684913 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (66, 1, 24, N'', CAST(0x00009CD601684918 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (67, 1, 25, N'', CAST(0x00009CD601684921 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (68, 1, 26, N'', CAST(0x00009CD60168492A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (69, 1, 27, N'', CAST(0x00009CD601684934 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (70, 1, 28, N'', CAST(0x00009CD601684938 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (71, 1, 29, N'', CAST(0x00009CD601684942 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (72, 1, 30, N'', CAST(0x00009CD60168494B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (73, 1, 7, N'', CAST(0x00009CD900B6A4A0 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (74, 1, 8, N'', CAST(0x00009CD900B6A4F2 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (75, 1, 9, N'', CAST(0x00009CD900B6A4F8 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (76, 1, 10, N'', CAST(0x00009CD900B6A4FF AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (77, 1, 11, N'', CAST(0x00009CD900B6A504 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (78, 1, 12, N'', CAST(0x00009CD900B6A509 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (79, 1, 13, N'', CAST(0x00009CD900B6A50F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (80, 1, 14, N'', CAST(0x00009CD900B6A519 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (81, 1, 15, N'', CAST(0x00009CD900B6A520 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (82, 1, 16, N'', CAST(0x00009CD900B6A525 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (83, 1, 17, N'', CAST(0x00009CD900B6A52A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (84, 1, 18, N'', CAST(0x00009CD900B6A52F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (85, 1, 19, N'', CAST(0x00009CD900B6A533 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (86, 1, 20, N'', CAST(0x00009CD900B6A536 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (87, 1, 21, N'', CAST(0x00009CD900B6A539 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (88, 1, 22, N'', CAST(0x00009CD900B6A53F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (89, 1, 23, N'', CAST(0x00009CD900B6A542 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (90, 1, 24, N'', CAST(0x00009CD900B6A548 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (91, 1, 25, N'', CAST(0x00009CD900B6A54B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (92, 1, 26, N'', CAST(0x00009CD900B6A54F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (93, 1, 27, N'', CAST(0x00009CD900B6A553 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (94, 1, 28, N'', CAST(0x00009CD900B6A556 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (95, 1, 29, N'', CAST(0x00009CD900B6A55B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (96, 1, 30, N'', CAST(0x00009CD900B6A563 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (97, 1, 7, N'', CAST(0x00009CD900B6AD27 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (98, 1, 8, N'', CAST(0x00009CD900B6AD2C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (99, 1, 9, N'', CAST(0x00009CD900B6AD31 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (100, 1, 10, N'', CAST(0x00009CD900B6AD35 AS DateTime), 0, 0, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (101, 1, 11, N'', CAST(0x00009CD900B6AD38 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (102, 1, 12, N'', CAST(0x00009CD900B6AD3E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (103, 1, 13, N'', CAST(0x00009CD900B6AD41 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (104, 1, 14, N'', CAST(0x00009CD900B6AD45 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (105, 1, 15, N'', CAST(0x00009CD900B6AD48 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (106, 1, 16, N'', CAST(0x00009CD900B6AD4C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (107, 1, 17, N'', CAST(0x00009CD900B6AD50 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (108, 1, 18, N'', CAST(0x00009CD900B6AD54 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (109, 1, 19, N'', CAST(0x00009CD900B6AD58 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (110, 1, 20, N'', CAST(0x00009CD900B6AD5C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (111, 1, 21, N'', CAST(0x00009CD900B6AD62 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (112, 1, 22, N'', CAST(0x00009CD900B6AD76 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (113, 1, 23, N'', CAST(0x00009CD900B6AD7A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (114, 1, 24, N'', CAST(0x00009CD900B6AD7F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (115, 1, 25, N'', CAST(0x00009CD900B6AD83 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (116, 1, 26, N'', CAST(0x00009CD900B6AD88 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (117, 1, 27, N'', CAST(0x00009CD900B6AD8C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (118, 1, 28, N'', CAST(0x00009CD900B6AD90 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (119, 1, 29, N'', CAST(0x00009CD900B6AD9A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (120, 1, 30, N'', CAST(0x00009CD900B6AD9F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (121, 1, 7, N'', CAST(0x00009CE1013C6E15 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (122, 1, 8, N'', CAST(0x00009CE1013C6E20 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (123, 1, 9, N'', CAST(0x00009CE1013C6E24 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (124, 1, 10, N'', CAST(0x00009CE1013C6E28 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (125, 1, 11, N'', CAST(0x00009CE1013C6E2C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (126, 1, 12, N'', CAST(0x00009CE1013C6E30 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (127, 1, 13, N'', CAST(0x00009CE1013C6E34 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (128, 1, 14, N'', CAST(0x00009CE1013C6E3A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (129, 1, 15, N'', CAST(0x00009CE1013C6E41 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (130, 1, 16, N'', CAST(0x00009CE1013C6E51 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (131, 1, 17, N'', CAST(0x00009CE1013C6E57 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (132, 1, 18, N'', CAST(0x00009CE1013C6E5D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (133, 1, 19, N'', CAST(0x00009CE1013C6E61 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (134, 1, 20, N'', CAST(0x00009CE1013C6E65 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (135, 1, 21, N'', CAST(0x00009CE1013C6E69 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (136, 1, 22, N'', CAST(0x00009CE1013C6E70 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (137, 1, 23, N'', CAST(0x00009CE1013C6E75 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (138, 1, 24, N'', CAST(0x00009CE1013C6E7A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (139, 1, 25, N'', CAST(0x00009CE1013C6E7D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (140, 1, 26, N'', CAST(0x00009CE1013C6E81 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (141, 1, 27, N'', CAST(0x00009CE1013C6E8B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (142, 1, 28, N'', CAST(0x00009CE1013C6E95 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (143, 1, 29, N'', CAST(0x00009CE1013C6E9D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (144, 1, 30, N'', CAST(0x00009CE1013C6EA6 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (145, 1, 129, N'', CAST(0x00009CE1015CB29B AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (146, 1, 130, N'', CAST(0x00009CE1015CB2A2 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (147, 1, 131, N'', CAST(0x00009CE1015CB2A7 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (148, 1, 132, N'', CAST(0x00009CE1015CB2AB AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (149, 1, 133, N'', CAST(0x00009CE1015CB2B0 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (150, 1, 134, N'', CAST(0x00009CE1015CB2B4 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (151, 1, 135, N'', CAST(0x00009CE1015CB2B9 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (152, 1, 136, N'', CAST(0x00009CE1015CB2BD AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (153, 1, 137, N'', CAST(0x00009CE1015CB2C2 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (154, 1, 138, N'', CAST(0x00009CE1015CB2C6 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (155, 1, 139, N'', CAST(0x00009CE1015CB2CB AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (156, 1, 140, N'', CAST(0x00009CE1015CB2CF AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (157, 1, 141, N'', CAST(0x00009CE1015CB2D4 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (158, 1, 142, N'', CAST(0x00009CE1015CB2D8 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (159, 1, 143, N'', CAST(0x00009CE1015CB2DD AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (160, 1, 144, N'', CAST(0x00009CE1015CB2E2 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (161, 1, 145, N'', CAST(0x00009CE1015CB2E6 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (162, 1, 146, N'', CAST(0x00009CE1015CB2EA AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (163, 1, 147, N'', CAST(0x00009CE1015CB2EE AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (164, 1, 148, N'', CAST(0x00009CE1015CB2F2 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (165, 1, 149, N'', CAST(0x00009CE1015CB2F6 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (166, 1, 150, N'', CAST(0x00009CE1015CB2FA AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (167, 1, 151, N'', CAST(0x00009CE1015CB2FE AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (168, 1, 152, N'', CAST(0x00009CE1015CB302 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (169, 1, 129, N'', CAST(0x00009CE1015E31ED AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (170, 1, 130, N'', CAST(0x00009CE1015E31F2 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (171, 1, 131, N'', CAST(0x00009CE1015E31F6 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (172, 1, 132, N'', CAST(0x00009CE1015E31FB AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (173, 1, 133, N'', CAST(0x00009CE1015E3200 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (174, 1, 134, N'', CAST(0x00009CE1015E3204 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (175, 1, 135, N'', CAST(0x00009CE1015E3209 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (176, 1, 136, N'', CAST(0x00009CE1015E320D AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (177, 1, 137, N'', CAST(0x00009CE1015E3212 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (178, 1, 138, N'', CAST(0x00009CE1015E3217 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (179, 1, 139, N'', CAST(0x00009CE1015E321B AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (180, 1, 140, N'', CAST(0x00009CE1015E3220 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (181, 1, 141, N'', CAST(0x00009CE1015E3224 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (182, 1, 142, N'', CAST(0x00009CE1015E3229 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (183, 1, 143, N'', CAST(0x00009CE1015E322E AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (184, 1, 144, N'', CAST(0x00009CE1015E3232 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (185, 1, 145, N'', CAST(0x00009CE1015E323A AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (186, 1, 146, N'', CAST(0x00009CE1015E323E AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (187, 1, 147, N'', CAST(0x00009CE1015E3243 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (188, 1, 148, N'', CAST(0x00009CE1015E3247 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (189, 1, 149, N'', CAST(0x00009CE1015E324C AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (190, 1, 150, N'', CAST(0x00009CE1015E3252 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (191, 1, 151, N'', CAST(0x00009CE1015E3258 AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (192, 1, 152, N'', CAST(0x00009CE1015E325E AS DateTime), 0, 1, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (193, 1, 7, N'', CAST(0x00009CE2009BCAE1 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (194, 1, 8, N'', CAST(0x00009CE2009BCAF9 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (195, 1, 9, N'', CAST(0x00009CE2009BCB02 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (196, 1, 10, N'', CAST(0x00009CE2009BCB0C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (197, 1, 11, N'', CAST(0x00009CE2009BCB15 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (198, 1, 12, N'', CAST(0x00009CE2009BCB1A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (199, 1, 13, N'', CAST(0x00009CE2009BCB31 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (200, 1, 14, N'', CAST(0x00009CE2009BCB3A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (201, 1, 15, N'', CAST(0x00009CE2009BCB44 AS DateTime), 0, 0, 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (202, 1, 16, N'', CAST(0x00009CE2009BCB4D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (203, 1, 17, N'', CAST(0x00009CE2009BCB52 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (204, 1, 18, N'', CAST(0x00009CE2009BCB5B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (205, 1, 19, N'', CAST(0x00009CE2009BCB64 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (206, 1, 20, N'', CAST(0x00009CE2009BCB6E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (207, 1, 21, N'', CAST(0x00009CE2009BCB72 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (208, 1, 22, N'', CAST(0x00009CE2009BCB7C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (209, 1, 23, N'', CAST(0x00009CE2009BCB85 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (210, 1, 24, N'', CAST(0x00009CE2009BCB8F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (211, 1, 25, N'', CAST(0x00009CE2009BCB98 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (212, 1, 26, N'', CAST(0x00009CE2009BCB9D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (213, 1, 27, N'', CAST(0x00009CE2009BCBA6 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (214, 1, 28, N'', CAST(0x00009CE2009BCBAF AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (215, 1, 29, N'', CAST(0x00009CE2009BCBB9 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (216, 1, 30, N'', CAST(0x00009CE2009BCBBD AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (217, 1, 7, N'', CAST(0x00009CE200A093CD AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (218, 1, 8, N'', CAST(0x00009CE200A093DB AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (219, 1, 9, N'', CAST(0x00009CE200A093E5 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (220, 1, 10, N'', CAST(0x00009CE200A093EE AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (221, 1, 11, N'', CAST(0x00009CE200A093F3 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (222, 1, 12, N'', CAST(0x00009CE200A093F8 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (223, 1, 13, N'', CAST(0x00009CE200A093FC AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (224, 1, 14, N'', CAST(0x00009CE200A09406 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (225, 1, 15, N'', CAST(0x00009CE200A0940A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (226, 1, 16, N'', CAST(0x00009CE200A0940F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (227, 1, 17, N'', CAST(0x00009CE200A09414 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (228, 1, 18, N'', CAST(0x00009CE200A0941D AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (229, 1, 19, N'', CAST(0x00009CE200A09422 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (230, 1, 20, N'', CAST(0x00009CE200A09426 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (231, 1, 21, N'', CAST(0x00009CE200A0942B AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (232, 1, 22, N'', CAST(0x00009CE200A09434 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (233, 1, 23, N'', CAST(0x00009CE200A09439 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (234, 1, 24, N'', CAST(0x00009CE200A0943E AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (235, 1, 25, N'', CAST(0x00009CE200A09447 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (236, 1, 26, N'', CAST(0x00009CE200A0944C AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (237, 1, 27, N'', CAST(0x00009CE200A09450 AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (238, 1, 28, N'', CAST(0x00009CE200A0945A AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (239, 1, 29, N'', CAST(0x00009CE200A0945F AS DateTime), 0, 0, 2)
INSERT [dbo].[tblUserAnswers] ([ID], [UserRef], [QuestionRef], [UserAnswer], [Date], [IsCompiledAnswer], [sysState], [AnswerTypeRef]) VALUES (240, 1, 30, N'', CAST(0x00009CE200A09463 AS DateTime), 0, 0, 2)
SET IDENTITY_INSERT [dbo].[tblUserAnswers] OFF
/****** Object:  Table [dbo].[tblCompiledQuestionsData]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledQuestionsData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompiledQuestionRef] [int] NOT NULL,
	[Input] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[Output] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCompiledQuestionsData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblCompiledAnswers]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCompiledAnswers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeUsed] [int] NULL,
	[MemoryUsed] [int] NULL,
	[StatusRef] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
	[UserAnswerRef] [int] NOT NULL,
	[Output] [nvarchar](max) COLLATE Ukrainian_CI_AS NULL,
	[CompiledQuestionsDataRef] [int] NOT NULL,
 CONSTRAINT [PK_tblCompiledAnswers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblResources]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblResources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblResources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseRef] [int] NOT NULL,
	[Identifier] [nvarchar](300) COLLATE Ukrainian_CI_AS NOT NULL,
	[Type] [nvarchar](100) COLLATE Ukrainian_CI_AS NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_tblResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblResources] ON
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (2, 45, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (3, 46, N'New_Theory_1', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (4, 47, N'New_Theory_2', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (5, 48, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (6, 49, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (7, 50, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (8, 51, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (9, 52, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (10, 52, N'New_Theory_1', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (11, 52, N'New_Theory_2', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (12, 52, N'New_Examination', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (13, 52, N'New_Examination_1', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (14, 52, N'New_Examination_2', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (15, 52, N'New_Examination_3', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (16, 52, N'New_Examination_4', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (17, 52, N'New_Examination_5', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (18, 52, N'New_Examination_6', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (19, 52, N'New_Examination_7', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (20, 52, N'New_Examination_8', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (21, 52, N'New_Examination_9', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (22, 53, N'New_Theory', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (23, 53, N'New_Theory_1', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (24, 53, N'New_Theory_2', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (25, 53, N'New_Examination', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (26, 53, N'New_Examination_1', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (27, 53, N'New_Examination_2', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (28, 53, N'New_Examination_3', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (29, 53, N'New_Examination_4', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (30, 53, N'New_Examination_5', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (31, 53, N'New_Examination_6', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (32, 53, N'New_Examination_7', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (33, 53, N'New_Examination_8', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (34, 53, N'New_Examination_9', N'webcontent', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (35, 55, N'New_Theory', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (36, 55, N'New_Theory_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (37, 55, N'New_Theory_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (38, 55, N'New_Examination', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (39, 55, N'New_Examination_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (40, 55, N'New_Examination_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (41, 55, N'New_Examination_3', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (42, 55, N'New_Examination_4', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (43, 55, N'New_Examination_5', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (44, 55, N'New_Examination_6', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (45, 55, N'New_Examination_7', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (46, 55, N'New_Examination_8', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (47, 55, N'New_Examination_9', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (48, 56, N'New_Theory', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (49, 56, N'New_Theory_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (50, 56, N'New_Theory_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (51, 56, N'New_Examination', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (52, 56, N'New_Examination_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (53, 56, N'New_Examination_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (54, 56, N'New_Examination_3', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (55, 56, N'New_Examination_4', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (56, 56, N'New_Examination_5', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (57, 56, N'New_Examination_6', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (58, 56, N'New_Examination_7', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (59, 56, N'New_Examination_8', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (60, 56, N'New_Examination_9', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (61, 58, N'New_Theory', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (62, 58, N'New_Theory_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (63, 58, N'New_Theory_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (64, 58, N'New_Examination', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (65, 58, N'New_Examination_1', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (66, 58, N'New_Examination_2', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (67, 58, N'New_Examination_3', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (68, 58, N'New_Examination_4', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (69, 58, N'New_Examination_5', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (70, 58, N'New_Examination_6', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (71, 58, N'New_Examination_7', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (72, 58, N'New_Examination_8', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (73, 58, N'New_Examination_9', N'webcontent', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (74, 59, N'New_Theory', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (75, 59, N'New_Theory_1', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (76, 59, N'New_Theory_2', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (77, 59, N'New_Examination', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (78, 59, N'New_Examination_1', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (79, 59, N'New_Examination_2', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (80, 59, N'New_Examination_3', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (81, 59, N'New_Examination_4', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (82, 59, N'New_Examination_5', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (83, 59, N'New_Examination_6', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (84, 59, N'New_Examination_7', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (85, 59, N'New_Examination_8', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (86, 59, N'New_Examination_9', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (87, 60, N'New_Theory', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (88, 60, N'New_Theory_1', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (89, 60, N'New_Theory_2', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (90, 60, N'New_Examination', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (91, 60, N'New_Examination_1', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (92, 60, N'New_Examination_2', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (93, 60, N'New_Examination_3', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (94, 60, N'New_Examination_4', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (95, 60, N'New_Examination_5', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (96, 60, N'New_Examination_6', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (97, 60, N'New_Examination_7', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (98, 60, N'New_Examination_8', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (99, 60, N'New_Examination_9', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (100, 61, N'New_Examination', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (101, 61, N'New_Examination_1', N'sco', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (102, 61, N'New_Examination_2', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (103, 61, N'New_Examination_3', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (104, 61, N'New_Examination_4', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (105, 61, N'New_Examination_5', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (106, 61, N'New_Examination_6', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (107, 61, N'New_Examination_7', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (108, 61, N'New_Examination_8', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (109, 61, N'New_Examination_9', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (110, 61, N'New_Examination_10', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (111, 61, N'New_Examination_11', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (112, 61, N'New_Examination_12', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (113, 61, N'New_Examination_13', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (114, 61, N'New_Examination_14', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (115, 61, N'New_Examination_15', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (116, 61, N'New_Examination_16', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (117, 61, N'New_Examination_17', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (118, 61, N'New_Examination_18', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (119, 61, N'New_Examination_19', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (120, 61, N'New_Examination_20', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (121, 61, N'New_Examination_21', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (122, 61, N'New_Examination_22', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (123, 61, N'New_Examination_23', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (124, 62, N'New_Examination', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (125, 62, N'New_Examination_1', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (126, 62, N'New_Examination_2', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (127, 62, N'New_Examination_3', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (128, 62, N'New_Examination_4', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (129, 62, N'New_Examination_5', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (130, 62, N'New_Examination_6', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (131, 62, N'New_Examination_7', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (132, 62, N'New_Examination_8', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (133, 62, N'New_Examination_9', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (134, 62, N'New_Examination_10', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (135, 62, N'New_Examination_11', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (136, 62, N'New_Examination_12', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (137, 62, N'New_Examination_13', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (138, 62, N'New_Examination_14', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (139, 62, N'New_Examination_15', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (140, 62, N'New_Examination_16', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (141, 62, N'New_Examination_17', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (142, 62, N'New_Examination_18', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (143, 62, N'New_Examination_19', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (144, 62, N'New_Examination_20', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (145, 62, N'New_Examination_21', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (146, 62, N'New_Examination_22', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (147, 62, N'New_Examination_23', N'sco', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (148, 63, N'New_Theory', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (149, 63, N'New_Theory_1', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (150, 63, N'New_Theory_2', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (151, 63, N'New_Theory_3', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (152, 63, N'New_Theory_4', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (153, 63, N'New_Theory_5', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (154, 63, N'New_Theory_6', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (155, 63, N'New_Theory_7', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (156, 64, N'New_Theory', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (157, 64, N'New_Theory_1', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (158, 64, N'New_Theory_2', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (159, 64, N'New_Theory_3', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (160, 64, N'New_Theory_4', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (161, 64, N'New_Theory_5', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (162, 64, N'New_Theory_6', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (163, 64, N'New_Theory_7', N'asset', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (164, 65, N'New_Theory', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (165, 65, N'New_Theory_1', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (166, 65, N'New_Theory_2', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (167, 65, N'New_Theory_3', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (168, 65, N'New_Theory_4', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (169, 65, N'New_Theory_5', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (170, 65, N'New_Theory_6', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (171, 65, N'New_Theory_7', N'asset', 1)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (172, 66, N'New_Examination', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (173, 66, N'New_Examination_1', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (174, 66, N'New_Examination_2', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (175, 66, N'New_Examination_3', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (176, 66, N'New_Examination_4', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (177, 66, N'New_Examination_5', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (178, 66, N'New_Examination_6', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (179, 66, N'New_Examination_7', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (180, 66, N'New_Examination_8', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (181, 66, N'New_Examination_9', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (182, 66, N'New_Examination_10', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (183, 66, N'New_Examination_11', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (184, 66, N'New_Examination_12', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (185, 66, N'New_Examination_13', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (186, 66, N'New_Examination_14', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (187, 66, N'New_Examination_15', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (188, 66, N'New_Examination_16', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (189, 66, N'New_Examination_17', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (190, 66, N'New_Examination_18', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (191, 66, N'New_Examination_19', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (192, 66, N'New_Examination_20', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (193, 66, N'New_Examination_21', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (194, 66, N'New_Examination_22', N'sco', 0)
INSERT [dbo].[tblResources] ([ID], [CourseRef], [Identifier], [Type], [sysState]) VALUES (195, 66, N'New_Examination_23', N'sco', 0)
SET IDENTITY_INSERT [dbo].[tblResources] OFF
/****** Object:  Table [dbo].[relStagesThemes]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relStagesThemes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relStagesThemes](
	[StageRef] [int] NOT NULL,
	[ThemeRef] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_KEY] PRIMARY KEY CLUSTERED 
(
	[StageRef] ASC,
	[ThemeRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[relStagesThemes] ([StageRef], [ThemeRef], [sysState]) VALUES (6, 69, 0)
/****** Object:  Table [dbo].[relResourcesDependency]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relResourcesDependency](
	[DependantRef] [int] NOT NULL,
	[DependencyRef] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_relResourcesDependency] PRIMARY KEY CLUSTERED 
(
	[DependantRef] ASC,
	[DependencyRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[relResourcesFiles]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relResourcesFiles](
	[ResourceRef] [int] NOT NULL,
	[FileRef] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_relResourcesFiles] PRIMARY KEY CLUSTERED 
(
	[ResourceRef] ASC,
	[FileRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (9, 232, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (10, 233, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (11, 234, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (12, 235, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (13, 236, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (14, 237, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (15, 238, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (16, 239, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (17, 240, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (18, 241, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (19, 242, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (20, 243, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (21, 244, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (22, 245, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (23, 246, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (24, 247, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (25, 248, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (26, 249, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (27, 250, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (28, 251, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (29, 252, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (30, 253, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (31, 254, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (32, 255, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (33, 256, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (34, 257, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (35, 258, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (36, 259, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (37, 260, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (38, 261, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (39, 262, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (40, 263, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (41, 264, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (42, 265, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (43, 266, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (44, 267, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (45, 268, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (46, 269, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (47, 270, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (48, 271, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (49, 272, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (50, 273, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (51, 274, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (52, 275, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (53, 276, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (54, 277, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (55, 278, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (56, 279, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (57, 280, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (58, 281, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (59, 282, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (60, 283, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (61, 284, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (62, 285, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (63, 286, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (64, 287, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (65, 288, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (66, 289, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (67, 290, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (68, 291, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (69, 292, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (70, 293, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (71, 294, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (72, 295, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (73, 296, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (74, 297, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (75, 298, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (76, 299, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (77, 300, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (78, 301, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (79, 302, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (80, 303, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (81, 304, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (82, 305, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (83, 306, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (84, 307, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (85, 308, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (86, 309, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (87, 310, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (88, 311, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (89, 312, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (90, 313, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (91, 314, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (92, 315, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (93, 316, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (94, 317, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (95, 318, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (96, 319, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (97, 320, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (98, 321, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (99, 322, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (100, 323, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (101, 324, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (102, 325, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (103, 326, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (104, 327, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (105, 328, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (106, 329, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (107, 330, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (108, 331, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (109, 332, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (110, 333, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (111, 334, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (112, 335, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (113, 336, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (114, 337, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (115, 338, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (116, 339, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (117, 340, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (118, 341, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (119, 342, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (120, 343, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (121, 344, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (122, 345, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (123, 346, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (124, 347, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (125, 348, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (126, 349, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (127, 350, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (128, 351, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (129, 352, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (130, 353, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (131, 354, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (132, 355, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (133, 356, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (134, 357, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (135, 358, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (136, 359, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (137, 360, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (138, 361, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (139, 362, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (140, 363, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (141, 364, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (142, 365, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (143, 366, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (144, 367, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (145, 368, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (146, 369, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (147, 370, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (148, 371, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (149, 372, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (150, 373, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (151, 374, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (152, 375, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (153, 376, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (154, 377, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (155, 378, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (156, 379, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (157, 380, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (158, 381, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (159, 382, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (160, 383, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (161, 384, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (162, 385, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (163, 386, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (164, 387, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (165, 388, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (166, 389, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (167, 390, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (168, 391, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (169, 392, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (170, 393, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (171, 394, 1)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (172, 395, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (173, 396, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (174, 397, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (175, 398, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (176, 399, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (177, 400, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (178, 401, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (179, 402, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (180, 403, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (181, 404, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (182, 405, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (183, 406, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (184, 407, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (185, 408, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (186, 409, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (187, 410, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (188, 411, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (189, 412, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (190, 413, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (191, 414, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (192, 415, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (193, 416, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (194, 417, 0)
INSERT [dbo].[relResourcesFiles] ([ResourceRef], [FileRef], [sysState]) VALUES (195, 418, 0)
/****** Object:  Table [dbo].[tblItems]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[OrganizationRef] [int] NOT NULL,
	[ResourceRef] [int] NULL,
	[Title] [nvarchar](200) COLLATE Ukrainian_CI_AS NULL,
	[IsLeaf] [bit] NOT NULL,
	[sysState] [int] NOT NULL,
 CONSTRAINT [PK_tblItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblItems] ON
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (1, NULL, 5, NULL, NULL, 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (2, 1, 5, 48, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (3, 1, 5, 49, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (4, 1, 5, 50, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (5, NULL, 5, NULL, NULL, 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (6, 5, 5, 51, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (7, 5, 5, 52, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (8, 5, 5, 53, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (9, 5, 5, 54, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (10, 5, 5, 55, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (11, 5, 5, 56, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (12, 5, 5, 57, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (13, 5, 5, 58, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (14, 5, 5, 59, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (15, 5, 5, 60, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (16, NULL, 6, NULL, NULL, 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (17, 16, 6, 48, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (18, 16, 6, 49, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (19, 16, 6, 50, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (20, NULL, 6, NULL, NULL, 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (21, 20, 6, 51, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (22, 20, 6, 52, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (23, 20, 6, 53, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (24, 20, 6, 54, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (25, 20, 6, 55, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (26, 20, 6, 56, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (27, 20, 6, 57, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (28, 20, 6, 58, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (29, 20, 6, 59, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (30, 20, 6, 60, NULL, 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (31, NULL, 7, NULL, N'Theory', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (32, 31, 7, 61, N'inheritance', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (33, 31, 7, 62, N'access rules', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (34, 31, 7, 63, N'construction & destruction', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (35, NULL, 7, NULL, N'Exercices', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (36, 35, 7, 64, N'Circle', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (37, 35, 7, 65, N'Kafedra', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (38, 35, 7, 66, N'BankAccount', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (39, 35, 7, 67, N'Student', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (40, 35, 7, 68, N'Fruits', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (41, 35, 7, 69, N'test1', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (42, 35, 7, 70, N'test2', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (43, 35, 7, 71, N'test3', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (44, 35, 7, 72, N'test4', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (45, 35, 7, 73, N'test5', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (46, NULL, 8, NULL, N'Theory', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (47, 46, 8, 74, N'inheritance', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (48, 46, 8, 75, N'access rules', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (49, 46, 8, 76, N'construction & destruction', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (50, NULL, 8, NULL, N'Exercices', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (51, 50, 8, 77, N'Circle', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (52, 50, 8, 78, N'Kafedra', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (53, 50, 8, 79, N'BankAccount', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (54, 50, 8, 80, N'Student', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (55, 50, 8, 81, N'Fruits', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (56, 50, 8, 82, N'test1', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (57, 50, 8, 83, N'test2', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (58, 50, 8, 84, N'test3', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (59, 50, 8, 85, N'test4', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (60, 50, 8, 86, N'test5', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (61, NULL, 9, NULL, N'Theory', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (62, 61, 9, 87, N'inheritance', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (63, 61, 9, 88, N'access rules', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (64, 61, 9, 89, N'construction & destruction', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (65, NULL, 9, NULL, N'Exercices', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (66, 65, 9, 90, N'Circle', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (67, 65, 9, 91, N'Kafedra', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (68, 65, 9, 92, N'BankAccount', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (69, 65, 9, 93, N'Student', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (70, 65, 9, 94, N'Fruits', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (71, 65, 9, 95, N'test1', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (72, 65, 9, 96, N'test2', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (73, 65, 9, 97, N'test3', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (74, 65, 9, 98, N'test4', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (75, 65, 9, 99, N'test5', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (76, NULL, 10, NULL, N'DBColoquium1General+SQL', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (77, 76, 10, 100, N'test 1', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (78, 76, 10, 101, N'test 2', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (79, 76, 10, 102, N'test 3', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (80, 76, 10, 103, N'test 4', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (81, 76, 10, 104, N'test 5', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (82, 76, 10, 105, N'test 6', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (83, 76, 10, 106, N'test 7', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (84, 76, 10, 107, N'test 8', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (85, 76, 10, 108, N'test 9', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (86, 76, 10, 109, N'test 10', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (87, 76, 10, 110, N'test 11', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (88, 76, 10, 111, N'test 12', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (89, 76, 10, 112, N'test 13', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (90, 76, 10, 113, N'test 14', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (91, 76, 10, 114, N'test 15', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (92, 76, 10, 115, N'test 16', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (93, 76, 10, 116, N'test 17', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (94, 76, 10, 117, N'test 18', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (95, 76, 10, 118, N'test 19', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (96, 76, 10, 119, N'test 20', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (97, 76, 10, 120, N'test 21', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (98, 76, 10, 121, N'test 22', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (99, 76, 10, 122, N'test 23', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (100, 76, 10, 123, N'test 24', 1, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (101, NULL, 11, NULL, N'DBColoquium1General+SQL', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (102, 101, 11, 124, N'test 1', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (103, 101, 11, 125, N'test 2', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (104, 101, 11, 126, N'test 3', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (105, 101, 11, 127, N'test 4', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (106, 101, 11, 128, N'test 5', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (107, 101, 11, 129, N'test 6', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (108, 101, 11, 130, N'test 7', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (109, 101, 11, 131, N'test 8', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (110, 101, 11, 132, N'test 9', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (111, 101, 11, 133, N'test 10', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (112, 101, 11, 134, N'test 11', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (113, 101, 11, 135, N'test 12', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (114, 101, 11, 136, N'test 13', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (115, 101, 11, 137, N'test 14', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (116, 101, 11, 138, N'test 15', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (117, 101, 11, 139, N'test 16', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (118, 101, 11, 140, N'test 17', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (119, 101, 11, 141, N'test 18', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (120, 101, 11, 142, N'test 19', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (121, 101, 11, 143, N'test 20', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (122, 101, 11, 144, N'test 21', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (123, 101, 11, 145, N'test 22', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (124, 101, 11, 146, N'test 23', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (125, 101, 11, 147, N'test 24', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (126, NULL, 12, NULL, N'C++_first', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (127, 126, 12, 148, N'Проста С++ програма', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (128, 126, 12, 149, N'Вирази з даними вбудованих типів', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (129, 126, 12, 153, N'Вказівники - низькорівневий засіб С++', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (130, 126, 12, 154, N'Функції', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (131, 126, 12, 155, N'New Theory', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (132, NULL, 13, NULL, N'C++_first', 0, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (133, 132, 13, 156, N'Проста С++ програма', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (134, 132, 13, 157, N'Вирази з даними вбудованих типів', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (135, 132, 13, 161, N'Вказівники - низькорівневий засіб С++', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (136, 132, 13, 162, N'Функції', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (137, 132, 13, 163, N'New Theory', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (138, NULL, 14, NULL, N'C++_first', 0, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (139, 138, 14, 164, N'Проста С++ програма', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (140, 138, 14, 165, N'Вирази з даними вбудованих типів', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (141, 138, 14, 169, N'Вказівники - низькорівневий засіб С++', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (142, 138, 14, 170, N'Функції', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (143, 138, 14, 171, N'New Theory', 1, 1)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (144, NULL, 15, NULL, N'DBColoquium1General+SQL', 0, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (145, 144, 15, 172, N'test 1', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (146, 144, 15, 173, N'test 2', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (147, 144, 15, 174, N'test 3', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (148, 144, 15, 175, N'test 4', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (149, 144, 15, 176, N'test 5', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (150, 144, 15, 177, N'test 6', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (151, 144, 15, 178, N'test 7', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (152, 144, 15, 179, N'test 8', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (153, 144, 15, 180, N'test 9', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (154, 144, 15, 181, N'test 10', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (155, 144, 15, 182, N'test 11', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (156, 144, 15, 183, N'test 12', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (157, 144, 15, 184, N'test 13', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (158, 144, 15, 185, N'test 14', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (159, 144, 15, 186, N'test 15', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (160, 144, 15, 187, N'test 16', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (161, 144, 15, 188, N'test 17', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (162, 144, 15, 189, N'test 18', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (163, 144, 15, 190, N'test 19', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (164, 144, 15, 191, N'test 20', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (165, 144, 15, 192, N'test 21', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (166, 144, 15, 193, N'test 22', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (167, 144, 15, 194, N'test 23', 1, 0)
INSERT [dbo].[tblItems] ([ID], [PID], [OrganizationRef], [ResourceRef], [Title], [IsLeaf], [sysState]) VALUES (168, 144, 15, 195, N'test 24', 1, 0)
SET IDENTITY_INSERT [dbo].[tblItems] OFF
/****** Object:  Table [dbo].[relUserGroups]    Script Date: 01/05/2010 00:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relUserGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relUserGroups](
	[UserRef] [int] NOT NULL,
	[GroupRef] [int] NOT NULL,
	[sysState] [smallint] NOT NULL,
 CONSTRAINT [PK_relUserGroups_KEY] PRIMARY KEY CLUSTERED 
(
	[UserRef] ASC,
	[GroupRef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[relUserGroups] ([UserRef], [GroupRef], [sysState]) VALUES (1, 1, 0)
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsTheme]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsTheme]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetPermissionsTheme]
	@UserID int,
	@ThemeOperationID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 
    
	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((@ThemeOperationID IS NULL) OR (@ThemeOperationID = ThemeOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[ThemeRef],parent_prms.[ThemeOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForCourse]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetOperationsForCourse]
	@UserID int,
	@CourseID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
	IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CourseRef],parent_prms.[CourseOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT DISTINCT CourseOperationRef from FlatPermissionList		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsCourse]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetPermissionsCourse]
	@UserID int,
	@CourseOperationID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 
    
	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((@CourseOperationID IS NULL) OR (@CourseOperationID = CourseOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CourseRef],parent_prms.[CourseOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForCurriculum]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetOperationsForCurriculum]
	@UserID int,
	@CurriculumID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
	IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CurriculumRef],parent_prms.[CurriculumOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT DISTINCT CurriculumOperationRef from FlatPermissionList		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsCurriculum]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetPermissionsCurriculum]
	@UserID int,
	@CurriculumOperationID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 
    
	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((@CurriculumOperationID IS NULL) OR (@CurriculumOperationID = CurriculumOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CurriculumRef],parent_prms.[CurriculumOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsGroup]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetPermissionsGroup]
	@UserID int,
	@GroupOperationID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 
    
	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((@GroupOperationID IS NULL) OR (@GroupOperationID = GroupOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[GroupRef],parent_prms.[GroupOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForTheme]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForTheme]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetOperationsForTheme]
	@UserID int,
	@ThemeID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
	IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[ThemeRef],parent_prms.[ThemeOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT DISTINCT ThemeOperationRef from FlatPermissionList		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForStage]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForStage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetOperationsForStage]
	@UserID int,
	@StageID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
	IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[StageRef],parent_prms.[StageOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT DISTINCT StageOperationRef from FlatPermissionList		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetPermissionsStage]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetPermissionsStage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetPermissionsStage]
	@UserID int,
	@StageOperationID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 
    
	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((@StageOperationID IS NULL) OR (@StageOperationID = StageOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[StageRef],parent_prms.[StageOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetOperationsForGroup]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetOperationsForGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetOperationsForGroup]
	@UserID int,
	@GroupID int = NULL,
	@TargetDate datetime = NULL
AS
BEGIN
	IF @TargetDate IS NULL 
		SET @TargetDate = GETDATE(); 

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]
		FROM tblPermissions 
		WHERE ((@UserID = OwnerUserRef) OR (EXISTS (SELECT * FROM relUserGroups WHERE @UserID = UserRef AND OwnerGroupRef = relUserGroups.GroupRef ))) AND 
            (sysState = 0) AND 
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[GroupRef],parent_prms.[GroupOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT DISTINCT GroupOperationRef from FlatPermissionList		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionStage]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionStage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_CheckPermissionStage]
	@UserID int,
	@StageOperationID int,   
    @StageID int,
	@TargetDate datetime = NULL
AS
BEGIN    
	IF @TargetDate IS NULL
		SET @TargetDate = GETDATE();

	IF	(NOT EXISTS (SELECT ID FROM tblPermissions WHERE 
		@UserID = OwnerUserRef AND
        sysState = 0 AND
		@StageID = StageRef AND
		@StageOperationID = StageOperationRef AND
		((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
	)) RAISERROR (''Not enough permission to perform this operation'', 16, 16);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsStage]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsStage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetGroupPermissionsStage]
    @GroupID int,
    @StageOperationID int = NULL,
    @TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL
        SET @TargetDate = GETDATE();
    

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[StageRef],[StageOperationRef]
		FROM tblPermissions 
		WHERE (@GroupID = OwnerGroupRef) AND 
            (sysState = 0) AND 
            ((@StageOperationID IS NULL) OR (@StageOperationID = StageOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[StageRef],parent_prms.[StageOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionGroup]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_CheckPermissionGroup]
	@UserID int,
	@GroupOperationID int,   
    @GroupID int,
	@TargetDate datetime = NULL
AS
BEGIN    
	IF @TargetDate IS NULL
		SET @TargetDate = GETDATE();

	IF	(NOT EXISTS (SELECT ID FROM tblPermissions WHERE 
		@UserID = OwnerUserRef AND
        sysState = 0 AND
		@GroupID = GroupRef AND
		@GroupOperationID = GroupOperationRef AND
		((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
	)) RAISERROR (''Not enough permission to perform this operation'', 16, 16);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsGroup]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetGroupPermissionsGroup]
    @GroupID int,
    @GroupOperationID int = NULL,
    @TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL
        SET @TargetDate = GETDATE();
    

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[GroupRef],[GroupOperationRef]
		FROM tblPermissions 
		WHERE (@GroupID = OwnerGroupRef) AND 
            (sysState = 0) AND 
            ((@GroupOperationID IS NULL) OR (@GroupOperationID = GroupOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[GroupRef],parent_prms.[GroupOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionCurriculum]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_CheckPermissionCurriculum]
	@UserID int,
	@CurriculumOperationID int,   
    @CurriculumID int,
	@TargetDate datetime = NULL
AS
BEGIN    
	IF @TargetDate IS NULL
		SET @TargetDate = GETDATE();

	IF	(NOT EXISTS (SELECT ID FROM tblPermissions WHERE 
		@UserID = OwnerUserRef AND
        sysState = 0 AND
		@CurriculumID = CurriculumRef AND
		@CurriculumOperationID = CurriculumOperationRef AND
		((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
	)) RAISERROR (''Not enough permission to perform this operation'', 16, 16);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsCurriculum]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsCurriculum]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetGroupPermissionsCurriculum]
    @GroupID int,
    @CurriculumOperationID int = NULL,
    @TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL
        SET @TargetDate = GETDATE();
    

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CurriculumRef],[CurriculumOperationRef]
		FROM tblPermissions 
		WHERE (@GroupID = OwnerGroupRef) AND 
            (sysState = 0) AND 
            ((@CurriculumOperationID IS NULL) OR (@CurriculumOperationID = CurriculumOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CurriculumRef],parent_prms.[CurriculumOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionCourse]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_CheckPermissionCourse]
	@UserID int,
	@CourseOperationID int,   
    @CourseID int,
	@TargetDate datetime = NULL
AS
BEGIN    
	IF @TargetDate IS NULL
		SET @TargetDate = GETDATE();

	IF	(NOT EXISTS (SELECT ID FROM tblPermissions WHERE 
		@UserID = OwnerUserRef AND
        sysState = 0 AND
		@CourseID = CourseRef AND
		@CourseOperationID = CourseOperationRef AND
		((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
	)) RAISERROR (''Not enough permission to perform this operation'', 16, 16);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsCourse]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetGroupPermissionsCourse]
    @GroupID int,
    @CourseOperationID int = NULL,
    @TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL
        SET @TargetDate = GETDATE();
    

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[CourseRef],[CourseOperationRef]
		FROM tblPermissions 
		WHERE (@GroupID = OwnerGroupRef) AND 
            (sysState = 0) AND 
            ((@CourseOperationID IS NULL) OR (@CourseOperationID = CourseOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[CourseRef],parent_prms.[CourseOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_CheckPermissionTheme]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_CheckPermissionTheme]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_CheckPermissionTheme]
	@UserID int,
	@ThemeOperationID int,   
    @ThemeID int,
	@TargetDate datetime = NULL
AS
BEGIN    
	IF @TargetDate IS NULL
		SET @TargetDate = GETDATE();

	IF	(NOT EXISTS (SELECT ID FROM tblPermissions WHERE 
		@UserID = OwnerUserRef AND
        sysState = 0 AND
		@ThemeID = ThemeRef AND
		@ThemeOperationID = ThemeOperationRef AND
		((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
	)) RAISERROR (''Not enough permission to perform this operation'', 16, 16);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Security_GetGroupPermissionsTheme]    Script Date: 01/05/2010 00:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Security_GetGroupPermissionsTheme]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Security_GetGroupPermissionsTheme]
    @GroupID int,
    @ThemeOperationID int = NULL,
    @TargetDate datetime = NULL
AS
BEGIN
    IF @TargetDate IS NULL
        SET @TargetDate = GETDATE();
    

	WITH FlatPermissionList ([ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]) AS
	(
		SELECT [ID],[ParentPermitionRef],[DateSince],[DateTill],[OwnerUserRef],[OwnerGroupRef],[CanBeDelagated],[ThemeRef],[ThemeOperationRef]
		FROM tblPermissions 
		WHERE (@GroupID = OwnerGroupRef) AND 
            (sysState = 0) AND 
            ((@ThemeOperationID IS NULL) OR (@ThemeOperationID = ThemeOperationRef)) AND
            ((DateSince IS NULL) OR (DateSince <= @TargetDate)) 
            AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
		
		UNION ALL
		
		SELECT p.[ID],p.[ParentPermitionRef],p.[DateSince],p.[DateTill],p.[OwnerUserRef],p.[OwnerGroupRef],p.[CanBeDelagated],parent_prms.[ThemeRef],parent_prms.[ThemeOperationRef]
		FROM tblPermissions p
		INNER JOIN FlatPermissionList parent_prms ON p.ParentPermitionRef = parent_prms.ID AND
            (parent_prms.[CanBeDelagated] = 1) AND
            (p.sysState = 0) AND 
            ((p.DateSince IS NULL) OR (p.DateSince <= @TargetDate)) 
            AND ((p.DateTill IS NULL) OR (p.DateTill >= @TargetDate))
	)

    SELECT * from FlatPermissionList
END' 
END
GO
/****** Object:  Default [DF__fxAnswerT__sysSt__0C85DE4D]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxAnswerT__sysSt__0C85DE4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxAnswerType]'))
Begin
ALTER TABLE [dbo].[fxAnswerType] ADD  CONSTRAINT [DF__fxAnswerT__sysSt__0C85DE4D]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxCompile__sysSt__73BA3083]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCompile__sysSt__73BA3083]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCompiledStatuses]'))
Begin
ALTER TABLE [dbo].[fxCompiledStatuses] ADD  CONSTRAINT [DF__fxCompile__sysSt__73BA3083]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxCourseO__sysSt__72C60C4A]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCourseO__sysSt__72C60C4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCourseOperations]'))
Begin
ALTER TABLE [dbo].[fxCourseOperations] ADD  CONSTRAINT [DF__fxCourseO__sysSt__72C60C4A]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxCurricu__sysSt__71D1E811]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxCurricu__sysSt__71D1E811]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxCurriculumOperations]'))
Begin
ALTER TABLE [dbo].[fxCurriculumOperations] ADD  CONSTRAINT [DF__fxCurricu__sysSt__71D1E811]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxGroupOp__sysSt__03F0984C]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxGroupOp__sysSt__03F0984C]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxGroupOperations]'))
Begin
ALTER TABLE [dbo].[fxGroupOperations] ADD  CONSTRAINT [DF__fxGroupOp__sysSt__03F0984C]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxLanguag__sysSt__70DDC3D8]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxLanguag__sysSt__70DDC3D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxLanguages]'))
Begin
ALTER TABLE [dbo].[fxLanguages] ADD  CONSTRAINT [DF__fxLanguag__sysSt__70DDC3D8]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxPageOpe__sysSt__6FE99F9F]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageOpe__sysSt__6FE99F9F]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageOperations]'))
Begin
ALTER TABLE [dbo].[fxPageOperations] ADD  CONSTRAINT [DF__fxPageOpe__sysSt__6FE99F9F]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxPageOrd__sysSt__6EF57B66]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageOrd__sysSt__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageOrders]'))
Begin
ALTER TABLE [dbo].[fxPageOrders] ADD  CONSTRAINT [DF__fxPageOrd__sysSt__6EF57B66]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxPageTyp__sysSt__6E01572D]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxPageTyp__sysSt__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxPageTypes]'))
Begin
ALTER TABLE [dbo].[fxPageTypes] ADD  CONSTRAINT [DF__fxPageTyp__sysSt__6E01572D]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxRoles__sysStat__6D0D32F4]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxRoles__sysStat__6D0D32F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxRoles]'))
Begin
ALTER TABLE [dbo].[fxRoles] ADD  CONSTRAINT [DF__fxRoles__sysStat__6D0D32F4]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxSampleB__sysSt__6A30C649]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxSampleB__sysSt__6A30C649]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxSampleBusinesObjectOperation]'))
Begin
ALTER TABLE [dbo].[fxSampleBusinesObjectOperation] ADD  CONSTRAINT [DF__fxSampleB__sysSt__6A30C649]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxStageOp__sysSt__6C190EBB]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxStageOp__sysSt__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxStageOperations]'))
Begin
ALTER TABLE [dbo].[fxStageOperations] ADD  CONSTRAINT [DF__fxStageOp__sysSt__6C190EBB]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__fxThemeOp__sysSt__6B24EA82]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__fxThemeOp__sysSt__6B24EA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[fxThemeOperations]'))
Begin
ALTER TABLE [dbo].[fxThemeOperations] ADD  CONSTRAINT [DF__fxThemeOp__sysSt__6B24EA82]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_relResourcesDependency_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_relResourcesDependency_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
Begin
ALTER TABLE [dbo].[relResourcesDependency] ADD  CONSTRAINT [DF_relResourcesDependency_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_relResourcesFiles_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_relResourcesFiles_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
Begin
ALTER TABLE [dbo].[relResourcesFiles] ADD  CONSTRAINT [DF_relResourcesFiles_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__relStages__sysSt__7A672E12]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relStages__sysSt__7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
Begin
ALTER TABLE [dbo].[relStagesThemes] ADD  CONSTRAINT [DF__relStages__sysSt__7A672E12]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__relUserGr__sysSt__02FC7413]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relUserGr__sysSt__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
Begin
ALTER TABLE [dbo].[relUserGroups] ADD  CONSTRAINT [DF__relUserGr__sysSt__02FC7413]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__relUserRo__sysSt__02084FDA]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__relUserRo__sysSt__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
Begin
ALTER TABLE [dbo].[relUserRoles] ADD  CONSTRAINT [DF__relUserRo__sysSt__02084FDA]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__76969D2E]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__76969D2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] ADD  CONSTRAINT [DF__tblCompil__sysSt__76969D2E]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblCompil__UserA__04E4BC85]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__UserA__04E4BC85]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] ADD  CONSTRAINT [DF__tblCompil__UserA__04E4BC85]  DEFAULT ((0)) FOR [UserAnswerRef]

End
GO
/****** Object:  Default [DF__tblCompil__Compi__08B54D69]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__Compi__08B54D69]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
Begin
ALTER TABLE [dbo].[tblCompiledAnswers] ADD  CONSTRAINT [DF__tblCompil__Compi__08B54D69]  DEFAULT ((0)) FOR [CompiledQuestionsDataRef]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__778AC167]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__778AC167]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]'))
Begin
ALTER TABLE [dbo].[tblCompiledQuestions] ADD  CONSTRAINT [DF__tblCompil__sysSt__778AC167]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblCompil__sysSt__7D439ABD]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCompil__sysSt__7D439ABD]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]'))
Begin
ALTER TABLE [dbo].[tblCompiledQuestionsData] ADD  CONSTRAINT [DF__tblCompil__sysSt__7D439ABD]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblCourse__sysSt__75A278F5]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCourse__sysSt__75A278F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCourses]'))
Begin
ALTER TABLE [dbo].[tblCourses] ADD  CONSTRAINT [DF__tblCourse__sysSt__75A278F5]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblCurric__sysSt__74AE54BC]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblCurric__sysSt__74AE54BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCurriculums]'))
Begin
ALTER TABLE [dbo].[tblCurriculums] ADD  CONSTRAINT [DF__tblCurric__sysSt__74AE54BC]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_tblFiles_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblFiles_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblFiles]'))
Begin
ALTER TABLE [dbo].[tblFiles] ADD  CONSTRAINT [DF_tblFiles_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblGroups__sysSt__693CA210]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblGroups__sysSt__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGroups]'))
Begin
ALTER TABLE [dbo].[tblGroups] ADD  CONSTRAINT [DF__tblGroups__sysSt__693CA210]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_tblItems_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblItems_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
Begin
ALTER TABLE [dbo].[tblItems] ADD  CONSTRAINT [DF_tblItems_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_tblOrganizations_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblOrganizations_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOrganizations]'))
Begin
ALTER TABLE [dbo].[tblOrganizations] ADD  CONSTRAINT [DF_tblOrganizations_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblPages__sysSta__7C4F7684]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPages__sysSta__7C4F7684]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
Begin
ALTER TABLE [dbo].[tblPages] ADD  CONSTRAINT [DF__tblPages__sysSta__7C4F7684]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblPermis__sysSt__7B5B524B]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblPermis__sysSt__7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
Begin
ALTER TABLE [dbo].[tblPermissions] ADD  CONSTRAINT [DF__tblPermis__sysSt__7B5B524B]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblQuesti__sysSt__7E37BEF6]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblQuesti__sysSt__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
Begin
ALTER TABLE [dbo].[tblQuestions] ADD  CONSTRAINT [DF__tblQuesti__sysSt__7E37BEF6]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF_tblResources_sysState]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblResources_sysState]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResources]'))
Begin
ALTER TABLE [dbo].[tblResources] ADD  CONSTRAINT [DF_tblResources_sysState]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblSample__sysSt__68487DD7]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblSample__sysSt__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSampleBusinesObject]'))
Begin
ALTER TABLE [dbo].[tblSampleBusinesObject] ADD  CONSTRAINT [DF__tblSample__sysSt__68487DD7]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblStages__sysSt__787EE5A0]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblStages__sysSt__787EE5A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStages]'))
Begin
ALTER TABLE [dbo].[tblStages] ADD  CONSTRAINT [DF__tblStages__sysSt__787EE5A0]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblThemes__sysSt__797309D9]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__sysSt__797309D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] ADD  CONSTRAINT [DF__tblThemes__sysSt__797309D9]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblThemes__PageC__06CD04F7]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__PageC__06CD04F7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] ADD  CONSTRAINT [DF__tblThemes__PageC__06CD04F7]  DEFAULT (NULL) FOR [PageCountToShow]

End
GO
/****** Object:  Default [DF__tblThemes__MaxCo__07C12930]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblThemes__MaxCo__07C12930]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
Begin
ALTER TABLE [dbo].[tblThemes] ADD  CONSTRAINT [DF__tblThemes__MaxCo__07C12930]  DEFAULT (NULL) FOR [MaxCountToSubmit]

End
GO
/****** Object:  Default [DF__tblUserAn__sysSt__01142BA1]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserAn__sysSt__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
Begin
ALTER TABLE [dbo].[tblUserAnswers] ADD  CONSTRAINT [DF__tblUserAn__sysSt__01142BA1]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  Default [DF__tblUserAn__Answe__0D7A0286]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUserAn__Answe__0D7A0286]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
Begin
ALTER TABLE [dbo].[tblUserAnswers] ADD  CONSTRAINT [DF__tblUserAn__Answe__0D7A0286]  DEFAULT ((1)) FOR [AnswerTypeRef]

End
GO
/****** Object:  Default [DF__tblUsers__sysSta__6754599E]    Script Date: 01/05/2010 00:32:52 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblUsers__sysSta__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUsers]'))
Begin
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF__tblUsers__sysSta__6754599E]  DEFAULT ((0)) FOR [sysState]

End
GO
/****** Object:  ForeignKey [FK_relResourcesDependency_tblResources_Dependant]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesDependency_tblResources_Dependant]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
ALTER TABLE [dbo].[relResourcesDependency]  WITH CHECK ADD  CONSTRAINT [FK_relResourcesDependency_tblResources_Dependant] FOREIGN KEY([DependantRef])
REFERENCES [dbo].[tblResources] ([ID])
GO
ALTER TABLE [dbo].[relResourcesDependency] CHECK CONSTRAINT [FK_relResourcesDependency_tblResources_Dependant]
GO
/****** Object:  ForeignKey [FK_relResourcesDependency_tblResources_Dependency]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesDependency_tblResources_Dependency]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesDependency]'))
ALTER TABLE [dbo].[relResourcesDependency]  WITH CHECK ADD  CONSTRAINT [FK_relResourcesDependency_tblResources_Dependency] FOREIGN KEY([DependencyRef])
REFERENCES [dbo].[tblResources] ([ID])
GO
ALTER TABLE [dbo].[relResourcesDependency] CHECK CONSTRAINT [FK_relResourcesDependency_tblResources_Dependency]
GO
/****** Object:  ForeignKey [FK_relResourcesFiles_tblFiles]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesFiles_tblFiles]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
ALTER TABLE [dbo].[relResourcesFiles]  WITH CHECK ADD  CONSTRAINT [FK_relResourcesFiles_tblFiles] FOREIGN KEY([FileRef])
REFERENCES [dbo].[tblFiles] ([ID])
GO
ALTER TABLE [dbo].[relResourcesFiles] CHECK CONSTRAINT [FK_relResourcesFiles_tblFiles]
GO
/****** Object:  ForeignKey [FK_relResourcesFiles_tblResources]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_relResourcesFiles_tblResources]') AND parent_object_id = OBJECT_ID(N'[dbo].[relResourcesFiles]'))
ALTER TABLE [dbo].[relResourcesFiles]  WITH CHECK ADD  CONSTRAINT [FK_relResourcesFiles_tblResources] FOREIGN KEY([ResourceRef])
REFERENCES [dbo].[tblResources] ([ID])
GO
ALTER TABLE [dbo].[relResourcesFiles] CHECK CONSTRAINT [FK_relResourcesFiles_tblResources]
GO
/****** Object:  ForeignKey [FK_Stage]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Stage]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
ALTER TABLE [dbo].[relStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_Stage] FOREIGN KEY([StageRef])
REFERENCES [dbo].[tblStages] ([ID])
GO
ALTER TABLE [dbo].[relStagesThemes] CHECK CONSTRAINT [FK_Stage]
GO
/****** Object:  ForeignKey [FK_Theme]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Theme]') AND parent_object_id = OBJECT_ID(N'[dbo].[relStagesThemes]'))
ALTER TABLE [dbo].[relStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_Theme] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[relStagesThemes] CHECK CONSTRAINT [FK_Theme]
GO
/****** Object:  ForeignKey [FK_GROUP]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
ALTER TABLE [dbo].[relUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_GROUP] FOREIGN KEY([GroupRef])
REFERENCES [dbo].[tblGroups] ([ID])
GO
ALTER TABLE [dbo].[relUserGroups] CHECK CONSTRAINT [FK_GROUP]
GO
/****** Object:  ForeignKey [FK_USER]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserGroups]'))
ALTER TABLE [dbo].[relUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_USER] FOREIGN KEY([UserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[relUserGroups] CHECK CONSTRAINT [FK_USER]
GO
/****** Object:  ForeignKey [FK_ROLE_ID]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ROLE_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
ALTER TABLE [dbo].[relUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ROLE_ID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[fxRoles] ([ID])
GO
ALTER TABLE [dbo].[relUserRoles] CHECK CONSTRAINT [FK_ROLE_ID]
GO
/****** Object:  ForeignKey [FK_USER_ID]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_USER_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[relUserRoles]'))
ALTER TABLE [dbo].[relUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_USER_ID] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[relUserRoles] CHECK CONSTRAINT [FK_USER_ID]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_fxdCompiledStatuses]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_fxdCompiledStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses] FOREIGN KEY([StatusRef])
REFERENCES [dbo].[fxCompiledStatuses] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswers] CHECK CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_tblCompiledQuestionsData]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_tblCompiledQuestionsData]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswers_tblCompiledQuestionsData] FOREIGN KEY([CompiledQuestionsDataRef])
REFERENCES [dbo].[tblCompiledQuestionsData] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswers] CHECK CONSTRAINT [FK_tblCompiledAnswers_tblCompiledQuestionsData]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswers_tblUserAnswers]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledAnswers_tblUserAnswers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledAnswers]'))
ALTER TABLE [dbo].[tblCompiledAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswers_tblUserAnswers] FOREIGN KEY([UserAnswerRef])
REFERENCES [dbo].[tblUserAnswers] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledAnswers] CHECK CONSTRAINT [FK_tblCompiledAnswers_tblUserAnswers]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestions_fxdLanguages]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestions_fxdLanguages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestions]'))
ALTER TABLE [dbo].[tblCompiledQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages] FOREIGN KEY([LanguageRef])
REFERENCES [dbo].[fxLanguages] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledQuestions] CHECK CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestionsData_tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblCompiledQuestionsData_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCompiledQuestionsData]'))
ALTER TABLE [dbo].[tblCompiledQuestionsData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [dbo].[tblCompiledQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblCompiledQuestionsData] CHECK CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblItems_tblItems]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblItems] FOREIGN KEY([PID])
REFERENCES [dbo].[tblItems] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblItems]
GO
/****** Object:  ForeignKey [FK_tblItems_tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblOrganizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblOrganizations] FOREIGN KEY([OrganizationRef])
REFERENCES [dbo].[tblOrganizations] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblOrganizations]
GO
/****** Object:  ForeignKey [FK_tblItems_tblResources]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblItems_tblResources]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItems]'))
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblResources] FOREIGN KEY([ResourceRef])
REFERENCES [dbo].[tblResources] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblResources]
GO
/****** Object:  ForeignKey [FK_tblOrganizations_tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblOrganizations_tblCourses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOrganizations]'))
ALTER TABLE [dbo].[tblOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_tblOrganizations_tblCourses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblOrganizations] CHECK CONSTRAINT [FK_tblOrganizations_tblCourses]
GO
/****** Object:  ForeignKey [FK_Page_PageType]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_PageType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_PageType] FOREIGN KEY([PageTypeRef])
REFERENCES [dbo].[fxPageTypes] ([ID])
GO
ALTER TABLE [dbo].[tblPages] CHECK CONSTRAINT [FK_Page_PageType]
GO
/****** Object:  ForeignKey [FK_Page_Theme]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Theme]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPages]'))
ALTER TABLE [dbo].[tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_Theme] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[tblPages] CHECK CONSTRAINT [FK_Page_Theme]
GO
/****** Object:  ForeignKey [FK_PARENT_PERMITION]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PARENT_PERMITION]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_PARENT_PERMITION] FOREIGN KEY([ParentPermitionRef])
REFERENCES [dbo].[tblPermissions] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_PARENT_PERMITION]
GO
/****** Object:  ForeignKey [FK_Permissions_CourseOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CourseOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CourseOperations] FOREIGN KEY([CourseOperationRef])
REFERENCES [dbo].[fxCourseOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_CourseOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Courses]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Courses] FOREIGN KEY([CourseRef])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Courses]
GO
/****** Object:  ForeignKey [FK_Permissions_CurriculumOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_CurriculumOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CurriculumOperations] FOREIGN KEY([CurriculumOperationRef])
REFERENCES [dbo].[fxCurriculumOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_CurriculumOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Curriculums]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Curriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Curriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [dbo].[tblCurriculums] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Curriculums]
GO
/****** Object:  ForeignKey [FK_Permissions_GroupObjects]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_GroupObjects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_GroupObjects] FOREIGN KEY([GroupObjectRef])
REFERENCES [dbo].[tblGroups] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_GroupObjects]
GO
/****** Object:  ForeignKey [FK_Permissions_GroupOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_GroupOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_GroupOperations] FOREIGN KEY([GroupOperationRef])
REFERENCES [dbo].[fxGroupOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_GroupOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Groups]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Groups]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Groups] FOREIGN KEY([GroupRef])
REFERENCES [dbo].[tblGroups] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Groups]
GO
/****** Object:  ForeignKey [FK_Permissions_Organizations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Organizations] FOREIGN KEY([OrganizationRef])
REFERENCES [dbo].[tblOrganizations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Organizations]
GO
/****** Object:  ForeignKey [FK_Permissions_OwnerGroup]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_OwnerGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_OwnerGroup] FOREIGN KEY([OwnerGroupRef])
REFERENCES [dbo].[tblGroups] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_OwnerGroup]
GO
/****** Object:  ForeignKey [FK_Permissions_OwnerUser]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_OwnerUser]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_OwnerUser] FOREIGN KEY([OwnerUserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_OwnerUser]
GO
/****** Object:  ForeignKey [FK_Permissions_PageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_PageOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_PageOperations] FOREIGN KEY([PageOperationRef])
REFERENCES [dbo].[fxPageOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_PageOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Pages]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Pages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Pages] FOREIGN KEY([PageRef])
REFERENCES [dbo].[tblPages] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Pages]
GO
/****** Object:  ForeignKey [FK_Permissions_StageOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_StageOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_StageOperations] FOREIGN KEY([StageOperationRef])
REFERENCES [dbo].[fxStageOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_StageOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Stages]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Stages]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Stages] FOREIGN KEY([StageRef])
REFERENCES [dbo].[tblStages] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Stages]
GO
/****** Object:  ForeignKey [FK_Permissions_ThemeOperations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_ThemeOperations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_ThemeOperations] FOREIGN KEY([ThemeOperationRef])
REFERENCES [dbo].[fxThemeOperations] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_ThemeOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Themes]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_Themes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Themes] FOREIGN KEY([ThemeRef])
REFERENCES [dbo].[tblThemes] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_Themes]
GO
/****** Object:  ForeignKey [FK_Permissions_UserObjects]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Permissions_UserObjects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPermissions]'))
ALTER TABLE [dbo].[tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_UserObjects] FOREIGN KEY([UserObjectRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblPermissions] CHECK CONSTRAINT [FK_Permissions_UserObjects]
GO
/****** Object:  ForeignKey [FK_CorrectAnswer_Page]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CorrectAnswer_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CorrectAnswer_Page] FOREIGN KEY([PageRef])
REFERENCES [dbo].[tblPages] ([ID])
GO
ALTER TABLE [dbo].[tblQuestions] CHECK CONSTRAINT [FK_CorrectAnswer_Page]
GO
/****** Object:  ForeignKey [FK_tblQuestions_tblCompiledQuestions]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblQuestions_tblCompiledQuestions]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblQuestions]'))
ALTER TABLE [dbo].[tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblQuestions_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [dbo].[tblCompiledQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblQuestions] CHECK CONSTRAINT [FK_tblQuestions_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblResources_tblCourses]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblResources_tblCourses]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResources]'))
ALTER TABLE [dbo].[tblResources]  WITH CHECK ADD  CONSTRAINT [FK_tblResources_tblCourses] FOREIGN KEY([CourseRef])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblResources] CHECK CONSTRAINT [FK_tblResources_tblCourses]
GO
/****** Object:  ForeignKey [FK_tblStages_tblCurriculums]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblStages_tblCurriculums]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblStages]'))
ALTER TABLE [dbo].[tblStages]  WITH CHECK ADD  CONSTRAINT [FK_tblStages_tblCurriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [dbo].[tblCurriculums] ([ID])
GO
ALTER TABLE [dbo].[tblStages] CHECK CONSTRAINT [FK_tblStages_tblCurriculums]
GO
/****** Object:  ForeignKey [FK_Chapter_Course]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Chapter_Course]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([CourseRef])
REFERENCES [dbo].[tblCourses] ([ID])
GO
ALTER TABLE [dbo].[tblThemes] CHECK CONSTRAINT [FK_Chapter_Course]
GO
/****** Object:  ForeignKey [FK_tblThemes_fxdPageOrders]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblThemes_fxdPageOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_tblThemes_fxdPageOrders] FOREIGN KEY([PageOrderRef])
REFERENCES [dbo].[fxPageOrders] ([ID])
GO
ALTER TABLE [dbo].[tblThemes] CHECK CONSTRAINT [FK_tblThemes_fxdPageOrders]
GO
/****** Object:  ForeignKey [FK_tblThemes_tblOrganizations]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblThemes_tblOrganizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblThemes]'))
ALTER TABLE [dbo].[tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_tblThemes_tblOrganizations] FOREIGN KEY([OrganizationRef])
REFERENCES [dbo].[tblOrganizations] ([ID])
GO
ALTER TABLE [dbo].[tblThemes] CHECK CONSTRAINT [FK_tblThemes_tblOrganizations]
GO
/****** Object:  ForeignKey [FK_tblUserAnswers_AnswerTypeRef]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblUserAnswers_AnswerTypeRef]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblUserAnswers_AnswerTypeRef] FOREIGN KEY([AnswerTypeRef])
REFERENCES [dbo].[fxAnswerType] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_tblUserAnswers_AnswerTypeRef]
GO
/****** Object:  ForeignKey [FK_UserAnswer_CorrectAnswer]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswer_CorrectAnswer]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswer_CorrectAnswer] FOREIGN KEY([QuestionRef])
REFERENCES [dbo].[tblQuestions] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswer_CorrectAnswer]
GO
/****** Object:  ForeignKey [FK_UserAnswers_Users]    Script Date: 01/05/2010 00:32:52 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserAnswers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblUserAnswers]'))
ALTER TABLE [dbo].[tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswers_Users] FOREIGN KEY([UserRef])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswers_Users]
GO
