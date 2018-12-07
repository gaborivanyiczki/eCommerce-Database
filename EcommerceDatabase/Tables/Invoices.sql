CREATE TABLE [dbo].[Invoices]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [InvoiceNumber] NVARCHAR(MAX) NOT NULL, 
    [order_id] INT NOT NULL, 
    [CustomerName] NVARCHAR(MAX) NULL, 
    [CustomerAddress] NVARCHAR(MAX) NULL, 
    [CustomerPhone] NVARCHAR(50) NULL
)
