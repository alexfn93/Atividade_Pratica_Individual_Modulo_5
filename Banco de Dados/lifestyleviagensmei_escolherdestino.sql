CREATE DATABASE  IF NOT EXISTS `lifestyleviagensmei` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lifestyleviagensmei`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: lifestyleviagensmei
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `escolherdestino`
--

DROP TABLE IF EXISTS `escolherdestino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escolherdestino` (
  `clientes_idclientes` int NOT NULL,
  `destino_iddestino` int NOT NULL,
  PRIMARY KEY (`clientes_idclientes`,`destino_iddestino`),
  KEY `fk_clientes_has_destino_destino1_idx` (`destino_iddestino`),
  KEY `fk_clientes_has_destino_clientes_idx` (`clientes_idclientes`),
  CONSTRAINT `fk_clientes_has_destino_clientes` FOREIGN KEY (`clientes_idclientes`) REFERENCES `cliente` (`idclientes`),
  CONSTRAINT `fk_clientes_has_destino_destino1` FOREIGN KEY (`destino_iddestino`) REFERENCES `destino` (`iddestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escolherdestino`
--

LOCK TABLES `escolherdestino` WRITE;
/*!40000 ALTER TABLE `escolherdestino` DISABLE KEYS */;
/*!40000 ALTER TABLE `escolherdestino` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27  1:04:37
