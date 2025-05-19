-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6859
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bilbaoskp
CREATE DATABASE IF NOT EXISTS `bilbaoskp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bilbaoskp`;

-- Volcando estructura para tabla bilbaoskp.cancelaciones
CREATE TABLE IF NOT EXISTS `cancelaciones` (
  `partida_id` int(11) NOT NULL,
  `fecha_cancelacion` date NOT NULL,
  `num_jugadores` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`partida_id`),
  CONSTRAINT `FK_cancelaciones_partidas_clase` FOREIGN KEY (`partida_id`) REFERENCES `partidas_clase` (`id_partida`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.centros
CREATE TABLE IF NOT EXISTS `centros` (
  `id_suscriptor` int(11) NOT NULL AUTO_INCREMENT,
  `cod_centro` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `num_alumnos` int(11) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `telefono` varchar(20) NOT NULL,
  `tipo_suscriptor` enum('centro','ordinario') DEFAULT NULL,
  PRIMARY KEY (`id_suscriptor`),
  CONSTRAINT `FK_centros_suscriptores` FOREIGN KEY (`id_suscriptor`) REFERENCES `suscriptores` (`id_suscriptor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.clases
CREATE TABLE IF NOT EXISTS `clases` (
  `nom_clase` varchar(100) NOT NULL,
  `id_suscriptor` int(11) NOT NULL,
  PRIMARY KEY (`nom_clase`),
  KEY `FK_clases_centros` (`id_suscriptor`),
  CONSTRAINT `FK_clases_centros` FOREIGN KEY (`id_suscriptor`) REFERENCES `centros` (`id_suscriptor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `cod_compra` int(11) NOT NULL AUTO_INCREMENT,
  `pago` double NOT NULL DEFAULT 0,
  `fecha` date NOT NULL,
  `id_suscriptor` int(11) NOT NULL,
  PRIMARY KEY (`cod_compra`),
  KEY `FK_compra_suscriptores` (`id_suscriptor`),
  CONSTRAINT `FK_compra_suscriptores` FOREIGN KEY (`id_suscriptor`) REFERENCES `suscriptores` (`id_suscriptor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.cupones
CREATE TABLE IF NOT EXISTS `cupones` (
  `id_cupon` int(11) NOT NULL AUTO_INCREMENT,
  `id_suscriptor` int(11) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `estado` enum('usado','disponible','reservado') NOT NULL DEFAULT 'disponible',
  PRIMARY KEY (`id_cupon`),
  KEY `FK__suscriptores` (`id_suscriptor`),
  CONSTRAINT `FK__suscriptores` FOREIGN KEY (`id_suscriptor`) REFERENCES `suscriptores` (`id_suscriptor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.escape_room
CREATE TABLE IF NOT EXISTS `escape_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_partida` int(11) NOT NULL,
  `id_suscriptor` int(11) NOT NULL,
  `tiempo_seg` int(11) NOT NULL,
  `pistas_usadas` int(11) NOT NULL,
  `puntos_totales` int(11) NOT NULL,
  `tipo_suscriptor` enum('centro','ordinario') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_escape_room_partida` (`id_partida`),
  KEY `FK_escape_room_suscriptores` (`id_suscriptor`),
  CONSTRAINT `FK_escape_room_partida` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_escape_room_suscriptores` FOREIGN KEY (`id_suscriptor`) REFERENCES `suscriptores` (`id_suscriptor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.partida
CREATE TABLE IF NOT EXISTS `partida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_partida` enum('centro','ordinaria') NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.partidas_clase
CREATE TABLE IF NOT EXISTS `partidas_clase` (
  `id_partida` int(11) NOT NULL,
  `nom_clase` varchar(100) NOT NULL,
  `fecha_activacion` date NOT NULL,
  `num_jugadores` int(11) NOT NULL DEFAULT 0,
  `estado` varchar(50) NOT NULL,
  `cod_partida` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_partida`),
  KEY `FK_partidas_clase_clases` (`nom_clase`),
  CONSTRAINT `FK_partidas_clase_clases` FOREIGN KEY (`nom_clase`) REFERENCES `clases` (`nom_clase`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partidas_clase_partida` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.plan_suscripcion
CREATE TABLE IF NOT EXISTS `plan_suscripcion` (
  `tipo_suscripcion` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`tipo_suscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bilbaoskp.suscriptores
CREATE TABLE IF NOT EXISTS `suscriptores` (
  `id_suscriptor` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `fecha_alta` date NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_suscriptor`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
