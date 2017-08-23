CREATE TABLE [dbo].[Tasks] (
    [TaskID]   INT            IDENTITY (1, 1) NOT NULL,
    [TaskText] NVARCHAR (MAX) NULL,
    [Status]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Tasks] PRIMARY KEY CLUSTERED ([TaskID] ASC)
);

