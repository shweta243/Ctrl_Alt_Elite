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
-- Table structure for table `Covid_Patient`
--

DROP TABLE IF EXISTS `Covid_Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Covid_Patient` (
  `Patient_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_Aadhar` bigint DEFAULT NULL,
  `Patient_Name` varchar(250) NOT NULL,
  `Patient_Dob` date DEFAULT NULL,
  `Patient_FlatNo` varchar(250) NOT NULL,
  `Patient_PlotNo` varchar(250) NOT NULL,
  `Patient_BuildingName` varchar(250) NOT NULL,
  `Patient_StreetDetails` varchar(250) NOT NULL,
  `Patient_City` varchar(250) NOT NULL,
  `Patient_State` varchar(250) NOT NULL,
  `Patient_Landmark` varchar(250) NOT NULL,
  `Patient_pinCode` int NOT NULL,
  `Patient_covidDetectionDate` date DEFAULT NULL,
  `Patient_currentHealth` varchar(250) NOT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Covid_Patient`
--

LOCK TABLES `Covid_Patient` WRITE;
/*!40000 ALTER TABLE `Covid_Patient` DISABLE KEYS */;
INSERT INTO `Covid_Patient` VALUES (1,123456781212,'rakesh singh','1990-06-04','1','120','Srila Towers','sindhi colony','hyderabad','telangana','BigBazar',123456,'2020-03-24','Active'),(2,401231238226,'sahill','1989-05-02','3','122','Sreeja Towers','madhapur','hyderabad','telangana','CMR',123456,'2020-04-25','Active'),(3,543219349543,'prakash','1979-01-20','2','5454','Athidi','nampally','hyderabad','telangana','Ramalayam',634456,'2020-04-30','Recovered'),(4,401235368226,'nmanogna','1990-06-04','1','120','Omkar Towers','sindhi colony','hyderabad','telangana','SouthIndia',123456,'2020-03-24','Active'),(5,446577234162,'PRAVEEN SHETTY','1991-02-23','102','4-32-22/2','Apporva Appartment','Sindhu colony colony','Hyderabad','Telangana','BigBazar',500301,'2020-06-20','Active'),(6,446577234171,'PRAVEEN SHETTY','1991-02-23','102','4-32-22/2','Apporva Appartment','Sindhu colony colony','Hyderabad','Telangana','BigBazar',500301,'2020-06-20','Active');
/*!40000 ALTER TABLE `Covid_Patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 16:53:22
