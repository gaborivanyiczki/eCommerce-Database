CREATE TABLE [dbo].[OrderDetails]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [order_id] INT NOT NULL, 
    [product_id] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Subtotal] DECIMAL(7, 2) NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL, 
    CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([order_id]) REFERENCES [Orders]([Id]), 
    CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([product_id]) REFERENCES [Products]([Id])
)

GO

CREATE INDEX [IX_OrderDetails_Id] ON [dbo].[OrderDetails] ([Id])
