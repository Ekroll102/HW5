CREATE TABLE [dbo].[Table]
(
	[receipeId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [receipeName] NVARCHAR(50) NOT NULL, 
    [receipeSubmittedBy] NVARCHAR(50) NOT NULL, 
    [receipeIngredient1] NVARCHAR(50) NOT NULL, 
    [receipeIngredient2] NVARCHAR(50) NULL, 
    [receipeIngredient3] NVARCHAR(50) NULL, 
    [receipeIngredient4] NVARCHAR(50) NULL, 
    [receipeIngredient5] NVARCHAR(50) NULL, 
    [Preperation] NVARCHAR(50) NOT NULL, 
    [receipeNotes] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([receipeId])
)
