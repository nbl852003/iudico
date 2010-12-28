USE [IUDICO]
GO
/*
   28 грудня 2010 р.0:17:58
   User: 
   Server: .\
   Database: OLOlo
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
ALTER TABLE dbo.CurriculumAssignments SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CurriculumAssignments', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CurriculumAssignments', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CurriculumAssignments', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Themes SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Themes', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Themes', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Themes', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.ThemeAssignments
	(
	Id int NOT NULL IDENTITY (1, 1),
	ThemeRef int NOT NULL,
	CurriculumAssignmentRef int NOT NULL,
	MaxScore int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.ThemeAssignments ADD CONSTRAINT
	PK_ThemeAssignments PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ThemeAssignments ADD CONSTRAINT
	FK_ThemeAssignments_Themes FOREIGN KEY
	(
	ThemeRef
	) REFERENCES dbo.Themes
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ThemeAssignments ADD CONSTRAINT
	FK_ThemeAssignments_CurriculumAssignments FOREIGN KEY
	(
	CurriculumAssignmentRef
	) REFERENCES dbo.CurriculumAssignments
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ThemeAssignments SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ThemeAssignments', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ThemeAssignments', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ThemeAssignments', 'Object', 'CONTROL') as Contr_Per 