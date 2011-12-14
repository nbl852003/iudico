﻿CREATE TABLE [dbo].[Curriculums] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50)  NOT NULL,
    [Created]   DATETIME       NOT NULL,
    [Updated]   DATETIME       NOT NULL,
    [Owner]     NVARCHAR (100) NOT NULL,
    [IsDeleted] BIT            NOT NULL,
    [IsValid]   BIT            NOT NULL
);




