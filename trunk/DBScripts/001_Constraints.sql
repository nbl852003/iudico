
/****** Object:  ForeignKey [FK_tblCompiledAnswers_fxdCompiledStatuses]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblCompiledAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses] FOREIGN KEY([StatusRef])
REFERENCES [fxCompiledStatuses] ([ID])
GO
ALTER TABLE [tblCompiledAnswers] CHECK CONSTRAINT [FK_tblCompiledAnswers_fxdCompiledStatuses]
GO
/****** Object:  ForeignKey [FK_tblCompiledAnswersData_tblCompiledQuestionsData]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblCompiledAnswersData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledAnswersData_tblCompiledQuestionsData] FOREIGN KEY([CompiledQuestionsDataRef])
REFERENCES [tblCompiledQuestionsData] ([ID])
GO
ALTER TABLE [tblCompiledAnswersData] CHECK CONSTRAINT [FK_tblCompiledAnswersData_tblCompiledQuestionsData]
GO
/****** Object:  ForeignKey [FK_tblCompiledOutputs_tblUsers]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblCompiledAnswersData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledOutputs_tblUsers] FOREIGN KEY([UserRef])
REFERENCES [tblUsers] ([ID])
GO
ALTER TABLE [tblCompiledAnswersData] CHECK CONSTRAINT [FK_tblCompiledOutputs_tblUsers]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestions_fxdLanguages]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblCompiledQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages] FOREIGN KEY([LanguageRef])
REFERENCES [fxLanguages] ([ID])
GO
ALTER TABLE [tblCompiledQuestions] CHECK CONSTRAINT [FK_tblCompiledQuestions_fxdLanguages]
GO
/****** Object:  ForeignKey [FK_tblCompiledQuestionsData_tblCompiledQuestions]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblCompiledQuestionsData]  WITH CHECK ADD  CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [tblCompiledQuestions] ([ID])
GO
ALTER TABLE [tblCompiledQuestionsData] CHECK CONSTRAINT [FK_tblCompiledQuestionsData_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblFiles_tblFiles]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblFiles]  WITH CHECK ADD  CONSTRAINT [FK_tblFiles_tblFiles] FOREIGN KEY([PID])
REFERENCES [tblFiles] ([ID])
GO
ALTER TABLE [tblFiles] CHECK CONSTRAINT [FK_tblFiles_tblFiles]
GO
/****** Object:  ForeignKey [FK_tblFiles_tblPages]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblFiles]  WITH CHECK ADD  CONSTRAINT [FK_tblFiles_tblPages] FOREIGN KEY([PageRef])
REFERENCES [tblPages] ([ID])
GO
ALTER TABLE [tblFiles] CHECK CONSTRAINT [FK_tblFiles_tblPages]
GO
/****** Object:  ForeignKey [FK_Page_PageType]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_PageType] FOREIGN KEY([PageTypeRef])
REFERENCES [fxPageTypes] ([ID])
GO
ALTER TABLE [tblPages] CHECK CONSTRAINT [FK_Page_PageType]
GO
/****** Object:  ForeignKey [FK_Page_Theme]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPages]  WITH CHECK ADD  CONSTRAINT [FK_Page_Theme] FOREIGN KEY([ThemeRef])
REFERENCES [tblThemes] ([ID])
GO
ALTER TABLE [tblPages] CHECK CONSTRAINT [FK_Page_Theme]
GO
/****** Object:  ForeignKey [FK_PARENT_PERMITION]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_PARENT_PERMITION] FOREIGN KEY([ParentPermitionRef])
REFERENCES [tblPermissions] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_PARENT_PERMITION]
GO
/****** Object:  ForeignKey [FK_Permissions_CourseOperations]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CourseOperations] FOREIGN KEY([CourseOperationRef])
REFERENCES [fxCourseOperations] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_CourseOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Courses]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Courses] FOREIGN KEY([CourseRef])
REFERENCES [tblCourses] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Courses]
GO
/****** Object:  ForeignKey [FK_Permissions_CurriculumOperations]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_CurriculumOperations] FOREIGN KEY([CurriculumsOperationRef])
REFERENCES [fxCurriculumOperations] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_CurriculumOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Curriculums]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Curriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [tblCurriculums] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Curriculums]
GO
/****** Object:  ForeignKey [FK_Permissions_Groups]    Script Date: 11/07/2008 00:08:01 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Groups] FOREIGN KEY([GroupRef])
REFERENCES [tblGroups] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Groups]
GO
/****** Object:  ForeignKey [FK_Permissions_StageOperations]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_StageOperations] FOREIGN KEY([StageOperationRef])
REFERENCES [fxStageOperations] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_StageOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Stages]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Stages] FOREIGN KEY([StageRef])
REFERENCES [tblStages] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Stages]
GO
/****** Object:  ForeignKey [FK_Permissions_ThemeOperations]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_ThemeOperations] FOREIGN KEY([ThemeOperationRef])
REFERENCES [fxThemeOperations] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_ThemeOperations]
GO
/****** Object:  ForeignKey [FK_Permissions_Themes]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Themes] FOREIGN KEY([ThemeRef])
REFERENCES [tblThemes] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Themes]
GO
/****** Object:  ForeignKey [FK_Permissions_Users]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblPermissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Users] FOREIGN KEY([UserRef])
REFERENCES [tblUsers] ([ID])
GO
ALTER TABLE [tblPermissions] CHECK CONSTRAINT [FK_Permissions_Users]
GO
/****** Object:  ForeignKey [FK_CorrectAnswer_Page]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CorrectAnswer_Page] FOREIGN KEY([PageRef])
REFERENCES [tblPages] ([ID])
GO
ALTER TABLE [tblQuestions] CHECK CONSTRAINT [FK_CorrectAnswer_Page]
GO
/****** Object:  ForeignKey [FK_tblQuestions_tblCompiledQuestions]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblQuestions]  WITH CHECK ADD  CONSTRAINT [FK_tblQuestions_tblCompiledQuestions] FOREIGN KEY([CompiledQuestionRef])
REFERENCES [tblCompiledQuestions] ([ID])
GO
ALTER TABLE [tblQuestions] CHECK CONSTRAINT [FK_tblQuestions_tblCompiledQuestions]
GO
/****** Object:  ForeignKey [FK_tblStages_tblCurriculums]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblStages]  WITH CHECK ADD  CONSTRAINT [FK_tblStages_tblCurriculums] FOREIGN KEY([CurriculumRef])
REFERENCES [tblCurriculums] ([ID])
GO
ALTER TABLE [tblStages] CHECK CONSTRAINT [FK_tblStages_tblCurriculums]
GO
/****** Object:  ForeignKey [FK_StagesThemes_Stages]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_StagesThemes_Stages] FOREIGN KEY([StageRef])
REFERENCES [tblStages] ([ID])
GO
ALTER TABLE [tblStagesThemes] CHECK CONSTRAINT [FK_StagesThemes_Stages]
GO
/****** Object:  ForeignKey [FK_StagesThemes_Themes]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblStagesThemes]  WITH CHECK ADD  CONSTRAINT [FK_StagesThemes_Themes] FOREIGN KEY([ThemeRef])
REFERENCES [tblThemes] ([ID])
GO
ALTER TABLE [tblStagesThemes] CHECK CONSTRAINT [FK_StagesThemes_Themes]
GO
/****** Object:  ForeignKey [FK_Chapter_Course]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([CourseRef])
REFERENCES [tblCourses] ([ID])
GO
ALTER TABLE [tblThemes] CHECK CONSTRAINT [FK_Chapter_Course]
GO
/****** Object:  ForeignKey [FK_tblThemes_fxdPageOrders]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblThemes]  WITH CHECK ADD  CONSTRAINT [FK_tblThemes_fxdPageOrders] FOREIGN KEY([PageOrderRef])
REFERENCES [fxPageOrders] ([ID])
GO
ALTER TABLE [tblThemes] CHECK CONSTRAINT [FK_tblThemes_fxdPageOrders]
GO
/****** Object:  ForeignKey [FK_tblUserAnswers_tblCompiledAnswers]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_tblUserAnswers_tblCompiledAnswers] FOREIGN KEY([CompiledAnswerRef])
REFERENCES [tblCompiledAnswers] ([ID])
GO
ALTER TABLE [tblUserAnswers] CHECK CONSTRAINT [FK_tblUserAnswers_tblCompiledAnswers]
GO
/****** Object:  ForeignKey [FK_UserAnswer_CorrectAnswer]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswer_CorrectAnswer] FOREIGN KEY([QuestionRef])
REFERENCES [tblQuestions] ([ID])
GO
ALTER TABLE [tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswer_CorrectAnswer]
GO
/****** Object:  ForeignKey [FK_UserAnswers_Users]    Script Date: 11/07/2008 00:08:02 ******/
ALTER TABLE [tblUserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswers_Users] FOREIGN KEY([UserRef])
REFERENCES [tblUsers] ([ID])
GO
ALTER TABLE [tblUserAnswers] CHECK CONSTRAINT [FK_UserAnswers_Users]
GO
