/* 
_____________________________________________________

Create Database and Schemas 
_____________________________________________________

Script Purpose: 
  This scirpt creates new database named 'Datawarehouse' after checking if it already exists. 
  IF the data base exits, it is dropped and recreated. In addition, the script sets up 3 schemas within the database: 
  'bronze', 'silver', 'gold'

WARNING: 
  Running this script will drop the entire 'Datawarehouse' database if it exists. 
  All data in the database will be permantently deleted. 
  Proceed with caution and ensure you have proper backups before running this script. 
*/ 

-- Create Database 'DataWarehouse'
USE master; 
GO

-- Drop and recreate Datawarehouse database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse') 
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
	DROP DATABASE DataWarehouse; 
END; 
GO

-- Create the 'Datawarehouse' database 
CREATE DATABASE DataWarehouse; 
GO
USE DataWarehouse; 
GO

-- Create Schemas
CREATE SCHEMA bronze; 
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold; 
