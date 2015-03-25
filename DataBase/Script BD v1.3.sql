-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_casaherrero
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `idPersona` varchar(8) NOT NULL,
  `grado` varchar(45) NOT NULL,
  `modTitu` varchar(45) DEFAULT NULL,
  `idEscuela` varchar(3) NOT NULL,
  `idModalidadTitulacion` int(11) DEFAULT NULL,
  `foto` blob,
  PRIMARY KEY (`idPersona`),
  KEY `fk_Alumno_Persona1_idx` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnocongreso`
--

DROP TABLE IF EXISTS `alumnocongreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnocongreso` (
  `idPersona` varchar(8) NOT NULL,
  `idCongreso` varchar(8) NOT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idPersona`,`idCongreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnocongreso`
--

LOCK TABLES `alumnocongreso` WRITE;
/*!40000 ALTER TABLE `alumnocongreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnocongreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnotesis`
--

DROP TABLE IF EXISTS `alumnotesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnotesis` (
  `idPersona` varchar(8) NOT NULL,
  `idTesis` varchar(10) NOT NULL,
  `estado` int(1) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idPersona`,`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnotesis`
--

LOCK TABLES `alumnotesis` WRITE;
/*!40000 ALTER TABLE `alumnotesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnotesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `idArea` varchar(3) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('A01','Computación'),('A02','Gestión'),('A03','Ciencias'),('A04','Humanidades'),('A05','Ingles');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula` (
  `idAula` varchar(3) NOT NULL,
  `capMax` int(3) NOT NULL,
  `idPabellon` int(11) NOT NULL,
  PRIMARY KEY (`idAula`,`idPabellon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo`
--

DROP TABLE IF EXISTS `ciclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclo` (
  `idCiclo` varchar(3) NOT NULL,
  `descripcion` varchar(2) NOT NULL,
  PRIMARY KEY (`idCiclo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo`
--

LOCK TABLES `ciclo` WRITE;
/*!40000 ALTER TABLE `ciclo` DISABLE KEYS */;
INSERT INTO `ciclo` VALUES ('C01','01'),('C02','02'),('C03','03'),('C04','04'),('C05','05'),('C06','06'),('C07','07'),('C08','08'),('C09','09'),('C10','10'),('C11','E1'),('C12','E2'),('C13','E3'),('C14','E4');
/*!40000 ALTER TABLE `ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso`
--

DROP TABLE IF EXISTS `congreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso` (
  `idCongreso` varchar(8) NOT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `FechaIni` datetime DEFAULT NULL,
  `FechaFin` datetime DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Institucion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idCongreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso`
--

LOCK TABLES `congreso` WRITE;
/*!40000 ALTER TABLE `congreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `congreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criteriosimulacion`
--

DROP TABLE IF EXISTS `criteriosimulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criteriosimulacion` (
  `idCriterioSimulacion` varchar(6) NOT NULL,
  `criterio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCriterioSimulacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criteriosimulacion`
--

LOCK TABLES `criteriosimulacion` WRITE;
/*!40000 ALTER TABLE `criteriosimulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `criteriosimulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula`
--

DROP TABLE IF EXISTS `curricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curricula` (
  `idCurricula` varchar(8) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `semestre` varchar(1) NOT NULL,
  `estado` int(1) NOT NULL,
  `idEscuela` varchar(3) NOT NULL,
  PRIMARY KEY (`idCurricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula`
--

LOCK TABLES `curricula` WRITE;
/*!40000 ALTER TABLE `curricula` DISABLE KEYS */;
INSERT INTO `curricula` VALUES ('CU000001','2014','1',0,'E01'),('CU000002','2014','2',0,'E01'),('CU000003','2015','1',1,'E01');
/*!40000 ALTER TABLE `curricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculacurso`
--

DROP TABLE IF EXISTS `curriculacurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculacurso` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `cantCredito` int(1) NOT NULL,
  `cantHoraTeo` int(1) NOT NULL,
  `cantHoraLab` int(1) NOT NULL,
  `cantHoraPrac` int(1) NOT NULL,
  `creditosReq` int(3) DEFAULT NULL,
  PRIMARY KEY (`idCurso`,`idCurricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculacurso`
--

LOCK TABLES `curriculacurso` WRITE;
/*!40000 ALTER TABLE `curriculacurso` DISABLE KEYS */;
INSERT INTO `curriculacurso` VALUES ('090002','CU000003',2,2,0,0,0),('090003','CU000003',3,3,0,0,0),('090005','CU000003',1,1,0,0,0),('090020','CU000003',1,1,0,0,0),('090034','CU000003',2,2,0,0,0),('090053','CU000003',5,5,0,0,0),('090054','CU000003',4,4,0,0,0),('090057','CU000003',3,3,0,0,0),('090060','CU000003',4,4,0,0,0),('090069','CU000003',5,5,0,0,0),('090070','CU000003',4,4,0,0,0),('090085','CU000003',4,4,0,0,0),('090088','CU000003',4,4,0,0,100),('090089','CU000003',5,5,0,0,0),('090090','CU000003',4,4,0,0,0),('090116','CU000003',4,4,0,0,0),('090119','CU000003',5,5,0,0,0),('090122','CU000003',4,4,0,0,0),('090134','CU000003',4,4,0,0,0),('090137','CU000003',5,5,0,0,0),('090145','CU000003',4,4,0,0,0),('090147','CU000003',2,2,0,0,0),('090153','CU000003',4,4,0,0,0),('090179','CU000003',4,4,0,0,0),('090205','CU000003',4,4,0,0,132),('090366','CU000003',5,5,0,0,0),('090548','CU000003',4,4,0,0,0),('090577','CU000003',4,4,0,0,0),('090608','CU000003',4,4,0,0,0),('090617','CU000003',4,4,0,0,0),('090633','CU000003',4,4,0,0,132),('090651','CU000003',2,2,0,0,0),('090652','CU000003',2,2,0,0,0),('090655','CU000003',5,5,0,0,0),('090658','CU000003',4,4,0,0,0),('090659','CU000003',4,4,0,0,0),('090660','CU000003',4,4,0,0,0),('090663','CU000003',4,4,0,0,0),('090664','CU000003',4,4,0,0,0),('090665','CU000003',4,4,0,0,0),('090666','CU000003',4,4,0,0,0),('090667','CU000003',2,2,0,0,0),('090668','CU000003',5,5,0,0,0),('090670','CU000003',4,4,0,0,0),('090671','CU000003',4,4,0,0,0),('090672','CU000003',4,4,0,0,0),('090673','CU000003',4,4,0,0,175),('090674','CU000003',5,5,0,0,0),('090675','CU000003',4,4,0,0,0),('090676','CU000003',4,4,0,0,0),('090677','CU000003',4,4,0,0,0),('090678','CU000003',4,4,0,0,0),('090679','CU000003',4,4,0,0,0),('090680','CU000003',4,4,0,0,0),('090709','CU000003',3,3,0,0,0),('090710','CU000003',2,2,0,0,0),('090721','CU000003',4,4,0,0,0),('090861','CU000003',4,4,0,0,0),('090862','CU000003',4,4,0,0,132),('090863','CU000003',2,2,0,0,150),('090932','CU000003',4,4,0,0,0),('090933','CU000003',4,4,0,0,150),('090934','CU000003',4,4,0,0,0),('090971','CU000003',1,1,0,0,0),('091105','CU000003',4,4,0,0,0),('091113','CU000003',5,5,0,0,0),('091114','CU000003',5,5,0,0,0),('091115','CU000003',5,5,0,0,0),('091116','CU000003',5,5,0,0,0),('091117','CU000003',3,3,0,0,0),('091118','CU000003',4,4,0,0,0),('091119','CU000003',4,4,0,0,0),('091121','CU000003',5,5,0,0,0),('091122','CU000003',4,4,0,0,0),('091124','CU000003',4,4,0,0,0),('091125','CU000003',2,2,0,0,80),('091126','CU000003',4,4,0,0,0),('091149','CU000003',4,4,0,0,0),('091155','CU000003',1,1,0,0,0),('091161','CU000003',4,4,0,0,0),('091162','CU000003',5,5,0,0,0);
/*!40000 ALTER TABLE `curriculacurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculacursociclo`
--

DROP TABLE IF EXISTS `curriculacursociclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculacursociclo` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `idCiclo` varchar(3) NOT NULL,
  `posXmalla` varchar(45) DEFAULT NULL,
  `posYmalla` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCurso`,`idCurricula`,`idCiclo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculacursociclo`
--

LOCK TABLES `curriculacursociclo` WRITE;
/*!40000 ALTER TABLE `curriculacursociclo` DISABLE KEYS */;
INSERT INTO `curriculacursociclo` VALUES ('090002','CU000003','C01','0','0'),('090003','CU000003','C02','0','0'),('090005','CU000003','C01','0','0'),('090020','CU000003','C02','0','0'),('090034','CU000003','C05','0','0'),('090053','CU000003','C02','0','0'),('090054','CU000003','C05','0','0'),('090057','CU000003','C02','0','0'),('090060','CU000003','C06','0','0'),('090069','CU000003','C03','0','0'),('090070','CU000003','C10','0','0'),('090085','CU000003','C11','0','0'),('090085','CU000003','C13','0','0'),('090088','CU000003','C11','0','0'),('090088','CU000003','C12','0','0'),('090089','CU000003','C04','0','0'),('090090','CU000003','C04','0','0'),('090116','CU000003','C11','0','0'),('090119','CU000003','C05','0','0'),('090122','CU000003','C05','0','0'),('090134','CU000003','C06','0','0'),('090137','CU000003','C06','0','0'),('090145','CU000003','C07','0','0'),('090147','CU000003','C14','0','0'),('090153','CU000003','C14','0','0'),('090179','CU000003','C12','0','0'),('090205','CU000003','C14','0','0'),('090366','CU000003','C03','0','0'),('090548','CU000003','C11','0','0'),('090548','CU000003','C12','0','0'),('090577','CU000003','C07','0','0'),('090608','CU000003','C14','0','0'),('090617','CU000003','C14','0','0'),('090633','CU000003','C14','0','0'),('090651','CU000003','C14','0','0'),('090652','CU000003','C14','0','0'),('090655','CU000003','C02','0','0'),('090658','CU000003','C13','0','0'),('090659','CU000003','C13','0','0'),('090660','CU000003','C13','0','0'),('090663','CU000003','C01','0','0'),('090664','CU000003','C08','0','0'),('090665','CU000003','C13','0','0'),('090666','CU000003','C13','0','0'),('090667','CU000003','C05','0','0'),('090668','CU000003','C04','0','0'),('090670','CU000003','C11','0','0'),('090670','CU000003','C12','0','0'),('090671','CU000003','C13','0','0'),('090672','CU000003','C13','0','0'),('090673','CU000003','C09','0','0'),('090674','CU000003','C12','0','0'),('090675','CU000003','C12','0','0'),('090676','CU000003','C12','0','0'),('090677','CU000003','C12','0','0'),('090678','CU000003','C12','0','0'),('090679','CU000003','C08','0','0'),('090680','CU000003','C14','0','0'),('090709','CU000003','C01','0','0'),('090710','CU000003','C01','0','0'),('090721','CU000003','C07','0','0'),('090861','CU000003','C11','0','0'),('090861','CU000003','C13','0','0'),('090862','CU000003','C14','0','0'),('090863','CU000003','C14','0','0'),('090932','CU000003','C14','0','0'),('090933','CU000003','C11','0','0'),('090934','CU000003','C11','0','0'),('090971','CU000003','C01','0','0'),('091105','CU000003','C14','0','0'),('091113','CU000003','C01','0','0'),('091114','CU000003','C01','0','0'),('091115','CU000003','C02','0','0'),('091116','CU000003','C03','0','0'),('091117','CU000003','C03','0','0'),('091118','CU000003','C04','0','0'),('091119','CU000003','C11','0','0'),('091119','CU000003','C12','0','0'),('091121','CU000003','C06','0','0'),('091122','CU000003','C11','0','0'),('091124','CU000003','C13','0','0'),('091125','CU000003','C14','0','0'),('091126','CU000003','C14','0','0'),('091149','CU000003','C03','0','0'),('091155','CU000003','C02','0','0'),('091161','CU000003','C04','0','0'),('091162','CU000003','C05','0','0');
/*!40000 ALTER TABLE `curriculacursociclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` varchar(6) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `estado` int(1) NOT NULL,
  `idArea` varchar(3) NOT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES ('090002','Lenguaje',1,'A04'),('090003','Filosofía',1,'A04'),('090005','Actividades I ',1,'A04'),('090020','Actividades II',1,'A04'),('090034','Ética y Moral',1,'A04'),('090053','Algoritmos y Estructura de Datos I',1,'A01'),('090054','Estadística y Probabilidades I ',1,'A03'),('090057','Introducción a la Teoría Económica',1,'A02'),('090060','Estadística y Probabilidades II ',1,'A03'),('090069','Algoritmo y Estructura de Datos II ',1,'A01'),('090070','Proyecto II',1,'A01'),('090085','Investigación Operativa I',1,'A01'),('090088','Teoría General de Sistemas',1,'A02'),('090089','Teoría y Diseño de Base de Datos ',1,'A01'),('090090','Ingeniería Administrativa',1,'A02'),('090116','Investigación Operativa II ',1,'A01'),('090119','Ingeniería de Software I ',1,'A01'),('090122','Contabilidad General ',1,'A02'),('090134','Mercadotecnia',1,'A02'),('090137','Ingeniería de Software II ',1,'A01'),('090145','Gestión Financiera',1,'A02'),('090147','Comportamiento Organizacional',1,'A02'),('090153','Sistemas Operativos',1,'A01'),('090179','Procesamiento Distribuido',1,'A01'),('090205','Comercio Electrónico',1,'A01'),('090366','Álgebra Linea',1,'A03'),('090548','Formulación y Evaluación de Proyectos ',1,'A02'),('090577','Gestión de Proyectos',1,'A01'),('090608','Taller de Creatividad Empresarial',1,'A02'),('090617','Gestión Estratégica',1,'A02'),('090633','Ingeniería de Cableado Estructurado',1,'A01'),('090651','Administración de Servicios I ',1,'A01'),('090652','Administración de Servicios II ',1,'A01'),('090655','Cálculo I',1,'A03'),('090658','Calidad de Software',1,'A01'),('090659','Desarrollo de Aplicaciones I',1,'A01'),('090660','Desarrollo de Aplicaciones II ',1,'A01'),('090663','Geometría Analítica',1,'A03'),('090664','Gestión de Recursos de TI ',1,'A01'),('090665','Fundamentos de Diseño Web ',1,'A01'),('090666','Inteligencia Artificial y Robótica ',1,'A01'),('090667','Liderazgo y Oratoria',1,'A04'),('090668','Matemática Discreta',1,'A03'),('090670','Planeamiento Estratégico de Tecnologías de Información',1,'A01'),('090671','Programación I',1,'A01'),('090672','Programación II',1,'A01'),('090673','Proyecto I',1,'A01'),('090674','Redes de Comunicaciones',1,'A01'),('090675','Redes y Conectividad I (CCNA I CISCO) ',1,'A01'),('090676','Redes y Conectividad II (CCNA II CISCO) ',1,'A01'),('090677','Redes y Conectividad III (CCNA III CISCO) ',1,'A01'),('090678','Redes y Conectividad IV (CCNA IV CISCO) ',1,'A01'),('090679','Seguridad y Auditoría de Sistemas de Información',1,'A01'),('090680','Simulación de Sistemas',1,'A01'),('090709','Realidad Nacional ',1,'A04'),('090710','Métodos de Estudio',1,'A04'),('090721','Diseño e Implementación de Sistemas ',1,'A01'),('090861','Administración de Base de Datos',1,'A01'),('090862','Seguridad Informática ',1,'A01'),('090863','Gestión de la Innovación ',1,'A02'),('090932','Gestión de Procesos',1,'A01'),('090933','Gestión del Conocimiento',1,'A02'),('090934','Inteligencia de Negocios ',1,'A01'),('090971','Inglés I',1,'A05'),('091105','Web Semántica',1,'A01'),('091113','Introducción a la Ingeniería y la Computación ',1,'A01'),('091114','Introducción a la Programación',1,'A01'),('091115','Tecnología de Información I',1,'A01'),('091116','Física para Informática',1,'A03'),('091117','Sistemas de Información I ',1,'A01'),('091118','Sistemas de Información II',1,'A01'),('091119','Sistemas Integrados de Gestión ERP ',1,'A01'),('091121','Taller de Proyectos',1,'A01'),('091122','Arquitectura Empresarial I ',1,'A01'),('091124','Pruebas de Software',1,'A01'),('091125','Tópicos de Computación ',1,'A01'),('091126',' Desarrollo de Juegos',1,'A01'),('091149','Tecnología de Información II',1,'A01'),('091155','Inglés II ',1,'A05'),('091161','Tecnología de Información III ',1,'A01'),('091162','Sistemas de Información III',1,'A01');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursoprofesor`
--

DROP TABLE IF EXISTS `cursoprofesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursoprofesor` (
  `idCurso` varchar(6) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idCurso`,`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursoprofesor`
--

LOCK TABLES `cursoprofesor` WRITE;
/*!40000 ALTER TABLE `cursoprofesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursoprofesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursoseccion`
--

DROP TABLE IF EXISTS `cursoseccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursoseccion` (
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idCurso`,`idSeccion`,`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursoseccion`
--

LOCK TABLES `cursoseccion` WRITE;
/*!40000 ALTER TABLE `cursoseccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursoseccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desxlogro`
--

DROP TABLE IF EXISTS `desxlogro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desxlogro` (
  `idDesXLogro` int(11) NOT NULL,
  `DesxLogro` varchar(45) DEFAULT NULL,
  `idLogro` varchar(6) NOT NULL,
  `idCurso` varchar(6) NOT NULL,
  PRIMARY KEY (`idDesXLogro`,`idLogro`,`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desxlogro`
--

LOCK TABLES `desxlogro` WRITE;
/*!40000 ALTER TABLE `desxlogro` DISABLE KEYS */;
/*!40000 ALTER TABLE `desxlogro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallematricula`
--

DROP TABLE IF EXISTS `detallematricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallematricula` (
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `n1` int(11) DEFAULT NULL,
  `n2` int(11) DEFAULT NULL,
  `n3` int(11) DEFAULT NULL,
  `ep` int(11) DEFAULT NULL,
  `ef` int(11) DEFAULT NULL,
  `nf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCurso`,`idSeccion`,`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallematricula`
--

LOCK TABLES `detallematricula` WRITE;
/*!40000 ALTER TABLE `detallematricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallematricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilidad`
--

DROP TABLE IF EXISTS `disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disponibilidad` (
  `idDisponibilidad` int(11) NOT NULL AUTO_INCREMENT,
  `dia` int(1) NOT NULL,
  `horaInicio` date NOT NULL,
  `horaFin` date NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idDisponibilidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidad`
--

LOCK TABLES `disponibilidad` WRITE;
/*!40000 ALTER TABLE `disponibilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idPersona` varchar(8) NOT NULL,
  `idRol` varchar(3) NOT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `fk_Empleado_Persona1_idx` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(12) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razonSocial` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuela`
--

DROP TABLE IF EXISTS `escuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escuela` (
  `idEscuela` varchar(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idPersona` varchar(8) NOT NULL COMMENT 'IDPERSONA: es el ID del director de la escuela\n',
  PRIMARY KEY (`idEscuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuela`
--

LOCK TABLES `escuela` WRITE;
/*!40000 ALTER TABLE `escuela` DISABLE KEYS */;
INSERT INTO `escuela` VALUES ('E01','Ingeniería de Computación y Sistemas','43123456'),('E02','Ingeniería Electrónica','34574567'),('E03','Ingeniería Industrial','25465475'),('E04','Ingeniería Civil','65456547'),('E05','Ingeniería en Industrias Alimentarias','65758765'),('E06','Arquitectura','07456474'),('E07','Ciencias Aeronáuticas','46453436');
/*!40000 ALTER TABLE `escuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion` (
  `idEvaluacion` varchar(8) NOT NULL,
  `nota` varchar(45) DEFAULT NULL,
  `idTesis` varchar(10) NOT NULL,
  PRIMARY KEY (`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `secuencia` decimal(1,0) NOT NULL COMMENT 'secuencia: cada sector de una sección en el horario',
  `idCurso` varchar(6) NOT NULL,
  `idSeccion` int(11) NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `horaInicio` date NOT NULL,
  `cantidadHoras` decimal(1,0) NOT NULL,
  `idAula` varchar(3) NOT NULL,
  `dia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idHorario`),
  UNIQUE KEY `secuencia_UNIQUE` (`secuencia`),
  UNIQUE KEY `Curso_has_Seccion_Curso_idCurso_UNIQUE` (`idCurso`),
  UNIQUE KEY `Curso_has_Seccion_Seccion_idSeccion_UNIQUE` (`idSeccion`),
  UNIQUE KEY `Curso_has_Seccion_idSemestre_UNIQUE` (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarioalternativo`
--

DROP TABLE IF EXISTS `horarioalternativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarioalternativo` (
  `idHorario` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`idHorario`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarioalternativo`
--

LOCK TABLES `horarioalternativo` WRITE;
/*!40000 ALTER TABLE `horarioalternativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `horarioalternativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informeempresa`
--

DROP TABLE IF EXISTS `informeempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informeempresa` (
  `idInformeEmpresa` varchar(6) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`idInformeEmpresa`,`idPersona`,`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informeempresa`
--

LOCK TABLES `informeempresa` WRITE;
/*!40000 ALTER TABLE `informeempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `informeempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurado`
--

DROP TABLE IF EXISTS `jurado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurado` (
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurado`
--

LOCK TABLES `jurado` WRITE;
/*!40000 ALTER TABLE `jurado` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurado_evaluacion`
--

DROP TABLE IF EXISTS `jurado_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurado_evaluacion` (
  `idPersona` varchar(8) NOT NULL,
  `idEvaluacion` varchar(8) NOT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idPersona`,`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurado_evaluacion`
--

LOCK TABLES `jurado_evaluacion` WRITE;
/*!40000 ALTER TABLE `jurado_evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurado_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro`
--

DROP TABLE IF EXISTS `logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logro` (
  `idLogro` varchar(6) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idLogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro`
--

LOCK TABLES `logro` WRITE;
/*!40000 ALTER TABLE `logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL AUTO_INCREMENT,
  `fechaMatricula` date NOT NULL,
  `idSemestre` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidadtitulacion`
--

DROP TABLE IF EXISTS `modalidadtitulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidadtitulacion` (
  `idModalidadTitulacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idModalidadTitulacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidadtitulacion`
--

LOCK TABLES `modalidadtitulacion` WRITE;
/*!40000 ALTER TABLE `modalidadtitulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalidadtitulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observacion`
--

DROP TABLE IF EXISTS `observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observacion` (
  `idPersona` varchar(8) NOT NULL,
  `idTesis` varchar(10) NOT NULL,
  `observaciones` varchar(150) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`idPersona`,`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observacion`
--

LOCK TABLES `observacion` WRITE;
/*!40000 ALTER TABLE `observacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pabellon`
--

DROP TABLE IF EXISTS `pabellon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pabellon` (
  `idPabellon` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`idPabellon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pabellon`
--

LOCK TABLES `pabellon` WRITE;
/*!40000 ALTER TABLE `pabellon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pabellon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` varchar(8) NOT NULL COMMENT 'el ID es el numero de DNI \n',
  `nombre` varchar(50) NOT NULL,
  `apPaterno` varchar(50) NOT NULL,
  `apMaterno` varchar(50) NOT NULL,
  `dirDomicilio` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `usuario` varchar(9) DEFAULT NULL COMMENT 'a0845452084',
  `clave` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisito`
--

DROP TABLE IF EXISTS `requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisito` (
  `idRequisito` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idRequisito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisito`
--

LOCK TABLES `requisito` WRITE;
/*!40000 ALTER TABLE `requisito` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitoalumno`
--

DROP TABLE IF EXISTS `requisitoalumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitoalumno` (
  `idRequisito` int(11) NOT NULL,
  `idPersona` varchar(8) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idRequisito`,`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitoalumno`
--

LOCK TABLES `requisitoalumno` WRITE;
/*!40000 ALTER TABLE `requisitoalumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisitoalumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitocurso`
--

DROP TABLE IF EXISTS `requisitocurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitocurso` (
  `idCurso` varchar(6) NOT NULL,
  `idCurricula` varchar(8) NOT NULL,
  `idCursoPre` varchar(6) NOT NULL,
  PRIMARY KEY (`idCurso`,`idCurricula`,`idCursoPre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitocurso`
--

LOCK TABLES `requisitocurso` WRITE;
/*!40000 ALTER TABLE `requisitocurso` DISABLE KEYS */;
INSERT INTO `requisitocurso` VALUES ('090002','CU000003','0'),('090003','CU000003','090002'),('090005','CU000003','0'),('090020','CU000003','090005'),('090034','CU000003','0'),('090053','CU000003','091114'),('090054','CU000003','090655'),('090057','CU000003','090709'),('090060','CU000003','090054'),('090069','CU000003','090053'),('090070','CU000003','090673'),('090085','CU000003','090060'),('090088','CU000003','0'),('090089','CU000003','090069'),('090090','CU000003','090057'),('090116','CU000003','090085'),('090119','CU000003','090089'),('090122','CU000003','090057'),('090134','CU000003','090090'),('090137','CU000003','090119'),('090145','CU000003','090122'),('090147','CU000003','090090'),('090153','CU000003','091149'),('090179','CU000003','090674'),('090205','CU000003','0'),('090366','CU000003','090655'),('090548','CU000003','090145'),('090577','CU000003','091162'),('090608','CU000003','091121'),('090617','CU000003','090670'),('090633','CU000003','0'),('090651','CU000003','090153'),('090652','CU000003','090651'),('090655','CU000003','090663'),('090658','CU000003','091124'),('090659','CU000003','090665'),('090660','CU000003','090659'),('090663','CU000003','0'),('090664','CU000003','091162'),('090665','CU000003','090069'),('090666','CU000003','090672'),('090667','CU000003','0'),('090668','CU000003','090663'),('090670','CU000003','090664'),('090671','CU000003','090069'),('090672','CU000003','090671'),('090673','CU000003','090577'),('090674','CU000003','090153'),('090674','CU000003','091116'),('090675','CU000003','091161'),('090676','CU000003','090675'),('090677','CU000003','090676'),('090678','CU000003','090677'),('090679','CU000003','090721'),('090680','CU000003','090116'),('090709','CU000003','0'),('090710','CU000003','0'),('090721','CU000003','090137'),('090861','CU000003','090089'),('090862','CU000003','0'),('090863','CU000003','0'),('090932','CU000003','091162'),('090933','CU000003','0'),('090934','CU000003','091162'),('090971','CU000003','0'),('091105','CU000003','090665'),('091113','CU000003','0'),('091114','CU000003','0'),('091115','CU000003','091114'),('091116','CU000003','090655'),('091117','CU000003','091113'),('091118','CU000003','091117'),('091119','CU000003','091162'),('091121','CU000003','090119'),('091121','CU000003','091162'),('091122','CU000003','090664'),('091124','CU000003','090137'),('091125','CU000003','0'),('091126','CU000003','090137'),('091149','CU000003','091115'),('091155','CU000003','090971'),('091161','CU000003','091149'),('091162','CU000003','090090'),('091162','CU000003','091118');
/*!40000 ALTER TABLE `requisitocurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumenalumno`
--

DROP TABLE IF EXISTS `resumenalumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumenalumno` (
  `idResumenAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` varchar(8) NOT NULL,
  `creditosObligatorios` int(3) NOT NULL,
  `creditosMencion` int(3) NOT NULL,
  `creditosLibres` int(3) NOT NULL,
  `cursosPasados` int(2) NOT NULL,
  PRIMARY KEY (`idResumenAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumenalumno`
--

LOCK TABLES `resumenalumno` WRITE;
/*!40000 ALTER TABLE `resumenalumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `resumenalumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` varchar(3) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccion` (
  `idSeccion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(3) NOT NULL,
  PRIMARY KEY (`idSeccion`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semestre` (
  `idSemestre` int(11) NOT NULL,
  `anio` decimal(4,0) NOT NULL,
  `semestre` decimal(1,0) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFIn` date NOT NULL,
  PRIMARY KEY (`idSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesis`
--

DROP TABLE IF EXISTS `tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tesis` (
  `idTesis` varchar(10) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `fechaPre` date NOT NULL,
  `fechaFin` date NOT NULL,
  `fechaEvaluacion` date DEFAULT NULL,
  `resultado` tinyint(1) DEFAULT NULL,
  `idPersona` varchar(8) NOT NULL,
  `entregado` varchar(8) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`idTesis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesis`
--

LOCK TABLES `tesis` WRITE;
/*!40000 ALTER TABLE `tesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo`
--

DROP TABLE IF EXISTS `ubigeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo` (
  `idUbigeo` varchar(6) NOT NULL,
  `depUbigeo` varchar(45) DEFAULT NULL,
  `proUbigeo` varchar(45) DEFAULT NULL,
  `disUbigeo` varchar(45) DEFAULT NULL,
  `Persona_idPersona` varchar(8) NOT NULL,
  PRIMARY KEY (`idUbigeo`,`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo`
--

LOCK TABLES `ubigeo` WRITE;
/*!40000 ALTER TABLE `ubigeo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubigeo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-25  0:03:39
