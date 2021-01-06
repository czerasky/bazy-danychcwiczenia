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
-- Table structure for table `nauczyciele_lekcje`
--

DROP TABLE IF EXISTS `nauczyciele_lekcje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nauczyciele_lekcje` (
  `idnauczyciele_lekcje` int NOT NULL,
  `idlekcje_lekcje` int NOT NULL,
  PRIMARY KEY (`idnauczyciele_lekcje`,`idlekcje_lekcje`),
  KEY `fk_nauczyciele_has_lekcje_lekcje1_idx` (`idlekcje_lekcje`),
  KEY `fk_nauczyciele_has_lekcje_nauczyciele1_idx` (`idnauczyciele_lekcje`),
  CONSTRAINT `fk_nauczyciele_has_lekcje_lekcje1` FOREIGN KEY (`idlekcje_lekcje`) REFERENCES `lekcje` (`idlekcje`),
  CONSTRAINT `fk_nauczyciele_has_lekcje_nauczyciele1` FOREIGN KEY (`idnauczyciele_lekcje`) REFERENCES `nauczyciele` (`idnauczyciele`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nauczyciele_lekcje`
--

LOCK TABLES `nauczyciele_lekcje` WRITE;
/*!40000 ALTER TABLE `nauczyciele_lekcje` DISABLE KEYS */;
INSERT INTO `nauczyciele_lekcje` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,6),(3,7),(4,7),(4,8);
/*!40000 ALTER TABLE `nauczyciele_lekcje` ENABLE KEYS */;
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
