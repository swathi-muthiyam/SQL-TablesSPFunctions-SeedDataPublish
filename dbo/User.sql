CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY, 
    [UserName] NVARCHAR(50) NOT NULL, 
    [Addressline1] NVARCHAR(100) NOT NULL, 
    [AddressLine2] NVARCHAR(100) NULL, 
    [Pincode] INT NOT NULL, 
    [State] NVARCHAR(50) NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL
)
