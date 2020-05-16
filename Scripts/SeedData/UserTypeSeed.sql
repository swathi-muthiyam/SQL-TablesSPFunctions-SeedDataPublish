IF NOT EXISTS (SELECT * FROM [dbo].[UserType] WHERE [UserTypeID] = 0)
INSERT [dbo].[UserType] ([UserTypeId], [UserType], [CreatedBy], [CreatedDate] ) 	
	VALUES (0, N'Admin', SUSER_SNAME(), GETUTCDATE())
GO

IF NOT EXISTS (SELECT * FROM [dbo].[UserType] WHERE [UserTypeID] = 1)
INSERT [dbo].[UserType] ([UserTypeId], [UserType], [CreatedBy], [CreatedDate] ) 	
	VALUES (1, N'Customer', SUSER_SNAME(), GETUTCDATE())
GO