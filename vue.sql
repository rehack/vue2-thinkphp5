/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : vue

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-02-18 10:51:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vue_admin
-- ----------------------------
DROP TABLE IF EXISTS `vue_admin`;
CREATE TABLE `vue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vue_admin
-- ----------------------------
INSERT INTO `vue_admin` VALUES ('1', 'admin', '14e1b600b1fd579f47433b88e8d85291');

-- ----------------------------
-- Table structure for vue_user
-- ----------------------------
DROP TABLE IF EXISTS `vue_user`;
CREATE TABLE `vue_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qqnum` int(11) unsigned DEFAULT NULL COMMENT 'qq号',
  `wechat` char(50) DEFAULT NULL COMMENT '微信号',
  `money` decimal(5,2) unsigned NOT NULL,
  `btime` varchar(255) NOT NULL,
  `bcycle` varchar(20) NOT NULL,
  `etime` varchar(100) NOT NULL,
  `sip` varchar(255) NOT NULL,
  `ssport` int(255) unsigned NOT NULL,
  `sspwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vue_user
-- ----------------------------
INSERT INTO `vue_user` VALUES ('1', '631822324', null, '60.00', '2016-07-05', '年付', '2017-07-05', '117.121.65.46', '9005', 'nkOoe2RLa');
INSERT INTO `vue_user` VALUES ('2', '490104033', null, '70.00', '2016-07-07', '年付', '2017-07-07', '117.121.65.46', '9001', 'IvTiPMOe4');
INSERT INTO `vue_user` VALUES ('3', '2067874163', 'sandy', '69.00', '2016-07-07', '年付', '2017-07-07', '117.121.65.46', '9002', 'zHWY03auM');
INSERT INTO `vue_user` VALUES ('4', '1593222737', null, '69.00', '2016-07-09', '年付', '2017-07-09', '117.121.65.46', '9003', '2F48VwLv1');
INSERT INTO `vue_user` VALUES ('5', '1284035992', null, '69.00', '2016-07-11', '年付', '2017-07-11', '117.121.65.46', '9004', 'eM3PwgPw7');
INSERT INTO `vue_user` VALUES ('6', '176261394', 'lovely-su', '65.00', '2016-09-18', '年付', '2017-09-18', '117.121.65.46', '9006', 'Dn2Jzd3rh');
INSERT INTO `vue_user` VALUES ('7', '2067874163', 'sandy', '69.00', '2017-01-01', '年付', '2018-01-01', '117.121.65.46', '9007', 'S8GNBtUTY');
INSERT INTO `vue_user` VALUES ('8', '176261394', 'lovely-su', '65.00', '2017-02-05', '年付', '2018-02-05', '117.121.65.46', '9008', 'a4iFDYCqu');
