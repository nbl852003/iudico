/*
   12 December 201013:30:42
   User: 
   Server: .\SQLEXPRESS
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
EXECUTE sp_rename N'dbo.RoleUsers.RoleID', N'Tmp_RoleRef_11', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.RoleUsers.UserID', N'Tmp_UserRef_12', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.RoleUsers.Tmp_RoleRef_11', N'RoleRef', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.RoleUsers.Tmp_UserRef_12', N'UserRef', 'COLUMN' 
GO
ALTER TABLE dbo.RoleUsers SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.RoleUsers', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.RoleUsers', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.RoleUsers', 'Object', 'CONTROL') as Contr_Per 