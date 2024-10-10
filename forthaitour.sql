CREATE DATABASE  IF NOT EXISTS `forthaitour` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `forthaitour`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: forthaitour
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressID` int NOT NULL,
  `road` varchar(50) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zipcode` int NOT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Chang Mang','Mang',121231),(2,'Main St','Bangkok',10110),(3,'Ocean Ave','Phuket',55555),(4,'Harbor Rd','Pattaya',20150),(5,'Beachfront Blvd','Krabi',81000),(6,'Hilltop Ln','Chiang Mai',50200),(7,'Temple St','Ayutthaya',13000),(8,'Market Ave','Surat Thani',84000),(9,'Coconut Dr','Koh Samui',84320),(10,'Sunset Way','Hua Hin',77110),(11,'Palm Rd','Trang',92000),(12,'Jungle Path','Kanchanaburi',71000),(13,'Riverwalk','Nakhon Sawan',60000),(14,'Historic Ln','Lopburi',15000),(15,'Seaside St','Chonburi',20000),(16,'Cultural Way','Udon Thani',41000),(17,'Hillcrest Dr','Nakhon Ratchasima',30000),(18,'Ancient Blvd','Sukhothai',64000),(19,'Lakeside Rd','Nong Khai',43000),(20,'Mountainview Dr','Mae Hong Son',58000);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruiseship`
--

DROP TABLE IF EXISTS `cruiseship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cruiseship` (
  `cruiseShipID` int NOT NULL AUTO_INCREMENT,
  `cruiseShipLine` varchar(100) NOT NULL,
  `roomID` int NOT NULL,
  PRIMARY KEY (`cruiseShipID`),
  KEY `cs_room_idx` (`roomID`),
  CONSTRAINT `cs_room` FOREIGN KEY (`roomID`) REFERENCES `room` (`roomID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruiseship`
--

LOCK TABLES `cruiseship` WRITE;
/*!40000 ALTER TABLE `cruiseship` DISABLE KEYS */;
INSERT INTO `cruiseship` VALUES (1,'Caribbean Explorer',1),(2,'Pacific Voyager',2),(3,'Atlantic Dream',3),(4,'Mediterranean Pearl',4),(5,'Baltic Star',5),(6,'Indian Ocean Breeze',6),(7,'Arctic Sun',7),(8,'Antarctic Quest',8),(9,'Pacific Spirit',9),(10,'Northern Lights',10),(11,'Southern Cross',11),(12,'Equator Adventure',12),(13,'Tropic Breeze',13),(14,'Amazon River Cruise',14),(15,'Gulf Stream',15),(16,'Coral Explorer',16),(17,'Sunset Queen',17),(18,'Misty Isles',18),(19,'Paradise Bay',19),(20,'Lagoon Explorer',20);
/*!40000 ALTER TABLE `cruiseship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruiseshipcompany`
--

DROP TABLE IF EXISTS `cruiseshipcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cruiseshipcompany` (
  `cruiseShipCompanyID` int NOT NULL AUTO_INCREMENT,
  `cruiseShipCompanyName` varchar(50) NOT NULL,
  `cruiseShipID` int NOT NULL,
  `addressID` int NOT NULL,
  PRIMARY KEY (`cruiseShipCompanyID`),
  KEY `csc_cruiseShip_idx` (`cruiseShipID`),
  KEY `csc_address_idx` (`addressID`),
  CONSTRAINT `csc_address` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`),
  CONSTRAINT `csc_cruiseShip` FOREIGN KEY (`cruiseShipID`) REFERENCES `cruiseship` (`cruiseShipID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruiseshipcompany`
--

LOCK TABLES `cruiseshipcompany` WRITE;
/*!40000 ALTER TABLE `cruiseshipcompany` DISABLE KEYS */;
INSERT INTO `cruiseshipcompany` VALUES (1,'Royal Seas',1,1),(2,'Oceanic Line',2,2),(3,'Tropical Cruises',3,3),(4,'Sea Voyager',4,4),(5,'Marine Bliss',5,5),(6,'Blue Waters',6,6),(7,'Coral Line',7,7),(8,'Wave Crest',8,8),(9,'Star Marine',9,9),(10,'Sunshine Cruises',10,10),(11,'Azure Lines',11,11),(12,'Paradise Fleet',12,12),(13,'Ocean Wonders',13,13),(14,'Voyage Ventures',14,14),(15,'Harbor Tours',15,15),(16,'Explorer Lines',16,16),(17,'Seabreeze Corp',17,17),(18,'Wave Horizon',18,18),(19,'Aqua Expeditions',19,19),(20,'Mermaid Fleet',20,20);
/*!40000 ALTER TABLE `cruiseshipcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) NOT NULL,
  `phoneNumber` int NOT NULL,
  `paymentRecordID` int NOT NULL,
  `ticketID` int NOT NULL,
  PRIMARY KEY (`customerID`),
  KEY `c_paymentRecord_idx` (`paymentRecordID`),
  KEY `c_ticket_idx` (`ticketID`),
  CONSTRAINT `c_paymentRecord` FOREIGN KEY (`paymentRecordID`) REFERENCES `paymentrecord` (`paymentRecordID`),
  CONSTRAINT `c_ticket` FOREIGN KEY (`ticketID`) REFERENCES `ticket` (`ticketID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe',801234567,1,1),(2,'Jane Smith',812345678,2,2),(3,'Mike Johnson',823456789,3,3),(4,'Sara Davis',834567890,4,4),(5,'Linda Brown',845678901,5,5),(6,'James White',856789012,6,6),(7,'Patricia Black',867890123,7,7),(8,'Robert Green',878901234,8,8),(9,'Barbara Adams',889012345,9,9),(10,'Michael Allen',890123456,10,10),(11,'Elizabeth Young',811122334,11,11),(12,'David King',822233445,12,12),(13,'Susan Scott',833344556,13,13),(14,'Joseph Hill',844455667,14,14),(15,'Nancy Wright',855566778,15,15),(16,'Lisa Nelson',866677889,16,16),(17,'Thomas Baker',877788990,17,17),(18,'Karen Gonzalez',888899001,18,18),(19,'Chris Perez',899900112,19,19),(20,'Betty Roberts',810022033,20,20);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customertourdetails`
--

DROP TABLE IF EXISTS `customertourdetails`;
/*!50001 DROP VIEW IF EXISTS `customertourdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customertourdetails` AS SELECT 
 1 AS `Customer ID`,
 1 AS `Customer Name`,
 1 AS `Phone Number`,
 1 AS `Tour Program ID`,
 1 AS `Payment Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelID` int NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(50) NOT NULL,
  `addressID` int NOT NULL,
  PRIMARY KEY (`hotelID`),
  KEY `h_address_idx` (`addressID`),
  CONSTRAINT `h_address` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentrecord`
--

DROP TABLE IF EXISTS `paymentrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentrecord` (
  `paymentRecordID` int NOT NULL AUTO_INCREMENT,
  `paymentRecordDate` date NOT NULL,
  PRIMARY KEY (`paymentRecordID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentrecord`
--

LOCK TABLES `paymentrecord` WRITE;
/*!40000 ALTER TABLE `paymentrecord` DISABLE KEYS */;
INSERT INTO `paymentrecord` VALUES (1,'2024-10-15'),(2,'2024-10-02'),(3,'2024-10-03'),(4,'2024-10-04'),(5,'2024-10-05'),(6,'2024-10-06'),(7,'2024-10-07'),(8,'2024-10-08'),(9,'2024-10-09'),(10,'2024-10-10'),(11,'2024-10-11'),(12,'2024-10-12'),(13,'2024-10-13'),(14,'2024-10-14'),(15,'2024-10-15'),(16,'2024-10-16'),(17,'2024-10-17'),(18,'2024-10-18'),(19,'2024-10-19'),(20,'2024-10-20');
/*!40000 ALTER TABLE `paymentrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantID` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(50) NOT NULL,
  `addressID` int NOT NULL,
  PRIMARY KEY (`restaurantID`),
  KEY `r_address_idx` (`addressID`),
  CONSTRAINT `r_address` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Seafood Delight',1),(2,'Tropical Bites',3),(3,'Harbor Grille',4),(4,'Ocean Feast',5),(5,'Sunset Diner',6),(6,'Island BBQ',7),(7,'Coral Cafe',8),(8,'Seaside Eats',9),(9,'Marina Bar',10),(10,'Coastal Kitchen',11),(11,'Bay Breeze',12),(12,'Tide Table',13),(13,'Beachside Bistro',14),(14,'Palm Pavilion',15),(15,'The Shell Shack',16),(16,'Wave House',17),(17,'Shoreline Cafe',18),(18,'Cove Restaurant',19),(19,'The Pier Eatery',20),(20,'Sailor’s Galley',2);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomID` int NOT NULL AUTO_INCREMENT,
  `cruiseShipID` int NOT NULL,
  PRIMARY KEY (`roomID`),
  KEY `r_cruiseShip_idx` (`cruiseShipID`),
  CONSTRAINT `r_cruiseShip` FOREIGN KEY (`cruiseShipID`) REFERENCES `cruiseship` (`cruiseShipID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticketID` int NOT NULL AUTO_INCREMENT,
  `tourProgramID` int NOT NULL,
  `customerID` int NOT NULL,
  PRIMARY KEY (`ticketID`),
  KEY `t_tourProgram_idx` (`tourProgramID`),
  KEY `t_customer_idx` (`customerID`),
  CONSTRAINT `t_customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `t_tourProgram` FOREIGN KEY (`tourProgramID`) REFERENCES `tourprogram` (`tourProgramID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourprogram`
--

DROP TABLE IF EXISTS `tourprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourprogram` (
  `tourProgramID` int NOT NULL AUTO_INCREMENT,
  `ticketID` int NOT NULL,
  PRIMARY KEY (`tourProgramID`),
  KEY `tp_ticket_idx` (`ticketID`),
  CONSTRAINT `tp_ticket` FOREIGN KEY (`ticketID`) REFERENCES `ticket` (`ticketID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourprogram`
--

LOCK TABLES `tourprogram` WRITE;
/*!40000 ALTER TABLE `tourprogram` DISABLE KEYS */;
INSERT INTO `tourprogram` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `tourprogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customertourdetails`
--

/*!50001 DROP VIEW IF EXISTS `customertourdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customertourdetails` AS select `customer`.`customerID` AS `Customer ID`,`customer`.`customerName` AS `Customer Name`,`customer`.`phoneNumber` AS `Phone Number`,`tourprogram`.`tourProgramID` AS `Tour Program ID`,`paymentrecord`.`paymentRecordDate` AS `Payment Date` from (((`customer` join `ticket` on((`customer`.`customerID` = `ticket`.`customerID`))) join `tourprogram` on((`ticket`.`tourProgramID` = `tourprogram`.`tourProgramID`))) left join `paymentrecord` on((`customer`.`paymentRecordID` = `paymentrecord`.`paymentRecordID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 23:51:13
