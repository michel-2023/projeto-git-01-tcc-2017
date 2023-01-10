-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: estagio_faimi_01
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `cad_encaminhamento_faimi`
--

DROP TABLE IF EXISTS `cad_encaminhamento_faimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_encaminhamento_faimi` (
  `id_user_encaminhamento` int(11) NOT NULL,
  `data_registro_encaminhamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_inicio` varchar(45) DEFAULT NULL,
  `data_final` varchar(45) DEFAULT NULL,
  `contratado` varchar(250) NOT NULL,
  `conceito` varchar(500) DEFAULT NULL,
  `id_user_vaga` int(11) DEFAULT NULL,
  `id_user_aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user_encaminhamento`),
  KEY `cad_encaminhamento_faimi_ibfk_1` (`id_user_vaga`),
  KEY `cad_encaminhamento_faimi_ibfk_2` (`id_user_aluno`),
  CONSTRAINT `cad_encaminhamento_faimi_ibfk_1` FOREIGN KEY (`id_user_vaga`) REFERENCES `cad_vaga_faimi` (`id_user_vaga`),
  CONSTRAINT `cad_encaminhamento_faimi_ibfk_2` FOREIGN KEY (`id_user_aluno`) REFERENCES `cad_aluno_faimi` (`id_user_aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_encaminhamento_faimi`
--

LOCK TABLES `cad_encaminhamento_faimi` WRITE;
/*!40000 ALTER TABLE `cad_encaminhamento_faimi` DISABLE KEYS */;
INSERT INTO `cad_encaminhamento_faimi` VALUES (1,'2016-05-11 17:28:17','02/01/15','20/03/16','','ALUNO CUMPRIU O CONTRATO DE ESTÁGIARIO DO INÍCIO AO FIM',2,1),(2,'2016-05-11 17:28:17','02/01/16','20/04/16','','ALUNO QUEBROU O CONTRATO DE ESTÁGIARIO POR OPORTUNIDADE MELHOR',1,2);
/*!40000 ALTER TABLE `cad_encaminhamento_faimi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13 14:41:34
