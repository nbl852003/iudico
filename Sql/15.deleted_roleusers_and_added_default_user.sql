USE [IUDICO]
GO
/*
   29 декабря 2010 г.15:40:28
   User: 
   Server: THP-NETBOOK\SQLEXPRESS
   Database: IUDICO
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
DROP TABLE dbo.RoleUsers
COMMIT
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
ALTER TABLE dbo.Roles SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Roles', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Roles', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Roles', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.[User] ADD CONSTRAINT
	FK_User_Roles FOREIGN KEY
	(
	RoleRef
	) REFERENCES dbo.Roles
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[User] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[User]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'CONTROL') as Contr_Per 
BEGIN TRANSACTION
GO
INSERT INTO dbo.[User](Username, [Password], Email, OpenId, Name, IsApproved, RoleRef, Deleted) VALUES('admin', 'admin', 'admin@lnu.edu', '0', 'Administrator', 1, 3, 0)
GO
COMMIT