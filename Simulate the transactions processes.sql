-- Final Project Intro DB Lab
-- Group 1:
-- 2501967770 - Jacksen
-- 2501990110 - Jason Januartha Collin
-- 2540096270 - Wendy Alfando
-- 2501972436 - Wuchierro Winken Viceroy 


------ Simulate the Transaction Sales ------ 

USE RoCALink

-- Pertama, pelanggan datang ke toko sepeda untuk melihat sepeda yang akan dibeli, berdasarkan harga, spesifikasi dan jenis sepeda.
SELECT
	BikeName,
	TypeName,
	BrandName,
	Description,
	Nationality,
	GroupsetName,
	BikePrice
FROM MsBike mb
JOIN MsBikeType mbt ON mb.BikeTypeID = mbt.BikeTypeID
JOIN MsBrandData mbd ON mb.BrandID = mbd.BrandID
JOIN MsGroupset mg ON mbt.BikeTypeID = mg.BikeTypeID

-- Kedua, pelanggan tersebut bernama Michael Anderson, ingin membeli sebuah sepeda agar Ia dapat berolahraga di pagi hari. Oleh karena itu, pada tanggal 15 Januari 2022 Michael pergi ke toko sepeda RoCALink dan melihat-lihat sepeda yang ada disana. Dan memutuskan untuk membeli, kemudian staff melayani Michael dan meminta datanya untuk diisi.
INSERT INTO MsCustomer VALUES ('CU016', 'Michael Anderson', '0895825337241', 'Male', 'michael.anderson@gmail.com')

-- Ketiga, Staff yang melayani Michael juga memasukan datanya kedalam database.
INSERT INTO MsStaff VALUES ('ST011', 'Diana May', 'diana.may@rocalink.com', '0823340526774', 'Female', '2900000')

-- Keempat, Staff memasukan data transaksi penjualan sepeda kedalam database untuk laporan.
INSERT INTO TransactionHeader VALUES ('TR027', 'ST011', 'CU016', '2022-01-15')
INSERT INTO TransactionDetail VALUES ('TR027', 'BK010', '01', '09')