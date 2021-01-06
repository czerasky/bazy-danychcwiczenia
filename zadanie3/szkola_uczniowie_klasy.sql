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
-- Table structure for table `uczniowie_klasy`
--

DROP TABLE IF EXISTS `uczniowie_klasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uczniowie_klasy` (
  `iduczniowie_uczniowie` int NOT NULL,
  `idklasy_uczniowie` int NOT NULL,
  PRIMARY KEY (`iduczniowie_uczniowie`,`idklasy_uczniowie`),
  KEY `fk_uczniowie_has_klasy_klasy1_idx` (`idklasy_uczniowie`),
  KEY `fk_uczniowie_has_klasy_uczniowie1_idx` (`iduczniowie_uczniowie`),
  CONSTRAINT `fk_uczniowie_has_klasy_klasy1` FOREIGN KEY (`idklasy_uczniowie`) REFERENCES `klasy` (`idklasy`),
  CONSTRAINT `fk_uczniowie_has_klasy_uczniowie1` FOREIGN KEY (`iduczniowie_uczniowie`) REFERENCES `uczniowie` (`iduczniowie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczniowie_klasy`
--

LOCK TABLES `uczniowie_klasy` WRITE;
/*!40000 ALTER TABLE `uczniowie_klasy` DISABLE KEYS */;
INSERT INTO `uczniowie_klasy` VALUES (7,3),(8,3),(9,3),(10,4),(11,4),(12,4),(13,5);
/*!40000 ALTER TABLE `uczniowie_klasy` ENABLE KEYS */;
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
