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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idclientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `sobrenome` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `dataNascimento` varchar(10) COLLATE utf8mb3_czech_ci NOT NULL,
  `cpf` varchar(45) COLLATE utf8mb3_czech_ci NOT NULL,
  `nacionalidade` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `celular` varchar(50) COLLATE utf8mb3_czech_ci DEFAULT NULL,
  `sexo` varchar(50) COLLATE utf8mb3_czech_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb3_czech_ci NOT NULL,
  `senha` varchar(45) COLLATE utf8mb3_czech_ci DEFAULT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (11,'Luiza','Sonsa Feitosa','1996-03-24','111.111.111-11','brasileira','+55 (21) 99999-8888','feminino','ls90@yahoo.com.br',NULL),(12,'Maria ','Lucia','1980-12-12','222.222.222-22','brasileira','+55 (21) 94499-8876','outro genêro','ml_bra.job@yahoo.com.br',NULL),(20,'Roberto ','Carlos Viana','1987-10-04','123.456.789-00','brasileiro','+55 (11) 95643-6543','outro gênero','rc_1987@hotmail.com',NULL),(21,'Almir','Junior','1995-01-15','123.766.544-44','brasileiro','+55 (21) 94563-1819','masculino','almir.jr15@outlook.com',NULL),(22,'Creusa','Farias','1994-07-19','143.245.467-78','brasileira','+55 (21) 93239-8877','outro gênero','creuzinha_94@gmail.com',NULL),(23,'Carlos','Damasco Rodrigues','1992-12-12','125.161.686-31','brasileiro','+55 (21) 89697-3576','masculino','carlosdamasco@gmail.com',NULL),(24,'Giorgian ','De Arrascaeta','1996-09-23','125.315.116-26','uruguaio','+55 (21) 97654-8877','masculino','gdearrascaeta@gmail.com',NULL),(25,'Everton','Ribeiro Filho','1985-04-12','132.443.123-23','brasileiro','+55 (21) 93535-9077','outro gênero','evertonribeiro@yahoo.com.br',NULL),(26,'Everton','Cebolinha da Rocha','1988-05-30','132.443.123-23','brasileiro','+55 (21) 93535-9077','outro gênero','evertoncebola@yahoo.com.br',NULL),(27,'Renata','Ruel','1975-10-11','444.444.444-44','argentina','+54 (38) 95515-3919','feminino','rr_1975@gmail.com',NULL),(28,'Joana','Daliela','1992-01-01','192.828.282-82','brasileira','+55 (21) 90214-0771','outro gênero','joaninhacarioca@gmail.com',NULL),(29,'Alex','Fernandes ','1993-06-21','123.324.636-27','brasileiro','+55 (21) 99999-9999','masculino','alexfernandes_21@yahoo.com.br',NULL),(30,'Alfredo','Neto','2022-10-20','444.444.444-44','brasileiro','+55 (21) 99999-8888','masculino','fnpt@outlook.com',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
