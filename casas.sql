-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.10.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla casas.casas: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `casas` DISABLE KEYS */;
INSERT INTO `casas` (`id`, `precios`, `baños`, `camas`, `direccion`, `ciudad`, `foto`) VALUES
	(1, '$145', '3', '4', 'El paraiso', 'Danli', 'foto'),
	(2, '$145', '2', '2', 'El paraiso', 'trojes', 'foto'),
	(4, '$145', '2', '2', 'Danli', 'El paraiso', 'foto');
/*!40000 ALTER TABLE `casas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
