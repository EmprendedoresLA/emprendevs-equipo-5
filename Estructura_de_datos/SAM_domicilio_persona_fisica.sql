CREATE DATABASE  IF NOT EXISTS `SAM` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `SAM`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SAM
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.12.04.2

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
-- Table structure for table `domicilio_persona_fisica`
--

DROP TABLE IF EXISTS `domicilio_persona_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilio_persona_fisica` (
  `id_domicilio_persona_fisica` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_pais` bigint(20) DEFAULT NULL,
  `id_provincia` bigint(20) DEFAULT NULL,
  `id_localidad` bigint(20) DEFAULT NULL,
  `id_partido` bigint(8) DEFAULT NULL,
  `id_zona` int(8) DEFAULT NULL,
  `id_calle` int(8) DEFAULT NULL,
  `piso` bigint(20) DEFAULT NULL,
  `depto` varchar(10) DEFAULT NULL,
  `numero` bigint(20) DEFAULT NULL,
  `cp` varchar(20) DEFAULT NULL,
  `id_tipo_domicilio` bigint(8) DEFAULT NULL,
  `id_persona_fisica` int(8) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `usuario_creacion` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `host_creacion` varchar(100) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `host_modificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_domicilio_persona_fisica`),
  KEY `fk_id_domicilio_pf_110` (`id_pais`),
  KEY `fk_id_domicilio_pf_120` (`id_provincia`),
  KEY `fk_id_domicilio_pf_130` (`id_localidad`),
  KEY `fk_id_domicilio_pf_140` (`id_partido`),
  KEY `fk_id_domicilio_pf_150` (`id_zona`),
  KEY `fk_id_domicilio_pf_160` (`id_calle`),
  KEY `fk_id_domicilio_pf_180` (`id_tipo_domicilio`),
  KEY `fk_persona_fisica_idx` (`id_persona_fisica`),
  CONSTRAINT `fk_id_domicilio_pf_110` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`),
  CONSTRAINT `fk_id_domicilio_pf_120` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`),
  CONSTRAINT `fk_id_domicilio_pf_130` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id_localidad`),
  CONSTRAINT `fk_id_domicilio_pf_140` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`),
  CONSTRAINT `fk_id_domicilio_pf_150` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id_zona`),
  CONSTRAINT `fk_id_domicilio_pf_160` FOREIGN KEY (`id_calle`) REFERENCES `calle` (`id_calle`),
  CONSTRAINT `fk_id_domicilio_pf_180` FOREIGN KEY (`id_tipo_domicilio`) REFERENCES `tipo_domicilio` (`id_tipo_domicilio`),
  CONSTRAINT `fk_persona_fisica` FOREIGN KEY (`id_persona_fisica`) REFERENCES `personas_fisicas` (`id_persona_fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio_persona_fisica`
--

LOCK TABLES `domicilio_persona_fisica` WRITE;
/*!40000 ALTER TABLE `domicilio_persona_fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `domicilio_persona_fisica` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bi_domicilio_persona_fisica BEFORE INSERT ON SAM.domicilio_persona_fisica FOR EACH ROW 
                                                                                BEGIN 
                                                                                	set new.fecha_creacion := NOW(); 
                                                                                	set new.usuario_creacion :=  user(); 
                                                                                	set new.host_creacion := user(); 
                                                                                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bu_domicilio_persona_fisica BEFORE UPDATE ON SAM.domicilio_persona_fisica FOR EACH ROW
                                                                                BEGIN
                                                                                	set new.fecha_modificacion := NOW();
                                                                                	set new.usuario_modificacion :=  user();
                                                                                	set new.host_modificacion := user();
                                                                                END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-14 15:25:34
