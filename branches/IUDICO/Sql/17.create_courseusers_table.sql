USE [IUDICO]
GO
/*
   2 січня 2011 р.18:22:56
   User: 
   Server: SM-PC\SQLEXPRESS
   Database: IUDICO
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.CourseUsers
	(
	CourseRef int NOT NULL,
	UserRef uniqueidentifier NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.CourseUsers ADD CONSTRAINT
	PK_CourseUsers PRIMARY KEY CLUSTERED 
	(
	CourseRef,
	UserRef
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.CourseUsers ADD CONSTRAINT
	FK_CourseUsers_CourseUsers FOREIGN KEY
	(
	CourseRef,
	UserRef
	) REFERENCES dbo.CourseUsers
	(
	CourseRef,
	UserRef
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CourseUsers', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CourseUsers', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CourseUsers', 'Object', 'CONTROL') as Contr_Per 