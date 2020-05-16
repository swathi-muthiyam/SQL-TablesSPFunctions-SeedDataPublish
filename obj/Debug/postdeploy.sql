/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF NOT EXISTS (SELECT * FROM [dbo].[UserType] WHERE [UserTypeID] = 0)
INSERT [dbo].[UserType] ([UserTypeId], [UserType], [CreatedBy], [CreatedDate] ) 	
	VALUES (0, N'Admin', SUSER_SNAME(), GETUTCDATE())
GO

IF NOT EXISTS (SELECT * FROM [dbo].[UserType] WHERE [UserTypeID] = 1)
INSERT [dbo].[UserType] ([UserTypeId], [UserType], [CreatedBy], [CreatedDate] ) 	
	VALUES (1, N'Customer', SUSER_SNAME(), GETUTCDATE())
GO
