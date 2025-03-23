/*
Create Database and Schemas
purpose :
  Create a new database named 'DataWarehouse' after checking if it already exists.
  if the database exists, it is dropped and recreated.
  Set up three schemas within the database (Bronze , Silver , Gold)
*/
USE master ;
GO 

-- Drop and recreate the database 
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create Database 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas 
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
