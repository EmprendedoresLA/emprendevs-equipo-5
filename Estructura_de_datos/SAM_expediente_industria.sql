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
-- Table structure for table `expediente_industria`
--

DROP TABLE IF EXISTS `expediente_industria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expediente_industria` (
  `id_expediente_industria` int(8) NOT NULL AUTO_INCREMENT,
  `id_tipo_operacion_carga_descarga` bigint(8) DEFAULT NULL,
  `id_expediente_control` bigint(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `m2_cubierto` decimal(30,4) DEFAULT NULL,
  `m2_semicubierto` decimal(30,4) DEFAULT NULL,
  `m2_totales` decimal(30,4) DEFAULT NULL,
  `materia_prima` int(8) DEFAULT NULL,
  `instalaciones_mecanicas` int(8) DEFAULT NULL,
  `modo_eliminacion_ruidos` char(10) DEFAULT NULL,
  `residuos` char(10) DEFAULT NULL COMMENT 'Liquidos o solidos',
  `modo_eliminacion_residuos` char(10) DEFAULT NULL,
  `energia_maxima_admisible` decimal(10,3) DEFAULT NULL,
  `nro_operarios_autorizados` int(5) DEFAULT NULL,
  `maquinarias_otras_hp` varchar(200) DEFAULT NULL,
  `total_hp_instalados` decimal(10,4) DEFAULT NULL,
  `observaciones` varchar(40) DEFAULT NULL,
  `usuario_creacion` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `host_creacion` varchar(100) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `host_modificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_expediente_industria`),
  KEY `fk_reference_41` (`id_tipo_operacion_carga_descarga`),
  KEY `fk_expediente_industria_idx` (`id_expediente_control`),
  CONSTRAINT `fk_expediente_industria` FOREIGN KEY (`id_expediente_control`) REFERENCES `expediente` (`id_expediente_control`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reference_41` FOREIGN KEY (`id_tipo_operacion_carga_descarga`) REFERENCES `tipo_operacion_carga_descarga` (`id_tipo_operacion_carga_descarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente_industria`
--

LOCK TABLES `expediente_industria` WRITE;
/*!40000 ALTER TABLE `expediente_industria` DISABLE KEYS */;
/*!40000 ALTER TABLE `expediente_industria` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bi_expediente_industria BEFORE INSERT ON SAM.expediente_industria FOR EACH ROW 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bu_expediente_industria BEFORE UPDATE ON SAM.expediente_industria FOR EACH ROW
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
