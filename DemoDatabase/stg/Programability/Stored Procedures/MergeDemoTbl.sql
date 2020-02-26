CREATE PROCEDURE [Stg].[MergeDemoTbl]
AS
BEGIN
MERGE dbo.DemoTbl AS [T]
USING  stg.demotbl as [S]
ON [T].[ID]=[S].[ID]
WHEN MATCHED 
	THEN UPDATE SET [T].[UpdatedDate] = [S].[UpdatedDate]
                   ,[T].[FirstName] = [S].[FirstName]
                   ,[T].[LastName] = [S].[LastName]
                   ,[T].[Address] = [S].[Address]
				   ,[T].[LastSyncDate] = [S].[LastSyncDate]
WHEN NOT MATCHED BY TARGET
	THEN INSERT([ID],[UpdatedDate],[FirstName],[LastName],[Address],[LastSyncDate])
	VALUES ([S].[ID],[S].[UpdatedDate],[S].[FirstName],[S].[LastName],[S].[Address],[S].[LastSyncDate]);
END