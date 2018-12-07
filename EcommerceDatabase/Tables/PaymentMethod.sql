CREATE TABLE [dbo].[PaymentMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL
)
