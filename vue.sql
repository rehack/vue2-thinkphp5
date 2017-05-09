/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.53 : Database - vue_tp
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vue_tp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vue_tp`;

/*Table structure for table `vue_admin` */

DROP TABLE IF EXISTS `vue_admin`;

CREATE TABLE `vue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `vue_admin` */

insert  into `vue_admin`(`id`,`username`,`password`) values (1,'admin','14e1b600b1fd579f47433b88e8d85291');

/*Table structure for table `vue_user` */

DROP TABLE IF EXISTS `vue_user`;

CREATE TABLE `vue_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qqnum` int(11) unsigned DEFAULT NULL COMMENT 'qq号',
  `wechat` char(50) DEFAULT NULL COMMENT '微信号',
  `money` decimal(5,2) unsigned NOT NULL,
  `btime` int(11) unsigned NOT NULL,
  `bcycle` varchar(20) NOT NULL,
  `etime` int(11) unsigned NOT NULL,
  `sip` varchar(255) NOT NULL,
  `ssport` int(255) unsigned NOT NULL,
  `sspwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `vue_user` */

insert  into `vue_user`(`id`,`qqnum`,`wechat`,`money`,`btime`,`bcycle`,`etime`,`sip`,`ssport`,`sspwd`) values (1,631822324,NULL,'60.00',1467648000,'年付',1499184000,'117.121.65.46',9005,'nkOoe2RLa'),(2,490104033,NULL,'70.00',1467820800,'年付',1499356800,'117.121.65.46',9001,'IvTiPMOe4'),(3,2067874163,'sandy','69.00',1467820800,'年付',1499356800,'117.121.65.46',9002,'zHWY03auM'),(4,1593222737,NULL,'69.00',1467993600,'年付',1499529600,'117.121.65.46',9003,'2F48VwLv1'),(5,1284035992,NULL,'69.00',1468166400,'年付',1499702400,'117.121.65.46',9004,'eM3PwgPw7'),(6,176261394,'lovely-su','65.00',1474128000,'年付',1505664000,'117.121.65.46',9006,'Dn2Jzd3rh'),(7,2067874163,'sandy','69.00',1483200000,'年付',1514736000,'117.121.65.46',9007,'S8GNBtUTY'),(8,176261394,'lovely-su','65.00',1486224000,'年付',1517760000,'117.121.65.46',9008,'a4iFDYCqu');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
