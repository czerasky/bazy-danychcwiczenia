-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: szkola
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `plan_godzin`
--

DROP TABLE IF EXISTS `plan_godzin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_godzin` (
  `idplan_lekcji` int NOT NULL AUTO_INCREMENT,
  `Dzien` enum('Poniedzialek','Wtorek','Sroda','Czwartek','Piatek','Sobota','Niedziela') NOT NULL,
  `Start_godzina` time NOT NULL,
  `Koniec_godzina` time NOT NULL,
  PRIMARY KEY (`idplan_lekcji`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_godzin`
--

LOCK TABLES `plan_godzin` WRITE;
/*!40000 ALTER TABLE `plan_godzin` DISABLE KEYS */;
INSERT INTO `plan_godzin` VALUES (1,'Sobota','15:00:00','16:30:00'),(2,'Sobota','16:45:00','17:50:00'),(3,'Sobota','18:00:00','19:00:00'),(4,'Sobota','19:10:00','21:00:00'),(5,'Niedziela','10:00:00','11:00:00'),(6,'Niedziela','11:30:00','13:00:00'),(7,'Niedziela','14:00:00','15:00:00'),(8,'Niedziela','15:30:00','18:20:00'),(9,'Niedziela','19:30:00','20:30:00');
/*!40000 ALTER TABLE `plan_godzin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-06 14:18:26
