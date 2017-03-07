-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for compass_new
DROP DATABASE IF EXISTS `compass`;
CREATE DATABASE IF NOT EXISTS `compass` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `compass`;


-- Dumping structure for table compass_new.campaign
DROP TABLE IF EXISTS `campaign`;
CREATE TABLE IF NOT EXISTS `campaign` (
  `CAMPAIGN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `IMAGE_URL` longtext,
  `DONATION_AMOUNT` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CAMPAIGN_ID`),
  KEY `FK_campaign_users` (`USER_ID`),
  CONSTRAINT `FK_campaign_users` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.campaign: ~0 rows (approximately)
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;


-- Dumping structure for table compass_new.owner_detail
DROP TABLE IF EXISTS `owner_detail`;
CREATE TABLE IF NOT EXISTS `owner_detail` (
  `OWNER_DETAIL_ID` int(10) NOT NULL AUTO_INCREMENT,
  `SCHOOL_ID` int(10) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TITLE` varchar(20) NOT NULL,
  PRIMARY KEY (`OWNER_DETAIL_ID`),
  KEY `FK_owner_detail_school_detail` (`SCHOOL_ID`),
  CONSTRAINT `FK_owner_detail_school_detail` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school_detail` (`SCHOOL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.owner_detail: ~4 rows (approximately)
/*!40000 ALTER TABLE `owner_detail` DISABLE KEYS */;
INSERT INTO `owner_detail` (`OWNER_DETAIL_ID`, `SCHOOL_ID`, `FIRST_NAME`, `LAST_NAME`, `DOB`, `GENDER`, `PHONE_NUMBER`, `CREATED_DATE`, `TITLE`) VALUES
	(9, 13, 'asdadfgadfg', 'adfgadfg', NULL, NULL, NULL, '2015-09-18 18:40:04', 'Mr'),
	(10, 14, 'surjit', 'kumar', NULL, NULL, NULL, '2015-09-21 08:29:59', 'Mr'),
	(11, 15, 'werweq', 'rwerw', NULL, NULL, NULL, '2015-09-21 14:54:14', 'Mr'),
	(12, 16, 'ertert', 'erter', NULL, NULL, NULL, '2015-09-21 14:55:38', 'Mrs');
/*!40000 ALTER TABLE `owner_detail` ENABLE KEYS */;


-- Dumping structure for table compass_new.payment
DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `PAYMENT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `SCHOOL_ID` int(10) NOT NULL,
  `BT_CUSTOMER_ID` varchar(30) DEFAULT NULL,
  `BT_SUBSCRIPTION_ID` varchar(30) DEFAULT NULL,
  `BT_PLAN_ID` varchar(30) DEFAULT NULL,
  `SUBSCRIPTION_STATUS` varchar(30) DEFAULT 'ACTIVE',
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `PAYMENT_TYPE_METHOD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `FK_payment_school_detail` (`SCHOOL_ID`),
  CONSTRAINT `FK_payment_school_detail` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school_detail` (`SCHOOL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.payment: ~4 rows (approximately)
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`PAYMENT_ID`, `SCHOOL_ID`, `BT_CUSTOMER_ID`, `BT_SUBSCRIPTION_ID`, `BT_PLAN_ID`, `SUBSCRIPTION_STATUS`, `CREATED_DATE`, `END_DATE`, `PAYMENT_TYPE_METHOD`) VALUES
	(11, 13, '85501276', 'd25zwm', '1', 'ACTIVE', NULL, NULL, 'credit_card'),
	(12, 14, '12016454', '2wgsg2', '1', 'ACTIVE', NULL, NULL, 'credit_card'),
	(13, 15, '84121756', '2jg5tb', '1', 'ACTIVE', NULL, NULL, 'credit_card'),
	(14, 16, '33972959', '9cj2db', '1', 'ACTIVE', NULL, NULL, 'credit_card');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


-- Dumping structure for table compass_new.payment_log
DROP TABLE IF EXISTS `payment_log`;
CREATE TABLE IF NOT EXISTS `payment_log` (
  `PAYMENT_LOG_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PAYMENT_ID` int(10) NOT NULL,
  `PAYMENT_TYPE_METHOD` varchar(50) DEFAULT NULL,
  `AMOUNT` varchar(30) DEFAULT NULL,
  `TRANSACTION_ID` varchar(30) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_LOG_ID`),
  KEY `FK_payment_log_payment` (`PAYMENT_ID`),
  CONSTRAINT `FK_payment_log_payment` FOREIGN KEY (`PAYMENT_ID`) REFERENCES `payment` (`PAYMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.payment_log: ~4 rows (approximately)
/*!40000 ALTER TABLE `payment_log` DISABLE KEYS */;
INSERT INTO `payment_log` (`PAYMENT_LOG_ID`, `PAYMENT_ID`, `PAYMENT_TYPE_METHOD`, `AMOUNT`, `TRANSACTION_ID`, `CREATED_DATE`, `END_DATE`) VALUES
	(9, 11, 'credit_card', '99.00', '368h28', '2015-09-18 18:40:05', '2015-10-17'),
	(10, 12, 'credit_card', '99.00', 'ckxq5p', '2015-09-21 08:30:00', '2015-10-19'),
	(11, 13, 'credit_card', '99.00', 'bggfw8', '2015-09-21 14:54:15', '2015-10-20'),
	(12, 14, 'credit_card', '99.00', '87rzw8', '2015-09-21 14:55:38', '2015-10-20');
/*!40000 ALTER TABLE `payment_log` ENABLE KEYS */;


-- Dumping structure for table compass_new.persistent_logins
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE IF NOT EXISTS `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.persistent_logins: ~0 rows (approximately)
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;


-- Dumping structure for table compass_new.plan_programs
DROP TABLE IF EXISTS `plan_programs`;
CREATE TABLE IF NOT EXISTS `plan_programs` (
  `PROGRAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(11) NOT NULL,
  `PERIOD` int(11) NOT NULL,
  `DESCRIPTION` longtext NOT NULL,
  `AMOUNT` double(10,2) DEFAULT NULL,
  `IS_DELETED` varchar(5) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PROGRAM_ID`),
  KEY `FK__subscription_plans` (`PLAN_ID`),
  CONSTRAINT `FK__subscription_plans` FOREIGN KEY (`PLAN_ID`) REFERENCES `subscription_plans` (`SUBSCRIPTION_PLAN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.plan_programs: ~4 rows (approximately)
/*!40000 ALTER TABLE `plan_programs` DISABLE KEYS */;
INSERT INTO `plan_programs` (`PROGRAM_ID`, `PLAN_ID`, `PERIOD`, `DESCRIPTION`, `AMOUNT`, `IS_DELETED`, `CREATED_DATE`) VALUES
	(1, 1, 90, 'Pre-k–Kindergarten', 20.00, 'N', '2015-09-25 16:35:58'),
	(2, 1, 90, 'Pre-k–Kindergarten', 20.00, 'N', '2015-09-25 16:35:58'),
	(3, 1, 90, 'Pre-k–Kindergarten', 20.00, 'N', '2015-09-25 16:35:58'),
	(4, 1, 90, 'Pre-k–Kindergarten', 20.00, 'N', '2015-09-25 16:35:58');
/*!40000 ALTER TABLE `plan_programs` ENABLE KEYS */;


-- Dumping structure for table compass_new.reset_password
DROP TABLE IF EXISTS `reset_password`;
CREATE TABLE IF NOT EXISTS `reset_password` (
  `RESET_PASS_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY',
  `USER_ID` int(10) NOT NULL COMMENT 'FOREIGN KEY',
  `RESET_PASS_CODE` varchar(40) NOT NULL COMMENT 'PASSWORD CODE',
  `CODE_VALIDITY_DATE` datetime DEFAULT NULL COMMENT 'PASSWORD VALIDATION TIME',
  `IS_PASS_CHANGED` varchar(5) NOT NULL DEFAULT 'N',
  `CREATED_BY` int(10) DEFAULT NULL COMMENT 'CREATED BY',
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'CURRENT TIME',
  PRIMARY KEY (`RESET_PASS_ID`),
  KEY `RESET_PASSWORD_FK` (`USER_ID`),
  CONSTRAINT `RESET_PASSWORD_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FORGOT PASSWORD TABLE';

-- Dumping data for table compass_new.reset_password: ~0 rows (approximately)
/*!40000 ALTER TABLE `reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password` ENABLE KEYS */;


-- Dumping structure for table compass_new.role_master
DROP TABLE IF EXISTS `role_master`;
CREATE TABLE IF NOT EXISTS `role_master` (
  `ROLE_MASTER_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY & AUTO INCREMENTED KEY ',
  `ROLE_NAME` varchar(20) NOT NULL COMMENT 'BASIC FIELD NAME',
  `IS_DELETED` varchar(5) NOT NULL DEFAULT 'N',
  `CREATED_BY` int(10) NOT NULL COMMENT 'CREATED BY',
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'CREATED DATE',
  PRIMARY KEY (`ROLE_MASTER_ID`),
  UNIQUE KEY `ROLE_NAME` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='BASIC PERAMETERS';

-- Dumping data for table compass_new.role_master: ~4 rows (approximately)
/*!40000 ALTER TABLE `role_master` DISABLE KEYS */;
INSERT INTO `role_master` (`ROLE_MASTER_ID`, `ROLE_NAME`, `IS_DELETED`, `CREATED_BY`, `CREATED_DATE`) VALUES
	(1, 'SUPER_ADMIN', 'N', 1, '2015-03-23 10:44:31'),
	(2, 'TEACHER', 'N', 1, '2015-04-08 17:28:35'),
	(3, 'PRINCIPAL', 'N', 1, '2015-04-15 15:39:35'),
	(4, 'DONOR', 'N', 1, '2015-09-14 17:52:53');
/*!40000 ALTER TABLE `role_master` ENABLE KEYS */;


-- Dumping structure for table compass_new.school_class
DROP TABLE IF EXISTS `school_class`;
CREATE TABLE IF NOT EXISTS `school_class` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCHOOL_ID` int(11) NOT NULL,
  `SCHOOL_PROGRAM_ID` int(11) DEFAULT NULL,
  `CLASS_NAME` longtext,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CLASS_ID`),
  KEY `FK944600EDC495D04F` (`SCHOOL_ID`),
  KEY `FK_school_class_school_programs` (`SCHOOL_PROGRAM_ID`),
  CONSTRAINT `FK__temp_school_owner` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school_detail` (`SCHOOL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_school_class_school_programs` FOREIGN KEY (`SCHOOL_PROGRAM_ID`) REFERENCES `school_programs` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.school_class: ~4 rows (approximately)
/*!40000 ALTER TABLE `school_class` DISABLE KEYS */;
INSERT INTO `school_class` (`CLASS_ID`, `SCHOOL_ID`, `SCHOOL_PROGRAM_ID`, `CLASS_NAME`, `CREATED_DATE`) VALUES
	(12, 13, 1, 'Level One', '2015-09-18 18:40:04'),
	(13, 14, 2, '10th', '2015-09-21 08:29:59'),
	(14, 15, 3, 'retert', '2015-09-21 14:54:14'),
	(15, 16, 4, 'rtet', '2015-09-21 14:55:38');
/*!40000 ALTER TABLE `school_class` ENABLE KEYS */;


-- Dumping structure for table compass_new.school_detail
DROP TABLE IF EXISTS `school_detail`;
CREATE TABLE IF NOT EXISTS `school_detail` (
  `SCHOOL_ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `SUBSCRIPTION_PLAN_ID` int(10) DEFAULT NULL,
  `SCHOOL_NAME` varchar(50) DEFAULT NULL,
  `ADDRESS_LINE_ONE` varchar(50) DEFAULT NULL,
  `ADDRESS_LINE_TWO` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `POSTAL_CODE` varchar(50) DEFAULT NULL,
  `TIME_ZONE` varchar(50) DEFAULT NULL,
  `LOGO_URL` varchar(500) DEFAULT NULL,
  `ACTIVATION_DATE` date DEFAULT NULL,
  `EXPIRATION_DATE` date DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SCHOOL_ID`),
  KEY `FK_brewster_detail_users` (`USER_ID`),
  KEY `FK_brewster_detail_subscription_plans` (`SUBSCRIPTION_PLAN_ID`),
  CONSTRAINT `FK_brewster_detail_subscription_plans` FOREIGN KEY (`SUBSCRIPTION_PLAN_ID`) REFERENCES `subscription_plans` (`SUBSCRIPTION_PLAN_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_brewster_detail_users` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.school_detail: ~4 rows (approximately)
/*!40000 ALTER TABLE `school_detail` DISABLE KEYS */;
INSERT INTO `school_detail` (`SCHOOL_ID`, `USER_ID`, `SUBSCRIPTION_PLAN_ID`, `SCHOOL_NAME`, `ADDRESS_LINE_ONE`, `ADDRESS_LINE_TWO`, `SUBURB`, `STATE`, `COUNTRY`, `POSTAL_CODE`, `TIME_ZONE`, `LOGO_URL`, `ACTIVATION_DATE`, `EXPIRATION_DATE`, `CREATED_DATE`, `PHONE_NUMBER`, `DESCRIPTION`) VALUES
	(13, 30, 1, 'Mohali school', 'chd', '', 'test', 'Australian Capital Territory', 'Australia', '1234', NULL, NULL, NULL, NULL, '2015-09-18 18:40:04', '789741131445', NULL),
	(14, 32, 1, 'happy high', 'pkt', 'pkt', 'pkt', 'Alberta', 'Canada', '1235', NULL, NULL, NULL, NULL, '2015-09-21 08:29:59', '1231231231', NULL),
	(15, 34, 1, 'rewre', 'werwer', 'wwerwer', 'werwer', 'Prince Edward Island', 'Canada', '2423', NULL, NULL, NULL, NULL, '2015-09-21 14:54:14', '43636346346', NULL),
	(16, 36, 1, 'ertert', 'erterter', 'reter', 'erter', 'Ontario', 'Canada', '3453', NULL, NULL, NULL, NULL, '2015-09-21 14:55:38', '7634634543', NULL);
/*!40000 ALTER TABLE `school_detail` ENABLE KEYS */;


-- Dumping structure for table compass_new.school_programs
DROP TABLE IF EXISTS `school_programs`;
CREATE TABLE IF NOT EXISTS `school_programs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCHOOL_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `IS_ACTIVE` varchar(5) DEFAULT NULL,
  `IS_DELETED` varchar(5) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK__school_detail` (`SCHOOL_ID`),
  KEY `FK__plan_programs` (`PROGRAM_ID`),
  CONSTRAINT `FK__plan_programs` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `plan_programs` (`PROGRAM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__school_detail` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school_detail` (`SCHOOL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.school_programs: ~0 rows (approximately)
/*!40000 ALTER TABLE `school_programs` DISABLE KEYS */;
INSERT INTO `school_programs` (`ID`, `SCHOOL_ID`, `PROGRAM_ID`, `IS_ACTIVE`, `IS_DELETED`, `CREATED_DATE`) VALUES
	(1, 13, 1, 'Y', 'N', '2015-09-28 10:48:48'),
	(2, 14, 1, 'Y', 'N', '2015-09-28 10:48:48'),
	(3, 15, 1, 'Y', 'N', '2015-09-28 10:48:48'),
	(4, 16, 1, 'Y', 'N', '2015-09-28 10:48:48');
/*!40000 ALTER TABLE `school_programs` ENABLE KEYS */;


-- Dumping structure for table compass_new.school_teacher
DROP TABLE IF EXISTS `school_teacher`;
CREATE TABLE IF NOT EXISTS `school_teacher` (
  `TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SCHOOL_ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TEACHER_ID`),
  KEY `FK_school_teachers_school_detail` (`SCHOOL_ID`),
  KEY `FK_school_teachers_school_classes` (`CLASS_ID`),
  KEY `FK_school_teacher_users` (`USER_ID`),
  CONSTRAINT `FK_school_teacher_users` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_school_teachers_school_classes` FOREIGN KEY (`CLASS_ID`) REFERENCES `school_class` (`CLASS_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_school_teachers_school_detail` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school_detail` (`SCHOOL_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.school_teacher: ~4 rows (approximately)
/*!40000 ALTER TABLE `school_teacher` DISABLE KEYS */;
INSERT INTO `school_teacher` (`TEACHER_ID`, `USER_ID`, `SCHOOL_ID`, `CLASS_ID`, `NAME`, `CREATED_DATE`) VALUES
	(9, 31, 13, 12, 'Hitesh', '2015-09-18 18:40:04'),
	(10, 33, 14, 13, 'raman', '2015-09-21 08:29:59'),
	(11, 35, 15, 14, 'ertert', '2015-09-21 14:54:14'),
	(12, 37, 16, 15, 'ertert', '2015-09-21 14:55:38');
/*!40000 ALTER TABLE `school_teacher` ENABLE KEYS */;


-- Dumping structure for table compass_new.session_log
DROP TABLE IF EXISTS `session_log`;
CREATE TABLE IF NOT EXISTS `session_log` (
  `SESSION_LOG_ID` int(10) NOT NULL AUTO_INCREMENT,
  `SESSION_CODE` varchar(50) NOT NULL COMMENT 'SESSION ID',
  `USER_ID` int(10) NOT NULL COMMENT 'FOREIGN KEY TO LOGIN DETAILS',
  `LAST_ACCESS_TIME` datetime DEFAULT NULL COMMENT 'LAST ACCESS TIME',
  `DEVICE_TYPE` varchar(15) NOT NULL COMMENT 'DEVICE TYPE',
  `DEVICE_TOKEN` varchar(500) DEFAULT NULL,
  `CREATED_BY` int(10) DEFAULT NULL COMMENT 'CREATED BY',
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` int(10) DEFAULT NULL COMMENT 'CREATED BY',
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `IS_DELETED` varchar(5) DEFAULT 'N',
  `SESSION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SESSION_LOG_ID`),
  KEY `SESSION_LOG_FK` (`USER_ID`),
  CONSTRAINT `SESSION_LOG_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SESSION LOG FOR THE USER LOGIN FROM IPHONE/ANDROID APP';

-- Dumping data for table compass_new.session_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `session_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_log` ENABLE KEYS */;


-- Dumping structure for table compass_new.subscription_plans
DROP TABLE IF EXISTS `subscription_plans`;
CREATE TABLE IF NOT EXISTS `subscription_plans` (
  `SUBSCRIPTION_PLAN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PERIOD` int(10) NOT NULL,
  `AMOUNT` double(7,2) NOT NULL,
  `IS_DELETED` varchar(5) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SUBSCRIPTION_PLAN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.subscription_plans: ~3 rows (approximately)
/*!40000 ALTER TABLE `subscription_plans` DISABLE KEYS */;
INSERT INTO `subscription_plans` (`SUBSCRIPTION_PLAN_ID`, `PERIOD`, `AMOUNT`, `IS_DELETED`, `DESCRIPTION`, `CREATED_DATE`) VALUES
	(1, 1, 50.00, 'N', NULL, '2015-04-06 11:13:49'),
	(2, 6, 275.00, 'N', NULL, '2015-04-06 11:14:20'),
	(3, 12, 500.00, 'N', NULL, '2015-04-06 11:14:35');
/*!40000 ALTER TABLE `subscription_plans` ENABLE KEYS */;


-- Dumping structure for table compass_new.super_admin_detail
DROP TABLE IF EXISTS `super_admin_detail`;
CREATE TABLE IF NOT EXISTS `super_admin_detail` (
  `SUPER_ADMIN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SUPER_ADMIN_ID`),
  KEY `FK_super_admin_detail_users` (`USER_ID`),
  CONSTRAINT `FK_super_admin_detail_users` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.super_admin_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `super_admin_detail` DISABLE KEYS */;
INSERT INTO `super_admin_detail` (`SUPER_ADMIN_ID`, `USER_ID`, `FIRST_NAME`, `LAST_NAME`, `ADDRESS`, `CREATED_DATE`) VALUES
	(2, 3, 'Super', 'Admin', '#123 Asb,UK', '2015-03-23 15:34:26');
/*!40000 ALTER TABLE `super_admin_detail` ENABLE KEYS */;


-- Dumping structure for table compass_new.temp_class
DROP TABLE IF EXISTS `temp_class`;
CREATE TABLE IF NOT EXISTS `temp_class` (
  `TEMP_CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEMP_SCHOOL_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `CLASS_NAME` longtext,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TEMP_CLASS_ID`),
  KEY `FK__temp_school_owner_class` (`TEMP_SCHOOL_ID`),
  KEY `FK_temp_class_plan_programs` (`PROGRAM_ID`),
  CONSTRAINT `FK__temp_school_owner_class` FOREIGN KEY (`TEMP_SCHOOL_ID`) REFERENCES `temp_school_owner` (`TEMP_SCHOOL_OWNER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_temp_class_plan_programs` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `plan_programs` (`PROGRAM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.temp_class: ~0 rows (approximately)
/*!40000 ALTER TABLE `temp_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_class` ENABLE KEYS */;


-- Dumping structure for table compass_new.temp_school_owner
DROP TABLE IF EXISTS `temp_school_owner`;
CREATE TABLE IF NOT EXISTS `temp_school_owner` (
  `TEMP_SCHOOL_OWNER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS_LINE_ONE` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE_TWO` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `MOBILE` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `SCHOOL_NAME` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `SUBURB` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TEMP_SCHOOL_OWNER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.temp_school_owner: ~0 rows (approximately)
/*!40000 ALTER TABLE `temp_school_owner` DISABLE KEYS */;
INSERT INTO `temp_school_owner` (`TEMP_SCHOOL_OWNER_ID`, `ADDRESS_LINE_ONE`, `ADDRESS_LINE_TWO`, `COUNTRY`, `CREATED_DATE`, `EMAIL`, `FIRST_NAME`, `LAST_NAME`, `MOBILE`, `PASSWORD`, `PHONE`, `PHONE_NUMBER`, `POSTAL_CODE`, `SCHOOL_NAME`, `STATE`, `SUBURB`, `TITLE`) VALUES
	(7, 'dfsgsdfg', NULL, 'Canada', NULL, 'sdfaas@sdf.fgh', 'gsfd', 'gfdsgsfd', NULL, '111111', NULL, NULL, '4234', 'dsfgdsfg', 'Ontario', 'gdsfgsdfg', NULL);
/*!40000 ALTER TABLE `temp_school_owner` ENABLE KEYS */;


-- Dumping structure for table compass_new.temp_school_programs
DROP TABLE IF EXISTS `temp_school_programs`;
CREATE TABLE IF NOT EXISTS `temp_school_programs` (
  `TEMP_SCHOOL_PROGRAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEMP_SCHOOL_ID` int(11) NOT NULL,
  `PROGRAM_ID` int(11) NOT NULL,
  `CREATED_DATE` int(11) NOT NULL,
  PRIMARY KEY (`TEMP_SCHOOL_PROGRAM_ID`),
  KEY `FK_temp_school_programs_temp_school_owner` (`TEMP_SCHOOL_ID`),
  KEY `FK_temp_school_programs_plan_programs` (`PROGRAM_ID`),
  CONSTRAINT `FK_temp_school_programs_plan_programs` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `plan_programs` (`PROGRAM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_temp_school_programs_temp_school_owner` FOREIGN KEY (`TEMP_SCHOOL_ID`) REFERENCES `temp_school_owner` (`TEMP_SCHOOL_OWNER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.temp_school_programs: ~0 rows (approximately)
/*!40000 ALTER TABLE `temp_school_programs` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_school_programs` ENABLE KEYS */;


-- Dumping structure for table compass_new.temp_teacher
DROP TABLE IF EXISTS `temp_teacher`;
CREATE TABLE IF NOT EXISTS `temp_teacher` (
  `TEMP_TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEMP_CLASS_ID` int(11) NOT NULL,
  `TEMP_SCHOOL_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TEMP_TEACHER_ID`),
  KEY `FK_temp_teacher_temp_class` (`TEMP_CLASS_ID`),
  KEY `FK_temp_teacher_temp_school_owner` (`TEMP_SCHOOL_ID`),
  CONSTRAINT `FK_temp_teacher_temp_class` FOREIGN KEY (`TEMP_CLASS_ID`) REFERENCES `temp_class` (`TEMP_CLASS_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_temp_teacher_temp_school_owner` FOREIGN KEY (`TEMP_SCHOOL_ID`) REFERENCES `temp_school_owner` (`TEMP_SCHOOL_OWNER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.temp_teacher: ~0 rows (approximately)
/*!40000 ALTER TABLE `temp_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_teacher` ENABLE KEYS */;


-- Dumping structure for table compass_new.time_zone
DROP TABLE IF EXISTS `time_zone`;
CREATE TABLE IF NOT EXISTS `time_zone` (
  `TIME_ZONE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` char(2) NOT NULL,
  `TIME_ZONE_NAME` varchar(35) NOT NULL,
  PRIMARY KEY (`TIME_ZONE_ID`),
  KEY `idx_zone_name` (`TIME_ZONE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

-- Dumping data for table compass_new.time_zone: ~416 rows (approximately)
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
INSERT INTO `time_zone` (`TIME_ZONE_ID`, `COUNTRY_CODE`, `TIME_ZONE_NAME`) VALUES
	(1, 'AD', 'Europe/Andorra'),
	(2, 'AE', 'Asia/Dubai'),
	(3, 'AF', 'Asia/Kabul'),
	(4, 'AG', 'America/Antigua'),
	(5, 'AI', 'America/Anguilla'),
	(6, 'AL', 'Europe/Tirane'),
	(7, 'AM', 'Asia/Yerevan'),
	(8, 'AO', 'Africa/Luanda'),
	(9, 'AQ', 'Antarctica/McMurdo'),
	(10, 'AQ', 'Antarctica/Rothera'),
	(11, 'AQ', 'Antarctica/Palmer'),
	(12, 'AQ', 'Antarctica/Mawson'),
	(13, 'AQ', 'Antarctica/Davis'),
	(14, 'AQ', 'Antarctica/Casey'),
	(15, 'AQ', 'Antarctica/Vostok'),
	(16, 'AQ', 'Antarctica/DumontDUrville'),
	(17, 'AQ', 'Antarctica/Syowa'),
	(18, 'AQ', 'Antarctica/Troll'),
	(19, 'AR', 'America/Argentina/Buenos_Aires'),
	(20, 'AR', 'America/Argentina/Cordoba'),
	(21, 'AR', 'America/Argentina/Salta'),
	(22, 'AR', 'America/Argentina/Jujuy'),
	(23, 'AR', 'America/Argentina/Tucuman'),
	(24, 'AR', 'America/Argentina/Catamarca'),
	(25, 'AR', 'America/Argentina/La_Rioja'),
	(26, 'AR', 'America/Argentina/San_Juan'),
	(27, 'AR', 'America/Argentina/Mendoza'),
	(28, 'AR', 'America/Argentina/San_Luis'),
	(29, 'AR', 'America/Argentina/Rio_Gallegos'),
	(30, 'AR', 'America/Argentina/Ushuaia'),
	(31, 'AS', 'Pacific/Pago_Pago'),
	(32, 'AT', 'Europe/Vienna'),
	(33, 'AU', 'Australia/Lord_Howe'),
	(34, 'AU', 'Antarctica/Macquarie'),
	(35, 'AU', 'Australia/Hobart'),
	(36, 'AU', 'Australia/Currie'),
	(37, 'AU', 'Australia/Melbourne'),
	(38, 'AU', 'Australia/Sydney'),
	(39, 'AU', 'Australia/Broken_Hill'),
	(40, 'AU', 'Australia/Brisbane'),
	(41, 'AU', 'Australia/Lindeman'),
	(42, 'AU', 'Australia/Adelaide'),
	(43, 'AU', 'Australia/Darwin'),
	(44, 'AU', 'Australia/Perth'),
	(45, 'AU', 'Australia/Eucla'),
	(46, 'AW', 'America/Aruba'),
	(47, 'AX', 'Europe/Mariehamn'),
	(48, 'AZ', 'Asia/Baku'),
	(49, 'BA', 'Europe/Sarajevo'),
	(50, 'BB', 'America/Barbados'),
	(51, 'BD', 'Asia/Dhaka'),
	(52, 'BE', 'Europe/Brussels'),
	(53, 'BF', 'Africa/Ouagadougou'),
	(54, 'BG', 'Europe/Sofia'),
	(55, 'BH', 'Asia/Bahrain'),
	(56, 'BI', 'Africa/Bujumbura'),
	(57, 'BJ', 'Africa/Porto-Novo'),
	(58, 'BL', 'America/St_Barthelemy'),
	(59, 'BM', 'Atlantic/Bermuda'),
	(60, 'BN', 'Asia/Brunei'),
	(61, 'BO', 'America/La_Paz'),
	(62, 'BQ', 'America/Kralendijk'),
	(63, 'BR', 'America/Noronha'),
	(64, 'BR', 'America/Belem'),
	(65, 'BR', 'America/Fortaleza'),
	(66, 'BR', 'America/Recife'),
	(67, 'BR', 'America/Araguaina'),
	(68, 'BR', 'America/Maceio'),
	(69, 'BR', 'America/Bahia'),
	(70, 'BR', 'America/Sao_Paulo'),
	(71, 'BR', 'America/Campo_Grande'),
	(72, 'BR', 'America/Cuiaba'),
	(73, 'BR', 'America/Santarem'),
	(74, 'BR', 'America/Porto_Velho'),
	(75, 'BR', 'America/Boa_Vista'),
	(76, 'BR', 'America/Manaus'),
	(77, 'BR', 'America/Eirunepe'),
	(78, 'BR', 'America/Rio_Branco'),
	(79, 'BS', 'America/Nassau'),
	(80, 'BT', 'Asia/Thimphu'),
	(81, 'BW', 'Africa/Gaborone'),
	(82, 'BY', 'Europe/Minsk'),
	(83, 'BZ', 'America/Belize'),
	(84, 'CA', 'America/St_Johns'),
	(85, 'CA', 'America/Halifax'),
	(86, 'CA', 'America/Glace_Bay'),
	(87, 'CA', 'America/Moncton'),
	(88, 'CA', 'America/Goose_Bay'),
	(89, 'CA', 'America/Blanc-Sablon'),
	(90, 'CA', 'America/Toronto'),
	(91, 'CA', 'America/Nipigon'),
	(92, 'CA', 'America/Thunder_Bay'),
	(93, 'CA', 'America/Iqaluit'),
	(94, 'CA', 'America/Pangnirtung'),
	(95, 'CA', 'America/Resolute'),
	(96, 'CA', 'America/Atikokan'),
	(97, 'CA', 'America/Rankin_Inlet'),
	(98, 'CA', 'America/Winnipeg'),
	(99, 'CA', 'America/Rainy_River'),
	(100, 'CA', 'America/Regina'),
	(101, 'CA', 'America/Swift_Current'),
	(102, 'CA', 'America/Edmonton'),
	(103, 'CA', 'America/Cambridge_Bay'),
	(104, 'CA', 'America/Yellowknife'),
	(105, 'CA', 'America/Inuvik'),
	(106, 'CA', 'America/Creston'),
	(107, 'CA', 'America/Dawson_Creek'),
	(108, 'CA', 'America/Vancouver'),
	(109, 'CA', 'America/Whitehorse'),
	(110, 'CA', 'America/Dawson'),
	(111, 'CC', 'Indian/Cocos'),
	(112, 'CD', 'Africa/Kinshasa'),
	(113, 'CD', 'Africa/Lubumbashi'),
	(114, 'CF', 'Africa/Bangui'),
	(115, 'CG', 'Africa/Brazzaville'),
	(116, 'CH', 'Europe/Zurich'),
	(117, 'CI', 'Africa/Abidjan'),
	(118, 'CK', 'Pacific/Rarotonga'),
	(119, 'CL', 'America/Santiago'),
	(120, 'CL', 'Pacific/Easter'),
	(121, 'CM', 'Africa/Douala'),
	(122, 'CN', 'Asia/Shanghai'),
	(123, 'CN', 'Asia/Urumqi'),
	(124, 'CO', 'America/Bogota'),
	(125, 'CR', 'America/Costa_Rica'),
	(126, 'CU', 'America/Havana'),
	(127, 'CV', 'Atlantic/Cape_Verde'),
	(128, 'CW', 'America/Curacao'),
	(129, 'CX', 'Indian/Christmas'),
	(130, 'CY', 'Asia/Nicosia'),
	(131, 'CZ', 'Europe/Prague'),
	(132, 'DE', 'Europe/Berlin'),
	(133, 'DE', 'Europe/Busingen'),
	(134, 'DJ', 'Africa/Djibouti'),
	(135, 'DK', 'Europe/Copenhagen'),
	(136, 'DM', 'America/Dominica'),
	(137, 'DO', 'America/Santo_Domingo'),
	(138, 'DZ', 'Africa/Algiers'),
	(139, 'EC', 'America/Guayaquil'),
	(140, 'EC', 'Pacific/Galapagos'),
	(141, 'EE', 'Europe/Tallinn'),
	(142, 'EG', 'Africa/Cairo'),
	(143, 'EH', 'Africa/El_Aaiun'),
	(144, 'ER', 'Africa/Asmara'),
	(145, 'ES', 'Europe/Madrid'),
	(146, 'ES', 'Africa/Ceuta'),
	(147, 'ES', 'Atlantic/Canary'),
	(148, 'ET', 'Africa/Addis_Ababa'),
	(149, 'FI', 'Europe/Helsinki'),
	(150, 'FJ', 'Pacific/Fiji'),
	(151, 'FK', 'Atlantic/Stanley'),
	(152, 'FM', 'Pacific/Chuuk'),
	(153, 'FM', 'Pacific/Pohnpei'),
	(154, 'FM', 'Pacific/Kosrae'),
	(155, 'FO', 'Atlantic/Faroe'),
	(156, 'FR', 'Europe/Paris'),
	(157, 'GA', 'Africa/Libreville'),
	(158, 'GB', 'Europe/London'),
	(159, 'GD', 'America/Grenada'),
	(160, 'GE', 'Asia/Tbilisi'),
	(161, 'GF', 'America/Cayenne'),
	(162, 'GG', 'Europe/Guernsey'),
	(163, 'GH', 'Africa/Accra'),
	(164, 'GI', 'Europe/Gibraltar'),
	(165, 'GL', 'America/Godthab'),
	(166, 'GL', 'America/Danmarkshavn'),
	(167, 'GL', 'America/Scoresbysund'),
	(168, 'GL', 'America/Thule'),
	(169, 'GM', 'Africa/Banjul'),
	(170, 'GN', 'Africa/Conakry'),
	(171, 'GP', 'America/Guadeloupe'),
	(172, 'GQ', 'Africa/Malabo'),
	(173, 'GR', 'Europe/Athens'),
	(174, 'GS', 'Atlantic/South_Georgia'),
	(175, 'GT', 'America/Guatemala'),
	(176, 'GU', 'Pacific/Guam'),
	(177, 'GW', 'Africa/Bissau'),
	(178, 'GY', 'America/Guyana'),
	(179, 'HK', 'Asia/Hong_Kong'),
	(180, 'HN', 'America/Tegucigalpa'),
	(181, 'HR', 'Europe/Zagreb'),
	(182, 'HT', 'America/Port-au-Prince'),
	(183, 'HU', 'Europe/Budapest'),
	(184, 'ID', 'Asia/Jakarta'),
	(185, 'ID', 'Asia/Pontianak'),
	(186, 'ID', 'Asia/Makassar'),
	(187, 'ID', 'Asia/Jayapura'),
	(188, 'IE', 'Europe/Dublin'),
	(189, 'IL', 'Asia/Jerusalem'),
	(190, 'IM', 'Europe/Isle_of_Man'),
	(191, 'IN', 'Asia/Kolkata'),
	(192, 'IO', 'Indian/Chagos'),
	(193, 'IQ', 'Asia/Baghdad'),
	(194, 'IR', 'Asia/Tehran'),
	(195, 'IS', 'Atlantic/Reykjavik'),
	(196, 'IT', 'Europe/Rome'),
	(197, 'JE', 'Europe/Jersey'),
	(198, 'JM', 'America/Jamaica'),
	(199, 'JO', 'Asia/Amman'),
	(200, 'JP', 'Asia/Tokyo'),
	(201, 'KE', 'Africa/Nairobi'),
	(202, 'KG', 'Asia/Bishkek'),
	(203, 'KH', 'Asia/Phnom_Penh'),
	(204, 'KI', 'Pacific/Tarawa'),
	(205, 'KI', 'Pacific/Enderbury'),
	(206, 'KI', 'Pacific/Kiritimati'),
	(207, 'KM', 'Indian/Comoro'),
	(208, 'KN', 'America/St_Kitts'),
	(209, 'KP', 'Asia/Pyongyang'),
	(210, 'KR', 'Asia/Seoul'),
	(211, 'KW', 'Asia/Kuwait'),
	(212, 'KY', 'America/Cayman'),
	(213, 'KZ', 'Asia/Almaty'),
	(214, 'KZ', 'Asia/Qyzylorda'),
	(215, 'KZ', 'Asia/Aqtobe'),
	(216, 'KZ', 'Asia/Aqtau'),
	(217, 'KZ', 'Asia/Oral'),
	(218, 'LA', 'Asia/Vientiane'),
	(219, 'LB', 'Asia/Beirut'),
	(220, 'LC', 'America/St_Lucia'),
	(221, 'LI', 'Europe/Vaduz'),
	(222, 'LK', 'Asia/Colombo'),
	(223, 'LR', 'Africa/Monrovia'),
	(224, 'LS', 'Africa/Maseru'),
	(225, 'LT', 'Europe/Vilnius'),
	(226, 'LU', 'Europe/Luxembourg'),
	(227, 'LV', 'Europe/Riga'),
	(228, 'LY', 'Africa/Tripoli'),
	(229, 'MA', 'Africa/Casablanca'),
	(230, 'MC', 'Europe/Monaco'),
	(231, 'MD', 'Europe/Chisinau'),
	(232, 'ME', 'Europe/Podgorica'),
	(233, 'MF', 'America/Marigot'),
	(234, 'MG', 'Indian/Antananarivo'),
	(235, 'MH', 'Pacific/Majuro'),
	(236, 'MH', 'Pacific/Kwajalein'),
	(237, 'MK', 'Europe/Skopje'),
	(238, 'ML', 'Africa/Bamako'),
	(239, 'MM', 'Asia/Rangoon'),
	(240, 'MN', 'Asia/Ulaanbaatar'),
	(241, 'MN', 'Asia/Hovd'),
	(242, 'MN', 'Asia/Choibalsan'),
	(243, 'MO', 'Asia/Macau'),
	(244, 'MP', 'Pacific/Saipan'),
	(245, 'MQ', 'America/Martinique'),
	(246, 'MR', 'Africa/Nouakchott'),
	(247, 'MS', 'America/Montserrat'),
	(248, 'MT', 'Europe/Malta'),
	(249, 'MU', 'Indian/Mauritius'),
	(250, 'MV', 'Indian/Maldives'),
	(251, 'MW', 'Africa/Blantyre'),
	(252, 'MX', 'America/Mexico_City'),
	(253, 'MX', 'America/Cancun'),
	(254, 'MX', 'America/Merida'),
	(255, 'MX', 'America/Monterrey'),
	(256, 'MX', 'America/Matamoros'),
	(257, 'MX', 'America/Mazatlan'),
	(258, 'MX', 'America/Chihuahua'),
	(259, 'MX', 'America/Ojinaga'),
	(260, 'MX', 'America/Hermosillo'),
	(261, 'MX', 'America/Tijuana'),
	(262, 'MX', 'America/Santa_Isabel'),
	(263, 'MX', 'America/Bahia_Banderas'),
	(264, 'MY', 'Asia/Kuala_Lumpur'),
	(265, 'MY', 'Asia/Kuching'),
	(266, 'MZ', 'Africa/Maputo'),
	(267, 'NA', 'Africa/Windhoek'),
	(268, 'NC', 'Pacific/Noumea'),
	(269, 'NE', 'Africa/Niamey'),
	(270, 'NF', 'Pacific/Norfolk'),
	(271, 'NG', 'Africa/Lagos'),
	(272, 'NI', 'America/Managua'),
	(273, 'NL', 'Europe/Amsterdam'),
	(274, 'NO', 'Europe/Oslo'),
	(275, 'NP', 'Asia/Kathmandu'),
	(276, 'NR', 'Pacific/Nauru'),
	(277, 'NU', 'Pacific/Niue'),
	(278, 'NZ', 'Pacific/Auckland'),
	(279, 'NZ', 'Pacific/Chatham'),
	(280, 'OM', 'Asia/Muscat'),
	(281, 'PA', 'America/Panama'),
	(282, 'PE', 'America/Lima'),
	(283, 'PF', 'Pacific/Tahiti'),
	(284, 'PF', 'Pacific/Marquesas'),
	(285, 'PF', 'Pacific/Gambier'),
	(286, 'PG', 'Pacific/Port_Moresby'),
	(287, 'PG', 'Pacific/Bougainville'),
	(288, 'PH', 'Asia/Manila'),
	(289, 'PK', 'Asia/Karachi'),
	(290, 'PL', 'Europe/Warsaw'),
	(291, 'PM', 'America/Miquelon'),
	(292, 'PN', 'Pacific/Pitcairn'),
	(293, 'PR', 'America/Puerto_Rico'),
	(294, 'PS', 'Asia/Gaza'),
	(295, 'PS', 'Asia/Hebron'),
	(296, 'PT', 'Europe/Lisbon'),
	(297, 'PT', 'Atlantic/Madeira'),
	(298, 'PT', 'Atlantic/Azores'),
	(299, 'PW', 'Pacific/Palau'),
	(300, 'PY', 'America/Asuncion'),
	(301, 'QA', 'Asia/Qatar'),
	(302, 'RE', 'Indian/Reunion'),
	(303, 'RO', 'Europe/Bucharest'),
	(304, 'RS', 'Europe/Belgrade'),
	(305, 'RU', 'Europe/Kaliningrad'),
	(306, 'RU', 'Europe/Moscow'),
	(307, 'RU', 'Europe/Simferopol'),
	(308, 'RU', 'Europe/Volgograd'),
	(309, 'RU', 'Europe/Samara'),
	(310, 'RU', 'Asia/Yekaterinburg'),
	(311, 'RU', 'Asia/Omsk'),
	(312, 'RU', 'Asia/Novosibirsk'),
	(313, 'RU', 'Asia/Novokuznetsk'),
	(314, 'RU', 'Asia/Krasnoyarsk'),
	(315, 'RU', 'Asia/Irkutsk'),
	(316, 'RU', 'Asia/Chita'),
	(317, 'RU', 'Asia/Yakutsk'),
	(318, 'RU', 'Asia/Khandyga'),
	(319, 'RU', 'Asia/Vladivostok'),
	(320, 'RU', 'Asia/Sakhalin'),
	(321, 'RU', 'Asia/Ust-Nera'),
	(322, 'RU', 'Asia/Magadan'),
	(323, 'RU', 'Asia/Srednekolymsk'),
	(324, 'RU', 'Asia/Kamchatka'),
	(325, 'RU', 'Asia/Anadyr'),
	(326, 'RW', 'Africa/Kigali'),
	(327, 'SA', 'Asia/Riyadh'),
	(328, 'SB', 'Pacific/Guadalcanal'),
	(329, 'SC', 'Indian/Mahe'),
	(330, 'SD', 'Africa/Khartoum'),
	(331, 'SE', 'Europe/Stockholm'),
	(332, 'SG', 'Asia/Singapore'),
	(333, 'SH', 'Atlantic/St_Helena'),
	(334, 'SI', 'Europe/Ljubljana'),
	(335, 'SJ', 'Arctic/Longyearbyen'),
	(336, 'SK', 'Europe/Bratislava'),
	(337, 'SL', 'Africa/Freetown'),
	(338, 'SM', 'Europe/San_Marino'),
	(339, 'SN', 'Africa/Dakar'),
	(340, 'SO', 'Africa/Mogadishu'),
	(341, 'SR', 'America/Paramaribo'),
	(342, 'SS', 'Africa/Juba'),
	(343, 'ST', 'Africa/Sao_Tome'),
	(344, 'SV', 'America/El_Salvador'),
	(345, 'SX', 'America/Lower_Princes'),
	(346, 'SY', 'Asia/Damascus'),
	(347, 'SZ', 'Africa/Mbabane'),
	(348, 'TC', 'America/Grand_Turk'),
	(349, 'TD', 'Africa/Ndjamena'),
	(350, 'TF', 'Indian/Kerguelen'),
	(351, 'TG', 'Africa/Lome'),
	(352, 'TH', 'Asia/Bangkok'),
	(353, 'TJ', 'Asia/Dushanbe'),
	(354, 'TK', 'Pacific/Fakaofo'),
	(355, 'TL', 'Asia/Dili'),
	(356, 'TM', 'Asia/Ashgabat'),
	(357, 'TN', 'Africa/Tunis'),
	(358, 'TO', 'Pacific/Tongatapu'),
	(359, 'TR', 'Europe/Istanbul'),
	(360, 'TT', 'America/Port_of_Spain'),
	(361, 'TV', 'Pacific/Funafuti'),
	(362, 'TW', 'Asia/Taipei'),
	(363, 'TZ', 'Africa/Dar_es_Salaam'),
	(364, 'UA', 'Europe/Kiev'),
	(365, 'UA', 'Europe/Uzhgorod'),
	(366, 'UA', 'Europe/Zaporozhye'),
	(367, 'UG', 'Africa/Kampala'),
	(368, 'UM', 'Pacific/Johnston'),
	(369, 'UM', 'Pacific/Midway'),
	(370, 'UM', 'Pacific/Wake'),
	(371, 'US', 'America/New_York'),
	(372, 'US', 'America/Detroit'),
	(373, 'US', 'America/Kentucky/Louisville'),
	(374, 'US', 'America/Kentucky/Monticello'),
	(375, 'US', 'America/Indiana/Indianapolis'),
	(376, 'US', 'America/Indiana/Vincennes'),
	(377, 'US', 'America/Indiana/Winamac'),
	(378, 'US', 'America/Indiana/Marengo'),
	(379, 'US', 'America/Indiana/Petersburg'),
	(380, 'US', 'America/Indiana/Vevay'),
	(381, 'US', 'America/Chicago'),
	(382, 'US', 'America/Indiana/Tell_City'),
	(383, 'US', 'America/Indiana/Knox'),
	(384, 'US', 'America/Menominee'),
	(385, 'US', 'America/North_Dakota/Center'),
	(386, 'US', 'America/North_Dakota/New_Salem'),
	(387, 'US', 'America/North_Dakota/Beulah'),
	(388, 'US', 'America/Denver'),
	(389, 'US', 'America/Boise'),
	(390, 'US', 'America/Phoenix'),
	(391, 'US', 'America/Los_Angeles'),
	(392, 'US', 'America/Metlakatla'),
	(393, 'US', 'America/Anchorage'),
	(394, 'US', 'America/Juneau'),
	(395, 'US', 'America/Sitka'),
	(396, 'US', 'America/Yakutat'),
	(397, 'US', 'America/Nome'),
	(398, 'US', 'America/Adak'),
	(399, 'US', 'Pacific/Honolulu'),
	(400, 'UY', 'America/Montevideo'),
	(401, 'UZ', 'Asia/Samarkand'),
	(402, 'UZ', 'Asia/Tashkent'),
	(403, 'VA', 'Europe/Vatican'),
	(404, 'VC', 'America/St_Vincent'),
	(405, 'VE', 'America/Caracas'),
	(406, 'VG', 'America/Tortola'),
	(407, 'VI', 'America/St_Thomas'),
	(408, 'VN', 'Asia/Ho_Chi_Minh'),
	(409, 'VU', 'Pacific/Efate'),
	(410, 'WF', 'Pacific/Wallis'),
	(411, 'WS', 'Pacific/Apia'),
	(412, 'YE', 'Asia/Aden'),
	(413, 'YT', 'Indian/Mayotte'),
	(414, 'ZA', 'Africa/Johannesburg'),
	(415, 'ZM', 'Africa/Lusaka'),
	(416, 'ZW', 'Africa/Harare');
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;


-- Dumping structure for table compass_new.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY & AUTO INCREMENTED KEY',
  `ROLE_MASTER_ID` int(10) DEFAULT NULL COMMENT 'FOREIGN KEY TO ROLE MASTER',
  `EMAIL` varchar(40) DEFAULT NULL COMMENT 'UNIQUE USERNAME',
  `FACEBOOK_ID` varchar(40) DEFAULT NULL,
  `TWITTER_ID` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT 'PASSWORD',
  `USERNAME` varchar(50) DEFAULT NULL,
  `MOBILE_NUMBER` varchar(15) DEFAULT NULL COMMENT 'MOBILE NUMBER',
  `VERIFICATION_CODE` varchar(15) DEFAULT NULL,
  `IS_VERIFIED` varchar(5) DEFAULT 'N',
  `IS_BLOCKED` varchar(5) DEFAULT 'N',
  `IS_DELETED` varchar(5) DEFAULT 'N',
  `IS_RESET_REQUEST_GENERATED` varchar(5) DEFAULT 'N',
  `IS_RESET_PASSWORD_USED` varchar(5) DEFAULT 'Y',
  `IS_RESET` varchar(5) DEFAULT 'Y',
  `IS_EMAIL_VERIFIED` varchar(5) DEFAULT 'N',
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'CREATED DATE',
  `NOTIFICATION_UPDATED_DATE` datetime DEFAULT NULL,
  `SUBSCRIPTION_DATE` datetime DEFAULT NULL,
  `SUBSCRIPTION_WARNING_EMAIL` varchar(5) DEFAULT 'N',
  `SUBSCRIPTION_EXPIRE_EMAIL` varchar(5) DEFAULT 'N',
  `IS_FIRST_LOGIN` varchar(5) DEFAULT 'N',
  PRIMARY KEY (`USER_ID`),
  KEY `USERS_FK` (`ROLE_MASTER_ID`),
  CONSTRAINT `FK_users_role_master` FOREIGN KEY (`ROLE_MASTER_ID`) REFERENCES `role_master` (`ROLE_MASTER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='USERNAME AND PASSWORD INFO';

-- Dumping data for table compass_new.users: ~10 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`USER_ID`, `ROLE_MASTER_ID`, `EMAIL`, `FACEBOOK_ID`, `TWITTER_ID`, `PASSWORD`, `USERNAME`, `MOBILE_NUMBER`, `VERIFICATION_CODE`, `IS_VERIFIED`, `IS_BLOCKED`, `IS_DELETED`, `IS_RESET_REQUEST_GENERATED`, `IS_RESET_PASSWORD_USED`, `IS_RESET`, `IS_EMAIL_VERIFIED`, `CREATED_DATE`, `NOTIFICATION_UPDATED_DATE`, `SUBSCRIPTION_DATE`, `SUBSCRIPTION_WARNING_EMAIL`, `SUBSCRIPTION_EXPIRE_EMAIL`, `IS_FIRST_LOGIN`) VALUES
	(3, 1, 'admin@admin.com', NULL, NULL, 'OyYzrBczpnEPEH/3RgZd1A==', 'admin', '9988776655', NULL, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', '2015-03-23 10:45:12', NULL, NULL, 'N', 'N', 'N'),
	(13, 4, 'donor@donor.com', NULL, NULL, 'OyYzrBczpnEPEH/3RgZd1A==', NULL, NULL, NULL, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'Y', '2015-09-16 14:05:27', NULL, NULL, 'N', 'N', 'N'),
	(30, 3, 'rsingh4@seasiainfotech.com', NULL, NULL, 'OyYzrBczpnEPEH/3RgZd1A==', NULL, '7696765473', NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-18 18:40:04', NULL, '2015-10-17 05:30:00', 'N', 'N', 'N'),
	(31, 2, 'hgupta@seasiainfotech.com', NULL, NULL, 'OyYzrBczpnEPEH/3RgZd1A==', NULL, NULL, NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-18 18:40:04', NULL, '2015-09-18 18:40:04', 'N', 'N', 'N'),
	(32, 3, 'skumar1@seasiainfotech.com', NULL, NULL, '5WVQR+tNblVWTf/7bx34XA==', NULL, '1231231231', NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 08:29:59', NULL, '2015-10-19 05:30:00', 'N', 'N', 'N'),
	(33, 2, 'rsingh4@seasiainfotech.com', NULL, NULL, 'FS+X+/sc+s/sxkP+9Q0SBQ==', NULL, NULL, NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 08:29:59', NULL, '2015-09-21 08:29:59', 'N', 'N', 'Y'),
	(34, 3, 'tryty@dfg.fgh', NULL, NULL, 'Ogq4xuGPqcs8Gm1Z1KLutA==', NULL, '234234234234', NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 14:54:14', NULL, '2015-10-20 05:30:00', 'N', 'N', 'N'),
	(35, 2, 'ertert@dftg.yt', NULL, NULL, 'qq1pOkK9TWp8QuqPuvm+GA==', NULL, NULL, NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 14:54:14', NULL, '2015-09-21 14:54:14', 'N', 'N', 'Y'),
	(36, 3, 'reter@srt.trd', NULL, NULL, '9TMMovzo3nrqua0petZdXQ==', NULL, '3534543355', NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 14:55:38', NULL, '2015-10-20 05:30:00', 'N', 'N', 'N'),
	(37, 2, 'erter@gft.ft', NULL, NULL, 'OyYzrBczpnEPEH/3RgZd1A==', NULL, NULL, NULL, 'Y', 'N', 'N', 'N', 'Y', 'N', 'Y', '2015-09-21 14:55:38', NULL, '2015-09-21 14:55:38', 'N', 'N', 'N');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
