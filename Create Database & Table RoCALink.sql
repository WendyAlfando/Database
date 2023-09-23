-- Final Project Intro DB Lab
-- Group 1:
-- 2501967770 - Jacksen
-- 2501990110 - Jason Januartha Collin
-- 2540096270 - Wendy Alfando
-- 2501972436 - Wuchierro Winken Viceroy 


------ CREATE DATABASE & TABLE ------

CREATE DATABASE RoCALink
GO

USE RoCALink
GO

CREATE TABLE MsStaff
(StaffID CHAR (5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
StaffName VARCHAR (50) CHECK (LEN(StaffName)> 4) NOT NULL,
StaffEmail VARCHAR (25) CHECK (StaffEmail LIKE '%@rocalink.com') NOT NULL,
StaffPhone VARCHAR (13) CHECK (StaffPhone LIKE '08%') NOT NULL,
StaffGender VARCHAR (6) CHECK (StaffGender LIKE 'Male' OR StaffGender LIKE 'Female'),
Salary FLOAT NOT NULL)

CREATE TABLE MsCustomer
(CustomerID CHAR (5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]') NOT NULL,
CustomerName VARCHAR(50) CHECK (LEN(CustomerName) > 4) NOT NULL,
CustomerPhone VARCHAR(13) CHECK (CustomerPhone LIKE '08%') NOT NULL,
CustomerGender VARCHAR(6) CHECK (CustomerGender LIKE 'Male' OR CustomerGender LIKE 'Female'),
CustomerEmail VARCHAR(25) CHECK (CustomerEmail LIKE '%@gmail.com'))

CREATE TABLE MsBikeType
(BikeTypeID CHAR (5) PRIMARY KEY CHECK (BikeTypeID LIKE 'BT[0-9][0-9][0-9]') NOT NULL,
TypeName VARCHAR (100) NOT NULL)

CREATE TABLE MsGroupset
(GroupsetID CHAR (5) PRIMARY KEY CHECK (GroupsetID LIKE 'GR[0-9][0-9][0-9]') NOT NULL,
BikeTypeID CHAR (5) FOREIGN KEY REFERENCES MsBikeType(BikeTypeID)ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
GroupsetName VARCHAR (100),
GroupsetGearsNumber INT CHECK (GroupsetGearsNumber BETWEEN 4 AND 12) NOT NULL,
GroupsetWirelessCapability VARCHAR (5) CHECK (GroupsetWirelessCapability LIKE 'True' OR GroupsetWirelessCapability LIKE 'False' ) NOT NULL)

CREATE TABLE MsBrandData
(BrandID CHAR (5) PRIMARY KEY CHECK (BrandID LIKE 'BR[0-9][0-9][0-9]') NOT NULL,
BrandName VARCHAR (50) NOT NULL,
Description VARCHAR (50) NOT NULL,
Website VARCHAR (50) CHECK (Website LIKE 'www.%') NOT NULL,
Nationality VARCHAR (50) NOT NULL)

CREATE TABLE MsBike 
(BikeID CHAR (5) PRIMARY KEY CHECK (BikeID LIKE 'BK[0-9][0-9][0-9]') NOT NULL,
BikeTypeID CHAR (5) FOREIGN KEY REFERENCES MsBikeType(BikeTypeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
BrandID CHAR (5) FOREIGN KEY REFERENCES MsBrandData(BrandID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
BikeName VARCHAR (25) NOT NULL,
BikePrice INT CHECK ((BikePrice) > 0))

CREATE TABLE TransactionHeader
(TransactionID CHAR (5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]') NOT NULL,
StaffID CHAR (5)  FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
CustomerID CHAR (5)  FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
TransactionDate DATE NOT NULL)

CREATE TABLE TransactionDetail
(TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader(TransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
BikeID CHAR(5) FOREIGN KEY REFERENCES MsBike(BikeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
BikePurchased VARCHAR (50) NOT NULL,
Quantity INT CHECK ((Quantity)> 0) NOT NULL)




SELECT * FROM TransactionDetail