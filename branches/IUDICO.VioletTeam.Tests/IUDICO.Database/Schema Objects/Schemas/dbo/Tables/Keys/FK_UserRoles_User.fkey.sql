﻿ALTER TABLE [dbo].[UserRoles]
    ADD CONSTRAINT [FK_UserRoles_User] FOREIGN KEY ([UserRef]) REFERENCES [dbo].[User] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION;

