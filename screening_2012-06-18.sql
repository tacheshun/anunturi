# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.5-m8)
# Database: screening
# Generation Time: 2012-06-18 04:59:14 +0300
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table anunturi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `anunturi`;

CREATE TABLE `anunturi` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `titlu` varchar(60) DEFAULT '',
  `descriere` text,
  `is_promoted` tinyint(1) DEFAULT NULL,
  `is_promoted_top` tinyint(1) DEFAULT NULL,
  `creat_la` datetime NOT NULL,
  `ultima_modificare` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

LOCK TABLES `anunturi` WRITE;
/*!40000 ALTER TABLE `anunturi` DISABLE KEYS */;

INSERT INTO `anunturi` (`id`, `titlu`, `descriere`, `is_promoted`, `is_promoted_top`, `creat_la`, `ultima_modificare`)
VALUES
	(1,'Cubilia Curae Donec','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.',0,0,'2012-06-12 20:11:55','2012-06-18 04:51:36'),
	(2,'Aliquam ultrices iaculis odio.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',0,0,'2012-06-14 18:04:55','2012-06-18 03:47:05'),
	(3,'diam eu dolor egestas rhoncus. Proin','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,0,'2012-06-11 20:34:55','2012-06-18 01:51:15'),
	(4,'nascetur ridiculus','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',0,0,'2012-06-12 15:30:55','2012-06-18 03:50:33'),
	(5,'Nunc ac sem ut dolor dapibus','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',0,0,'2012-06-12 03:34:55','2012-06-18 03:47:39'),
	(6,'lacus. Cras interdum. Nunc','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',1,1,'2012-06-18 01:34:55','2012-06-18 04:51:23'),
	(7,'ornare lectus justo eu arcu. Morbi','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',1,0,'2012-06-17 20:34:55','2012-06-18 04:51:39'),
	(8,'lorem,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,0,'2012-06-01 20:34:55','2012-06-18 04:51:48'),
	(9,'semper auctor.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis',1,1,'2012-06-18 06:34:55','2012-06-18 04:51:22'),
	(10,'amet, risus. Donec nibh enim, gravida','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',1,0,'2012-06-17 23:34:55','2012-06-18 04:51:40'),
	(11,'auctor. Mauris vel turpis.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.',0,0,'2012-06-12 23:34:55','2012-06-18 03:50:15'),
	(12,'In tincidunt congue turpis. In condimentum. Donec at','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque',0,0,'2012-06-12 20:34:55','2012-06-18 01:51:26'),
	(13,'sollicitudin orci sem eget','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.',0,0,'2012-06-11 18:34:55','2012-06-18 03:51:39'),
	(14,'lobortis augue','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',0,0,'2012-06-12 20:34:53','2012-06-18 03:50:02'),
	(15,'lorem, luctus ut, pellentesque eget, dictum placerat, augue.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',0,0,'2012-06-12 00:34:55','2012-06-18 03:49:55'),
	(16,'et magnis dis parturient','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',0,0,'2012-06-12 20:34:22','2012-06-18 03:49:48'),
	(17,'lacus. Cras interdum. Nunc sollicitudin','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',0,0,'2012-06-12 20:24:55','2012-06-18 03:50:09'),
	(18,'ac arcu.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',0,0,'2012-06-12 20:34:00','2012-06-18 03:49:36'),
	(19,'In ornare sagittis felis. Donec tempor,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,',0,0,'2012-06-12 22:34:55','2012-06-18 03:49:41'),
	(20,'augue scelerisque mollis.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,0,'2012-06-12 20:00:55','2012-06-18 01:51:33'),
	(21,'mollis nec, cursus a, enim. Suspendisse aliquet, sem','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,0,'2012-06-12 20:34:51','2012-06-18 04:51:43'),
	(22,'nibh vulputate mauris sagittis placerat. Cras dictum','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,0,'2012-06-10 20:34:55','2012-06-18 01:51:35'),
	(23,'mauris ut mi. Duis risus odio,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,0,'2012-06-10 20:34:55','2012-06-18 01:51:36'),
	(24,'iaculis enim, sit amet ornare lectus','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,0,'2012-06-01 20:34:55','2012-06-18 01:51:38'),
	(25,'felis, adipiscing fringilla,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',1,1,'2012-06-18 00:34:55','2012-06-18 04:51:24'),
	(26,'sit amet','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,0,'2012-06-13 21:30:55','2012-06-18 03:47:11'),
	(27,'interdum enim non nisi. Aenean','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,0,'2012-06-12 00:34:55','2012-06-18 01:51:42'),
	(28,'magna tellus faucibus leo, in lobortis tellus','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',0,0,'2012-06-10 20:34:55','2012-06-18 01:51:43'),
	(29,'erat eget ipsum. Suspendisse sagittis. Nullam vitae','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec',0,0,'2012-05-02 20:34:51','2012-06-18 01:51:44'),
	(30,'blandit at, nisi. Cum','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',0,0,'2012-04-10 20:04:55','2012-06-18 03:49:13'),
	(31,'Etiam laoreet,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',0,0,'2012-06-10 20:35:55','2012-06-18 01:51:47'),
	(32,'gravida.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',0,0,'2012-06-12 20:36:55','2012-06-18 04:51:43'),
	(33,'penatibus et magnis dis parturient montes, nascetur ridiculu','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,0,'2012-06-12 20:37:55','2012-06-18 04:51:44'),
	(34,'malesuada vel, convallis in,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,0,'2012-06-11 20:38:55','2012-06-18 04:51:34'),
	(35,'sit amet nulla. Donec non justo. Proin non','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis',0,0,'2012-06-12 21:30:00','2012-06-18 04:07:47'),
	(36,'Sed dictum. Proin eget','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',0,0,'2011-06-10 20:34:55','2012-06-18 03:49:05'),
	(37,'torquent per','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,0,'2011-06-02 20:34:00','2012-06-18 03:48:51'),
	(38,'senectus et netus et malesuada fames ac','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,0,'2011-06-02 20:24:55','2012-06-18 03:48:57'),
	(39,'bibendum. Donec felis orci, adipiscing non,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',0,0,'2011-06-02 20:34:11','2012-06-18 03:48:45'),
	(40,'Fusce diam nunc, ullamcorper eu,','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',0,0,'2011-06-02 20:11:55','2012-06-18 03:48:23'),
	(41,'nec orci. Donec nibh.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,0,'2011-06-02 12:14:55','2012-06-18 03:48:40'),
	(42,'Proin vel arcu eu odio tristique pharetra. Quisque ac libero','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.',0,0,'2011-06-02 12:34:55','2012-06-18 03:48:32'),
	(43,'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec',0,0,'2011-06-02 14:34:55','2012-06-18 03:48:27');

/*!40000 ALTER TABLE `anunturi` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
