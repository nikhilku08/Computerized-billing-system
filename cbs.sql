-- MySQL dump 10.13  Distrib 5.6.20, for Linux (x86_64)
--
-- Host: serverora.db.net    Database: cbs
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tableBilling`
--

DROP TABLE IF EXISTS `tableBilling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableBilling` (
  `id` bigint(20) NOT NULL,
  `ProductID` bigint(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Dateofsale` date NOT NULL,
  `Total` int(11) NOT NULL,
  `Billno` int(11) NOT NULL,
  `CustomerID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tableBilling_CustomerID_idx` (`CustomerID`),
  KEY `fk_tableBilling_BillNo_idx` (`Billno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableBilling`
--

LOCK TABLES `tableBilling` WRITE;
/*!40000 ALTER TABLE `tableBilling` DISABLE KEYS */;
INSERT INTO `tableBilling` VALUES (2,57,1,'2021-06-03',8500,2,2),(3,21,1,'2021-06-03',5000,3,3),(4,57,1,'2021-06-03',8500,4,4),(5,21,1,'2021-06-03',5000,4,4),(6,57,1,'2021-06-04',8500,5,5),(7,21,1,'2021-06-04',5000,6,6),(8,57,1,'2021-06-04',8500,7,7),(9,21,1,'2021-06-04',5000,7,7),(10,57,1,'2021-06-04',8500,8,8),(11,11,1,'2021-06-04',5000,8,8),(12,66,1,'2021-06-04',3750,8,8),(13,76,4,'2021-06-04',12000,8,8),(14,57,1,'2021-06-05',8500,9,9),(15,21,1,'2021-06-05',5000,9,9),(16,76,2,'2021-06-05',6000,9,9),(17,36,1,'2021-06-05',150,9,9),(18,66,1,'2021-06-05',3750,10,10),(19,59,3,'2021-06-05',8700,11,11),(20,3,1,'2021-06-05',20000,11,11),(21,58,1,'2021-06-05',35000,11,11),(22,45,1,'2021-06-05',900,11,11),(23,44,1,'2021-06-05',1800,11,11),(24,9,1,'2021-06-05',15500,11,11),(26,21,1,'2021-06-05',5000,12,12),(27,66,1,'2021-06-05',3750,12,12),(31,44,1,'2021-06-05',1800,13,13),(33,11,1,'2021-06-05',5000,13,13),(34,66,1,'2021-06-05',3750,13,13),(36,59,5,'2021-06-05',14500,13,13),(38,45,1,'2021-06-05',900,13,13),(39,17,1,'2021-06-05',150,13,13),(40,75,1,'2021-06-05',450,13,13),(41,12,1,'2021-06-05',450,13,13),(42,57,1,'2021-06-05',13000,14,14),(43,57,1,'2021-06-05',13000,15,15),(44,57,1,'2021-06-05',13000,16,16),(45,57,1,'2021-06-05',13000,12,12),(46,78,1,'2021-06-05',8000,12,12),(47,78,1,'2021-06-23',8000,17,17),(48,21,1,'2021-06-23',5000,17,17),(49,78,1,'2021-06-23',8000,18,18),(50,78,1,'2021-06-24',8000,19,19),(51,21,1,'2021-06-24',5000,19,19),(52,66,1,'2021-06-24',3750,19,19),(53,3,1,'2021-06-24',20000,19,19),(54,78,1,'2021-06-26',8000,20,20),(55,15,1,'2021-06-27',1200,20,20),(56,78,1,'2021-06-27',8000,21,21),(57,78,1,'2021-06-27',8000,22,22),(58,89,1,'2021-06-29',5600,23,23),(59,57,1,'2021-06-29',13000,23,23),(60,66,1,'2021-06-29',3750,23,23),(61,89,1,'2021-06-29',5600,23,23);
/*!40000 ALTER TABLE `tableBilling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableCustomers`
--

DROP TABLE IF EXISTS `tableCustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableCustomers` (
  `id` bigint(20) NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `ContactAddress` varchar(150) DEFAULT NULL,
  `MobileNo` bigint(20) DEFAULT '0',
  `BillNo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BillNo_UNIQUE` (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableCustomers`
--

LOCK TABLES `tableCustomers` WRITE;
/*!40000 ALTER TABLE `tableCustomers` DISABLE KEYS */;
INSERT INTO `tableCustomers` VALUES (2,'ruma v','mahavir nagar',9300032929,2),(3,'rahul','laxmi nagar',9630612822,3),(4,'dinesh','mova raipur',6532145263,4),(5,'dinesh rai','raipur',3698521470,5),(6,'huma','mumbai IIT',9562365412,6),(8,'ruma','raiupr',9993366801,8),(9,'hemant','palval hariyana',9865325412,9),(10,'karmaveer','USA',653254125,10),(11,'ruchi vishwakarma tanwar','USA',3265985632,11),(12,'nishant waghela','mova',9638527410,12),(13,'huma tahir','mumbai',632569856,13),(14,'rahul vishwakarma','laxmi nagar',9630612822,14),(15,'hairy','haridwar',3265,15),(16,'shakure','pune',123,16),(17,'ruma vishwa','mova',9630612822,17),(18,'ruma v','laxmi nagar',99933366801,18),(19,'ruma vishwakarma','mahavir nagar',9993366801,19),(20,'ruma','mahavir nagar',9993366801,20),(21,'sapan','new delhi',9685,21),(22,'ruma','mova',45632,22),(23,'ruma','mova',123,23);
/*!40000 ALTER TABLE `tableCustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableProductRecords`
--

DROP TABLE IF EXISTS `tableProductRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableProductRecords` (
  `ProductName` varchar(150) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Rate` int(11) DEFAULT NULL,
  `ProductID` bigint(20) NOT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductName_UNIQUE` (`ProductName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableProductRecords`
--

LOCK TABLES `tableProductRecords` WRITE;
/*!40000 ALTER TABLE `tableProductRecords` DISABLE KEYS */;
INSERT INTO `tableProductRecords` VALUES ('Monitor 22\" hdmi',4,7200,1),('ups',5,3750,2),('cpu 7700 7th generation',2,20000,3),('ram 16gb ddr4',5,5500,6),('processor i7 8th generation',1,25000,7),('smps 550 watt',10,4500,8),('mother board msi gaming m3',16,15500,9),('cabinet cooler master',10,5000,11),('mouse logitech',14,450,12),('motherboard msi m3 pro',17,20000,13),('q',9,1200,15),('ram 8gb 2400 MHz',5,2400,16),('hdmi coard',6,150,17),('cpu 5509 2GHz',20,20000,18),('keyboard',10,450,20),('cabinet',10,5000,21),('ram 16 GB',10,5600,22),('smps 750 watt',4,7500,26),('monitor 24\" HDMI Samsung',4,10500,27),('pen drive 64GB',4,650,28),('pen drive 32GB sandisk',9,350,29),('pen drive 16 GB HP',47,300,30),('mouse',10,450,32),('keyboard logitech',7,550,33),('monitor 14\" LG',10,4000,35),('hdmi cable',8,150,36),('zotac 86AMP ',1,34000,37),('redeon graphics card',7,48000,38),('HDMI to VGA cord',7,150,40),('hdmi to vga converter cable',10,20,41),('sata hdd 2 TB',10,4600,42),('Toshiba Sata HDD 1 TB',5,4000,43),('foxin 2.1 sound system',7,1800,44),('dvd drive',4,900,45),('monitor 19\" samsung',10,6500,46),('zotac GeForce 210',10,1800,47),('samsung BDRom',9,9500,48),('nvidia GTX 550',1,35000,49),('redeon GTX 550',3,25000,50),('game pad',9,1000,52),('creative ZTX 650',4,15000,53),('Zotac 8400',5,1800,54),('pata to sata power cable',47,20,55),('Bluray disc writer',4,13000,57),('creative sound card',8,35000,58),('corsair ddr4 8GB RAM',20,2900,59),('corsair ddr4 16 GB RAM',10,6500,60),('router binatone',9,1600,61),('dlink lan card',9,300,63),('digilink rj 45',60,15,64),('xeon intel processor',10,50000,65),('circle ups 1 KVA',8,3750,66),('cd',50,12,67),('dvd',75,15,68),('SCSI drive 4 TB',4,50000,70),('wireless mouse logitech',10,650,71),('wireless keyboard logitech',10,750,72),('jio wifi',10,1800,73),('keyboard frontech',9,450,75),('corsair 8 GB RAM',10,3000,76),('corsiar 16 GB RAM 3000 MHz',20,8000,77),('Bluray combo',9,8000,78),('corsair 8 GB RAM 3000 MHz',20,2800,79),('corsair 16 GB ram 3000 MHz',20,7600,80),('seagate HDD  2 TB',10,5600,81),('seagate External HDD 2TB',20,7000,82),('nVIDIA Geforce GTX',10,25000,83),('zebronics wlan adapter',10,450,84),('circle keyboard',10,500,85),('sony laptop',5,65000,86),('hp laptop',5,80000,87),('redeon GTX 510',10,26000,88),('asus p5-kpmcl',9,5600,89);
/*!40000 ALTER TABLE `tableProductRecords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-29 15:38:22
