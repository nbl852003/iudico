﻿CREATE TABLE [dbo].[User] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [Username]   NVARCHAR (100)   COLLATE Ukrainian_CI_AS NOT NULL,
    [Password]   NVARCHAR (50)    COLLATE Ukrainian_CI_AS NOT NULL,
    [Email]      NVARCHAR (100)   COLLATE Ukrainian_CI_AS NOT NULL,
    [OpenId]     NVARCHAR (200)   COLLATE Ukrainian_CI_AS NOT NULL,
    [Name]       NVARCHAR (200)   COLLATE Ukrainian_CI_AS NOT NULL,
    [IsApproved] BIT              NOT NULL,
    [RoleId]     INT              NOT NULL,
    [Deleted]    BIT              NOT NULL,
    UNIQUE NONCLUSTERED ([Username] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
);





