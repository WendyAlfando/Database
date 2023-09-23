USE RoCALink

--Michael Anderson ingin membeli sebuah sepeda agar Ia dapat berolahraga di pagi hari. Oleh karena itu, pada tanggal 15 Januari 2022 Michael pergi ke toko sepeda RoCALink dan melihat-lihat sepeda yang ada disana.
INSERT INTO MsCustomer VALUES ('CU016', 'Michael Anderson', '0895825337241', 'Male', 'michael.anderson@gmail.com')

--Di toko tersebut, Ia dilayani oleh seorang staff baru bernama Diana May.
INSERT INTO MsStaff VALUES ('ST011', 'Diana May', 'diana.may@rocalink.com', '0823340526774', 'Female', '2900000')

-- Michael melihat-lihat tipe sepeda, nama sepeda, dan brand sepeda yang dijual di toko RoCALink
SELECT TypeName, BikeName, BrandName
FROM MsBikeType BT JOIN MsBike BI
ON BT.BikeTypeID = BI.BikeTypeID
JOIN MsBrandData BD
ON BI.BrandID = BD.BrandID

-- Michael juga melihat sepeda-sepeda berdasarkan harga dari sepeda tersebut
SELECT BikeName, BikePrice
FROM MsBike BI JOIN MsBrandData BD
ON BI.BrandID = BD.BrandID
JOIN MsBikeType BT
ON BT.BikeTypeID = BI.BikeTypeID
ORDER BY BikePrice DESC

-- Michael memutuskan untuk membeli sepeda dengan tipe Mountain karena sesuai dengan keinginannya
SELECT * FROM MsBikeType
WHERE BikeTypeID = 'BT002'
--Michael memutuskan untuk membeli sepeda dengan merk Giant asal Taiwan dikarenakan merk nya terkenal dan kualitasnya bagus
SELECT * FROM MsBrandData
WHERE BrandID = 'BR003'
--Harga dari sepeda tersebut adalah 162000000 dan bernama MTB Ranger 580 Giant Bike
SELECT * FROM MsBike
WHERE BikeName = 'MTB Ranger 580 Giant Bike'
AND BikePrice = '162000000'

INSERT INTO TransactionHeader VALUES ('TR026', 'ST011', 'CU016', '2022-01-15')
INSERT INTO TransactionDetail VALUES ('TR026', 'BK010', '01', '09')