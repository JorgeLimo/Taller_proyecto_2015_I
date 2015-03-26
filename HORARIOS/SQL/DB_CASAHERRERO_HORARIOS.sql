CREATE DATABASE  IF NOT EXISTS `db_casaherrero` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_casaherrero`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: db_casaherrero
-- ------------------------------------------------------
-- Server version	5.0.37-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `Alumno`
--

DROP TABLE IF EXISTS `Alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alumno` (
  `idPersona` varchar(8) NOT NULL,
  `grado` varchar(45) NOT NULL,
  `modTitu` varchar(45) default NULL,
  `idEscuela` varchar(3) NOT NULL,
  `idModalidadTitulacion` int(11) default NULL,
  `foto` blob,
  PRIMARY KEY  (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alumno`
--

LOCK TABLES `Alumno` WRITE;
/*!40000 ALTER TABLE `Alumno` DISABLE KEYS */;
INSERT INTO `Alumno` VALUES ('34574567','-','-','E01',1,'ÿØÿà\0JFIF\0\0È\0È\0\0ÿáòExif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\01\0\0\0\02\0\0b2\0\0\0\0\0\0”‡i\0\0\0\0\0\0¨œž\0\0\0\0\"\0\0Èê\0\0\0\0\0\0V\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Microsoft Windows Live Photo Gallery14.0.8117.416\02013:05:28 17:40:43\0\0¤ \0\0\0\0!\0\0¤ê\0\0\0Þ\0\0Æ\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\093F46DDD3BBE4387B5396A2C43A31AA9\0\0\0\0F\0o\0t\0o\0 \0c\0u\0r\0r\0í\0c\0u\0l\0u\0m\02\0\0\0ÿá\0http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'ï»¿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\r\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:Description rdf:about=\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\" xmlns:MicrosoftPhoto=\"http://ns.microsoft.com/photo/1.0/\"><MicrosoftPhoto:DateAcquired>2012-07-21T13:00:39.338</MicrosoftPhoto:DateAcquired><MicrosoftPhoto:LastKeywordXMP><rdf:Bag xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:li>Foto currÃ­culum2</rdf:li></rdf:Bag>\r\n			</MicrosoftPhoto:LastKeywordXMP></rdf:Description><rdf:Description rdf:about=\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"/><rdf:Description rdf:about=\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\"><dc:subject><rdf:Bag xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:li>Foto currÃ­culum2</rdf:li></rdf:Bag>\r\n			</dc:subject></rdf:Description><rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"><xmp:CreatorTool>Microsoft Windows Live Photo Gallery14.0.8117.416</xmp:CreatorTool></rdf:Description></rdf:RDF></x:xmpmeta>\r\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                      <?xpacket end=\'w\'?>ÿÛ\0C\0		\r\r\r\r\ZÿÛ\0C\n\nÿÀ\0<\0ä\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ûó˜÷¥j(Ð–”{ÑE\0#RcÚEE(âŠ*‡¨‡dz~”¸¤Å&ìQFZ(¥aÝ‰I´¹§Qz\\±ìcvz\\\n\\{Ñz\\‘ìbqéH@#Ó±ïF=èå]‚ìiZBê)ôQÉÁwÜfÄ?Â?*O*?îÊ¤¢ŽHö4»Éklí—‚6>¬€Ó~ÅgÓì°ÿ\0ß±V(ªI æ—rœš^˜í¹´ûV>¦?Ò™&¤;}*Í˜p	·Cý*ý¹PsË¹B=HO»¥Ù¯ÒÝ?Â—ûH=tË3õ·Oð«ÔTòG°ù¥ÜË“Ãž‘·>‡§1ÇSh‡ùŠ+RŠ^à®ÅjJ(«\0¢Š(\0¢Š)ØŠ(¦EPHQE\0QHM&ê\0uÝãÈÅ&ó»Zf>ŠhlÓºÐ\n(úŠ(QE\0QE\0QE\0Qü4QI”‚ŠP(¬ùJh¢Š²BŠ( Š(ª\0¢Š($(¢˜Òm>Ô\0¬Øâ²üYâ-ÃZLš–¹¨AgmË<¬ä;þç>7h~	†]7O1jzÞ0+~îë#ŸJù\'Ç-ñ7õÉ5\rnú[ÆÏîÕÿ\0ÕCÎpŠzcÖ¸ëâ¡K©ÑK\r:ž‡Ò:ý©|1a!‡ÃZmÆ­ }¾dŠbŒý	5æ\Z÷íñ\'\\¾casm¤ÃŸ[Å¸ž„°ä×”=½ÂL³;FÏ»v~öO½X¼kƒšòèí¯2¦aRNñ;á„‚Z>±ñ{âxùÞ0¼URNQsŸmµZÃãÄ«SŒ.YsÑÄl­q:·îòÏüóós\\Æ¥w†f[uNz\nQÆTfŽ…4§üûPø¦ÈÛ®µia©[nýì‰˜åÇáÁ?ã]•÷íO¦°v²Ð_Ëb’Rú–\\p:cÖ¾)³Ôù*z7QëZú‰óU‰žN?Ï¥mõÊ©{\ZRgÙV¿´ÎŠ÷FIm­Õñµ£‘ÜŽ0pªHç?•zŸ~&øsÅB[+ûwcÔÄå”qžrˆ¯Ï7[–BVãeMÇü\ZŠËW¸Òï–îÊõ£ž3òÍØëõõükj8Æþ#:˜xô?Q£mÃ#¦:u|—û0þÐ÷nƒÃ>3¼I ¸-µü„ƒ³1³8äôÉ\'ÇÖ0±tÝØô#½zêFkCŠppvcè¢ŠÐ€¢Š(\0¢Š(Ã4QE¸QE QE;\0QEÉ\n(¦±;°(êÜH‘FÎìªª¤’Ç\0s_9~Ð_nä¸—CðeÙ··‰Œwz’\0YøåbüxÍtŸµG\ZÆÄøVÂUY.âÍëîæ8›¢ÿ\0À±_/j“ZDÞz¾cEÛ=½ÿ\0L~æc1¾ÍòGsÑÂác/~eÆ•ä’K…ÌŽ|É¶æcÝ™»“QÛßZ6CÊÛIÂ¢Ð\nçõ-LK3ÆÏ´18ÁÉsïZ¾d[pWbH³ÌÝ#ZóÜo«G\\§ïYî®­à¶ó#‡Êã9àýkQÖá0Ÿ(™8å±Æk?V¸YUš9²Çç#æaY#;ùj~SÔTZ#nÅÍKÄ\rÃ _LsX7Ú•Ì¬Aˆ}M^{kx—tç8Ï­cß]îb«òjÒœSfr©£¸yå›$ô«z|…ŽÁÕeç©©-î$Ò¶œUŒ##­°º¹†6…K{P^ËvXÉ$[ƒuã¥y¦V•dû£æu§_^f,$Þ¿Ä„çŠÅ&¶4¸Ý6ì$ÀõU<¯jûö+ø¹s~¶þ×î¼ÖòÉÒ.¥<°Q“nHÂ¼®{zWÅ2ý«|gÇ8®¯Á:´Ö—ÐÜÙÏä\\[Ê²Ã\"Ÿ™$^U‡ÐŠèÃÖp–¤Ô„jCÌýBŒ’¼úÓ«øãH¼yðÏM×ÓjÜ:yW±q˜ç^qêF\ZìT’¼×²ÕÏ1ÅÅØZ(¢˜‚Š( ,QE\0QE+QE1SX±áEYž,Õ­4ÞëWÒíì`idcèkA\\ž5à_¶Ç‹\r¾—máX\'Ûö‘çÝ\0z ?*þ\'ùW>\"·²ƒ‘µ\Zn¤ÔQá>.×n5ízêþîVy¯fiX³}ÐX£ÙGé^kãM`ÆŠ\'Ìq¶ÜzšÔñ¢–šKÏ$…f”m×¯:–w»¹òWsHìŽå¿É¯Ÿ£RNr=ŠõRŒM=6G|Ñ¿—}®çø½—Ö»í=4íÊœªB€oßë°QÜÖNwkdöÖÁXìxˆc†âcëÏ…h}žëY¼{©¾E„\'åCí]rºFÔæïä•ä,åƒž6ýjÍ¬Vv\Z{ß]1y?åž:3z\nP‡eóÁïv¶Ö#ø§½t¶ÿ\0üW¯év×71xUs=Jæ•HCY3¢ªTÑ#Íõ{¹o®7¨ûÇ…ý7D¹¾½[r|–|…×‚}+Øü;ð\\fxä/UÇ#Þºýá²­»,ÑÚpXsõ¬%™Ei›,¾Oâ>hŸG»†á¡’6¬F6úTm§Ì²\0½ø¯¨u†±ÝÉæÉ\n+˜ïY‹ð®Ð¸£žih¶µˆg«ž§ÚÜÚi²;«¢íë\\üò1˜œüÝÍ{WÅ/Éon±ZG»Ëc<ýkÈõmúÒF2Û¸¾+«‰„úêsb°ó…¹V…(]‰ùŽy­MàÃt²/£{ŒçúVBåN*Å«âL†ºjA3–›÷­?a_døæoÜÈ~Ç­ 1–—å†dRAêÀcðö\Z“Å~b|5Ö&Ó5[kÈ&’-d’GË¯¸ÏoÆ¿H>ëvþ!ðn›«ÛMæ­Íº37û[Fr;ÿ\0:ïÁÔæ‹ce;>e³7h Q]‡Ð(¢ŠC¸QEÀ(¢ŠQE\0QE!ªvà\0Iü«áŸÚ7Ä«®xïQÕ7Ÿ-ça?óÍ>AÈŸÆ¾¸ý 5çðßÂMsR‚UKŸ²˜­²zÊÿ\0*Ì×Àÿ\0¯Ä±Æ›¾ìx\'=~µãæs»TÑêeð²sgã\rMïµ®ï->XÔôÖ¢ðÇ—\nO©ËÏ–<¸G«žÿ\0‡5vÍ,ÿ\0xÿ\0õ«LXíìP®ØFç ucþEeX¡KšLÔÒí|æ…<–ûÒ39çô­KQšße±Ä|Ç\nùjÝ7XrO-ÜžHo”[Òº/éÏ©xŠÏOX²fn@ÿ\0–jÿ\0\nÆ¥G3¦.i£¼øàx.îÿ\0µoÔJÑ†^¿¯5îVvXÚ¥ËÐ`qUü+¤ÛØXÃgoXâ\\\0u6]+Æ~ûm£éiÓTàV±ÓãÝæ—pè@¤–ÃæfÙoJè­m‚¯JKˆ\0ÈÅ_²ÐŸh®rw‡qù*„Ö\\0fºÛ‹qÏ›s\0Rx¬šHÖ6g©iÐœ™bW>â¼ïÇþ´š93Õn»W¥{¡+Ò¹¯XCsjÉ$[×¸¤”T”’³\"QVjÛŸ$øËC6Òy,sÆ+\n0Ùärjõ‹ÚJÚÉ \\•þýáíšò¶;%#ó¯w]Ô†»Ÿ3ŒÃªu=Ó ðÜ¦#˜Ÿ—<×Ü?°ßŠ\"Ô|uáö¼ó¤±a,hGÜ¸ëõ¯„ôv>[.~•ï_±÷ŒçðßÄ‹–`,.Õ¡»^pÞø8â¶ÃÕp«næ5aÏFÝOº×Ö–¡µ•$…^7¬2¢¦¯nç’îQE0\n(¢…QJã\n(¢‹€SXiMA}0†ÞI\\€¨¤’}(m%qZîÇÍ·§‹?Òô¿C+/>Ûpà“€þ§ð¯“üw{æÜä(_Ý…î}kÒ~7ë²x£âV£ªÏpÓ,Ó•ˆÑ©!qøsø×”x©¼ËæÀ¾vµESßD{´áìðê=LKu%·ÐÔñ¹@Orj;‘zÔv¤¼Àÿ\0vµz£™nlilwy`7ÍË^Õû9èNÞ#’þT`mcÃ’:³ŒW“øFå¾S\"€™äžþ‚¾¨øK¤eø^Ö7Ç›*ù³;ž€þ®D›VG±€¦¯vvÚ-±Âçœ[¶±\0RÒÂˆzŠÒ…Áé\\”ã©éÎWZF\0ZIW4Š@^MÆ+£KXçÖåK¡ŠÍ¼RÈx­[˜Uí5Í(tž‡?|0¤V6 ÆW¹­ÝR<gÞ±o”Œæ¦ÊÛìyÆí:{<\\8ÉÏ­|ï©B`ºmã\\ƒ_XxÑXH9¯˜üufÅBï$\ZïË¤“q<LÊ:&WÑŽ[\0çÛÛ|9¼û»1RUee*s\\^“ðÌ»‡ÏlWW¡¬\r\"ÆÚóxÂ8ù_èkj–W8©«§~Œ|+Õ?µ<\'o?™í&6ÈõþµÓŠðïØÏÄ#RðAÓ¦£º°7ùXîÉ$1 c?¥{tlO~µîa§ÏÏ\"¼\\*4ÇÑEÒdQE\0QE+QEˆÄWŸ~Ò~#máà‚FŽæô}ž7CÊà·à+Ð¹ï_8~Ù^!3k–ºDm³·óçç¡n~†¹1µ=&ÍðÐæ¨šµ‚g×§–1µ#] }+‡ÖþÑ+· 1®Îîà[Z\\K/žMp\Z¥ãM!÷IÈ÷¯Ÿ ¥)6zõß*+,^cî‘öŠ·en’ÍåÛ6F9$TÂò|Øã×Ò·´KxíöÏ(Ú£¡­tW“Œl·\'OšWkC³ð?‚?´ôíçRkC‚#Ý|WX·>ðµ»}–ù5XùŸ›NµÃèž)Ö.¥û…dòùjw0>¦¦Òþ#ß%ÑŽò\'+áÙFvóŠæ„+Úö=/i‡‹²g¹ü\'ø£¯pº~¦\r½Ó”0Æã^Ÿg~¬xïï^+à³£ëÃ~ F‘ùI6íuÁã5èú%ÁÞ¨OáXÊZù”šØëþÔ´Ÿj^ÕN4&=Æª]Íå©9©M³^T‹Z¶­oejÓM\"¢Éc^s¯|kðí£I\Zy“<d‚6bOà*?éòkWJ.o$ŠÖ1–Dïõ®-´?ižt–Þc1á¥Î09<V‘’ís\n“³²fÌŸžúFû‡î¤\nxá¾onœU˜|å´´{Ý>6ë#¡eSîp1Utßic	eu{‰5sƒé]wñßZ˜î6È¬1†…g&Ûø,>gm_ÅÖ×´–Ó$Ñ°È(Ù¯ø¥n±ëË0\\y½0kÛ¼máû9¾Ù¦\'Ùß?:©8oÂ¼{ã\"¶A´Œàž+l3ýî‡;ZZ˜\Z^	Èïï[pÈ.$Ü“æ/Üaú\ZËÐm¤BýìdV¥Ä{Xð}«IÏÞw8©ÅÚçÐ²Œâðÿ\0\rMÇÙõÅ¼³²µò\n±üF?\Zû”¿>þÞ¢x‚Ô²îVpŒ3ëÜ×Ý¾šY<7l&`Ì±ŒóŽÀûÇá^®]^ë•œ8êvjFÍ\n+ÖGœQE\0P(¥q´QE0±Ó*FÎçG\'Ò¾ý ¼U§â}[WU*nnZ8òs•C´~\ZúëãF´Ú¯n¢ Jbe\\ô\'ð¯Ï‰Z¹ºÔ#³Gab{ŸÎ¼|ÂNmS=,T\"æsÞ$Õ¥»o/«Ø¿ZÌ·@ÏûÀÇ=\0¦Êÿ\0>q÷³Ílø:Í{v¹Ž1…SülzW5Ô oÔž¦·ƒ¼<šž¬–Šìæ0ŠJô¦ð5”º“$e›\0tJÎø+iwWÆù9bz×­YÙ£c¯Zò*U›ÓÐ÷èÒ³±çÞðÆ³ ´É¤ÛÚÞ[H¤I°ÿ\0ßUÌX|%×çÔ¤“l6Ö¯ v„Í»#=2+ÞmtÝ¿såÏ\\V…®”8Ç¶úÍKY3%§ÍvŽzëE¹¹µ°‚ÂÂÖÍì¢HšU“-2¨ïë[ši–ÞdYOÌ¸µVÞ;h¸ºâ²n}â€{Ôj÷:ã’;kYØ‚Ojçu«Òí\rÅ]…Ìv8ÏjÅgó&mÞ´›F’‹±Îx‹Qº[¿\"(„<ÇÄ‰¹c>»Š¼oö‰ÓŽ›ã‹w[û‹ë)mFºŽ@K9Îì¯EçWÒr[´¶xA\\ïˆ4K-FÙ­µåFà¸Èü+ZXgÐâÄa½¢ÑŸ9|;ðuÏˆ<?{6 ö?dÇÙî†ÍùÉõë¥ø_â\rVßQm3Q2È\nÀîÜ\ZôøWþY4ò´fVØ?à9Åhé>ÓíZÇ^éW[¥Ž8KYž\"W›OÝƒ:×Š|h…—É”ÿ\0ÆkèmzÕcÓÜ`tâ¼;ãº\\ùQ³ÚIÍa…“U9™XÈ^›G# ³´±™8=+GS\0H9àÕM¬¤7\0qVu?õ`ƒÎEk7ï3†š´Q³àé,µDtcÁò5÷ßÂjÛXð†Ÿ}f;»e•N;Ž~`×ç~•#C~²#`×Øÿ\0²¹Þ†ÆKÍÆ?,õ‹#rýAæ»2ê‰ThçÇÁ¸&{ÊÑM;riÕô‡†QE\0bŠV¤©)…\ZnO¯Ò‡¶Ôù÷öìñqÒüš4RmFM›”á•–üúWÄz¼þ|Ç‚kèïÛÛ[Ž÷Ç‹a«­œA~QÊ“ÉÍ|Ñtëæd5x•%ÍVìôãîÓHŠÞ4Â>Ä×]£ZÇ$‘Ä‹òÆ½=ýkCµ‘”ÎGËŽµÔxL¤nò1ŽõÃ^IèŽú\nÚ´w_a÷…ýà+×´XÁQÅx—Ã}@IâM¦½×ÃåL+ô®.[3ÛÂÉI\Zöð)Æ¯ÅÒ£±^Ö_ÝäÑÔë²F´JÂyÇÎÙ¾íC>†¶¼_)1¬j{òk\'E>Ô8ëC½Ì´r7§“6|ñÅaÇ([Os]EõµªØ«,À±ŠäõÛpY9Áã/FitÖ‡O¥d¨ôÅ:òÕ$É+PøbQ%¸ÝÖµ¼ ÉÅ		EXçå³íUç·ÙÁð­Ûˆ‚õ©#éJÎàéés‘ñŒŠš{~èé_9|BÔóTP‚°psýê÷?‰“ÌÚd°[s4ß$xìOâ¿ ],Úé1…i>ýËàdµtQ±äã®£tPÒ¡Ûf…¨ï+Réyû3Ú ‘|ÆÛDš»9\"¬’!â”sÎ+éÙñ‡‰,ãys>Çÿ\0dãƒõ¯œÕ6Z¶Ýjö/ÙR’ÇÆgÍ\n‚t•ƒ08ÇëW‡“TÑ5£ÍI£îþàç4êŽÝ·Fô©}t]ÑómX(¢Š¡QRPL›ˆóùSÚ³|Yxú‡¯/P)k{w8š™»E±ÓW™ð?íi«Å©|^×&;[ƒ#¡ rZñÛdk‹Ð‹Éc]ŸÅ N¥<¥÷=Ì­+¶s’Äž¿s>‡ÈWº~¸ùs^’å}ÏW•ó$nÂ‹iGJ—ý+\ZÞð™†æäš¿k\'›\'ÍÓ¥p8¹;‘›øMÏ\0I-¿ˆ¡¸ò–9¯¢¼\'x²[©ÏQ_8éó%–¡ÆA5íž¸i-REÎ\nŽ3Y9;ž¦ñZž™g:í\\jÜ—`G·5ËØÜ8<æ­µÆîüÔ^ìôotI¬@.øWÚÞ¦¹»ÏêìMm;«©Î7p\nè–h¶åœcëVôÙm¥~õ:\0Õ2½ÅËî˜Z„:½ÕŠÃ–…Ô`°ïT¬,o­ŽÉp{’˜®öHã`2NzóÇ›r¨¥¶Éõ¢R}‚œUµ+è+%ºeñžâ·­nQ—­`³„ôçÒˆï<¦äŒP¥­Ç£Ñ\Z·“‚ÄVF³ š&¼SÎkÅ\Z’¥»a»qW£Ô*ÊÐ<·ãWŠ¥Ðï­^Ù¥gmªÍŽÝ^I5ÍÎ¥¨½íì†Idä·øV‡Æ½RKÿ\0-¸“+àLõ¬ë+=«¶QŒ)®çÎJ¼ªÖq{#VÇ;b™LÍ¸zÑfßèäUÛH=®;–¢ìT¼B–ss]ÇÁ;Óo­ZN0ÛO!º\Zäµ$&ÞVQÁoáœ¥¦vÝ®ÐŽ†ª:8°v³Lýðòj:µÔm‘$@œŒãšÔÄüÖ£×|c©\"4^dÍŒJ°àôúWj§+_[‡š”O›«HZ(¢·2`(¡zQRP7Jä>7j1éŸ\rµK™‡ÉövVÈÏQë]yúWŽþÖºÔ¶þ‹Fˆ¶.ŸÌ•”ôUìkŸ5\Z-›á`åU\rø½žòë1©ò¢ùTžãÖ±üÌ«®p©ÀÇ­tÞ/Ù¡,h¼\0k—”¬6® {×N|Ú½HÙÜ¯ÅÒg·´²dbpæÎO ®n¿| Ýk¢ÐŠù-¼à¨ÈëEHû¬T¥y—5fd¹WÝŒ®GÒ½[àÎª·:\\qïË\'5åš´A|—.¤^€t­Ï„:¼v:ÓØÈÁ7`®{×ëF\\®ÇÑv;$‹¯5‡ã;-YíüÝ6øÄà}Üu«šÒÉßÉÅ^™|ÅÁn+9yÔä“<Â-ÓC+`ô9Å_±ûlr1Ý\"’8tzîÍ…œêRxÔžÍŠƒû\n[iÖâÅÑö0Ê8ZFLõèbh8Ù£kšËB¥ïf_)6‚QM‡ÄZ¬1îiÌŠ½›­tÚ>¥1-½¼yé@žuÍÆáè)¹\ZT©†äÕ¾?·–o³Ïk7™ŸàL×Mk$šº:ÆñƒÙ†\rCa£YYË˜aAþÖ+nÝ‘#ÉÇJÊìò¥(¯‡c:ö6‚=¤óŠä|aw62Ë+€Iü«§Ö\'Ê±ÝÞ¼[ö€ñ\0·Ò›N‚_ßO\0êzÚŠri~*·%6ÙåwUñUÍî>I%%Aô­ˆ$u‘¡Û„…_°ç5§4 mQŠ×;ÊËcË¡´ú–­FàGµhÚ€–{OñUM9>`qO¼c™Ge®e+ènô,LÙ´eQ¹ŽF*o…ö¦Æk¿Í“Æ?ýu“5ÿ\0“qç(,£$¨úU‡1†Ô —oÞëót$÷®ˆÓ÷.û™É­O°¿gÑ ø‹PÐg›u½ì+whÄœ)¾Ý½{œ,­²œ‚:ú×Î¾Yí<\'§ë!}sB¹?™ÞÆF@àà‚™Ç½{Ï„ï#¼Ñ`žÝ·E\"u<Šú\rF×+<<Lm©©EW¢q‚ô¢Š*F5Î;×ÍµF¨©˜ó&Jdÿ\0\0ãù×ÐÞ\"»kM6Ynm§hÇzùöŒ»i<qud[YÄ#\\¶yÆ[õ5äf“m(£ÓËãi93ÂüAv·:ÔøØiÒ¹†t‘š6çéW¯%RfpZ³n°—ÎP\05ÃN6gT¦Êl\nHÇ?w¥tº)¢¼÷›¥s$î™”ôÅtv¨SEŒÿ\0xb•}‘XuvÙ±áù ’@n>o—€OAëXÏ,§^šöÄäÚ°!VQÔÓõ,Ãov²0F^cŸº3ÀZ“Á®WRñƒÎc¨î+)(Ò©¼e)ÔIÍðÃÄñj:|N’\rØäf½+Oq<`ƒÚ¾sÕ,o¼%«G¬éÊÍ¦ÜÒ*ÿ\0Ë^½ð¿Äöºµ²¬R«8#5Ç(.Ç«Nkg¹ÜyGw®XÛ4ŸuÀöªð¶H#½ki1(äÒ•ÑÝO–Ú¢µÔÂ¼¶~•TÄç­kÞÇ†5BV\n1Þ•É”bº.sTn/]½)ž$Ôc·„çï€w®Å>-‡MAÝ,ó6#‰>gcéŠ]NyÊÅÿ\0\Zk°é¶3O#à\"ç9ü‡×5ó§‹.¯µI5èa##?Â+×Ž™}|ÇY×FÕ‹-mgœˆÏ÷›Ô×—\\B.<O<­Ÿ•Žk¦•UËÏÄÂS…ú0ð§J“C‰..ŽóÂ®ãUoåÝxÊ¼¨ã5fÂF‚Ø.ìÂ©Óm\\æRJVFÜe\"C cŒ×9«jÜ¼Œö­ÝRo*Çx+\\z°{—véž”¨ÓM1U•™§n|åÚòùjÃælt«¶÷ÑéVrZÛ×à«\0 ô?JÃûfÆ\rÁÏ›âÃ9\'®k®•>Ww±„ª]è}ËðÆkoü1Óïîcò„ð­½Ó¢ŒîR\nHTc8#Ú»¯€·÷Q-þyÇ&Ÿ1¸ðTœ†€úv¯Ÿc_ÛÜ_Ùø?P»À½‘Ñ\"‘8ÎÜ£+{ ü¾ƒ5î–7ÒéŸ4ò [{JÞâÍà‘Æ\Zh	eÚGSÏë]”dÓR8ê«¶™ëk÷hªš\rôzŽo{	Ü“F~®h¯ily­( ÓX‘ÓÒ’¦O‰e‰d·ŽN¬äŒŽ099ü+âO‹Z°Õ|E«ß¤eÓHÈ­Û$ŠûâäkcªÊd¶\ZdÅœž?ç_\rø²G6rÊÍÛ%½kÀÌ%ûÔ‘ëàU¢Ï:Ô\"ê‡QËãÓ<Ó|Q§‹XÇï‰2‘èj{ÔiOšHËr\r3W‘åÓbÏ&Ùœr@¬c+›J-«£\ZÐÈäç+[Ó;Á¤Æñ(ÛÅci*ò\\4b2Í)\0{æ·|M„¸ŽÑ?åŒJ£­MMZF´U ÌHçÆ¢É!\'>µ«¢L`—ÍïFÛ°GÞÎÎäjDú5tz2ûïá#§ŠŠä¹X]j»¡I§¡¤r\"ÉÉ’ÓÅrWz—ƒ5±«hÅÞÏwï!_àÕ{áüïkrÙQó ôõ®¦ùVUV+•~Æ¼Šu7ä{)ÞÏª:/\0øÿ\0LÖ¬Ñ¾Ð«(2ç5ÜXêð¶L?:ñ+‡ö7ì×zmÌº}Áä˜‡ÊM2xîØ•µÕã‘{n“·ö´Ùqçg¼Üjñˆÿ\0Ö)Zç<QâÍ;Mµif¹UÀõ¯5Ãÿ\0fP³êD½,™5¡¡ü;V¹ûN»%ô€ä!ûµ<ð[nhã7¹RMW^ñué‹Eƒe¾~k¹ŽG°ï]†¼e¥/Ú\\µÝóýû™GÍôQØWK¦ØÃo\nÃ)\Z(T\n¹$]ÍdÛ–æj)3‡ñâ´:L¡N>^µâ²ƒ7S¼Ä×³üVmôK‰[8Šðï]ÓY²îÇJx{¹ØŒRN•Œw”­±byvÉ4Ø.]®!ù‡Qß·—qŸâ\\ÕWÿ\0JS“…`kÖ·¸ÑãJÊGkâ)i‘Hãœ× ¡ŒÇ=k­ÖJI§Ä‡ø€5ƒªˆâe\nàsŠÆŒù_(VMÆæ]ÓÉ\'\rœ-Açõèi·Îd›#·J‰\\Çë^/»©Ã{Èõƒš™µ×\"†æçËµœ¨9cˆä\nÈ1ÊGQ_Vé:ÝÌz†“yªD“çXŽ{kç*B3Œ®F±ë0sÒ¾)ð.¢°j‘ïaå±\nã©Úx#Ú¾œð‡‰\rÇ…lü1u,–¬£ÎÓAZ7\\ŽªIÏûµ‚›Võ6©-»Uxvìí<ÛD®ÈðœEsš¹éPý±ÛÌdVY2²©PCƒïŸÌ\Z+Ý…UÊÅÜîj¹–%Ë0\0rO ÍqŸ~)xWÁö%Þ ·W*áµ¡Iœ÷çñ¯øõûEÞêšÆ…á«t±t›e¼’OÞ…Ï!vð28ÍElD\"­}MiP©&´:ÿ\0‹_|\"Ÿ\rüCo¡ë7ÚÖ£\'b…‹ï;€$û¯š¼vñG¡Üp\nÎð~o5Fdõ#¿ãÞ]oÛo€Gò¯­_iW™lzôéû8´ÎjrãpSÅ7Z?èà`*ãœ\nŠÒðï•\nÿ\0i„±¡ZÁ¶¦krØ„bÙp×G»É\\Ö‹…2\\ËrÍ»=­Ifæ==’<%ùTÐzSµŽ7ŽÚ3ª7žÀúQ)]ÜÖ´ls/ÂíÔ¶~µÔi±±µÙÜ\0Ë{T?ÙF]\"kŒ}Ç\08=XðñòLuÏ~äQV²•2¨C–gQàÙBH§<c× ÇoæiÈê+Í´BTcæ¯Zðô>fŽ=€¯\":³Ø¶ˆ“CUWAfˆØ5e—&=ëVÛŽ†º#bRf‚Æ»zŠ6(8Y<U«xXòj¬‚I±ÖpäçN¹\nž%¸¨î–È=ª^‚åg’|v”Å§­¹é3óøW‰knó«íì+Ü?h([û$OŽ±»Ó5ãÚŸ%ÌR8Ñ+ã¶{ÕR’‡¼Ç:nQ±ÎjR$žIRNÔ\0ÕR¹híÍkøšÀZjMn¤í#½VÉ§ÌkÔTâxõ0ïÚ3]§\r§ÀÏü*åYïlÚœ7L«çF7\'‡µ[ÔSË³H²8z°î	ŽMÁ¶¾>V³¡É³,F‘EGŽfWFëÀ4Ò>nEi‘#nCc¾*ˆm\\æ	6ž¥MvÆ¢½™ÇËØe”¦6È8+ÐŽ¢½³ÀÞ/MgÃ°Cx|½bÒM°\\Æ„´‘yx#\0c$`~¯†FâËÆx®·Á“Á$Öð8h.<Ñ´€˜20rqÈ=9ç¡Àæ•H+hiOG©ú=à]3Vð>rö„m²Ž0„‘³§æMÄü=ñ\\úO†ã²Ô§Ä¨AVò\Z2àªòTô9ÏåEvF¢åG©>fxwŠÖš Â¼ŒÄŽ¬Ù<šò/ˆ,úó«?ò€Gjõ/O¶ÔL¨H‹,\0õÍx®¿|×šƒÜLAv<â¾jœç:²w>³\ntèE$t	º[;+‹ŒòÇ\0V?ˆ®Þi¥™ßøG¥Am|#‡\n@P9—¨]žÅ±]t\"ï©æWØ†Jî“=ÿ\0:µq;<+\Zõ>Õ\r²ÝjÛ¼©e;Ke€$ÇøÔ¶mm—!Šð\rUh»èg‡÷d@‹×ÐÒÜ¡^	êrÞ´š;›‚Km†]ñÜúQ©Î¢×y]¬rIÎ~˜ü+YjvÝ\"ý„Ì¶«\\¬ø\ZŠDòu&ld•8Çj_\r±˜[‡ $“Sº‰¥1öŽÕÉ)Y´ÎÊpNÌÕðvg`äçšö¿ÀL\n¥xßƒ-ü¨ñéïÞ½ÇÀ1gO@ÝvÖÖNÇSCd·d˜ñÞ§„Ž+Rö×ŒàÕtƒ+e£\'”}ªŽ\r^„\ZŠÞcŠ¸‰ÆjÄBÄ†¨ß\'¥Xh²Ô¾H\nx9©iñÂÝßÂ·nåÆH¯9ø\'k—W‹ \r´Ž÷?ýuí?´Æ¿ðíÕºŒ´‘>½q^5ð¦6Ó<Ap²ü»áÞ¤ôÇ¡÷³”T©¸›(¾[™ŸôÛk}R9­GÇÎª;Ö/…4í .^}‹Ž\0äšê¾$_Úê÷Æ},`†Ú¹¥øomöKyo]O“ßÇÒ©U’¤£îe**üÌóï¥´$î…Î+›¾“ë[:»É>±s3¶|É_?™¬{¨‰Èô¯sn|Þ2k¡˜Y1šk9òñš<²4lËu®å½O7™³k—•R0ò3*/$×E¤]Þ[ ·¹¶\n‡¨–ŸCÔ~ºÙÇÃßÚ>&ºÔåäØÂr3—cÇè\rzÞ± [IjÑËoÁÊð¯+ös³‰ìà°«ó>øËªYèñY^êWbØyví,¨Ì‘õÛ¹‘˜à–ä’y¢¢ÿ\0„_JÞfž›³Û4P±±rËd™·ñJyÖÅôëEUÞ¹‘Áù€&¼3YýÍÔ‘ÿ\0t×µivÍ\'‡­¨–o´îÎs×§·áþ&ºC}q*«(yX€ÝqšæÃGßgf)Þ«%È+´­I	Iã#î„çëU´è$š&ÀÚ=kCJ´NsƒÁâ»¢y’¼›3|Öšá§þþï±ã‘ùQ³§$óOÖ K9¾Î…°y¨¬¤H7HãwU·ÍSÑ$–\Z¶ñ¶f¹`e=Õ}g_3´‘À¼‚3AÚ¨G|n.”·ðôö­Ý\nIf3ÝO´¹ô÷\0W,½Ø¾ç\\=é\Z~cofÎÃ•+KKXÖÒâáøTLšÍµ;à•lPÛF{}i¶óLtÉ••n&M­ê¤õ¯*qs½Ïj„U‘Þø^Ñ#Ðí%a™®œ¶1ü#¥{_„m|¨À*8¯=Òtô}kOÓáæ8ÂŒã°¯YÓáò(äõ4c®†ÒŠ¶„óÛ“J¤ÖÄ?\"¶ÆäVv¡\"†8®lØÈ¢±šµ¹+Tmd\r\'&¯¬¥F!òØU‡\róS.8=)R{Ô2©eÈ\'š‹‡)“¨¸~0JŽÞõÀkÿ\0­õ­Q®#2Z«˜Æqõ½5l÷6HëW²ö¶\0ô¨q»4ŒùV‡›è?t{9`†,yÈQä#%‰îOøW$M ØjZTÊÛ¡`H#£G¯½þhÐ.Ð£Õæÿ\0ô‹ðv©¬Ê6McjLn¼’\0Sê2j¡O÷‘å2­S÷Rlùfêv{½ù8f\'õª÷|ÃƒO¼ÃHL|ó’1Ò«I(Ï5ôq]Ž©+è:–0˜\"š\ZžÝ2Ž	cµAîzìÕ«øŒcy#èOÙ¯E¤m“R•¦=þQòŒþ?‰®öæØ2ž3Â:ZhÚ\rž—Ð- XŽ;àcšÔÙ»¨Í|Î\"\\òmŸg„‡³§sréà¾z}(®ƒÈ_AEs~Ñv<óâÔzG„þÁl¿-¼j	Â¥°§óãñ¯u‡‘®ÌbNîs^ýñºåmtDŠL++·Bäùà×ÏÚ„žtÞa8Üs^Î|R}Ï/u$\\Ó_l,azâ´4—s0c·vk:ÕQãX#8y;Ÿ­mÛÇŒMnä–Ï#u>šm\\Áñ5ËI©OE¬²çË<š½®«­ÑwŒí`v’§ŸÆ³GÍÇjí¦“‚9ç\'Íbå‘¥±Ö·|:K\\$íÉŒî@zþEsö¼:¯l×Q¦¦Èr3Ò¸±’åG¥‚Zêt0¢Â7t×,ì¾ƒ¥\\ÔáCá{=J3—´üê·‡-~ß¨nbBMhÂ4[ËSÊÊ7àöÅxÒ™ïÑŽ‡ªü¹\Z½÷ÛŽ6ª£×Ö½n5RÅxOìÑzLsÚ–r¼v¯pµŸåJÚœU®‚z;Ü6Åâ²/ƒ<‡¥;nªyÅ2ZÆ&ózÖ´pn\\Ôéµ¹z#‘NÃr ò‡Nôyæ¬mÈ<S¼³À¹Hm”ÙHíQÌ¬HÉ«[OšA§¼±Å; (<,[ W›þÔ^e¯ÁU…3ÍoO¼ªÇôC^´±S^3ûh]†v6äÿ\0ÇÆ­+ê9óe®œ,/U8éÚ‹>X‘åIw£|Ë÷[ÐUWRÌXõ\'&¥•Î0æ½ÎT™ò—`ª@­ŸØI¨øÃK²Ef¾ˆ`úoþ€ÖL~•Úü§ø«£íë¯\'å‰¬kË–œ™¶sT©õE±€Fp1“Þ§òHè*K1…5n\rÖ¾uÆèûègýœŸá¢µ–·Š+.F.cÀi‹ˆ Ñ,ãR7’àlð¯Œy’mÀ<ž+Ñ~3jo­xÅ,˜f8ü±Ïr2Æ¼Ò9Dw\nÃîƒÇÒ½ê4íHð±uœ§e±© ‘¨‹\"PsÏjÑ½‘îµÍªv´ƒ¯¥f$ÊÚ‚ÏûàgùVÆ˜;È†¥¼™#ý‘¸YTOVU;XÇñ´°],o–ÚÐOJÄ„Àw÷®ßâV$w19\r¹× pMröVL÷(vçæÅtÒ«fqÎ›öƒ!ˆ‰#¸®¦Ü)>PµZÚ˜d^“†QƒZ\Zµ¯Øô«RÜ4Ñä|â¼üEE3ØÁÃ—rÿ\0€¯„RL¤\0ý\rnë‹}.k„]ÊÎÑc>£#sž·Tšâw$*¤ç×æÿ\0]\'…¬gñÔ¯9d±³ \\ýæÚqúŠòêÅÞçµEètŸb’Û\\´`~e³½{«ààþäß	m¥mQŒŠ7ZÄ™¯T‡¨æºi?tÎ¯Ä_NG5\"®j$è\rXˆ\r¢­jfÛB2ž8«ƒ·&\0V¤	ŠBÔr°Œu©T©]Æ«7=éÁ°¸¥qØwÊ²f$€cê9Zhå‡=(¸ùY*±!¹¯ý¹¥+áÿ\0AÙînœÿ\0ÀV,3^öƒå5ó×íÕ Ç…`þñ¾côÄú×fã<ÌÅÚ‹>s˜\rÇ´Õ=©Ìpi¸Å{,ù‹Î\Z½ökPß´ÿ\0úã7þ€kÏ9-^‰û1«?Æ--ñÇp?(\\ÿ\01XbUé3£¥HúŸRÚŒ*ÕËZ†8±Ç<qVmã<_>ž‡ÖÝcL­.áÅ‰±ñÍôB÷Âój®q;Oæ4‡¾Pñô¯?™\nLÑä6ÃŒŽœW¥FÂ_‡vÈÈ p;íÇõ®\nh‘n:uÆ*÷0òø“èxxåð‰¦Å!…§oõq‘žNk¢ð´—^,¤\r¶æGe#ú‘ùUY\"Ž=>ÑQ\0ÜX±õäõ®»áìH¶ÜûÆ“ËÏû!r?SXV¢ÅF\'E©YÅ(o:5•JÀöâ¼Ö}2]=¼ð¤;pz\nô¨Ælß$ñ†$úâ¸ÝIG—þëŒWj8Ñ¢›9o´L—L7#5³uvÚ„po?4xP=…C­ZÂ%I€;›­:Ö%¦3ë[Ï–Pº7£¶°^^j&ÖÛåŽT_0ÇS]¾€WLðÝÄJã%ü°q×®HüªŸÃ¨ã\Z-üÛÈÄ\rÄrµh|;·ŽûÇ«ms¹¡‡2¬}‹ÔþŸ¯\"¥GÏcÖ„m»øu§ÍkÚ&‹Ë–àu=W¸Sô…w0ÉšÏÒc_9É,rkNÜÀ®¨|&U5‘<$í\0ÕˆI-Š…Fb«H’ÕÉrG4õ\0ÈEJ¨)7¨ˆ‘Šw%sRít§2/5%\"¸û¸4ª£Ž´ô\0¶\rXX×`8§ajD«…â¾mý¼	ÿ\0„‡ÂÐÖ7nàRF?öJúi@Úkæ/ÛºB|káôÀÂéÆw®Ü}ãÊÍ?‚|þÅæ‘&§–0‡<1¨Í{Í\r\\ñ^‡û3N-þ2hå‡úÏ9Õ WŸ¼wŸ³®?áuxpÇÚÛ¤L­gY~îGF~ò\'×‹É=\"¤Œ0ëNUÄKÉà\n3óWÍì}Y\"ŒŒš(SEj¨É«”ÿÙ');
/*!40000 ALTER TABLE `Alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumnoTesis`
--

DROP TABLE IF EXISTS `AlumnoTesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumnoTesis` (
  `idPersona` varchar(8) NOT NULL,
  `idTesis` varchar(10) NOT NULL,
  `estado` int(1) default NULL,
  `observacion` varchar(150) default NULL,
  PRIMARY KEY  (`idPersona`,`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumnoTesis`
--

LOCK TABLES `AlumnoTesis` WRITE;
/*!40000 ALTER TABLE `AlumnoTesis` DISABLE KEYS */;
INSERT INTO `AlumnoTesis` VALUES ('00000001','0000000001',1,'observacion 1'),('00000002','0000000002',1,'observacion 1\r\nobservacion 2');
/*!40000 ALTER TABLE `AlumnoTesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Area`
--

DROP TABLE IF EXISTS `Area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Area` (
  `idArea` varchar(3) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `descripcion` varchar(45) default NULL,
  PRIMARY KEY  (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Area`
--

LOCK TABLES `Area` WRITE;
/*!40000 ALTER TABLE `Area` DISABLE KEYS */;
INSERT INTO `Area` VALUES ('A01','Computacion','....'),('A02','GESTION','...');
/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aula`
--

DROP TABLE IF EXISTS `Aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aula` (
  `idAula` varchar(3) NOT NULL,
  `capMax` int(3) NOT NULL,
  `idPabellon` int(11) NOT NULL,
  PRIMARY KEY  (`idAula`,`idPabellon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aula`
--

LOCK TABLES `Aula` WRITE;
/*!40000 ALTER TABLE `Aula` DISABLE KEYS */;
INSERT INTO `Aula` VALUES ('101',100,1),('303',40,3);
/*!40000 ALTER TABLE `Aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ciclo`
--

DROP TABLE IF EXISTS `Ciclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ciclo` (
  `idCiclo` varchar(3) NOT NULL,
  `descripcion` varchar(2) NOT NULL,
  PRIMARY KEY  (`idCiclo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ciclo`
--

LOCK TABLES `Ciclo` WRITE;
/*!40000 ALTER TABLE `Ciclo` DISABLE KEYS */;
INSERT INTO `Ciclo` VALUES ('C01','01'),('C02','02'),('C03','03');
/*!40000 ALTER TABLE `Ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CriterioSimulacion`
--

DROP TABLE IF EXISTS `CriterioSimulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CriterioSimulacion` (
  `idCriterioSimulacion` varchar(6) NOT NULL,
  `criterio` varchar(100) default NULL,
  PRIMARY KEY  (`idCriterioSimulacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CriterioSimulacion`
--

LOCK TABLES `CriterioSimulacion` WRITE;
/*!40000 ALTER TABLE `CriterioSimulacion` DISABLE KEYS */;
INSERT INTO `CriterioSimulacion` VALUES ('CS0001','criterio 1\r\ncriterio 2'),('CS0002','CRITERIO 1\r\nCRITERIO 2');
/*!40000 ALTER TABLE `CriterioSimulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curricula`
--

DROP TABLE IF EXISTS `Curricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Curricula` (
  `idCurricula` varchar(8) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `semestre` varchar(1) NOT NULL,
  `estado` int(1) NOT NULL,
  `idEscuela` varchar(3) NOT NULL,
  PRIMARY KEY  (`idCurricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curricula`
--

LOCK TABLES `Curricula` WRITE;
/*!40000 ALTER TABLE `Curricula` DISABLE KEYS */;
INSERT INTO `Curricula` VALUES ('CU000001','2014','1',0,'E01'),('CU000002','2014','2',0,'E01'),('CU000003','2015','1',1,'E01');
/*!40000 ALTER TABLE `Curricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CurriculaCurso`
--

DROP TABLE IF EXISTS `CurriculaCurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurriculaCurso` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `cantCredito` int(1) NOT NULL,
  `cantHoraTeo` int(1) NOT NULL,
  `cantHoraLab` int(1) NOT NULL,
  `cantHoraPrac` int(1) NOT NULL,
  `creditosReq` int(3) default NULL,
  PRIMARY KEY  (`idCurso`,`idCurricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurriculaCurso`
--

LOCK TABLES `CurriculaCurso` WRITE;
/*!40000 ALTER TABLE `CurriculaCurso` DISABLE KEYS */;
INSERT INTO `CurriculaCurso` VALUES ('090057','CU000003',3,3,0,0,0),('091113','CU000003',5,5,0,0,0);
/*!40000 ALTER TABLE `CurriculaCurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CurriculaCursoCiclo`
--

DROP TABLE IF EXISTS `CurriculaCursoCiclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurriculaCursoCiclo` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `idCiclo` varchar(3) NOT NULL,
  `posXmalla` varchar(45) default NULL,
  `posYmalla` varchar(45) default NULL,
  PRIMARY KEY  (`idCurso`,`idCurricula`,`idCiclo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurriculaCursoCiclo`
--

LOCK TABLES `CurriculaCursoCiclo` WRITE;
/*!40000 ALTER TABLE `CurriculaCursoCiclo` DISABLE KEYS */;
INSERT INTO `CurriculaCursoCiclo` VALUES ('090057','CU000003','C02','0','0'),('091113','CU000003','C01','0','0');
/*!40000 ALTER TABLE `CurriculaCursoCiclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curso`
--

DROP TABLE IF EXISTS `Curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Curso` (
  `idCurso` varchar(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `estado` int(1) NOT NULL,
  `idArea` varchar(3) NOT NULL,
  PRIMARY KEY  (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso`
--

LOCK TABLES `Curso` WRITE;
/*!40000 ALTER TABLE `Curso` DISABLE KEYS */;
INSERT INTO `Curso` VALUES ('090057','IntroducciÃ³n a la TeorÃ­a EconÃ³mica\r\n',1,'A02'),('090861','AdministraciÃ³n de Base de Datos',1,'A01'),('091113','IntroducciÃ³n a la IngenierÃ­a y la ComputaciÃ³n \r\n',1,'A01');
/*!40000 ALTER TABLE `Curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CursoProfesor`
--

DROP TABLE IF EXISTS `CursoProfesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CursoProfesor` (
  `idCurso` varchar(6) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idCurso`,`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CursoProfesor`
--

LOCK TABLES `CursoProfesor` WRITE;
/*!40000 ALTER TABLE `CursoProfesor` DISABLE KEYS */;
INSERT INTO `CursoProfesor` VALUES ('090057','43123456'),('091113','45667585');
/*!40000 ALTER TABLE `CursoProfesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CursoSeccion`
--

DROP TABLE IF EXISTS `CursoSeccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CursoSeccion` (
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idCurso`,`idSeccion`,`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CursoSeccion`
--

LOCK TABLES `CursoSeccion` WRITE;
/*!40000 ALTER TABLE `CursoSeccion` DISABLE KEYS */;
INSERT INTO `CursoSeccion` VALUES ('090057',2,20151,'34574567'),('090861',1,20151,'34574567');
/*!40000 ALTER TABLE `CursoSeccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DesXLogro`
--

DROP TABLE IF EXISTS `DesXLogro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DesXLogro` (
  `idDesXLogro` int(11) NOT NULL,
  `DesxLogro` varchar(45) default NULL,
  `idLogro` varchar(6) NOT NULL,
  `idCurso` varchar(6) NOT NULL,
  PRIMARY KEY  (`idDesXLogro`,`idLogro`,`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DesXLogro`
--

LOCK TABLES `DesXLogro` WRITE;
/*!40000 ALTER TABLE `DesXLogro` DISABLE KEYS */;
INSERT INTO `DesXLogro` VALUES (100000,'Aprobado','100000','090861'),(1000001,'Aprobado','100001','090861');
/*!40000 ALTER TABLE `DesXLogro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DetalleMatricula`
--

DROP TABLE IF EXISTS `DetalleMatricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DetalleMatricula` (
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `n1` int(11) default NULL,
  `n2` int(11) default NULL,
  `n3` int(11) default NULL,
  `ep` int(11) default NULL,
  `ef` int(11) default NULL,
  `nf` varchar(45) default NULL,
  PRIMARY KEY  (`idCurso`,`idSeccion`,`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetalleMatricula`
--

LOCK TABLES `DetalleMatricula` WRITE;
/*!40000 ALTER TABLE `DetalleMatricula` DISABLE KEYS */;
INSERT INTO `DetalleMatricula` VALUES ('090057',2,123456,14,14,14,14,14,'14'),('090861',2,123457,13,13,13,13,13,'13');
/*!40000 ALTER TABLE `DetalleMatricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Disponibilidad`
--

DROP TABLE IF EXISTS `Disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Disponibilidad` (
  `idDisponibilidad` int(11) NOT NULL auto_increment,
  `dia` int(1) NOT NULL,
  `horaInicio` date NOT NULL,
  `horaFin` date NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idDisponibilidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disponibilidad`
--

LOCK TABLES `Disponibilidad` WRITE;
/*!40000 ALTER TABLE `Disponibilidad` DISABLE KEYS */;
INSERT INTO `Disponibilidad` VALUES (1,2,'2015-05-12','2015-05-12','34574567'),(2,2,'2015-03-30','2015-03-30','34574567');
/*!40000 ALTER TABLE `Disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleado` (
  `idPersona` varchar(8) NOT NULL,
  `idRol` varchar(3) NOT NULL,
  PRIMARY KEY  (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES ('43123456','1');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empresa` (
  `idEmpresa` int(11) NOT NULL auto_increment,
  `ruc` varchar(12) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razonSocial` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'990303663123','Av independencia 545 El Agustino las palmeras','\"MyD\"',1),(2,'704278121234','Av. la fontana 348','Distribuidora la Galera',1);
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Escuela`
--

DROP TABLE IF EXISTS `Escuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Escuela` (
  `idEscuela` varchar(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idPersona` varchar(8) NOT NULL COMMENT 'IDPERSONA: es el ID del director de la escuela\n',
  PRIMARY KEY  (`idEscuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escuela`
--

LOCK TABLES `Escuela` WRITE;
/*!40000 ALTER TABLE `Escuela` DISABLE KEYS */;
INSERT INTO `Escuela` VALUES ('E01','IngenierÃ­a de ComputaciÃ³n y Sistemas','43123456'),('E02','IngenierÃ­a ElectrÃ³nica','34574567');
/*!40000 ALTER TABLE `Escuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evaluacion`
--

DROP TABLE IF EXISTS `Evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Evaluacion` (
  `idEvaluacion` varchar(8) NOT NULL,
  `nota` varchar(45) default NULL,
  `idTesis` varchar(10) NOT NULL,
  PRIMARY KEY  (`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evaluacion`
--

LOCK TABLES `Evaluacion` WRITE;
/*!40000 ALTER TABLE `Evaluacion` DISABLE KEYS */;
INSERT INTO `Evaluacion` VALUES ('00000001','nota 20','0000000001'),('00000002','nota 05','0000000002');
/*!40000 ALTER TABLE `Evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horario`
--

DROP TABLE IF EXISTS `Horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Horario` (
  `idHorario` int(11) NOT NULL auto_increment,
  `secuencia` decimal(1,0) NOT NULL COMMENT 'secuencia: cada sector de una secciÃ³n en el horario',
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `horaInicio` varchar(10) NOT NULL,
  `cantidadHoras` decimal(1,0) NOT NULL,
  `idAula` varchar(3) NOT NULL,
  `dia` int(11) default NULL,
  PRIMARY KEY  (`idHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horario`
--

LOCK TABLES `Horario` WRITE;
/*!40000 ALTER TABLE `Horario` DISABLE KEYS */;
INSERT INTO `Horario` VALUES (1,1,'090057',1,20151,'08:45',2,'101',1),(2,2,'090861',2,20152,'13:30',3,'303',3),(3,4,'090057',1,20152,'08:45',2,'101',1);
/*!40000 ALTER TABLE `Horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorarioAlternativo`
--

DROP TABLE IF EXISTS `HorarioAlternativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HorarioAlternativo` (
  `idHorario` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY  (`idHorario`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorarioAlternativo`
--

LOCK TABLES `HorarioAlternativo` WRITE;
/*!40000 ALTER TABLE `HorarioAlternativo` DISABLE KEYS */;
INSERT INTO `HorarioAlternativo` VALUES (90057,123),(90861,124);
/*!40000 ALTER TABLE `HorarioAlternativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InformeEmpresa`
--

DROP TABLE IF EXISTS `InformeEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InformeEmpresa` (
  `idInformeEmpresa` varchar(6) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  PRIMARY KEY  (`idInformeEmpresa`,`idPersona`,`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InformeEmpresa`
--

LOCK TABLES `InformeEmpresa` WRITE;
/*!40000 ALTER TABLE `InformeEmpresa` DISABLE KEYS */;
INSERT INTO `InformeEmpresa` VALUES ('000001','Encargado de ','2011-08-01','2011-11-25','practicas preprofesionales','34574567',1),('000002','puesto 2 ','2015-03-02','2015-07-30','detalle del informa de la empresa','00000001',2);
/*!40000 ALTER TABLE `InformeEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurado`
--

DROP TABLE IF EXISTS `Jurado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurado` (
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurado`
--

LOCK TABLES `Jurado` WRITE;
/*!40000 ALTER TABLE `Jurado` DISABLE KEYS */;
INSERT INTO `Jurado` VALUES ('00000001'),('00000002');
/*!40000 ALTER TABLE `Jurado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurado_Evaluacion`
--

DROP TABLE IF EXISTS `Jurado_Evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurado_Evaluacion` (
  `idPersona` varchar(8) NOT NULL,
  `idEvaluacion` varchar(8) NOT NULL,
  `observacion` varchar(500) default NULL,
  PRIMARY KEY  (`idPersona`,`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurado_Evaluacion`
--

LOCK TABLES `Jurado_Evaluacion` WRITE;
/*!40000 ALTER TABLE `Jurado_Evaluacion` DISABLE KEYS */;
INSERT INTO `Jurado_Evaluacion` VALUES ('00000002','00000002','observacion 1\r\nobservacion 2'),('0000001','00000001','observacion 1');
/*!40000 ALTER TABLE `Jurado_Evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logro`
--

DROP TABLE IF EXISTS `Logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logro` (
  `idLogro` varchar(6) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idLogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logro`
--

LOCK TABLES `Logro` WRITE;
/*!40000 ALTER TABLE `Logro` DISABLE KEYS */;
INSERT INTO `Logro` VALUES ('100000','DiseÃ±o LÃ³gico','Aprobado','34574567'),('100001','DiseÃ±o Fisico','Aprobado','43123456');
/*!40000 ALTER TABLE `Logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matricula`
--

DROP TABLE IF EXISTS `Matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matricula` (
  `idMatricula` int(11) NOT NULL auto_increment,
  `fechaMatricula` date NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matricula`
--

LOCK TABLES `Matricula` WRITE;
/*!40000 ALTER TABLE `Matricula` DISABLE KEYS */;
INSERT INTO `Matricula` VALUES (123456,'2015-02-16',20151,'34574567'),(123457,'2015-02-17',20151,'43123456');
/*!40000 ALTER TABLE `Matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModalidadTitulacion`
--

DROP TABLE IF EXISTS `ModalidadTitulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModalidadTitulacion` (
  `idModalidadTitulacion` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY  (`idModalidadTitulacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModalidadTitulacion`
--

LOCK TABLES `ModalidadTitulacion` WRITE;
/*!40000 ALTER TABLE `ModalidadTitulacion` DISABLE KEYS */;
INSERT INTO `ModalidadTitulacion` VALUES (1,'Tesis'),(2,'Examen de Titulacion');
/*!40000 ALTER TABLE `ModalidadTitulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Observacion`
--

DROP TABLE IF EXISTS `Observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Observacion` (
  `idPersona` varchar(8) NOT NULL,
  `idTesis` varchar(10) NOT NULL,
  `observaciones` varchar(150) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`idPersona`,`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Observacion`
--

LOCK TABLES `Observacion` WRITE;
/*!40000 ALTER TABLE `Observacion` DISABLE KEYS */;
INSERT INTO `Observacion` VALUES ('00000001','0000000001','observacion 1',1),('00000002','0000000002','observacion 1\r\nobservacion 2',1);
/*!40000 ALTER TABLE `Observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pabellon`
--

DROP TABLE IF EXISTS `Pabellon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pabellon` (
  `idPabellon` int(11) NOT NULL auto_increment,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY  (`idPabellon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pabellon`
--

LOCK TABLES `Pabellon` WRITE;
/*!40000 ALTER TABLE `Pabellon` DISABLE KEYS */;
INSERT INTO `Pabellon` VALUES (1,'Estudios Generales'),(2,'Fia Data'),(3,'Especialidades'),(4,'Laboratorios');
/*!40000 ALTER TABLE `Pabellon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persona` (
  `idPersona` varchar(8) NOT NULL COMMENT 'el ID es el numero de DNI \n',
  `nombre` varchar(50) NOT NULL,
  `apPaterno` varchar(50) NOT NULL,
  `apMaterno` varchar(50) NOT NULL,
  `dirDomicilio` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `usuario` varchar(9) default NULL COMMENT 'a0845452084',
  `clave` varchar(20) default NULL,
  PRIMARY KEY  (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES ('34574567','Iris','Luz','Anticona','av canada 1335 ','iris.luz@gmail.com','iluz','123'),('43123456','Juan','Perez','Suarez','av canevaro 388 lince','juan.perez@gmail.com','jperez','123'),('45667585','JosÃ© Antonio','Wu','Chong','Av. Los Tusilagos 423 La Molina','jose@usmp.pe','jwu','123456');
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requisito`
--

DROP TABLE IF EXISTS `Requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requisito` (
  `idRequisito` int(11) NOT NULL auto_increment,
  `detalle` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idRequisito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requisito`
--

LOCK TABLES `Requisito` WRITE;
/*!40000 ALTER TABLE `Requisito` DISABLE KEYS */;
INSERT INTO `Requisito` VALUES (1,'Requisito para el Requisito_Alumno',1),(2,'detalle 2',1);
/*!40000 ALTER TABLE `Requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RequisitoAlumno`
--

DROP TABLE IF EXISTS `RequisitoAlumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RequisitoAlumno` (
  `idRequisito` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idRequisito`,`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RequisitoAlumno`
--

LOCK TABLES `RequisitoAlumno` WRITE;
/*!40000 ALTER TABLE `RequisitoAlumno` DISABLE KEYS */;
INSERT INTO `RequisitoAlumno` VALUES (1,'00000001',1),(2,'00000002',1);
/*!40000 ALTER TABLE `RequisitoAlumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RequisitoCurso`
--

DROP TABLE IF EXISTS `RequisitoCurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RequisitoCurso` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `idCursoPre` varchar(6) NOT NULL,
  PRIMARY KEY  (`idCurso`,`idCurricula`,`idCursoPre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RequisitoCurso`
--

LOCK TABLES `RequisitoCurso` WRITE;
/*!40000 ALTER TABLE `RequisitoCurso` DISABLE KEYS */;
INSERT INTO `RequisitoCurso` VALUES ('090057','CU000003','090709'),('091113','CU000003','0');
/*!40000 ALTER TABLE `RequisitoCurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResumenAlumno`
--

DROP TABLE IF EXISTS `ResumenAlumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResumenAlumno` (
  `idResumenAlumno` int(11) NOT NULL auto_increment,
  `idPersona` varchar(8) NOT NULL,
  `creditosObligatorios` int(3) NOT NULL,
  `creditosMencion` int(3) NOT NULL,
  `creditosLibres` int(3) NOT NULL,
  `cursosPasados` int(2) NOT NULL,
  PRIMARY KEY  (`idResumenAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResumenAlumno`
--

LOCK TABLES `ResumenAlumno` WRITE;
/*!40000 ALTER TABLE `ResumenAlumno` DISABLE KEYS */;
INSERT INTO `ResumenAlumno` VALUES (1234,'34574567',15,5,2,24),(1235,'43123456',15,3,3,1);
/*!40000 ALTER TABLE `ResumenAlumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rol` (
  `idRol` varchar(3) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY  (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES ('1','Administrativo'),('2','Docente');
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seccion`
--

DROP TABLE IF EXISTS `Seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seccion` (
  `idSeccion` int(11) NOT NULL auto_increment,
  `nombre` varchar(3) NOT NULL,
  PRIMARY KEY  (`idSeccion`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seccion`
--

LOCK TABLES `Seccion` WRITE;
/*!40000 ALTER TABLE `Seccion` DISABLE KEYS */;
INSERT INTO `Seccion` VALUES (1,'27D'),(2,'28D');
/*!40000 ALTER TABLE `Seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Semestre`
--

DROP TABLE IF EXISTS `Semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Semestre` (
  `idSemestre` int(11) NOT NULL,
  `anio` decimal(4,0) NOT NULL,
  `semestre` decimal(1,0) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFIn` date NOT NULL,
  PRIMARY KEY  (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Semestre`
--

LOCK TABLES `Semestre` WRITE;
/*!40000 ALTER TABLE `Semestre` DISABLE KEYS */;
INSERT INTO `Semestre` VALUES (20151,2015,1,'2015-03-02','2015-06-26'),(20152,2015,2,'2015-08-03','2015-11-27');
/*!40000 ALTER TABLE `Semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tesis`
--

DROP TABLE IF EXISTS `Tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tesis` (
  `idTesis` varchar(10) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `fechaPre` date NOT NULL,
  `fechaFin` date NOT NULL,
  `fechaEvaluacion` date default NULL,
  `resultado` tinyint(1) default NULL,
  `idPersona` varchar(8) NOT NULL,
  `entregado` varchar(8) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tesis`
--

LOCK TABLES `Tesis` WRITE;
/*!40000 ALTER TABLE `Tesis` DISABLE KEYS */;
INSERT INTO `Tesis` VALUES ('0000000001','titulo_tesis_1','2015-03-02','2015-06-26','2015-06-22',1,'00000001',NULL,1),('0000000002','titulo 2','2015-03-23','2015-11-27','2015-11-23',1,'00000001','00000001',1);
/*!40000 ALTER TABLE `Tesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ubigeo`
--

DROP TABLE IF EXISTS `Ubigeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ubigeo` (
  `idUbigeo` varchar(6) NOT NULL,
  `depUbigeo` varchar(45) default NULL,
  `proUbigeo` varchar(45) default NULL,
  `disUbigeo` varchar(45) default NULL,
  `Persona_idPersona` varchar(8) NOT NULL,
  PRIMARY KEY  (`idUbigeo`,`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ubigeo`
--

LOCK TABLES `Ubigeo` WRITE;
/*!40000 ALTER TABLE `Ubigeo` DISABLE KEYS */;
INSERT INTO `Ubigeo` VALUES ('1','Lima','Lima','Lince','43123456'),('2','Lima','Lima','La Molina','34574567');
/*!40000 ALTER TABLE `Ubigeo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-25 11:30:04
