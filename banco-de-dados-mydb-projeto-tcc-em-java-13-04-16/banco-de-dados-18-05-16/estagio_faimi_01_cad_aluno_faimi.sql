-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: estagio_faimi_01
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cad_aluno_faimi`
--

DROP TABLE IF EXISTS `cad_aluno_faimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_aluno_faimi` (
  `id_user_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `data_registro_aluno` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome_aluno` varchar(250) NOT NULL,
  `ra_aluno` varchar(50) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `curso` varchar(250) NOT NULL,
  `semestre` varchar(250) NOT NULL,
  `periodo` varchar(250) NOT NULL,
  PRIMARY KEY (`id_user_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_aluno_faimi`
--

LOCK TABLES `cad_aluno_faimi` WRITE;
/*!40000 ALTER TABLE `cad_aluno_faimi` DISABLE KEYS */;
INSERT INTO `cad_aluno_faimi` VALUES (1,'2016-05-18 04:18:19','Michel Ferreira da Silva','0050015344','MASCULINO','Sistema de Informação','7º SEMESTRE','Noturno'),(2,'2016-05-18 04:18:19','Michel F. Silva','0050015344','MASCULINO','Sistema de Informação','6º SEMESTRE','Noturno');
/*!40000 ALTER TABLE `cad_aluno_faimi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-18  1:30:09
