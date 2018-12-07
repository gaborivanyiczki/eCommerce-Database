CREATE TABLE [dbo].[Transactions]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Code] NVARCHAR(MAX) NOT NULL, 
    [order_id] INT NOT NULL, 
    [Transaction_date] DATETIME NULL, 
    [Amount] DECIMAL(7, 2) NOT NULL, 
    [Status] NVARCHAR(50) NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL
)
