CREATE TABLE [dbo].[Orders]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Order_date] DATETIME NOT NULL, 
    [Total] DECIMAL(7, 2) NOT NULL, 
    [coupon_id] INT NULL, 
    [user_id] INT NOT NULL, 
    [delivery_id] INT NOT NULL, 
    [order_status] NVARCHAR(50) NOT NULL, 
    [delivery_estimation_date] DATE NULL, 
    [invoice_id] INT NULL, 
    [payment_method_id] INT NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL, 
    CONSTRAINT [FK_Orders_Coupons] FOREIGN KEY ([coupon_id]) REFERENCES [Coupons]([Id]), 
    CONSTRAINT [FK_Orders_DeliveryMethod] FOREIGN KEY ([delivery_id]) REFERENCES [DeliveryMethod]([Id]), 
    CONSTRAINT [FK_Orders_Invoices] FOREIGN KEY ([invoice_id]) REFERENCES [Invoices]([Id]), 
    CONSTRAINT [FK_Orders_PaymentMethod] FOREIGN KEY ([payment_method_id]) REFERENCES [PaymentMethod]([Id])
)

GO

CREATE INDEX [IX_Orders_Id] ON [dbo].[Orders] ([Id])
