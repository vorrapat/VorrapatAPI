-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cardatabase
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `mfg` int NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `gear_type` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `doors` int DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Toyota','Camry',2023,'Black',30000.00,'Automatic','Gasoline',4,5,NULL,'2024-08-31 16:06:48'),(2,'nissan','gtr',2023,'Black',30000.00,'Automatic','Gasoline',4,4,NULL,'2024-09-01 12:51:46'),(3,'asdsa','sadsa',20000,'cww',50000.00,'asdsad','sadsad',8,5,'/uploads/1725288654149-34.jpg','2024-09-02 14:50:54'),(4,'suzuki','100d',2000,'white',50000.00,'automatic','gasoline',2,5,'/uploads/1725288918010-34.jpg','2024-09-02 14:55:18'),(5,'nissan','gtr',2023,'Black',30000.00,'Automatic','Gasoline',4,4,NULL,'2024-09-02 16:28:43'),(6,'nissan','gtr',2023,'Black',30000.00,'Automatic','Gasoline',4,4,NULL,'2024-09-02 16:28:50'),(7,'nissan','gtr',2023,'Black',30000.00,'Automatic','Gasoline',4,4,NULL,'2024-09-02 16:29:13'),(8,'toyota','colora',2001,'white',200000.00,'automatic','gasoline',4,4,'/uploads/1725294799993-33.jpg','2024-09-02 16:33:20'),(9,'sad','sadsa',2000,'rwff',9.00,'asdsa','sadsa',5,3,'/uploads/1725295133297-33.jpg','2024-09-02 16:38:53'),(10,'asd','asds',2000,'white',10000.00,'asdsa','asdsa',2000,2000,'/uploads/1725295330086-34.jpg','2024-09-02 16:42:10'),(11,'Suzuki','S1D1',2001,'White',500000.00,'automatic','gasoline',2,2,'/uploads/1725295545708-34.jpg','2024-09-02 16:45:45'),(12,'honda','s2000',2001,'white',200000.00,'automatic','gasoline',4,4,'/uploads/1725297543992-35.jpg','2024-09-02 17:19:04');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03  0:56:30
