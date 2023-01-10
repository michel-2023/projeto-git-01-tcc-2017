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
-- Table structure for table `cad_usuarios_faimi`
--

DROP TABLE IF EXISTS `cad_usuarios_faimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_usuarios_faimi` (
  `id_user` int(11) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `login` varchar(250) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_usuarios_faimi`
--

LOCK TABLES `cad_usuarios_faimi` WRITE;
/*!40000 ALTER TABLE `cad_usuarios_faimi` DISABLE KEYS */;
INSERT INTO `cad_usuarios_faimi` VALUES (1,'Administrador','55173253-5083','michel.sistemas.ferreira.silva@gmail.com','admin','admin','admin'),(2,'Usuário-Chefe','551798805-4250','mic2016.site@gmail.com','usuario-chefe','usuario-chefe','admin'),(3,'Usuário-01','551799229-1064','anovacadencia@hotmail.com','usuario-01','usuario-01','user'),(4,'Usuário-02','55173253-5083','do_si_michel@hotmail.com','usuario-02','usuario-02','user');
/*!40000 ALTER TABLE `cad_usuarios_faimi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13 14:41:39
