CREATE TABLE [dbo].[Products]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Sku] NVARCHAR(50) NULL, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [product_status_id] INT NOT NULL, 
	[brand_id] INT NOT NULL, 
    [category_id] INT NOT NULL,
    [Regular_price] DECIMAL(7, 2) NOT NULL, 
    [Discount_price] DECIMAL(7, 2) NULL, 
    [Quantity] INT NOT NULL, 
    [Taxable] BIT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL,  
    CONSTRAINT [FK_Products_Statuses] FOREIGN KEY ([product_status_id]) REFERENCES [Statuses]([Id]), 
    CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([category_id]) REFERENCES [Categories]([Id]), 
    CONSTRAINT [FK_Products_Brands] FOREIGN KEY ([brand_id]) REFERENCES [Brands]([Id])
)

GO

CREATE INDEX [IX_Products_Id] ON [dbo].[Products] ([Id])

