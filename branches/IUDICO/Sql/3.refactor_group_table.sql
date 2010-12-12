/*
   12 December 201013:26:33
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
EXECUTE sp_rename N'dbo.[Group].ID', N'Tmp_Id_7', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.[Group].Tmp_Id_7', N'Id', 'COLUMN' 
GO
ALTER TABLE dbo.[Group] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[Group]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[Group]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[Group]', 'Object', 'CONTROL') as Contr_Per 