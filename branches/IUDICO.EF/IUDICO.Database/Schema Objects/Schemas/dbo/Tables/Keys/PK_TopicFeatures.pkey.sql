﻿ALTER TABLE [dbo].[TopicFeatures]
    ADD CONSTRAINT [PK_TopicFeatures] PRIMARY KEY CLUSTERED ([TopicId] ASC, [FeatureId] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF);
