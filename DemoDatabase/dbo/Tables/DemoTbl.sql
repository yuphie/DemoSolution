
CREATE TABLE [dbo].[DemoTbl](
	[ID] [int] NOT NULL Primary Key,
	[UpdatedDate] datetime2(3) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[LastSyncDate] datetime2(3) NULL,
)
