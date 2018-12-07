CREATE TABLE [dbo].[ta_product_tag]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [product_id] INT NOT NULL, 
    [tag_id] INT NOT NULL, 
    [Value] NVARCHAR(MAX) NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL, 
    CONSTRAINT [FK_ta_product_tag_Products] FOREIGN KEY ([product_id]) REFERENCES [Products]([Id]), 
    CONSTRAINT [FK_ta_product_tag_Tags] FOREIGN KEY ([tag_id]) REFERENCES [Tags]([Id])
)
