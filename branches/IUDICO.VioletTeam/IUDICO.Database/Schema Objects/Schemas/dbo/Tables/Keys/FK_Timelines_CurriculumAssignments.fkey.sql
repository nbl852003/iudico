﻿ALTER TABLE [dbo].[Timelines]
    ADD CONSTRAINT [FK_Timeline_CurriculumAssignments] FOREIGN KEY ([CurriculumAssignmentRef]) REFERENCES [dbo].[CurriculumAssignments] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION;

