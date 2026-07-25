/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.3.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: espocrm
-- ------------------------------------------------------
-- Server version	12.3.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_NAME` (`name`,`deleted`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES
('acc_anglo_0000003','Anglo American - Los Bronces',0,'www.angloamerican.com','Customer','Mining',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-07-25 06:23:29',NULL,NULL,NULL,NULL,NULL,'usr_francisc_002',0),
('acc_bhp_000000002','BHP Minera Escondida Ltda.',0,'www.bhp.com','Customer','Mining',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-07-25 06:23:29',NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003',0),
('acc_codelco_00001','Codelco Chile - División El Teniente',0,'www.codelco.com','Customer','Mining',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-07-25 06:23:29',NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001',0),
('acc_sk_0000000004','Sigdo Koppers Montajes Industriales',0,'www.skic.cl','Partner','Construction',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-07-25 06:23:29',NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004',0),
('acc_vial_00000005','Vial y Vives DSD Ingeniería',0,'www.vialyvives.cl','Partner','Engineering',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-07-25 06:23:29',NULL,NULL,NULL,NULL,NULL,'usr_carolina_005',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `account_contact`
--

DROP TABLE IF EXISTS `account_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ACCOUNT_ID_CONTACT_ID` (`account_id`,`contact_id`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_contact`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `account_contact` WRITE;
/*!40000 ALTER TABLE `account_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `account_document`
--

DROP TABLE IF EXISTS `account_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ACCOUNT_ID_DOCUMENT_ID` (`account_id`,`document_id`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_DOCUMENT_ID` (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_document`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `account_document` WRITE;
/*!40000 ALTER TABLE `account_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_document` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `account_portal_user`
--

DROP TABLE IF EXISTS `account_portal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_portal_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ID_ACCOUNT_ID` (`user_id`,`account_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_ACCOUNT_ID` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_portal_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `account_portal_user` WRITE;
/*!40000 ALTER TABLE `account_portal_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_portal_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `account_target_list`
--

DROP TABLE IF EXISTS `account_target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_target_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ACCOUNT_ID_TARGET_LIST_ID` (`account_id`,`target_list_id`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `account_target_list` WRITE;
/*!40000 ALTER TABLE `account_target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `action_history_record`
--

DROP TABLE IF EXISTS `action_history_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_history_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_log_record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_TARGET` (`target_type`,`target_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
  KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_history_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `action_history_record` WRITE;
/*!40000 ALTER TABLE `action_history_record` DISABLE KEYS */;
INSERT INTO `action_history_record` VALUES
('6a644e169af610595',0,1,'Case',NULL,'create','2026-07-25 05:48:06','172.21.0.1','6a644e168ef1a1ef2','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a644e16a45b0f54a',0,2,'Case',NULL,'read','2026-07-25 05:48:06','172.21.0.1','6a644e168ef1a1ef2','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6452a4f25a2711d',0,3,'User',NULL,'read','2026-07-25 06:07:32','172.21.0.1','6a644c0d1b6a80478','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6452c427ab9db1e',0,4,'Case',NULL,'read','2026-07-25 06:08:04','172.21.0.1','6a644e168ef1a1ef2','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6452c7678f39295',0,5,'Case',NULL,'delete','2026-07-25 06:08:07','172.21.0.1','6a644e168ef1a1ef2','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645729dcf796279',0,6,'Task',NULL,'read','2026-07-25 06:26:49','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645735501c7716c',0,7,'Task',NULL,'read','2026-07-25 06:27:01','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6457aaf18a5864a',0,8,'Task',NULL,'read','2026-07-25 06:28:58','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6457b6e31bd4d9e',0,9,'Task',NULL,'create','2026-07-25 06:29:10','172.21.0.1','6a6457b6db626b4ee','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a64590a363c84927',0,10,'Task',NULL,'update','2026-07-25 06:34:50','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645994b8d079901',0,11,'User',NULL,'read','2026-07-25 06:37:08','172.21.0.1','6a644c0d1b6a80478','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a64599f07363ab71',0,12,'User',NULL,'read','2026-07-25 06:37:19','172.21.0.1','6a644c0d1b6a80478','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6459a0630f9e134',0,13,'User',NULL,'read','2026-07-25 06:37:20','172.21.0.1','6a644c0d1b6a80478','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6459d9a417dd42c',0,14,'Opportunity',NULL,'create','2026-07-25 06:38:17','172.21.0.1','6a6459d9a1276da30','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645a030265961c0',0,15,'Opportunity',NULL,'create','2026-07-25 06:38:59','172.21.0.1','6a645a02f3d8e3ccf','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645b11293af16f9',0,16,'Lead',NULL,'read','2026-07-25 06:43:29','172.21.0.1','lead_metso_000003','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645c0ae0814afa0',0,17,'Lead',NULL,'read','2026-07-25 06:47:38','172.21.0.1','lead_new_00000001','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645c19ea39b7bbe',0,18,'Lead',NULL,'read','2026-07-25 06:47:53','172.21.0.1','lead_cnv_00000004','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a645e760d433b6c6',0,19,'Task',NULL,'read','2026-07-25 06:57:58','172.21.0.1','6a6457b6db626b4ee','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a6460cb5582759ad',0,20,'Task',NULL,'read','2026-07-25 07:07:55','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a646387e4244fab1',0,21,'Team',NULL,'read','2026-07-25 07:19:35','172.21.0.1','team_acred_00001','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901'),
('6a64652028f55310c',0,22,'Task',NULL,'read','2026-07-25 07:26:24','172.21.0.1','task_000000000002','6a644c0d1b6a80478','6a644cab750c340f4','6a644cab756f2c901');
/*!40000 ALTER TABLE `action_history_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `address_country`
--

DROP TABLE IF EXISTS `address_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_country` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_preferred` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_country`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `address_country` WRITE;
/*!40000 ALTER TABLE `address_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_country` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `app_log_record`
--

DROP TABLE IF EXISTS `app_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `exception_class` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `request_method` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_resource_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_log_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `app_log_record` WRITE;
/*!40000 ALTER TABLE `app_log_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_log_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `app_secret`
--

DROP TABLE IF EXISTS `app_secret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_secret` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NAME_DELETE_ID` (`name`,`delete_id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_secret`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `app_secret` WRITE;
/*!40000 ALTER TABLE `app_secret` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_secret` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `array_value`
--

DROP TABLE IF EXISTS `array_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `array_value` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
  KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `array_value`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `array_value` WRITE;
/*!40000 ALTER TABLE `array_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `array_value` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_being_uploaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_PARENT` (`parent_type`,`parent_id`),
  KEY `IDX_RELATED` (`related_id`,`related_type`),
  KEY `IDX_SOURCE` (`source_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `auth_log_record`
--

DROP TABLE IF EXISTS `auth_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `denial_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time` double DEFAULT NULL,
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_IP_ADDRESS` (`ip_address`),
  KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
  KEY `IDX_REQUEST_TIME` (`request_time`),
  KEY `IDX_USERNAME_IP_ADDRESS` (`username`,`ip_address`),
  KEY `IDX_PORTAL_ID` (`portal_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_log_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `auth_log_record` WRITE;
/*!40000 ALTER TABLE `auth_log_record` DISABLE KEYS */;
INSERT INTO `auth_log_record` VALUES
('6a644c529143d46f6',0,'admin','172.21.0.1','2026-07-25 05:40:34',1,'CREDENTIALS',1784958034.3712,'http://localhost/api/v1/App/user','GET','Espo',NULL,NULL,NULL),
('6a644c62bd87f6de7',0,'admin','172.21.0.1','2026-07-25 05:40:50',1,'CREDENTIALS',1784958050.5472,'http://localhost/api/v1/App/user','GET','Espo',NULL,NULL,NULL),
('6a644c66aa35e1041',0,'admin','172.21.0.1','2026-07-25 05:40:54',1,'CREDENTIALS',1784958054.4719,'http://localhost/api/v1/App/user','GET','Espo',NULL,NULL,NULL),
('6a644c6aa23c3ccfd',0,'admin','172.21.0.1','2026-07-25 05:40:58',1,'CREDENTIALS',1784958058.439,'http://localhost/api/v1/App/user','GET','Espo',NULL,NULL,NULL),
('6a644c7074fb2bf84',0,'admin','172.21.0.1','2026-07-25 05:41:04',1,'CREDENTIALS',1784958064.2502,'http://localhost/api/v1/App/user','GET','Espo',NULL,NULL,NULL),
('6a644cab756f2c901',0,'admin','172.21.0.1','2026-07-25 05:42:03',0,NULL,1784958123.0895,'http://localhost/api/v1/App/user','GET','Espo',NULL,'6a644c0d1b6a80478','6a644cab750c340f4'),
('6a645e288caf990b1',0,'vanessa','127.0.0.1','2026-07-25 06:56:40',0,NULL,1784962600.3369,'http://localhost/api/v1/App/user','GET','Espo',NULL,'usr_vanessa_0001',NULL);
/*!40000 ALTER TABLE `auth_log_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `auth_token`
--

DROP TABLE IF EXISTS `auth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_token` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `password_version` int(11) NOT NULL DEFAULT 0,
  `last_access` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_TOKEN` (`token`,`deleted`),
  KEY `IDX_HASH` (`hash`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_PORTAL_ID` (`portal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_token`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `auth_token` WRITE;
/*!40000 ALTER TABLE `auth_token` DISABLE KEYS */;
INSERT INTO `auth_token` VALUES
('6a644cab750c340f4',0,'238c7402cfae85f619f09fb97c85579b',NULL,'1b712cda4e05b3d0601a8c098b5f914e','172.21.0.1',1,1,'2026-07-25 07:27:20','2026-07-25 05:42:03','2026-07-25 07:27:20','6a644c0d1b6a80478',NULL);
/*!40000 ALTER TABLE `auth_token` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `authentication_provider`
--

DROP TABLE IF EXISTS `authentication_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_user_info_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_token_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwks_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwt_signature_algorithm_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `oidc_scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `oidc_create_user` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_username_claim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sub',
  `oidc_sync` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_logout_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_pkce` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_provider`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `authentication_provider` WRITE;
/*!40000 ALTER TABLE `authentication_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_provider` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `autofollow`
--

DROP TABLE IF EXISTS `autofollow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `autofollow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_TYPE` (`entity_type`),
  KEY `IDX_USER` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autofollow`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `autofollow` WRITE;
/*!40000 ALTER TABLE `autofollow` DISABLE KEYS */;
/*!40000 ALTER TABLE `autofollow` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `call`
--

DROP TABLE IF EXISTS `call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `call` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Outbound',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  KEY `IDX_DATE_START` (`date_start`,`deleted`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  KEY `IDX_UID` (`uid`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `call` WRITE;
/*!40000 ALTER TABLE `call` DISABLE KEYS */;
INSERT INTO `call` VALUES
('call_real_000001','Verificación Pase de Ingreso Conductores El Teniente',0,'Held','2026-06-15 07:03:51','2026-06-15 07:18:51','Outbound',NULL,NULL,'2026-06-13 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001'),
('call_real_000002','Coordinación Entrega Certificados F30 Sigdo Koppers',0,'Held','2026-06-30 07:03:51','2026-06-30 07:23:51','Inbound',NULL,NULL,'2026-06-28 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002'),
('call_real_000003','Seguimiento Comercial Licitación Los Bronces',0,'Held','2026-07-13 07:03:51','2026-07-13 07:33:51','Outbound',NULL,NULL,'2026-07-11 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003'),
('call_real_000004','Consulta Técnica EPP & Licencias Faena BHP Escondida',0,'Held','2026-07-22 07:03:51','2026-07-22 07:28:51','Inbound',NULL,NULL,'2026-07-20 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004'),
('call_real_000005','Confirmación Asistencia Comité SSO Antofagasta Minerals',0,'Held','2026-07-24 07:03:51','2026-07-24 07:13:51','Outbound',NULL,NULL,'2026-07-23 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_carolina_005'),
('call_real_000006','Llamada Calificación Nuevo Prospecto Minera Collahuasi',0,'Planned','2026-07-26 07:03:51','2026-07-26 08:03:51','Outbound',NULL,NULL,'2026-07-25 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003'),
('call_real_000007','Seguimiento Estado Certificación F30-1 Codelco',0,'Planned','2026-07-27 07:03:51','2026-07-27 08:03:51','Outbound',NULL,NULL,'2026-07-25 07:03:51',NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002');
/*!40000 ALTER TABLE `call` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `call_contact`
--

DROP TABLE IF EXISTS `call_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CALL_ID_CONTACT_ID` (`call_id`,`contact_id`),
  KEY `IDX_CALL_ID` (`call_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_contact`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `call_contact` WRITE;
/*!40000 ALTER TABLE `call_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `call_lead`
--

DROP TABLE IF EXISTS `call_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_lead` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CALL_ID_LEAD_ID` (`call_id`,`lead_id`),
  KEY `IDX_CALL_ID` (`call_id`),
  KEY `IDX_LEAD_ID` (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_lead`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `call_lead` WRITE;
/*!40000 ALTER TABLE `call_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_lead` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `call_user`
--

DROP TABLE IF EXISTS `call_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ID_CALL_ID` (`user_id`,`call_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_CALL_ID` (`call_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `call_user` WRITE;
/*!40000 ALTER TABLE `call_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planning',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Email',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `mail_merge_only_with_address` tinyint(1) NOT NULL DEFAULT 1,
  `budget_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leads_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_CONTACTS_TEMPLATE_ID` (`contacts_template_id`),
  KEY `IDX_LEADS_TEMPLATE_ID` (`leads_template_id`),
  KEY `IDX_ACCOUNTS_TEMPLATE_ID` (`accounts_template_id`),
  KEY `IDX_USERS_TEMPLATE_ID` (`users_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_log_record`
--

DROP TABLE IF EXISTS `campaign_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_additional_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Espo',
  `created_at` datetime DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_item_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACTION_DATE` (`action_date`,`deleted`),
  KEY `IDX_ACTION` (`action`,`deleted`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_OBJECT` (`object_id`,`object_type`),
  KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `campaign_log_record` WRITE;
/*!40000 ALTER TABLE `campaign_log_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_target_list`
--

DROP TABLE IF EXISTS `campaign_target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_target_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `campaign_target_list` WRITE;
/*!40000 ALTER TABLE `campaign_target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_target_list_excluding`
--

DROP TABLE IF EXISTS `campaign_target_list_excluding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_target_list_excluding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_target_list_excluding`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `campaign_target_list_excluding` WRITE;
/*!40000 ALTER TABLE `campaign_target_list_excluding` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_target_list_excluding` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_tracking_url`
--

DROP TABLE IF EXISTS `campaign_tracking_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_tracking_url` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Redirect',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_tracking_url`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `campaign_tracking_url` WRITE;
/*!40000 ALTER TABLE `campaign_tracking_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_tracking_url` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `case` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_LEAD_ID` (`lead_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
INSERT INTO `case` VALUES
('6a644e168ef1a1ef2','q',1,1,'New','Normal',NULL,NULL,0,'2026-07-25 05:48:06','2026-07-25 06:08:07','2026-07-25 05:48:06',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478','6a644c0d1b6a80478','6a644c0d1b6a80478',1),
('case_000000000001','Revisión pase de ingreso conductores turno A - División El Teniente',0,2,'In Process','High',NULL,NULL,0,'2026-07-25 06:23:46',NULL,NULL,'acc_codelco_00001',NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('case_000000000002','Auditoría cotizaciones previsionales F30-1 contratista Sigdo Koppers',0,3,'Closed','Normal',NULL,NULL,0,'2026-07-25 06:23:46',NULL,NULL,'acc_sk_0000000004',NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0);
/*!40000 ALTER TABLE `case` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `case_contact`
--

DROP TABLE IF EXISTS `case_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `case_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CASE_ID_CONTACT_ID` (`case_id`,`contact_id`),
  KEY `IDX_CASE_ID` (`case_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_contact`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `case_contact` WRITE;
/*!40000 ALTER TABLE `case_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `case_knowledge_base_article`
--

DROP TABLE IF EXISTS `case_knowledge_base_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `case_knowledge_base_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CASE_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`case_id`,`knowledge_base_article_id`),
  KEY `IDX_CASE_ID` (`case_id`),
  KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_knowledge_base_article`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `case_knowledge_base_article` WRITE;
/*!40000 ALTER TABLE `case_knowledge_base_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_knowledge_base_article` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  KEY `IDX_NAME` (`first_name`,`last_name`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES
('con_daniel_000001',0,NULL,'Daniel','Rivera Araneda',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:23:29',NULL,NULL,NULL,'acc_codelco_00001',NULL,NULL,NULL,'usr_vanessa_0001'),
('con_daniel_01',0,NULL,'Daniel','Rivera Araneda',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:22:44',NULL,NULL,NULL,'acc_codelco_01',NULL,NULL,NULL,'6a644c0d1b6a80478'),
('con_francisca_003',0,NULL,'Francisca','Pirma',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:23:29',NULL,NULL,NULL,'acc_anglo_0000003',NULL,NULL,NULL,'usr_francisc_002'),
('con_francisca_03',0,NULL,'Francisca','Pirma',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:22:44',NULL,NULL,NULL,'acc_anglo_03',NULL,NULL,NULL,'6a644c0d1b6a80478'),
('con_rodrigo_00004',0,NULL,'Rodrigo','Morales Silva',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:23:29',NULL,NULL,NULL,'acc_codelco_00001',NULL,NULL,NULL,'6a644c0d1b6a80478'),
('con_rodrigo_04',0,NULL,'Rodrigo','Morales Silva',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:22:44',NULL,NULL,NULL,'acc_codelco_01',NULL,NULL,NULL,'6a644c0d1b6a80478'),
('con_vanessa_00002',0,NULL,'Vanessa','Galdames',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:23:29',NULL,NULL,NULL,'acc_bhp_000000002',NULL,NULL,NULL,'usr_vanessa_0001'),
('con_vanessa_02',0,NULL,'Vanessa','Galdames',NULL,0,NULL,NULL,NULL,NULL,NULL,'2026-07-25 06:22:44',NULL,NULL,NULL,'acc_bhp_02',NULL,NULL,NULL,'6a644c0d1b6a80478');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contact_document`
--

DROP TABLE IF EXISTS `contact_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CONTACT_ID_DOCUMENT_ID` (`contact_id`,`document_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_DOCUMENT_ID` (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_document`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `contact_document` WRITE;
/*!40000 ALTER TABLE `contact_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_document` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contact_meeting`
--

DROP TABLE IF EXISTS `contact_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CONTACT_ID_MEETING_ID` (`contact_id`,`meeting_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_MEETING_ID` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_meeting`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `contact_meeting` WRITE;
/*!40000 ALTER TABLE `contact_meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_meeting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contact_opportunity`
--

DROP TABLE IF EXISTS `contact_opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_opportunity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CONTACT_ID_OPPORTUNITY_ID` (`contact_id`,`opportunity_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_opportunity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `contact_opportunity` WRITE;
/*!40000 ALTER TABLE `contact_opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_opportunity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contact_target_list`
--

DROP TABLE IF EXISTS `contact_target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_target_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CONTACT_ID_TARGET_LIST_ID` (`contact_id`,`target_list_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `contact_target_list` WRITE;
/*!40000 ALTER TABLE `contact_target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES
('CLP',1),
('USD',1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `currency_record`
--

DROP TABLE IF EXISTS `currency_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CODE_DELETE_ID` (`code`,`delete_id`),
  KEY `IDX_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `currency_record` WRITE;
/*!40000 ALTER TABLE `currency_record` DISABLE KEYS */;
INSERT INTO `currency_record` VALUES
('6a644c0d0655c30f7',0,'USD','Active','0');
/*!40000 ALTER TABLE `currency_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `currency_record_rate`
--

DROP TABLE IF EXISTS `currency_record_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_record_rate` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `base_code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(20,8) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_RECORD_ID_BASE_CODE_DATE` (`record_id`,`base_code`,`date`,`delete_id`),
  KEY `IDX_RECORD_ID` (`record_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_record_rate`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `currency_record_rate` WRITE;
/*!40000 ALTER TABLE `currency_record_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency_record_rate` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `dashboard_template`
--

DROP TABLE IF EXISTS `dashboard_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_template`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `dashboard_template` WRITE;
/*!40000 ALTER TABLE `dashboard_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_template` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_FOLDER_ID` (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document_folder`
--

DROP TABLE IF EXISTS `document_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_folder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `document_folder` WRITE;
/*!40000 ALTER TABLE `document_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_folder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document_folder_path`
--

DROP TABLE IF EXISTS `document_folder_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_folder_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  KEY `IDX_DESCENDOR_ID` (`descendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_folder_path`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `document_folder_path` WRITE;
/*!40000 ALTER TABLE `document_folder_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_folder_path` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document_lead`
--

DROP TABLE IF EXISTS `document_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_lead` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DOCUMENT_ID_LEAD_ID` (`document_id`,`lead_id`),
  KEY `IDX_DOCUMENT_ID` (`document_id`),
  KEY `IDX_LEAD_ID` (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_lead`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `document_lead` WRITE;
/*!40000 ALTER TABLE `document_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_lead` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document_opportunity`
--

DROP TABLE IF EXISTS `document_opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_opportunity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DOCUMENT_ID_OPPORTUNITY_ID` (`document_id`,`opportunity_id`),
  KEY `IDX_DOCUMENT_ID` (`document_id`),
  KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_opportunity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `document_opportunity` WRITE;
/*!40000 ALTER TABLE `document_opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_opportunity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_name_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id_internal` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `is_auto_reply` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `ics_contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ics_event_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_status_folder` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  KEY `IDX_MESSAGE_ID` (`message_id`),
  KEY `IDX_ICS_EVENT_UID` (`ics_event_uid`),
  KEY `IDX_GROUP_STATUS_FOLDER` (`group_status_folder`),
  KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_SENT_BY_ID` (`sent_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_REPLIED_ID` (`replied_id`),
  KEY `IDX_CREATED_EVENT` (`created_event_id`,`created_event_type`),
  KEY `IDX_GROUP_FOLDER_ID` (`group_folder_id`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`,`body`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_account`
--

DROP TABLE IF EXISTS `email_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `fetch_validity_number` int(11) DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `connected_at` datetime DEFAULT NULL,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_account`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_account` WRITE;
/*!40000 ALTER TABLE `email_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_address`
--

DROP TABLE IF EXISTS `email_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_address` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `lower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_LOWER` (`lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_address` WRITE;
/*!40000 ALTER TABLE `email_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_email_account`
--

DROP TABLE IF EXISTS `email_email_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_email_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ACCOUNT_ID` (`email_id`,`email_account_id`),
  KEY `IDX_EMAIL_ID` (`email_id`),
  KEY `IDX_EMAIL_ACCOUNT_ID` (`email_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_email_account`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_email_account` WRITE;
/*!40000 ALTER TABLE `email_email_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_email_account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_email_address`
--

DROP TABLE IF EXISTS `email_email_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_email_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ADDRESS_ID_ADDRESS_TYPE` (`email_id`,`email_address_id`,`address_type`),
  KEY `IDX_EMAIL_ID` (`email_id`),
  KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_email_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_email_address` WRITE;
/*!40000 ALTER TABLE `email_email_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_email_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_filter`
--

DROP TABLE IF EXISTS `email_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_filter` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `body_contains_all` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Skip',
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `skip_notification` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_filter`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_filter` WRITE;
/*!40000 ALTER TABLE `email_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_filter` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_folder`
--

DROP TABLE IF EXISTS `email_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `skip_notifications` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_folder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_folder` WRITE;
/*!40000 ALTER TABLE `email_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_folder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_inbound_email`
--

DROP TABLE IF EXISTS `email_inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_inbound_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EMAIL_ID_INBOUND_EMAIL_ID` (`email_id`,`inbound_email_id`),
  KEY `IDX_EMAIL_ID` (`email_id`),
  KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_inbound_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_inbound_email` WRITE;
/*!40000 ALTER TABLE `email_inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_inbound_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_queue_item`
--

DROP TABLE IF EXISTS `email_queue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_SENT_AT` (`sent_at`),
  KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  KEY `IDX_TARGET` (`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_queue_item`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_queue_item` WRITE;
/*!40000 ALTER TABLE `email_queue_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_queue_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `one_off` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_template` WRITE;
/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_template_category`
--

DROP TABLE IF EXISTS `email_template_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_category`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_template_category` WRITE;
/*!40000 ALTER TABLE `email_template_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template_category` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_template_category_path`
--

DROP TABLE IF EXISTS `email_template_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template_category_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  KEY `IDX_DESCENDOR_ID` (`descendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_category_path`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_template_category_path` WRITE;
/*!40000 ALTER TABLE `email_template_category_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template_category_path` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_user`
--

DROP TABLE IF EXISTS `email_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_important` tinyint(1) DEFAULT 0,
  `in_trash` tinyint(1) DEFAULT 0,
  `in_archive` tinyint(1) DEFAULT 0,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EMAIL_ID_USER_ID` (`email_id`,`user_id`),
  KEY `IDX_EMAIL_ID` (`email_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `email_user` WRITE;
/*!40000 ALTER TABLE `email_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `entity_collaborator`
--

DROP TABLE IF EXISTS `entity_collaborator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_collaborator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  KEY `IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_collaborator`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `entity_collaborator` WRITE;
/*!40000 ALTER TABLE `entity_collaborator` DISABLE KEYS */;
INSERT INTO `entity_collaborator` VALUES
(1,'6a644e168ef1a1ef2','6a644c0d1b6a80478','Case',0),
(2,'6a6457b6db626b4ee','6a644c0d1b6a80478','Task',0);
/*!40000 ALTER TABLE `entity_collaborator` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `entity_email_address`
--

DROP TABLE IF EXISTS `entity_email_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_email_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ENTITY_ID_EMAIL_ADDRESS_ID_ENTITY_TYPE` (`entity_id`,`email_address_id`,`entity_type`),
  KEY `IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_email_address`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `entity_email_address` WRITE;
/*!40000 ALTER TABLE `entity_email_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_email_address` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `entity_phone_number`
--

DROP TABLE IF EXISTS `entity_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_phone_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ENTITY_ID_PHONE_NUMBER_ID_ENTITY_TYPE` (`entity_id`,`phone_number_id`,`entity_type`),
  KEY `IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_phone_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `entity_phone_number` WRITE;
/*!40000 ALTER TABLE `entity_phone_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_phone_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `entity_team`
--

DROP TABLE IF EXISTS `entity_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ENTITY_ID_TEAM_ID_ENTITY_TYPE` (`entity_id`,`team_id`,`entity_type`),
  KEY `IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_TEAM_ID` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `entity_team` WRITE;
/*!40000 ALTER TABLE `entity_team` DISABLE KEYS */;
INSERT INTO `entity_team` VALUES
(1,'task_000000000001','team_acred_00001','Task',0),
(2,'task_000000000002','team_acred_00001','Task',0),
(3,'tsk_real_000002','team_acred_00001','Task',0),
(4,'tsk_real_000008','team_acred_00001','Task',0),
(5,'tsk_real_000001','team_acred_00001','Task',0),
(6,'tsk_real_000005','team_acred_00001','Task',0),
(8,'task_000000000001','team_cumpl_00002','Task',0),
(9,'task_000000000002','team_cumpl_00002','Task',0),
(10,'tsk_real_000007','team_cumpl_00002','Task',0),
(11,'tsk_real_000010','team_cumpl_00002','Task',0),
(12,'tsk_real_000003','team_cumpl_00002','Task',0),
(13,'tsk_real_000006','team_cumpl_00002','Task',0),
(15,'task_000000000001','team_ventas_00003','Task',0),
(16,'task_000000000002','team_ventas_00003','Task',0),
(17,'tsk_real_000004','team_ventas_00003','Task',0),
(18,'tsk_real_000009','team_ventas_00003','Task',0),
(22,'meet_000000000001','team_acred_00001','Meeting',0),
(23,'meet_000000000002','team_acred_00001','Meeting',0),
(24,'meet_real_000004','team_acred_00001','Meeting',0),
(25,'meet_real_000001','team_acred_00001','Meeting',0),
(26,'meet_real_000007','team_acred_00001','Meeting',0),
(29,'meet_000000000001','team_cumpl_00002','Meeting',0),
(30,'meet_000000000002','team_cumpl_00002','Meeting',0),
(31,'meet_real_000005','team_cumpl_00002','Meeting',0),
(32,'meet_real_000002','team_cumpl_00002','Meeting',0),
(33,'meet_real_000008','team_cumpl_00002','Meeting',0),
(36,'meet_000000000001','team_ventas_00003','Meeting',0),
(37,'meet_000000000002','team_ventas_00003','Meeting',0),
(38,'meet_real_000003','team_ventas_00003','Meeting',0),
(39,'meet_real_000006','team_ventas_00003','Meeting',0),
(43,'call_real_000004','team_acred_00001','Call',0),
(44,'call_real_000001','team_acred_00001','Call',0),
(46,'call_real_000005','team_cumpl_00002','Call',0),
(47,'call_real_000002','team_cumpl_00002','Call',0),
(48,'call_real_000007','team_cumpl_00002','Call',0),
(49,'call_real_000003','team_ventas_00003','Call',0),
(50,'call_real_000006','team_ventas_00003','Call',0);
/*!40000 ALTER TABLE `entity_team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `entity_user`
--

DROP TABLE IF EXISTS `entity_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  KEY `IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `entity_user` WRITE;
/*!40000 ALTER TABLE `entity_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `export` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_ATTACHMENT` (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `export` WRITE;
/*!40000 ALTER TABLE `export` DISABLE KEYS */;
/*!40000 ALTER TABLE `export` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `extension` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `check_version_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_LICENSE_STATUS` (`license_status`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `extension` WRITE;
/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `external_account`
--

DROP TABLE IF EXISTS `external_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_account`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `external_account` WRITE;
/*!40000 ALTER TABLE `external_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `group_email_folder`
--

DROP TABLE IF EXISTS `group_email_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_email_folder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `group_email_folder` WRITE;
/*!40000 ALTER TABLE `group_email_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_email_folder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `group_email_folder_team`
--

DROP TABLE IF EXISTS `group_email_folder_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_email_folder_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_GROUP_EMAIL_FOLDER_ID_TEAM_ID` (`group_email_folder_id`,`team_id`),
  KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  KEY `IDX_TEAM_ID` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_email_folder_team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `group_email_folder_team` WRITE;
/*!40000 ALTER TABLE `group_email_folder_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_email_folder_team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `import` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_index` int(11) DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `import_entity`
--

DROP TABLE IF EXISTS `import_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_entity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT 0,
  `is_imported` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `is_duplicate` tinyint(1) NOT NULL DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  KEY `IDX_IMPORT` (`import_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_entity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `import_entity` WRITE;
/*!40000 ALTER TABLE `import_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_entity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `import_error`
--

DROP TABLE IF EXISTS `import_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_error` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `row_index` int(11) DEFAULT NULL,
  `export_row_index` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_failures` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ROW_INDEX` (`row_index`),
  KEY `IDX_IMPORT_ROW_INDEX` (`import_id`,`row_index`),
  KEY `IDX_IMPORT_ID` (`import_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_error`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `import_error` WRITE;
/*!40000 ALTER TABLE `import_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_error` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `fetch_validity_number` int(11) DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_all_team_users` tinyint(1) NOT NULL DEFAULT 1,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `connected_at` datetime DEFAULT NULL,
  `exclude_from_reply` tinyint(1) NOT NULL DEFAULT 0,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_shared` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_for_mass_email` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `create_case` tinyint(1) NOT NULL DEFAULT 0,
  `case_distribution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Direct-Assignment',
  `target_user_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assign_to_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
  KEY `IDX_TEAM_ID` (`team_id`),
  KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
  KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `inbound_email_team`
--

DROP TABLE IF EXISTS `inbound_email_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_INBOUND_EMAIL_ID_TEAM_ID` (`inbound_email_id`,`team_id`),
  KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  KEY `IDX_TEAM_ID` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `inbound_email_team` WRITE;
/*!40000 ALTER TABLE `inbound_email_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `integration`
--

DROP TABLE IF EXISTS `integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `integration` (
  `id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integration`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `integration` WRITE;
/*!40000 ALTER TABLE `integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `integration` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `execute_time` datetime DEFAULT NULL,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `target_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_STATUS_SCHEDULED_JOB_ID` (`status`,`scheduled_job_id`),
  KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `kanban_order`
--

DROP TABLE IF EXISTS `kanban_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kanban_order` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_USER_ID` (`entity_type`,`entity_id`,`user_id`),
  KEY `IDX_ENTITY_TYPE` (`entity_type`),
  KEY `IDX_ENTITY_TYPE_USER_ID` (`entity_type`,`user_id`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  KEY `IDX_USER` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanban_order`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `kanban_order` WRITE;
/*!40000 ALTER TABLE `kanban_order` DISABLE KEYS */;
INSERT INTO `kanban_order` VALUES
('6a6457b6e7789a491',0,0,'Not Started','6a6457b6db626b4ee','Task','6a644c0d1b6a80478'),
('6a64590a3b4238be5',0,0,'Started','task_000000000002','Task','6a644c0d1b6a80478'),
('6a6459ca893a6989e',0,0,'Proposal','opp_0000000000005','Opportunity','6a644c0d1b6a80478'),
('6a6459ca893db0284',0,1,'Proposal','opp_0000000000003','Opportunity','6a644c0d1b6a80478'),
('6a6459d9a8568a082',0,0,'Prospecting','6a6459d9a1276da30','Opportunity','6a644c0d1b6a80478'),
('6a645a030730150f2',0,0,'Qualification','6a645a02f3d8e3ccf','Opportunity','6a644c0d1b6a80478'),
('6a6460a9cf0d36d07',0,0,'Completed','task_000000000001','Task','6a644c0d1b6a80478'),
('6a6460a9cf1046140',0,1,'Completed','tsk_real_000005','Task','6a644c0d1b6a80478'),
('6a6460a9cf1286fd0',0,2,'Completed','tsk_real_000006','Task','6a644c0d1b6a80478'),
('6a6460a9cf148c1ab',0,3,'Completed','tsk_real_000007','Task','6a644c0d1b6a80478');
/*!40000 ALTER TABLE `kanban_order` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `knowledge_base_article`
--

DROP TABLE IF EXISTS `knowledge_base_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base_article` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Article',
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base_article`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `knowledge_base_article` WRITE;
/*!40000 ALTER TABLE `knowledge_base_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base_article` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `knowledge_base_article_knowledge_base_category`
--

DROP TABLE IF EXISTS `knowledge_base_article_knowledge_base_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base_article_knowledge_base_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_KNOWLEDGE_BASE_ARTICLE_ID_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_article_id`,`knowledge_base_category_id`),
  KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`),
  KEY `IDX_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base_article_knowledge_base_category`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `knowledge_base_article_knowledge_base_category` WRITE;
/*!40000 ALTER TABLE `knowledge_base_article_knowledge_base_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base_article_knowledge_base_category` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `knowledge_base_article_portal`
--

DROP TABLE IF EXISTS `knowledge_base_article_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base_article_portal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_PORTAL_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`portal_id`,`knowledge_base_article_id`),
  KEY `IDX_PORTAL_ID` (`portal_id`),
  KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base_article_portal`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `knowledge_base_article_portal` WRITE;
/*!40000 ALTER TABLE `knowledge_base_article_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base_article_portal` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `knowledge_base_category`
--

DROP TABLE IF EXISTS `knowledge_base_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base_category`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `knowledge_base_category` WRITE;
/*!40000 ALTER TABLE `knowledge_base_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base_category` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `knowledge_base_category_path`
--

DROP TABLE IF EXISTS `knowledge_base_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base_category_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  KEY `IDX_DESCENDOR_ID` (`descendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base_category_path`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `knowledge_base_category_path` WRITE;
/*!40000 ALTER TABLE `knowledge_base_category_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base_category_path` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `layout_record`
--

DROP TABLE IF EXISTS `layout_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `layout_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_NAME_LAYOUT_SET_ID` (`name`,`layout_set_id`),
  KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `layout_record` WRITE;
/*!40000 ALTER TABLE `layout_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `layout_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `layout_set`
--

DROP TABLE IF EXISTS `layout_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `layout_set` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_set`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `layout_set` WRITE;
/*!40000 ALTER TABLE `layout_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `layout_set` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount` double DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  KEY `IDX_NAME` (`first_name`,`last_name`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_CREATED_AT_STATUS` (`created_at`,`status`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_CREATED_ACCOUNT_ID` (`created_account_id`),
  KEY `IDX_CREATED_CONTACT_ID` (`created_contact_id`),
  KEY `IDX_CREATED_OPPORTUNITY_ID` (`created_opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lead` WRITE;
/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
INSERT INTO `lead` VALUES
('lead_ass_00000002',0,NULL,'Matías','Tapia','Subgerente Relaciones Laborales','Assigned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-07-11 06:44:43',NULL,'Compañía Minera Doña Inés de Collahuasi',NULL,NULL,NULL,NULL,NULL,'usr_francisc_002',NULL,NULL,NULL,NULL),
('lead_cnv_00000004',0,NULL,'Roberto','Lagos','Superintendente de Operaciones','Converted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-05-26 06:44:43',NULL,'ENAEX Chile Servicios Mineros',NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001',NULL,NULL,NULL,NULL),
('lead_ded_00000006',0,NULL,'Felipe','Sepúlveda','Administrador de Contrato','Dead',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-04-26 06:44:43',NULL,'Constructora e Inmobiliaria Icafal',NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003',NULL,NULL,NULL,NULL),
('lead_inp_00000003',0,NULL,'Gabriel','Soto','Gerente de Contratos','In Process',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-06-25 06:44:43',NULL,'Antofagasta Minerals - Los Pelambres',NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003',NULL,NULL,NULL,NULL),
('lead_new_00000001',0,NULL,'Carolina','Araya','Jefa HSEQ','New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-07-23 06:44:43',NULL,'Metso Outotec Chile Services',NULL,NULL,NULL,NULL,NULL,'usr_carolina_005',NULL,NULL,NULL,NULL),
('lead_rec_00000005',0,NULL,'Gonzalo','Henríquez','Jefe de Compras y Servicios','Recycled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2026-05-11 06:44:43',NULL,'Komatsu Mining Chile',NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lead_capture`
--

DROP TABLE IF EXISTS `lead_capture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_capture` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_contact_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `field_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `field_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duplicate_check` tinyint(1) NOT NULL DEFAULT 1,
  `opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `opt_in_confirmation_lifetime` int(11) DEFAULT 48,
  `opt_in_confirmation_success_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_lead_before_opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `skip_opt_in_confirmation_if_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Web Site',
  `api_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `form_title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_theme` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_success_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_success_redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_frame_ancestors` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `form_captcha` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_in_confirmation_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pipeline_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
  KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_TEMPLATE_ID` (`opt_in_confirmation_email_template_id`),
  KEY `IDX_PIPELINE_ID` (`pipeline_id`),
  KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
  KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_capture`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lead_capture` WRITE;
/*!40000 ALTER TABLE `lead_capture` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_capture` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lead_capture_log_record`
--

DROP TABLE IF EXISTS `lead_capture_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_capture_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `lead_capture_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
  KEY `IDX_TARGET` (`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_capture_log_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lead_capture_log_record` WRITE;
/*!40000 ALTER TABLE `lead_capture_log_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_capture_log_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lead_meeting`
--

DROP TABLE IF EXISTS `lead_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_LEAD_ID_MEETING_ID` (`lead_id`,`meeting_id`),
  KEY `IDX_LEAD_ID` (`lead_id`),
  KEY `IDX_MEETING_ID` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_meeting`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lead_meeting` WRITE;
/*!40000 ALTER TABLE `lead_meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_meeting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `lead_target_list`
--

DROP TABLE IF EXISTS `lead_target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_target_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_LEAD_ID_TARGET_LIST_ID` (`lead_id`,`target_list_id`),
  KEY `IDX_LEAD_ID` (`lead_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `lead_target_list` WRITE;
/*!40000 ALTER TABLE `lead_target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `mass_action`
--

DROP TABLE IF EXISTS `mass_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mass_action` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_action`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mass_action` WRITE;
/*!40000 ALTER TABLE `mass_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `mass_action` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `mass_email`
--

DROP TABLE IF EXISTS `mass_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mass_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out_entirely` tinyint(1) NOT NULL DEFAULT 0,
  `from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EMAIL_TEMPLATE_ID` (`email_template_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mass_email` WRITE;
/*!40000 ALTER TABLE `mass_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `mass_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `mass_email_target_list`
--

DROP TABLE IF EXISTS `mass_email_target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mass_email_target_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_email_target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mass_email_target_list` WRITE;
/*!40000 ALTER TABLE `mass_email_target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mass_email_target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `mass_email_target_list_excluding`
--

DROP TABLE IF EXISTS `mass_email_target_list_excluding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mass_email_target_list_excluding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_email_target_list_excluding`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mass_email_target_list_excluding` WRITE;
/*!40000 ALTER TABLE `mass_email_target_list_excluding` DISABLE KEYS */;
/*!40000 ALTER TABLE `mass_email_target_list_excluding` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_service` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  KEY `IDX_DATE_START` (`date_start`,`deleted`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  KEY `IDX_UID` (`uid`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES
('meet_000000000001','Reunión de Inicio Acreditación Codelco El Teniente',0,'Held','2026-07-25 06:23:46','2026-07-25 07:23:46',0,NULL,NULL,NULL,NULL,'2026-07-25 06:23:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478'),
('meet_000000000002','Presentación Propuesta Auditoría Ley 20.123 BHP',0,'Planned','2026-07-26 06:23:46','2026-07-25 08:23:46',0,NULL,NULL,NULL,NULL,'2026-07-25 06:23:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478'),
('meet_real_000001','Reunión de Auditoría Ley 20.123 Codelco El Teniente',0,'Held','2026-06-10 06:58:49','2026-06-10 08:58:49',0,NULL,NULL,NULL,NULL,'2026-06-05 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001'),
('meet_real_000002','Revisión de Carpetas Acreditación Sigdo Koppers',0,'Held','2026-06-25 06:58:49','2026-06-25 07:58:49',0,NULL,NULL,NULL,NULL,'2026-06-20 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002'),
('meet_real_000003','Presentación Comercial Propuesta Los Bronces',0,'Held','2026-07-10 06:58:49','2026-07-10 08:28:49',0,NULL,NULL,NULL,NULL,'2026-07-05 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003'),
('meet_real_000004','Inspección de Pase de Ingreso Conductores Faena',0,'Held','2026-07-20 06:58:49','2026-07-20 07:58:49',0,NULL,NULL,NULL,NULL,'2026-07-17 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004'),
('meet_real_000005','Comité SSO & Evaluación de Riesgos Subcontratistas',0,'Held','2026-07-23 06:58:49','2026-07-23 08:58:49',0,NULL,NULL,NULL,NULL,'2026-07-21 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carolina_005'),
('meet_real_000006','Coordinación Acreditación Anual Minera Centinela',0,'Planned','2026-07-26 06:58:49','2026-07-26 07:58:49',0,NULL,NULL,NULL,NULL,'2026-07-25 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003'),
('meet_real_000007','Auditoría de Terreno Cotizaciones Previsionales BHP',0,'Planned','2026-07-28 06:58:49','2026-07-28 08:58:49',0,NULL,NULL,NULL,NULL,'2026-07-25 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001'),
('meet_real_000008','Mesa de Trabajo Ley de Subcontratación Collahuasi',0,'Planned','2026-07-30 06:58:49','2026-07-30 08:58:49',0,NULL,NULL,NULL,NULL,'2026-07-25 06:58:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002');
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meeting_user`
--

DROP TABLE IF EXISTS `meeting_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ID_MEETING_ID` (`user_id`,`meeting_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_MEETING_ID` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `meeting_user` WRITE;
/*!40000 ALTER TABLE `meeting_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `next_number`
--

DROP TABLE IF EXISTS `next_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `next_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_TYPE_FIELD_NAME` (`entity_type`,`field_name`),
  KEY `IDX_ENTITY_TYPE` (`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `next_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `next_number` WRITE;
/*!40000 ALTER TABLE `next_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `next_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `post` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Post',
  `target_type` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_CREATED_BY_NUMBER` (`created_by_id`,`number`),
  KEY `IDX_TYPE` (`type`),
  KEY `IDX_TARGET_TYPE` (`target_type`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_PARENT_TYPE` (`parent_type`),
  KEY `IDX_RELATED_ID` (`related_id`),
  KEY `IDX_RELATED_TYPE` (`related_type`),
  KEY `IDX_SUPER_PARENT_TYPE` (`super_parent_type`),
  KEY `IDX_SUPER_PARENT_ID` (`super_parent_id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_RELATED` (`related_id`,`related_type`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`),
  FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`post`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES
('6a644e1696a57b823',0,NULL,'{\"statusValue\":\"New\",\"statusField\":\"status\"}','Create',NULL,1,0,0,0,'2026-07-25 05:48:06','2026-07-25 05:48:06','6a644e168ef1a1ef2','Case',NULL,NULL,'6a644c0d1b6a80478',NULL,NULL,NULL),
('6a6457b6df3af2032',0,NULL,'{\"assignedUserId\":\"6a644c0d1b6a80478\",\"assignedUserName\":\"Admin\",\"statusValue\":\"Not Started\",\"statusField\":\"status\"}','Create',NULL,2,0,0,0,'2026-07-25 06:29:10','2026-07-25 06:29:10','6a6457b6db626b4ee','Task',NULL,NULL,'6a644c0d1b6a80478',NULL,NULL,NULL),
('6a64590a356c24a95',0,NULL,'{\"fields\":[],\"attributes\":{\"was\":{},\"became\":{}},\"value\":\"Started\"}','Update',NULL,3,0,0,0,'2026-07-25 06:34:50','2026-07-25 06:34:50','task_000000000002','Task',NULL,NULL,'6a644c0d1b6a80478',NULL,NULL,NULL),
('6a6459d9a2b2bc1c6',0,NULL,'{\"statusValue\":\"Prospecting\",\"statusField\":\"stage\"}','Create',NULL,4,0,0,0,'2026-07-25 06:38:17','2026-07-25 06:38:17','6a6459d9a1276da30','Opportunity',NULL,NULL,'6a644c0d1b6a80478',NULL,NULL,NULL),
('6a645a03012724cb1',0,NULL,'{\"statusValue\":\"Qualification\",\"statusField\":\"stage\"}','Create',NULL,5,0,0,0,'2026-07-25 06:38:59','2026-07-25 06:38:59','6a645a02f3d8e3ccf','Opportunity',NULL,NULL,'6a644c0d1b6a80478',NULL,NULL,NULL);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `note_portal`
--

DROP TABLE IF EXISTS `note_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_portal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NOTE_ID_PORTAL_ID` (`note_id`,`portal_id`),
  KEY `IDX_NOTE_ID` (`note_id`),
  KEY `IDX_PORTAL_ID` (`portal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_portal`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `note_portal` WRITE;
/*!40000 ALTER TABLE `note_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_portal` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `note_team`
--

DROP TABLE IF EXISTS `note_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NOTE_ID_TEAM_ID` (`note_id`,`team_id`),
  KEY `IDX_NOTE_ID` (`note_id`),
  KEY `IDX_TEAM_ID` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `note_team` WRITE;
/*!40000 ALTER TABLE `note_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `note_user`
--

DROP TABLE IF EXISTS `note_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NOTE_ID_USER_ID` (`note_id`,`user_id`),
  KEY `IDX_NOTE_ID` (`note_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `note_user` WRITE;
/*!40000 ALTER TABLE `note_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `email_is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_USER` (`user_id`,`number`),
  KEY `IDX_USER_ID_READ_RELATED_PARENT_TYPE` (`user_id`,`deleted`,`read`,`related_parent_type`),
  KEY `IDX_ACTION_ID` (`action_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_RELATED` (`related_id`,`related_type`),
  KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `o_auth_account`
--

DROP TABLE IF EXISTS `o_auth_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `o_auth_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `access_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_PROVIDER_ID` (`provider_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o_auth_account`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `o_auth_account` WRITE;
/*!40000 ALTER TABLE `o_auth_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `o_auth_account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `o_auth_provider`
--

DROP TABLE IF EXISTS `o_auth_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `o_auth_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `client_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_endpoint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_endpoint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `authorization_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope_separator` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o_auth_provider`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `o_auth_provider` WRITE;
/*!40000 ALTER TABLE `o_auth_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `o_auth_provider` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunity` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `amount` double DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Prospecting',
  `last_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  KEY `IDX_STAGE` (`stage`,`deleted`),
  KEY `IDX_LAST_STAGE` (`last_stage`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_CREATED_AT_STAGE` (`created_at`,`stage`),
  KEY `IDX_ASSIGNED_USER_STAGE` (`assigned_user_id`,`stage`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
INSERT INTO `opportunity` VALUES
('opp_0000000000001','Acreditación Integral Subcontratistas Codelco El Teniente',0,28500000,'Closed Won',NULL,NULL,NULL,'2026-07-10',NULL,'2026-07-25 06:23:46',NULL,'CLP',NULL,'acc_codelco_00001',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000002','Auditoría Laboral Ley 20.123 BHP Escondida',0,16000000,'Negotiation',NULL,NULL,NULL,'2026-08-15',NULL,'2026-07-25 06:23:46',NULL,'CLP',NULL,'acc_bhp_000000002',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000003','Servicio Control de Acceso y Vehículos Los Bronces',0,22000000,'Proposal',NULL,NULL,NULL,'2026-08-25',NULL,'2026-07-25 06:23:46',NULL,'CLP',NULL,'acc_anglo_0000003',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000004','Plataforma Cumplimiento Previsional Sigdo Koppers',0,9500000,'Closed Won',NULL,NULL,NULL,'2026-07-22',NULL,'2026-07-25 06:23:46',NULL,'CLP',NULL,'acc_sk_0000000004',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000005','Acreditación Maquinaria Pesada Antofagasta Minerals',0,14000000,'Proposal',NULL,NULL,NULL,'2026-09-10',NULL,'2026-07-25 06:23:46',NULL,'CLP',NULL,'acc_vial_00000005',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000006','Acreditación Inicial Contratistas Chuquicamata',0,15000000,'Closed Won',NULL,NULL,NULL,'2026-05-15',NULL,'2026-05-01 08:30:00',NULL,'CLP',NULL,'acc_codelco_00001',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000007','Auditoría Previsional Ley 20.123 El Teniente Mayo',0,24500000,'Closed Won',NULL,NULL,NULL,'2026-06-20',NULL,'2026-06-05 10:15:00',NULL,'CLP',NULL,'acc_codelco_00001',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_0000000000008','Servicios de Verificación Contratistas Collahuasi',0,19000000,'Negotiation',NULL,NULL,NULL,'2026-08-05',NULL,'2026-07-01 12:00:00',NULL,'CLP',NULL,'acc_bhp_000000002',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_closedlost03','Servicio Auditoría Externa Minera Lomas Bayas',0,8000000,'Closed Lost',NULL,NULL,NULL,'2026-06-15',NULL,'2026-05-26 06:46:57',NULL,'CLP',NULL,'acc_vial_00000005',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_prospect_001','Acreditación Cargas Especiales Minera Centinela',0,11500000,'Prospecting',NULL,NULL,NULL,'2026-09-23',NULL,'2026-07-18 06:46:57',NULL,'CLP',NULL,'acc_bhp_000000002',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0),
('opp_qualific_002','Auditoría Control Contratistas Albemarle Planta Salar',0,13000000,'Qualification',NULL,NULL,NULL,'2026-09-08',NULL,'2026-07-22 06:46:57',NULL,'CLP',NULL,'acc_sk_0000000004',NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0);
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `password_change_request`
--

DROP TABLE IF EXISTS `password_change_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_change_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_REQUEST_ID` (`request_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_change_request`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `password_change_request` WRITE;
/*!40000 ALTER TABLE `password_change_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_change_request` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_NUMERIC` (`numeric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pipeline`
--

DROP TABLE IF EXISTS `pipeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pipeline` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `is_available_for_all` tinyint(1) NOT NULL DEFAULT 1,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ENTITY_TYPE_STATUS` (`entity_type`,`status`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipeline`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pipeline` WRITE;
/*!40000 ALTER TABLE `pipeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipeline` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `pipeline_stage`
--

DROP TABLE IF EXISTS `pipeline_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pipeline_stage` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `mapped_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `pipeline_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_PIPELINE_ID` (`pipeline_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipeline_stage`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `pipeline_stage` WRITE;
/*!40000 ALTER TABLE `pipeline_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipeline_stage` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `portal`
--

DROP TABLE IF EXISTS `portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portal` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tab_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `quick_create_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `application_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` int(11) DEFAULT -1,
  `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_lifetime` double DEFAULT NULL,
  `auth_token_max_idle_time` double DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CUSTOM_ID` (`custom_id`),
  KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  KEY `IDX_AUTHENTICATION_PROVIDER_ID` (`authentication_provider_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `portal` WRITE;
/*!40000 ALTER TABLE `portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `portal_portal_role`
--

DROP TABLE IF EXISTS `portal_portal_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portal_portal_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_PORTAL_ID_PORTAL_ROLE_ID` (`portal_id`,`portal_role_id`),
  KEY `IDX_PORTAL_ID` (`portal_id`),
  KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_portal_role`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `portal_portal_role` WRITE;
/*!40000 ALTER TABLE `portal_portal_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_portal_role` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `portal_role`
--

DROP TABLE IF EXISTS `portal_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portal_role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_role`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `portal_role` WRITE;
/*!40000 ALTER TABLE `portal_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_role` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `portal_role_user`
--

DROP TABLE IF EXISTS `portal_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portal_role_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_PORTAL_ROLE_ID_USER_ID` (`portal_role_id`,`user_id`),
  KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_role_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `portal_role_user` WRITE;
/*!40000 ALTER TABLE `portal_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_role_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `portal_user`
--

DROP TABLE IF EXISTS `portal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_PORTAL_ID_USER_ID` (`portal_id`,`user_id`),
  KEY `IDX_PORTAL_ID` (`portal_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `portal_user` WRITE;
/*!40000 ALTER TABLE `portal_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES
('6a644c0d1b6a80478','{\n    \"id\": \"6a644c0d1b6a80478\",\n    \"weekStart\": -1,\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"d369165\",\n                    \"name\": \"SalesByMonth\",\n                    \"x\": 2,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d117937\",\n                    \"name\": \"OpportunitiesByStage\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"d48159\",\n                    \"name\": \"SalesPipeline\",\n                    \"x\": 0,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 4\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {\n        \"d117937\": {\n            \"title\": \"Oportunidades por Etapa\",\n            \"dateFilter\": \"currentYear\"\n        },\n        \"default-activities\": {\n            \"title\": \"Mis pr\\u00f3ximas actividades\",\n            \"autorefreshInterval\": 0.5,\n            \"displayRecords\": 10,\n            \"enabledScopeList\": [\n                \"Meeting\",\n                \"Call\",\n                \"Task\"\n            ],\n            \"futureDays\": 60,\n            \"includeShared\": false\n        }\n    },\n    \"exportDelimiter\": \",\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"assignmentNotificationsIgnoreEntityTypeList\": [],\n    \"reactionNotifications\": true,\n    \"reactionNotificationsNotFollowed\": false,\n    \"notificationGrouping\": true,\n    \"notificationSound\": false,\n    \"defaultReminders\": [],\n    \"defaultRemindersTask\": [],\n    \"useCustomTabList\": false,\n    \"addCustomTabs\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": true,\n    \"doNotFillAssignedUserIfNotRequired\": true,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false,\n    \"followCreatedEntityTypeList\": [],\n    \"followAsCollaborator\": true,\n    \"emailUseExternalClient\": false,\n    \"scopeColorsDisabled\": false,\n    \"tabColorsDisabled\": false,\n    \"textSearchStoringDisabled\": false,\n    \"calendarSlotDuration\": null,\n    \"calendarScrollHour\": null\n}');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `reminder`
--

DROP TABLE IF EXISTS `reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `remind_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Popup',
  `seconds` int(11) DEFAULT 0,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_REMIND_AT` (`remind_at`),
  KEY `IDX_START_AT` (`start_at`),
  KEY `IDX_TYPE` (`type`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `reminder` WRITE;
/*!40000 ALTER TABLE `reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `message_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `follower_management_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `audit_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mention_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_calendar_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `lock_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `role_team`
--

DROP TABLE IF EXISTS `role_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ROLE_ID_TEAM_ID` (`role_id`,`team_id`),
  KEY `IDX_ROLE_ID` (`role_id`),
  KEY `IDX_TEAM_ID` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `role_team` WRITE;
/*!40000 ALTER TABLE `role_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ROLE_ID_USER_ID` (`role_id`,`user_id`),
  KEY `IDX_ROLE_ID` (`role_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `scheduled_job`
--

DROP TABLE IF EXISTS `scheduled_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `scheduling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_job`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `scheduled_job` WRITE;
/*!40000 ALTER TABLE `scheduled_job` DISABLE KEYS */;
INSERT INTO `scheduled_job` VALUES
('6a644c0d007565a0d','Submit Popup Reminders',0,'SubmitPopupReminders','Active','* * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d0141307a7','Process Job Group',0,'ProcessJobGroup','Active','* * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d01cd52b5e','Process Job Queue q0',0,'ProcessJobQueueQ0','Active','* * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d025581aa6','Process Job Queue q1',0,'ProcessJobQueueQ1','Active','*/1 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d03210899e','Process Job Queue e0',0,'ProcessJobQueueE0','Active','* * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d039ee0c6d','Dummy',0,'Dummy','Active','1 */12 * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d041347b44','Check for New Version',0,'CheckNewVersion','Active','15 5 * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d04837f0cc','Check for New Versions of Installed Extensions',0,'CheckNewExtensionVersion','Active','25 5 * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0d0518ffb1a','Sync Currency Rates',0,'SyncCurrencyRates','Active','2 0 * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',1,NULL,NULL),
('6a644c0da56b58e6f','Clean-up',0,'Cleanup','Active','1 1 * * 0',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0da9e80ce0e','Auth Token Control',0,'AuthTokenControl','Active','*/6 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0daa8f33b83','Send Email Notifications',0,'SendEmailNotifications','Active','*/2 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dab149fc7f','Process Webhook Queue',0,'ProcessWebhookQueue','Active','*/2 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dab8e21606','Check Personal Email Accounts',0,'CheckEmailAccounts','Active','*/1 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dac0cf9918','Check Group Email Accounts',0,'CheckInboundEmails','Active','*/1 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dac79f8a3d','Send Scheduled Emails',0,'SendScheduledEmails','Active','*/10 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dacddf557c','Control Knowledge Base Article Status',0,'ControlKnowledgeBaseArticleStatus','Active','10 1 * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dad4878d67','Send Email Reminders',0,'SendEmailReminders','Active','*/2 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL),
('6a644c0dadb61884b','Send Mass Emails',0,'ProcessMassEmail','Active','10,30,50 * * * *',NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',0,'system',NULL);
/*!40000 ALTER TABLE `scheduled_job` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `scheduled_job_log_record`
--

DROP TABLE IF EXISTS `scheduled_job_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_job_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_SCHEDULED_JOB_ID_EXECUTION_TIME` (`scheduled_job_id`,`execution_time`),
  KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
  KEY `IDX_TARGET` (`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_job_log_record`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `scheduled_job_log_record` WRITE;
/*!40000 ALTER TABLE `scheduled_job_log_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_job_log_record` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `date_sent` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `from_phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  KEY `IDX_FROM_PHONE_NUMBER_ID` (`from_phone_number_id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_REPLIED_ID` (`replied_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sms_phone_number`
--

DROP TABLE IF EXISTS `sms_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_phone_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sms_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_SMS_ID_PHONE_NUMBER_ID_ADDRESS_TYPE` (`sms_id`,`phone_number_id`,`address_type`),
  KEY `IDX_SMS_ID` (`sms_id`),
  KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_phone_number`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sms_phone_number` WRITE;
/*!40000 ALTER TABLE `sms_phone_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_phone_number` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `star_subscription`
--

DROP TABLE IF EXISTS `star_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  KEY `IDX_USER_ENTITY_TYPE` (`user_id`,`entity_type`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  KEY `IDX_USER` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_subscription`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `star_subscription` WRITE;
/*!40000 ALTER TABLE `star_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `star_subscription` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `stream_subscription`
--

DROP TABLE IF EXISTS `stream_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stream_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  KEY `IDX_USER` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_subscription`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `stream_subscription` WRITE;
/*!40000 ALTER TABLE `stream_subscription` DISABLE KEYS */;
INSERT INTO `stream_subscription` VALUES
(3,0,'6a6457b6db626b4ee','Task','6a644c0d1b6a80478');
/*!40000 ALTER TABLE `stream_subscription` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `system_data`
--

DROP TABLE IF EXISTS `system_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_data` (
  `id` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `last_password_recovery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_data`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `system_data` WRITE;
/*!40000 ALTER TABLE `system_data` DISABLE KEYS */;
INSERT INTO `system_data` VALUES
('1',0,NULL);
/*!40000 ALTER TABLE `system_data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `target` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  KEY `IDX_NAME` (`first_name`,`last_name`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `target_list`
--

DROP TABLE IF EXISTS `target_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_list` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  KEY `IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_list`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `target_list` WRITE;
/*!40000 ALTER TABLE `target_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `target_list_category`
--

DROP TABLE IF EXISTS `target_list_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_list_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_list_category`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `target_list_category` WRITE;
/*!40000 ALTER TABLE `target_list_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_list_category` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `target_list_category_path`
--

DROP TABLE IF EXISTS `target_list_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_list_category_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  KEY `IDX_DESCENDOR_ID` (`descendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_list_category_path`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `target_list_category_path` WRITE;
/*!40000 ALTER TABLE `target_list_category_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_list_category_path` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `target_list_user`
--

DROP TABLE IF EXISTS `target_list_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_list_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ID_TARGET_LIST_ID` (`user_id`,`target_list_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_TARGET_LIST_ID` (`target_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_list_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `target_list_user` WRITE;
/*!40000 ALTER TABLE `target_list_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_list_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Not Started',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  KEY `IDX_DATE_END_STATUS` (`date_end`,`status`),
  KEY `IDX_DATE_START` (`date_start`,`deleted`),
  KEY `IDX_STATUS` (`status`,`deleted`),
  KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  KEY `IDX_ACCOUNT_ID` (`account_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  KEY `IDX_EMAIL_ID` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES
('task_000000000001','Validar carpetas de acreditación conductores El Teniente',0,'Completed','Normal',NULL,NULL,'2026-07-25',NULL,NULL,NULL,'2026-07-25 06:23:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478',0,NULL),
('task_000000000002','Envío de Certificado F30-1 a Gerencia de Contratos',0,'Started','Normal','2026-07-27 04:00:00',NULL,'2026-07-27',NULL,NULL,NULL,'2026-07-25 06:23:46','2026-07-25 06:34:50','2026-07-25 06:34:50',NULL,NULL,NULL,NULL,NULL,'6a644c0d1b6a80478','6a644c0d1b6a80478',1,NULL),
('tsk_real_000001','Revisión carpetas subcontratistas turno B Codelco',0,'Not Started','High',NULL,NULL,'2026-07-27','2026-07-30',NULL,NULL,'2026-07-25 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001',0,NULL),
('tsk_real_000002','Actualización licencias internas faena Los Bronces',0,'Not Started','Normal',NULL,NULL,'2026-07-29','2026-08-01',NULL,NULL,'2026-07-25 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004',0,NULL),
('tsk_real_000003','Envío de Certificados F30-1 a Gerencia Contratos BHP',0,'Started','High',NULL,NULL,'2026-07-25','2026-07-27',NULL,NULL,'2026-07-22 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002',0,NULL),
('tsk_real_000004','Elaboración informe mensual acreditación Sigdo Koppers',0,'Started','Normal',NULL,NULL,'2026-07-24','2026-07-28',NULL,NULL,'2026-07-21 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003',0,NULL),
('tsk_real_000005','Validar carpetas acreditación conductores El Teniente',0,'Completed','Normal',NULL,NULL,'2026-06-25','2026-06-27',NULL,NULL,'2026-06-20 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_vanessa_0001',0,NULL),
('tsk_real_000006','Auditoría cotizaciones previsionales F30-1 Mayo',0,'Completed','Normal',NULL,NULL,'2026-05-26','2026-05-28',NULL,NULL,'2026-05-21 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_francisc_002',0,NULL),
('tsk_real_000007','Verificación matriz SSO maquinaria pesada Antofagasta',0,'Completed','High',NULL,NULL,'2026-04-26','2026-04-28',NULL,NULL,'2026-04-21 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carolina_005',0,NULL),
('tsk_real_000008','Visita presencial a faena Minera Lomas Bayas',0,'Canceled','Low',NULL,NULL,'2026-05-11','2026-05-12',NULL,NULL,'2026-05-06 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_rodrigo_0004',0,NULL),
('tsk_real_000009','Implementación módulo QR control acceso vehículos',0,'Deferred','Normal',NULL,NULL,'2026-06-10','2026-09-23',NULL,NULL,'2026-06-05 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carlos_00003',0,NULL),
('tsk_real_000010','Renovación masiva pases de ingreso faena Collahuasi',0,'Deferred','High',NULL,NULL,'2026-07-05','2026-09-03',NULL,NULL,'2026-06-30 07:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'usr_carolina_005',0,NULL);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `position_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES
('team_acred_00001','Acreditación & Operaciones Mineras',0,'[]',NULL,'2026-07-25 07:18:13',NULL,NULL,NULL),
('team_cumpl_00002','Cumplimiento Subcontratación Ley 20.123',0,'[]',NULL,'2026-07-25 07:18:13',NULL,NULL,NULL),
('team_ventas_00003','Ventas B2B & Desarrollo de Negocios',0,'[]',NULL,'2026-07-25 07:18:13',NULL,NULL,NULL);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_TEAM_ID_USER_ID` (`team_id`,`user_id`),
  KEY `IDX_TEAM_ID` (`team_id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `team_user` WRITE;
/*!40000 ALTER TABLE `team_user` DISABLE KEYS */;
INSERT INTO `team_user` VALUES
(1,'team_acred_00001','usr_vanessa_0001','Líder de Acreditación',0),
(2,'team_acred_00001','usr_rodrigo_0004','Supervisor de Faena',0),
(3,'team_acred_00001','6a644c0d1b6a80478','Director',0),
(4,'team_cumpl_00002','usr_francisc_002','Coordinadora de Cumplimiento',0),
(5,'team_cumpl_00002','usr_carolina_005','Auditora Senior SSO',0),
(6,'team_cumpl_00002','6a644c0d1b6a80478','Director',0),
(7,'team_ventas_00003','usr_carlos_00003','Ejecutivo B2B Senior',0),
(8,'team_ventas_00003','6a644c0d1b6a80478','Director',0);
/*!40000 ALTER TABLE `team_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `left_margin` double DEFAULT 10,
  `right_margin` double DEFAULT 10,
  `top_margin` double DEFAULT 10,
  `bottom_margin` double DEFAULT 20,
  `print_footer` tinyint(1) NOT NULL DEFAULT 0,
  `print_header` tinyint(1) NOT NULL DEFAULT 0,
  `footer_position` double DEFAULT 10,
  `header_position` double DEFAULT 0,
  `style` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `page_orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Portrait',
  `page_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A4',
  `page_width` double DEFAULT NULL,
  `page_height` double DEFAULT NULL,
  `font_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `two_factor_code`
--

DROP TABLE IF EXISTS `two_factor_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `two_factor_code` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts_left` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_USER_ID_METHOD` (`user_id`,`method`),
  KEY `IDX_USER_ID_METHOD_IS_ACTIVE` (`user_id`,`method`,`is_active`),
  KEY `IDX_USER_ID_METHOD_CREATED_AT` (`user_id`,`method`,`created_at`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `two_factor_code`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `two_factor_code` WRITE;
/*!40000 ALTER TABLE `two_factor_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_code` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `unique_id`
--

DROP TABLE IF EXISTS `unique_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `unique_id` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `terminate_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_TARGET` (`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unique_id`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `unique_id` WRITE;
/*!40000 ALTER TABLE `unique_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `unique_id` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_version` int(11) NOT NULL DEFAULT 0,
  `auth_method` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `default_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_NAME_DELETE_ID` (`user_name`,`delete_id`),
  KEY `IDX_USER_NAME` (`user_name`),
  KEY `IDX_TYPE` (`type`),
  KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
  KEY `IDX_CONTACT_ID` (`contact_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_DASHBOARD_TEMPLATE_ID` (`dashboard_template_id`),
  KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('6a644c0d1b6a80478',0,'admin','admin','$2y$12$OxKeDLBR2tCD4wPZDS8qEe04dw7lOz.Ba6byKM9z6PhfG1S3rNJ7S',1,NULL,NULL,NULL,NULL,'Admin',1,NULL,NULL,NULL,'2026-07-25 05:39:25','2026-07-25 05:39:25',NULL,'0','team_acred_00001',NULL,NULL,'system',NULL,NULL,NULL),
('system',0,'system','system',NULL,0,NULL,NULL,NULL,NULL,'System',1,NULL,NULL,NULL,'2026-07-25 05:39:24','2026-07-25 05:39:24',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('usr_carlos_00003',0,'carlos','regular','$2y$12$m5AAUpfv4tNtIJk04h8wEu8lJmSDh2uDijYNA0wUgaraPqjoWjZ0W',0,NULL,NULL,NULL,'Carlos','Mendoza',1,'Ejecutivo de Cuentas B2B Minería',NULL,NULL,'2026-07-25 06:55:48',NULL,NULL,'0','team_ventas_00003',NULL,NULL,NULL,NULL,NULL,NULL),
('usr_carolina_005',0,'carolina','regular','$2y$12$m5AAUpfv4tNtIJk04h8wEu8lJmSDh2uDijYNA0wUgaraPqjoWjZ0W',0,NULL,NULL,NULL,'Carolina','Araya',1,'Auditora Senior SSO',NULL,NULL,'2026-07-25 06:55:48',NULL,NULL,'0','team_cumpl_00002',NULL,NULL,NULL,NULL,NULL,NULL),
('usr_francisc_002',0,'francisca','regular','$2y$12$m5AAUpfv4tNtIJk04h8wEu8lJmSDh2uDijYNA0wUgaraPqjoWjZ0W',0,NULL,NULL,NULL,'Francisca','Pirma',1,'Coordinadora Cumplimiento Ley 20.123',NULL,NULL,'2026-07-25 06:55:48',NULL,NULL,'0','team_cumpl_00002',NULL,NULL,NULL,NULL,NULL,NULL),
('usr_rodrigo_0004',0,'rodrigo','regular','$2y$12$m5AAUpfv4tNtIJk04h8wEu8lJmSDh2uDijYNA0wUgaraPqjoWjZ0W',0,NULL,NULL,NULL,'Rodrigo','Morales',1,'Supervisor de Acreditación Faena Codelco',NULL,NULL,'2026-07-25 06:55:48',NULL,NULL,'0','team_acred_00001',NULL,NULL,NULL,NULL,NULL,NULL),
('usr_vanessa_0001',0,'vanessa','regular','$2y$12$m5AAUpfv4tNtIJk04h8wEu8lJmSDh2uDijYNA0wUgaraPqjoWjZ0W',0,NULL,NULL,NULL,'Vanessa','Galdames',1,'Jefa de Acreditación y Operaciones Mineras',NULL,NULL,'2026-07-25 06:55:48',NULL,NULL,'0','team_acred_00001',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_data` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `auth2_f_a` tinyint(1) NOT NULL DEFAULT 0,
  `auth2_f_a_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_totp_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `user_reaction`
--

DROP TABLE IF EXISTS `user_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reaction` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_PARENT_USER_TYPE` (`parent_id`,`parent_type`,`user_id`,`type`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_PARENT` (`parent_id`,`parent_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reaction`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user_reaction` WRITE;
/*!40000 ALTER TABLE `user_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_reaction` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `user_working_time_range`
--

DROP TABLE IF EXISTS `user_working_time_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_working_time_range` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_USER_ID_WORKING_TIME_RANGE_ID` (`user_id`,`working_time_range_id`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_working_time_range`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user_working_time_range` WRITE;
/*!40000 ALTER TABLE `user_working_time_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_working_time_range` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `webhook`
--

DROP TABLE IF EXISTS `webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skip_own` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EVENT` (`event`),
  KEY `IDX_ENTITY_TYPE_TYPE` (`entity_type`,`type`),
  KEY `IDX_ENTITY_TYPE_FIELD` (`entity_type`,`field`),
  KEY `IDX_USER_ID` (`user_id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `webhook` WRITE;
/*!40000 ALTER TABLE `webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `webhook_event_queue_item`
--

DROP TABLE IF EXISTS `webhook_event_queue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_event_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_TARGET` (`target_id`,`target_type`),
  KEY `IDX_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_event_queue_item`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `webhook_event_queue_item` WRITE;
/*!40000 ALTER TABLE `webhook_event_queue_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_event_queue_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `webhook_queue_item`
--

DROP TABLE IF EXISTS `webhook_queue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `processed_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT 0,
  `process_at` datetime DEFAULT NULL,
  `webhook_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_NUMBER` (`number`),
  KEY `IDX_WEBHOOK_ID` (`webhook_id`),
  KEY `IDX_TARGET` (`target_id`,`target_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_queue_item`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `webhook_queue_item` WRITE;
/*!40000 ALTER TABLE `webhook_queue_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_queue_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `working_time_calendar`
--

DROP TABLE IF EXISTS `working_time_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_time_calendar` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[["9:00","17:00"]]',
  `weekday0` tinyint(1) NOT NULL DEFAULT 0,
  `weekday1` tinyint(1) NOT NULL DEFAULT 1,
  `weekday2` tinyint(1) NOT NULL DEFAULT 1,
  `weekday3` tinyint(1) NOT NULL DEFAULT 1,
  `weekday4` tinyint(1) NOT NULL DEFAULT 1,
  `weekday5` tinyint(1) NOT NULL DEFAULT 1,
  `weekday6` tinyint(1) NOT NULL DEFAULT 0,
  `weekday0_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday1_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday2_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday3_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday4_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday5_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday6_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_time_calendar`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `working_time_calendar` WRITE;
/*!40000 ALTER TABLE `working_time_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `working_time_calendar` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `working_time_calendar_working_time_range`
--

DROP TABLE IF EXISTS `working_time_calendar_working_time_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_time_calendar_working_time_range` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_WORKING_TIME_CALENDAR_ID_WORKING_TIME_RANGE_ID` (`working_time_calendar_id`,`working_time_range_id`),
  KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_time_calendar_working_time_range`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `working_time_calendar_working_time_range` WRITE;
/*!40000 ALTER TABLE `working_time_calendar_working_time_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `working_time_calendar_working_time_range` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `working_time_range`
--

DROP TABLE IF EXISTS `working_time_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_time_range` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Non-working',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_TYPE_RANGE` (`type`,`date_start`,`date_end`),
  KEY `IDX_TYPE` (`type`),
  KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_time_range`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `working_time_range` WRITE;
/*!40000 ALTER TABLE `working_time_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `working_time_range` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-07-25  7:27:22
