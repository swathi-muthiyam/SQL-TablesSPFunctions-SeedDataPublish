CREATE TABLE [dbo].[UserType]
(
	[UserTypeID] INT NOT NULL PRIMARY KEY, 
    [UserType] NCHAR(10) NOT NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [CreatedBy] NVARCHAR(50) NOT NULL, 
    [ModifiedBy] NVARCHAR(50) NULL, 
    [ModifiedDate] DATETIME NULL
)
