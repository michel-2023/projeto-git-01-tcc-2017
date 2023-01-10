-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: estagio_faimi_01
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `cad_emp_faimi`
--

DROP TABLE IF EXISTS `cad_emp_faimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_emp_faimi` (
  `id_user_emp` int(11) NOT NULL AUTO_INCREMENT,
  `data_registro_emp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_pessoa` varchar(250) NOT NULL,
  `nome_fantasia` varchar(250) NOT NULL,
  `razao_social` varchar(250) NOT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `inscricao_estadual` varchar(30) DEFAULT NULL,
  `endereco` varchar(250) NOT NULL,
  `bairro` varchar(250) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(30) NOT NULL,
  `telefone_01` varchar(30) NOT NULL,
  `telefone_02` varchar(30) NOT NULL,
  `celular_03` varchar(30) DEFAULT NULL,
  `fax_04` varchar(30) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `site` varchar(250) DEFAULT NULL,
  `contato` varchar(250) NOT NULL,
  `ponto_de_referencia` varchar(250) NOT NULL,
  PRIMARY KEY (`id_user_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_emp_faimi`
--

LOCK TABLES `cad_emp_faimi` WRITE;
/*!40000 ALTER TABLE `cad_emp_faimi` DISABLE KEYS */;
INSERT INTO `cad_emp_faimi` VALUES (1,'2016-05-02 17:16:00','PESSOA FÍSICA','MFSI - SOFTWARE & SISTEMAS','MFSI','222.453.158-39','29.151.370-0','RUA RICARDO SCANDIUZZI, 1753','JD KARINA III','MIRASSOL','SP','15130-000','55173253-5083','55173242-7659','551798805-4250','55173253-5083','michel.sistemas.ferreira.silva@gmail.com','www.classificadosnow.esy.es','TELEFONE','PERTO DO BAIRRO BEIJA-FLOR E CONDOMÍNIO VILLAGE'),(2,'2016-05-02 17:16:00','PESSOA FÍSICA','MFSI - SIS , SOFT & MANUTENÇÃO','SIS & SOFT','222.453.158-39','29.151.370-0','RUA RICARDO SCANDIUZZI, 1753','JD KARINA III','MIRASSOL','SP','15130-000','55173253-5083','55173242-7659','551798805-4250','55173253-5083','mic2016.site@gmail.com','www.bomprecoagora.esy.es','EMAIL','PERTO DO BAIRRO BEIJA-FLOR E CONDOMÍNIO VILLAGE');
/*!40000 ALTER TABLE `cad_emp_faimi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-02 16:49:59
