CREATE TABLE [dbo].[DeliveryMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL
)
