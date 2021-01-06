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
-- Table structure for table `klasy_plan_godzin`
--

DROP TABLE IF EXISTS `klasy_plan_godzin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klasy_plan_godzin` (
  `idklasy_plan` int NOT NULL,
  `idplan_lekcji_plan` int NOT NULL,
  PRIMARY KEY (`idklasy_plan`,`idplan_lekcji_plan`),
  KEY `fk_klasy_has_plan_godzin_plan_godzin1_idx` (`idplan_lekcji_plan`),
  KEY `fk_klasy_has_plan_godzin_klasy1_idx` (`idklasy_plan`),
  CONSTRAINT `fk_klasy_has_plan_godzin_klasy1` FOREIGN KEY (`idklasy_plan`) REFERENCES `klasy` (`idklasy`),
  CONSTRAINT `fk_klasy_has_plan_godzin_plan_godzin1` FOREIGN KEY (`idplan_lekcji_plan`) REFERENCES `plan_godzin` (`idplan_lekcji`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasy_plan_godzin`
--

LOCK TABLES `klasy_plan_godzin` WRITE;
/*!40000 ALTER TABLE `klasy_plan_godzin` DISABLE KEYS */;
INSERT INTO `klasy_plan_godzin` VALUES (3,1),(3,2),(4,3),(4,4),(4,5),(3,6),(3,7),(4,8),(4,9);
/*!40000 ALTER TABLE `klasy_plan_godzin` ENABLE KEYS */;
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
