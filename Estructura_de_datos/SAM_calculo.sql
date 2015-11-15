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
-- Table structure for table `calculo`
--

DROP TABLE IF EXISTS `calculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calculo` (
  `id_calculo` bigint(8) NOT NULL AUTO_INCREMENT,
  `id_tipo_tasa` bigint(8) DEFAULT NULL,
  `id_tipo_filtro_calculo` bigint(8) DEFAULT NULL,
  `id_expediente_control` bigint(20) DEFAULT NULL,
  `id_tipo_anio` bigint(8) DEFAULT NULL,
  `id_tipo_bimestre` bigint(8) DEFAULT NULL,
  `descripcion` varchar(30) NOT NULL,
  `calcula_tasa` bigint(8) DEFAULT NULL,
  `fecha_primer_vencimiento` date DEFAULT NULL,
  `fecha_segundo_vencimiento` date DEFAULT NULL,
  `resultado_calculo` varchar(500) DEFAULT NULL,
  `observaciones` varchar(40) DEFAULT NULL,
  `usuario_creacion` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `host_creacion` varchar(100) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `host_modificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_calculo`),
  KEY `fk_reference_50` (`id_tipo_tasa`),
  KEY `fk_reference_52` (`id_tipo_filtro_calculo`),
  KEY `fk_reference_54` (`id_tipo_anio`),
  KEY `fk_reference_55` (`id_tipo_bimestre`),
  KEY `fk_calculo_expediente_idx` (`id_expediente_control`),
  KEY `fk_calculo_tipo_general_idx` (`calcula_tasa`),
  CONSTRAINT `fk_calculo_expediente` FOREIGN KEY (`id_expediente_control`) REFERENCES `expediente` (`id_expediente_control`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_calculo_tipo_general` FOREIGN KEY (`calcula_tasa`) REFERENCES `tipo_general` (`id_tipo_general`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reference_50` FOREIGN KEY (`id_tipo_tasa`) REFERENCES `tipo_tasa` (`id_tipo_tasa`),
  CONSTRAINT `fk_reference_54` FOREIGN KEY (`id_tipo_anio`) REFERENCES `tipo_anio` (`id_tipo_anio`),
  CONSTRAINT `fk_reference_55` FOREIGN KEY (`id_tipo_bimestre`) REFERENCES `tipo_bimestre` (`id_tipo_bimestre`),
  CONSTRAINT `fk_tipo_filtro_calculo` FOREIGN KEY (`id_tipo_filtro_calculo`) REFERENCES `calculo_filtro` (`id_calculo_filtro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculo`
--

LOCK TABLES `calculo` WRITE;
/*!40000 ALTER TABLE `calculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `calculo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bi_calculo BEFORE INSERT ON SAM.calculo FOR EACH ROW 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bu_calculo BEFORE UPDATE ON SAM.calculo FOR EACH ROW
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

-- Dump completed on 2015-11-14 15:25:33
