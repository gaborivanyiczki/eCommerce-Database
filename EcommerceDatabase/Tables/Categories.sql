CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [parent_id] INT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL, 
    CONSTRAINT [FK_Categories_Categories] FOREIGN KEY ([parent_id]) REFERENCES [Categories]([Id])
)

GO


CREATE INDEX [IX_Categories_Id] ON [dbo].[Categories] ([Id])
