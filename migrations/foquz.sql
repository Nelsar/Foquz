-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: foquz
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES
('/polyclinic',4,1724764339),
('Admin',4,1724748645);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES
('/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//controller',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//crud',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//extension',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//form',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//model',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('//module',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/asset/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/asset/compress',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/asset/template',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/cache/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/cache/flush',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/cache/flush-all',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/cache/flush-schema',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/cache/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/db-explain',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/download-mail',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/toolbar',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/default/view',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/user/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/user/reset-identity',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/debug/user/set-identity',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/fixture/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/fixture/load',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/fixture/unload',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/action',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/diff',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/preview',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/gii/default/view',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/hello/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/hello/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/help/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/help/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/help/list',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/help/list-action-options',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/help/usage',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/message/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/message/config',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/message/config-template',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/message/extract',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/create',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/down',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/fresh',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/history',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/mark',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/new',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/redo',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/to',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/migrate/up',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/polyclinic',1,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/serve/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/serve/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/status',1,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/status/*',1,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/status/index',1,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/*',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/auth/change-own-password',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user-permission/set',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user-permission/set-roles',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/bulk-activate',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/bulk-deactivate',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/bulk-delete',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/change-password',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/create',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/delete',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/grid-page-size',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/index',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/update',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('/user-management/user/view',3,NULL,NULL,NULL,1724574362,1724574362,NULL),
('Admin',1,'Admin',NULL,NULL,1724574362,1724574362,NULL),
('assignRolesToUsers',2,'Assign roles to users',NULL,NULL,1724574362,1724574362,'userManagement'),
('bindUserToIp',2,'Bind user to IP',NULL,NULL,1724574362,1724574362,'userManagement'),
('changeOwnPassword',2,'Change own password',NULL,NULL,1724574362,1724574362,'userCommonPermissions'),
('changeUserPassword',2,'Change user password',NULL,NULL,1724574362,1724574362,'userManagement'),
('commonPermission',2,'Common permission',NULL,NULL,1724574362,1724574362,NULL),
('createUsers',2,'Create users',NULL,NULL,1724574362,1724574362,'userManagement'),
('deleteUsers',2,'Delete users',NULL,NULL,1724574362,1724574362,'userManagement'),
('editUserEmail',2,'Edit user email',NULL,NULL,1724574362,1724574362,'userManagement'),
('editUsers',2,'Edit users',NULL,NULL,1724574362,1724574362,'userManagement'),
('viewRegistrationIp',2,'View registration IP',NULL,NULL,1724574362,1724574362,'userManagement'),
('viewUserEmail',2,'View user email',NULL,NULL,1724574362,1724574362,'userManagement'),
('viewUserRoles',2,'View user roles',NULL,NULL,1724574362,1724574362,'userManagement'),
('viewUsers',2,'View users',NULL,NULL,1724574362,1724574362,'userManagement'),
('viewVisitLog',2,'View visit log',NULL,NULL,1724574362,1724574362,'userManagement');
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES
('/status','/status/index'),
('Admin','assignRolesToUsers'),
('Admin','changeOwnPassword'),
('Admin','changeUserPassword'),
('Admin','createUsers'),
('Admin','deleteUsers'),
('Admin','editUsers'),
('Admin','viewUsers'),
('assignRolesToUsers','/user-management/user-permission/set'),
('assignRolesToUsers','/user-management/user-permission/set-roles'),
('assignRolesToUsers','viewUserRoles'),
('assignRolesToUsers','viewUsers'),
('changeOwnPassword','/user-management/auth/change-own-password'),
('changeUserPassword','/user-management/user/change-password'),
('changeUserPassword','viewUsers'),
('createUsers','/user-management/user/create'),
('createUsers','viewUsers'),
('deleteUsers','/user-management/user/bulk-delete'),
('deleteUsers','/user-management/user/delete'),
('deleteUsers','viewUsers'),
('editUserEmail','viewUserEmail'),
('editUsers','/user-management/user/bulk-activate'),
('editUsers','/user-management/user/bulk-deactivate'),
('editUsers','/user-management/user/update'),
('editUsers','viewUsers'),
('viewUsers','/user-management/user/grid-page-size'),
('viewUsers','/user-management/user/index'),
('viewUsers','/user-management/user/view');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_group`
--

DROP TABLE IF EXISTS `auth_item_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_group`
--

LOCK TABLES `auth_item_group` WRITE;
/*!40000 ALTER TABLE `auth_item_group` DISABLE KEYS */;
INSERT INTO `auth_item_group` VALUES
('userCommonPermissions','User common permission',1724574362,1724574362),
('userManagement','User management',1724574362,1724574362);
/*!40000 ALTER TABLE `auth_item_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursedisease`
--

DROP TABLE IF EXISTS `coursedisease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursedisease` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursedisease`
--

LOCK TABLES `coursedisease` WRITE;
/*!40000 ALTER TABLE `coursedisease` DISABLE KEYS */;
INSERT INTO `coursedisease` VALUES
(1,'Абсцесс Броди'),
(2,'Абсцесс мягких тканей'),
(3,'Абсцесс печени'),
(4,'Авитаминоз'),
(5,'Агалактия');
/*!40000 ALTER TABLE `coursedisease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES
('m000000_000000_base',1724574297),
('m140608_173539_create_user_table',1724574361),
('m140611_133903_init_rbac',1724574361),
('m140808_073114_create_auth_item_group_table',1724574362),
('m140809_072112_insert_superadmin_to_user',1724574362),
('m140809_073114_insert_common_permisison_to_auth_item',1724574362),
('m141023_141535_create_user_visit_log',1724574362),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user',1724574362),
('m141121_194858_split_browser_and_os_column',1724574362),
('m141201_220516_add_email_and_email_confirmed_to_user',1724574362),
('m141207_001649_create_basic_user_permissions',1724574362),
('m240826_041651_add_table_patient',1724647800),
('m240826_044426_add_table_status',1724653127),
('m240826_051307_create_table_polyclinic',1724653127),
('m240826_051717_create_table_treatmentform',1724653127),
('m240826_052114_create_table_coursedisease',1724653127),
('m240826_062201_create_table_patient',1724653391),
('m240826_071641_add_data_to_status',1724657384),
('m240826_074437_add_data_to_coursedisease',1724658736),
('m240826_075524_add_data_to_treatmentform',1724659318),
('m240826_080305_add_data_to_polyclinic',1724659627),
('m240827_125052_add_route_to_permission',1724763471),
('m240827_131436_add_route__status_to_permission',1724764558),
('m240827_152630_add_route__status_to_auth_item_child',1724773734),
('m240827_154943_add_route__status__child_to_auth_item_child',1724773930),
('m240827_165111_add_route__status__child_child_to_auth_item_child',1724777645);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `bithDay` date NOT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `status_id` smallint(8) DEFAULT NULL,
  `polyclinic_id` smallint(8) DEFAULT NULL,
  `treatmentform_id` smallint(8) DEFAULT NULL,
  `coursedisease_id` smallint(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_to_status` (`status_id`),
  KEY `patient_to_polyclinic` (`polyclinic_id`),
  KEY `patient_to_treatmentform` (`treatmentform_id`),
  KEY `patient_to_coursedisease` (`coursedisease_id`),
  CONSTRAINT `patient_to_coursedisease` FOREIGN KEY (`coursedisease_id`) REFERENCES `coursedisease` (`id`) ON DELETE CASCADE,
  CONSTRAINT `patient_to_polyclinic` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinic` (`id`) ON DELETE CASCADE,
  CONSTRAINT `patient_to_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE,
  CONSTRAINT `patient_to_treatmentform` FOREIGN KEY (`treatmentform_id`) REFERENCES `treatmentform` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polyclinic`
--

DROP TABLE IF EXISTS `polyclinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polyclinic` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polyclinic`
--

LOCK TABLES `polyclinic` WRITE;
/*!40000 ALTER TABLE `polyclinic` DISABLE KEYS */;
INSERT INTO `polyclinic` VALUES
(1,'Городская поликлиника №1'),
(2,'Городская поликлиника №2'),
(3,'Городская поликлиника №3'),
(4,'Городская поликлиника №4'),
(5,'Городская поликлиника №5'),
(6,'Городская поликлиника №6'),
(7,'Городская поликлиника №7');
/*!40000 ALTER TABLE `polyclinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES
(4,'Болен'),
(5,'Не Болен');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatmentform`
--

DROP TABLE IF EXISTS `treatmentform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatmentform` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatmentform`
--

LOCK TABLES `treatmentform` WRITE;
/*!40000 ALTER TABLE `treatmentform` DISABLE KEYS */;
INSERT INTO `treatmentform` VALUES
(1,'Амбулаторное медицинское обслуживание'),
(2,'Стационарное медицинское обслуживание'),
(3,'Служба скорой медицинской помощи и дежурная медицинская служба'),
(4,'Диспансерное медицинское обслуживание'),
(5,'Профилактическое медицинское обслуживание');
/*!40000 ALTER TABLE `treatmentform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `superadmin` smallint(6) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'superadmin','vw5gva1oEnEzFMsZnhcaQsq0vEKmnn6D','$2y$13$hBs.pS4xWn39VTuNAng7sOl2hn1x8GfrLDKNLgoiU0ZHvPCJ/z6IG',NULL,1,1,1724574362,1724574362,NULL,NULL,NULL,0),
(4,'a.plotnikov','eQvQl8pLqBEjHpoSpgyQgDOKEVWjjgjH','$2y$13$GkDU/E4fAYIKV7kC3Pk9IOnjTD0QxEDI0OWGbJWzJgvGD/dRoa566',NULL,1,1,1724727068,1724727068,'127.0.0.1','','',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_visit_log`
--

DROP TABLE IF EXISTS `user_visit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_visit_log`
--

LOCK TABLES `user_visit_log` WRITE;
/*!40000 ALTER TABLE `user_visit_log` DISABLE KEYS */;
INSERT INTO `user_visit_log` VALUES
(2,'66cb2741e0a23','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724589889,'Chrome','Windows'),
(3,'66cb2751a32ac','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724589905,'Chrome','Windows'),
(4,'66cb286a0768a','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724590186,'Chrome','Windows'),
(5,'66cc6f3c95352','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724673852,'Chrome','Windows'),
(6,'66cc72dcafa86','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724674780,'Chrome','Windows'),
(7,'66cca7df0171e','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724688351,'Chrome','Windows'),
(8,'66ccbb81d4bce','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',NULL,1724693377,'Chrome','Windows'),
(9,'66ccbcf8c99c9','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724693752,'Chrome','Windows'),
(10,'66cd3e41631f9','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',NULL,1724726849,'Chrome','Windows'),
(11,'66cd3e9e69407','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724726942,'Chrome','Windows'),
(12,'66cd8fd0c6ab0','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',4,1724747728,'Chrome','Windows'),
(13,'66cd9351baecd','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',1,1724748625,'Chrome','Windows'),
(14,'66cd948ac52d5','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724748938,'Chrome','Windows'),
(15,'66cd9ce435cfc','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724751076,'Chrome','Windows'),
(16,'66cdcfa0ec7c9','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724764064,'Chrome','Windows'),
(17,'66cdcfe2416a7','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',1,1724764130,'Chrome','Windows'),
(18,'66cdd36009be1','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724765024,'Chrome','Windows'),
(19,'66cde056587ef','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724768342,'Chrome','Windows'),
(20,'66cdf7cb347ae','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724774347,'Chrome','Windows'),
(21,'66ce06093c85c','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36',4,1724777993,'Chrome','Windows');
/*!40000 ALTER TABLE `user_visit_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 23:23:27
