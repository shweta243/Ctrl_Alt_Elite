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
-- Table structure for table `Guest_details`
--

DROP TABLE IF EXISTS `Guest_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Guest_details` (
  `Function_Id` int NOT NULL,
  `Guest_Aadhar` bigint NOT NULL,
  `Guest_Name` varchar(250) NOT NULL,
  `Guest_DOB` date NOT NULL,
  `Host_Aadhar` bigint NOT NULL,
  `Guest_FlatNo` varchar(250) NOT NULL,
  `Guest_Plotno` varchar(250) NOT NULL,
  `Guest_Building_Name` varchar(250) NOT NULL,
  `Guest_Street_Details` varchar(250) NOT NULL,
  `Guest_pincode` int NOT NULL,
  `Guest_City` varchar(250) NOT NULL,
  `guest_state` varchar(250) NOT NULL,
  `Guest_Phone` bigint NOT NULL,
  `Guest_Emailid` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guest_details`
--

LOCK TABLES `Guest_details` WRITE;
/*!40000 ALTER TABLE `Guest_details` DISABLE KEYS */;
INSERT INTO `Guest_details` VALUES (5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(6,446577234162,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(6,446577234152,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(6,446577234162,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(6,446577234152,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(6,446577234171,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(6,446577234144,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(6,446577234162,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(6,446577234152,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(7,446577234171,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(7,446577234144,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(5,401235368226,'manogna','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435890,'trial@gmail.com'),(5,401235368227,'manas','1994-03-24',654321781212,'503','34','shiva','Gandhi',522234,'hyderabad','telangana',9160435891,'trial@gmail.com'),(6,446577234162,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(6,446577234152,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com'),(7,446577234171,'PRAVEEN SHETTY','1991-02-23',446576234163,'102','4-32-22/2','Apporva Appartment','Sindhu colony',500301,'Hyderabad','Telangana',9923416372,'praveen_shetty@gmail.com'),(7,446577234144,'PRANAY SINGH','1981-02-25',446576234163,'501','2-11-221/2','Sai Appartment','Sai colony',500311,'Hyderabad','Telangana',9921415161,'pranay_singh@gmail.com');
/*!40000 ALTER TABLE `Guest_details` ENABLE KEYS */;
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
