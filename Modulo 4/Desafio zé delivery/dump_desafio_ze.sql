-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: desafio_ze
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `area_cobertura`
--

DROP TABLE IF EXISTS `area_cobertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_cobertura` (
  `id` varchar(10) NOT NULL,
  `parceiro_id` varchar(10) DEFAULT NULL,
  `area` multipolygon NOT NULL /*!80003 SRID 4326 */,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `parceiro_id` (`parceiro_id`),
  CONSTRAINT `area_cobertura_ibfk_1` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_cobertura`
--

LOCK TABLES `area_cobertura` WRITE;
/*!40000 ALTER TABLE `area_cobertura` DISABLE KEYS */;
INSERT INTO `area_cobertura` VALUES ('1','1',_binary '\æ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>@\0\0\0\0\0\04@\0\0\0\0\0€F@\0\0\0\0\0\0D@\0\0\0\0\0\0$@\0\0\0\0\0\0D@\0\0\0\0\0\0>@\0\0\0\0\0\04@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0@\0\0\0\0\0\0D@\0\0\0\0\0\0$@\0\0\0\0\0\0$@\0\0\0\0\0\04@\0\0\0\0\0\0@\0\0\0\0\0\0$@\0\0\0\0\0\0.@\0\0\0\0\0\0@');
/*!40000 ALTER TABLE `area_cobertura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `parceiro_id` varchar(10) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  PRIMARY KEY (`parceiro_id`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES ('1',-46.574210,-21.785741);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parceiro`
--

DROP TABLE IF EXISTS `parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parceiro` (
  `id` varchar(10) NOT NULL,
  `nome_comercial` varchar(50) NOT NULL,
  `nome_dono` varchar(100) NOT NULL,
  `documento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parceiro`
--

LOCK TABLES `parceiro` WRITE;
/*!40000 ALTER TABLE `parceiro` DISABLE KEYS */;
INSERT INTO `parceiro` VALUES ('1','Adega da Cerveja - Pinheiros','ZÃ© da Silva','1432132123891/0001');
/*!40000 ALTER TABLE `parceiro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-03 10:19:27
