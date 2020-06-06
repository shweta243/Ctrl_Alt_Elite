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
-- Table structure for table `Host_Details`
--

DROP TABLE IF EXISTS `Host_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Host_Details` (
  `Host_Id` int NOT NULL AUTO_INCREMENT,
  `Host_Aadhar` bigint DEFAULT NULL,
  `Host_Name` varchar(250) NOT NULL,
  `Host_Dob` date DEFAULT NULL,
  `Host_City` varchar(250) NOT NULL,
  `Host_State` varchar(250) NOT NULL,
  `Host_Landmark` varchar(250) NOT NULL,
  `Host_Pincode` varchar(250) NOT NULL,
  `Host_FlatNo` varchar(250) NOT NULL,
  `Host_PlotNo` varchar(250) NOT NULL,
  `Host_BuildingName` varchar(250) NOT NULL,
  `Host_StreetDetails` varchar(250) NOT NULL,
  `Host_HealthStatus` varchar(250) NOT NULL,
  `Host_EmailID` varchar(250) NOT NULL,
  `Host_PhoneNumber` bigint DEFAULT NULL,
  PRIMARY KEY (`Host_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Host_Details`
--

LOCK TABLES `Host_Details` WRITE;
/*!40000 ALTER TABLE `Host_Details` DISABLE KEYS */;
INSERT INTO `Host_Details` VALUES (1,432876348124,'bhanu','1989-11-29','hyderabad','telangana','a v school','123456','3','3433','kalyan nagar','nampally','well','abcd@gmail.com',8763432876),(2,432876348124,'bhanu','1989-11-29','hyderabad','telangana','a v school','123456','3','3433','kalyan nagar','nampally','well','abcd@gmail.com',8763432876),(3,687656346312,'aashish','1979-02-17','hyderabad','telangana','dimmy pan shop','723456','3','4546','chaikkadpally','kukatpally','not well','abcd@gmail.com',6563487656),(4,543219349543,'prakash','1979-01-20','hyderabad','telangana','green park hotel','634456','2','5454','sindhi colony','secunderabad','well','abcd@gmail.com',2193443219),(5,686543276111,'sunny','1979-03-05','hyderabad','telangana','relaince studios','823456','4','3434','patel nagar','hitech city','not well','abcd@gmail.com',5432786543),(6,578890890,'null','2020-06-08','null','Uttarakhand','abc school','43545','45','56','dbfjdsb','dgfdg','null','abs@gmail.com',34535467),(7,43287634564,'null','2020-06-10','null','Uttarakhand','Aps School','243715','3','4','surya colony','Painth Parav','null','shwet@gmail.com',8967243345),(8,43287634564,'null','2020-06-10','null','Uttarakhand','Aps School','243715','3','4','surya colony','Painth Parav','null','shwet@gmail.com',8967243345),(9,43287634564,'null','2020-06-10','null','Uttarakhand','Aps School','243715','3','4','surya colony','Painth Parav','null','shwet@gmail.com',8967243345),(10,5346,'null','2020-06-08','null','ghdr','dsfgs','57474','435','34','fgd','dsgds','null','sd@gmail.com',4654565),(11,43287634564,'null','2020-06-10','null','Uttarakhand','Aps School','243715','3','4','surya colony','Painth Parav','null','shwet@gmail.com',8967243345),(12,43287634564,'null','2020-06-10','null','Uttarakhand','Aps School','243715','3','4','surya colony','Painth Parav','null','shwet@gmail.com',8967243345),(13,5346453,'sdfsj','2020-06-09','fdgvd','ghdrd','dsfgsdfsdf','57474','435','34','fgd','dsgds','Well','sd@gmail.com',465456534),(14,123586348712,'fsd','2020-06-22','dvas','dfsd','vdfgd','3524','4563','34','dfs','fgrsy','Well','df@gmail.com',3432),(15,123586348712,'fsd','2020-06-22','dvas','dfsd','vdfgd','3524','4563','34','dfs','fgrsy','Well','df@gmail.com',3432),(16,446576234163,'PIYUSH GUPTHA','1970-08-11','HYDERABAD','TELANGANA','HPS SCHOOL','500071','331','421','NARAYANA APPARTMENTS','NARAYANA COLONY','Well','piyush_guptha@gmail.com',9911234521),(17,446576234162,'PIYUSH GUPTHA','1985-07-16','HYDERABAD','TELANGANA','HPS SCHOOL','500071','331','453','NARAYANA APPARTMENTS','NYAARANA COLONY','Well','piyush_guptha@gmail.com',9911234521);
/*!40000 ALTER TABLE `Host_Details` ENABLE KEYS */;
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
