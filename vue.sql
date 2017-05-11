-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: vue_tp
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `vue_admin`
--

DROP TABLE IF EXISTS `vue_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vue_admin`
--

LOCK TABLES `vue_admin` WRITE;
/*!40000 ALTER TABLE `vue_admin` DISABLE KEYS */;
INSERT INTO `vue_admin` VALUES (1,'admin','14e1b600b1fd579f47433b88e8d85291');
/*!40000 ALTER TABLE `vue_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vue_user`
--

DROP TABLE IF EXISTS `vue_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vue_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qqnum` int(11) unsigned DEFAULT NULL COMMENT 'qq号',
  `wechat` char(50) DEFAULT NULL COMMENT '微信号',
  `money` decimal(5,2) unsigned NOT NULL,
  `btime` int(11) unsigned NOT NULL,
  `long` tinyint(3) unsigned NOT NULL COMMENT '够买时长',
  `bcycle` varchar(20) NOT NULL COMMENT 'y=>年付m=>月付d=>日付',
  `etime` int(11) unsigned NOT NULL,
  `sip` varchar(255) NOT NULL,
  `ssport` int(255) unsigned NOT NULL,
  `sspwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vue_user`
--

LOCK TABLES `vue_user` WRITE;
/*!40000 ALTER TABLE `vue_user` DISABLE KEYS */;
INSERT INTO `vue_user` VALUES (1,631822324,NULL,60.00,1467648000,1,'y',1499184000,'117.121.65.46',9005,'nkOoe2RLa'),(2,490104033,NULL,70.00,1467820800,1,'y',1499356800,'117.121.65.46',9001,'IvTiPMOe4'),(3,2067874163,'sandy',69.00,1467820800,1,'y',1499356800,'117.121.65.46',9002,'zHWY03auM'),(4,1593222737,NULL,69.00,1467993600,1,'y',1499529600,'117.121.65.46',9003,'2F48VwLv1'),(5,1284035992,NULL,69.00,1468166400,1,'y',1499702400,'117.121.65.46',9004,'eM3PwgPw7'),(6,176261394,'lovely-su',65.00,1474128000,1,'y',1505664000,'117.121.65.46',9006,'Dn2Jzd3rh'),(7,2067874163,'sandy',69.00,1483200000,1,'y',1514736000,'117.121.65.46',9007,'S8GNBtUTY'),(8,176261394,'lovely-su',65.00,1486224000,1,'y',1517760000,'117.121.65.46',9008,'a4iFDYCqu'),(9,952255487,'hyaui',88.00,1494432000,2,'m',1499702400,'117.121.65.46',8002,'123456'),(10,952255487,'hyaui',88.00,1494432000,26,'d',1496678400,'117.121.65.46',8002,'123456');
/*!40000 ALTER TABLE `vue_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 17:30:29
