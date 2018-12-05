CREATE TABLE [dbo].[Statuses]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Type] NVARCHAR(50) NULL, 
    [Value] NVARCHAR(MAX) NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL
)

GO

CREATE INDEX [IX_Statuses_Id] ON [dbo].[Statuses] ([Id])
