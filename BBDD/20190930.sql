-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: atenea
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `rol` int(11) DEFAULT NULL,
  `alias` text,
  `nombre` text,
  `apellidos` text,
  `fechaNacimiento` text,
  `fechaInscripcion` text,
  `email` text,
  `telefono` text,
  `datosFacturacion` text,
  `password` text,
  `cif` text,
  `datosAcademicos` text,
  `cv` text,
  `nivel` int(11) DEFAULT NULL,
  `factura` int(11) DEFAULT NULL,
  `validado` tinyint(4) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `userHasFactura_idx` (`factura`),
  KEY `usuario_rol_idx` (`rol`),
  CONSTRAINT `usuario_rol` FOREIGN KEY (`rol`) REFERENCES `troles` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuarios_facturas` FOREIGN KEY (`factura`) REFERENCES `tfacturas` (`idFactura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,2,'el huevito','Huevito','García García','01/01/1991','07/02/2019','huevito@gmail.com','612-123-123','000-000-000','huevito123','','','',7,NULL,1,'img/user2.jpg'),(2,2,'fulgen','Fulgencio','Buen Hombre','31/10/1965','12/09/2019','fulgencio@gmail.com','612-123-124','000-000-000','fulgencio123','','','',1,NULL,1,'img/user3.jpg'),(3,2,'takoyaki','Pascuala','Central Asturiana','25/12/1986','08/08/2019','pascuala@gmail.com','612-123-125','000-000-000','pascuala123','','','',5,NULL,1,'img/user4.jpg'),(4,2,'mr potato','Eneko','Bilbo Pérez','08/03/1978','06/05/2019','eneko@gmail.com','612-123-126','000-000-000','eneko123','','','',3,NULL,1,'img/user5.jpg'),(5,3,'profe fili','Filiberto','Código Facilito','28/12/1990','01/01/2019','profesor-filiberto@atenea.com','612-123-127','000-000-000','filiberto123','','Doctorado en JavaScript, php y C++. Cofundador de la escuela Código Facilito. Le encanta enseñar a programar.','',12,NULL,1,'img/user6.jpg'),(6,3,'miss script','Chumilla','Baena Baena','04/06/1995','02/01/2019','profesora-chumilla@atenea.com','612-123-128','000-000-000','chumilla123','','Titulada en Internet de las Cosas por la Universidad de Suiza. Creó su primer programa con 5 años, un sistema para ordenar los botes de plastilina según olor y caducidad. Actualmente es profesora en el EOI.','',15,NULL,1,'img/user7.jpg'),(7,3,'benita','Marianela','Pérez Galdós','07/08/1978','03/01/2019','profesora-marianela@atenea.com','612-123-129','000-000-000','marianela123','','Doctorada en literatura. Máster en Arameo. Fan incondicional de de don Benito Pérez Galdós, promueve sus obras por todo el mundo.','',9,NULL,1,'img/user8.jpg'),(8,4,'','indra','','','01/09/2019','rrhh@indra.com','612-123-200','000-000-000','indra123','A-28599033','','',20,NULL,1,'img/user9.jpg'),(9,4,'','telefónica','','','04/06/2019','rrhh@telefonica.com','612-123-131','000-000-000','telefonica123','A-28/015865','','',25,NULL,1,'user1.jpg'),(10,1,'admin','Ramón','San Juan',NULL,NULL,'admin@ateneaweb.com','612-123-132','000-000-000','admin1234',NULL,NULL,NULL,NULL,NULL,1,'img/user2.jpg'),(11,2,'xavi','Xavier','Coll Pérez','28/12/1990','02/01/2019','xavcp@gmail.com','672342423','234-231-111',NULL,NULL,NULL,NULL,NULL,NULL,1,'img/user3.jpg'),(12,NULL,NULL,'wefwF','',NULL,NULL,'','','Datos',NULL,NULL,NULL,NULL,NULL,NULL,1,'user1.jpg'),(13,NULL,NULL,'Fabiola','Salguero',NULL,NULL,'fabisalg@gmail.com','542345223','999-234-233',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'user1.jpg');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarchivos`
--

DROP TABLE IF EXISTS `tarchivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarchivos` (
  `idArchivo` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `Nombre` text,
  `tipo` text,
  `Source` text,
  PRIMARY KEY (`idArchivo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarchivos`
--

LOCK TABLES `tarchivos` WRITE;
/*!40000 ALTER TABLE `tarchivos` DISABLE KEYS */;
INSERT INTO `tarchivos` VALUES (0,4,'Diploma curso','Img',''),(1,324,'Tabla periódica','Pdf',''),(2,2,'Espacios de color','Img',''),(3,45,'Poemas Ruben Darío','Pdf',''),(4,23,'Carta Magna','Img',''),(5,7,'Diccionario Inglés','Word',''),(6,45,'Diploma curso','Img',''),(7,44,'La Constitución','Img',''),(8,5,'AI','Img',''),(9,3,'Diploma curso','Pdf',''),(10,67,'Declinaciones Alemán','Word',''),(11,6,'Diploma curso','Pdf',''),(12,77,'Derecho penal','Word',''),(13,34,'Conjugaciones Arameo','Pdf',''),(14,12,'Diploma curso','Pdf',''),(15,21,'DL','Img',''),(16,44,'Ejemplos trigonometría','Pdf',''),(17,25,'Diploma curso','Img',''),(18,14,'Diploma curso','Pdf',''),(19,3,'Fuerzas Normales','Word',''),(20,56,'Diploma curso','Img','');
/*!40000 ALTER TABLE `tarchivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcursos`
--

DROP TABLE IF EXISTS `tcursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcursos` (
  `IdCurso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text,
  `categoria` int(11) DEFAULT NULL,
  `certificado` int(11) DEFAULT NULL,
  `precio` text,
  `idioma_curso` int(11) DEFAULT NULL,
  `fecha_inclusion` date DEFAULT NULL,
  `idProfe` int(11) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcursos`
--

LOCK TABLES `tcursos` WRITE;
/*!40000 ALTER TABLE `tcursos` DISABLE KEYS */;
INSERT INTO `tcursos` VALUES (1,'Architecture Studio: Building in Landscapes',1,0,'$149',1,'2019-01-13',6,'img/curso_2.jpg'),(2,'Roman Architecture',1,0,'$150',1,'2019-03-04',5,'img/curso_3.jpg'),(3,'The Architectural Imagination ',1,0,'$45',1,'2019-01-13',7,'img/curso_4.jpg'),(4,'Theory of City Form',1,0,'$15',1,'2019-07-29',6,'img/curso_5.jpg'),(5,'Aesthetics & the Philosophy of Art',2,1,'$20',1,'2019-05-24',7,'img/curso_6.jpg'),(6,'Digital Photography',21,1,'$200',1,'2019-05-07',5,'img/curso_7.jpg'),(7,'Introduction to Visual Design',2,1,'$100',1,'2019-08-26',7,'img/curso_8.jpg'),(8,'Introduction to Visual Thinking',2,1,'$199',1,'2019-09-01',5,'img/curso_9.jpg'),(9,'Italian Renaissance',2,0,'$149',1,'2019-08-28',6,'img/curso_10.jpg'),(10,'Italic Calligraphy & Handwriting',2,0,'$150',1,'2019-07-21',6,'img/curso_11.jpg'),(11,'Photography',21,1,'$45',1,'2019-01-22',7,'img/curso_12.jpg'),(12,'Ancient and Medieval Philosophy',19,0,'$15',1,'2019-05-22',7,'img/curso_13.jpg'),(13,'Ancient Greece: City and Society',19,1,'$20',1,'2019-03-19',5,'img/curso_14.jpg'),(14,'Ancient Philosophy',19,1,'$200',1,'2018-12-30',6,'img/curso_15.jpg'),(15,'Classical Mythology',19,1,'$100',1,'2019-04-04',6,'img/curso_16.jpg'),(16,'Concepts of the Hero in Greek Civilization',19,1,'$199',1,'2019-07-26',5,'img/curso_17.jpg'),(17,'Virgil’s Aeneid: Anatomy of a Classic',19,0,'$149',1,'2019-07-07',5,'img/curso_18.jpg'),(19,'Virgil’s Aeneid: Anatomy of a Classic II',19,0,'$149',1,'2019-02-24',6,'img/curso_20.jpg'),(20,'Advanced Political Economy',6,0,'$45',1,'2019-02-13',6,'img/curso_21.jpg'),(21,'American Capitalism: A History',6,1,'$15',1,'2019-04-02',7,'img/curso_22.jpg'),(22,'Behavioral Finance',6,0,'$20',1,'2019-03-01',5,'img/curso_23.jpg'),(23,'Capitalism: Success',6,1,'$15',1,'2019-03-01',5,'img/curso_24.jpg'),(24,'Crisis',6,1,'$15',1,'2019-06-01',6,'img/curso_25.jpg'),(25,'Economic Geography of the Industrial World',6,1,'$199',1,'2019-01-16',6,'img/curso_26.jpg'),(26,'Economic History of the Soviet Union',6,0,'$149',1,'2019-09-16',5,'img/curso_27.jpg'),(27,'Economic Statistics and Econometrics',6,0,'$150',1,'2019-03-24',6,'img/curso_28.jpg'),(28,'Finance Theory 1',6,0,'$45',1,'2018-12-02',7,'img/curso_29.jpg'),(29,'Financial Markets ',6,1,'$15',1,'2019-08-27',5,'img/curso_30.jpg'),(30,'Global Poverty and Impact Evaluation',6,1,'$20',1,'2019-04-28',5,'img/curso_31.jpg'),(31,'Great Economists: Classical Economics and its Forerunners',6,1,'$200',1,'2019-07-27',5,'img/curso_32.jpg'),(32,'History of Economic Theory',6,0,'$100',1,'2019-05-02',5,'img/curso_33.jpg'),(33,'Intermediate Microeconomic Theory',6,0,'$199',1,'2019-01-17',6,'img/curso_34.jpg'),(34,'International Finance',6,1,'$149',1,'2019-02-25',7,'img/curso_1.jpg'),(35,'International Political Economy',6,1,'$150',1,'2019-09-19',5,'img/curso_2.jpg'),(36,'International Trade ',6,0,'$45',1,'2018-12-06',5,'img/curso_3.jpg'),(37,'International Trade',6,0,'$15',1,'2019-01-27',6,'img/curso_4.jpg'),(38,'Introduction to Economics',6,0,'$20',1,'2019-08-29',6,'img/curso_5.jpg'),(39,'Introduction to Environmental Economics and Policy',6,0,'$200',1,'2019-09-17',7,'img/curso_6.jpg'),(40,'Law and Economics I',6,0,'$100',1,'2019-01-10',5,'img/curso_7.jpg'),(41,'Lectures on Human Capital',6,0,'$199',1,'2019-07-25',6,'img/curso_8.jpg'),(42,'Marx\'s Kapital: Volumes 1 and 2',6,0,'$149',1,'2019-05-14',5,'img/curso_9.jpg'),(43,'Marxian Economic',6,0,'$150',1,'2019-03-27',5,'img/curso_10.jpg'),(44,'Mexico’s Economy: Current Prospects and History',6,0,'$45',1,'2019-03-05',5,'img/curso_11.jpg'),(45,'Microeconomic Theory with Application to Natural Resources',6,1,'$15',1,'2019-04-04',6,'img/curso_12.jpg'),(46,'Money and Banking',6,1,'$20',1,'2019-01-13',5,'img/curso_13.jpg'),(47,'Money',6,1,'$20',1,'2019-04-30',6,'img/curso_14.jpg'),(48,'Money Skills',6,0,'$100',1,'2018-12-25',7,'img/curso_15.jpg'),(49,'Poker Theory and Analytics',6,0,'$199',1,'2019-09-01',6,'img/curso_16.jpg'),(50,'Political Economy After the Crisis',6,0,'$149',1,'2019-03-13',5,'img/curso_17.jpg'),(51,'Principles of Economics: Microeconomics',6,1,'$150',1,'2019-09-19',7,'img/curso_18.jpg'),(52,'Principles of Economics: Macroeconomics',6,1,'$45',1,'2019-08-15',6,'img/curso_19.jpg'),(53,'Principles of Microeconomics',6,1,'$15',1,'2019-03-28',6,'img/curso_20.jpg'),(54,'Psychology and Economics ',6,0,'$20',1,'2019-03-26',6,'img/curso_21.jpg'),(55,'Public Economics and Finance',6,0,'$200',1,'2019-07-19',7,'img/curso_22.jpg'),(56,'Radical Capitalism',6,0,'$100',1,'2019-07-01',5,'img/curso_23.jpg'),(57,'Sports Economics',6,1,'$199',1,'2019-02-10',6,'img/curso_24.jpg'),(58,'The Eurozone Crisis',6,1,'$149',1,'2018-12-26',6,'img/curso_25.jpg'),(59,'Biochemistry 1',3,1,'$150',1,'2019-07-07',7,'img/curso_26.jpg'),(60,'Chemistry (Chemical Stoichiometry)',3,1,'$45',1,'2019-03-27',5,'img/curso_27.jpg'),(61,'Core Concepts in Chemistry',3,1,'$15',1,'2019-07-22',5,'img/curso_28.jpg'),(62,'Chemical Structure and Reactivity',3,0,'$20',1,'2019-07-11',7,'img/curso_29.jpg'),(63,'Advanced Algorithms',4,1,'$200',1,'2019-03-27',5,'img/curso_30.jpg'),(64,'Advanced Operating Systems Structures and Implementation',4,0,'$100',1,'2019-07-08',6,'img/curso_31.jpg'),(65,'Crash Course in Design Thinking',5,0,'$199',1,'2019-05-02',5,'img/curso_32.jpg'),(66,'Everything I Know',5,0,'$149',1,'2019-03-16',5,'img/curso_33.jpg'),(67,'Geology',7,1,'$150',1,'2019-02-15',6,'img/curso_34.jpg'),(68,'Engineering',8,1,'$45',1,'2019-02-05',6,'img/curso_1.jpg'),(69,'Engineering - Signals and Systems',8,1,'$15',1,'2019-03-21',7,'img/curso_2.jpg'),(70,'Engineering Dynamics',8,1,'$20',1,'2019-01-24',7,'img/curso_3.jpg'),(71,'Electronic Techniques for Engineering',8,1,'$200',1,'2019-08-03',5,'img/curso_4.jpg'),(72,'Engineering Statics',8,1,'$100',1,'2019-05-17',6,'img/curso_5.jpg'),(73,'Environmental Air Pollution',9,1,'$199',1,'2019-03-18',5,'img/curso_6.jpg'),(74,'Australian Environmental History',9,1,'$149',1,'2019-01-07',5,'img/curso_7.jpg'),(75,'Adaptation to Climate Change',9,1,'$150',1,'2019-05-20',6,'img/curso_8.jpg'),(76,'Education for Sustainable Living: Environment',9,1,'$45',1,'2019-04-22',5,'img/curso_9.jpg'),(77,'Energy Regulations and the Environment',9,1,'$15',1,'2019-06-22',6,'img/curso_10.jpg'),(78,'Environmental Economics & Policy',9,1,'$20',1,'2019-09-22',5,'img/curso_11.jpg'),(79,'Introduction to Visual Design',5,1,'$200',1,'2019-08-30',5,'img/curso_12.jpg'),(80,'Environmental Politics and Law',9,1,'$100',1,'2019-05-29',6,'img/curso_13.jpg'),(81,'Ethical Challenges in Public Health Interventions: Catastrophic and Routine',10,0,'$199',1,'2019-02-21',5,'img/curso_14.jpg'),(82,'Food and the Environment',11,0,'$149',1,'2019-05-26',5,'img/curso_15.jpg'),(83,'Basic Concepts of Music Theory',18,0,'$150',1,'2019-01-11',5,'img/curso_16.jpg'),(84,'Food Production',11,0,'$15',1,'2019-09-07',7,'img/curso_17.jpg'),(85,'Nutrition Education for Cancer Prevention',11,0,'$15',1,'2019-02-22',5,'img/curso_18.jpg'),(86,'Arabic Elementary Course',14,0,'$20',1,'2019-05-29',5,'img/curso_19.jpg'),(87,'Français pour débutant',14,1,'$200',1,'2019-01-21',5,'img/curso_20.jpg'),(88,'Chinese for beginners',14,1,'$100',1,'2018-12-24',5,'img/curso_21.jpg'),(89,'German for beginners',14,1,'$199',1,'2019-08-22',5,'img/curso_22.jpg'),(90,'Japanese for beginners',14,1,'$149',1,'2019-01-26',5,'img/curso_23.jpg'),(91,'Russian for beginners',14,1,'$150',1,'2019-03-05',6,'img/curso_24.jpg'),(92,'Portuguese for beginners',14,1,'$45',1,'2018-12-06',7,'img/curso_25.jpg'),(93,'Common Law',15,1,'$15',1,'2019-01-19',6,'img/curso_26.jpg'),(94,'Ruso para principiantes',14,0,'$20',2,'2019-07-22',5,'img/curso_27.jpg'),(95,'Child Nutrition and Cooking',11,0,'$200',1,'2019-04-05',5,'img/curso_28.jpg'),(96,'Ancient Greek History',12,0,'$100',1,'2019-07-19',5,'img/curso_29.jpg'),(97,'Análisis sintáctico',13,1,'$199',2,'2019-05-29',5,'img/curso_30.jpg'),(98,'La generación del 27',13,1,'$149',2,'2019-06-29',5,'img/curso_31.jpg'),(99,'A First Course in Linear Algebra',16,1,'$150',1,'2019-07-08',5,'img/curso_32.jpg'),(100,'Neurology',17,0,'$45',1,'2019-05-18',5,'img/curso_33.jpg');
/*!40000 ALTER TABLE `tcursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tfacturas`
--

DROP TABLE IF EXISTS `tfacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tfacturas` (
  `idFactura` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fecha` text,
  `numeroFactura` text,
  `baseImponible` text,
  `iva` text,
  `total` int(11) DEFAULT NULL,
  `estado` text,
  PRIMARY KEY (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfacturas`
--

LOCK TABLES `tfacturas` WRITE;
/*!40000 ALTER TABLE `tfacturas` DISABLE KEYS */;
INSERT INTO `tfacturas` VALUES (1,8,'10/06/2019','AT-2019-001','29,93713202','21%',30,'PAGADA'),(2,8,'20/08/2019','AT-2019-002','29,93713202','21%',30,'PENDIENTE'),(3,9,'04/07/2019','AT-2019-003','29,93713202','21%',30,'PAGADA'),(4,9,'05/07/2019','AT-2019-004','29,93713202','21%',30,'PAGADA'),(5,1,'04/02/2019','AT-2019-005','29,93713202','21%',30,'PAGADA'),(6,2,'14/03/2019','AT-2019-006','29,93713202','21%',30,'PENDIENTE'),(7,1,'06/02/2019','AT-2019-007','29,93713202','21%',30,'PAGADA'),(8,3,'08/08/2019','AT-2019-008','29,93713202','21%',30,'PAGADA'),(9,4,'11/01/2019','AT-2019-009','29,93713202','21%',30,'PAGADA'),(10,4,'06/09/2019','AT-2019-010','29,93713202','21%',30,'PAGADA');
/*!40000 ALTER TABLE `tfacturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tfiles`
--

DROP TABLE IF EXISTS `tfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tfiles` (
  `idArchivo` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `Nombre` text,
  `tipo` text,
  `Source` text,
  PRIMARY KEY (`idArchivo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfiles`
--

LOCK TABLES `tfiles` WRITE;
/*!40000 ALTER TABLE `tfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tidioma`
--

DROP TABLE IF EXISTS `tidioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tidioma` (
  `id Idiomas` int(11) NOT NULL,
  `Idiomas` text,
  `tcursos_Id Curso` int(11) NOT NULL,
  `tcursos_tlicencias_idLicencia` int(11) NOT NULL,
  PRIMARY KEY (`id Idiomas`,`tcursos_Id Curso`,`tcursos_tlicencias_idLicencia`),
  KEY `fk_tidiomas_tcursos1_idx` (`tcursos_Id Curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tidioma`
--

LOCK TABLES `tidioma` WRITE;
/*!40000 ALTER TABLE `tidioma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tidioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tidiomas`
--

DROP TABLE IF EXISTS `tidiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tidiomas` (
  `id Idiomas` int(11) NOT NULL,
  `Idiomas` text,
  PRIMARY KEY (`id Idiomas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tidiomas`
--

LOCK TABLES `tidiomas` WRITE;
/*!40000 ALTER TABLE `tidiomas` DISABLE KEYS */;
INSERT INTO `tidiomas` VALUES (1,'Inglés'),(2,'Español'),(3,'Francés'),(4,'Alemán'),(5,'Chino'),(6,'Ruso');
/*!40000 ALTER TABLE `tidiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiva`
--

DROP TABLE IF EXISTS `tiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiva` (
  `idIva` int(11) NOT NULL,
  `tipo` text,
  PRIMARY KEY (`idIva`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiva`
--

LOCK TABLES `tiva` WRITE;
/*!40000 ALTER TABLE `tiva` DISABLE KEYS */;
INSERT INTO `tiva` VALUES (1,'21%'),(2,'0%');
/*!40000 ALTER TABLE `tiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlicencias`
--

DROP TABLE IF EXISTS `tlicencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tlicencias` (
  `idLicencia` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `idEmpresa` int(11) DEFAULT NULL,
  `nroLicencias` int(11) DEFAULT NULL,
  `licencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLicencia`),
  KEY `licencia_curso_idx` (`idCurso`),
  CONSTRAINT `licencia_curso` FOREIGN KEY (`idCurso`) REFERENCES `tcursos` (`IdCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlicencias`
--

LOCK TABLES `tlicencias` WRITE;
/*!40000 ALTER TABLE `tlicencias` DISABLE KEYS */;
INSERT INTO `tlicencias` VALUES (0,9,8,20,'CP1JCX'),(1,15,8,10,'HR2443'),(2,6,8,15,'EO5YJL'),(3,30,8,5,'K3NGFL'),(4,37,8,15,'KHREKY'),(5,19,8,10,'65UNNY'),(6,2,8,5,'5BZ2MO'),(7,1,8,20,'86BE7F'),(8,35,8,15,'OVNR6Z'),(9,5,8,20,'RVCLEF'),(10,12,8,10,'SPRPH5'),(11,20,9,20,'NYSR88'),(12,90,9,10,'XOONRK'),(13,77,9,5,'OJ1172'),(14,3,9,5,'LL36QF'),(15,5,9,10,'YCCU4S'),(16,19,9,15,'YYIMIJ'),(17,4,9,20,'ZRIM88'),(18,17,9,10,'1Y17NC'),(19,20,9,5,'AFM7LW'),(20,38,9,15,'ABZF5B');
/*!40000 ALTER TABLE `tlicencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlineafactura`
--

DROP TABLE IF EXISTS `tlineafactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tlineafactura` (
  `idFactura` int(11) NOT NULL,
  `idLineaFactura` text,
  `idProducto` text,
  `cantidad` int(11) DEFAULT NULL,
  `idIva` int(11) DEFAULT NULL,
  `baseImponible` text,
  `total` int(11) DEFAULT NULL,
  `iva` text,
  PRIMARY KEY (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlineafactura`
--

LOCK TABLES `tlineafactura` WRITE;
/*!40000 ALTER TABLE `tlineafactura` DISABLE KEYS */;
INSERT INTO `tlineafactura` VALUES (1,'','prod-1',1,1,'29,93713202',30,'21%'),(2,'','prod-2',1,1,'29,93713202',30,'21%'),(3,'','prod-3',1,1,'29,93713202',30,'21%'),(4,'','prod-4',1,1,'29,93713202',30,'21%'),(5,'','prod-5',1,1,'29,93713202',30,'21%'),(6,'','prod-6',1,1,'29,93713202',30,'21%'),(7,'','prod-7',1,1,'29,93713202',30,'21%'),(8,'','prod-8',1,1,'29,93713202',30,'21%'),(9,'','prod-9',1,1,'29,93713202',30,'21%'),(10,'','prod-10',1,1,'29,93713202',30,'21%');
/*!40000 ALTER TABLE `tlineafactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troles`
--

DROP TABLE IF EXISTS `troles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `troles` (
  `idRol` int(11) NOT NULL,
  `subirVideo` tinyint(4) DEFAULT NULL,
  `editarVideo` tinyint(4) DEFAULT NULL,
  `validarVideo` tinyint(4) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troles`
--

LOCK TABLES `troles` WRITE;
/*!40000 ALTER TABLE `troles` DISABLE KEYS */;
INSERT INTO `troles` VALUES (1,0,0,1,'validador/admin'),(2,0,0,0,'alumno'),(3,1,1,0,'profesor'),(4,0,0,0,'empresa');
/*!40000 ALTER TABLE `troles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tusers_has_tcourses`
--

DROP TABLE IF EXISTS `tusers_has_tcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusers_has_tcourses` (
  `idUserCourse` varchar(45) NOT NULL,
  `tusuarios_idUsuario` int(11) NOT NULL,
  `tcursos_IdCurso` int(11) NOT NULL,
  `idLicencia` int(11) DEFAULT NULL,
  `alta` date DEFAULT NULL,
  `avance` decimal(5,2) NOT NULL,
  `idUltimoVideo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUserCourse`),
  KEY `usuario_has_licencia_idx` (`idLicencia`),
  KEY `fk_tusuarios_has_tcursos_tusuarios1_idx` (`tusuarios_idUsuario`),
  KEY `fk_usuarios_has_tcursos_tcursos1_idx` (`tcursos_IdCurso`),
  CONSTRAINT `fk_tusuarios_has_tcursos_tusuarios1` FOREIGN KEY (`tusuarios_idUsuario`) REFERENCES `tusuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_tcursos_tcursos1` FOREIGN KEY (`tcursos_IdCurso`) REFERENCES `tcursos` (`IdCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_has_licencia` FOREIGN KEY (`idLicencia`) REFERENCES `tlicencias` (`idLicencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tusers_has_tcourses`
--

LOCK TABLES `tusers_has_tcourses` WRITE;
/*!40000 ALTER TABLE `tusers_has_tcourses` DISABLE KEYS */;
INSERT INTO `tusers_has_tcourses` VALUES ('0',1,59,NULL,'2019-07-01',33.93,0),('1',1,30,NULL,'2019-07-31',27.04,0),('10',3,6,NULL,'2019-09-01',73.88,5),('11',4,30,NULL,'2019-09-13',18.33,0),('12',4,37,NULL,'2019-06-29',70.03,0),('13',4,19,NULL,'2019-06-15',95.14,8),('14',4,2,6,'2019-08-14',65.64,2),('15',4,1,7,'2019-06-16',42.75,2),('16',5,35,NULL,'2019-07-08',16.84,0),('17',5,77,13,'2019-06-28',55.96,0),('18',6,12,NULL,'2019-09-21',29.28,6),('19',7,20,NULL,'2019-08-06',78.52,0),('2',1,19,NULL,'2019-09-06',33.44,0),('3',2,40,NULL,'2019-09-01',86.05,0),('4',3,5,15,'2019-07-27',29.92,1),('5',3,40,NULL,'2019-08-31',91.47,0),('6',3,59,NULL,'2019-08-13',67.59,0),('7',3,60,NULL,'2019-08-20',63.52,0),('8',3,9,NULL,'2019-08-07',14.85,3),('9',3,15,12,'2019-08-21',83.69,7);
/*!40000 ALTER TABLE `tusers_has_tcourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvideos`
--

DROP TABLE IF EXISTS `tvideos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvideos` (
  `idvideo` int(11) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL,
  `url` text,
  `leccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvideos`
--

LOCK TABLES `tvideos` WRITE;
/*!40000 ALTER TABLE `tvideos` DISABLE KEYS */;
INSERT INTO `tvideos` VALUES (0,1,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(1,1,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(2,1,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(3,1,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(4,1,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(5,2,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(6,2,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(7,2,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(8,2,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(9,2,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(10,3,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(11,3,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(12,3,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(13,3,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(14,3,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(15,4,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(16,4,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(17,4,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(18,4,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(19,4,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(20,5,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(21,5,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(22,5,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(23,5,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(24,5,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(25,6,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(26,6,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(27,6,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(28,6,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(29,6,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(30,7,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(31,7,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(32,7,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(33,7,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(34,7,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(35,8,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(36,8,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(37,8,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(38,8,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(39,8,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(40,9,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(41,9,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(42,9,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(43,9,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(44,9,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(45,10,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(46,10,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(47,10,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(48,10,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(49,10,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(50,11,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(51,11,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(52,11,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(53,11,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(54,11,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(55,12,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(56,12,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(57,12,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(58,12,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(59,12,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(60,13,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(61,13,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(62,13,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(63,13,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(64,13,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(65,14,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(66,14,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(67,14,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(68,14,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(69,14,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(70,15,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(71,15,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(72,15,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(73,15,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(74,15,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(75,16,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(76,16,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(77,16,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(78,16,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(79,16,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(80,17,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(81,17,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(82,17,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(83,17,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(84,17,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(85,18,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(86,18,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(87,18,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(88,18,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(89,18,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(90,19,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(91,19,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(92,19,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(93,19,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(94,19,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(95,20,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(96,20,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(97,20,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(98,20,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(99,20,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(100,21,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(101,21,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(102,21,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(103,21,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(104,21,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(105,22,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(106,22,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(107,22,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(108,22,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(109,22,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(110,23,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(111,23,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(112,23,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(113,23,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(114,23,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(115,24,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(116,24,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(117,24,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(118,24,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(119,24,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(120,25,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(121,25,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(122,25,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(123,25,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(124,25,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(125,26,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(126,26,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(127,26,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(128,26,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(129,26,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(130,27,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(131,27,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(132,27,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(133,27,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(134,27,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(135,28,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(136,28,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(137,28,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(138,28,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(139,28,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(140,29,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(141,29,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(142,29,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(143,29,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(144,29,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(145,30,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(146,30,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(147,30,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(148,30,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(149,30,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(150,31,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(151,31,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(152,31,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(153,31,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(154,31,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(155,32,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(156,32,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(157,32,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(158,32,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(159,32,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(160,33,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(161,33,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(162,33,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(163,33,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(164,33,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(165,34,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(166,34,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(167,34,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(168,34,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(169,34,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(170,35,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(171,35,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(172,35,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(173,35,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(174,35,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(175,36,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(176,36,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(177,36,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(178,36,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(179,36,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(180,37,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(181,37,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(182,37,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(183,37,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(184,37,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(185,38,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(186,38,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(187,38,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(188,38,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(189,38,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(190,39,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(191,39,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(192,39,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(193,39,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(194,39,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(195,40,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(196,40,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(197,40,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(198,40,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(199,40,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(200,41,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(201,41,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(202,41,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(203,41,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(204,41,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(205,42,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(206,42,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(207,42,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(208,42,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(209,42,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(210,43,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(211,43,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(212,43,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(213,43,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(214,43,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(215,44,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(216,44,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(217,44,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(218,44,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(219,44,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(220,45,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(221,45,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(222,45,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(223,45,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(224,45,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(225,46,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(226,46,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(227,46,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(228,46,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(229,46,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(230,47,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(231,47,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(232,47,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(233,47,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(234,47,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(235,48,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(236,48,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(237,48,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(238,48,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(239,48,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(240,49,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(241,49,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(242,49,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(243,49,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(244,49,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(245,50,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(246,50,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(247,50,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(248,50,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(249,50,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(250,51,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(251,51,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(252,51,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(253,51,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(254,51,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(255,52,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(256,52,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(257,52,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(258,52,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(259,52,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(260,53,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(261,53,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(262,53,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(263,53,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(264,53,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(265,54,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(266,54,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(267,54,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(268,54,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(269,54,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(270,55,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(271,55,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(272,55,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(273,55,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(274,55,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(275,56,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(276,56,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(277,56,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(278,56,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(279,56,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(280,57,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(281,57,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(282,57,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(283,57,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(284,57,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(285,58,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(286,58,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(287,58,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(288,58,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(289,58,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(290,59,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(291,59,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(292,59,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(293,59,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(294,59,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(295,60,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(296,60,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(297,60,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(298,60,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(299,60,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(300,61,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(301,61,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(302,61,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(303,61,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(304,61,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(305,62,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(306,62,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(307,62,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(308,62,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(309,62,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(310,63,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(311,63,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(312,63,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(313,63,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(314,63,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(315,64,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(316,64,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(317,64,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(318,64,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(319,64,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(320,65,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(321,65,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(322,65,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(323,65,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(324,65,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(325,66,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(326,66,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(327,66,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(328,66,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(329,66,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(330,67,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(331,67,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(332,67,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(333,67,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(334,67,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(335,68,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(336,68,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(337,68,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(338,68,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(339,68,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(340,69,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(341,69,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(342,69,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(343,69,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(344,69,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(345,70,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(346,70,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(347,70,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(348,70,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(349,70,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(350,71,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(351,71,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(352,71,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(353,71,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(354,71,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(355,72,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(356,72,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(357,72,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(358,72,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(359,72,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(360,73,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(361,73,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(362,73,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(363,73,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(364,73,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(365,74,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(366,74,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(367,74,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(368,74,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(369,74,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(370,75,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(371,75,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(372,75,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(373,75,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(374,75,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(375,76,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(376,76,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(377,76,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(378,76,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(379,76,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(380,77,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(381,77,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(382,77,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(383,77,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(384,77,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(385,78,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(386,78,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(387,78,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(388,78,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(389,78,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(390,79,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(391,79,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(392,79,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(393,79,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(394,79,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(395,80,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(396,80,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(397,80,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(398,80,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(399,80,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(400,81,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(401,81,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(402,81,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(403,81,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(404,81,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(405,82,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(406,82,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(407,82,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(408,82,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(409,82,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(410,83,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(411,83,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(412,83,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(413,83,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(414,83,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(415,84,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(416,84,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(417,84,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(418,84,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(419,84,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(420,85,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(421,85,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(422,85,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(423,85,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(424,85,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(425,86,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(426,86,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(427,86,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(428,86,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(429,86,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(430,87,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(431,87,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(432,87,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(433,87,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(434,87,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(435,88,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(436,88,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(437,88,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(438,88,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(439,88,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(440,89,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(441,89,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(442,89,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(443,89,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(444,89,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(445,90,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(446,90,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(447,90,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(448,90,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(449,90,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(450,91,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(451,91,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(452,91,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(453,91,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(454,91,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(455,92,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(456,92,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(457,92,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(458,92,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(459,92,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(460,93,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(461,93,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(462,93,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(463,93,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(464,93,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(465,94,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(466,94,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(467,94,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(468,94,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(469,94,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(470,95,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(471,95,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(472,95,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(473,95,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(474,95,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(475,96,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(476,96,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(477,96,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(478,96,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(479,96,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4),(480,97,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',1),(481,97,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',2),(482,97,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',3),(483,97,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',4),(484,97,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',1),(485,98,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',2),(486,98,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',3),(487,98,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',4),(488,98,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',1),(489,98,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',2),(490,99,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=1',3),(491,99,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=2',4),(492,99,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=3',1),(493,99,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=4',2),(494,99,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=5',3),(495,100,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=6',4),(496,100,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=7',1),(497,100,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=8',2),(498,100,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=9',3),(499,100,'https://www.youtube.com/watch?v=G2FCfQj-9ig&list=PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS&index=10',4);
/*!40000 ALTER TABLE `tvideos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 23:13:54
