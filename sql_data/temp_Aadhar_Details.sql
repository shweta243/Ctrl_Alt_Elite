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
-- Table structure for table `Aadhar_Details`
--

DROP TABLE IF EXISTS `Aadhar_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aadhar_Details` (
  `Aadhar_No` bigint NOT NULL,
  `Aadhar_Name` varchar(250) NOT NULL,
  `Aadhar_Dob` date DEFAULT NULL,
  `Aadhar_Phonenumber` bigint DEFAULT NULL,
  `Aadhar_EmailID` varchar(250) NOT NULL,
  `Aadhar_FlatNo` varchar(250) NOT NULL,
  `Aadhar_PlotNo` varchar(250) NOT NULL,
  `Aadhar_StreetDetails` varchar(250) NOT NULL,
  `Aadhar_Pincode` int NOT NULL,
  `Aadhar_city` varchar(250) NOT NULL,
  `Aadhar_State` varchar(250) NOT NULL,
  PRIMARY KEY (`Aadhar_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aadhar_Details`
--

LOCK TABLES `Aadhar_Details` WRITE;
/*!40000 ALTER TABLE `Aadhar_Details` DISABLE KEYS */;
INSERT INTO `Aadhar_Details` VALUES (123456781212,'rakesh singh','1990-06-04',4567823456,'abcd@gmail.com','1','120','sindhi colony',123456,'hyderabad','telangana'),(123586348712,'chetan','1975-09-18',5863423586,'abcd@gmail.com','2','53','madhura nagar',923456,'hyderabad','telangana'),(232352353455,'harithan','1995-01-11',6863457686,'abcd@gmail.com','5','124','madhapur',123456,'hyderabad','telangana'),(324567793532,'shekur','1999-05-24',5677924567,'abcd@gmail.com','111','3434','kalyan nagar',123456,'hyderabad','telangana'),(401231238226,'sahill','1989-05-02',2312301231,'abcd@gmail.com','3','122','madhapur',123456,'hyderabad','telangana'),(401235368226,'manogna','1990-06-21',2353601235,'abcd@gmail.com','2','121','madhapur',123456,'hyderabad','telangana'),(421567833565,'jinna','1963-06-29',5678321567,'abcd@gmail.com','123','3434','madhura nagar',124556,'hyderabad','telangana'),(432876348124,'bhanu','1989-11-29',8763432876,'abcd@gmail.com','3','3433','nampally',123456,'hyderabad','telangana'),(446576234162,'PIYUSH GUPTHA','1989-11-29',9911234521,'piyush_guptha@gmail.com','331','4-11-11/21','NARAYANA COLONY',500071,'HYDERABAD','TELANGANA'),(446576234163,'PIYUSH GUPTHA','1989-11-29',9911234521,'piyush_guptha@gmail.com','331','4-11-11/21','NARAYANA COLONY',500071,'HYDERABAD','TELANGANA'),(446577234144,'PRAVEEN SHETTY','1991-02-23',9923416372,'praveen_shetty@gmail.com','102','4-32-22/2','Sindhu colony',500301,'HYDERABAD','TELANGANA'),(446577234152,'PRANAY SINGH','1981-02-25',9921415161,'pranay_singh@gmail.com','501','2-11-221/2','Sai colony',500311,'HYDERABAD','TELANGANA'),(446577234162,'PRAVEEN SHETTY','1991-02-23',9923416372,'praveen_shetty@gmail.com','102','4-32-22/2','Sindhu colony',500301,'HYDERABAD','TELANGANA'),(446577234171,'PRAVEEN SHETTY','1991-02-23',9923416372,'praveen_shetty@gmail.com','102','4-32-22/2','Sindhu colony',500301,'HYDERABAD','TELANGANA'),(543219349543,'prakash','1979-01-20',2193443219,'abcd@gmail.com','2','5454','nampally',634456,'hyderabad','telangana'),(543768343974,'yogi','1989-01-09',7683443768,'abcd@gmail.com','8','127','kalyan nagar',123456,'hyderabad','telangana'),(642479343555,'dinesh','1989-04-21',4793442479,'abcd@gmail.com','11','3434','kalyan nagar',123456,'hyderabad','telangana'),(654321781212,'soundarya','1975-06-04',3217854321,'abcd@gmail.com','4','123','madhapur',123456,'hyderabad','telangana'),(686543276111,'sunny','1979-03-05',5432786543,'abcd@gmail.com','4','3434','nampally',823456,'hyderabad','telangana'),(687656346312,'aashish','1979-02-17',6563487656,'abcd@gmail.com','3','4546','nampally',723456,'hyderabad','telangana'),(864356243654,'srikanth','1965-07-16',3562464356,'abcd@gmail.com','1223','342','madhura nagar',723456,'hyderabad','telangana'),(872574543295,'piyush','1973-10-01',5745472576,'abcd@gmail.com','2','7564','madhura nagar',723456,'hyderabad','telangana'),(874386343565,'janakiy','1985-11-11',3863474386,'abcd@gmail.com','6','125','madhapur',123456,'hyderabad','telangana'),(876123443745,'amit','1981-02-23',1234476123,'abcd@gmail.com','9','124','kalyan nagar',123456,'hyderabad','telangana'),(965431443566,'nishant','1982-03-30',4314465431,'abcd@gmail.com','10','3434','kalyan nagar',323456,'hyderabad','telangana'),(987646343653,'shamshad','1989-01-09',6463487646,'abcd@gmail.com','7','126','madhapur',123456,'hyderabad','telangana');
/*!40000 ALTER TABLE `Aadhar_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 16:53:23
