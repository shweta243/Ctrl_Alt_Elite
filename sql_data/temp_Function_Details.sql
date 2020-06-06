-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: temp
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `Function_Details`
--

DROP TABLE IF EXISTS `Function_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Function_Details` (
  `Function_Id` int NOT NULL AUTO_INCREMENT,
  `Host_Aadhar` bigint DEFAULT NULL,
  `Function_Name` varchar(250) NOT NULL,
  `Venue_Name` varchar(250) NOT NULL,
  `Event_StartDate` date DEFAULT NULL,
  `Event_EndDate` date DEFAULT NULL,
  `No_of_Guests` int DEFAULT NULL,
  `Venue_State` varchar(250) NOT NULL,
  `Venue_City` varchar(250) NOT NULL,
  `Venue_FlatNo` varchar(250) NOT NULL,
  `Venue_PlotNo` varchar(250) NOT NULL,
  `Venue_BuildingName` varchar(250) NOT NULL,
  `Venue_StreeDetails` varchar(250) NOT NULL,
  `Venue_Landmark` varchar(250) NOT NULL,
  `Venue_Pincode` int DEFAULT NULL,
  `Duration_of_event` int DEFAULT NULL,
  PRIMARY KEY (`Function_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Function_Details`
--

LOCK TABLES `Function_Details` WRITE;
/*!40000 ALTER TABLE `Function_Details` DISABLE KEYS */;
INSERT INTO `Function_Details` VALUES (1,123456781212,'Birthday','Darbar Hotel','2020-06-11','2020-06-11',20,'TELANGANA','HYD','205','5-33-45','DARBAR','kukatpally','kukatpally',500038,5),(2,32523,'Marriage','dfsd','2020-06-08','2020-06-16',23,'dfasf','fewar','231','33','dfs','dfs','ewrfq',23423,23),(3,432876348124,'Birthday','dfs','2020-06-22','2020-06-17',43,'dfs','fgd','rte','fg','gh','rgtert','fgdsg',345,45),(4,432876348124,'Birthday','dfs','2020-06-22','2020-06-17',43,'dfs','fgd','rte','fg','gh','rgtert','fgdsg',345,45),(5,687656346312,'Marriage','dfs','2020-06-22','2020-06-17',43,'dfs','fgd','rte','fg','gh','rgtert','fgdsg',345,45),(6,446576234163,'Birthday','SWAGATH  HOTEL','2020-06-10','2020-06-10',2,'TELANGANA','HYDERABAD','205','5-33-45/2','SWAGATH','REMEDY LINE','KUKATPALLY',500038,5),(7,446576234162,'Birthday','SWAGATH  HOTEL','2020-06-10','2020-06-10',2,'TELANGANA','HYDERABAD','205','5-33-45/2','SWAGATH','REMEDY LINE','KUKATPALLY',500038,5);
/*!40000 ALTER TABLE `Function_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 16:53:21
