CREATE TABLE [dbo].[Tags]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [category_id] INT NULL, 
    [parent_id] INT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL, 
    CONSTRAINT [FK_Tags_Tags] FOREIGN KEY ([parent_id]) REFERENCES [Tags]([Id]), 
    CONSTRAINT [FK_Tags_Categories] FOREIGN KEY ([category_id]) REFERENCES [Categories]([Id])
)

GO

CREATE INDEX [IX_Tags_Id] ON [dbo].[Tags] ([Id])
