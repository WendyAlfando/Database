-- Final Project Intro DB Lab
-- Group 1:
-- 2501967770 - Jacksen
-- 2501990110 - Jason Januartha Collin
-- 2540096270 - Wendy Alfando
-- 2501972436 - Wuchierro Winken Viceroy 

------ Query Answer 10 Cases ------

USE RoCALink


-- SOAL 1
SELECT 
	mc.CustomerID,
	mc.CustomerName,
	[Total Item Variety] = CAST(COUNT(mbt.TypeName)AS varchar) + ' Types' 
FROM MsCustomer mc
JOIN TransactionHeader th ON mc.CustomerID = th.CustomerID
JOIN TransactionDetail td ON td.TransactionID = th.TransactionID
JOIN MsBike mb ON td.BikeID = mb.BikeID
JOIN MsBikeType mbt ON mb.BikeTypeID = mbt.BikeTypeID
WHERE mc.CustomerName LIKE 'A%'
GROUP BY mc.CustomerID,mc.CustomerName

-- SOAL 2
SELECT
	mbt.TypeName,
	mbt.BikeTypeID,
	[Bike Count] = COUNT(mb.BikeID)
FROM MsBikeType mbt
JOIN MsGroupset mg ON mbt.BikeTypeID = mg.BikeTypeID
JOIN MsBike mb ON mbt.BikeTypeID = mb.BikeTypeID
WHERE mg.GroupsetName LIKE 'Shimano%' AND mg.GroupsetGearsNumber BETWEEN 7 AND 12
GROUP BY mbt.TypeName,mbt.BikeTypeID


-- SOAL 3 
SELECT
	MS.StaffID,
	ms.StaffName,
	[Number of Transaction] = COUNT(th.TransactionID),
	[Number of Bikes Sold] = CAST(COUNT(ms.StaffID) AS varchar) + ' Bikes'
FROM MsStaff ms
JOIN TransactionHeader th ON ms.StaffID = th.StaffID
WHERE ms.StaffGender = 'Female'  AND LEN (ms.StaffName) BETWEEN 5 AND 10
GROUP BY MS.StaffID, ms.StaffName

-- SOAL 4
SELECT
	mg.GroupsetID,
	mg.GroupsetName,
	[Bike Count] = COUNT(mg.GroupsetID),
	[Average Price] = 'Rp ' + CAST(mb.BikePrice AS varchar)
FROM MsGroupset mg
JOIN  MsBikeType mbt ON mg.BikeTypeID = mbt.BikeTypeID
JOIN MsBike mb ON mbt.BikeTypeID = mb.BikeTypeID
JOIN MsBrandData mbd ON mb.BrandID = mbd.BrandID
WHERE mbd.BrandName LIKE 'C%'
GROUP BY mg.GroupsetID, mg.GroupsetName, mb.BikePrice
HAVING AVG(mb.BikePrice) > 150000000

-- SOAL 5
SELECT
	th.TransactionID,
	mc.CustomerName,
	ms.StaffName,
	[Transaction Day] = DATENAME(WEEKDAY, th.TransactionDate)
FROM MsStaff ms 
JOIN TransactionHeader th ON ms.StaffID = th.StaffID
JOIN MsCustomer mc ON th.CustomerID = mc.CustomerID, 
(
	SELECT	
		AVG(ms2.Salary) AS average
	FROM MsStaff ms2
)AS averagesalary
WHERE Salary > averagesalary.average AND MONTH(th.TransactionDate) = 2
GROUP BY th.TransactionID, mc.CustomerName, ms.StaffName, th.TransactionDate

-- SOAL 6
SELECT
	ms.StaffName, 
	mb.BikeName,
	th.TransactionID,
	[Transaction Month] = DATENAME(MONTH, th.TransactionDate)
FROM MsStaff ms
JOIN TransactionHeader th ON ms.StaffID = th.StaffID
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsBike mb ON td.BikeID = mb.BikeID,
(
	SELECT
		MAX(td2.Quantity) AS maxquantity
	FROM TransactionDetail td2
	JOIN TransactionHeader th2 ON td2.TransactionID = th2.TransactionID
	WHERE DAY(th2.TransactionDate) = 12
) AS maximumquantity
WHERE  td.Quantity > maximumquantity.maxquantity   


-- SOAL 7
SELECT
	[Average Bikes Sold] = CAST(COUNT(td.BikeID)AS varchar) + ' Bikes'
FROM TransactionDetail td 
JOIN TransactionHeader th ON td.TransactionID  = th.TransactionID
JOIN MsBike mb ON td.BikeID = td.BikeID,
(
	SELECT
		AVG (td2.Quantity) AS average
	FROM TransactionDetail td2
	JOIN MsBike mb2  ON td2.BikeID = mb2.BikeID
)AS averagebike
WHERE BikePrice BETWEEN 100000000  AND 150000000 AND TH.TransactionDate NOT IN ('2021')
GROUP BY averagebike.average
HAVING COUNT(td.BikeID) > averagebike.average



-- SOAL 8
SELECT
	[Max Bikes Purchased] = CAST(COUNT(td.Quantity) AS varchar)+ ' Bikes'
FROM TransactionDetail td  
JOIN MsBike mb ON td.BikeID = mb.BikeID,
(
	SELECT
		MAX((Quantity)) [MaxQuantity]
	FROM TransactionDetail
	JOIN TransactionHeader th ON TransactionDetail.TransactionID = th.TransactionID
	WHERE MONTH(TransactionDate) BETWEEN 7 AND 12 
) AS NAMEBIKE
WHERE BikeName LIKE 'S%' AND td.Quantity = NAMEBIKE.MaxQuantity
GROUP BY BikeName


-- SOAL 9
CREATE VIEW CustomerView AS
SELECT
	CustomerName,
	[Total Transaction] = COUNT(mb.BikeID),
	[Total Bikes Bought] = COUNT(td.Quantity),
	CustomerPhone = STUFF(CustomerPhone, 1,1,'+62')
FROM MsCustomer mc
JOIN TransactionHeader th ON mc.CustomerID = th.CustomerID
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsBike mb ON td.BikeID = mb.BikeID
WHERE BikePurchased > 5
GROUP BY CustomerName, CustomerPhone
HAVING COUNT(th.TransactionID) BETWEEN 2 AND 5



-- SOAL 10
CREATE VIEW TransactionView AS
SELECT
	th.TransactionID,
	[Max Quantity]= MAX(td.BikePurchased),
	[Min Quantity] = MIN(td.BikePurchased),
	[Days Elapsed] = DATEDIFF(DAY, th.TransactionDate, GETDATE()+1)
FROM TransactionHeader th
JOIN TransactionDetail td ON th.TransactionID = td.TransactionID
JOIN MsStaff ms ON th.StaffID = ms.StaffID
WHERE ms.StaffGender = 'Male'
GROUP BY th.TransactionID, th.TransactionDate
HAVING (MAX(td.BikePurchased)) != (MIN(td.BikePurchased))

