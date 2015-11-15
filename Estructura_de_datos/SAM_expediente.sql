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
-- Table structure for table `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expediente` (
  `id_expediente_control` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_ddjj` bigint(20) DEFAULT NULL,
  `anio_ddjj` bigint(8) NOT NULL,
  `id_expediente` bigint(20) NOT NULL,
  `anio` bigint(8) NOT NULL,
  `telefono` varchar(45) CHARACTER SET big5 DEFAULT NULL,
  `nombre_fantasia` varchar(100) DEFAULT NULL,
  `nombre_apellido` varchar(100) DEFAULT NULL,
  `CUIT_CUIL_DNI` varchar(45) DEFAULT NULL,
  `id_expediente_estado` bigint(8) NOT NULL,
  `id_estado_de_tramite` bigint(20) NOT NULL,
  `id_tipo_establecimiento` int(8) NOT NULL,
  `cantidad_medida` decimal(10,3) DEFAULT NULL,
  `internacion` bigint(8) DEFAULT NULL,
  `baja` date DEFAULT NULL,
  `estado_tipo` varchar(30) DEFAULT NULL,
  `requiere_ddjj` bigint(8) NOT NULL,
  `local_interno` bigint(8) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `activo_fijo` double DEFAULT NULL,
  `cant_empleados` int(11) DEFAULT NULL,
  `horario_atenc` varchar(200) DEFAULT NULL,
  `memoria` varchar(500) DEFAULT NULL,
  `maquinaria` varchar(200) DEFAULT NULL,
  `total_hp` int(11) DEFAULT NULL,
  `usuario_creacion` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `host_creacion` varchar(100) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `host_modificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_expediente_control`),
  UNIQUE KEY `ak_kid_expediente_control` (`id_expediente_control`),
  UNIQUE KEY `id_expediente_anio_UNIQUE` (`id_expediente`,`anio`),
  KEY `fk_tipo_general` (`local_interno`),
  KEY `fk_expediente_estado` (`id_expediente_estado`),
  KEY `fk_expediente_estado_de_tramite` (`id_estado_de_tramite`),
  KEY `fk_expediente_establecimiento` (`id_tipo_establecimiento`),
  KEY `fk_expediente_requiere_ddj_idx` (`requiere_ddjj`),
  KEY `fk_expediente_internacion_idx` (`internacion`),
  KEY `fk_tipo_anio_idx` (`anio`),
  KEY `fk_tipo_anio_ddjj_idx` (`anio_ddjj`),
  CONSTRAINT `fk_expediente_estado` FOREIGN KEY (`id_expediente_estado`) REFERENCES `expediente_estado` (`id_expediente_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_expediente_estado_de_tramite` FOREIGN KEY (`id_estado_de_tramite`) REFERENCES `expediente_estado_de_tramite` (`id_estado`),
  CONSTRAINT `fk_expediente_internacion` FOREIGN KEY (`internacion`) REFERENCES `tipo_general` (`id_tipo_general`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_expediente_tipo_establecimiento` FOREIGN KEY (`id_tipo_establecimiento`) REFERENCES `tipo_establecimiento` (`id_tipo_establecimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_local_interno` FOREIGN KEY (`local_interno`) REFERENCES `tipo_general` (`id_tipo_general`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_requiere_ddj` FOREIGN KEY (`requiere_ddjj`) REFERENCES `tipo_general` (`id_tipo_general`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_anio` FOREIGN KEY (`anio`) REFERENCES `tipo_anio` (`id_tipo_anio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_anio_ddjj` FOREIGN KEY (`anio_ddjj`) REFERENCES `tipo_anio` (`id_tipo_anio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente`
--

LOCK TABLES `expediente` WRITE;
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `expediente_AINS` AFTER INSERT ON expediente FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
  insert into expediente_documento(id_expediente_control, tipo_documento)
   select new.id_expediente_control, id_tipo_documento_expediente
     from tipo_documento_expediente
    where habilitado = 1 */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER SAM.aud_bu_expediente BEFORE UPDATE ON SAM.expediente FOR EACH ROW
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

-- Dump completed on 2015-11-14 15:25:32
