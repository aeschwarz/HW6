CREATE TABLE [dbo].[Table]
(
	[teamId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [teamName] NVARCHAR(50) NULL, 
    [teamCity] NVARCHAR(50) NULL, 
    [teamState] NVARCHAR(50) NULL, 
    [teamStadium] NVARCHAR(50) NULL, 
    [teamColors] NVARCHAR(50) NULL
)
