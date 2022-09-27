CREATE DATABASE  IF NOT EXISTS `BdSubstituido` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `BdSubstituido`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: BdSubstituido
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_alunos` int NOT NULL AUTO_INCREMENT,
  `cpf` decimal(11,0) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` decimal(11,0) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `sexo` enum('F','M') NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_alunos`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BdSubstituidos`
--

DROP TABLE IF EXISTS `BdSubstituidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BdSubstituidos` (
  `id_BdSubstituidos` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descricao` text,
  `carga_horaria` int NOT NULL,
  `ano` year DEFAULT NULL,
  PRIMARY KEY (`id_BdSubstituidos`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BdSubstituidos`
--

LOCK TABLES `BdSubstituidos` WRITE;
/*!40000 ALTER TABLE `BdSubstituidos` DISABLE KEYS */;
INSERT INTO `BdSubstituidos` VALUES (1,'HTML5','Introduçâo a HTML5',40,2020),(2,'CSS3','Introduçâo a CSS3',40,2020),(3,'JavaScript','Introduçâo a JavaScript',80,2021),(4,'Java','Introduçâo a Java',440,2022),(5,'PHP4','Introduçâo a PHP4',70,2016),(6,'Phyton','Introduçâo a Phyton',80,2019),(7,'HTML5','Introduçâo a HTML5',40,2020),(8,'CSS3','Introduçâo a CSS3',40,2020),(9,'JavaScript','Introduçâo a JavaScript',80,2021),(10,'Java','Introduçâo a Java',440,2022),(11,'PHP4','Introduçâo a PHP4',70,2016),(12,'Phyton','Introduçâo a Phyton',80,2019),(13,'MySQL','Introduçâo a MySQL',70,2018),(14,'.NET','Introduçâo a .NET',120,2022);
/*!40000 ALTER TABLE `BdSubstituidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 19:14:57
