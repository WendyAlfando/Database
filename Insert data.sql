-- Final Project Intro DB Lab
-- Group 1:
-- 2501967770 - Jacksen
-- 2501990110 - Jason Januartha Collin
-- 2540096270 - Wendy Alfando
-- 2501972436 - Wuchierro Winken Viceroy 

------ Insert Data ------ 


USE RoCALink

INSERT INTO MsStaff VALUES 
('ST001', 'Jackchan Kie', 'jackchan.kie@rocalink.com', '0893468772391', 'Male', '2500000'),
('ST002', 'Ester Sam', 'ester.sam@rocalink.com', '0895466972160', 'Female', '3000000'),
('ST003', 'Kenneth Roy', 'kenneth.roy@rocalink.com', '0818877245780', 'Male', '2900000'),
('ST004', 'Ted Richie', 'ted.richie@rocalink.com', '0814866293841', 'Male', '2000000'),
('ST005', 'Putri Windie', 'putri.windie@rocalink.com', '0890553121997', 'Female', '2300000'),
('ST006', 'Mey Lanie', 'mey.lanie@rocalink.com', '0898092255215', 'Female', '1900000'),
('ST007', 'Regina Maden', 'regina.maden@rocalink.com', '0819960628174', 'Female', '3500000'),
('ST008', 'Max Putra', 'max.putra@rocalink.com', '0891162940421', 'Male', '2100000'),
('ST009', 'Eric Milo', 'eric.milo@rocalink.com', '0812137709288', 'Male', '2000000'),
('ST010', 'Gaby Sue', 'gaby.sue@rocalink.com', '0839031164598', 'Female', '3200000')

INSERT INTO MsCustomer VALUES
('CU001', 'Anton Ley', '0898022845510', 'Male', 'anton.ley@gmail.com'),
('CU002', 'Michael Dori', '0813385573019', 'Male', 'michael.dori@gmail.com'),
('CU003', 'Ardy Tulo', '0898857262124', 'Male', 'ardy.tulo@gmail.com'),
('CU004', 'Tiara Mulia', '0890195578291', 'Female', 'tiara.mulia@gmail.com'),
('CU005', 'Erica Susanto', '0818667293127', 'Female', 'erica.susanto@gmail.com'),
('CU006', 'Aaron Salim', '0819285530192', 'Male', 'aaron.salim@gmail.com'),
('CU007', 'Davin Gustiawan', '0894820017361', 'Male', 'davin.gustiawan@gmail.com'),
('CU008', 'Kezya Nur', '0898017726346', 'Female', 'kezya.nur@gmail.com'),
('CU009', 'Andy Dep', '0893538759023', 'Male', 'andy.dep@gmail.com'),
('CU010', 'Max Hardy', '0812167219082', 'Male', 'max.hardy@gmail.com'),
('CU011', 'Jonathan Jo', '0897790191235', 'Male', 'jonathan.jo@gmail.com'),
('CU012', 'Arlene Wand', '0814128757109', 'Female', 'arlene.wand@gmail.com'),
('CU013', 'Atta Rind', '0898166920109', 'Male', 'atta.rind@gmail.com'),
('CU014', 'Lorraine Mic', '0814648091531', 'Female', 'lorraine.mic@gmail.com'),
('CU015', 'Cedric Jay', '0813577453219', 'Male', 'cedric.jay@gmail.com')

INSERT INTO	MsBikeType VALUES 
('BT001', 'BMX'),
('BT002', 'Mountain'),
('BT003', 'Road'),
('BT004', 'Hybrid'),
('BT005', 'Fixie'),
('BT006', 'Touring'),
('BT007', 'Electric'),
('BT008', 'Folding'),
('BT009', 'Tandem'),
('BT010', 'Onthel')

INSERT INTO MsGroupset VALUES 
('GR001', 'BT001', 'Shimano Not Di5 7020 7070 115 R 6000 - 193 42/31', '8', 'True'),
('GR002', 'BT001', 'Campagnolo Super Record Disc 12 Speed', '11', 'False'),
('GR003', 'BT002', 'Shimano Deore M6100 Brake M6100 2 piston', '5', 'False'),
('GR004', 'BT002', 'Sram Rival 22 Speed RB Mechanical Shifters Derailleur', '8', 'True'),
('GR005', 'BT003', 'Campagnolo Campy Chorus 11', '10', 'True'),
('GR006', 'BT003', 'Sram Force 22 Speed', '7', 'False'),
('GR007', 'BT004', 'Campagnolo Potenza 51-35T', '4', 'True'),
('GR008', 'BT004', 'Shimano Alivio M3100 3x9speed 40/30/22x170 MiX', '12', 'True'),
('GR009', 'BT005', 'Sram NX Eagle 12 Speed 50T', '9', 'False'),
('GR010', 'BT005', 'Shimano Altus M310 Series', '9', 'False'),
('GR011', 'BT006', 'Shimano Not Di3 7150 7170 120 R 5000 - 183 37/27', '6', 'False'),
('GR012', 'BT006', 'Campagnolo Ekar Disc 1 X 13', '10', 'True'),
('GR013', 'BT007', 'Shimano Not Di8 7210 7260 130 R 7000 - 180 40/35', '4', 'False'),
('GR014', 'BT007', 'Campagnolo Super Ekar Disc 1 X 11', '11', 'False'),
('GR015', 'BT008', 'Shimano 105 R7000 FLAT BAR', '12', 'True'),
('GR016', 'BT008', 'Shimano Force 20 Speed', '6', 'False'),
('GR017', 'BT009', 'Shimano SLX M7100 1x12 Speed', '8', 'True'),
('GR018', 'BT009', 'Campagnolo Super Record Disc 10 Speed', '11', 'True'),
('GR019', 'BT010', 'Shimano Altus Mix M221 Series', '5', 'True'),
('GR020', 'BT010', 'Shimano Altus M721 Series', '10', 'False')

INSERT INTO MsBrandData VALUES 
('BR001', 'Polygon', 'Harga yang terjangkau & fitur berkualitas', 'www.polygonbikes.com', 'Indonesia'),
('BR002', 'Cannondale', 'Tren kerangka alumunium & desain serat karbon', 'www.cannondale.com', 'Kanada'),
('BR003', 'Giant', 'Memiliki 12.000 toko & lebih dari 50 negara', 'www.giant-bicycles.com', 'Taiwan'),
('BR004', 'GT Bike', 'Memiliki desain segitiga yang membuatnya tinggi', 'www.gtbicycles.com', 'Amerika Utara'),
('BR005', 'Wimcycle', 'Brand sepeda terbaik khususnya bagi keluarga', 'www.wimcycle.com', 'Indonesia'),
('BR006', 'United', 'Memiliki rem cakram hidrolik & saklar penguncian', 'www.unitedbike.com', 'Indonesia'),
('BR007', 'Trek', 'Sepeda yang memiliki tingkat keawetan cukup lama', 'www.trekbikes.com', 'Amerika Serikat'),
('BR008', 'Santa Cruz', 'Brand sepeda yang memiliki performa kelas atas', 'www.santacruzbicycles.com', 'Amerika Serikat'),
('BR009', 'Fuji', 'Brand yang menjual berbagai macam jenis sepeda', 'www.fujibikes.com', 'Jepang'),
('BR010', 'Kona', 'Terkenal dalam ketahanan sepeda intensitas tinggi', 'www.konaworld.com', 'Amerika Serikat'),
('BR011', 'Charlie', 'Brand sepeda yang terkenal di kalangan anak muda', 'www.charliebike.com', 'Kanada'),
('BR012', 'Cherry', 'Brand baru dengan harga terjangkau & desain unik', 'www.cherrycycle.com', 'Indonesia')

INSERT INTO MsBike VALUES 
('BK001', 'BT003', 'BR001', 'Strattos S2 Polygon Bike', '150000000'),
('BK002', 'BT004', 'BR011', 'BTWIN Hybrid Riverside 10', '175000000'),
('BK003', 'BT002', 'BR007', 'Toronto 16 SPEED Charlie', '140000000'),
('BK004', 'BT006', 'BR008', 'Trekst 700C-14SP U Cruz', '192000000'),
('BK005', 'BT007', 'BR012', 'Selis Ebike Akasia Cherry', '120000000'),
('BK006', 'BT008', 'BR005', 'United C Line BE Explore', '130000000'),
('BK007', 'BT009', 'BR004', 'Polygon Tandem Impres Ax', '182000000'),
('BK008', 'BT010', 'BR012', 'Onthel London Cherry 26M', '165000000'),
('BK009', 'BT001', 'BR011', 'BMX 20 Ever B1 Charlie', '133000000'),
('BK010', 'BT002', 'BR003', 'MTB Ranger 580 Giant Bike', '162000000'),
('BK011', 'BT003', 'BR011', 'Element FRC 38 Charlie', '174000000'),
('BK012', 'BT004', 'BR012', 'Hybrid Fixie 700C Cherry', '1510000000'),
('BK013', 'BT005', 'BR011', 'Fixie Charlie Slick 800C', '157000000'),
('BK014', 'BT001', 'BR012', '20 BMX Lycan Cherry', '155000000'),
('BK015', 'BT007', 'BR012', 'QiCycle EC1 Cherry Bike', '168000000'),
('BK016', 'BT004', 'BR010', 'SiCycle FN1 Kona Bike', '158000000')

INSERT INTO TransactionHeader VALUES 
('TR001', 'ST003', 'CU007', '2022-01-12'),
('TR002', 'ST004', 'CU008', '2022-01-19'),
('TR003', 'ST005', 'CU009', '2022-02-05'),
('TR004', 'ST006', 'CU010', '2022-02-17'),
('TR005', 'ST007', 'CU011', '2022-02-22'),
('TR006', 'ST008', 'CU012', '2022-02-25'),
('TR007', 'ST009', 'CU013', '2022-03-15'),
('TR008', 'ST010', 'CU014', '2022-03-21'),
('TR009', 'ST001', 'CU015', '2022-04-25'),
('TR010', 'ST002', 'CU001', '2022-04-26'),
('TR011', 'ST003', 'CU002', '2022-05-01'),
('TR012', 'ST004', 'CU003', '2022-06-12'),
('TR013', 'ST005', 'CU004', '2022-06-22'),
('TR014', 'ST006', 'CU005', '2022-06-28'),
('TR015', 'ST007', 'CU006', '2022-07-09'),
('TR016', 'ST008', 'CU007', '2022-07-12'),
('TR017', 'ST009', 'CU008', '2022-08-20'),
('TR018', 'ST010', 'CU009', '2021-08-29'),
('TR019', 'ST001', 'CU010', '2022-08-30'),
('TR020', 'ST002', 'CU011', '2021-09-12'),
('TR021', 'ST003', 'CU012', '2022-10-18'),
('TR022', 'ST004', 'CU013', '2021-10-19'),
('TR023', 'ST005', 'CU014', '2022-11-02'),
('TR024', 'ST006', 'CU015', '2022-11-06'),
('TR025', 'ST007', 'CU001', '2021-12-12'),
('TR026', 'ST003', 'CU007', '2022-01-13')

INSERT INTO TransactionDetail VALUES 
('TR001', 'BK002', '5', '10'),
('TR002', 'BK003', '3', '11'),
('TR003', 'BK004', '2', '12'),
('TR004', 'BK005', '1', '3'),
('TR005', 'BK006', '2', '2'),
('TR006', 'BK007', '4', '1'),
('TR007', 'BK008', '4', '2'),
('TR008', 'BK009', '5', '10'),
('TR009', 'BK010', '2', '11'),
('TR010', 'BK011', '7', '10'),
('TR011', 'BK012', '1', '12'),
('TR012', 'BK013', '3', '7'),
('TR013', 'BK014', '3', '3'),
('TR014', 'BK015', '4', '4'),
('TR015', 'BK016', '2', '10'),
('TR016', 'BK001', '5', '10'),
('TR017', 'BK002', '4', '5'),
('TR018', 'BK003', '4', '7'),
('TR019', 'BK004', '1', '8'),
('TR020', 'BK005', '5', '9'),
('TR021', 'BK006', '3', '8'),
('TR022', 'BK007', '2', '6'),
('TR023', 'BK016', '4', '8'),
('TR024', 'BK005', '3', '4'),
('TR025', 'BK001', '2', '5'),
('TR001', 'BK002', '3', '5'),
('TR006', 'BK002', '10', '5'),
('TR006', 'BK007', '6', '6'),
('TR005', 'BK007', '6', '5'),
('TR005', 'BK002', '7', '5'),
('TR026', 'BK003', '4', '20')