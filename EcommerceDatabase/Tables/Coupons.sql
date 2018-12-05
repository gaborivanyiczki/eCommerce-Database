CREATE TABLE [dbo].[Coupons]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Code] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Active] BIT NOT NULL, 
    [Value] NUMERIC(7, 2) NOT NULL, 
    [Start_date] DATETIME NOT NULL, 
    [End_date] DATETIME NOT NULL, 
    [Created_at] DATETIME NOT NULL, 
    [Updated_at] DATETIME NULL
)

GO

CREATE INDEX [IX_Coupons_Id] ON [dbo].[Coupons] ([Id])
