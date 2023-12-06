-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: car_service
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `_check`
--

DROP TABLE IF EXISTS `_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_check` (
  `id_order` int DEFAULT NULL,
  `id_repair_box` int DEFAULT NULL,
  `id_detail` int DEFAULT NULL,
  `final_time` datetime DEFAULT NULL,
  `final_price` varchar(150) DEFAULT NULL,
  KEY `id_order` (`id_order`),
  KEY `id_repair_box` (`id_repair_box`),
  KEY `id_detail` (`id_detail`),
  CONSTRAINT `_check_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `repair_orders` (`id_order`),
  CONSTRAINT `_check_ibfk_2` FOREIGN KEY (`id_repair_box`) REFERENCES `services` (`id_repair_box`),
  CONSTRAINT `_check_ibfk_3` FOREIGN KEY (`id_detail`) REFERENCES `spare_parts` (`id_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_check`
--

LOCK TABLES `_check` WRITE;
/*!40000 ALTER TABLE `_check` DISABLE KEYS */;
INSERT INTO `_check` VALUES (1,7,1,'2023-05-18 22:10:00','11 750грн'),(1,7,2,'2023-05-19 04:26:15','8 750грн'),(1,7,3,'2023-05-19 06:20:15','4 550грн'),(2,5,4,'2023-12-05 21:40:10','pivo');
/*!40000 ALTER TABLE `_check` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 17:54:12
