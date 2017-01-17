CREATE DATABASE  IF NOT EXISTS `broadleaf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `broadleaf`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: broadleaf
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `blc_additional_offer_info`
--

DROP TABLE IF EXISTS `blc_additional_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_additional_offer_info` (
  `BLC_ORDER_ORDER_ID` bigint(20) NOT NULL,
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BLC_ORDER_ORDER_ID`,`OFFER_ID`),
  KEY `FK3BFDBD63B5D9C34D` (`OFFER_INFO_ID`),
  KEY `FK3BFDBD63D5F3FAF4` (`OFFER_ID`),
  KEY `FK3BFDBD631891FF79` (`BLC_ORDER_ORDER_ID`),
  CONSTRAINT `FK3BFDBD631891FF79` FOREIGN KEY (`BLC_ORDER_ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK3BFDBD63B5D9C34D` FOREIGN KEY (`OFFER_INFO_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`),
  CONSTRAINT `FK3BFDBD63D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_additional_offer_info`
--

LOCK TABLES `blc_additional_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_additional_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_additional_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_address`
--

DROP TABLE IF EXISTS `blc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_address` (
  `ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_LINE1` varchar(255) NOT NULL,
  `ADDRESS_LINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) NOT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_BUSINESS` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `IS_MAILING` tinyint(1) DEFAULT NULL,
  `IS_STREET` tinyint(1) DEFAULT NULL,
  `ISO_COUNTRY_SUB` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_PHONE` varchar(255) DEFAULT NULL,
  `SECONDARY_PHONE` varchar(255) DEFAULT NULL,
  `STANDARDIZED` tinyint(1) DEFAULT NULL,
  `SUB_STATE_PROV_REG` varchar(255) DEFAULT NULL,
  `TOKENIZED_ADDRESS` varchar(255) DEFAULT NULL,
  `VERIFICATION_LEVEL` varchar(255) DEFAULT NULL,
  `ZIP_FOUR` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ISO_COUNTRY_ALPHA2` varchar(255) DEFAULT NULL,
  `PHONE_FAX_ID` bigint(20) DEFAULT NULL,
  `PHONE_PRIMARY_ID` bigint(20) DEFAULT NULL,
  `PHONE_SECONDARY_ID` bigint(20) DEFAULT NULL,
  `STATE_PROV_REGION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `ADDRESS_COUNTRY_INDEX` (`COUNTRY`),
  KEY `ADDRESS_ISO_COUNTRY_IDX` (`ISO_COUNTRY_ALPHA2`),
  KEY `ADDRESS_PHONE_FAX_IDX` (`PHONE_FAX_ID`),
  KEY `ADDRESS_PHONE_PRI_IDX` (`PHONE_PRIMARY_ID`),
  KEY `ADDRESS_PHONE_SEC_IDX` (`PHONE_SECONDARY_ID`),
  KEY `ADDRESS_STATE_INDEX` (`STATE_PROV_REGION`),
  KEY `FK299F86CEA46E16CF` (`COUNTRY`),
  KEY `FK299F86CE3A39A488` (`ISO_COUNTRY_ALPHA2`),
  KEY `FK299F86CEF1A6533F` (`PHONE_FAX_ID`),
  KEY `FK299F86CEBF4449BA` (`PHONE_PRIMARY_ID`),
  KEY `FK299F86CEE12DC0C8` (`PHONE_SECONDARY_ID`),
  KEY `FK299F86CE337C4D50` (`STATE_PROV_REGION`),
  CONSTRAINT `FK299F86CE337C4D50` FOREIGN KEY (`STATE_PROV_REGION`) REFERENCES `blc_state` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CE3A39A488` FOREIGN KEY (`ISO_COUNTRY_ALPHA2`) REFERENCES `blc_iso_country` (`ALPHA_2`),
  CONSTRAINT `FK299F86CEA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CEBF4449BA` FOREIGN KEY (`PHONE_PRIMARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEE12DC0C8` FOREIGN KEY (`PHONE_SECONDARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEF1A6533F` FOREIGN KEY (`PHONE_FAX_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_address`
--

LOCK TABLES `blc_address` WRITE;
/*!40000 ALTER TABLE `blc_address` DISABLE KEYS */;
INSERT INTO `blc_address` VALUES (1,'sfsfs',NULL,NULL,'sfsf',NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'US','CA',NULL,NULL,NULL,NULL),(51,'dadad','ada',NULL,'adad',NULL,NULL,NULL,NULL,'ada',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,1,NULL,NULL),(52,'dadad','ada',NULL,'adad',NULL,NULL,NULL,NULL,'ada',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,2,NULL,NULL),(53,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'asdad',NULL,1,0,0,0,0,NULL,'adad','ada',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,3,NULL,NULL),(54,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'asdad',NULL,1,0,0,0,0,NULL,'adad','ada',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,4,NULL,NULL),(101,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'aada',NULL,1,0,0,0,0,NULL,'dada','csasa',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,51,NULL,NULL),(102,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'aada',NULL,1,0,0,0,0,NULL,'dada','csasa',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,52,NULL,NULL),(151,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,101,NULL,NULL),(152,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,102,NULL,NULL),(201,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,151,NULL,NULL),(202,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,152,NULL,NULL),(251,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,201,NULL,NULL),(252,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,202,NULL,NULL),(301,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'adad','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,251,NULL,NULL),(302,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'adad','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,252,NULL,NULL),(351,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,301,NULL,NULL),(352,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,302,NULL,NULL),(401,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,351,NULL,NULL),(402,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,352,NULL,NULL),(451,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,401,NULL,NULL),(501,'adad','ada',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,451,NULL,NULL),(502,'adad','ada',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,452,NULL,NULL),(551,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,'CA-BC','dada','123456',NULL,NULL,0,'BC',NULL,NULL,NULL,NULL,'CA',NULL,501,NULL,NULL),(601,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,551,NULL,NULL),(602,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,552,NULL,NULL),(651,'adada','',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,601,NULL,NULL),(652,'adada','',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,602,NULL,NULL),(701,'gn','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'',NULL,NULL,NULL,NULL,'CA',NULL,651,NULL,NULL),(702,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'GA',NULL,NULL,NULL,NULL,'ca',NULL,652,NULL,NULL),(703,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'GA',NULL,NULL,NULL,NULL,'ca',NULL,653,NULL,NULL),(751,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'',NULL,NULL,NULL,NULL,'CA',NULL,701,NULL,NULL),(801,'a','',NULL,'indore',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(802,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,751,NULL,NULL),(851,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(901,'162 goyal nagar','',NULL,'indore',NULL,NULL,NULL,NULL,'SATYANARAYAN',NULL,1,0,0,0,0,NULL,'AGRAWAL1','452018',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(902,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,801,NULL,NULL),(903,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,802,NULL,NULL),(904,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(951,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal1','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,851,NULL,NULL),(952,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(1001,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,901,NULL,NULL),(1051,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,951,NULL,NULL),(1052,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,952,NULL,NULL);
/*!40000 ALTER TABLE `blc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_module`
--

DROP TABLE IF EXISTS `blc_admin_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_module` (
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `MODULE_KEY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_MODULE_ID`),
  KEY `ADMINMODULE_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_module`
--

LOCK TABLES `blc_admin_module` WRITE;
/*!40000 ALTER TABLE `blc_admin_module` DISABLE KEYS */;
INSERT INTO `blc_admin_module` VALUES (-9,250,'blc-icon-inventory','BLCInventory','Inventory'),(-8,150,'fa fa-usd','BLCPricing','Pricing'),(-7,500,'blc-icon-site-updates','BLCWorkflow','Site Updates'),(-6,400,'blc-icon-design','BLCDesign','Design'),(-5,700,'blc-icon-settings','BLCModuleConfiguration','Settings'),(-4,600,'blc-icon-security','BLCOpenAdmin','Security'),(-3,550,'blc-icon-customer-care','BLCCustomerCare','Customer Care'),(-2,200,'blc-icon-content','BLCContentManagement','Content'),(-1,100,'blc-icon-catalog','BLCMerchandising','Catalog');
/*!40000 ALTER TABLE `blc_admin_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_password_token`
--

DROP TABLE IF EXISTS `blc_admin_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_password_token`
--

LOCK TABLES `blc_admin_password_token` WRITE;
/*!40000 ALTER TABLE `blc_admin_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission`
--

DROP TABLE IF EXISTS `blc_admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission` (
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `IS_FRIENDLY` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PERMISSION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission`
--

LOCK TABLES `blc_admin_permission` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission` DISABLE KEYS */;
INSERT INTO `blc_admin_permission` VALUES (-27003,'Maintain Menus',1,'PERMISSION_MENU','ALL'),(-27002,'View Menus',1,'PERMISSION_MENU','READ'),(-27001,'All Menu',NULL,'PERMISSION_ALL_MENU','ALL'),(-27000,'Read Menu',NULL,'PERMISSION_READ_MENU','READ'),(-200,'Read Page Template',0,'PERMISSION_READ_PAGE_TEMPLATE','READ'),(-161,'Maintain Field Definitions',1,'PERMISSION_FLDDEF_ALL','ALL'),(-160,'View Field Definitions',1,'PERMISSION_FLDDEF_VIEW','READ'),(-151,'Maintain Permissions',1,'PERMISSION_PERM_ALL','ALL'),(-150,'View Permissions',1,'PERMISSION_PERM_VIEW','READ'),(-141,'Maintain Roles',1,'PERMISSION_ROLE_ALL','ALL'),(-140,'View Roles',1,'PERMISSION_ROLE_VIEW','READ'),(-131,'Maintain Translations',1,'PERMISSION_TRANSLATION','ALL'),(-130,'View Translations',1,'PERMISSION_TRANSLATION','READ'),(-127,'Maintain Module Configurations',1,'PERMISSION_MODULECONFIGURATION','ALL'),(-126,'View Module Configurations',1,'PERMISSION_MODULECONFIGURATION','READ'),(-121,'Maintain Users',1,'PERMISSION_USER','ALL'),(-120,'View Users',1,'PERMISSION_USER','READ'),(-119,'Maintain Customers',1,'PERMISSION_CUSTOMER','ALL'),(-118,'View Customers',1,'PERMISSION_CUSTOMER','READ'),(-115,'Maintain URL Redirects',1,'PERMISSION_URLREDIRECT','ALL'),(-114,'View URL Redirects',1,'PERMISSION_URLREDIRECT','READ'),(-111,'Maintain Assets',1,'PERMISSION_ASSET','ALL'),(-110,'View Assets',1,'PERMISSION_ASSET','READ'),(-109,'Maintain Pages',1,'PERMISSION_PAGE','ALL'),(-108,'View Pages',1,'PERMISSION_PAGE','READ'),(-107,'Maintain Offers',1,'PERMISSION_OFFER','ALL'),(-106,'View Offers',1,'PERMISSION_OFFER','READ'),(-105,'Maintain Product Options',1,'PERMISSION_PRODUCTOPTIONS','ALL'),(-104,'View Product Options',1,'PERMISSION_PRODUCTOPTIONS','READ'),(-103,'Maintain Products',1,'PERMISSION_PRODUCT','ALL'),(-102,'View Products',1,'PERMISSION_PRODUCT','READ'),(-101,'Maintain Categories',1,'PERMISSION_CATEGORY','ALL'),(-100,'View Categories',1,'PERMISSION_CATEGORY','READ'),(-55,'All ISO COUNTRIES',0,'PERMISSION_ALL_ISO_COUNTRIES','ALL'),(-54,'Read ISO Countries',0,'PERMISSION_READ_ISO_COUNTRIES','READ'),(-53,'All Catalog Permissions',0,'PERMISSION_ALL_CATALOG_PERMS','ALL'),(-52,'Read Catalog Permissions',0,'PERMISSION_READ_CATALOG_PERMS','READ'),(-51,'All Field Definitions',0,'PERMISSION_ALL_FIELD_DEFS','ALL'),(-50,'Read Field Definitions',0,'PERMISSION_READ_FIELD_DEFS','READ'),(-49,'All Admin Permissions',0,'PERMISSION_ALL_ADMIN_PERMS','ALL'),(-48,'Read Admin Permissions',0,'PERMISSION_READ_ADMIN_PERMS','READ'),(-47,'All Admin Roles',0,'PERMISSION_ALL_ADMIN_ROLES','ALL'),(-46,'Read Admin Roles',0,'PERMISSION_READ_ADMIN_ROLES','READ'),(-45,'All System Property',0,'PERMISSION_ALL_SYSTEM_PROPERTY','ALL'),(-44,'Read System Property',0,'PERMISSION_READ_SYSTEM_PROPERTY','READ'),(-43,'All Site Map Gen Configuration',0,'PERMISSION_ALL_SITE_MAP_GEN_CONFIG','ALL'),(-42,'Read Site Map Gen Configuration',0,'PERMISSION_READ_SITE_MAP_GEN_CONFIG','READ'),(-41,'All Translation',0,'PERMISSION_ALL_TRANSLATION','ALL'),(-40,'Read Translation',0,'PERMISSION_READ_TRANSLATION','READ'),(-39,'All Enumeration',0,'PERMISSION_ALL_ENUMERATION','ALL'),(-38,'Read Enumeration',0,'PERMISSION_READ_ENUMERATION','READ'),(-37,'All Configuration',0,'PERMISSION_ALL_MODULECONFIGURATION','ALL'),(-36,'Read Configuration',0,'PERMISSION_READ_MODULECONFIGURATION','READ'),(-35,'All Currency',0,'PERMISSION_ALL_CURRENCY','ALL'),(-34,'Read Currency',0,'PERMISSION_READ_CURRENCY','READ'),(-33,'All SearchFacet',0,'PERMISSION_ALL_SEARCHFACET','ALL'),(-32,'Read SearchFacet',0,'PERMISSION_READ_SEARCHFACET','READ'),(-31,'All SearchRedirect',0,'PERMISSION_ALL_SEARCHREDIRECT','ALL'),(-30,'Read SearchRedirect',0,'PERMISSION_READ_SEARCHREDIRECT','READ'),(-29,'All URLHandler',0,'PERMISSION_ALL_URLHANDLER','ALL'),(-28,'Read URLHandler',0,'PERMISSION_READ_URLHANDLER','READ'),(-27,'All Admin User',0,'PERMISSION_ALL_ADMIN_USER','ALL'),(-26,'Read Admin User',0,'PERMISSION_READ_ADMIN_USER','READ'),(-25,'Order',0,'order','ALL'),(-23,'All Asset',0,'PERMISSION_ALL_ASSET','ALL'),(-22,'Read Asset',0,'PERMISSION_READ_ASSET','READ'),(-21,'All Page',0,'PERMISSION_ALL_PAGE','ALL'),(-20,'Read Page',0,'PERMISSION_READ_PAGE','READ'),(-19,'All Customer',0,'PERMISSION_ALL_CUSTOMER','ALL'),(-18,'Read Customer',0,'PERMISSION_READ_CUSTOMER','READ'),(-17,'All Order Item',0,'PERMISSION_ALL_ORDER_ITEM','ALL'),(-16,'Read Order Item',0,'PERMISSION_READ_ORDER_ITEM','READ'),(-15,'All Fulfillment Group',0,'PERMISSION_ALL_FULFILLMENT_GROUP','ALL'),(-14,'Read Fulfillment Group',0,'PERMISSION_READ_FULFILLMENT_GROUP','READ'),(-13,'All Order',0,'PERMISSION_ALL_ORDER','ALL'),(-12,'Read Order',0,'PERMISSION_READ_ORDER','READ'),(-11,'All Promotion',0,'PERMISSION_ALL_PROMOTION','ALL'),(-10,'Read Promotion',0,'PERMISSION_READ_PROMOTION','READ'),(-9,'All Sku',0,'PERMISSION_ALL_SKU','ALL'),(-8,'Read Sku',0,'PERMISSION_READ_SKU','READ'),(-7,'All Product Option',0,'PERMISSION_ALL_PRODUCT_OPTION','ALL'),(-6,'Read Product Option',0,'PERMISSION_READ_PRODUCT_OPTION','READ'),(-5,'All Product',0,'PERMISSION_ALL_PRODUCT','ALL'),(-4,'Read Product',0,'PERMISSION_READ_PRODUCT','READ'),(-3,'All Category',0,'PERMISSION_ALL_CATEGORY','ALL'),(-2,'Read Category',0,'PERMISSION_READ_CATEGORY','READ'),(-1,'Default Permission',0,'PERMISSION_OTHER_DEFAULT','OTHER');
/*!40000 ALTER TABLE `blc_admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_entity`
--

DROP TABLE IF EXISTS `blc_admin_permission_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission_entity` (
  `ADMIN_PERMISSION_ENTITY_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ENTITY_ID`),
  KEY `FK23C09E3DE88B7D38` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FK23C09E3DE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_entity`
--

LOCK TABLES `blc_admin_permission_entity` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_entity` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_entity` VALUES (-27003,'org.broadleafcommerce.menu.domain.MenuItem',-27001),(-27002,'org.broadleafcommerce.menu.domain.MenuItem',-27000),(-27001,'org.broadleafcommerce.menu.domain.Menu',-27001),(-27000,'org.broadleafcommerce.menu.domain.Menu',-27000),(-1011,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-55),(-1010,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-54),(-1003,'org.broadleafcommerce.common.site.domain.Site',-53),(-1002,'org.broadleafcommerce.common.site.domain.Site',-52),(-1001,'org.broadleafcommerce.common.site.domain.Catalog',-53),(-1000,'org.broadleafcommerce.common.site.domain.Catalog',-52),(-991,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-51),(-990,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-50),(-983,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-48),(-982,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-49),(-981,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-48),(-980,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-49),(-971,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-47),(-970,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-46),(-961,'org.broadleafcommerce.common.config.domain.SystemProperty',-45),(-960,'org.broadleafcommerce.common.config.domain.SystemProperty',-44),(-953,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-43),(-952,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-42),(-951,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-43),(-950,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-42),(-911,'org.broadleafcommerce.common.i18n.domain.Translation',-41),(-910,'org.broadleafcommerce.common.i18n.domain.Translation',-40),(-903,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-39),(-902,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-38),(-901,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-39),(-900,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-38),(-881,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-37),(-880,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-36),(-851,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-35),(-850,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-34),(-813,'org.broadleafcommerce.core.search.domain.IndexFieldType',-33),(-812,'org.broadleafcommerce.core.search.domain.IndexFieldType',-32),(-811,'org.broadleafcommerce.core.search.domain.IndexField',-33),(-810,'org.broadleafcommerce.core.search.domain.IndexField',-32),(-809,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-33),(-808,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-32),(-807,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-33),(-806,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-32),(-805,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-33),(-804,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-32),(-803,'org.broadleafcommerce.core.search.domain.Field',-33),(-802,'org.broadleafcommerce.core.search.domain.Field',-32),(-801,'org.broadleafcommerce.core.search.domain.SearchFacet',-33),(-800,'org.broadleafcommerce.core.search.domain.SearchFacet',-32),(-781,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-31),(-780,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-30),(-753,'org.broadleafcommerce.common.locale.domain.Locale',-29),(-752,'org.broadleafcommerce.common.locale.domain.Locale',-28),(-751,'org.broadleafcommerce.cms.url.domain.URLHandler',-29),(-750,'org.broadleafcommerce.cms.url.domain.URLHandler',-28),(-721,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-27),(-720,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-26),(-603,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-23),(-602,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-22),(-601,'org.broadleafcommerce.cms.file.domain.StaticAsset',-23),(-600,'org.broadleafcommerce.cms.file.domain.StaticAsset',-22),(-557,'org.broadleafcommerce.common.locale.domain.Locale',-21),(-556,'org.broadleafcommerce.common.locale.domain.Locale',-20),(-555,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-21),(-554,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-20),(-552,'org.broadleafcommerce.cms.page.domain.PageTemplate',-200),(-551,'org.broadleafcommerce.cms.page.domain.Page',-21),(-550,'org.broadleafcommerce.cms.page.domain.Page',-20),(-514,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-19),(-513,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-18),(-512,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-19),(-511,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-18),(-510,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-19),(-509,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-18),(-508,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-19),(-507,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-18),(-506,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-19),(-504,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-18),(-503,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-19),(-502,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-18),(-501,'org.broadleafcommerce.profile.core.domain.Customer',-19),(-500,'org.broadleafcommerce.profile.core.domain.Customer',-18),(-461,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-17),(-460,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-16),(-459,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-17),(-458,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-16),(-457,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-17),(-456,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-16),(-455,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-17),(-454,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-16),(-453,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-17),(-452,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-16),(-451,'org.broadleafcommerce.core.order.domain.OrderItem',-17),(-450,'org.broadleafcommerce.core.order.domain.OrderItem',-16),(-407,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-15),(-406,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-14),(-405,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-15),(-404,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-14),(-403,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-15),(-402,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-14),(-401,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-15),(-400,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-14),(-370,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-13),(-369,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-12),(-368,'org.broadleafcommerce.profile.core.domain.State',-13),(-367,'org.broadleafcommerce.profile.core.domain.State',-12),(-366,'org.broadleafcommerce.profile.core.domain.Country',-13),(-365,'org.broadleafcommerce.profile.core.domain.Country',-12),(-361,'org.broadleafcommerce.core.payment.domain.OrderPayment',-13),(-360,'org.broadleafcommerce.core.payment.domain.OrderPayment',-12),(-356,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-13),(-355,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-12),(-351,'org.broadleafcommerce.core.order.domain.Order',-13),(-350,'org.broadleafcommerce.core.order.domain.Order',-12),(-307,'org.broadleafcommerce.core.offer.domain.OfferTier',-11),(-306,'org.broadleafcommerce.core.offer.domain.OfferTier',-10),(-305,'org.broadleafcommerce.core.offer.domain.OfferCode',-11),(-304,'org.broadleafcommerce.core.offer.domain.OfferCode',-10),(-303,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-11),(-302,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-10),(-301,'org.broadleafcommerce.core.offer.domain.Offer',-11),(-300,'org.broadleafcommerce.core.offer.domain.Offer',-10),(-251,'org.broadleafcommerce.core.catalog.domain.Sku',-9),(-250,'org.broadleafcommerce.core.catalog.domain.Sku',-8),(-207,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-7),(-206,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-6),(-205,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-7),(-204,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-6),(-203,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-7),(-202,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-6),(-201,'org.broadleafcommerce.core.catalog.domain.ProductOption',-7),(-200,'org.broadleafcommerce.core.catalog.domain.ProductOption',-6),(-107,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-5),(-106,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-4),(-105,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-5),(-104,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-4),(-103,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-5),(-102,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-4),(-101,'org.broadleafcommerce.core.catalog.domain.Product',-5),(-100,'org.broadleafcommerce.core.catalog.domain.Product',-4),(-14,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-3),(-13,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-2),(-12,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-3),(-11,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-2),(-10,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-3),(-9,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-2),(-8,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-3),(-7,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-2),(-6,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-3),(-5,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-2),(-4,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-3),(-3,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-2),(-2,'org.broadleafcommerce.core.catalog.domain.Category',-3),(-1,'org.broadleafcommerce.core.catalog.domain.Category',-2);
/*!40000 ALTER TABLE `blc_admin_permission_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission_xref` (
  `CHILD_PERMISSION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FKBCAD1F5E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKBCAD1F575A3C445` (`CHILD_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F575A3C445` FOREIGN KEY (`CHILD_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F5E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_xref`
--

LOCK TABLES `blc_admin_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_xref` VALUES (-2,-100),(-4,-100),(-32,-100),(-53,-100),(-3,-101),(-4,-101),(-32,-101),(-53,-101),(-4,-102),(-6,-102),(-8,-102),(-34,-102),(-53,-101),(-5,-103),(-6,-103),(-9,-103),(-34,-103),(-53,-103),(-6,-104),(-32,-104),(-53,-104),(-7,-105),(-32,-105),(-53,-105),(-10,-106),(-53,-106),(-11,-107),(-53,-106),(-20,-108),(-200,-108),(-21,-109),(-200,-109),(-22,-110),(-23,-111),(-28,-114),(-29,-115),(-18,-118),(-19,-119),(-26,-120),(-46,-120),(-48,-120),(-27,-121),(-46,-120),(-48,-120),(-36,-126),(-37,-127),(-40,-130),(-41,-131),(-46,-140),(-48,-140),(-47,-141),(-48,-141),(-48,-150),(-49,-151),(-50,-160),(-51,-161),(-27000,-27002),(-27001,-27003);
/*!40000 ALTER TABLE `blc_admin_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role`
--

DROP TABLE IF EXISTS `blc_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_role` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role`
--

LOCK TABLES `blc_admin_role` WRITE;
/*!40000 ALTER TABLE `blc_admin_role` DISABLE KEYS */;
INSERT INTO `blc_admin_role` VALUES (-7,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Designer','ROLE_CONTENT_DESIGNER'),(-6,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Approver','ROLE_CONTENT_APPROVER'),(-5,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Editor','ROLE_CONTENT_EDITOR'),(-4,NULL,NULL,'2016-12-27 19:55:04',NULL,'CSR','ROLE_CUSTOMER_SERVICE_REP'),(-3,NULL,NULL,'2016-12-27 19:55:04',NULL,'Promotion Manager','ROLE_PROMOTION_MANAGER'),(-2,NULL,NULL,'2016-12-27 19:55:04',NULL,'Merchandiser','ROLE_MERCHANDISE_MANAGER'),(-1,NULL,NULL,'2016-12-27 19:55:04',NULL,'Admin Master Access','ROLE_ADMIN');
/*!40000 ALTER TABLE `blc_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_role_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_role_permission_xref` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_ROLE_ID`),
  KEY `FK4A819D98E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK4A819D985F43AAD8` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D985F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D98E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role_permission_xref`
--

LOCK TABLES `blc_admin_role_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_role_permission_xref` VALUES (-5,-27003),(-1,-27003),(-5,-161),(-1,-161),(-1,-141),(-5,-131),(-3,-131),(-2,-131),(-1,-131),(-1,-121),(-4,-119),(-1,-119),(-1,-115),(-6,-111),(-5,-111),(-2,-111),(-1,-111),(-6,-109),(-5,-109),(-1,-109),(-3,-107),(-1,-107),(-2,-105),(-1,-105),(-2,-103),(-1,-103),(-2,-101),(-1,-101),(-1,-25),(-1,-17),(-1,-16),(-1,-13),(-1,-12);
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_sec_perm_xref`
--

DROP TABLE IF EXISTS `blc_admin_sec_perm_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_sec_perm_xref` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FK5E832966E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK5E8329663AF7F0FC` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E8329663AF7F0FC` FOREIGN KEY (`ADMIN_SECTION_ID`) REFERENCES `blc_admin_section` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E832966E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_sec_perm_xref`
--

LOCK TABLES `blc_admin_sec_perm_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_sec_perm_xref` VALUES (-1,-100),(-1,-101),(-2,-102),(-2,-103),(-3,-104),(-3,-105),(-4,-106),(-4,-107),(-5,-108),(-5,-109),(-6,-110),(-6,-111),(-8,-114),(-8,-115),(-10,-118),(-10,-119),(-11,-120),(-11,-121),(-12,-140),(-12,-141),(-13,-126),(-13,-127),(-17,-150),(-17,-151),(-27000,-27002),(-27000,-27003);
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_section`
--

DROP TABLE IF EXISTS `blc_admin_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_section` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) DEFAULT NULL,
  `DISPLAY_CONTROLLER` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SECTION_KEY` varchar(255) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `USE_DEFAULT_HANDLER` tinyint(1) DEFAULT NULL,
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_SECTION_ID`),
  UNIQUE KEY `uc_BLC_ADMIN_SECTION_1` (`SECTION_KEY`),
  KEY `ADMINSECTION_MODULE_INDEX` (`ADMIN_MODULE_ID`),
  KEY `ADMINSECTION_NAME_INDEX` (`NAME`),
  KEY `FK7EA7D92FB1A18498` (`ADMIN_MODULE_ID`),
  CONSTRAINT `FK7EA7D92FB1A18498` FOREIGN KEY (`ADMIN_MODULE_ID`) REFERENCES `blc_admin_module` (`ADMIN_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_section`
--

LOCK TABLES `blc_admin_section` WRITE;
/*!40000 ALTER TABLE `blc_admin_section` DISABLE KEYS */;
INSERT INTO `blc_admin_section` VALUES (-27000,'org.broadleafcommerce.menu.domain.Menu',NULL,3000,'Menus','Menus','/menu',1,-2),(-17,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,11000,'Permission Management','PermissionManagement','/permission-management',NULL,-5),(-13,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,10000,'Configuration Management','ConfigurationManagement','/configuration-management',NULL,-5),(-12,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',NULL,3000,'Role Management','RoleManagement','/role-management',NULL,-5),(-11,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,'User Management','UserManagement','/user-management',NULL,-5),(-10,'org.broadleafcommerce.profile.core.domain.Customer',NULL,1000,'Customer','Customer','/customer',NULL,-3),(-8,'org.broadleafcommerce.cms.url.domain.URLHandler',NULL,7000,'Redirect URL','RedirectURL','/redirect-url',NULL,-2),(-6,'org.broadleafcommerce.cms.file.domain.StaticAsset',NULL,4000,'Assets','Assets','/assets',NULL,-2),(-5,'org.broadleafcommerce.cms.page.domain.Page',NULL,2000,'Pages','Pages','/pages',NULL,-2),(-4,'org.broadleafcommerce.core.offer.domain.Offer',NULL,1000,'Offer','Offer','/offer',NULL,-8),(-3,'org.broadleafcommerce.core.catalog.domain.ProductOption',NULL,5000,'Product Options','ProductOptions','/product-options',NULL,-1),(-2,'org.broadleafcommerce.core.catalog.domain.Product',NULL,3000,'Product','Product','/product',NULL,-1),(-1,'org.broadleafcommerce.core.catalog.domain.Category',NULL,2000,'Category','Category','/category',NULL,-1),(10000,'org.broadleafcommerce.core.order.domain.Order',NULL,4000,'Orders','orders','/order',NULL,-1);
/*!40000 ALTER TABLE `blc_admin_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user`
--

DROP TABLE IF EXISTS `blc_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ACTIVE_STATUS_FLAG` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `ADMINPERM_EMAIL_INDEX` (`EMAIL`),
  KEY `ADMINUSER_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user`
--

LOCK TABLES `blc_admin_user` WRITE;
/*!40000 ALTER TABLE `blc_admin_user` DISABLE KEYS */;
INSERT INTO `blc_admin_user` VALUES (-6,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'cms_approver@yourdomain.com','cmsApprover','CMS Approver','admin',NULL),(-5,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'cms_edit@yourdomain.com','cmsEditor','CMS Editor','admin',NULL),(-4,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'csr@yourdomain.com','csr','CSR','admin',NULL),(-3,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'promo@yourdomain.com','promo','Promotion Manager','admin',NULL),(-2,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'merchandise@yourdomain.com','merchandise','Merchandise Manager','admin',NULL),(-1,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'admin@yourdomain.com','admin','Administrator','admin',NULL);
/*!40000 ALTER TABLE `blc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_addtl_fields`
--

DROP TABLE IF EXISTS `blc_admin_user_addtl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_addtl_fields` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `ADMINUSERATTRIBUTE_INDEX` (`ADMIN_USER_ID`),
  KEY `ADMINUSERATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `FK73274CDD46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FK73274CDD46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_addtl_fields`
--

LOCK TABLES `blc_admin_user_addtl_fields` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_permission_xref` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_USER_ID`),
  KEY `FKF0B3BEEDE88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKF0B3BEED46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEED46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEEDE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_permission_xref`
--

LOCK TABLES `blc_admin_user_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_role_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_role_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_role_xref` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`,`ADMIN_USER_ID`),
  KEY `FKFFD33A265F43AAD8` (`ADMIN_ROLE_ID`),
  KEY `FKFFD33A2646EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A2646EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A265F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_role_xref`
--

LOCK TABLES `blc_admin_user_role_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_role_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_user_role_xref` VALUES (-6,-6),(-5,-5),(-4,-4),(-3,-3),(-2,-2),(-1,-1);
/*!40000 ALTER TABLE `blc_admin_user_role_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_sandbox`
--

DROP TABLE IF EXISTS `blc_admin_user_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_sandbox` (
  `SANDBOX_ID` bigint(20) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `FKD0A97E09579FE59D` (`SANDBOX_ID`),
  KEY `FKD0A97E0946EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E0946EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E09579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_sandbox`
--

LOCK TABLES `blc_admin_user_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_asset_desc_map`
--

DROP TABLE IF EXISTS `blc_asset_desc_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_asset_desc_map` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`,`MAP_KEY`),
  KEY `FKE886BAE3E2BA0C9D` (`STATIC_ASSET_DESC_ID`),
  KEY `FKE886BAE367F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE367F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE3E2BA0C9D` FOREIGN KEY (`STATIC_ASSET_DESC_ID`) REFERENCES `blc_static_asset_desc` (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_asset_desc_map`
--

LOCK TABLES `blc_asset_desc_map` WRITE;
/*!40000 ALTER TABLE `blc_asset_desc_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_asset_desc_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bank_account_payment`
--

DROP TABLE IF EXISTS `blc_bank_account_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bank_account_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `ACCOUNT_NUMBER` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  `ROUTING_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `BANKACCOUNT_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bank_account_payment`
--

LOCK TABLES `blc_bank_account_payment` WRITE;
/*!40000 ALTER TABLE `blc_bank_account_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bank_account_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bund_item_fee_price`
--

DROP TABLE IF EXISTS `blc_bund_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bund_item_fee_price` (
  `BUND_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `IS_TAXABLE` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `BUND_ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BUND_ITEM_FEE_PRICE_ID`),
  KEY `FK14267A943FC68307` (`BUND_ORDER_ITEM_ID`),
  CONSTRAINT `FK14267A943FC68307` FOREIGN KEY (`BUND_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bund_item_fee_price`
--

LOCK TABLES `blc_bund_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bundle_order_item`
--

DROP TABLE IF EXISTS `blc_bundle_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bundle_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK489703DBCCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FK489703DBB78C9977` (`SKU_ID`),
  KEY `FK489703DB9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DB9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DBB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FK489703DBCCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bundle_order_item`
--

LOCK TABLES `blc_bundle_order_item` WRITE;
/*!40000 ALTER TABLE `blc_bundle_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bundle_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_fg_offer`
--

DROP TABLE IF EXISTS `blc_candidate_fg_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_fg_offer` (
  `CANDIDATE_FG_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CANDIDATE_FG_OFFER_ID`),
  KEY `CANDIDATE_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `CANDIDATE_FGOFFER_INDEX` (`OFFER_ID`),
  KEY `FKCE785605028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKCE78560D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FKCE785605028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKCE78560D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_fg_offer`
--

LOCK TABLES `blc_candidate_fg_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_item_offer`
--

DROP TABLE IF EXISTS `blc_candidate_item_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_item_offer` (
  `CANDIDATE_ITEM_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ITEM_OFFER_ID`),
  KEY `CANDIDATE_ITEMOFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FK9EEE9B2D5F3FAF4` (`OFFER_ID`),
  KEY `FK9EEE9B29AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B29AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B2D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_item_offer`
--

LOCK TABLES `blc_candidate_item_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_item_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_item_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_order_offer`
--

DROP TABLE IF EXISTS `blc_candidate_order_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_order_offer` (
  `CANDIDATE_ORDER_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ORDER_OFFER_ID`),
  KEY `CANDIDATE_ORDEROFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK61852289D5F3FAF4` (`OFFER_ID`),
  KEY `FK6185228989FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK6185228989FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK61852289D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_order_offer`
--

LOCK TABLES `blc_candidate_order_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_order_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_order_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_excl_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_excl_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_search_facet_excl_xref` (
  `CAT_EXCL_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CAT_EXCL_SEARCH_FACET_ID`),
  KEY `FK8361EF4E15D1A13D` (`CATEGORY_ID`),
  KEY `FK8361EF4EB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK8361EF4E15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK8361EF4EB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_excl_xref`
--

LOCK TABLES `blc_cat_search_facet_excl_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_search_facet_xref` (
  `CATEGORY_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_SEARCH_FACET_ID`),
  KEY `FK32210EEB15D1A13D` (`CATEGORY_ID`),
  KEY `FK32210EEBB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK32210EEB15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK32210EEBB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_xref`
--

LOCK TABLES `blc_cat_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` DISABLE KEYS */;
INSERT INTO `blc_cat_search_facet_xref` VALUES (1,1.00,2002,1),(2,2.00,2002,2),(4,1.00,2003,4),(5,3.00,2002,3),(6,3.00,2003,3),(7,3.00,2004,3);
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cat_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_site_map_gen_cfg` (
  `ENDING_DEPTH` int(11) NOT NULL,
  `STARTING_DEPTH` int(11) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `ROOT_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1BA4E695C5F3D60` (`ROOT_CATEGORY_ID`),
  KEY `FK1BA4E69BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK1BA4E695C5F3D60` FOREIGN KEY (`ROOT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK1BA4E69BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_site_map_gen_cfg`
--

LOCK TABLES `blc_cat_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cat_site_map_gen_cfg` VALUES (0,0,-7,2004),(0,0,-6,2003),(0,0,-5,2002),(0,0,-4,2001);
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_catalog`
--

DROP TABLE IF EXISTS `blc_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_catalog` (
  `CATALOG_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_catalog`
--

LOCK TABLES `blc_catalog` WRITE;
/*!40000 ALTER TABLE `blc_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category`
--

DROP TABLE IF EXISTS `blc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category` (
  `CATEGORY_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_PARENT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_PARENT_INDEX` (`DEFAULT_PARENT_CATEGORY_ID`),
  KEY `CATEGORY_E_ID_INDEX` (`EXTERNAL_ID`),
  KEY `CATEGORY_NAME_INDEX` (`NAME`),
  KEY `CATEGORY_URL_INDEX` (`URL`),
  KEY `CATEGORY_URLKEY_INDEX` (`URL_KEY`),
  KEY `FK55F82D44B177E6` (`DEFAULT_PARENT_CATEGORY_ID`),
  CONSTRAINT `FK55F82D44B177E6` FOREIGN KEY (`DEFAULT_PARENT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category`
--

LOCK TABLES `blc_category` WRITE;
/*!40000 ALTER TABLE `blc_category` DISABLE KEYS */;
INSERT INTO `blc_category` VALUES (2001,NULL,'2016-12-27 19:55:15',NULL,'Home','layout/home',NULL,NULL,NULL,NULL,'Home',NULL,NULL,'/',NULL,NULL),(2002,NULL,'2016-12-27 19:55:15',NULL,'Hot Sauces',NULL,NULL,NULL,NULL,NULL,'Decor',NULL,NULL,'/hot-sauces',NULL,NULL),(2003,NULL,'2016-12-27 19:55:15',NULL,'Merchandise',NULL,NULL,NULL,NULL,NULL,'Light & Sound',NULL,NULL,'/merchandise',NULL,NULL),(2004,NULL,'2016-12-27 19:55:15',NULL,'Clearance',NULL,NULL,NULL,NULL,NULL,'Bride & Groom',NULL,NULL,'/clearance',NULL,NULL),(2007,NULL,'2016-12-27 19:55:15','Y','Mens',NULL,NULL,NULL,NULL,NULL,'Mens',NULL,NULL,'/mens',NULL,NULL),(2008,NULL,'2016-12-27 19:55:15','Y','Womens',NULL,NULL,NULL,NULL,NULL,'Womens',NULL,NULL,'/womens',NULL,NULL),(2018,NULL,'2017-01-04 15:29:09','Y',NULL,NULL,NULL,NULL,NULL,'Decoration','Decoration',0,NULL,'/decoration',NULL,NULL),(2068,NULL,'2017-01-08 06:00:51','Y',NULL,NULL,NULL,NULL,NULL,'Stage','Stage',0,NULL,'/stage',NULL,NULL),(2069,NULL,'2017-01-08 06:51:50','N',NULL,NULL,NULL,NULL,NULL,'Seating Zone','Seating Zone',0,NULL,'/seating-zone',NULL,NULL),(2070,NULL,'2017-01-08 06:52:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Dining',0,NULL,'/dining',NULL,NULL),(2071,NULL,'2017-01-08 06:53:43','N',NULL,NULL,NULL,NULL,NULL,NULL,'Pandal',0,NULL,'/pandal',NULL,NULL),(2072,NULL,'2017-01-08 06:54:36','N',NULL,NULL,NULL,NULL,NULL,NULL,'Carpet',0,NULL,'/carpet',NULL,NULL),(2073,NULL,'2017-01-08 06:55:53','N',NULL,NULL,NULL,NULL,NULL,NULL,'Phere Chawari',0,NULL,'/phere-chawari',NULL,NULL),(2074,NULL,'2017-01-08 06:59:29','N',NULL,NULL,NULL,NULL,NULL,NULL,'Dance Light',0,NULL,'/sangeet-light',NULL,NULL),(2075,NULL,'2017-01-08 07:02:21','N',NULL,NULL,NULL,NULL,NULL,NULL,'DJ Sound',0,NULL,'/sangeet-sound-dj',NULL,NULL),(2076,NULL,'2017-01-08 07:03:01','N',NULL,NULL,NULL,NULL,NULL,NULL,'Ground Light',0,NULL,'/reception-light',NULL,NULL),(2077,NULL,'2017-01-08 07:04:18','N',NULL,NULL,NULL,NULL,NULL,NULL,'Generator',0,NULL,'/generator',NULL,NULL),(2078,NULL,'2017-01-08 07:18:20','N',NULL,NULL,NULL,NULL,NULL,NULL,'Services',0,NULL,'/services',NULL,NULL),(2118,NULL,'2017-01-08 07:39:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Doli / Palki',0,NULL,'/doli--palki',NULL,NULL),(2119,NULL,'2017-01-08 07:40:33','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Ghodi',0,NULL,'/ghori',NULL,NULL),(2120,NULL,'2017-01-08 07:41:11','N',NULL,NULL,NULL,NULL,NULL,NULL,'Var Mala',0,NULL,'/var-mala',NULL,NULL),(2121,NULL,'2017-01-08 07:41:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Anchor',0,NULL,'/anchor',NULL,NULL),(2122,NULL,'2017-01-08 07:42:26','N',NULL,NULL,NULL,NULL,NULL,NULL,'Balloon',0,NULL,'/balloon',NULL,NULL),(2123,NULL,'2017-01-08 07:43:15','N',NULL,NULL,NULL,NULL,NULL,NULL,'Fire Works',0,NULL,'/fire-works',NULL,NULL),(2124,NULL,'2017-01-08 07:43:59','N',NULL,NULL,NULL,NULL,NULL,NULL,'Sweet Box',0,NULL,'/sweet-box',NULL,NULL),(2125,NULL,'2017-01-08 07:44:35','N',NULL,NULL,NULL,NULL,NULL,NULL,'Valet Parking',0,NULL,'/valet-parking',NULL,NULL),(2126,NULL,'2017-01-08 07:45:20','N',NULL,NULL,NULL,NULL,NULL,NULL,'Photo Video',0,NULL,'/photo-video',NULL,NULL),(2127,NULL,'2017-01-08 07:45:56','N',NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen',0,NULL,'/led-screen',NULL,NULL),(2168,NULL,'2017-01-14 12:01:32','N',NULL,NULL,NULL,NULL,NULL,'Ghodi','Ghodi',0,NULL,'/ghori',NULL,NULL),(2218,NULL,'2017-01-15 09:41:36','N',NULL,NULL,NULL,NULL,NULL,NULL,'Alaav & Gas Heater',0,NULL,'/alaav',NULL,NULL),(2219,NULL,'2017-01-15 09:45:20','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Gas Heater',0,NULL,'/gas-heater',NULL,NULL),(2220,NULL,'2017-01-15 09:48:53','N',NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner',0,NULL,'/selfie-corner',NULL,NULL);
/*!40000 ALTER TABLE `blc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_attribute`
--

DROP TABLE IF EXISTS `blc_category_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_attribute` (
  `CATEGORY_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_ATTRIBUTE_ID`),
  KEY `CATEGORYATTRIBUTE_INDEX` (`CATEGORY_ID`),
  KEY `CATEGORYATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `FK4E441D4115D1A13D` (`CATEGORY_ID`),
  CONSTRAINT `FK4E441D4115D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_attribute`
--

LOCK TABLES `blc_category_attribute` WRITE;
/*!40000 ALTER TABLE `blc_category_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_category_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_media_map`
--

DROP TABLE IF EXISTS `blc_category_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_media_map` (
  `CATEGORY_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_CATEGORY_CATEGORY_ID` bigint(20) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_MEDIA_ID`),
  KEY `FKCD24B106D786CEA2` (`BLC_CATEGORY_CATEGORY_ID`),
  KEY `FKCD24B1066E4720E0` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B1066E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B106D786CEA2` FOREIGN KEY (`BLC_CATEGORY_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_media_map`
--

LOCK TABLES `blc_category_media_map` WRITE;
/*!40000 ALTER TABLE `blc_category_media_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_category_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_product_xref`
--

DROP TABLE IF EXISTS `blc_category_product_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_product_xref` (
  `CATEGORY_PRODUCT_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_PRODUCT_ID`),
  KEY `FK635EB1A615D1A13D` (`CATEGORY_ID`),
  KEY `FK635EB1A65F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK635EB1A615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK635EB1A65F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_product_xref`
--

LOCK TABLES `blc_category_product_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_product_xref` DISABLE KEYS */;
INSERT INTO `blc_category_product_xref` VALUES (150,1,1.000000,2070,710),(151,1,3.000000,2070,711),(152,1,4.000000,2069,712),(153,1,5.000000,2069,713),(154,1,1.000000,2069,714),(155,1,2.000000,2069,715),(156,1,3.000000,2069,716),(157,1,1.000000,2071,717),(158,1,2.000000,2071,718),(159,1,3.000000,2071,719),(160,1,6.000000,2071,720),(161,1,1.000000,2072,721),(200,1,1.000000,2074,760),(201,1,2.000000,2074,761),(202,1,3.000000,2074,762),(203,1,4.000000,2074,763),(204,1,2.000000,2075,764),(205,1,4.000000,2075,765),(206,1,5.000000,2075,766),(207,1,1.000000,2077,767),(208,1,2.000000,2077,768),(209,1,4.000000,2076,769),(210,1,5.000000,2076,770),(211,1,6.000000,2076,771),(212,1,7.000000,2076,772),(213,1,8.000000,2076,773),(214,1,1.000000,2076,774),(215,1,2.000000,2076,775),(216,1,3.000000,2076,776),(217,1,NULL,2118,777),(218,1,NULL,2118,778),(219,1,NULL,2118,779),(223,1,NULL,2120,783),(224,1,NULL,2120,784),(225,1,NULL,2120,785),(226,1,1.000000,2121,786),(250,1,2.000000,2121,810),(251,1,4.000000,2121,811),(252,1,3.000000,2121,812),(253,1,NULL,2125,813),(254,1,NULL,2125,814),(255,1,NULL,2125,815),(256,1,1.000000,2127,816),(257,1,2.000000,2127,817),(258,1,3.000000,2127,818),(350,1,6.000000,2069,910),(351,1,2.000000,2070,911),(352,1,4.000000,2071,912),(353,1,5.000000,2071,913),(354,1,2.000000,2072,914),(355,1,3.000000,2072,915),(356,1,1.000000,2075,916),(357,1,3.000000,2075,917),(358,1,6.000000,2075,918),(400,NULL,3.000000,2001,710),(401,NULL,1.000000,2001,714),(402,NULL,2.000000,2001,720),(403,NULL,4.000000,2001,722),(404,1,5.000000,2121,960),(405,1,6.000000,2121,961),(550,1,1.000000,2073,1010),(551,1,2.000000,2073,1011),(552,1,3.000000,2073,1012),(553,1,4.000000,2073,610),(554,1,5.000000,2073,660),(555,1,6.000000,2073,661),(556,1,1.000000,2168,780),(557,1,2.000000,2168,781),(558,1,3.000000,2168,782),(559,1,1.000000,2218,860),(561,1,1.000000,2220,862),(562,1,2.000000,2220,722),(563,1,2.000000,2218,1060);
/*!40000 ALTER TABLE `blc_category_product_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_xref`
--

DROP TABLE IF EXISTS `blc_category_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_xref` (
  `CATEGORY_XREF_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `SUB_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_XREF_ID`),
  KEY `FKE889733615D1A13D` (`CATEGORY_ID`),
  KEY `FKE8897336D6D45DBE` (`SUB_CATEGORY_ID`),
  CONSTRAINT `FKE889733615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKE8897336D6D45DBE` FOREIGN KEY (`SUB_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_xref`
--

LOCK TABLES `blc_category_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_xref` DISABLE KEYS */;
INSERT INTO `blc_category_xref` VALUES (20,1,NULL,2002,2069),(21,1,NULL,2002,2070),(22,1,NULL,2002,2071),(23,1,NULL,2002,2072),(24,1,NULL,2002,2073),(25,1,NULL,2003,2074),(26,1,NULL,2003,2075),(27,1,NULL,2003,2076),(28,1,NULL,2003,2077),(69,1,NULL,2004,2118),(71,1,NULL,2004,2120),(72,1,NULL,2078,2121),(73,1,NULL,2078,2122),(74,1,NULL,2078,2123),(75,1,NULL,2078,2124),(76,1,NULL,2078,2125),(77,1,NULL,2078,2126),(78,1,NULL,2078,2127),(119,1,NULL,2004,2119),(169,1,NULL,2004,2168),(219,1,NULL,2078,2218),(221,1,NULL,2002,2220);
/*!40000 ALTER TABLE `blc_category_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_challenge_question`
--

DROP TABLE IF EXISTS `blc_challenge_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_challenge_question` (
  `QUESTION_ID` bigint(20) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_challenge_question`
--

LOCK TABLES `blc_challenge_question` WRITE;
/*!40000 ALTER TABLE `blc_challenge_question` DISABLE KEYS */;
INSERT INTO `blc_challenge_question` VALUES (1,'What is your favorite sports team?'),(2,'What was your high school name?'),(3,'What was your childhood nickname?'),(4,'What street did you live on in third grade?'),(5,'What is your oldest sibling\'s middle name?'),(6,'What school did you attend for sixth grade?'),(7,'Where does your nearest sibling live?'),(8,'What is your youngest brother\'s birthday?'),(9,'In what city or town was your first job?');
/*!40000 ALTER TABLE `blc_challenge_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu`
--

DROP TABLE IF EXISTS `blc_cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cms_menu` (
  `MENU_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu`
--

LOCK TABLES `blc_cms_menu` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu` DISABLE KEYS */;
INSERT INTO `blc_cms_menu` VALUES (1,'Header Nav');
/*!40000 ALTER TABLE `blc_cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu_item`
--

DROP TABLE IF EXISTS `blc_cms_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cms_menu_item` (
  `MENU_ITEM_ID` bigint(20) NOT NULL,
  `ACTION_URL` varchar(255) DEFAULT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CUSTOM_HTML` longtext,
  `LABEL` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `MENU_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `LINKED_MENU_ID` bigint(20) DEFAULT NULL,
  `LINKED_PAGE_ID` bigint(20) DEFAULT NULL,
  `PARENT_MENU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`MENU_ITEM_ID`),
  KEY `FKFC9BDD76E4720E0` (`MEDIA_ID`),
  KEY `FKFC9BDD7A8D0E60C` (`LINKED_MENU_ID`),
  KEY `FKFC9BDD77BB4A41` (`LINKED_PAGE_ID`),
  KEY `FKFC9BDD73876279D` (`PARENT_MENU_ID`),
  CONSTRAINT `FKFC9BDD73876279D` FOREIGN KEY (`PARENT_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`),
  CONSTRAINT `FKFC9BDD76E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKFC9BDD77BB4A41` FOREIGN KEY (`LINKED_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`),
  CONSTRAINT `FKFC9BDD7A8D0E60C` FOREIGN KEY (`LINKED_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu_item`
--

LOCK TABLES `blc_cms_menu_item` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu_item` DISABLE KEYS */;
INSERT INTO `blc_cms_menu_item` VALUES (1,'/',NULL,NULL,'Home',1.000000,'CATEGORY',NULL,NULL,NULL,1),(2,'/hot-sauces',NULL,NULL,'Decor',2.000000,'CATEGORY',NULL,NULL,NULL,1),(3,'/merchandise',NULL,NULL,'Merchandise',3.000000,'CATEGORY',NULL,NULL,NULL,1),(4,'/clearance',NULL,NULL,'Clearance',4.000000,'CATEGORY',NULL,NULL,NULL,1),(6,NULL,NULL,NULL,'FAQ',6.000000,'PAGE',NULL,NULL,2,1),(66,'/services',NULL,NULL,'Services',5.000000,'CATEGORY',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_cms_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_code_types`
--

DROP TABLE IF EXISTS `blc_code_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_code_types` (
  `CODE_ID` bigint(20) NOT NULL,
  `CODE_TYPE` varchar(255) NOT NULL,
  `CODE_DESC` varchar(255) DEFAULT NULL,
  `CODE_KEY` varchar(255) NOT NULL,
  `MODIFIABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_code_types`
--

LOCK TABLES `blc_code_types` WRITE;
/*!40000 ALTER TABLE `blc_code_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_code_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country`
--

DROP TABLE IF EXISTS `blc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country`
--

LOCK TABLES `blc_country` WRITE;
/*!40000 ALTER TABLE `blc_country` DISABLE KEYS */;
INSERT INTO `blc_country` VALUES ('CA',NULL,NULL,NULL,NULL,'Canada'),('ES',NULL,NULL,NULL,NULL,'Spain'),('FR',NULL,NULL,NULL,NULL,'France'),('GB',NULL,NULL,NULL,NULL,'United Kingdom'),('IN',NULL,NULL,NULL,NULL,'India'),('MX',NULL,NULL,NULL,NULL,'Mexico'),('US',NULL,NULL,NULL,NULL,'United States');
/*!40000 ALTER TABLE `blc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub`
--

DROP TABLE IF EXISTS `blc_country_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country_sub` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `ALT_ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY_SUB_CAT` bigint(20) DEFAULT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `COUNTRY_SUB_ALT_ABRV_IDX` (`ALT_ABBREVIATION`),
  KEY `COUNTRY_SUB_NAME_IDX` (`NAME`),
  KEY `FKA804FBD172AAB3C0` (`COUNTRY_SUB_CAT`),
  KEY `FKA804FBD1A46E16CF` (`COUNTRY`),
  CONSTRAINT `FKA804FBD172AAB3C0` FOREIGN KEY (`COUNTRY_SUB_CAT`) REFERENCES `blc_country_sub_cat` (`COUNTRY_SUB_CAT_ID`),
  CONSTRAINT `FKA804FBD1A46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub`
--

LOCK TABLES `blc_country_sub` WRITE;
/*!40000 ALTER TABLE `blc_country_sub` DISABLE KEYS */;
INSERT INTO `blc_country_sub` VALUES ('CA-AB','AB',NULL,NULL,NULL,NULL,'ALBERTA',63,'CA'),('CA-BC','BC',NULL,NULL,NULL,NULL,'BRITISH COLUMBIA',63,'CA'),('CA-MB','MB',NULL,NULL,NULL,NULL,'MANITOBA',63,'CA'),('CA-NB','NB',NULL,NULL,NULL,NULL,'NEW BRUNSWICK',63,'CA'),('CA-NL','NL',NULL,NULL,NULL,NULL,'NEWFOUNDLAND',63,'CA'),('CA-NS','NS',NULL,NULL,NULL,NULL,'NOVA SCOTIA',63,'CA'),('CA-NT','NT',NULL,NULL,NULL,NULL,'NORTHWEST TERRITORIES',81,'CA'),('CA-NU','NU',NULL,NULL,NULL,NULL,'NUNAVUT',81,'CA'),('CA-ON','ON',NULL,NULL,NULL,NULL,'ONTARIO',63,'CA'),('CA-PE','PE',NULL,NULL,NULL,NULL,'PRINCE EDWARD ISLAND',63,'CA'),('CA-QC','QC',NULL,NULL,NULL,NULL,'QUEBEC',63,'CA'),('CA-SK','SK',NULL,NULL,NULL,NULL,'SASKATCHEWAN',63,'CA'),('CA-YT','YT',NULL,NULL,NULL,NULL,'YUKON',81,'CA'),('IN-MP','MP',NULL,NULL,NULL,NULL,'Madhya PRadesh',79,'IN'),('US-AK','AK',NULL,NULL,NULL,NULL,'ALASKA',79,'US'),('US-AL','AL',NULL,NULL,NULL,NULL,'ALABAMA',79,'US'),('US-AR','AR',NULL,NULL,NULL,NULL,'ARKANSAS',79,'US'),('US-AS','AS',NULL,NULL,NULL,NULL,'AMERICAN SAMOA',57,'US'),('US-AZ','AZ',NULL,NULL,NULL,NULL,'ARIZONA',79,'US'),('US-CA','CA',NULL,NULL,NULL,NULL,'CALIFORNIA',79,'US'),('US-CO','CO',NULL,NULL,NULL,NULL,'COLORADO',79,'US'),('US-CT','CT',NULL,NULL,NULL,NULL,'CONNECTICUT',79,'US'),('US-DC','DC',NULL,NULL,NULL,NULL,'DISTRICT OF COLUMBIA',31,'US'),('US-DE','DE',NULL,NULL,NULL,NULL,'DELAWARE',79,'US'),('US-FL','FL',NULL,NULL,NULL,NULL,'FLORIDA',79,'US'),('US-GA','GA',NULL,NULL,NULL,NULL,'GEORGIA',79,'US'),('US-GU','GU',NULL,NULL,NULL,NULL,'GUAM',57,'US'),('US-HI','HI',NULL,NULL,NULL,NULL,'HAWAII',79,'US'),('US-IA','IA',NULL,NULL,NULL,NULL,'IOWA',79,'US'),('US-ID','ID',NULL,NULL,NULL,NULL,'IDAHO',79,'US'),('US-IL','IL',NULL,NULL,NULL,NULL,'ILLINOIS',79,'US'),('US-IN','IN',NULL,NULL,NULL,NULL,'INDIANA',79,'US'),('US-KS','KS',NULL,NULL,NULL,NULL,'KANSAS',79,'US'),('US-KY','KY',NULL,NULL,NULL,NULL,'KENTUCKY',79,'US'),('US-LA','LA',NULL,NULL,NULL,NULL,'LOUISIANA',79,'US'),('US-MA','MA',NULL,NULL,NULL,NULL,'MASSACHUSETTS',79,'US'),('US-MD','MD',NULL,NULL,NULL,NULL,'MARYLAND',79,'US'),('US-ME','ME',NULL,NULL,NULL,NULL,'MAINE',79,'US'),('US-MI','MI',NULL,NULL,NULL,NULL,'MICHIGAN',79,'US'),('US-MN','MN',NULL,NULL,NULL,NULL,'MINNESOTA',79,'US'),('US-MO','MO',NULL,NULL,NULL,NULL,'MISSOURI',79,'US'),('US-MP','MP',NULL,NULL,NULL,NULL,'NORTHERN MARIANA ISLANDS',57,'US'),('US-MS','MS',NULL,NULL,NULL,NULL,'MISSISSIPPI',79,'US'),('US-MT','MT',NULL,NULL,NULL,NULL,'MONTANA',79,'US'),('US-NC','NC',NULL,NULL,NULL,NULL,'NORTH CAROLINA',79,'US'),('US-ND','ND',NULL,NULL,NULL,NULL,'NORTH DAKOTA',79,'US'),('US-NE','NE',NULL,NULL,NULL,NULL,'NEBRASKA',79,'US'),('US-NH','NH',NULL,NULL,NULL,NULL,'NEW HAMPSHIRE',79,'US'),('US-NJ','NJ',NULL,NULL,NULL,NULL,'NEW JERSEY',79,'US'),('US-NM','NM',NULL,NULL,NULL,NULL,'NEW MEXICO',79,'US'),('US-NV','NV',NULL,NULL,NULL,NULL,'NEVADA',79,'US'),('US-NY','NY',NULL,NULL,NULL,NULL,'NEW YORK',79,'US'),('US-OH','OH',NULL,NULL,NULL,NULL,'OHIO',79,'US'),('US-OK','OK',NULL,NULL,NULL,NULL,'OKLAHOMA',79,'US'),('US-OR','OR',NULL,NULL,NULL,NULL,'OREGON',79,'US'),('US-PA','PA',NULL,NULL,NULL,NULL,'PENNSYLVANIA',79,'US'),('US-PR','PR',NULL,NULL,NULL,NULL,'PUERTO RICO',57,'US'),('US-RI','RI',NULL,NULL,NULL,NULL,'RHODE ISLAND',79,'US'),('US-SC','SC',NULL,NULL,NULL,NULL,'SOUTH CAROLINA',79,'US'),('US-SD','SD',NULL,NULL,NULL,NULL,'SOUTH DAKOTA',79,'US'),('US-TN','TN',NULL,NULL,NULL,NULL,'TENNESSEE',79,'US'),('US-TX','TX',NULL,NULL,NULL,NULL,'TEXAS',79,'US'),('US-UM','UM',NULL,NULL,NULL,NULL,'UNITED STATES MINOR OUTLYING ISLANDS',57,'US'),('US-UT','UT',NULL,NULL,NULL,NULL,'UTAH',79,'US'),('US-VA','VA',NULL,NULL,NULL,NULL,'VIRGINIA',79,'US'),('US-VI','VI',NULL,NULL,NULL,NULL,'VIRGIN ISLANDS',57,'US'),('US-VT','VT',NULL,NULL,NULL,NULL,'VERMONT',79,'US'),('US-WA','WA',NULL,NULL,NULL,NULL,'WASHINGTON',79,'US'),('US-WI','WI',NULL,NULL,NULL,NULL,'WISCONSIN',79,'US'),('US-WV','WV',NULL,NULL,NULL,NULL,'WEST VIRGINIA',79,'US'),('US-WY','WY',NULL,NULL,NULL,NULL,'WYOMING',79,'US');
/*!40000 ALTER TABLE `blc_country_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub_cat`
--

DROP TABLE IF EXISTS `blc_country_sub_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country_sub_cat` (
  `COUNTRY_SUB_CAT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub_cat`
--

LOCK TABLES `blc_country_sub_cat` WRITE;
/*!40000 ALTER TABLE `blc_country_sub_cat` DISABLE KEYS */;
INSERT INTO `blc_country_sub_cat` VALUES (1,NULL,NULL,NULL,NULL,'Administration'),(2,NULL,NULL,NULL,NULL,'Administrative Atoll'),(3,NULL,NULL,NULL,NULL,'Administrative Region'),(4,NULL,NULL,NULL,NULL,'Area'),(5,NULL,NULL,NULL,NULL,'Autonomous City'),(6,NULL,NULL,NULL,NULL,'Autonomous Community'),(7,NULL,NULL,NULL,NULL,'Autonomous District'),(8,NULL,NULL,NULL,NULL,'Autonomous Municipality'),(9,NULL,NULL,NULL,NULL,'Autonomous Province'),(10,NULL,NULL,NULL,NULL,'Autonomous Region'),(11,NULL,NULL,NULL,NULL,'Autonomous Republic'),(12,NULL,NULL,NULL,NULL,'Autonomous Sector'),(13,NULL,NULL,NULL,NULL,'Autonomous Territorial Unit'),(14,NULL,NULL,NULL,NULL,'Borough'),(15,NULL,NULL,NULL,NULL,'Canton'),(16,NULL,NULL,NULL,NULL,'Capital'),(17,NULL,NULL,NULL,NULL,'Capital City'),(18,NULL,NULL,NULL,NULL,'Capital District'),(19,NULL,NULL,NULL,NULL,'Capital Metropolitan City'),(20,NULL,NULL,NULL,NULL,'City'),(21,NULL,NULL,NULL,NULL,'City of County Right'),(22,NULL,NULL,NULL,NULL,'Commune'),(23,NULL,NULL,NULL,NULL,'Constitutional Province'),(24,NULL,NULL,NULL,NULL,'Corporation'),(25,NULL,NULL,NULL,NULL,'Council Area'),(26,NULL,NULL,NULL,NULL,'Country'),(27,NULL,NULL,NULL,NULL,'County'),(28,NULL,NULL,NULL,NULL,'Department'),(29,NULL,NULL,NULL,NULL,'Dependency'),(30,NULL,NULL,NULL,NULL,'Development Region'),(31,NULL,NULL,NULL,NULL,'District'),(32,NULL,NULL,NULL,NULL,'District With Special Status'),(33,NULL,NULL,NULL,NULL,'Division'),(34,NULL,NULL,NULL,NULL,'Economic Prefecture'),(35,NULL,NULL,NULL,NULL,'Emirate'),(36,NULL,NULL,NULL,NULL,'Entity'),(37,NULL,NULL,NULL,NULL,'Federal Capital Territory'),(38,NULL,NULL,NULL,NULL,'Federal Dependency'),(39,NULL,NULL,NULL,NULL,'Federal District'),(40,NULL,NULL,NULL,NULL,'Federal Land'),(41,NULL,NULL,NULL,NULL,'Federal Territory'),(42,NULL,NULL,NULL,NULL,'Federated States'),(43,NULL,NULL,NULL,NULL,'Geographical Entity'),(44,NULL,NULL,NULL,NULL,'Geographical Regions'),(45,NULL,NULL,NULL,NULL,'Governorate'),(46,NULL,NULL,NULL,NULL,'Indigenous Region'),(47,NULL,NULL,NULL,NULL,'Island'),(48,NULL,NULL,NULL,NULL,'Island Council'),(49,NULL,NULL,NULL,NULL,'Local Council'),(50,NULL,NULL,NULL,NULL,'Metropolitan Administration'),(51,NULL,NULL,NULL,NULL,'Metropolitan City'),(52,NULL,NULL,NULL,NULL,'Metropolitan Department'),(53,NULL,NULL,NULL,NULL,'Metropolitan Region'),(54,NULL,NULL,NULL,NULL,'Municipality'),(55,NULL,NULL,NULL,NULL,'Oblast'),(56,NULL,NULL,NULL,NULL,'Outlying Area'),(57,NULL,NULL,NULL,NULL,'Outlying Territory'),(58,NULL,NULL,NULL,NULL,'Overseas Region'),(59,NULL,NULL,NULL,NULL,'Overseas Territorial Collectivity'),(60,NULL,NULL,NULL,NULL,'Parish'),(61,NULL,NULL,NULL,NULL,'Popularate'),(62,NULL,NULL,NULL,NULL,'Prefecture'),(63,NULL,NULL,NULL,NULL,'Province'),(64,NULL,NULL,NULL,NULL,'Quarter'),(65,NULL,NULL,NULL,NULL,'Rayon'),(66,NULL,NULL,NULL,NULL,'Region'),(67,NULL,NULL,NULL,NULL,'Regional Council'),(68,NULL,NULL,NULL,NULL,'Republic'),(69,NULL,NULL,NULL,NULL,'Republican City'),(70,NULL,NULL,NULL,NULL,'Self-governed Part'),(71,NULL,NULL,NULL,NULL,'Special Administrative City'),(72,NULL,NULL,NULL,NULL,'Special Administrative Region'),(73,NULL,NULL,NULL,NULL,'Special City'),(74,NULL,NULL,NULL,NULL,'Special District'),(75,NULL,NULL,NULL,NULL,'Special Island Authority'),(76,NULL,NULL,NULL,NULL,'Special Municipality'),(77,NULL,NULL,NULL,NULL,'Special Region'),(78,NULL,NULL,NULL,NULL,'Special Zone'),(79,NULL,NULL,NULL,NULL,'State'),(80,NULL,NULL,NULL,NULL,'Territorial Unit'),(81,NULL,NULL,NULL,NULL,'Territory'),(82,NULL,NULL,NULL,NULL,'Town Council'),(83,NULL,NULL,NULL,NULL,'Union Territory'),(84,NULL,NULL,NULL,NULL,'Unitary Authority'),(85,NULL,NULL,NULL,NULL,'Urban Community'),(86,NULL,NULL,NULL,NULL,'Zone');
/*!40000 ALTER TABLE `blc_country_sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_credit_card_payment`
--

DROP TABLE IF EXISTS `blc_credit_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_credit_card_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `EXPIRATION_MONTH` int(11) NOT NULL,
  `EXPIRATION_YEAR` int(11) NOT NULL,
  `NAME_ON_CARD` varchar(255) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `CREDITCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_credit_card_payment`
--

LOCK TABLES `blc_credit_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_credit_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_credit_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_currency`
--

DROP TABLE IF EXISTS `blc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_currency` (
  `CURRENCY_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_currency`
--

LOCK TABLES `blc_currency` WRITE;
/*!40000 ALTER TABLE `blc_currency` DISABLE KEYS */;
INSERT INTO `blc_currency` VALUES ('EUR',NULL,NULL,NULL,NULL,0,'EURO Dollar'),('GBP',NULL,NULL,NULL,NULL,0,'GB Pound'),('INR',NULL,NULL,NULL,NULL,1,'Indian Rupees'),('MXN',NULL,NULL,NULL,NULL,0,'Mexican Peso'),('Rs',NULL,NULL,NULL,NULL,0,'Indian Rupees'),('USD',NULL,NULL,NULL,NULL,0,'US Dollar');
/*!40000 ALTER TABLE `blc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cust_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cust_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cust_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK67C0DBA0BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK67C0DBA0BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cust_site_map_gen_cfg`
--

LOCK TABLES `blc_cust_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cust_site_map_gen_cfg` VALUES (-1);
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer`
--

DROP TABLE IF EXISTS `blc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CHALLENGE_ANSWER` varchar(255) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `IS_TAX_EXEMPT` tinyint(1) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PASSWORD_CHANGE_REQUIRED` tinyint(1) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `RECEIVE_EMAIL` tinyint(1) DEFAULT NULL,
  `IS_REGISTERED` tinyint(1) DEFAULT NULL,
  `TAX_EXEMPTION_CODE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CHALLENGE_QUESTION_ID` bigint(20) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `CUSTOMER_CHALLENGE_INDEX` (`CHALLENGE_QUESTION_ID`),
  KEY `CUSTOMER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `FK7716F0241422B204` (`CHALLENGE_QUESTION_ID`),
  KEY `FK7716F024A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK7716F0241422B204` FOREIGN KEY (`CHALLENGE_QUESTION_ID`) REFERENCES `blc_challenge_question` (`QUESTION_ID`),
  CONSTRAINT `FK7716F024A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer`
--

LOCK TABLES `blc_customer` WRITE;
/*!40000 ALTER TABLE `blc_customer` DISABLE KEYS */;
INSERT INTO `blc_customer` VALUES (100,'N',100,'2016-12-27 20:00:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'100',NULL,NULL),(200,NULL,200,'2016-12-27 20:40:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'200',NULL,NULL),(302,NULL,302,'2016-12-28 13:04:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'302',NULL,NULL),(400,NULL,400,'2016-12-28 14:28:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'400',NULL,NULL),(500,NULL,500,'2016-12-28 17:04:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'500',NULL,NULL),(700,NULL,700,'2016-12-28 17:24:21','2016-12-28 17:31:49',700,NULL,0,'agrawal.sumit17@gmail.com','sumit',0,'agrawal','123456',0,NULL,1,1,NULL,'agrawal.sumit17@gmail.com',NULL,NULL),(800,NULL,800,'2016-12-28 18:32:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'800',NULL,NULL),(900,NULL,900,'2016-12-28 18:35:11',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'900',NULL,NULL),(1000,NULL,1000,'2016-12-28 18:43:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1000',NULL,NULL),(1100,NULL,1100,'2016-12-28 18:48:32',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1100',NULL,NULL),(1200,NULL,1200,'2016-12-28 19:07:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1200',NULL,NULL),(1300,NULL,1300,'2016-12-28 19:30:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1300',NULL,NULL),(1400,NULL,1400,'2016-12-28 19:37:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1400',NULL,NULL),(1701,NULL,1701,'2016-12-29 11:59:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1701',NULL,NULL),(1800,NULL,1800,'2016-12-29 12:26:05',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1800',NULL,NULL),(2000,NULL,2000,'2016-12-29 18:14:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2000',NULL,NULL),(2100,NULL,2100,'2016-12-29 18:18:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2100',NULL,NULL),(2200,NULL,2200,'2016-12-29 18:33:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2200',NULL,NULL),(2300,NULL,2300,'2016-12-29 19:13:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2300',NULL,NULL),(2400,NULL,2400,'2016-12-29 19:37:29',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2400',NULL,NULL),(2500,NULL,2500,'2016-12-29 20:13:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2500',NULL,NULL),(2601,NULL,2601,'2016-12-30 13:59:57',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2601',NULL,NULL),(2700,NULL,2700,'2016-12-30 14:07:49',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2700',NULL,NULL),(2800,NULL,2800,'2016-12-30 14:09:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2800',NULL,NULL),(2900,NULL,2900,'2016-12-30 14:19:08',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2900',NULL,NULL),(3000,NULL,3000,'2016-12-30 14:35:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3000',NULL,NULL),(3100,NULL,3100,'2016-12-30 14:50:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3100',NULL,NULL),(3500,NULL,3500,'2016-12-30 16:50:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3500',NULL,NULL),(3800,NULL,3800,'2016-12-30 17:43:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3800',NULL,NULL),(4000,NULL,4000,'2016-12-30 18:14:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4000',NULL,NULL),(4100,NULL,4100,'2016-12-30 18:20:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4100',NULL,NULL),(4200,NULL,4200,'2016-12-30 18:33:45',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4200',NULL,NULL),(4300,NULL,4300,'2016-12-30 18:49:08',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4300',NULL,NULL),(4900,NULL,4900,'2016-12-30 19:58:35',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4900',NULL,NULL),(5000,NULL,5000,'2016-12-30 20:04:13',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5000',NULL,NULL),(5100,NULL,5100,'2017-01-02 12:10:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5100',NULL,NULL),(5200,NULL,5200,'2017-01-02 12:40:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5200',NULL,NULL),(5300,NULL,5300,'2017-01-02 12:58:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5300',NULL,NULL),(5400,NULL,5400,'2017-01-02 13:05:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5400',NULL,NULL),(5500,NULL,5500,'2017-01-02 13:08:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5500',NULL,NULL),(5600,NULL,5600,'2017-01-02 13:20:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5600',NULL,NULL),(5700,NULL,5700,'2017-01-02 13:24:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5700',NULL,NULL),(5800,NULL,5800,'2017-01-02 13:26:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5800',NULL,NULL),(5900,NULL,5900,'2017-01-02 13:38:41',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5900',NULL,NULL),(6000,NULL,6000,'2017-01-02 13:46:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6000',NULL,NULL),(6100,NULL,6100,'2017-01-02 13:53:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6100',NULL,NULL),(6200,NULL,6200,'2017-01-02 14:04:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6200',NULL,NULL),(6300,NULL,6300,'2017-01-02 14:17:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6300',NULL,NULL),(6400,NULL,6400,'2017-01-03 18:17:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6400',NULL,NULL),(6500,NULL,6500,'2017-01-03 18:53:35',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6500',NULL,NULL),(6600,NULL,6600,'2017-01-03 19:02:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6600',NULL,NULL),(6700,NULL,6700,'2017-01-03 19:11:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6700',NULL,NULL),(6800,NULL,6800,'2017-01-03 19:18:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6800',NULL,NULL),(6900,NULL,6900,'2017-01-03 19:30:31',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6900',NULL,NULL),(7000,NULL,7000,'2017-01-03 20:15:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7000',NULL,NULL),(7100,NULL,7100,'2017-01-03 20:25:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7100',NULL,NULL),(7201,NULL,7201,'2017-01-04 12:52:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7201',NULL,NULL),(7300,NULL,7300,'2017-01-04 13:24:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7300',NULL,NULL),(7400,NULL,7400,'2017-01-04 13:30:18',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7400',NULL,NULL),(7500,NULL,7500,'2017-01-04 15:43:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7500',NULL,NULL),(7600,NULL,7600,'2017-01-04 18:36:05',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7600',NULL,NULL),(7800,NULL,7800,'2017-01-04 18:58:18',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7800',NULL,NULL),(8100,NULL,8100,'2017-01-04 19:12:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8100',NULL,NULL),(8200,NULL,8200,'2017-01-04 19:28:53',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8200',NULL,NULL),(8300,NULL,8300,'2017-01-04 19:40:22',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8300',NULL,NULL),(8400,NULL,8400,'2017-01-04 19:47:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8400',NULL,NULL),(8500,NULL,8500,'2017-01-04 19:58:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8500',NULL,NULL),(8600,NULL,8600,'2017-01-05 10:27:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8600',NULL,NULL),(8701,NULL,8701,'2017-01-08 05:47:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8701',NULL,NULL),(8702,NULL,8702,'2017-01-08 05:47:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8702',NULL,NULL),(11300,NULL,11300,'2017-01-08 08:52:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11300',NULL,NULL),(11702,'N',11702,'2017-01-09 06:15:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11702',NULL,NULL),(11800,'N',11800,'2017-01-11 06:24:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11800',NULL,NULL),(11900,'N',11900,'2017-01-11 06:34:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11900',NULL,NULL),(12000,'N',12000,'2017-01-11 18:15:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12000',NULL,NULL),(12102,NULL,12102,'2017-01-12 17:28:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12102',NULL,NULL),(12103,NULL,12103,'2017-01-12 17:32:33',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12103',NULL,NULL),(12200,NULL,12200,'2017-01-12 19:09:23',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12200',NULL,NULL),(12400,NULL,12400,'2017-01-14 12:12:17',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12400',NULL,NULL),(12402,NULL,12402,'2017-01-14 12:52:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12402',NULL,NULL),(12500,NULL,12500,'2017-01-14 13:18:13',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12500',NULL,NULL),(12600,NULL,12600,'2017-01-15 06:17:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12600',NULL,NULL),(12700,NULL,12700,'2017-01-15 06:36:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12700',NULL,NULL),(12800,NULL,12800,'2017-01-15 06:56:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12800',NULL,NULL),(13002,NULL,13002,'2017-01-15 08:24:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13002',NULL,NULL),(13100,NULL,13100,'2017-01-15 08:39:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13100',NULL,NULL),(13200,NULL,13200,'2017-01-15 08:50:11',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13200',NULL,NULL),(13300,NULL,13300,'2017-01-15 09:08:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13300',NULL,NULL),(13500,NULL,13500,'2017-01-15 10:13:23',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13500',NULL,NULL),(13600,NULL,13600,'2017-01-15 10:40:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13600',NULL,NULL),(13601,NULL,13601,'2017-01-15 10:34:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13601',NULL,NULL),(13700,NULL,13700,'2017-01-15 11:02:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13700',NULL,NULL),(13800,NULL,13800,'2017-01-15 11:18:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13800',NULL,NULL),(13900,NULL,13900,'2017-01-15 11:25:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13900',NULL,NULL),(14000,NULL,14000,'2017-01-15 12:01:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14000',NULL,NULL),(14100,NULL,14100,'2017-01-15 12:20:03',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14100',NULL,NULL),(14200,NULL,14200,'2017-01-15 12:50:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14200',NULL,NULL),(14300,NULL,14300,'2017-01-15 13:12:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14300',NULL,NULL),(14401,NULL,14401,'2017-01-15 13:15:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14401',NULL,NULL),(14500,NULL,14500,'2017-01-15 13:21:56',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14500',NULL,NULL),(14600,NULL,14600,'2017-01-15 13:40:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14600',NULL,NULL),(14700,NULL,14700,'2017-01-15 14:31:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14700',NULL,NULL),(14800,NULL,14800,'2017-01-15 14:42:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14800',NULL,NULL),(15100,NULL,15100,'2017-01-16 05:56:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15100',NULL,NULL),(15200,NULL,15200,'2017-01-16 06:07:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15200',NULL,NULL),(15201,NULL,15201,'2017-01-16 06:46:15',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15201',NULL,NULL),(15300,NULL,15300,'2017-01-16 06:55:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15300',NULL,NULL),(15400,NULL,15400,'2017-01-16 07:02:00',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15400',NULL,NULL);
/*!40000 ALTER TABLE `blc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_address`
--

DROP TABLE IF EXISTS `blc_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_address` (
  `CUSTOMER_ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_NAME` varchar(255) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ADDRESS_ID`),
  KEY `CUSTOMERADDRESS_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FK75B95AB9C13085DD` (`ADDRESS_ID`),
  KEY `FK75B95AB97470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB97470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB9C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_address`
--

LOCK TABLES `blc_customer_address` WRITE;
/*!40000 ALTER TABLE `blc_customer_address` DISABLE KEYS */;
INSERT INTO `blc_customer_address` VALUES (1,'sdfsfsfs','N',1,700);
/*!40000 ALTER TABLE `blc_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_attribute`
--

DROP TABLE IF EXISTS `blc_customer_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_attribute` (
  `CUSTOMER_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTR_ID`),
  KEY `FKB974C8217470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKB974C8217470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_attribute`
--

LOCK TABLES `blc_customer_attribute` WRITE;
/*!40000 ALTER TABLE `blc_customer_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_offer_xref`
--

DROP TABLE IF EXISTS `blc_customer_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_offer_xref` (
  `CUSTOMER_OFFER_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OFFER_ID`),
  KEY `CUSTOFFER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTOFFER_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK685E80397470F437` (`CUSTOMER_ID`),
  KEY `FK685E8039D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK685E80397470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK685E8039D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_offer_xref`
--

LOCK TABLES `blc_customer_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_customer_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_password_token`
--

DROP TABLE IF EXISTS `blc_customer_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_password_token`
--

LOCK TABLES `blc_customer_password_token` WRITE;
/*!40000 ALTER TABLE `blc_customer_password_token` DISABLE KEYS */;
INSERT INTO `blc_customer_password_token` VALUES ('3j3yhgjkggqas86nsfb9','2016-12-28 17:32:23',700,NULL,0),('4hteabhnhrwnks74vcwt','2016-12-29 11:58:48',700,NULL,0),('7u9mjh6aw2ymasxwnmd8','2016-12-29 11:48:38',700,NULL,0);
/*!40000 ALTER TABLE `blc_customer_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment`
--

DROP TABLE IF EXISTS `blc_customer_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_payment` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_TOKEN` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`),
  UNIQUE KEY `CSTMR_PAY_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PAYMENT_TOKEN`),
  KEY `CUSTOMERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK8B3DF0CBC13085DD` (`ADDRESS_ID`),
  KEY `FK8B3DF0CB7470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CB7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CBC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment`
--

LOCK TABLES `blc_customer_payment` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment_fields`
--

DROP TABLE IF EXISTS `blc_customer_payment_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_payment_fields` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`,`FIELD_NAME`),
  KEY `FK5CCB14ADCA0B98E0` (`CUSTOMER_PAYMENT_ID`),
  CONSTRAINT `FK5CCB14ADCA0B98E0` FOREIGN KEY (`CUSTOMER_PAYMENT_ID`) REFERENCES `blc_customer_payment` (`CUSTOMER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment_fields`
--

LOCK TABLES `blc_customer_payment_fields` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_phone`
--

DROP TABLE IF EXISTS `blc_customer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_phone` (
  `CUSTOMER_PHONE_ID` bigint(20) NOT NULL,
  `PHONE_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `PHONE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PHONE_ID`),
  UNIQUE KEY `CSTMR_PHONE_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PHONE_NAME`),
  KEY `CUSTPHONE_PHONE_INDEX` (`PHONE_ID`),
  KEY `FK3D28ED737470F437` (`CUSTOMER_ID`),
  KEY `FK3D28ED73D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FK3D28ED737470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK3D28ED73D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_phone`
--

LOCK TABLES `blc_customer_phone` WRITE;
/*!40000 ALTER TABLE `blc_customer_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_role`
--

DROP TABLE IF EXISTS `blc_customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_role` (
  `CUSTOMER_ROLE_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ROLE_ID`),
  KEY `CUSTROLE_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTROLE_ROLE_INDEX` (`ROLE_ID`),
  KEY `FK548EB7B17470F437` (`CUSTOMER_ID`),
  KEY `FK548EB7B1B8587B7` (`ROLE_ID`),
  CONSTRAINT `FK548EB7B17470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK548EB7B1B8587B7` FOREIGN KEY (`ROLE_ID`) REFERENCES `blc_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_role`
--

LOCK TABLES `blc_customer_role` WRITE;
/*!40000 ALTER TABLE `blc_customer_role` DISABLE KEYS */;
INSERT INTO `blc_customer_role` VALUES (1,700,1);
/*!40000 ALTER TABLE `blc_customer_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_data_drvn_enum` (
  `ENUM_ID` bigint(20) NOT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `MODIFIABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_KEY_INDEX` (`ENUM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum`
--

LOCK TABLES `blc_data_drvn_enum` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum_val`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_data_drvn_enum_val` (
  `ENUM_VAL_ID` bigint(20) NOT NULL,
  `DISPLAY` varchar(255) DEFAULT NULL,
  `HIDDEN` tinyint(1) DEFAULT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `ENUM_TYPE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ENUM_VAL_ID`),
  KEY `HIDDEN_INDEX` (`HIDDEN`),
  KEY `ENUM_VAL_KEY_INDEX` (`ENUM_KEY`),
  KEY `FKB2D5700DA60E0554` (`ENUM_TYPE`),
  CONSTRAINT `FKB2D5700DA60E0554` FOREIGN KEY (`ENUM_TYPE`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum_val`
--

LOCK TABLES `blc_data_drvn_enum_val` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_disc_item_fee_price`
--

DROP TABLE IF EXISTS `blc_disc_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_disc_item_fee_price` (
  `DISC_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DISC_ITEM_FEE_PRICE_ID`),
  KEY `FK2A641CC8B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK2A641CC8B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_disc_item_fee_price`
--

LOCK TABLES `blc_disc_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_discrete_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `BUNDLE_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  `SKU_BUNDLE_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `DISCRETE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `DISCRETE_SKU_INDEX` (`SKU_ID`),
  KEY `FKBC3A8A845CDFCA80` (`BUNDLE_ORDER_ITEM_ID`),
  KEY `FKBC3A8A845F11A0B7` (`PRODUCT_ID`),
  KEY `FKBC3A8A84B78C9977` (`SKU_ID`),
  KEY `FKBC3A8A841285903B` (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKBC3A8A849AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A841285903B` FOREIGN KEY (`SKU_BUNDLE_ITEM_ID`) REFERENCES `blc_sku_bundle_item` (`SKU_BUNDLE_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845CDFCA80` FOREIGN KEY (`BUNDLE_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKBC3A8A849AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A84B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_discrete_order_item`
--

LOCK TABLES `blc_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_discrete_order_item` DISABLE KEYS */;
INSERT INTO `blc_discrete_order_item` VALUES (31000.00000,31000.00000,3601,NULL,660,694,NULL),(20000.00000,20000.00000,3702,NULL,760,794,NULL),(250.00000,250.00000,3703,NULL,771,805,NULL),(20.00000,20.00000,3751,NULL,714,748,NULL),(30.00000,30.00000,3801,NULL,715,749,NULL),(20.00000,20.00000,3802,NULL,714,748,NULL),(20.00000,20.00000,3851,NULL,714,748,NULL),(20.00000,20.00000,3901,NULL,714,748,NULL),(20.00000,20.00000,3902,NULL,720,754,NULL),(20.00000,20.00000,3951,NULL,714,748,NULL),(20.00000,20.00000,4001,NULL,714,748,NULL),(30.00000,30.00000,4002,NULL,715,749,NULL),(300.00000,NULL,4003,NULL,712,998,NULL),(20.00000,20.00000,4051,NULL,714,748,NULL),(20.00000,20.00000,4052,NULL,720,754,NULL),(20.00000,20.00000,4101,NULL,714,748,NULL),(20.00000,20.00000,4102,NULL,720,754,NULL),(20.00000,20.00000,4151,NULL,714,748,NULL),(20.00000,20.00000,4152,NULL,720,754,NULL),(150.00000,150.00000,4153,NULL,710,744,NULL),(20.00000,20.00000,4201,NULL,714,748,NULL),(2500.00000,2500.00000,4202,NULL,722,756,NULL),(20.00000,20.00000,4251,NULL,720,754,NULL),(20.00000,20.00000,4252,NULL,714,748,NULL),(15000.00000,15000.00000,4253,NULL,722,756,NULL),(20.00000,20.00000,4306,NULL,714,748,NULL),(4500.00000,4500.00000,4307,NULL,781,815,NULL),(30.00000,30.00000,4308,NULL,715,749,NULL),(40.00000,40.00000,4309,NULL,716,750,NULL),(20.00000,20.00000,4351,NULL,714,748,NULL),(20.00000,20.00000,4401,NULL,714,748,NULL),(20.00000,20.00000,4451,NULL,714,748,NULL),(20.00000,20.00000,4501,NULL,714,748,NULL),(20.00000,20.00000,4551,NULL,714,748,NULL),(20.00000,20.00000,4601,NULL,714,748,NULL),(20.00000,20.00000,4651,NULL,714,748,NULL),(20.00000,20.00000,4701,NULL,714,748,NULL),(20.00000,20.00000,4751,NULL,720,754,NULL),(20.00000,20.00000,4801,NULL,720,754,NULL),(20.00000,20.00000,4802,NULL,714,748,NULL),(20.00000,20.00000,4851,NULL,714,748,NULL),(20.00000,20.00000,4901,NULL,714,748,NULL),(20.00000,20.00000,4951,NULL,714,748,NULL),(20.00000,20.00000,4952,NULL,720,754,NULL),(15000.00000,15000.00000,4953,NULL,722,756,NULL),(20.00000,20.00000,5001,NULL,714,748,NULL),(20.00000,20.00000,5002,NULL,720,754,NULL),(20.00000,20.00000,5051,NULL,720,754,NULL),(20.00000,20.00000,5101,NULL,720,754,NULL);
/*!40000 ALTER TABLE `blc_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_dyn_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_dyn_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_dyn_discrete_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK209DEE9EB76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK209DEE9EB76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_dyn_discrete_order_item`
--

LOCK TABLES `blc_dyn_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking`
--

DROP TABLE IF EXISTS `blc_email_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking` (
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TRACKING_ID`),
  KEY `EMAILTRACKING_INDEX` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking`
--

LOCK TABLES `blc_email_tracking` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking` DISABLE KEYS */;
INSERT INTO `blc_email_tracking` VALUES (1,'2016-12-28 17:31:49','agrawal.sumit17@gmail.com',NULL),(2,'2016-12-28 17:32:24','agrawal.sumit17@gmail.com',NULL),(51,'2016-12-28 19:39:20','agrawal.sumit17@gmail.com',NULL),(52,'2016-12-28 19:41:49','agrawal.sumit17@gmail.com',NULL),(101,'2016-12-29 11:48:38','agrawal.sumit17@gmail.com',NULL),(201,'2016-12-29 11:58:48','agrawal.sumit17@gmail.com',NULL),(202,'2016-12-29 12:00:28','agrawal.sumit17@gmail.com',NULL),(251,'2016-12-29 12:26:52','agrawal.sumit17@gmail.com',NULL),(301,'2017-01-03 19:31:39','agrawal.sumit17@gmail.com',NULL),(351,'2017-01-04 12:53:22','agrawal.sumit17@gmail.com',NULL),(401,'2017-01-04 13:24:52','agrawal.sumit17@gmail.com',NULL),(451,'2017-01-04 13:30:57','agrawal.sumit17@gmail.com',NULL),(501,'2017-01-04 19:48:18','agrawal.sumit17@gmail.com',NULL),(551,'2017-01-04 20:01:16','agrawal.sumit17@gmail.com',NULL),(601,'2017-01-05 10:29:59','agrawal.sumit17@gmail.com',NULL),(651,'2017-01-14 13:04:18','agrawal.sumit17@gmail.com',NULL),(701,'2017-01-15 13:41:49','agrawal.sumit17@gmail.com',NULL);
/*!40000 ALTER TABLE `blc_email_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_clicks`
--

DROP TABLE IF EXISTS `blc_email_tracking_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking_clicks` (
  `CLICK_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` varchar(255) DEFAULT NULL,
  `DATE_CLICKED` datetime NOT NULL,
  `DESTINATION_URI` varchar(255) DEFAULT NULL,
  `QUERY_STRING` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CLICK_ID`),
  KEY `TRACKINGCLICKS_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `TRACKINGCLICKS_TRACKING_INDEX` (`EMAIL_TRACKING_ID`),
  KEY `FKFDF9F52AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKFDF9F52AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_clicks`
--

LOCK TABLES `blc_email_tracking_clicks` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_opens`
--

DROP TABLE IF EXISTS `blc_email_tracking_opens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking_opens` (
  `OPEN_ID` bigint(20) NOT NULL,
  `DATE_OPENED` datetime DEFAULT NULL,
  `USER_AGENT` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OPEN_ID`),
  KEY `TRACKINGOPEN_TRACKING` (`EMAIL_TRACKING_ID`),
  KEY `FKA5C3722AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKA5C3722AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_opens`
--

LOCK TABLES `blc_email_tracking_opens` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_opens` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_opens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_adjustment`
--

DROP TABLE IF EXISTS `blc_fg_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_adjustment` (
  `FG_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FG_ADJUSTMENT_ID`),
  KEY `FGADJUSTMENT_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGADJUSTMENT_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK468C8F255028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FK468C8F25D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK468C8F255028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK468C8F25D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_adjustment`
--

LOCK TABLES `blc_fg_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_fg_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fee_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fee_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_fee_tax_xref` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_25426DC0FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK25426DC071448C19` (`TAX_DETAIL_ID`),
  KEY `FK25426DC0598F6D02` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC0598F6D02` FOREIGN KEY (`FULFILLMENT_GROUP_FEE_ID`) REFERENCES `blc_fulfillment_group_fee` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC071448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fee_tax_xref`
--

LOCK TABLES `blc_fg_fee_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fg_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fg_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_fg_tax_xref` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_61BEA455FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK61BEA45571448C19` (`TAX_DETAIL_ID`),
  KEY `FK61BEA4555028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA4555028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA45571448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fg_tax_xref`
--

LOCK TABLES `blc_fg_fg_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_item_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_item_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_item_tax_xref` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_DD3E8443FA888C35` (`TAX_DETAIL_ID`),
  KEY `FKDD3E844371448C19` (`TAX_DETAIL_ID`),
  KEY `FKDD3E8443E3BBB4D2` (`FULFILLMENT_GROUP_ITEM_ID`),
  CONSTRAINT `FKDD3E844371448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`),
  CONSTRAINT `FKDD3E8443E3BBB4D2` FOREIGN KEY (`FULFILLMENT_GROUP_ITEM_ID`) REFERENCES `blc_fulfillment_group_item` (`FULFILLMENT_GROUP_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_item_tax_xref`
--

LOCK TABLES `blc_fg_item_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_field`
--

DROP TABLE IF EXISTS `blc_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_field` (
  `FIELD_ID` bigint(20) NOT NULL,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `TRANSLATABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FIELD_ID`),
  KEY `ENTITY_TYPE_INDEX` (`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_field`
--

LOCK TABLES `blc_field` WRITE;
/*!40000 ALTER TABLE `blc_field` DISABLE KEYS */;
INSERT INTO `blc_field` VALUES (1,'mfg',NULL,NULL,NULL,NULL,'PRODUCT','Manufacturer',NULL,'manufacturer',NULL),(2,'heatRange',NULL,NULL,NULL,NULL,'PRODUCT','Heat Range',NULL,'productAttributes(heatRange).value',NULL),(3,'price',NULL,NULL,NULL,NULL,'PRODUCT','Retail Price',NULL,'retailPrice',NULL),(4,'name',NULL,NULL,NULL,NULL,'PRODUCT','Product Name',NULL,'defaultSku.name',1),(5,'model',NULL,NULL,NULL,NULL,'PRODUCT','Model',NULL,'model',NULL),(6,'desc',NULL,NULL,NULL,NULL,'PRODUCT','Description',NULL,'defaultSku.description',1),(7,'ldesc',NULL,NULL,NULL,NULL,'PRODUCT','Long Description',NULL,'defaultSku.longDescription',1),(8,'color',NULL,NULL,NULL,NULL,'PRODUCT','Color',NULL,'productOptionValuesMap(COLOR)',NULL),(9,'margin',NULL,NULL,NULL,NULL,'PRODUCT','Margin',NULL,'margin',NULL);
/*!40000 ALTER TABLE `blc_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_def`
--

DROP TABLE IF EXISTS `blc_fld_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_def` (
  `FLD_DEF_ID` bigint(20) NOT NULL,
  `ALLOW_MULTIPLES` tinyint(1) DEFAULT NULL,
  `COLUMN_WIDTH` varchar(255) DEFAULT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FLD_TYPE` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `HELP_TEXT` varchar(255) DEFAULT NULL,
  `HIDDEN_FLAG` tinyint(1) DEFAULT NULL,
  `HINT` varchar(255) DEFAULT NULL,
  `MAX_LENGTH` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRED_FLAG` tinyint(1) DEFAULT NULL,
  `SECURITY_LEVEL` varchar(255) DEFAULT NULL,
  `TEXT_AREA_FLAG` tinyint(1) DEFAULT NULL,
  `TOOLTIP` varchar(255) DEFAULT NULL,
  `VLDTN_ERROR_MSSG_KEY` varchar(255) DEFAULT NULL,
  `VLDTN_REGEX` varchar(255) DEFAULT NULL,
  `ENUM_ID` bigint(20) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_DEF_ID`),
  KEY `FK3FCB575E38D08AB5` (`ENUM_ID`),
  KEY `FK3FCB575E6A79BDB5` (`FLD_GROUP_ID`),
  CONSTRAINT `FK3FCB575E38D08AB5` FOREIGN KEY (`ENUM_ID`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`),
  CONSTRAINT `FK3FCB575E6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_def`
--

LOCK TABLES `blc_fld_def` WRITE;
/*!40000 ALTER TABLE `blc_fld_def` DISABLE KEYS */;
INSERT INTO `blc_fld_def` VALUES (-2,0,'*',1,'BOOLEAN','Plain Text',NULL,0,NULL,NULL,'plainText',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(-1,0,'*',0,'HTML','File Contents',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(2,0,'*',1,'HTML','Body',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,1),(3,0,'*',0,'STRING','Title',NULL,0,NULL,NULL,'title',NULL,NULL,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_fld_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum`
--

DROP TABLE IF EXISTS `blc_fld_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_enum` (
  `FLD_ENUM_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum`
--

LOCK TABLES `blc_fld_enum` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum_item`
--

DROP TABLE IF EXISTS `blc_fld_enum_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_enum_item` (
  `FLD_ENUM_ITEM_ID` bigint(20) NOT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FLD_ENUM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ITEM_ID`),
  KEY `FK83A6A84AFD2EA299` (`FLD_ENUM_ID`),
  CONSTRAINT `FK83A6A84AFD2EA299` FOREIGN KEY (`FLD_ENUM_ID`) REFERENCES `blc_fld_enum` (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum_item`
--

LOCK TABLES `blc_fld_enum_item` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_group`
--

DROP TABLE IF EXISTS `blc_fld_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_group` (
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `INIT_COLLAPSED_FLAG` tinyint(1) DEFAULT NULL,
  `IS_MASTER_FIELD_GROUP` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_group`
--

LOCK TABLES `blc_fld_group` WRITE;
/*!40000 ALTER TABLE `blc_fld_group` DISABLE KEYS */;
INSERT INTO `blc_fld_group` VALUES (-3,0,NULL,'None'),(1,0,NULL,'Content');
/*!40000 ALTER TABLE `blc_fld_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group`
--

DROP TABLE IF EXISTS `blc_fulfillment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `DELIVERY_INSTRUCTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `SHIPPING_PRICE_TAXABLE` tinyint(1) DEFAULT NULL,
  `MERCHANDISE_TOTAL` decimal(19,5) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `IS_PRIMARY` tinyint(1) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_SEQUNCE` int(11) DEFAULT NULL,
  `SERVICE` varchar(255) DEFAULT NULL,
  `SHIPPING_OVERRIDE` tinyint(1) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_FG_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `PHONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ID`),
  KEY `FG_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FG_METHOD_INDEX` (`METHOD`),
  KEY `FG_ORDER_INDEX` (`ORDER_ID`),
  KEY `FG_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FG_PHONE_INDEX` (`PHONE_ID`),
  KEY `FG_PRIMARY_INDEX` (`IS_PRIMARY`),
  KEY `FG_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `FG_SERVICE_INDEX` (`SERVICE`),
  KEY `FG_STATUS_INDEX` (`STATUS`),
  KEY `FKC5B9EF18C13085DD` (`ADDRESS_ID`),
  KEY `FKC5B9EF1881F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC5B9EF1889FE8A02` (`ORDER_ID`),
  KEY `FKC5B9EF1877F565E1` (`PERSONAL_MESSAGE_ID`),
  KEY `FKC5B9EF18D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FKC5B9EF1877F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FKC5B9EF1881F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC5B9EF1889FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKC5B9EF18C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`),
  CONSTRAINT `FKC5B9EF18D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group`
--

LOCK TABLES `blc_fulfillment_group` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group` VALUES (52,NULL,0.00000,0,112.92000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,112.92000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,51,NULL,NULL),(101,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,101,NULL,NULL),(153,NULL,0.00000,0,47.94000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,47.94000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,151,NULL,NULL),(201,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,201,NULL,NULL),(251,NULL,20.00000,0,24.97000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,44.97000,0.00000,0.00000,0.00000,0.00000,NULL,54,NULL,251,2,NULL),(301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,301,NULL,NULL),(351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,351,NULL,NULL),(401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,401,NULL,NULL),(451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,451,NULL,NULL),(501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,501,NULL,NULL),(551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,551,NULL,NULL),(601,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,52,1,601,1,NULL),(651,NULL,20.00000,0,6.99000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,26.99000,0.00000,0.00000,0.00000,0.00000,NULL,102,NULL,651,51,NULL),(701,NULL,20.00000,0,14.99000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,34.99000,0.00000,0.00000,0.00000,0.00000,NULL,152,NULL,701,101,NULL),(751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,751,NULL,NULL),(802,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,801,NULL,NULL),(851,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,851,NULL,NULL),(901,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,901,NULL,NULL),(951,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,951,NULL,NULL),(1002,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1001,NULL,NULL),(1051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1051,NULL,NULL),(1101,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1101,NULL,NULL),(1151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1151,NULL,NULL),(1201,NULL,0.00000,0,6.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,6.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1201,NULL,NULL),(1251,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1251,NULL,NULL),(1301,NULL,0.00000,0,14.97000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14.97000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1301,NULL,NULL),(1351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1351,NULL,NULL),(1401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1401,NULL,NULL),(1451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1451,NULL,NULL),(1501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1501,NULL,NULL),(1551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1551,NULL,NULL),(1601,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1601,NULL,NULL),(1651,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1651,NULL,NULL),(1701,NULL,0.00000,0,24.97000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,24.97000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1701,NULL,NULL),(1751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1751,NULL,NULL),(1801,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1801,NULL,NULL),(1851,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1851,NULL,NULL),(1901,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1901,NULL,NULL),(1951,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1951,NULL,NULL),(2001,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2001,NULL,NULL),(2051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2051,NULL,NULL),(2101,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2101,NULL,NULL),(2151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2151,NULL,NULL),(2201,NULL,0.00000,0,14.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2201,NULL,NULL),(2252,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2251,NULL,NULL),(2301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2301,NULL,NULL),(2351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2351,NULL,NULL),(2401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2401,NULL,NULL),(2451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2451,NULL,NULL),(2501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2501,NULL,NULL),(2551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2551,NULL,NULL),(2601,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2601,NULL,NULL),(2651,NULL,5.00000,0,11.98000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,16.98000,0.00000,0.00000,0.00000,0.00000,NULL,202,1,2651,151,NULL),(2701,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2701,NULL,NULL),(2751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2751,NULL,NULL),(2801,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,252,1,2801,201,NULL),(2851,NULL,5.00000,0,29.98000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,34.98000,0.00000,0.00000,0.00000,0.00000,NULL,302,1,2851,251,NULL),(2901,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,352,1,2901,301,NULL),(2951,NULL,0.00000,0,35.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,35.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2951,NULL,NULL),(3001,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3001,NULL,NULL),(3051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3051,NULL,NULL),(3101,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,402,1,3101,351,NULL),(3151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3151,NULL,NULL),(3201,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,502,1,3201,401,NULL),(3251,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3251,NULL,NULL),(3252,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3252,NULL,NULL),(3301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,602,1,3301,451,NULL),(3351,NULL,0.00000,0,29.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,29.98000,0.00000,0.00000,0.00000,0.00000,NULL,652,1,3351,501,NULL),(3401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3401,NULL,NULL),(3402,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3402,NULL,NULL),(3451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3451,NULL,NULL),(3501,NULL,0.00000,0,200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,200.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3501,NULL,NULL),(3551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3551,NULL,NULL),(3601,NULL,0.00000,0,31000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,31000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3601,NULL,NULL),(3702,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3702,NULL,NULL),(3703,NULL,0.00000,0,250.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,250.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3701,NULL,NULL),(3751,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3751,NULL,NULL),(3801,NULL,0.00000,0,30.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,30.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3801,NULL,NULL),(3802,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,703,1,3802,551,NULL),(3851,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3851,NULL,NULL),(3901,NULL,0.00000,0,40.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,40.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3901,NULL,NULL),(3951,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3951,NULL,NULL),(4001,NULL,0.00000,0,350.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,350.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4001,NULL,NULL),(4051,NULL,0.00000,0,80.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,80.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4051,NULL,NULL),(4101,NULL,0.00000,0,40.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,40.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4101,NULL,NULL),(4151,NULL,0.00000,0,340.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,340.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4151,NULL,NULL),(4201,NULL,0.00000,0,2520.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,2520.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4201,NULL,NULL),(4251,NULL,0.00000,0,15040.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15040.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4251,NULL,NULL),(4302,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4301,NULL,NULL),(4303,NULL,0.00000,0,4570.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4570.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4302,NULL,NULL),(4351,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4351,NULL,NULL),(4401,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4401,NULL,NULL),(4451,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4451,NULL,NULL),(4501,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4501,NULL,NULL),(4551,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,904,1,4551,603,NULL),(4601,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,952,1,4601,651,NULL),(4651,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4651,NULL,NULL),(4701,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4701,NULL,NULL),(4751,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4751,NULL,NULL),(4801,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1052,1,4801,701,NULL),(4802,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4802,NULL,NULL),(4851,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4851,NULL,NULL),(4901,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4901,NULL,NULL),(4951,NULL,0.00000,0,15040.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15040.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4951,NULL,NULL),(5001,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5001,NULL,NULL),(5002,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5002,NULL,NULL),(5051,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5051,NULL,NULL),(5101,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5101,NULL,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_fee`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group_fee` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `FEE_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_FEE_ID`),
  KEY `FK6AA8E1BF5028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK6AA8E1BF5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_fee`
--

LOCK TABLES `blc_fulfillment_group_fee` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_item`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group_item` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `PRORATED_ORDER_ADJ` decimal(19,2) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL_ITEM_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAXABLE_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ITEM_ID`),
  KEY `FGITEM_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGITEM_STATUS_INDEX` (`STATUS`),
  KEY `FKEA74EBDA5028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKEA74EBDA9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKEA74EBDA5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKEA74EBDA9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_item`
--

LOCK TABLES `blc_fulfillment_group_item` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_item` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group_item` VALUES (52,0.00,5,NULL,64.95000,64.95000,0.00000,52,52),(53,0.00,3,NULL,47.97000,47.97000,0.00000,52,53),(101,0.00,1,NULL,4.99000,4.99000,0.00000,101,101),(155,0.00,5,NULL,34.95000,34.95000,0.00000,153,155),(156,0.00,1,NULL,12.99000,12.99000,0.00000,153,156),(201,0.00,1,NULL,4.99000,4.99000,0.00000,201,201),(202,0.00,1,NULL,6.99000,6.99000,0.00000,201,202),(251,0.00,1,NULL,4.99000,4.99000,0.00000,251,251),(252,0.00,1,NULL,6.99000,6.99000,0.00000,251,252),(253,0.00,1,NULL,12.99000,12.99000,0.00000,251,253),(301,0.00,1,NULL,4.99000,4.99000,0.00000,301,301),(351,0.00,1,NULL,4.99000,4.99000,0.00000,351,351),(401,0.00,1,NULL,4.99000,4.99000,0.00000,401,401),(451,0.00,1,NULL,4.99000,4.99000,0.00000,451,451),(501,0.00,1,NULL,4.99000,4.99000,0.00000,501,501),(551,0.00,1,NULL,4.99000,4.99000,0.00000,551,551),(601,0.00,1,NULL,4.99000,4.99000,0.00000,601,601),(651,0.00,1,NULL,6.99000,6.99000,0.00000,651,651),(701,0.00,1,NULL,14.99000,14.99000,0.00000,701,701),(751,0.00,1,NULL,4.99000,4.99000,0.00000,751,751),(802,0.00,1,NULL,4.99000,4.99000,0.00000,802,802),(851,0.00,1,NULL,4.99000,4.99000,0.00000,851,851),(852,0.00,1,NULL,6.99000,6.99000,0.00000,851,852),(901,0.00,1,NULL,4.99000,4.99000,0.00000,901,901),(951,0.00,1,NULL,4.99000,4.99000,0.00000,951,951),(1002,0.00,1,NULL,4.99000,4.99000,0.00000,1002,1002),(1051,0.00,1,NULL,4.99000,4.99000,0.00000,1051,1051),(1101,0.00,1,NULL,4.99000,4.99000,0.00000,1101,1101),(1151,0.00,1,NULL,4.99000,4.99000,0.00000,1151,1151),(1201,0.00,1,NULL,6.99000,6.99000,0.00000,1201,1201),(1251,0.00,1,NULL,4.99000,4.99000,0.00000,1251,1251),(1252,0.00,1,NULL,6.99000,6.99000,0.00000,1251,1252),(1301,0.00,3,NULL,14.97000,14.97000,0.00000,1301,1301),(1351,0.00,1,NULL,4.99000,4.99000,0.00000,1351,1351),(1401,0.00,1,NULL,4.99000,4.99000,0.00000,1401,1401),(1451,0.00,1,NULL,4.99000,4.99000,0.00000,1451,1451),(1501,0.00,1,NULL,4.99000,4.99000,0.00000,1501,1501),(1551,0.00,1,NULL,4.99000,4.99000,0.00000,1551,1551),(1601,0.00,1,NULL,4.99000,4.99000,0.00000,1601,1601),(1651,0.00,1,NULL,4.99000,4.99000,0.00000,1651,1651),(1701,0.00,1,NULL,4.99000,4.99000,0.00000,1701,1701),(1702,0.00,1,NULL,6.99000,6.99000,0.00000,1701,1702),(1703,0.00,1,NULL,12.99000,12.99000,0.00000,1701,1703),(1751,0.00,1,NULL,4.99000,4.99000,0.00000,1751,1751),(1801,0.00,1,NULL,4.99000,4.99000,0.00000,1801,1801),(1851,0.00,1,NULL,4.99000,4.99000,0.00000,1851,1851),(1901,0.00,1,NULL,4.99000,4.99000,0.00000,1901,1901),(1951,0.00,1,NULL,4.99000,4.99000,0.00000,1951,1951),(2001,0.00,1,NULL,4.99000,4.99000,0.00000,2001,2001),(2051,0.00,1,NULL,4.99000,4.99000,0.00000,2051,2051),(2101,0.00,1,NULL,4.99000,4.99000,0.00000,2101,2101),(2151,0.00,1,NULL,4.99000,4.99000,0.00000,2151,2151),(2201,0.00,1,NULL,14.99000,14.99000,0.00000,2201,2201),(2252,0.00,1,NULL,4.99000,4.99000,0.00000,2252,2252),(2301,0.00,1,NULL,4.99000,4.99000,0.00000,2301,2301),(2351,0.00,1,NULL,4.99000,4.99000,0.00000,2351,2351),(2401,0.00,1,NULL,4.99000,4.99000,0.00000,2401,2401),(2451,0.00,1,NULL,4.99000,4.99000,0.00000,2451,2451),(2501,0.00,1,NULL,4.99000,4.99000,0.00000,2501,2501),(2551,0.00,1,NULL,4.99000,4.99000,0.00000,2551,2551),(2601,0.00,1,NULL,4.99000,4.99000,0.00000,2601,2601),(2651,0.00,1,NULL,4.99000,4.99000,0.00000,2651,2651),(2652,0.00,1,NULL,6.99000,6.99000,0.00000,2651,2652),(2701,0.00,1,NULL,4.99000,4.99000,0.00000,2701,2701),(2751,0.00,1,NULL,4.99000,4.99000,0.00000,2751,2751),(2801,0.00,1,NULL,4.99000,4.99000,0.00000,2801,2801),(2851,0.00,2,NULL,29.98000,29.98000,0.00000,2851,2851),(2901,0.00,1,NULL,4.99000,4.99000,0.00000,2901,2901),(2951,0.00,2,NULL,20.00000,0.00000,0.00000,2951,2951),(2952,0.00,1,NULL,15.00000,0.00000,0.00000,2951,2952),(3001,0.00,1,NULL,4.99000,4.99000,0.00000,3001,3001),(3051,0.00,1,NULL,4.99000,4.99000,0.00000,3051,3051),(3101,0.00,1,NULL,4.99000,4.99000,0.00000,3101,3101),(3151,0.00,1,NULL,4.99000,4.99000,0.00000,3151,3151),(3201,0.00,1,NULL,4.99000,4.99000,0.00000,3201,3201),(3251,0.00,1,NULL,4.99000,4.99000,0.00000,3251,3251),(3252,0.00,1,NULL,4.99000,4.99000,0.00000,3252,3252),(3301,0.00,1,NULL,4.99000,4.99000,0.00000,3301,3301),(3351,0.00,2,NULL,29.98000,29.98000,0.00000,3351,3351),(3401,0.00,1,NULL,4.99000,4.99000,0.00000,3401,3401),(3402,0.00,1,NULL,4.99000,4.99000,0.00000,3402,3402),(3451,0.00,1,NULL,4.99000,4.99000,0.00000,3451,3451),(3501,0.00,1,NULL,200.00000,200.00000,0.00000,3501,3501),(3551,0.00,1,NULL,4.99000,4.99000,0.00000,3551,3551),(3601,0.00,1,NULL,31000.00000,31000.00000,0.00000,3601,3601),(3702,0.00,1,NULL,20000.00000,20000.00000,0.00000,3702,3702),(3703,0.00,1,NULL,250.00000,250.00000,0.00000,3703,3703),(3751,0.00,1000,NULL,20000.00000,20000.00000,0.00000,3751,3751),(3801,0.00,1,NULL,30.00000,30.00000,0.00000,3801,3801),(3802,0.00,1,NULL,20.00000,20.00000,0.00000,3802,3802),(3851,0.00,1,NULL,20.00000,20.00000,0.00000,3851,3851),(3901,0.00,1,NULL,20.00000,20.00000,0.00000,3901,3901),(3902,0.00,1,NULL,20.00000,20.00000,0.00000,3901,3902),(3951,0.00,1,NULL,20.00000,20.00000,0.00000,3951,3951),(4001,0.00,1,NULL,20.00000,20.00000,0.00000,4001,4001),(4002,0.00,1,NULL,30.00000,30.00000,0.00000,4001,4002),(4003,0.00,1,NULL,300.00000,300.00000,0.00000,4001,4003),(4051,0.00,3,NULL,60.00000,60.00000,0.00000,4051,4051),(4052,0.00,1,NULL,20.00000,20.00000,0.00000,4051,4052),(4101,0.00,1,NULL,20.00000,20.00000,0.00000,4101,4101),(4102,0.00,1,NULL,20.00000,20.00000,0.00000,4101,4102),(4151,0.00,1,NULL,20.00000,20.00000,0.00000,4151,4151),(4152,0.00,1,NULL,20.00000,20.00000,0.00000,4151,4152),(4153,0.00,2,NULL,300.00000,300.00000,0.00000,4151,4153),(4201,0.00,1,NULL,20.00000,20.00000,0.00000,4201,4201),(4202,0.00,1,NULL,2500.00000,2500.00000,0.00000,4201,4202),(4251,0.00,1,NULL,20.00000,20.00000,0.00000,4251,4251),(4252,0.00,1,NULL,20.00000,20.00000,0.00000,4251,4252),(4253,0.00,1,NULL,15000.00000,15000.00000,0.00000,4251,4253),(4306,0.00,1,NULL,20.00000,20.00000,0.00000,4302,4306),(4307,0.00,1,NULL,4500.00000,4500.00000,0.00000,4303,4307),(4308,0.00,1,NULL,30.00000,30.00000,0.00000,4303,4308),(4309,0.00,1,NULL,40.00000,40.00000,0.00000,4303,4309),(4351,0.00,1,NULL,20.00000,20.00000,0.00000,4351,4351),(4401,0.00,1,NULL,20.00000,20.00000,0.00000,4401,4401),(4451,0.00,1,NULL,20.00000,20.00000,0.00000,4451,4451),(4501,0.00,1,NULL,20.00000,20.00000,0.00000,4501,4501),(4551,0.00,1,NULL,20.00000,20.00000,0.00000,4551,4551),(4601,0.00,1,NULL,20.00000,20.00000,0.00000,4601,4601),(4651,0.00,1,NULL,20.00000,20.00000,0.00000,4651,4651),(4701,0.00,1,NULL,20.00000,20.00000,0.00000,4701,4701),(4751,0.00,1,NULL,20.00000,20.00000,0.00000,4751,4751),(4801,0.00,1,NULL,20.00000,20.00000,0.00000,4801,4801),(4802,0.00,1,NULL,20.00000,20.00000,0.00000,4802,4802),(4851,0.00,1,NULL,20.00000,20.00000,0.00000,4851,4851),(4901,0.00,1,NULL,20.00000,20.00000,0.00000,4901,4901),(4951,0.00,1,NULL,20.00000,20.00000,0.00000,4951,4951),(4952,0.00,1,NULL,20.00000,20.00000,0.00000,4951,4952),(4953,0.00,1,NULL,15000.00000,15000.00000,0.00000,4951,4953),(5001,0.00,1,NULL,20.00000,20.00000,0.00000,5001,5001),(5002,0.00,1,NULL,20.00000,20.00000,0.00000,5002,5002),(5051,0.00,1,NULL,20.00000,20.00000,0.00000,5051,5051),(5101,0.00,1,NULL,20.00000,20.00000,0.00000,5101,5101);
/*!40000 ALTER TABLE `blc_fulfillment_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_prc`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_prc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_opt_banded_prc` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD71E981F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD71E981F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_prc`
--

LOCK TABLES `blc_fulfillment_opt_banded_prc` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_wgt`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_wgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_opt_banded_wgt` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD8AEC81F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD8AEC81F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_wgt`
--

LOCK TABLES `blc_fulfillment_opt_banded_wgt` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option`
--

DROP TABLE IF EXISTS `blc_fulfillment_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_option` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `FULFILLMENT_TYPE` varchar(255) NOT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `USE_FLAT_RATES` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option`
--

LOCK TABLES `blc_fulfillment_option` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option` VALUES (1,'PHYSICAL_SHIP','Normal','Standard',NULL,NULL,0);
/*!40000 ALTER TABLE `blc_fulfillment_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option_fixed`
--

DROP TABLE IF EXISTS `blc_fulfillment_option_fixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_option_fixed` (
  `PRICE` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FK408360313E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK4083603181F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK408360313E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK4083603181F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option_fixed`
--

LOCK TABLES `blc_fulfillment_option_fixed` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option_fixed` VALUES (0.00000,1,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_price_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_price_band` (
  `FULFILLMENT_PRICE_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `RETAIL_PRICE_MINIMUM_AMOUNT` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_PRICE_BAND_ID`),
  KEY `FK46C9EA726CDF59CA` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK46C9EA726CDF59CA` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_prc` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_price_band`
--

LOCK TABLES `blc_fulfillment_price_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_weight_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_weight_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_weight_band` (
  `FULFILLMENT_WEIGHT_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `MINIMUM_WEIGHT` decimal(19,5) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_WEIGHT_BAND_ID`),
  KEY `FK6A048D95A0B429C3` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK6A048D95A0B429C3` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_wgt` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_weight_band`
--

LOCK TABLES `blc_fulfillment_weight_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_gift_card_payment`
--

DROP TABLE IF EXISTS `blc_gift_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_gift_card_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `PIN` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `GIFTCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_gift_card_payment`
--

LOCK TABLES `blc_gift_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_gift_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_gift_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_giftwrap_order_item`
--

DROP TABLE IF EXISTS `blc_giftwrap_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_giftwrap_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FKE1BE1563B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKE1BE1563B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_giftwrap_order_item`
--

LOCK TABLES `blc_giftwrap_order_item` WRITE;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_id_generation`
--

DROP TABLE IF EXISTS `blc_id_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_id_generation` (
  `ID_TYPE` varchar(255) NOT NULL,
  `BATCH_SIZE` bigint(20) NOT NULL,
  `BATCH_START` bigint(20) NOT NULL,
  `ID_MIN` bigint(20) DEFAULT NULL,
  `ID_MAX` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_id_generation`
--

LOCK TABLES `blc_id_generation` WRITE;
/*!40000 ALTER TABLE `blc_id_generation` DISABLE KEYS */;
INSERT INTO `blc_id_generation` VALUES ('org.broadleafcommerce.profile.core.domain.Customer',100,15500,NULL,NULL,155);
/*!40000 ALTER TABLE `blc_id_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_img_static_asset`
--

DROP TABLE IF EXISTS `blc_img_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_img_static_asset` (
  `HEIGHT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `FKCC4B772167F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKCC4B772167F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_img_static_asset`
--

LOCK TABLES `blc_img_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_img_static_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_img_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field`
--

DROP TABLE IF EXISTS `blc_index_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_index_field` (
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_ID`),
  KEY `FK9A53C1073C3907C4` (`FIELD_ID`),
  CONSTRAINT `FK9A53C1073C3907C4` FOREIGN KEY (`FIELD_ID`) REFERENCES `blc_field` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field`
--

LOCK TABLES `blc_index_field` WRITE;
/*!40000 ALTER TABLE `blc_index_field` DISABLE KEYS */;
INSERT INTO `blc_index_field` VALUES (1,NULL,1,1),(2,NULL,0,2),(3,NULL,0,3),(4,NULL,1,4),(5,NULL,1,5),(6,NULL,1,6),(7,NULL,1,7),(8,NULL,0,8),(9,NULL,0,9);
/*!40000 ALTER TABLE `blc_index_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field_type`
--

DROP TABLE IF EXISTS `blc_index_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_index_field_type` (
  `INDEX_FIELD_TYPE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `FIELD_TYPE` varchar(255) DEFAULT NULL,
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_TYPE_ID`),
  KEY `FK4A310B72CBDA280B` (`INDEX_FIELD_ID`),
  CONSTRAINT `FK4A310B72CBDA280B` FOREIGN KEY (`INDEX_FIELD_ID`) REFERENCES `blc_index_field` (`INDEX_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field_type`
--

LOCK TABLES `blc_index_field_type` WRITE;
/*!40000 ALTER TABLE `blc_index_field_type` DISABLE KEYS */;
INSERT INTO `blc_index_field_type` VALUES (1,NULL,'t',1),(2,NULL,'s',1),(3,NULL,'i',2),(4,NULL,'p',3),(5,NULL,'t',4),(6,NULL,'t',5),(7,NULL,'t',6),(8,NULL,'t',7),(9,NULL,'ss',8),(10,NULL,'p',9);
/*!40000 ALTER TABLE `blc_index_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_iso_country`
--

DROP TABLE IF EXISTS `blc_iso_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_iso_country` (
  `ALPHA_2` varchar(255) NOT NULL,
  `ALPHA_3` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NUMERIC_CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALPHA_2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_iso_country`
--

LOCK TABLES `blc_iso_country` WRITE;
/*!40000 ALTER TABLE `blc_iso_country` DISABLE KEYS */;
INSERT INTO `blc_iso_country` VALUES ('AA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('AB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AC','ASC',NULL,NULL,NULL,NULL,'Ascension Island',-1,'EXCEPTIONALLY_RESERVED'),('AD','AND',NULL,NULL,NULL,NULL,'Andorra',20,'OFFICIALLY_ASSIGNED'),('AE','ARE',NULL,NULL,NULL,NULL,'United Arab Emirates',784,'OFFICIALLY_ASSIGNED'),('AF','AFG',NULL,NULL,NULL,NULL,'Afghanistan',4,'OFFICIALLY_ASSIGNED'),('AG','ATG',NULL,NULL,NULL,NULL,'Antigua and Barbuda',28,'OFFICIALLY_ASSIGNED'),('AH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AI','AIA',NULL,NULL,NULL,NULL,'Anguilla',660,'OFFICIALLY_ASSIGNED'),('AJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AL','ALB',NULL,NULL,NULL,NULL,'Albania',8,'OFFICIALLY_ASSIGNED'),('AM','ARM',NULL,NULL,NULL,NULL,'Armenia',51,'OFFICIALLY_ASSIGNED'),('AN','ANHH',NULL,NULL,NULL,NULL,'Netherlands Antilles',530,'TRANSITIONALLY_RESERVED'),('AO','AGO',NULL,NULL,NULL,NULL,'Angola',24,'OFFICIALLY_ASSIGNED'),('AP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('AQ','ATA',NULL,NULL,NULL,NULL,'Antarctica',10,'OFFICIALLY_ASSIGNED'),('AR','ARG',NULL,NULL,NULL,NULL,'Argentina',32,'OFFICIALLY_ASSIGNED'),('AS','ASM',NULL,NULL,NULL,NULL,'American Samoa',16,'OFFICIALLY_ASSIGNED'),('AT','AUT',NULL,NULL,NULL,NULL,'Austria',40,'OFFICIALLY_ASSIGNED'),('AU','AUS',NULL,NULL,NULL,NULL,'Australia',36,'OFFICIALLY_ASSIGNED'),('AV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AW','ABW',NULL,NULL,NULL,NULL,'Aruba',533,'OFFICIALLY_ASSIGNED'),('AX','ALA',NULL,NULL,NULL,NULL,'â„«land Islands',248,'OFFICIALLY_ASSIGNED'),('AY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AZ','AZE',NULL,NULL,NULL,NULL,'Azerbaijan',31,'OFFICIALLY_ASSIGNED'),('BA','BIH',NULL,NULL,NULL,NULL,'Bosnia and Herzegovina',70,'OFFICIALLY_ASSIGNED'),('BB','BRB',NULL,NULL,NULL,NULL,'Barbados',52,'OFFICIALLY_ASSIGNED'),('BC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BD','BGD',NULL,NULL,NULL,NULL,'Bangladesh',50,'OFFICIALLY_ASSIGNED'),('BE','BEL',NULL,NULL,NULL,NULL,'Belgium',56,'OFFICIALLY_ASSIGNED'),('BF','BFA',NULL,NULL,NULL,NULL,'Burkina Faso',854,'OFFICIALLY_ASSIGNED'),('BG','BGR',NULL,NULL,NULL,NULL,'Bulgaria',100,'OFFICIALLY_ASSIGNED'),('BH','BHR',NULL,NULL,NULL,NULL,'Bahrain',48,'OFFICIALLY_ASSIGNED'),('BI','BDI',NULL,NULL,NULL,NULL,'Burundi',108,'OFFICIALLY_ASSIGNED'),('BJ','BEN',NULL,NULL,NULL,NULL,'Benin',204,'OFFICIALLY_ASSIGNED'),('BK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BL','BLM',NULL,NULL,NULL,NULL,'Saint BarthÃ©lemy',652,'OFFICIALLY_ASSIGNED'),('BM','BMU',NULL,NULL,NULL,NULL,'Bermuda',60,'OFFICIALLY_ASSIGNED'),('BN','BRN',NULL,NULL,NULL,NULL,'Brunei Darussalam',96,'OFFICIALLY_ASSIGNED'),('BO','BOL',NULL,NULL,NULL,NULL,'Bolivia, Plurinational State of',68,'OFFICIALLY_ASSIGNED'),('BP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BQ','BES',NULL,NULL,NULL,NULL,'Bonaire, Sint Eustatius and Saba',535,'OFFICIALLY_ASSIGNED'),('BR','BRA',NULL,NULL,NULL,NULL,'Brazil',76,'OFFICIALLY_ASSIGNED'),('BS','BHS',NULL,NULL,NULL,NULL,'Bahamas',44,'OFFICIALLY_ASSIGNED'),('BT','BTN',NULL,NULL,NULL,NULL,'Bhutan',64,'OFFICIALLY_ASSIGNED'),('BU','BUMM',NULL,NULL,NULL,NULL,'Burma',104,'TRANSITIONALLY_RESERVED'),('BV','BVT',NULL,NULL,NULL,NULL,'Bouvet Island',74,'OFFICIALLY_ASSIGNED'),('BW','BWA',NULL,NULL,NULL,NULL,'Botswana',72,'OFFICIALLY_ASSIGNED'),('BX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('BY','BLR',NULL,NULL,NULL,NULL,'Belarus',112,'OFFICIALLY_ASSIGNED'),('BZ','BLZ',NULL,NULL,NULL,NULL,'Belize',84,'OFFICIALLY_ASSIGNED'),('CA','CAN',NULL,NULL,NULL,NULL,'Canada',124,'OFFICIALLY_ASSIGNED'),('CB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CC','CCK',NULL,NULL,NULL,NULL,'Cocos (Keeling) Islands',166,'OFFICIALLY_ASSIGNED'),('CD','COD',NULL,NULL,NULL,NULL,'Congo, the Democratic Republic of the',180,'OFFICIALLY_ASSIGNED'),('CE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CF','CAF',NULL,NULL,NULL,NULL,'Central African Republic',140,'OFFICIALLY_ASSIGNED'),('CG','COG',NULL,NULL,NULL,NULL,'Congo',178,'OFFICIALLY_ASSIGNED'),('CH','CHE',NULL,NULL,NULL,NULL,'Switzerland',756,'OFFICIALLY_ASSIGNED'),('CI','CIV',NULL,NULL,NULL,NULL,'CÃ´te d\'Ivoire',384,'OFFICIALLY_ASSIGNED'),('CJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CK','COK',NULL,NULL,NULL,NULL,'Cook Islands',184,'OFFICIALLY_ASSIGNED'),('CL','CHL',NULL,NULL,NULL,NULL,'Chile',152,'OFFICIALLY_ASSIGNED'),('CM','CMR',NULL,NULL,NULL,NULL,'Cameroon',120,'OFFICIALLY_ASSIGNED'),('CN','CHN',NULL,NULL,NULL,NULL,'China',156,'OFFICIALLY_ASSIGNED'),('CO','COL',NULL,NULL,NULL,NULL,'Colombia',170,'OFFICIALLY_ASSIGNED'),('CP','CPT',NULL,NULL,NULL,NULL,'Clipperton Island',-1,'EXCEPTIONALLY_RESERVED'),('CQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CR','CRI',NULL,NULL,NULL,NULL,'Costa Rica',188,'OFFICIALLY_ASSIGNED'),('CS','CSXX',NULL,NULL,NULL,NULL,'Serbia and Montenegro',891,'TRANSITIONALLY_RESERVED'),('CT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CU','CUB',NULL,NULL,NULL,NULL,'Cuba',192,'OFFICIALLY_ASSIGNED'),('CV','CPV',NULL,NULL,NULL,NULL,'Cape Verde',132,'OFFICIALLY_ASSIGNED'),('CW','CUW',NULL,NULL,NULL,NULL,'CuraÃ§ao',531,'OFFICIALLY_ASSIGNED'),('CX','CXR',NULL,NULL,NULL,NULL,'Christmas Island',162,'OFFICIALLY_ASSIGNED'),('CY','CYP',NULL,NULL,NULL,NULL,'Cyprus',196,'OFFICIALLY_ASSIGNED'),('CZ','CZE',NULL,NULL,NULL,NULL,'Czech Republic',203,'OFFICIALLY_ASSIGNED'),('DA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DE','DEU',NULL,NULL,NULL,NULL,'Germany',276,'OFFICIALLY_ASSIGNED'),('DF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DG','DGA',NULL,NULL,NULL,NULL,'Diego Garcia',-1,'EXCEPTIONALLY_RESERVED'),('DH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DJ','DJI',NULL,NULL,NULL,NULL,'Djibouti',262,'OFFICIALLY_ASSIGNED'),('DK','DNK',NULL,NULL,NULL,NULL,'Denmark',208,'OFFICIALLY_ASSIGNED'),('DL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DM','DMA',NULL,NULL,NULL,NULL,'Dominica',212,'OFFICIALLY_ASSIGNED'),('DN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DO','DOM',NULL,NULL,NULL,NULL,'Dominican Republic',214,'OFFICIALLY_ASSIGNED'),('DP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('DZ','DZA',NULL,NULL,NULL,NULL,'Algeria',12,'OFFICIALLY_ASSIGNED'),('EA','null',NULL,NULL,NULL,NULL,'Ceuta, Melilla',-1,'EXCEPTIONALLY_RESERVED'),('EB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EC','ECU',NULL,NULL,NULL,NULL,'Ecuador',218,'OFFICIALLY_ASSIGNED'),('ED',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EE','EST',NULL,NULL,NULL,NULL,'Estonia',233,'OFFICIALLY_ASSIGNED'),('EF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EG','EGY',NULL,NULL,NULL,NULL,'Egypt',818,'OFFICIALLY_ASSIGNED'),('EH','ESH',NULL,NULL,NULL,NULL,'Western Sahara',732,'OFFICIALLY_ASSIGNED'),('EI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ER','ERI',NULL,NULL,NULL,NULL,'Eritrea',232,'OFFICIALLY_ASSIGNED'),('ES','ESP',NULL,NULL,NULL,NULL,'Spain',724,'OFFICIALLY_ASSIGNED'),('ET','ETH',NULL,NULL,NULL,NULL,'Ethiopia',231,'OFFICIALLY_ASSIGNED'),('EU','null',NULL,NULL,NULL,NULL,'European Union',-1,'EXCEPTIONALLY_RESERVED'),('EV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('EX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FI','FIN',NULL,NULL,NULL,NULL,'Finland',246,'OFFICIALLY_ASSIGNED'),('FJ','FJI',NULL,NULL,NULL,NULL,'Fiji',242,'OFFICIALLY_ASSIGNED'),('FK','FLK',NULL,NULL,NULL,NULL,'Falkland Islands (Malvinas)',238,'OFFICIALLY_ASSIGNED'),('FL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('FM','FSM',NULL,NULL,NULL,NULL,'Micronesia, Federated States of',583,'OFFICIALLY_ASSIGNED'),('FN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FO','FRO',NULL,NULL,NULL,NULL,'Faroe Islands',234,'OFFICIALLY_ASSIGNED'),('FP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FR','FRA',NULL,NULL,NULL,NULL,'France',250,'OFFICIALLY_ASSIGNED'),('FS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FX','FXX',NULL,NULL,NULL,NULL,'France, Metropolitan',-1,'EXCEPTIONALLY_RESERVED'),('FY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GA','GAB',NULL,NULL,NULL,NULL,'Gabon',266,'OFFICIALLY_ASSIGNED'),('GB','GBR',NULL,NULL,NULL,NULL,'United Kingdom',826,'OFFICIALLY_ASSIGNED'),('GC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('GD','GRD',NULL,NULL,NULL,NULL,'Grenada',308,'OFFICIALLY_ASSIGNED'),('GE','GEO',NULL,NULL,NULL,NULL,'Georgia',268,'OFFICIALLY_ASSIGNED'),('GF','GUF',NULL,NULL,NULL,NULL,'French Guiana',254,'OFFICIALLY_ASSIGNED'),('GG','GGY',NULL,NULL,NULL,NULL,'Guernsey',831,'OFFICIALLY_ASSIGNED'),('GH','GHA',NULL,NULL,NULL,NULL,'Ghana',288,'OFFICIALLY_ASSIGNED'),('GI','GIB',NULL,NULL,NULL,NULL,'Gibraltar',292,'OFFICIALLY_ASSIGNED'),('GJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GL','GRL',NULL,NULL,NULL,NULL,'Greenland',304,'OFFICIALLY_ASSIGNED'),('GM','GMB',NULL,NULL,NULL,NULL,'Gambia',270,'OFFICIALLY_ASSIGNED'),('GN','GIN',NULL,NULL,NULL,NULL,'Guinea',324,'OFFICIALLY_ASSIGNED'),('GO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GP','GLP',NULL,NULL,NULL,NULL,'Guadeloupe',312,'OFFICIALLY_ASSIGNED'),('GQ','GNQ',NULL,NULL,NULL,NULL,'Equatorial Guinea',226,'OFFICIALLY_ASSIGNED'),('GR','GRC',NULL,NULL,NULL,NULL,'Greece',300,'OFFICIALLY_ASSIGNED'),('GS','SGS',NULL,NULL,NULL,NULL,'South Georgia and the South Sandwich Islands',239,'OFFICIALLY_ASSIGNED'),('GT','GTM',NULL,NULL,NULL,NULL,'Guatemala',320,'OFFICIALLY_ASSIGNED'),('GU','GUM',NULL,NULL,NULL,NULL,'Guam',316,'OFFICIALLY_ASSIGNED'),('GV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GW','GNB',NULL,NULL,NULL,NULL,'Guinea-Bissau',624,'OFFICIALLY_ASSIGNED'),('GX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GY','GUY',NULL,NULL,NULL,NULL,'Guyana',328,'OFFICIALLY_ASSIGNED'),('GZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HK','HKG',NULL,NULL,NULL,NULL,'Hong Kong',344,'OFFICIALLY_ASSIGNED'),('HL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HM','HMD',NULL,NULL,NULL,NULL,'Heard Island and McDonald Islands',334,'OFFICIALLY_ASSIGNED'),('HN','HND',NULL,NULL,NULL,NULL,'Honduras',340,'OFFICIALLY_ASSIGNED'),('HO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HR','HRV',NULL,NULL,NULL,NULL,'Croatia',191,'OFFICIALLY_ASSIGNED'),('HS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HT','HTI',NULL,NULL,NULL,NULL,'Haiti',332,'OFFICIALLY_ASSIGNED'),('HU','HUN',NULL,NULL,NULL,NULL,'Hungary',348,'OFFICIALLY_ASSIGNED'),('HV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED');
/*!40000 ALTER TABLE `blc_iso_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_item_offer_qualifier`
--

DROP TABLE IF EXISTS `blc_item_offer_qualifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_item_offer_qualifier` (
  `ITEM_OFFER_QUALIFIER_ID` bigint(20) NOT NULL,
  `QUANTITY` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM_OFFER_QUALIFIER_ID`),
  KEY `FKD9C50C61D5F3FAF4` (`OFFER_ID`),
  KEY `FKD9C50C619AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C619AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C61D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_item_offer_qualifier`
--

LOCK TABLES `blc_item_offer_qualifier` WRITE;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_locale`
--

DROP TABLE IF EXISTS `blc_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_locale` (
  `LOCALE_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `USE_IN_SEARCH_INDEX` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCALE_CODE`),
  KEY `FK56C7DC203E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FK56C7DC203E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_locale`
--

LOCK TABLES `blc_locale` WRITE;
/*!40000 ALTER TABLE `blc_locale` DISABLE KEYS */;
INSERT INTO `blc_locale` VALUES ('en',NULL,NULL,NULL,NULL,0,'English',NULL,'USD'),('en_GB',NULL,NULL,NULL,NULL,0,'English (United Kingdom)',NULL,'GBP'),('en_US',NULL,NULL,NULL,NULL,1,'English US',NULL,'INR'),('es',NULL,NULL,NULL,NULL,0,'Spanish',NULL,'EUR'),('es_ES',NULL,NULL,NULL,NULL,0,'Spanish (Spain)',NULL,'EUR'),('es_MX',NULL,NULL,NULL,NULL,0,'Spanish (Mexico)',NULL,'MXN'),('fr',NULL,NULL,NULL,NULL,0,'French',NULL,'EUR'),('fr_FR',NULL,NULL,NULL,NULL,0,'French (France)',NULL,'EUR');
/*!40000 ALTER TABLE `blc_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_media`
--

DROP TABLE IF EXISTS `blc_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_media` (
  `MEDIA_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  KEY `MEDIA_TITLE_INDEX` (`TITLE`),
  KEY `MEDIA_URL_INDEX` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_media`
--

LOCK TABLES `blc_media` WRITE;
/*!40000 ALTER TABLE `blc_media` DISABLE KEYS */;
INSERT INTO `blc_media` VALUES (101,'primary',NULL,'Sudden Death Sauce Bottle','/cmsstatic/img/sauces/Sudden-Death-Sauce-Bottle.jpg'),(102,'alt1',NULL,'Sudden Death Sauce Close-up','/cmsstatic/img/sauces/Sudden-Death-Sauce-Close.jpg'),(201,'primary',NULL,'Sweet Death Sauce Bottle','/cmsstatic/img/sauces/Sweet-Death-Sauce-Bottle.jpg'),(202,'alt1',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Close.jpg'),(203,'alt2',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Skull.jpg'),(204,'alt3',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Tile.jpg'),(205,'alt4',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Grass.jpg'),(206,'alt5',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Logo.jpg'),(301,'primary',NULL,'Hoppin Hot Sauce Bottle','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg'),(302,'alt1',NULL,'Hoppin Hot Sauce Close-up','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Close.jpg'),(401,'primary',NULL,'Day of the Dead Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg'),(402,'alt1',NULL,'Day of the Dead Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg'),(501,'primary',NULL,'Day of the Dead Habanero Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg'),(502,'alt1',NULL,'Day of the Dead Habanero Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg'),(601,'primary',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(602,'alt1',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg'),(701,'primary',NULL,'Green Ghost Bottle','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(702,'alt1',NULL,'Green Ghost Close-up','/cmsstatic/img/sauces/Green-Ghost-Close.jpg'),(801,'primary',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg'),(802,'alt1',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg'),(901,'primary',NULL,'Armageddon The Hot Sauce To End All Bottle','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg'),(902,'alt1',NULL,'Armageddon The Hot Sauce To End All Close-up','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg'),(1001,'primary',NULL,'Dr. Chilemeisters Insane Hot Sauce Bottle','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg'),(1002,'alt1',NULL,'Dr. Chilemeisters Insane Hot Sauce Close-up','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg'),(1101,'primary',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1102,'alt1',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1201,'primary',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg'),(1202,'alt1',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg'),(1301,'primary',NULL,'Bull Snort Smokin Toncils Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg'),(1302,'alt1',NULL,'Bull Snort Smokin Toncils Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg'),(1401,'primary',NULL,'Cool Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1402,'alt1',NULL,'Cool Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1501,'primary',NULL,'Roasted Garlic Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg'),(1502,'alt1',NULL,'Roasted Garlic Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg'),(1601,'primary',NULL,'Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(1602,'alt1',NULL,'Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg'),(1701,'primary',NULL,'Insanity Sauce Bottle','/cmsstatic/img/sauces/Insanity-Sauce-Bottle.jpg'),(1702,'alt1',NULL,'Insanity Sauce Close-up','/cmsstatic/img/sauces/Insanity-Sauce-Close.jpg'),(1801,'primary',NULL,'Hurtin Jalepeno Hot Sauce Bottle','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg'),(1802,'alt1',NULL,'Hurtin Jalepeno Hot Sauce Close-up','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg'),(1901,'primary',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg'),(1902,'alt1',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg'),(10001,'primary','Black','Hawt Like a Habanero Men\'s Black','/cmsstatic/img/merch/habanero_mens_black.jpg'),(10002,'primary','Red','Hawt Like a Habanero Men\'s Red','/cmsstatic/img/merch/habanero_mens_red.jpg'),(10003,'primary','Silver','Hawt Like a Habanero Men\'s Silver','/cmsstatic/img/merch/habanero_mens_silver.jpg'),(20001,'primary','Black','Hawt Like a Habanero Women\'s Black','/cmsstatic/img/merch/habanero_womens_black.jpg'),(20002,'primary','Red','Hawt Like a Habanero Women\'s Red','/cmsstatic/img/merch/habanero_womens_red.jpg'),(20003,'primary','Silver','Hawt Like a Habanero Women\'s Silver','/cmsstatic/img/merch/habanero_womens_silver.jpg'),(30001,'primary','Black','Heat Clinic Hand-Drawn Men\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_black.jpg'),(30002,'primary','Red','Heat Clinic Hand-Drawn Men\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_red.jpg'),(30003,'primary','Silver','Heat Clinic Hand-Drawn Men\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_silver.jpg'),(40001,'primary','Black','Heat Clinic Hand-Drawn Women\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_black.jpg'),(40002,'primary','Red','Heat Clinic Hand-Drawn Women\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_red.jpg'),(40003,'primary','Silver','Heat Clinic Hand-Drawn Women\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_silver.jpg'),(50001,'primary','Black','Heat Clinic Mascot Men\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_mens_black.jpg'),(50002,'primary','Red','Heat Clinic Mascot Men\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_mens_red.jpg'),(50003,'primary','Silver','Heat Clinic Mascot Men\'s Silver','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(60001,'primary','Black','Heat Clinic Mascot Women\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_womens_black.jpg'),(60002,'primary','Red','Heat Clinic Mascot Women\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_womens_red.jpg'),(60003,'primary','Silver','Heat Clinic Mascot Women\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_womens_silver.jpg'),(60015,NULL,NULL,NULL,'/cmsstatic/img/sauces/images.jpg'),(60063,NULL,NULL,NULL,'/cmsstatic/img/sauces/Sweet-Death-Sauce-Logo.jpg'),(60064,NULL,NULL,NULL,'/cmsstatic/img/party/chawari P5..jpg'),(60113,NULL,NULL,NULL,'/cmsstatic/img/party/round table white.jpg'),(60163,NULL,NULL,NULL,'/cmsstatic/img/party/round table-cover-top.jpg'),(60164,NULL,NULL,NULL,'/cmsstatic/img/party/chair.jpg'),(60213,NULL,NULL,NULL,'/cmsstatic/img/party/CHAIR WITH COVER FINAL.jpg'),(60214,NULL,NULL,NULL,'/cmsstatic/img/party/CHAIR WITH COVER N RIBBON.jpg'),(60215,NULL,NULL,NULL,'/cmsstatic/img/party/pandal printed.jpg'),(60216,NULL,NULL,NULL,'/cmsstatic/img/party/pandal white.jpg'),(60217,NULL,NULL,NULL,'/cmsstatic/img/party/pandal bengali.jpg'),(60218,NULL,NULL,NULL,'/cmsstatic/img/party/pandal hut.jpg'),(60219,NULL,NULL,NULL,'/cmsstatic/img/party/GREEN CARPET FINAL.jpg'),(60220,NULL,NULL,NULL,'/cmsstatic/img/decor/chawari.jpg'),(60221,NULL,NULL,NULL,'/cmsstatic/img/party/FRONT TRUSS FINAL.jpg'),(60222,NULL,NULL,NULL,'/cmsstatic/img/party/FRONT TRUSS FINAL.jpg'),(60223,NULL,NULL,NULL,'/cmsstatic/img/party/BOX TRUSS FINAL.jpg'),(60224,NULL,NULL,NULL,'/cmsstatic/img/party/BOX TRUSS FINAL.jpg'),(60225,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 2 FINAL copy.jpg'),(60226,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 4 FINAL.jpg'),(60227,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 6 FINAL copy.jpg'),(60228,NULL,NULL,NULL,'/cmsstatic/img/party/GENERATOR FINAL.jpg'),(60229,NULL,NULL,NULL,'/cmsstatic/img/party/GENERATOR FINAL.jpg'),(60230,NULL,NULL,NULL,'/cmsstatic/img/party/metal.jpg'),(60231,NULL,NULL,NULL,'/cmsstatic/img/party/par.jpg'),(60232,NULL,NULL,NULL,'/cmsstatic/img/party/led par.jpg'),(60233,NULL,NULL,NULL,'/cmsstatic/img/party/halogen.jpg'),(60234,NULL,NULL,NULL,'/cmsstatic/img/party/ALAAV FINAL.jpg'),(60235,NULL,NULL,NULL,'/cmsstatic/img/party/RED CARPET.jpg'),(60236,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 1 FINAL.jpg'),(60237,NULL,NULL,NULL,'/cmsstatic/img/party/DANCE FLOOR FINAL.jpg'),(60263,NULL,NULL,NULL,'/cmsstatic/img/party/chawari OPEN 9.jpg'),(60264,NULL,NULL,NULL,'/cmsstatic/img/party/chawari.jpg'),(60268,NULL,NULL,NULL,'/cmsstatic/img/party/chawari OPEN 6.jpg'),(60313,NULL,NULL,NULL,'/cmsstatic/img/party/round table with nylon top.jpg'),(60314,NULL,NULL,NULL,'/cmsstatic/img/party/sofa with cover.JPG'),(60315,NULL,NULL,NULL,'/cmsstatic/img/party/leather sofa-1.jpg'),(60316,NULL,NULL,NULL,'/cmsstatic/img/party/king size sofa.jpg'),(60317,NULL,NULL,NULL,'/cmsstatic/img/party/Pandal Hut 1.jpg'),(60318,NULL,NULL,NULL,'/cmsstatic/img/party/Pandal Hut 2.jpg'),(60319,NULL,NULL,NULL,'/cmsstatic/img/party/BLUE CARPET FINAL.jpg'),(60320,NULL,NULL,NULL,'/cmsstatic/img/party/halogen.jpg'),(60321,NULL,NULL,NULL,'/cmsstatic/img/party/NORMAL GHODI FINAL.jpg'),(60322,NULL,NULL,NULL,'/cmsstatic/img/party/WHITE GHODI FINAL.jpg'),(60323,NULL,NULL,NULL,'/cmsstatic/img/party/GHODI WITH CHATAR FINAL.jpg'),(60324,NULL,NULL,NULL,'/cmsstatic/img/party/screen 2.jpg'),(60325,NULL,NULL,NULL,'/cmsstatic/img/party/screen 1.jpg'),(60326,NULL,NULL,NULL,'/cmsstatic/img/party/sliding screen.jpg'),(60327,NULL,NULL,NULL,'/cmsstatic/img/party/GAS HEATER FINAL.jpg'),(60328,NULL,NULL,NULL,'/cmsstatic/img/party/GAS HEATER FINAL.jpg');
/*!40000 ALTER TABLE `blc_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_module_configuration`
--

DROP TABLE IF EXISTS `blc_module_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_module_configuration` (
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CONFIG_TYPE` varchar(255) NOT NULL,
  `IS_DEFAULT` tinyint(1) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_module_configuration`
--

LOCK TABLES `blc_module_configuration` WRITE;
/*!40000 ALTER TABLE `blc_module_configuration` DISABLE KEYS */;
INSERT INTO `blc_module_configuration` VALUES (-1,NULL,'2016-12-27 19:55:39',NULL,NULL,NULL,NULL,NULL,'SITE_MAP',1,'SITE_MAP',100);
/*!40000 ALTER TABLE `blc_module_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer`
--

DROP TABLE IF EXISTS `blc_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer` (
  `OFFER_ID` bigint(20) NOT NULL,
  `APPLY_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `AUTOMATICALLY_ADDED` tinyint(1) DEFAULT NULL,
  `COMBINABLE_WITH_OTHER_OFFERS` tinyint(1) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(255) DEFAULT NULL,
  `OFFER_DISCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `MARKETING_MESSASGE` varchar(255) DEFAULT NULL,
  `MAX_USES_PER_CUSTOMER` bigint(20) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_NAME` varchar(255) NOT NULL,
  `OFFER_ITEM_QUALIFIER_RULE` varchar(255) DEFAULT NULL,
  `OFFER_ITEM_TARGET_RULE` varchar(255) DEFAULT NULL,
  `ORDER_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `OFFER_PRIORITY` int(11) DEFAULT NULL,
  `QUALIFYING_ITEM_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `REQUIRES_RELATED_TAR_QUAL` tinyint(1) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `TARGET_SYSTEM` varchar(255) DEFAULT NULL,
  `TOTALITARIAN_OFFER` tinyint(1) DEFAULT NULL,
  `OFFER_TYPE` varchar(255) NOT NULL,
  `OFFER_VALUE` decimal(19,5) NOT NULL,
  PRIMARY KEY (`OFFER_ID`),
  KEY `OFFER_DISCOUNT_INDEX` (`OFFER_DISCOUNT_TYPE`),
  KEY `OFFER_MARKETING_MESSAGE_INDEX` (`MARKETING_MESSASGE`),
  KEY `OFFER_NAME_INDEX` (`OFFER_NAME`),
  KEY `OFFER_TYPE_INDEX` (`OFFER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer`
--

LOCK TABLES `blc_offer` WRITE;
/*!40000 ALTER TABLE `blc_offer` DISABLE KEYS */;
INSERT INTO `blc_offer` VALUES (1,0,NULL,0,1,NULL,'PERCENT_OFF','2020-01-01 00:00:00',NULL,NULL,0,'Shirts Special',NULL,'NONE',NULL,NULL,NULL,NULL,'2016-12-27 00:00:00',NULL,NULL,'ORDER_ITEM',20.00000);
/*!40000 ALTER TABLE `blc_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_audit`
--

DROP TABLE IF EXISTS `blc_offer_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_audit` (
  `OFFER_AUDIT_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `OFFER_CODE_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `REDEEMED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFER_AUDIT_ID`),
  KEY `OFFERAUDIT_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `OFFERAUDIT_OFFER_CODE_INDEX` (`OFFER_CODE_ID`),
  KEY `OFFERAUDIT_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERAUDIT_ORDER_INDEX` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_audit`
--

LOCK TABLES `blc_offer_audit` WRITE;
/*!40000 ALTER TABLE `blc_offer_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_code`
--

DROP TABLE IF EXISTS `blc_offer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_code` (
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_CODE` varchar(255) NOT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `USES` int(11) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_CODE_ID`),
  KEY `OFFERCODE_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERCODE_CODE_INDEX` (`OFFER_CODE`),
  KEY `FK76B8C8D6D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK76B8C8D6D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_code`
--

LOCK TABLES `blc_offer_code` WRITE;
/*!40000 ALTER TABLE `blc_offer_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info`
--

DROP TABLE IF EXISTS `blc_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_info` (
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info`
--

LOCK TABLES `blc_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info_fields`
--

DROP TABLE IF EXISTS `blc_offer_info_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_info_fields` (
  `OFFER_INFO_FIELDS_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_FIELDS_ID`,`FIELD_NAME`),
  KEY `FKA901886183AE7237` (`OFFER_INFO_FIELDS_ID`),
  CONSTRAINT `FKA901886183AE7237` FOREIGN KEY (`OFFER_INFO_FIELDS_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info_fields`
--

LOCK TABLES `blc_offer_info_fields` WRITE;
/*!40000 ALTER TABLE `blc_offer_info_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_item_criteria`
--

DROP TABLE IF EXISTS `blc_offer_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_item_criteria` (
  `OFFER_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`OFFER_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_item_criteria`
--

LOCK TABLES `blc_offer_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_offer_item_criteria` DISABLE KEYS */;
INSERT INTO `blc_offer_item_criteria` VALUES (1,'MvelHelper.toUpperCase(orderItem.?category.?name)==MvelHelper.toUpperCase(\"merchandise\")',1);
/*!40000 ALTER TABLE `blc_offer_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule`
--

DROP TABLE IF EXISTS `blc_offer_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_rule` (
  `OFFER_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule`
--

LOCK TABLES `blc_offer_rule` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule_map`
--

DROP TABLE IF EXISTS `blc_offer_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_rule_map` (
  `OFFER_OFFER_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_OFFER_OFFER_ID` bigint(20) NOT NULL,
  `OFFER_RULE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_OFFER_RULE_ID`),
  KEY `FKCA468FE245C66D1D` (`BLC_OFFER_OFFER_ID`),
  KEY `FKCA468FE2C11A218D` (`OFFER_RULE_ID`),
  CONSTRAINT `FKCA468FE245C66D1D` FOREIGN KEY (`BLC_OFFER_OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKCA468FE2C11A218D` FOREIGN KEY (`OFFER_RULE_ID`) REFERENCES `blc_offer_rule` (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule_map`
--

LOCK TABLES `blc_offer_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order`
--

DROP TABLE IF EXISTS `blc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order` (
  `ORDER_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_NUMBER` varchar(255) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `ORDER_SUBTOTAL` decimal(19,5) DEFAULT NULL,
  `SUBMIT_DATE` datetime DEFAULT NULL,
  `TAX_OVERRIDE` tinyint(1) DEFAULT NULL,
  `ORDER_TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_SHIPPING` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `ORDER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `ORDER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `ORDER_NAME_INDEX` (`NAME`),
  KEY `ORDER_NUMBER_INDEX` (`ORDER_NUMBER`),
  KEY `ORDER_STATUS_INDEX` (`ORDER_STATUS`),
  KEY `FK8F5B64A83E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK8F5B64A87470F437` (`CUSTOMER_ID`),
  KEY `FK8F5B64A8A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK8F5B64A83E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK8F5B64A87470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK8F5B64A8A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order`
--

LOCK TABLES `blc_order` WRITE;
/*!40000 ALTER TABLE `blc_order` DISABLE KEYS */;
INSERT INTO `blc_order` VALUES (51,200,'2016-12-27 20:40:34','2016-12-27 20:43:06',200,NULL,NULL,NULL,NULL,'IN_PROCESS',112.92000,NULL,NULL,112.92000,0.00000,0.00000,'USD',200,'en_US'),(101,302,'2016-12-28 13:04:06','2016-12-28 13:04:07',302,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',302,'en_US'),(151,400,'2016-12-28 14:28:59','2016-12-28 14:52:12',400,NULL,NULL,NULL,NULL,'IN_PROCESS',47.94000,NULL,NULL,47.94000,0.00000,0.00000,'USD',400,'en_US'),(201,500,'2016-12-28 17:04:20','2016-12-28 17:05:37',500,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',500,'en_US'),(251,700,'2016-12-28 17:24:21','2016-12-28 19:41:49',700,'agrawal.sumit17@gmail.com',NULL,'20161228194149923251',NULL,'SUBMITTED',24.97000,'2016-12-28 19:41:49',NULL,44.97000,20.00000,0.00000,'USD',700,'en_US'),(301,800,'2016-12-28 18:32:15','2016-12-28 18:32:15',800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',800,'en_US'),(351,900,'2016-12-28 18:35:11','2016-12-28 18:35:12',900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',900,'en_US'),(401,1000,'2016-12-28 18:43:06','2016-12-28 18:44:02',1000,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1000,'en_US'),(451,1100,'2016-12-28 18:48:32','2016-12-28 18:51:11',1100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1100,'en_US'),(501,1200,'2016-12-28 19:07:46','2016-12-28 19:11:06',1200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1200,'en_US'),(551,1300,'2016-12-28 19:30:20','2016-12-28 19:31:48',1300,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1300,'en_US'),(601,1400,'2016-12-28 19:37:28','2016-12-28 19:39:20',1400,'agrawal.sumit17@gmail.com',NULL,'20161228193920906601',NULL,'SUBMITTED',4.99000,'2016-12-28 19:39:20',NULL,9.99000,5.00000,0.00000,'USD',1400,'en_US'),(651,1701,'2016-12-29 11:59:47','2016-12-29 12:00:28',1701,'agrawal.sumit17@gmail.com',NULL,'20161229120028243651',NULL,'SUBMITTED',6.99000,'2016-12-29 12:00:28',NULL,26.99000,20.00000,0.00000,'USD',1701,'en_US'),(701,1800,'2016-12-29 12:26:05','2016-12-29 12:26:52',1800,'agrawal.sumit17@gmail.com',NULL,'20161229122652491701',NULL,'SUBMITTED',14.99000,'2016-12-29 12:26:52',NULL,34.99000,20.00000,0.00000,'USD',1800,'en_US'),(751,2000,'2016-12-29 18:14:25','2016-12-29 18:14:27',2000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2000,'en_US'),(801,2100,'2016-12-29 18:18:47','2016-12-29 18:25:29',2100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2100,'en_US'),(851,2200,'2016-12-29 18:33:44','2016-12-29 18:39:25',2200,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',2200,'en_US'),(901,2300,'2016-12-29 19:13:36','2016-12-29 19:13:37',2300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2300,'en_US'),(951,2400,'2016-12-29 19:37:29','2016-12-29 19:37:30',2400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2400,'en_US'),(1001,2500,'2016-12-29 20:13:19','2016-12-29 20:24:37',2500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2500,'en_US'),(1051,2601,'2016-12-30 13:59:57','2016-12-30 14:00:24',2601,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2601,'en_US'),(1101,2700,'2016-12-30 14:07:49','2016-12-30 14:07:50',2700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2700,'en_US'),(1151,2800,'2016-12-30 14:09:36','2016-12-30 14:11:47',2800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2800,'en_US'),(1201,2900,'2016-12-30 14:19:08','2016-12-30 14:23:23',2900,NULL,NULL,NULL,NULL,'IN_PROCESS',6.99000,NULL,NULL,6.99000,0.00000,0.00000,'USD',2900,'en_US'),(1251,3000,'2016-12-30 14:35:51','2016-12-30 14:36:55',3000,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',3000,'en_US'),(1301,3100,'2016-12-30 14:50:52','2016-12-30 14:55:02',3100,NULL,NULL,NULL,NULL,'IN_PROCESS',14.97000,NULL,NULL,14.97000,0.00000,0.00000,'USD',3100,'en_US'),(1351,3500,'2016-12-30 16:50:14','2016-12-30 16:50:16',3500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',3500,'en_US'),(1401,3800,'2016-12-30 17:43:02','2016-12-30 17:43:04',3800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',3800,'en_US'),(1451,4000,'2016-12-30 18:14:36','2016-12-30 18:14:37',4000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4000,'en_US'),(1501,4100,'2016-12-30 18:20:16','2016-12-30 18:21:06',4100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4100,'en_US'),(1551,4200,'2016-12-30 18:33:45','2016-12-30 18:36:28',4200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4200,'en_US'),(1601,4300,'2016-12-30 18:49:08','2016-12-30 18:49:09',4300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4300,'en_US'),(1651,4900,'2016-12-30 19:58:35','2016-12-30 19:58:37',4900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4900,'en_US'),(1701,5000,'2016-12-30 20:04:14','2016-12-30 20:05:04',5000,NULL,NULL,NULL,NULL,'IN_PROCESS',24.97000,NULL,NULL,24.97000,0.00000,0.00000,'USD',5000,'en_US'),(1751,5100,'2017-01-02 12:10:44','2017-01-02 12:10:50',5100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5100,'en_US'),(1801,5200,'2017-01-02 12:40:51','2017-01-02 12:40:51',5200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5200,'en_US'),(1851,5300,'2017-01-02 12:58:54','2017-01-02 12:58:57',5300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5300,'en_US'),(1901,5400,'2017-01-02 13:05:47','2017-01-02 13:05:48',5400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5400,'en_US'),(1951,5500,'2017-01-02 13:08:54','2017-01-02 13:08:55',5500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5500,'en_US'),(2001,5600,'2017-01-02 13:20:09','2017-01-02 13:20:10',5600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5600,'en_US'),(2051,5700,'2017-01-02 13:24:12','2017-01-02 13:24:13',5700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5700,'en_US'),(2101,5800,'2017-01-02 13:26:51','2017-01-02 13:26:51',5800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5800,'en_US'),(2151,5900,'2017-01-02 13:38:41','2017-01-02 13:38:41',5900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5900,'en_US'),(2201,6000,'2017-01-02 13:46:55','2017-01-02 13:46:56',6000,NULL,NULL,NULL,NULL,'IN_PROCESS',14.99000,NULL,NULL,14.99000,0.00000,0.00000,'USD',6000,'en_US'),(2251,6100,'2017-01-02 13:53:55','2017-01-02 13:54:21',6100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6100,'en_US'),(2301,6200,'2017-01-02 14:04:34','2017-01-02 14:04:35',6200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6200,'en_US'),(2351,6300,'2017-01-02 14:17:44','2017-01-02 14:17:45',6300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6300,'en_US'),(2401,6400,'2017-01-03 18:17:04','2017-01-03 18:17:06',6400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6400,'en_US'),(2451,6500,'2017-01-03 18:53:35','2017-01-03 18:53:35',6500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6500,'en_US'),(2501,6600,'2017-01-03 19:02:14','2017-01-03 19:02:15',6600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6600,'en_US'),(2551,6700,'2017-01-03 19:11:12','2017-01-03 19:11:13',6700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6700,'en_US'),(2601,6800,'2017-01-03 19:18:59','2017-01-03 19:19:00',6800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6800,'en_US'),(2651,6900,'2017-01-03 19:30:31','2017-01-03 19:31:39',6900,'agrawal.sumit17@gmail.com',NULL,'201701031931391182651',NULL,'SUBMITTED',11.98000,'2017-01-03 19:31:39',NULL,16.98000,5.00000,0.00000,'USD',6900,'en_US'),(2701,7000,'2017-01-03 20:15:54','2017-01-03 20:15:55',7000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',7000,'en_US'),(2751,7100,'2017-01-03 20:25:38','2017-01-03 20:25:39',7100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',7100,'en_US'),(2801,7201,'2017-01-04 12:52:09','2017-01-04 12:53:22',7201,'agrawal.sumit17@gmail.com',NULL,'201701041253227762801',NULL,'SUBMITTED',4.99000,'2017-01-04 12:53:22',NULL,9.99000,5.00000,0.00000,'USD',7201,'en_US'),(2851,7300,'2017-01-04 13:24:04','2017-01-04 13:24:52',7300,'agrawal.sumit17@gmail.com',NULL,'201701041324526612851',NULL,'SUBMITTED',29.98000,'2017-01-04 13:24:52',NULL,34.98000,5.00000,0.00000,'USD',7300,'en_US'),(2901,7400,'2017-01-04 13:30:18','2017-01-04 13:30:57',7400,'agrawal.sumit17@gmail.com',NULL,'201701041330576732901',NULL,'SUBMITTED',4.99000,'2017-01-04 13:30:57',NULL,9.99000,5.00000,0.00000,'USD',7400,'en_US'),(2951,7500,'2017-01-04 15:43:12','2017-01-04 15:49:24',7500,NULL,NULL,NULL,NULL,'IN_PROCESS',35.00000,NULL,NULL,35.00000,0.00000,0.00000,'USD',7500,'en_US'),(3001,7600,'2017-01-04 18:36:05','2017-01-04 18:36:05',7600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',7600,'en_US'),(3051,7800,'2017-01-04 18:58:18','2017-01-04 18:58:19',7800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',7800,'en_US'),(3101,8100,'2017-01-04 19:12:26','2017-01-04 19:19:33',8100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,9.99000,5.00000,0.00000,'INR',8100,'en_US'),(3151,8200,'2017-01-04 19:28:53','2017-01-04 19:29:13',8200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8200,'en_US'),(3201,8300,'2017-01-04 19:40:22','2017-01-04 19:43:16',8300,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,9.99000,5.00000,0.00000,'INR',8300,'en_US'),(3251,8400,'2017-01-04 19:47:48','2017-01-04 19:48:18',8400,'agrawal.sumit17@gmail.com',NULL,'201701041948186683251',NULL,'SUBMITTED',4.99000,'2017-01-04 19:48:18',NULL,4.99000,0.00000,0.00000,'INR',8400,'en_US'),(3252,8400,'2017-01-04 19:50:04','2017-01-04 19:50:19',8400,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8400,'en_US'),(3301,8500,'2017-01-04 19:58:04','2017-01-04 20:01:16',8500,'agrawal.sumit17@gmail.com',NULL,'201701042001161483301',NULL,'SUBMITTED',4.99000,'2017-01-04 20:01:16',NULL,4.99000,0.00000,0.00000,'INR',8500,'en_US'),(3351,8600,'2017-01-05 10:27:55','2017-01-05 10:29:59',8600,'agrawal.sumit17@gmail.com',NULL,'201701051029597023351',NULL,'SUBMITTED',29.98000,'2017-01-05 10:29:59',NULL,29.98000,0.00000,0.00000,'INR',8600,'en_US'),(3401,8701,'2017-01-08 05:47:16','2017-01-08 05:47:18',8701,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8701,'en_US'),(3402,8702,'2017-01-08 05:47:59','2017-01-08 05:48:00',8702,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8702,'en_US'),(3451,11300,'2017-01-08 08:52:25','2017-01-08 08:52:26',11300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',11300,'en_US'),(3501,11702,'2017-01-09 06:15:59','2017-01-09 06:16:00',11702,NULL,NULL,NULL,NULL,'IN_PROCESS',200.00000,NULL,NULL,200.00000,0.00000,0.00000,'INR',11702,'en_US'),(3551,11800,'2017-01-11 06:24:28','2017-01-11 06:24:30',11800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',11800,'en_US'),(3601,11900,'2017-01-11 06:34:21','2017-01-11 06:34:22',11900,NULL,NULL,NULL,NULL,'IN_PROCESS',31000.00000,NULL,NULL,31000.00000,0.00000,0.00000,'INR',11900,'en_US'),(3651,12000,'2017-01-11 18:15:04','2017-01-11 18:17:47',12000,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',12000,'en_US'),(3701,12102,'2017-01-12 17:28:21','2017-01-12 17:34:44',12102,NULL,NULL,NULL,NULL,'IN_PROCESS',250.00000,NULL,NULL,250.00000,0.00000,0.00000,'INR',12102,'en_US'),(3702,12103,'2017-01-12 17:32:33','2017-01-12 17:32:33',12103,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',12103,'en_US'),(3751,12200,'2017-01-12 19:09:23','2017-01-12 19:10:52',12200,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',12200,'en_US'),(3801,12400,'2017-01-14 12:12:17','2017-01-14 12:13:24',12400,'sheetal@dadajigroup.com',NULL,NULL,NULL,'IN_PROCESS',30.00000,NULL,NULL,30.00000,0.00000,0.00000,'INR',12400,'en_US'),(3802,12402,'2017-01-14 12:52:38','2017-01-14 13:04:18',12402,'agrawal.sumit17@gmail.com',NULL,'201701141304181403802',NULL,'SUBMITTED',20.00000,'2017-01-14 13:04:18',NULL,20.00000,0.00000,0.00000,'INR',12402,'en_US'),(3851,12500,'2017-01-14 13:18:13','2017-01-14 13:18:39',12500,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',12500,'en_US'),(3901,12600,'2017-01-15 06:17:59','2017-01-15 06:18:17',12600,NULL,NULL,NULL,NULL,'IN_PROCESS',40.00000,NULL,NULL,40.00000,0.00000,0.00000,'INR',12600,'en_US'),(3951,12700,'2017-01-15 06:36:02','2017-01-15 06:36:03',12700,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',12700,'en_US'),(4001,12800,'2017-01-15 06:56:14','2017-01-15 07:19:17',12800,NULL,NULL,NULL,NULL,'IN_PROCESS',350.00000,NULL,NULL,350.00000,0.00000,0.00000,'INR',12800,'en_US'),(4051,13002,'2017-01-15 08:24:10','2017-01-15 08:25:59',13002,NULL,NULL,NULL,NULL,'IN_PROCESS',80.00000,NULL,NULL,80.00000,0.00000,0.00000,'INR',13002,'en_US'),(4101,13100,'2017-01-15 08:39:38','2017-01-15 08:41:33',13100,NULL,NULL,NULL,NULL,'IN_PROCESS',40.00000,NULL,NULL,40.00000,0.00000,0.00000,'INR',13100,'en_US'),(4151,13200,'2017-01-15 08:50:11','2017-01-15 09:00:37',13200,NULL,NULL,NULL,NULL,'IN_PROCESS',340.00000,NULL,NULL,340.00000,0.00000,0.00000,'INR',13200,'en_US'),(4201,13300,'2017-01-15 09:08:46','2017-01-15 09:09:14',13300,NULL,NULL,NULL,NULL,'IN_PROCESS',2520.00000,NULL,NULL,2520.00000,0.00000,0.00000,'INR',13300,'en_US'),(4251,13500,'2017-01-15 10:13:23','2017-01-15 10:27:43',13500,NULL,NULL,NULL,NULL,'IN_PROCESS',15040.00000,NULL,NULL,15040.00000,0.00000,0.00000,'INR',13500,'en_US'),(4301,13601,'2017-01-15 10:34:36','2017-01-15 10:39:57',13601,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13601,'en_US'),(4302,13600,'2017-01-15 10:40:44','2017-01-15 10:49:37',13600,'sheetal@dadajigroup.com',NULL,NULL,NULL,'IN_PROCESS',4570.00000,NULL,NULL,4570.00000,0.00000,0.00000,'INR',13600,'en_US'),(4351,13700,'2017-01-15 11:02:12','2017-01-15 11:02:41',13700,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13700,'en_US'),(4401,13800,'2017-01-15 11:18:09','2017-01-15 11:18:26',13800,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13800,'en_US'),(4451,13900,'2017-01-15 11:25:16','2017-01-15 11:25:36',13900,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13900,'en_US'),(4501,14000,'2017-01-15 12:01:42','2017-01-15 12:02:06',14000,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14000,'en_US'),(4551,14100,'2017-01-15 12:20:03','2017-01-15 12:20:21',14100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14100,'en_US'),(4601,14200,'2017-01-15 12:50:34','2017-01-15 12:54:01',14200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14200,'en_US'),(4651,14300,'2017-01-15 13:12:06','2017-01-15 13:12:06',14300,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14300,'en_US'),(4701,14401,'2017-01-15 13:15:36','2017-01-15 13:15:37',14401,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14401,'en_US'),(4751,14500,'2017-01-15 13:21:56','2017-01-15 13:22:11',14500,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14500,'en_US'),(4801,14600,'2017-01-15 13:40:42','2017-01-15 13:41:49',14600,'agrawal.sumit17@gmail.com',NULL,'201701151341489944801',NULL,'SUBMITTED',20.00000,'2017-01-15 13:41:49',NULL,20.00000,0.00000,0.00000,'INR',14600,'en_US'),(4802,14600,'2017-01-15 13:50:38','2017-01-15 13:50:38',14600,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14600,'en_US'),(4851,14700,'2017-01-15 14:31:42','2017-01-15 14:31:43',14700,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14700,'en_US'),(4901,14800,'2017-01-15 14:42:51','2017-01-15 14:42:52',14800,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14800,'en_US'),(4951,15100,'2017-01-16 05:56:52','2017-01-16 06:00:43',15100,NULL,NULL,NULL,NULL,'IN_PROCESS',15040.00000,NULL,NULL,15040.00000,0.00000,0.00000,'INR',15100,'en_US'),(5001,15200,'2017-01-16 06:07:48','2017-01-16 06:07:49',15200,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15200,'en_US'),(5002,15201,'2017-01-16 06:46:15','2017-01-16 06:46:15',15201,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15201,'en_US'),(5051,15300,'2017-01-16 06:55:42','2017-01-16 06:55:42',15300,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15300,'en_US'),(5101,15400,'2017-01-16 07:02:00','2017-01-16 07:02:01',15400,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15400,'en_US');
/*!40000 ALTER TABLE `blc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_adjustment`
--

DROP TABLE IF EXISTS `blc_order_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_adjustment` (
  `ORDER_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ADJUSTMENT_ID`),
  KEY `ORDERADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `ORDERADJUST_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK1E92D164D5F3FAF4` (`OFFER_ID`),
  KEY `FK1E92D16489FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK1E92D16489FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK1E92D164D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_adjustment`
--

LOCK TABLES `blc_order_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_attribute`
--

DROP TABLE IF EXISTS `blc_order_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_attribute` (
  `ORDER_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ATTRIBUTE_ID`),
  KEY `FKB3A467A589FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKB3A467A589FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_attribute`
--

LOCK TABLES `blc_order_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item`
--

DROP TABLE IF EXISTS `blc_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DISCOUNTS_ALLOWED` tinyint(1) DEFAULT NULL,
  `ITEM_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `RETAIL_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `GIFT_WRAP_ITEM_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `PARENT_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `ORDERITEM_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `ORDERITEM_GIFT_INDEX` (`GIFT_WRAP_ITEM_ID`),
  KEY `ORDERITEM_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERITEM_TYPE_INDEX` (`ORDER_ITEM_TYPE`),
  KEY `ORDERITEM_PARENT_INDEX` (`PARENT_ORDER_ITEM_ID`),
  KEY `ORDERITEM_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FK9A2E704A15D1A13D` (`CATEGORY_ID`),
  KEY `FK9A2E704AFD2F1F10` (`GIFT_WRAP_ITEM_ID`),
  KEY `FK9A2E704A89FE8A02` (`ORDER_ID`),
  KEY `FK9A2E704AB0B0D00A` (`PARENT_ORDER_ITEM_ID`),
  KEY `FK9A2E704A77F565E1` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK9A2E704A77F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK9A2E704AB0B0D00A` FOREIGN KEY (`PARENT_ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9A2E704AFD2F1F10` FOREIGN KEY (`GIFT_WRAP_ITEM_ID`) REFERENCES `blc_giftwrap_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item`
--

LOCK TABLES `blc_order_item` WRITE;
/*!40000 ALTER TABLE `blc_order_item` DISABLE KEYS */;
INSERT INTO `blc_order_item` VALUES (52,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,5,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,51,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,NULL,1,'Heat Clinic Hand-Drawn (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15.99000,3,15.99000,NULL,15.99000,NULL,NULL,2003,NULL,51,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,101,NULL,NULL,NULL),(155,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,5,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,151,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,151,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,201,NULL,NULL,NULL),(202,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,201,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(252,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(253,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,301,NULL,NULL,NULL),(351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,351,NULL,NULL,NULL),(401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,401,NULL,NULL,NULL),(451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,451,NULL,NULL,NULL),(501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,501,NULL,NULL,NULL),(551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,551,NULL,NULL,NULL),(601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,601,NULL,NULL,NULL),(651,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,651,NULL,NULL,NULL),(701,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,1,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,701,NULL,NULL,NULL),(751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,751,NULL,NULL,NULL),(802,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,801,NULL,NULL,NULL),(851,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,851,NULL,NULL,NULL),(852,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,851,NULL,NULL,NULL),(901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,901,NULL,NULL,NULL),(951,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,951,NULL,NULL,NULL),(1002,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1001,NULL,NULL,NULL),(1051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1051,NULL,NULL,NULL),(1101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1101,NULL,NULL,NULL),(1151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1151,NULL,NULL,NULL),(1201,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1201,NULL,NULL,NULL),(1251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1251,NULL,NULL,'2016-12-30 14:35:51'),(1252,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1251,NULL,NULL,'2016-12-30 14:36:55'),(1301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,3,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1301,NULL,NULL,NULL),(1351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1351,NULL,NULL,'2016-12-30 16:50:15'),(1401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1401,NULL,NULL,'2016-12-30 17:43:02'),(1451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1451,NULL,NULL,'2016-12-30 18:14:36'),(1501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1501,NULL,NULL,'2016-12-30 18:20:57'),(1551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1551,NULL,NULL,'2016-12-30 18:33:30'),(1601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1601,NULL,NULL,'2016-12-30 18:49:08'),(1651,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1651,NULL,NULL,'2016-12-30 19:58:35'),(1701,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2017-01-17 00:00:00'),(1702,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2018-09-17 00:00:00'),(1703,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2016-12-01 00:00:00'),(1751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1751,NULL,NULL,'2017-01-25 00:00:00'),(1801,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1801,NULL,NULL,'2017-01-31 00:00:00'),(1851,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1851,NULL,NULL,NULL),(1901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1901,NULL,NULL,'2017-01-25 00:00:00'),(1951,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1951,NULL,NULL,'2017-01-10 00:00:00'),(2001,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2001,NULL,NULL,'2017-01-01 00:00:00'),(2051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2051,NULL,NULL,'2017-01-01 00:00:00'),(2101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2101,NULL,NULL,'2017-01-28 00:00:00'),(2151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2151,NULL,NULL,'2017-01-03 00:00:00'),(2201,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,1,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,2201,NULL,NULL,'2017-01-01 00:00:00'),(2252,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2251,NULL,NULL,'2017-01-25 00:00:00'),(2301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2301,NULL,NULL,'2017-01-03 00:00:00'),(2351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2351,NULL,NULL,'2017-01-24 00:00:00'),(2401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2401,NULL,NULL,'2017-01-11 00:00:00'),(2451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2451,NULL,NULL,'2017-01-03 00:00:00'),(2501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2501,NULL,NULL,'2017-01-10 00:00:00'),(2551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2551,NULL,NULL,'2017-01-02 00:00:00'),(2601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2601,NULL,NULL,'2017-01-01 00:00:00'),(2651,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2651,NULL,NULL,'2017-01-02 00:00:00'),(2652,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,2651,NULL,NULL,'2017-01-01 00:00:00'),(2701,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2701,NULL,NULL,'2017-01-25 00:00:00'),(2751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2751,NULL,NULL,'2017-01-01 00:00:00'),(2801,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2801,NULL,NULL,'2017-01-19 00:00:00'),(2851,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,2,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,2851,NULL,NULL,'2017-01-02 00:00:00'),(2901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2901,NULL,NULL,'2017-01-04 00:00:00'),(2951,NULL,NULL,NULL,NULL,NULL,0,'Chair','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',10.00000,2,10.00000,NULL,10.00000,NULL,NULL,2018,NULL,2951,NULL,NULL,'2017-01-09 00:00:00'),(2952,NULL,NULL,NULL,NULL,NULL,0,'chair','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15.00000,1,15.00000,NULL,15.00000,NULL,NULL,2018,NULL,2951,NULL,NULL,'2017-01-09 00:00:00'),(3001,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3001,NULL,NULL,'2017-01-09 00:00:00'),(3051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3051,NULL,NULL,'2017-01-30 00:00:00'),(3101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3101,NULL,NULL,'2017-01-01 00:00:00'),(3151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3151,NULL,NULL,'2017-01-02 00:00:00'),(3201,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3201,NULL,NULL,'2017-01-04 00:00:00'),(3251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3251,NULL,NULL,'2017-01-05 00:00:00'),(3252,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3252,NULL,NULL,'2017-01-10 00:00:00'),(3301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3301,NULL,NULL,'2017-01-18 00:00:00'),(3351,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,2,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,3351,NULL,NULL,'2017-01-10 00:00:00'),(3401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3401,NULL,NULL,'2017-01-03 00:00:00'),(3402,NULL,NULL,NULL,NULL,NULL,1,'Cafe Louisiane Sweet Cajun Blackening Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3402,NULL,NULL,NULL),(3451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3451,NULL,NULL,'2017-01-03 00:00:00'),(3501,NULL,'2017-01-09 06:15:59','2017-01-09 06:16:00',NULL,NULL,NULL,'Round Table with Cover & Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,1,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,3501,NULL,NULL,NULL),(3551,NULL,'2017-01-11 06:24:29','2017-01-11 06:24:29',NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3551,NULL,NULL,'2017-01-18 00:00:00'),(3601,NULL,'2017-01-11 06:34:21','2017-01-11 06:34:22',NULL,NULL,NULL,'Curve Stage','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',31000.00000,1,31000.00000,NULL,31000.00000,NULL,NULL,2002,NULL,3601,NULL,NULL,'2017-01-12 00:00:00'),(3702,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,20000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,3702,NULL,NULL,'2017-01-10 00:00:00'),(3703,NULL,NULL,NULL,NULL,NULL,NULL,'Parken Light LED','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,1,250.00000,NULL,250.00000,NULL,NULL,2076,NULL,3701,NULL,NULL,'2017-01-02 00:00:00'),(3751,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1000,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3751,NULL,NULL,'2017-01-03 00:00:00'),(3801,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,3801,NULL,NULL,'2017-01-13 00:00:00'),(3802,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3802,NULL,NULL,'2017-01-10 00:00:00'),(3851,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3851,NULL,NULL,'2017-01-10 00:00:00'),(3901,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3901,NULL,NULL,'2018-12-01 00:00:00'),(3902,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,3901,NULL,NULL,'2019-06-01 00:00:00'),(3951,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3951,NULL,NULL,'2019-01-01 00:00:00'),(4001,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4001,NULL,NULL,'2018-06-01 00:00:00'),(4002,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,4001,NULL,NULL,'2017-01-12 00:00:00'),(4003,NULL,NULL,NULL,NULL,NULL,NULL,'Sofa with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',300.00000,1,300.00000,NULL,NULL,NULL,NULL,2069,NULL,4001,NULL,NULL,'2019-04-01 00:00:00'),(4051,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,3,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4051,NULL,NULL,'2018-06-01 00:00:00'),(4052,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4051,NULL,NULL,'2018-08-01 00:00:00'),(4101,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4101,NULL,NULL,'2018-07-01 00:00:00'),(4102,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4101,NULL,NULL,'2019-04-01 00:00:00'),(4151,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4151,NULL,NULL,'2019-04-01 00:00:00'),(4152,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4151,NULL,NULL,'2019-04-01 00:00:00'),(4153,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',150.00000,2,150.00000,NULL,150.00000,NULL,NULL,2070,NULL,4151,NULL,NULL,'2017-10-01 00:00:00'),(4201,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4201,NULL,NULL,'2019-04-01 00:00:00'),(4202,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2500.00000,1,2500.00000,NULL,2500.00000,NULL,NULL,2073,NULL,4201,NULL,NULL,'2018-07-01 00:00:00'),(4251,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4251,NULL,NULL,'2017-11-11 00:00:00'),(4252,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4251,NULL,NULL,'2017-01-01 00:00:00'),(4253,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-Combo-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2220,NULL,4251,NULL,NULL,'2018-06-01 00:00:00'),(4306,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4301,NULL,NULL,'2017-01-19 00:00:00'),(4307,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi with Decor','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4500.00000,1,4500.00000,NULL,4500.00000,NULL,NULL,2168,NULL,4302,NULL,NULL,'2017-01-11 00:00:00'),(4308,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,4302,NULL,NULL,'2017-01-11 00:00:00'),(4309,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover & Ribbon','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',40.00000,1,40.00000,NULL,40.00000,NULL,NULL,2069,NULL,4302,NULL,NULL,'2017-01-10 00:00:00'),(4351,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4351,NULL,NULL,'2017-01-26 00:00:00'),(4401,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4401,NULL,NULL,'2017-01-25 00:00:00'),(4451,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4451,NULL,NULL,'2017-01-18 00:00:00'),(4501,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4501,NULL,NULL,'2017-01-25 00:00:00'),(4551,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4551,NULL,NULL,'2017-01-18 00:00:00'),(4601,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4601,NULL,NULL,'2017-01-19 00:00:00'),(4651,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4651,NULL,NULL,'2017-01-25 00:00:00'),(4701,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4701,NULL,NULL,'2017-01-18 00:00:00'),(4751,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4751,NULL,NULL,'2017-01-24 00:00:00'),(4801,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4801,NULL,NULL,'2017-01-23 00:00:00'),(4802,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4802,NULL,NULL,'2017-01-25 00:00:00'),(4851,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4851,NULL,NULL,'2017-01-24 00:00:00'),(4901,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4901,NULL,NULL,'2017-01-24 00:00:00'),(4951,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4951,NULL,NULL,'2017-02-10 00:00:00'),(4952,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4951,NULL,NULL,'2017-01-25 00:00:00'),(4953,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-Combo-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2220,NULL,4951,NULL,NULL,'2017-01-30 00:00:00'),(5001,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5001,NULL,NULL,'2017-01-28 00:00:00'),(5002,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5002,NULL,NULL,'2017-01-17 00:00:00'),(5051,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5051,NULL,NULL,'2017-01-25 00:00:00'),(5101,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5101,NULL,NULL,'2017-01-19 00:00:00');
/*!40000 ALTER TABLE `blc_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_add_attr`
--

DROP TABLE IF EXISTS `blc_order_item_add_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_add_attr` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`,`NAME`),
  KEY `FKA466AB44B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA466AB44B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_add_attr`
--

LOCK TABLES `blc_order_item_add_attr` WRITE;
/*!40000 ALTER TABLE `blc_order_item_add_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_add_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_adjustment`
--

DROP TABLE IF EXISTS `blc_order_item_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_adjustment` (
  `ORDER_ITEM_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ADJUSTMENT_ID`),
  KEY `OIADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `OIADJUST_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FKA2658C82D5F3FAF4` (`OFFER_ID`),
  KEY `FKA2658C829AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C829AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C82D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_adjustment`
--

LOCK TABLES `blc_order_item_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_item_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_attribute`
--

DROP TABLE IF EXISTS `blc_order_item_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_attribute` (
  `ORDER_ITEM_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ATTRIBUTE_ID`),
  KEY `FK9F1ED0C79AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9F1ED0C79AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_attribute`
--

LOCK TABLES `blc_order_item_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_item_attribute` DISABLE KEYS */;
INSERT INTO `blc_order_item_attribute` VALUES (1,'COLOR','Red',53),(2,'SIZE','S',53),(51,'COLOR','Red',701),(52,'SIZE','M',701),(53,'NAME','',701),(101,'COLOR','Red',2201),(102,'SIZE','M',2201),(103,'NAME','',2201),(151,'COLOR','Silver',2851),(152,'SIZE','M',2851),(153,'NAME','',2851),(201,'Days','2',2952),(251,'COLOR','Red',3351),(252,'SIZE','M',3351),(253,'NAME','',3351),(301,'COLOR','Golden',3801),(351,'COLOR','Golden',4002),(352,'COLOR','Golden',4003),(401,'COLOR','Golden',4153),(453,'COLOR','Golden',4308),(454,'Ribbon Colour','Red',4309),(455,'COLOR','Black',4309);
/*!40000 ALTER TABLE `blc_order_item_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_dtl_adj`
--

DROP TABLE IF EXISTS `blc_order_item_dtl_adj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_dtl_adj` (
  `ORDER_ITEM_DTL_ADJ_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `OFFER_NAME` varchar(255) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_DTL_ADJ_ID`),
  KEY `FK85F0248FD5F3FAF4` (`OFFER_ID`),
  KEY `FK85F0248FD4AEA2C0` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD4AEA2C0` FOREIGN KEY (`ORDER_ITEM_PRICE_DTL_ID`) REFERENCES `blc_order_item_price_dtl` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_dtl_adj`
--

LOCK TABLES `blc_order_item_dtl_adj` WRITE;
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_price_dtl`
--

DROP TABLE IF EXISTS `blc_order_item_price_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_price_dtl` (
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `USE_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_PRICE_DTL_ID`),
  KEY `FK1FB64BF19AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK1FB64BF19AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_price_dtl`
--

LOCK TABLES `blc_order_item_price_dtl` WRITE;
/*!40000 ALTER TABLE `blc_order_item_price_dtl` DISABLE KEYS */;
INSERT INTO `blc_order_item_price_dtl` VALUES (52,5,1,52),(53,3,1,53),(101,1,1,101),(155,5,1,155),(156,1,1,156),(201,1,1,201),(202,1,1,202),(251,1,1,251),(252,1,1,252),(253,1,1,253),(301,1,1,301),(351,1,1,351),(401,1,1,401),(451,1,1,451),(501,1,1,501),(551,1,1,551),(601,1,1,601),(651,1,1,651),(701,1,1,701),(751,1,1,751),(802,1,1,802),(851,1,1,851),(852,1,1,852),(901,1,1,901),(951,1,1,951),(1002,1,1,1002),(1051,1,1,1051),(1101,1,1,1101),(1151,1,1,1151),(1201,1,1,1201),(1251,1,1,1251),(1252,1,1,1252),(1301,3,1,1301),(1351,1,1,1351),(1401,1,1,1401),(1451,1,1,1451),(1501,1,1,1501),(1551,1,1,1551),(1601,1,1,1601),(1651,1,1,1651),(1701,1,1,1701),(1702,1,1,1702),(1703,1,1,1703),(1751,1,1,1751),(1801,1,1,1801),(1851,1,1,1851),(1901,1,1,1901),(1951,1,1,1951),(2001,1,1,2001),(2051,1,1,2051),(2101,1,1,2101),(2151,1,1,2151),(2201,1,1,2201),(2252,1,1,2252),(2301,1,1,2301),(2351,1,1,2351),(2401,1,1,2401),(2451,1,1,2451),(2501,1,1,2501),(2551,1,1,2551),(2601,1,1,2601),(2651,1,1,2651),(2652,1,1,2652),(2701,1,1,2701),(2751,1,1,2751),(2801,1,1,2801),(2851,2,1,2851),(2901,1,1,2901),(2951,1,1,3001),(3001,1,1,3051),(3051,1,1,3101),(3101,1,1,3151),(3151,1,1,3201),(3201,1,1,3251),(3202,1,1,3252),(3251,1,1,3301),(3301,2,1,3351),(3351,1,1,3401),(3352,1,1,3402),(3401,1,1,3451),(3451,1,1,3551);
/*!40000 ALTER TABLE `blc_order_item_price_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_lock`
--

DROP TABLE IF EXISTS `blc_order_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_lock` (
  `LOCK_KEY` varchar(255) NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `LAST_UPDATED` bigint(20) DEFAULT NULL,
  `LOCKED` char(1) DEFAULT NULL,
  PRIMARY KEY (`LOCK_KEY`,`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_lock`
--

LOCK TABLES `blc_order_lock` WRITE;
/*!40000 ALTER TABLE `blc_order_lock` DISABLE KEYS */;
INSERT INTO `blc_order_lock` VALUES ('0244703f-688a-4886-b5d4-b554b9d16bb5',1701,1483108503564,'N'),('0edbeda6-73bb-463d-a7af-5ce6bf32782c',5001,1484546891216,'N'),('108e6630-02da-404c-9864-56cef51d64ef',2901,1483516856442,'N'),('13315400-10f5-48de-b092-dc8b08ebf17a',4001,1484464754764,'N'),('137e3bc4-4103-486f-9ec1-a0390bb6ea0b',3201,1483539196687,'N'),('1e85fd99-2020-4c23-aea8-7141e6494823',4501,1484481725361,'N'),('1f0e90a1-1aaf-4d03-8196-e0dab40b414c',851,1483016877702,'N'),('1f9a95b0-f84c-407d-b8c8-fb02743d10d4',501,1482932971648,'Y'),('22555567-70b6-479a-ad25-5304f33d4f57',3251,1483539497964,'N'),('22555567-70b6-479a-ad25-5304f33d4f57',3252,1483539634815,'N'),('2b53cb73-cc3b-467a-bb85-b928cfa10772',3701,1484242483397,'N'),('30cebe9c-ac06-4f99-b7cb-0c748ed3835b',4951,1484546674641,'N'),('3270431c-2e74-453f-a4d5-a5b25878a1d3',4601,1484484967184,'N'),('36dbdcb8-6454-44ed-b3c9-1904dd8e8f04',4801,1484487708323,'N'),('36dbdcb8-6454-44ed-b3c9-1904dd8e8f04',4802,1484488275500,'N'),('3878a6cf-9581-41a7-a6e0-f0aeb9f8c640',2651,1483452098546,'N'),('39b22679-4b23-42df-bc25-f16fc1febdfe',4301,1484477783657,'N'),('39b22679-4b23-42df-bc25-f16fc1febdfe',4302,1484477376465,'N'),('3a90ad2d-037a-4f7f-b020-a279ffb0e985',401,1482930852849,'N'),('47917fd4-e448-44a5-937e-0f3335260671',2851,1483516491532,'N'),('4bf0eeb5-2796-4755-b242-3a4461479732',4101,1484469692369,'N'),('4e038137-13ec-41b1-8c0c-3654026d0083',4551,1484483590940,'N'),('57994cc6-39e3-42e6-aef8-0ad17a2577a4',4051,1484468955479,'N'),('5893bfb5-7dc3-4e8e-ab64-4c0455c99e65',3651,1484158654337,'N'),('5c644ffc-4330-47db-bb86-2720ba9e9904',4351,1484478764253,'N'),('664b91b3-5dc2-455f-beab-427ffffc6a80',451,1482932133229,'Y'),('6a6ed7cd-f6a5-43aa-8dc0-df6873e8c6b7',4251,1484476062578,'N'),('6c51dd27-d2b6-479b-adaa-625ad2a53fe4',701,1482994612147,'N'),('73548736-8db2-40ce-ad57-6b4bb8e26d46',1001,1483023277377,'N'),('83fdc4e7-98a0-4e38-96ca-549c34dcb4b6',3101,1483537772845,'N'),('8b2b50e9-e47b-480e-ba9f-bbb9ab6d98cc',251,1482928025631,'N'),('973c898e-4a79-4314-8e5a-a1bf7633dcc9',3751,1484248251220,'N'),('9f61f037-03a5-4cbb-b662-aa9b943f4d00',2951,1483525164002,'N'),('a7267a24-257b-465f-8e1a-7e622c93506f',3151,1483538371056,'N'),('a870657b-3784-4220-9ba4-e6226948b70d',4751,1484486621528,'N'),('aa3465de-d316-4ea8-bff9-ea9b1797a6c0',2251,1483345461100,'N'),('ac922cde-034a-4923-950f-bac70482d5b3',3801,1484397632662,'N'),('ac922cde-034a-4923-950f-bac70482d5b3',3802,1484399057586,'N'),('b0d71e03-2004-4623-9889-d533a813c197',801,1483016118070,'Y'),('b4ad4e2e-1eaa-44b3-ab64-a73bf52442b4',251,1482934309541,'N'),('b4ad4e2e-1eaa-44b3-ab64-a73bf52442b4',601,1482934160510,'N'),('baa9d72c-bc8c-4925-bc4f-737861ecbf53',151,1482916931866,'N'),('bac18116-8c4b-4106-af3c-9762071992ce',4451,1484479535417,'N'),('c1f12119-1e27-4f63-ad6f-0ad29b36c66c',3951,1484462194034,'N'),('c2b62a34-98c7-4789-9906-7b3938153504',651,1482993027671,'N'),('c8e425ac-0ed4-4c51-b803-e8102c3a8720',3351,1483592399364,'N'),('cc599cf6-62d0-432a-9635-ccf605ab8518',3851,1484401053522,'N'),('cf0c5ad3-b446-4eff-bda8-3c33024a3ef2',3901,1484461232504,'N'),('d0e79e10-585e-43df-a038-9e4ff1374f89',551,1482933733035,'Y'),('d29329fe-7362-463c-9fab-0f57d0fe2c79',4851,1484490723959,'N'),('d8444954-9b0f-453e-8d6b-cec3c3aa5c11',201,1482924922714,'N'),('db45f79a-ad8b-48c9-9d4b-2b1689f88092',4201,1484471353395,'N'),('de6a5df9-8085-4764-9ed2-ff1f8a177b70',3301,1483540275800,'N'),('df5084e9-aa87-4fb1-b0ba-995d1d7f2f19',1,1482849049091,'N'),('e8ebd53e-bcc2-49c2-8d78-559363ed9cf8',2801,1483514600969,'N'),('eaf9df3f-597f-4043-8c37-623ab623b1ec',4401,1484479106240,'N'),('f2af104d-cf99-4ca7-ad64-7c25074d4f5e',51,1482851586217,'N'),('f85f0451-b96b-40a4-b0da-dee7dae8d97d',4151,1484470836516,'N'),('fb395278-a903-4771-b66a-c31410a35c9f',1251,1483088814958,'N');
/*!40000 ALTER TABLE `blc_order_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_multiship_option`
--

DROP TABLE IF EXISTS `blc_order_multiship_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_multiship_option` (
  `ORDER_MULTISHIP_OPTION_ID` bigint(20) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_MULTISHIP_OPTION_ID`),
  KEY `MULTISHIP_OPTION_ORDER_INDEX` (`ORDER_ID`),
  KEY `FKB3D3F7D6C13085DD` (`ADDRESS_ID`),
  KEY `FKB3D3F7D681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKB3D3F7D689FE8A02` (`ORDER_ID`),
  KEY `FKB3D3F7D69AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB3D3F7D689FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKB3D3F7D69AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D6C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_multiship_option`
--

LOCK TABLES `blc_order_multiship_option` WRITE;
/*!40000 ALTER TABLE `blc_order_multiship_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_multiship_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_offer_code_xref`
--

DROP TABLE IF EXISTS `blc_order_offer_code_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_offer_code_xref` (
  `ORDER_ID` bigint(20) NOT NULL,
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  KEY `FKFDF0E8533BB10F6D` (`OFFER_CODE_ID`),
  KEY `FKFDF0E85389FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKFDF0E8533BB10F6D` FOREIGN KEY (`OFFER_CODE_ID`) REFERENCES `blc_offer_code` (`OFFER_CODE_ID`),
  CONSTRAINT `FKFDF0E85389FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_offer_code_xref`
--

LOCK TABLES `blc_order_offer_code_xref` WRITE;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment`
--

DROP TABLE IF EXISTS `blc_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_payment` (
  `ORDER_PAYMENT_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_PAYMENT_ID`),
  KEY `ORDERPAYMENT_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `ORDERPAYMENT_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERPAYMENT_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `ORDERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK9517A14FC13085DD` (`ADDRESS_ID`),
  KEY `FK9517A14F89FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK9517A14F89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK9517A14FC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment`
--

LOCK TABLES `blc_order_payment` WRITE;
/*!40000 ALTER TABLE `blc_order_payment` DISABLE KEYS */;
INSERT INTO `blc_order_payment` VALUES (1,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',51,601),(2,9.99000,'N','Passthrough',NULL,'COD',NULL,601),(3,44.97000,'Y','Temporary',NULL,'CREDIT_CARD',53,251),(4,44.97000,'N','Passthrough',NULL,'COD',NULL,251),(51,26.99000,'Y','Temporary',NULL,'CREDIT_CARD',101,651),(52,26.99000,'N','Passthrough',NULL,'COD',NULL,651),(101,34.99000,'Y','Temporary',NULL,'CREDIT_CARD',151,701),(102,34.99000,'N','Passthrough',NULL,'COD',NULL,701),(151,16.98000,'Y','Temporary',NULL,'CREDIT_CARD',201,2651),(152,16.98000,'N','Passthrough',NULL,'COD',NULL,2651),(201,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',251,2801),(202,9.99000,'N','Passthrough',NULL,'COD',NULL,2801),(251,34.98000,'Y','Temporary',NULL,'CREDIT_CARD',301,2851),(252,34.98000,'N','Passthrough',NULL,'COD',NULL,2851),(301,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',351,2901),(302,9.99000,'N','Passthrough',NULL,'COD',NULL,2901),(351,9.99000,'N','Temporary',NULL,'CREDIT_CARD',401,3101),(401,4.99000,'N','Temporary',NULL,'CREDIT_CARD',451,3151),(451,9.99000,'N','Temporary',NULL,'CREDIT_CARD',501,3201),(501,4.99000,'N','Passthrough',NULL,'COD',NULL,3251),(502,4.99000,'N','Temporary',NULL,'CREDIT_CARD',551,3252),(551,4.99000,'Y','Temporary',NULL,'CREDIT_CARD',601,3301),(552,4.99000,'N','Passthrough',NULL,'COD',NULL,3301),(601,29.98000,'Y','Temporary',NULL,'CREDIT_CARD',651,3351),(602,29.98000,'N','Passthrough',NULL,'COD',NULL,3351),(651,30.00000,'N','Temporary',NULL,'CREDIT_CARD',701,3801),(652,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',702,3802),(653,20.00000,'N','Passthrough',NULL,'COD',NULL,3802),(701,20.00000,'N','Temporary',NULL,'CREDIT_CARD',751,3851),(751,4570.00000,'N','Temporary',NULL,'CREDIT_CARD',801,4302),(752,20.00000,'N','Temporary',NULL,'CREDIT_CARD',802,4301),(801,20.00000,'N','Temporary',NULL,'CREDIT_CARD',851,4351),(851,20.00000,'N','Temporary',NULL,'CREDIT_CARD',901,4551),(901,20.00000,'N','Temporary',NULL,'CREDIT_CARD',951,4601),(951,20.00000,'N','Temporary',NULL,'CREDIT_CARD',1001,4751),(1001,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1051,4801),(1002,20.00000,'N','Passthrough',NULL,'COD',NULL,4801);
/*!40000 ALTER TABLE `blc_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment_transaction`
--

DROP TABLE IF EXISTS `blc_order_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_payment_transaction` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `TRANSACTION_AMOUNT` decimal(19,2) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CUSTOMER_IP_ADDRESS` varchar(255) DEFAULT NULL,
  `DATE_RECORDED` datetime DEFAULT NULL,
  `RAW_RESPONSE` longtext,
  `SAVE_TOKEN` tinyint(1) DEFAULT NULL,
  `SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_PAYMENT` bigint(20) NOT NULL,
  `PARENT_TRANSACTION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`),
  KEY `FK86FDE7CE6A69DD9D` (`ORDER_PAYMENT`),
  KEY `FK86FDE7CEE1B66C71` (`PARENT_TRANSACTION`),
  CONSTRAINT `FK86FDE7CE6A69DD9D` FOREIGN KEY (`ORDER_PAYMENT`) REFERENCES `blc_order_payment` (`ORDER_PAYMENT_ID`),
  CONSTRAINT `FK86FDE7CEE1B66C71` FOREIGN KEY (`PARENT_TRANSACTION`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment_transaction`
--

LOCK TABLES `blc_order_payment_transaction` WRITE;
/*!40000 ALTER TABLE `blc_order_payment_transaction` DISABLE KEYS */;
INSERT INTO `blc_order_payment_transaction` VALUES (1,9.99,'N',NULL,'2016-12-28 19:39:20','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',2,NULL),(2,44.97,'N',NULL,'2016-12-28 19:41:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',4,NULL),(51,26.99,'N',NULL,'2016-12-29 12:00:27','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',52,NULL),(101,34.99,'N',NULL,'2016-12-29 12:26:52','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',102,NULL),(151,16.98,'N',NULL,'2017-01-03 19:31:38','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',152,NULL),(201,9.99,'N',NULL,'2017-01-04 12:53:21','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',202,NULL),(251,34.98,'N',NULL,'2017-01-04 13:24:51','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',252,NULL),(301,9.99,'N',NULL,'2017-01-04 13:30:56','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',302,NULL),(351,4.99,'N',NULL,'2017-01-04 19:48:18','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',501,NULL),(401,4.99,'N',NULL,'2017-01-04 20:01:15','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',552,NULL),(451,29.98,'N',NULL,'2017-01-05 10:29:59','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',602,NULL),(501,20.00,'N',NULL,'2017-01-14 13:04:18','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',653,NULL),(551,20.00,'N',NULL,'2017-01-15 13:41:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1002,NULL);
/*!40000 ALTER TABLE `blc_order_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page`
--

DROP TABLE IF EXISTS `blc_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page` (
  `PAGE_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXCLUDE_FROM_SITE_MAP` tinyint(1) DEFAULT NULL,
  `FULL_URL` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  KEY `PAGE_FULL_URL_INDEX` (`FULL_URL`),
  KEY `FKF41BEDD5D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FKF41BEDD5D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page`
--

LOCK TABLES `blc_page` WRITE;
/*!40000 ALTER TABLE `blc_page` DISABLE KEYS */;
INSERT INTO `blc_page` VALUES (1,NULL,NULL,'About Us',NULL,'/about_us',NULL,NULL,NULL,NULL,1),(2,NULL,NULL,'FAQ',NULL,'/faq',NULL,NULL,NULL,NULL,1),(3,NULL,NULL,'New to Hot Sauce',NULL,'/new-to-hot-sauce',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_attributes`
--

DROP TABLE IF EXISTS `blc_page_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_attributes` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `PAGEATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `PAGEATTRIBUTE_INDEX` (`PAGE_ID`),
  KEY `FK4FE27601883C2667` (`PAGE_ID`),
  CONSTRAINT `FK4FE27601883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_attributes`
--

LOCK TABLES `blc_page_attributes` WRITE;
/*!40000 ALTER TABLE `blc_page_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_fld`
--

DROP TABLE IF EXISTS `blc_page_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_fld` (
  `PAGE_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PAGE_FLD_ID`),
  KEY `FK86433AD4883C2667` (`PAGE_ID`),
  CONSTRAINT `FK86433AD4883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_fld`
--

LOCK TABLES `blc_page_fld` WRITE;
/*!40000 ALTER TABLE `blc_page_fld` DISABLE KEYS */;
INSERT INTO `blc_page_fld` VALUES (1,'body',NULL,'test content',1),(2,'title',NULL,'test title',1),(3,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2><h4 style=\"text-align:center;\"><a href=\"http://www.broadleafcommerce.com/features/content\">Click Here</a> to see more about Content Management in Broadleaf.</h4>',2),(4,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2>',3);
/*!40000 ALTER TABLE `blc_page_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_item_criteria`
--

DROP TABLE IF EXISTS `blc_page_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_item_criteria` (
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`PAGE_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_item_criteria`
--

LOCK TABLES `blc_page_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_page_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule`
--

DROP TABLE IF EXISTS `blc_page_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_rule` (
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`PAGE_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule`
--

LOCK TABLES `blc_page_rule` WRITE;
/*!40000 ALTER TABLE `blc_page_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule_map`
--

DROP TABLE IF EXISTS `blc_page_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_rule_map` (
  `BLC_PAGE_PAGE_ID` bigint(20) NOT NULL,
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_PAGE_PAGE_ID`,`MAP_KEY`),
  KEY `FK1ABA0CA336D91846` (`PAGE_RULE_ID`),
  KEY `FK1ABA0CA3C38455DD` (`BLC_PAGE_PAGE_ID`),
  CONSTRAINT `FK1ABA0CA336D91846` FOREIGN KEY (`PAGE_RULE_ID`) REFERENCES `blc_page_rule` (`PAGE_RULE_ID`),
  CONSTRAINT `FK1ABA0CA3C38455DD` FOREIGN KEY (`BLC_PAGE_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule_map`
--

LOCK TABLES `blc_page_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_page_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_tmplt`
--

DROP TABLE IF EXISTS `blc_page_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_tmplt` (
  `PAGE_TMPLT_ID` bigint(20) NOT NULL,
  `TMPLT_DESCR` varchar(255) DEFAULT NULL,
  `TMPLT_NAME` varchar(255) DEFAULT NULL,
  `TMPLT_PATH` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAGE_TMPLT_ID`),
  KEY `FK325C9D5A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK325C9D5A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_tmplt`
--

LOCK TABLES `blc_page_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_page_tmplt` DISABLE KEYS */;
INSERT INTO `blc_page_tmplt` VALUES (-3,'Outputs the body field.','NONE','NONE',NULL),(1,'This template provides a basic layout with header and footer surrounding the content and title.','Basic Template','/content/default',NULL);
/*!40000 ALTER TABLE `blc_page_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_payment_log`
--

DROP TABLE IF EXISTS `blc_payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_payment_log` (
  `PAYMENT_LOG_ID` bigint(20) NOT NULL,
  `AMOUNT_PAID` decimal(19,5) DEFAULT NULL,
  `EXCEPTION_MESSAGE` varchar(255) DEFAULT NULL,
  `LOG_TYPE` varchar(255) NOT NULL,
  `ORDER_PAYMENT_ID` bigint(20) DEFAULT NULL,
  `ORDER_PAYMENT_REF_NUM` varchar(255) DEFAULT NULL,
  `TRANSACTION_SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TIMESTAMP` datetime NOT NULL,
  `TRANSACTION_TYPE` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_LOG_ID`),
  KEY `PAYMENTLOG_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `PAYMENTLOG_LOGTYPE_INDEX` (`LOG_TYPE`),
  KEY `PAYMENTLOG_ORDERPAYMENT_INDEX` (`ORDER_PAYMENT_ID`),
  KEY `PAYMENTLOG_REFERENCE_INDEX` (`ORDER_PAYMENT_REF_NUM`),
  KEY `PAYMENTLOG_TRANTYPE_INDEX` (`TRANSACTION_TYPE`),
  KEY `PAYMENTLOG_USER_INDEX` (`USER_NAME`),
  KEY `FKA43703453E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKA43703457470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKA43703453E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKA43703457470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_payment_log`
--

LOCK TABLES `blc_payment_log` WRITE;
/*!40000 ALTER TABLE `blc_payment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_personal_message`
--

DROP TABLE IF EXISTS `blc_personal_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_personal_message` (
  `PERSONAL_MESSAGE_ID` bigint(20) NOT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `MESSAGE_FROM` varchar(255) DEFAULT NULL,
  `MESSAGE_TO` varchar(255) DEFAULT NULL,
  `OCCASION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSONAL_MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_personal_message`
--

LOCK TABLES `blc_personal_message` WRITE;
/*!40000 ALTER TABLE `blc_personal_message` DISABLE KEYS */;
INSERT INTO `blc_personal_message` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL),(151,NULL,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL),(301,NULL,NULL,NULL,NULL),(351,NULL,NULL,NULL,NULL),(401,NULL,NULL,NULL,NULL),(451,NULL,NULL,NULL,NULL),(501,NULL,NULL,NULL,NULL),(551,NULL,NULL,NULL,NULL),(601,NULL,NULL,NULL,NULL),(602,NULL,NULL,NULL,NULL),(603,NULL,NULL,NULL,NULL),(651,NULL,NULL,NULL,NULL),(701,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `blc_personal_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_pgtmplt_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_pgtmplt_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_pgtmplt_fldgrp_xref` (
  `PG_TMPLT_FLD_GRP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` decimal(10,6) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PG_TMPLT_FLD_GRP_ID`),
  KEY `FK99D625F66A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK99D625F6D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FK99D625F66A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FK99D625F6D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_pgtmplt_fldgrp_xref`
--

LOCK TABLES `blc_pgtmplt_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` DISABLE KEYS */;
INSERT INTO `blc_pgtmplt_fldgrp_xref` VALUES (1,0.000000,1,1),(2,0.000000,-3,-3);
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_phone`
--

DROP TABLE IF EXISTS `blc_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_phone` (
  `PHONE_ID` bigint(20) NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `EXTENSION` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_phone`
--

LOCK TABLES `blc_phone` WRITE;
/*!40000 ALTER TABLE `blc_phone` DISABLE KEYS */;
INSERT INTO `blc_phone` VALUES (1,NULL,NULL,1,0,'12345678900'),(2,NULL,NULL,1,0,'12345678900'),(3,NULL,NULL,1,0,'adad'),(4,NULL,NULL,1,0,'adad'),(51,NULL,NULL,1,0,'dada'),(52,NULL,NULL,1,0,'dada'),(101,NULL,NULL,1,0,'12345678900'),(102,NULL,NULL,1,0,'12345678900'),(151,NULL,NULL,1,0,'12345678900'),(152,NULL,NULL,1,0,'12345678900'),(201,NULL,NULL,1,0,'12345678900'),(202,NULL,NULL,1,0,'12345678900'),(251,NULL,NULL,1,0,'adad'),(252,NULL,NULL,1,0,'adad'),(301,NULL,NULL,1,0,'12345678900'),(302,NULL,NULL,1,0,'12345678900'),(351,NULL,NULL,1,0,'12345678900'),(352,NULL,NULL,1,0,'12345678900'),(401,NULL,NULL,1,0,'12345678900'),(451,NULL,NULL,1,0,'12345678900'),(452,NULL,NULL,1,0,'12345678900'),(501,NULL,NULL,1,0,'12345678900'),(551,NULL,NULL,1,0,'12345678900'),(552,NULL,NULL,1,0,'12345678900'),(601,NULL,NULL,1,0,'12345678900'),(602,NULL,NULL,1,0,'12345678900'),(651,NULL,NULL,1,0,'99999999999999999999'),(652,NULL,NULL,1,0,'9425348257'),(653,NULL,NULL,1,0,'9425348257'),(701,NULL,NULL,1,0,'9425348257'),(751,NULL,NULL,1,0,'9425348257'),(801,NULL,NULL,1,0,'9425348257'),(802,NULL,NULL,1,0,'9425348257'),(851,NULL,NULL,1,0,'9425348257'),(901,NULL,NULL,1,0,'9425348257'),(951,NULL,NULL,1,0,'9425348257'),(952,NULL,NULL,1,0,'9425348257');
/*!40000 ALTER TABLE `blc_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product`
--

DROP TABLE IF EXISTS `blc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CAN_SELL_WITHOUT_OPTIONS` tinyint(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `IS_FEATURED_PRODUCT` tinyint(1) NOT NULL,
  `MANUFACTURE` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  `DEFAULT_SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PRODUCT_CATEGORY_INDEX` (`DEFAULT_CATEGORY_ID`),
  KEY `PRODUCT_URL_INDEX` (`URL`,`URL_KEY`),
  KEY `FK5B95B7C9DF057C3F` (`DEFAULT_CATEGORY_ID`),
  KEY `FK5B95B7C96D386535` (`DEFAULT_SKU_ID`),
  CONSTRAINT `FK5B95B7C96D386535` FOREIGN KEY (`DEFAULT_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FK5B95B7C9DF057C3F` FOREIGN KEY (`DEFAULT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product`
--

LOCK TABLES `blc_product` WRITE;
/*!40000 ALTER TABLE `blc_product` DISABLE KEYS */;
INSERT INTO `blc_product` VALUES (600,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_mascot_womens',NULL,NULL,NULL),(610,'N',0,NULL,0,NULL,NULL,0,'/decoration/chair',NULL,NULL,646),(660,'N',0,NULL,0,NULL,NULL,0,'/mens/curve-stage',NULL,NULL,694),(661,'N',0,NULL,0,NULL,NULL,0,'/hot-sauces/stage-b',NULL,NULL,695),(710,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table',NULL,NULL,744),(711,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table-with-cover--top',NULL,NULL,745),(712,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/sofa-with-cover',NULL,NULL,746),(713,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/leather-sofa',NULL,NULL,747),(714,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion',NULL,NULL,748),(715,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion-with-cover',NULL,NULL,749),(716,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion-with-cover--ribbon',NULL,NULL,750),(717,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-printed-pandal',NULL,NULL,751),(718,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-white-pandal',NULL,NULL,752),(719,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-white-with-bengali-fabric-work',NULL,NULL,753),(720,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal',NULL,NULL,754),(721,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet',NULL,NULL,755),(722,'N',0,NULL,0,NULL,NULL,0,'/phere-chawari/chawari',NULL,NULL,756),(760,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/front-truss-combo-1',NULL,NULL,794),(761,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/front-truss-combo-2',NULL,NULL,795),(762,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/box-truss',NULL,NULL,796),(763,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/box-truss-combo-2',NULL,NULL,797),(764,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-4000-watt',NULL,NULL,798),(765,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-8000-watt',NULL,NULL,799),(766,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-12000-watt',NULL,NULL,800),(767,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-62kva',NULL,NULL,801),(768,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-125-kva',NULL,NULL,802),(769,'N',0,NULL,0,NULL,NULL,0,'/reception-light/metal-light',NULL,NULL,803),(770,'N',0,NULL,0,NULL,NULL,0,'/reception-light/parken-light-regular',NULL,NULL,804),(771,'N',0,NULL,0,NULL,NULL,0,'/reception-light/parken-light-led',NULL,NULL,805),(772,'N',0,NULL,0,NULL,NULL,0,'/reception-light/halogen-500-w',NULL,NULL,806),(773,'N',0,NULL,0,NULL,NULL,0,'/reception-light/halogen-1000-w',NULL,NULL,807),(774,'N',0,NULL,0,NULL,NULL,0,'/reception-light/10000-sqft-area-combo',NULL,NULL,808),(775,'N',0,NULL,0,NULL,NULL,0,'/reception-light/15000-sqft-area-combo',NULL,NULL,809),(776,'N',0,NULL,0,NULL,NULL,0,'/reception-light/20000-sqft-area-combo',NULL,NULL,810),(777,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-1',NULL,NULL,811),(778,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-2',NULL,NULL,812),(779,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-3',NULL,NULL,813),(780,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-1',NULL,NULL,814),(781,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-2',NULL,NULL,815),(782,'N',0,NULL,0,NULL,NULL,0,'/ghori/chatar-for-groom',NULL,NULL,816),(783,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-1',NULL,NULL,817),(784,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-2',NULL,NULL,818),(785,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-3',NULL,NULL,819),(786,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-1',NULL,NULL,820),(810,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-2',NULL,NULL,844),(811,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-2',NULL,NULL,845),(812,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-3',NULL,NULL,846),(813,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-1000-pax',NULL,NULL,847),(814,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-1500',NULL,NULL,848),(815,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-2000',NULL,NULL,849),(816,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-812',NULL,NULL,850),(817,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-1012',NULL,NULL,851),(818,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-sliding',NULL,NULL,852),(860,'N',0,NULL,0,NULL,NULL,0,'/services/alaav',NULL,NULL,894),(861,'N',0,NULL,0,NULL,NULL,0,'/services/gas-heater',NULL,NULL,895),(862,'N',0,NULL,0,NULL,NULL,0,'/hot-sauces/selfie-corner',NULL,NULL,896),(910,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/sofa-cushioned-with-cover',NULL,NULL,944),(911,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table-with-cover-nylon-top',NULL,NULL,945),(912,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal-1',NULL,NULL,946),(913,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal-2',NULL,NULL,947),(914,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet-blue',NULL,NULL,948),(915,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet-red',NULL,NULL,949),(916,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-2000-watt',NULL,NULL,950),(917,'N',0,NULL,1,NULL,NULL,0,'/sangeet-sound-dj/dance-floor',NULL,NULL,951),(918,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/linery-system',NULL,NULL,952),(960,'N',0,NULL,0,NULL,NULL,0,'/anchor/male-anchor',NULL,NULL,1006),(961,'N',0,NULL,1,NULL,NULL,0,'/anchor/male-anchor--mimicry-artist',NULL,NULL,1007),(1010,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-normal',NULL,NULL,1044),(1011,'N',0,NULL,0,NULL,NULL,0,'/ghori/white-noori-ghodi',NULL,NULL,1045),(1012,'N',0,NULL,0,NULL,NULL,0,'/ghori/white-noori-ghodi--chatar',NULL,NULL,1049),(1060,'N',0,NULL,0,NULL,NULL,0,'/alaav/gas-heater',NULL,NULL,1094);
/*!40000 ALTER TABLE `blc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_attribute`
--

DROP TABLE IF EXISTS `blc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_attribute` (
  `PRODUCT_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ATTRIBUTE_ID`),
  KEY `PRODUCTATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `PRODUCTATTRIBUTE_INDEX` (`PRODUCT_ID`),
  KEY `FK56CE05865F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK56CE05865F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_attribute`
--

LOCK TABLES `blc_product_attribute` WRITE;
/*!40000 ALTER TABLE `blc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_bundle`
--

DROP TABLE IF EXISTS `blc_product_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_bundle` (
  `AUTO_BUNDLE` tinyint(1) DEFAULT NULL,
  `BUNDLE_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `ITEMS_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `PRICING_MODEL` varchar(255) DEFAULT NULL,
  `BUNDLE_PRIORITY` int(11) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FK8CC5B85F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK8CC5B85F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_bundle`
--

LOCK TABLES `blc_product_bundle` WRITE;
/*!40000 ALTER TABLE `blc_product_bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_cross_sale`
--

DROP TABLE IF EXISTS `blc_product_cross_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_cross_sale` (
  `CROSS_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CROSS_SALE_PRODUCT_ID`),
  KEY `CROSSSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `CROSSSALE_INDEX` (`PRODUCT_ID`),
  KEY `CROSSSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FK8324FB3C15D1A13D` (`CATEGORY_ID`),
  KEY `FK8324FB3C5F11A0B7` (`PRODUCT_ID`),
  KEY `FK8324FB3C62D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK8324FB3C5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C62D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_cross_sale`
--

LOCK TABLES `blc_product_cross_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_cross_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_cross_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_featured`
--

DROP TABLE IF EXISTS `blc_product_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_featured` (
  `FEATURED_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FEATURED_PRODUCT_ID`),
  KEY `PRODFEATURED_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `PRODFEATURED_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `FK4C49FFE415D1A13D` (`CATEGORY_ID`),
  KEY `FK4C49FFE45F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK4C49FFE415D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK4C49FFE45F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_featured`
--

LOCK TABLES `blc_product_featured` WRITE;
/*!40000 ALTER TABLE `blc_product_featured` DISABLE KEYS */;
INSERT INTO `blc_product_featured` VALUES (1,NULL,1.000000,2001,961),(2,NULL,2.000000,2001,961),(3,NULL,3.000000,2001,961),(4,NULL,4.000000,2001,961),(5,NULL,1.000000,2003,961),(8,NULL,1.000000,2002,961),(9,NULL,2.000000,2002,961),(10,NULL,3.000000,2002,961);
/*!40000 ALTER TABLE `blc_product_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option`
--

DROP TABLE IF EXISTS `blc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option` (
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_NAME` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ERROR_CODE` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALIDATION_STRATEGY_TYPE` varchar(255) DEFAULT NULL,
  `VALIDATION_TYPE` varchar(255) DEFAULT NULL,
  `REQUIRED` tinyint(1) DEFAULT NULL,
  `OPTION_TYPE` varchar(255) DEFAULT NULL,
  `USE_IN_SKU_GENERATION` tinyint(1) DEFAULT NULL,
  `VALIDATION_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_ID`),
  KEY `PRODUCT_OPTION_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option`
--

LOCK TABLES `blc_product_option` WRITE;
/*!40000 ALTER TABLE `blc_product_option` DISABLE KEYS */;
INSERT INTO `blc_product_option` VALUES (1,'COLOR',NULL,NULL,NULL,'Color','Chair Cover Color','NONE',NULL,1,'COLOR',1,NULL),(2,'SIZE',NULL,NULL,NULL,'Shirt Size','Shirt Size','NONE',NULL,1,'SIZE',NULL,NULL),(3,'NAME',NULL,'INVALID_NAME','Name must be less than 30 characters, with only letters and spaces','Personalized Name','Personalized Name','SUBMIT_ORDER','REGEX',0,'TEXT',0,'[a-zA-Z ]{0,30}'),(13,'Days',NULL,NULL,NULL,'Days','Days','NONE',NULL,1,'INTEGER',1,NULL),(63,'Ribbon Colour',NULL,NULL,NULL,'Ribbon Colour','Ribbon Colour','NONE',NULL,1,'COLOR',1,NULL),(64,'Leather Sofa Type',NULL,NULL,NULL,'Leather Sofa Colour','Leather Sofa Colour','NONE',NULL,1,'COLOR',0,NULL);
/*!40000 ALTER TABLE `blc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_value`
--

DROP TABLE IF EXISTS `blc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option_value` (
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_VALUE` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` bigint(20) DEFAULT NULL,
  `PRICE_ADJUSTMENT` decimal(19,5) DEFAULT NULL,
  `PRODUCT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK6DEEEDBD92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FK6DEEEDBD92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_value`
--

LOCK TABLES `blc_product_option_value` WRITE;
/*!40000 ALTER TABLE `blc_product_option_value` DISABLE KEYS */;
INSERT INTO `blc_product_option_value` VALUES (1,'White',1,NULL,1),(2,'Golden',2,NULL,1),(3,'Black',3,NULL,1),(11,'S',1,NULL,2),(12,'M',2,NULL,2),(13,'L',3,NULL,2),(14,'XL',4,NULL,2),(24,'1',1,NULL,13),(25,'2',2,NULL,13),(26,'3',3,NULL,13),(74,'Red',NULL,NULL,63),(75,'Blue',NULL,NULL,63),(76,'Pink',NULL,NULL,63),(77,'Yellow',NULL,NULL,63),(78,'Orange',NULL,NULL,63),(79,'Green',NULL,NULL,63),(80,'Mazenda',NULL,NULL,63),(81,'Brown',NULL,NULL,64),(82,'White',NULL,NULL,64);
/*!40000 ALTER TABLE `blc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_xref`
--

DROP TABLE IF EXISTS `blc_product_option_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option_xref` (
  `PRODUCT_OPTION_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_XREF_ID`),
  KEY `FKDA42AB2F5F11A0B7` (`PRODUCT_ID`),
  KEY `FKDA42AB2F92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FKDA42AB2F5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKDA42AB2F92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_xref`
--

LOCK TABLES `blc_product_option_xref` WRITE;
/*!40000 ALTER TABLE `blc_product_option_xref` DISABLE KEYS */;
INSERT INTO `blc_product_option_xref` VALUES (23,610,13),(73,715,1),(74,712,1),(75,716,1),(76,716,63),(77,713,64),(78,710,1),(79,711,1),(80,711,63),(81,911,1);
/*!40000 ALTER TABLE `blc_product_option_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_up_sale`
--

DROP TABLE IF EXISTS `blc_product_up_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_up_sale` (
  `UP_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UP_SALE_PRODUCT_ID`),
  KEY `UPSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `UPSALE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `UPSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FKF69054F515D1A13D` (`CATEGORY_ID`),
  KEY `FKF69054F55F11A0B7` (`PRODUCT_ID`),
  KEY `FKF69054F562D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FKF69054F515D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKF69054F55F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKF69054F562D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_up_sale`
--

LOCK TABLES `blc_product_up_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_up_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_up_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_offer_xref` (
  `OFFER_QUAL_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_QUAL_CRIT_ID`),
  KEY `FKD592E919D5F3FAF4` (`OFFER_ID`),
  KEY `FKD592E9193615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E9193615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E919D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_offer_xref`
--

LOCK TABLES `blc_qual_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_page_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_page_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_page_xref` (
  `PAGE_ID` bigint(20) NOT NULL,
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PAGE_ID`,`PAGE_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_874BE5902B6BC67F` (`PAGE_ITEM_CRITERIA_ID`),
  KEY `FK874BE590883C2667` (`PAGE_ID`),
  KEY `FK874BE590378418CD` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590378418CD` FOREIGN KEY (`PAGE_ITEM_CRITERIA_ID`) REFERENCES `blc_page_item_criteria` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_page_xref`
--

LOCK TABLES `blc_qual_crit_page_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_sc_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_sc_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_sc_xref` (
  `SC_ID` bigint(20) NOT NULL,
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SC_ID`,`SC_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_C4A353AFFF06F4DE` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF85C77F2B` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF13D95585` (`SC_ID`),
  CONSTRAINT `FKC4A353AF13D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FKC4A353AF85C77F2B` FOREIGN KEY (`SC_ITEM_CRITERIA_ID`) REFERENCES `blc_sc_item_criteria` (`SC_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_sc_xref`
--

LOCK TABLES `blc_qual_crit_sc_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_detail`
--

DROP TABLE IF EXISTS `blc_rating_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_rating_detail` (
  `RATING_DETAIL_ID` bigint(20) NOT NULL,
  `RATING` double NOT NULL,
  `RATING_SUBMITTED_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`RATING_DETAIL_ID`),
  KEY `RATING_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `FKC9D04AD7470F437` (`CUSTOMER_ID`),
  KEY `FKC9D04ADD4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FKC9D04AD7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKC9D04ADD4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_detail`
--

LOCK TABLES `blc_rating_detail` WRITE;
/*!40000 ALTER TABLE `blc_rating_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_summary`
--

DROP TABLE IF EXISTS `blc_rating_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_rating_summary` (
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  `AVERAGE_RATING` double NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `RATING_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`RATING_SUMMARY_ID`),
  KEY `RATINGSUMM_ITEM_INDEX` (`ITEM_ID`),
  KEY `RATINGSUMM_TYPE_INDEX` (`RATING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_summary`
--

LOCK TABLES `blc_rating_summary` WRITE;
/*!40000 ALTER TABLE `blc_rating_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_detail`
--

DROP TABLE IF EXISTS `blc_review_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_review_detail` (
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  `HELPFUL_COUNT` int(11) NOT NULL,
  `NOT_HELPFUL_COUNT` int(11) NOT NULL,
  `REVIEW_SUBMITTED_DATE` datetime NOT NULL,
  `REVIEW_STATUS` varchar(255) NOT NULL,
  `REVIEW_TEXT` varchar(255) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_DETAIL_ID` bigint(20) DEFAULT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_DETAIL_ID`),
  KEY `REVIEWDETAIL_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWDETAIL_RATING_INDEX` (`RATING_DETAIL_ID`),
  KEY `REVIEWDETAIL_SUMMARY_INDEX` (`RATING_SUMMARY_ID`),
  KEY `REVIEWDETAIL_STATUS_INDEX` (`REVIEW_STATUS`),
  KEY `FK9CD7E6927470F437` (`CUSTOMER_ID`),
  KEY `FK9CD7E69245DC39E0` (`RATING_DETAIL_ID`),
  KEY `FK9CD7E692D4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FK9CD7E69245DC39E0` FOREIGN KEY (`RATING_DETAIL_ID`) REFERENCES `blc_rating_detail` (`RATING_DETAIL_ID`),
  CONSTRAINT `FK9CD7E6927470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK9CD7E692D4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_detail`
--

LOCK TABLES `blc_review_detail` WRITE;
/*!40000 ALTER TABLE `blc_review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_feedback`
--

DROP TABLE IF EXISTS `blc_review_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_review_feedback` (
  `REVIEW_FEEDBACK_ID` bigint(20) NOT NULL,
  `IS_HELPFUL` tinyint(1) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_FEEDBACK_ID`),
  KEY `REVIEWFEED_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWFEED_DETAIL_INDEX` (`REVIEW_DETAIL_ID`),
  KEY `FK7CC929867470F437` (`CUSTOMER_ID`),
  KEY `FK7CC92986AE4769D6` (`REVIEW_DETAIL_ID`),
  CONSTRAINT `FK7CC929867470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK7CC92986AE4769D6` FOREIGN KEY (`REVIEW_DETAIL_ID`) REFERENCES `blc_review_detail` (`REVIEW_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_feedback`
--

LOCK TABLES `blc_review_feedback` WRITE;
/*!40000 ALTER TABLE `blc_review_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_role`
--

DROP TABLE IF EXISTS `blc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_role` (
  `ROLE_ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME_INDEX` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_role`
--

LOCK TABLES `blc_role` WRITE;
/*!40000 ALTER TABLE `blc_role` DISABLE KEYS */;
INSERT INTO `blc_role` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `blc_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox`
--

DROP TABLE IF EXISTS `blc_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sandbox` (
  `SANDBOX_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `AUTHOR` bigint(20) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GO_LIVE_DATE` datetime DEFAULT NULL,
  `SANDBOX_NAME` varchar(255) DEFAULT NULL,
  `SANDBOX_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_SANDBOX_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SANDBOX_ID`),
  KEY `SANDBOX_NAME_INDEX` (`SANDBOX_NAME`),
  KEY `FKDD37A9A174160452` (`PARENT_SANDBOX_ID`),
  CONSTRAINT `FKDD37A9A174160452` FOREIGN KEY (`PARENT_SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox`
--

LOCK TABLES `blc_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_sandbox` DISABLE KEYS */;
INSERT INTO `blc_sandbox` VALUES (1,'N',NULL,'2016-12-27 20:04:45','2016-12-27 20:04:45',NULL,NULL,'#20C0F0',NULL,NULL,'Default','DEFAULT',NULL),(2,'N',NULL,'2016-12-27 20:04:46','2016-12-27 20:04:46',NULL,-1,NULL,NULL,NULL,'Default','USER',1),(51,'N',NULL,NULL,NULL,NULL,-4,NULL,NULL,NULL,'Default','USER',1);
/*!40000 ALTER TABLE `blc_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox_mgmt`
--

DROP TABLE IF EXISTS `blc_sandbox_mgmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sandbox_mgmt` (
  `SANDBOX_MGMT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `SANDBOX_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SANDBOX_MGMT_ID`),
  UNIQUE KEY `UK_4845009FE52B6993` (`SANDBOX_ID`),
  KEY `FK4845009F579FE59D` (`SANDBOX_ID`),
  CONSTRAINT `FK4845009F579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox_mgmt`
--

LOCK TABLES `blc_sandbox_mgmt` WRITE;
/*!40000 ALTER TABLE `blc_sandbox_mgmt` DISABLE KEYS */;
INSERT INTO `blc_sandbox_mgmt` VALUES (1,NULL,'2016-12-27 20:04:45','2016-12-27 20:04:45',NULL,1),(2,NULL,'2016-12-27 20:04:46','2016-12-27 20:04:46',NULL,2),(51,NULL,NULL,NULL,NULL,51);
/*!40000 ALTER TABLE `blc_sandbox_mgmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc`
--

DROP TABLE IF EXISTS `blc_sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc` (
  `SC_ID` bigint(20) NOT NULL,
  `CONTENT_NAME` varchar(255) NOT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL,
  `LOCALE_CODE` varchar(255) NOT NULL,
  `SC_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ID`),
  KEY `CONTENT_NAME_INDEX` (`CONTENT_NAME`),
  KEY `SC_OFFLN_FLG_INDX` (`OFFLINE_FLAG`),
  KEY `CONTENT_PRIORITY_INDEX` (`PRIORITY`),
  KEY `FK74EEB716A1E1C128` (`LOCALE_CODE`),
  KEY `FK74EEB71671EBFA46` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB71671EBFA46` FOREIGN KEY (`SC_TYPE_ID`) REFERENCES `blc_sc_type` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB716A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc`
--

LOCK TABLES `blc_sc` WRITE;
/*!40000 ALTER TABLE `blc_sc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld`
--

DROP TABLE IF EXISTS `blc_sc_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld` (
  `SC_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld`
--

LOCK TABLES `blc_sc_fld` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_map`
--

DROP TABLE IF EXISTS `blc_sc_fld_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld_map` (
  `BLC_SC_SC_FIELD_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `SC_ID` bigint(20) NOT NULL,
  `SC_FLD_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BLC_SC_SC_FIELD_ID`),
  KEY `FKD948019213D95585` (`SC_ID`),
  KEY `FKD9480192DD6FD28A` (`SC_FLD_ID`),
  CONSTRAINT `FKD948019213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FKD9480192DD6FD28A` FOREIGN KEY (`SC_FLD_ID`) REFERENCES `blc_sc_fld` (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_map`
--

LOCK TABLES `blc_sc_fld_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_tmplt`
--

DROP TABLE IF EXISTS `blc_sc_fld_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld_tmplt` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_tmplt`
--

LOCK TABLES `blc_sc_fld_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_sc_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fldgrp_xref` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`,`GROUP_ORDER`),
  KEY `FK71612AEA6A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK71612AEAF6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FK71612AEA6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FK71612AEAF6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fldgrp_xref`
--

LOCK TABLES `blc_sc_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_item_criteria`
--

DROP TABLE IF EXISTS `blc_sc_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_item_criteria` (
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  `SC_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ITEM_CRITERIA_ID`),
  KEY `FK6D52BDA213D95585` (`SC_ID`),
  CONSTRAINT `FK6D52BDA213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_item_criteria`
--

LOCK TABLES `blc_sc_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_sc_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule`
--

DROP TABLE IF EXISTS `blc_sc_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_rule` (
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule`
--

LOCK TABLES `blc_sc_rule` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule_map`
--

DROP TABLE IF EXISTS `blc_sc_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_rule_map` (
  `BLC_SC_SC_ID` bigint(20) NOT NULL,
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_SC_SC_ID`,`MAP_KEY`),
  KEY `FK169F1C8256E51A06` (`SC_RULE_ID`),
  KEY `FK169F1C82156E72FC` (`BLC_SC_SC_ID`),
  CONSTRAINT `FK169F1C82156E72FC` FOREIGN KEY (`BLC_SC_SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FK169F1C8256E51A06` FOREIGN KEY (`SC_RULE_ID`) REFERENCES `blc_sc_rule` (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule_map`
--

LOCK TABLES `blc_sc_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_type`
--

DROP TABLE IF EXISTS `blc_sc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_type` (
  `SC_TYPE_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SC_FLD_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_TYPE_ID`),
  KEY `SC_TYPE_NAME_INDEX` (`NAME`),
  KEY `FKE19886C3F6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FKE19886C3F6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_type`
--

LOCK TABLES `blc_sc_type` WRITE;
/*!40000 ALTER TABLE `blc_sc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet`
--

DROP TABLE IF EXISTS `blc_search_facet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet` (
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `MULTISELECT` tinyint(1) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRES_ALL_DEPENDENT` tinyint(1) DEFAULT NULL,
  `SEARCH_DISPLAY_PRIORITY` int(11) DEFAULT NULL,
  `SHOW_ON_SEARCH` tinyint(1) DEFAULT NULL,
  `USE_FACET_RANGES` tinyint(1) DEFAULT NULL,
  `INDEX_FIELD_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_ID`),
  KEY `FK4FFCC986BE3CE566` (`INDEX_FIELD_TYPE_ID`),
  CONSTRAINT `FK4FFCC986BE3CE566` FOREIGN KEY (`INDEX_FIELD_TYPE_ID`) REFERENCES `blc_index_field_type` (`INDEX_FIELD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet`
--

LOCK TABLES `blc_search_facet` WRITE;
/*!40000 ALTER TABLE `blc_search_facet` DISABLE KEYS */;
INSERT INTO `blc_search_facet` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,'Manufacturer','Manufacturer Facet',NULL,0,0,0,2),(2,NULL,NULL,NULL,NULL,NULL,1,'Heat Range','Heat Range Facet',NULL,0,0,0,3),(3,NULL,NULL,NULL,NULL,NULL,1,'Price','Price Facet',NULL,1,1,1,4),(4,NULL,NULL,NULL,NULL,NULL,1,'Color','Color Facet',NULL,0,1,0,9);
/*!40000 ALTER TABLE `blc_search_facet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_range`
--

DROP TABLE IF EXISTS `blc_search_facet_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet_range` (
  `SEARCH_FACET_RANGE_ID` bigint(20) NOT NULL,
  `MAX_VALUE` decimal(19,5) DEFAULT NULL,
  `MIN_VALUE` decimal(19,5) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_RANGE_ID`),
  KEY `SEARCH_FACET_INDEX` (`SEARCH_FACET_ID`),
  KEY `FK7EC3B124B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK7EC3B124B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_range`
--

LOCK TABLES `blc_search_facet_range` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_range` DISABLE KEYS */;
INSERT INTO `blc_search_facet_range` VALUES (1,5.00000,0.00000,3),(2,10.00000,5.00000,3),(3,15.00000,10.00000,3),(4,NULL,15.00000,3);
/*!40000 ALTER TABLE `blc_search_facet_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet_xref` (
  `ID` bigint(20) NOT NULL,
  `REQUIRED_FACET_ID` bigint(20) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK35A63034DA7E1C7C` (`REQUIRED_FACET_ID`),
  KEY `FK35A63034B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034DA7E1C7C` FOREIGN KEY (`REQUIRED_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_xref`
--

LOCK TABLES `blc_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_intercept`
--

DROP TABLE IF EXISTS `blc_search_intercept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_intercept` (
  `SEARCH_REDIRECT_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `SEARCH_TERM` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`SEARCH_REDIRECT_ID`),
  KEY `SEARCH_ACTIVE_INDEX` (`ACTIVE_END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_intercept`
--

LOCK TABLES `blc_search_intercept` WRITE;
/*!40000 ALTER TABLE `blc_search_intercept` DISABLE KEYS */;
INSERT INTO `blc_search_intercept` VALUES (-2,NULL,NULL,NULL,NULL,NULL,NULL,-10,'sale','/clearance'),(-1,NULL,NULL,NULL,NULL,NULL,NULL,1,'insanity','/hot-sauces/insanity_sauce');
/*!40000 ALTER TABLE `blc_search_intercept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_synonym`
--

DROP TABLE IF EXISTS `blc_search_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_synonym` (
  `SEARCH_SYNONYM_ID` bigint(20) NOT NULL,
  `SYNONYMS` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_SYNONYM_ID`),
  KEY `SEARCHSYNONYM_TERM_INDEX` (`TERM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_synonym`
--

LOCK TABLES `blc_search_synonym` WRITE;
/*!40000 ALTER TABLE `blc_search_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_shipping_rate`
--

DROP TABLE IF EXISTS `blc_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_shipping_rate` (
  `ID` bigint(20) NOT NULL,
  `BAND_RESULT_PCT` int(11) NOT NULL,
  `BAND_RESULT_QTY` decimal(19,2) NOT NULL,
  `BAND_UNIT_QTY` decimal(19,2) NOT NULL,
  `FEE_BAND` int(11) NOT NULL,
  `FEE_SUB_TYPE` varchar(255) DEFAULT NULL,
  `FEE_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SHIPPINGRATE_FEESUB_INDEX` (`FEE_SUB_TYPE`),
  KEY `SHIPPINGRATE_FEE_INDEX` (`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_shipping_rate`
--

LOCK TABLES `blc_shipping_rate` WRITE;
/*!40000 ALTER TABLE `blc_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site`
--

DROP TABLE IF EXISTS `blc_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site` (
  `SITE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SITE_ID`),
  KEY `BLC_SITE_ID_VAL_INDEX` (`SITE_IDENTIFIER_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site`
--

LOCK TABLES `blc_site` WRITE;
/*!40000 ALTER TABLE `blc_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_catalog`
--

DROP TABLE IF EXISTS `blc_site_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_catalog` (
  `SITE_CATALOG_XREF_ID` bigint(20) NOT NULL,
  `CATALOG_ID` bigint(20) NOT NULL,
  `SITE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SITE_CATALOG_XREF_ID`),
  KEY `FK5F3F2047A350C7F1` (`CATALOG_ID`),
  KEY `FK5F3F2047843A8B63` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047843A8B63` FOREIGN KEY (`SITE_ID`) REFERENCES `blc_site` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047A350C7F1` FOREIGN KEY (`CATALOG_ID`) REFERENCES `blc_catalog` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_catalog`
--

LOCK TABLES `blc_site_catalog` WRITE;
/*!40000 ALTER TABLE `blc_site_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_cfg` (
  `INDEXED_SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `INDEXED_SITE_MAP_FILE_PATTERN` varchar(255) DEFAULT NULL,
  `MAX_URL_ENTRIES_PER_FILE` int(11) DEFAULT NULL,
  `SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`),
  KEY `FK7012930FC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK7012930FC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_cfg`
--

LOCK TABLES `blc_site_map_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_cfg` VALUES (NULL,NULL,NULL,NULL,-1);
/*!40000 ALTER TABLE `blc_site_map_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `DISABLED` tinyint(1) NOT NULL,
  `GENERATOR_TYPE` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1D76000A340ED71` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK1D76000A340ED71` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_site_map_cfg` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_gen_cfg`
--

LOCK TABLES `blc_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_gen_cfg` VALUES (-8,'HOURLY',1,'SKU','0.5',-1),(-7,'HOURLY',0,'CATEGORY','0.5',-1),(-6,'HOURLY',0,'CATEGORY','0.5',-1),(-5,'HOURLY',0,'CATEGORY','0.5',-1),(-4,'HOURLY',0,'CATEGORY','0.5',-1),(-3,'HOURLY',0,'PAGE','0.5',-1),(-2,'HOURLY',0,'PRODUCT','0.5',-1),(-1,'HOURLY',0,'CUSTOM','0.5',-1);
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_url_entry`
--

DROP TABLE IF EXISTS `blc_site_map_url_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_url_entry` (
  `URL_ENTRY_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `LAST_MODIFIED` datetime NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`URL_ENTRY_ID`),
  KEY `FKE2004FED36AFE1EE` (`GEN_CONFIG_ID`),
  CONSTRAINT `FKE2004FED36AFE1EE` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_cust_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_url_entry`
--

LOCK TABLES `blc_site_map_url_entry` WRITE;
/*!40000 ALTER TABLE `blc_site_map_url_entry` DISABLE KEYS */;
INSERT INTO `blc_site_map_url_entry` VALUES (-8,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/8','0.5',-1),(-7,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/7','0.5',-1),(-6,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/6','0.5',-1),(-5,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/5','0.5',-1),(-4,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/4','0.5',-1),(-3,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/3','0.5',-1),(-2,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/2','0.5',-1),(-1,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/1','0.5',-1);
/*!40000 ALTER TABLE `blc_site_map_url_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku`
--

DROP TABLE IF EXISTS `blc_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku` (
  `SKU_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `AVAILABLE_FLAG` char(1) DEFAULT NULL,
  `COST` decimal(19,5) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTAINER_SHAPE` varchar(255) DEFAULT NULL,
  `DEPTH` decimal(19,2) DEFAULT NULL,
  `DIMENSION_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `GIRTH` decimal(19,2) DEFAULT NULL,
  `HEIGHT` decimal(19,2) DEFAULT NULL,
  `CONTAINER_SIZE` varchar(255) DEFAULT NULL,
  `WIDTH` decimal(19,2) DEFAULT NULL,
  `DISCOUNTABLE_FLAG` char(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `IS_MACHINE_SORTABLE` tinyint(1) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `QUANTITY_AVAILABLE` int(11) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE_FLAG` char(1) DEFAULT NULL,
  `UPC` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `WEIGHT` decimal(19,2) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `DEFAULT_PRODUCT_ID` bigint(20) DEFAULT NULL,
  `ADDL_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_ID`),
  KEY `SKU_ACTIVE_END_INDEX` (`ACTIVE_END_DATE`),
  KEY `SKU_ACTIVE_START_INDEX` (`ACTIVE_START_DATE`),
  KEY `SKU_AVAILABLE_INDEX` (`AVAILABLE_FLAG`),
  KEY `SKU_DISCOUNTABLE_INDEX` (`DISCOUNTABLE_FLAG`),
  KEY `SKU_EXTERNAL_ID_INDEX` (`EXTERNAL_ID`),
  KEY `SKU_NAME_INDEX` (`NAME`),
  KEY `SKU_TAXABLE_INDEX` (`TAXABLE_FLAG`),
  KEY `SKU_UPC_INDEX` (`UPC`),
  KEY `SKU_URL_KEY_INDEX` (`URL_KEY`),
  KEY `FK28E82CF73E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK28E82CF77E555D75` (`DEFAULT_PRODUCT_ID`),
  KEY `FK28E82CF750D6498B` (`ADDL_PRODUCT_ID`),
  CONSTRAINT `FK28E82CF73E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK28E82CF750D6498B` FOREIGN KEY (`ADDL_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FK28E82CF77E555D75` FOREIGN KEY (`DEFAULT_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku`
--

LOCK TABLES `blc_sku` WRITE;
/*!40000 ALTER TABLE `blc_sku` DISABLE KEYS */;
INSERT INTO `blc_sku` VALUES (1,NULL,'2016-12-27 19:55:17',NULL,3.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'As my Chilipals know, I am never one to be satisfied. Hence, the creation of Sudden Death. When you need to go beyond... Sudden Death will deliver! ','Sudden Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'2016-12-27 19:55:17',NULL,3.79000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'The perfect topper for chicken, fish, burgers or pizza. A great blend of Habanero, Mango, Passion Fruit and more make this Death Sauce an amazing tropical treat.','Sweet Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'2016-12-27 19:55:17',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Tangy, ripe cayenne peppes flow together with garlic, onion, tomato paste and a hint of cane sugar to make this a smooth sauce with a bite.  Wonderful on eggs, poultry, pork, or fish, this sauce blends to make rich marinades and soups.','Hoppin\' Hot Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'2016-12-27 19:55:17',NULL,4.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'When any pepper is dried and smoked, it is referred to as a Chipotle. Usually with a wrinkled, drak brown appearance, the Chipotle delivers a smokey, sweet flavor which is generally used for adding a smokey, roasted flavor to salsas, stews and marinades.','Day of the Dead Chipotle Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'2016-12-27 19:55:17',NULL,5.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'If you want hot, this is the chile to choose. Native to the Carribean, Yucatan and Northern Coast of South America, the Habanero presents itself in a variety of colors ranging from light green to a bright red. The Habanero\'s bold heat, unique flavor and aroma has made it the favorite of chile lovers.','Day of the Dead Habanero Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'2016-12-27 19:55:17',NULL,5.40000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Often mistaken for the Habanero, the Scotch Bonnet has a deeply inverted tip as opposed to the pointed end of the Habanero. Ranging in many colors from green to yellow-orange, the Scotch Bonnet is a staple in West Indies and Barbados style pepper sauces.','Day of the Dead Scotch Bonnet Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'2016-12-27 19:55:17',NULL,8.10000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Made with Naga Bhut Jolokia, the World\'s Hottest pepper.','Green Ghost',NULL,11.99000,9.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'2016-12-27 19:55:17',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'You bet your boots, this hot sauce earned its name from folks that appreciate an outstanding hot sauce. What you\'ll find here is a truly original zesty flavor, not an overpowering pungency that is found in those ordinary Tabasco pepper sauces - even though the pepper used in this product was tested at 285,000 Scoville units. So, saddle up for a ride to remember. To make sure we brought you only the finest Habanero pepper sauce, we went to the foothills of the Mayan mountains in Belize, Central America. This product is prepared entirely by hand using only fresh vegetables and all natural ingredients.','Blazin\' Saddle XXX Hot Habanero Pepper Sauce',NULL,4.99000,3.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,'2016-12-27 19:55:17',NULL,5.30000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'All Hell is breaking loose, fire &amp; brimstone rain down? prepare to meet your maker.','Armageddon The Hot Sauce To End All',NULL,12.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,'2016-12-27 19:55:17',NULL,6.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Here is the Prescription for those who enjoy intolerable heat. Dr. Chilemeister\'s sick and evil deadly brew should be used with caution. Pain can become addictive!','Dr. Chilemeister\'s Insane Hot Sauce',NULL,12.99000,10.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'2016-12-27 19:55:17',NULL,2.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Been there, roped that. Hotter than a buckin\' mare in heat! Sprinkle on meat entrees, seafood and vegetables. Use as additive in barbecue sauce or any food that needs a spicy flavor. Start with a few drops and work up to the desired flavor.','Bull Snort Cowboy Cayenne Pepper Hot Sauce',NULL,3.99000,2.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,'2016-12-27 19:55:17',NULL,3.09000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'One of the more unusual sauces we sell. The original was an old style Cajun sauce and this is it\'s updated blackening version. It\'s sweet but you get a great hit of cinnamon and cloves with a nice kick of cayenne heat. Use on all foods to give that Cajun flair!','Cafe Louisiane Sweet Cajun Blackening Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,'2016-12-27 19:55:17',NULL,2.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Everything is bigger in Texas, even the burn of a Bull Snortin\' Hot Sauce! shower on that Texas sized steak they call the Ole 96er or your plane Jane vegetables. If you are a fan on making BBQ sauce from scratch like I am, you can use Bull Snort Smokin\' Tonsils Hot Sauce as an additive. Red hot habaneros and cayenne peppers give this tonsil tingler it\'s famous flavor and red hot heat. Bull Snort Smokin\' Tonsils Hot Sauce\'ll have your bowels buckin\' with just a drop!','Bull Snort Smokin\' Toncils Hot Sauce',NULL,3.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,'2016-12-27 19:55:17',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Cool Cayenne Pepper Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'2016-12-27 19:55:17',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Garlic Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,'2016-12-27 19:55:17',NULL,2.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Scotch Bonnet Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,'2016-12-27 19:55:17',NULL,3.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Insanity Sauce',NULL,5.99000,4.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,'2016-12-27 19:55:17',NULL,3.25000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Hurtin\' Jalapeno Hot Sauce',NULL,5.99000,4.49000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,'2016-12-27 19:55:17',NULL,2.59000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Red Pepper & Chipotle Hot Sauce',NULL,5.99000,4.09000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,'2016-12-27 19:55:17',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle1',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,'2016-12-27 19:55:17',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle2',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,NULL,'2016-12-27 19:55:18',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(112,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(113,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(114,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(121,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(122,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(123,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(124,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(131,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(132,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(133,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(134,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(200,NULL,'2016-12-27 19:55:18',NULL,4.69000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(212,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(213,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(214,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(221,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(222,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(223,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(224,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(231,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(232,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(233,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(234,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(300,NULL,'2016-12-27 19:55:18',NULL,5.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(312,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(313,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(314,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(321,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(322,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(323,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(324,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(331,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(332,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(333,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(334,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(400,NULL,'2016-12-27 19:55:18',NULL,5.49000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(412,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(413,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(414,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(421,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(422,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(423,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(424,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(431,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(432,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(433,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(434,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(500,NULL,'2016-12-27 19:55:18',NULL,4.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(512,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(513,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(514,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(521,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(522,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(523,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(524,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(531,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(532,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(533,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(534,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(600,NULL,'2016-12-27 19:55:18',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(612,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(613,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(614,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(621,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(622,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(623,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(624,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(631,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(632,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(633,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(634,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(646,NULL,'2017-01-04 15:30:21',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-1',NULL,10.00000,NULL,NULL,'N',NULL,NULL,NULL,'KILOGRAMS',NULL,610,NULL),(647,NULL,'2017-01-04 15:46:42',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 1 day</p>','Chair',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(648,NULL,'2017-01-04 15:47:27',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 2 days</p>','chair',NULL,15.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(649,NULL,'2017-01-04 15:47:48',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 3 days</p>','chair',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(694,NULL,'2017-01-08 06:03:41',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-2',NULL,31000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,660,NULL),(695,NULL,'2017-01-08 06:48:40',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-3',NULL,22222.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,661,NULL),(744,NULL,'2017-01-08 08:07:04',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Round Table with Cover',NULL,150.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,710,NULL),(745,NULL,'2017-01-08 08:11:30',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Round Table with Theme Cover & Top',NULL,200.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,711,NULL),(746,NULL,'2017-01-08 08:14:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Sofa with Cover',NULL,300.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,712,NULL),(747,NULL,'2017-01-08 08:16:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Leather Sofa',NULL,800.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,713,NULL),(748,NULL,'2017-01-08 08:17:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chair Cushion',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,714,NULL),(749,NULL,'2017-01-08 08:20:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chair Cushion with Cover',NULL,30.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,715,NULL),(750,NULL,'2017-01-08 08:22:06',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chair Cushion with Cover & Ribbon',NULL,40.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,716,NULL),(751,NULL,'2017-01-08 08:24:03',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Ceiling Printed Pandal',NULL,350.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,717,NULL),(752,NULL,'2017-01-08 08:26:47',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Ceiling White Pandal',NULL,450.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,718,NULL),(753,NULL,'2017-01-08 08:28:38',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Ceiling White with Bengali Fabric work',NULL,1000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,719,NULL),(754,NULL,'2017-01-08 08:32:56',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Hut Pandal-3',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,720,NULL),(755,NULL,'2017-01-08 08:34:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Carpet Green',NULL,500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,721,NULL),(756,NULL,'2017-01-08 08:36:16',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Selfie Corner-Combo-2',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,722,NULL),(794,NULL,'2017-01-08 08:53:29',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Front Truss Light-Combo-1',NULL,20000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,760,NULL),(795,NULL,'2017-01-08 08:56:17',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Front Truss Light-Combo-2',NULL,30000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,761,NULL),(796,NULL,'2017-01-08 08:58:01',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Box Truss Light-Combo-1',NULL,50000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,762,NULL),(797,NULL,'2017-01-08 08:59:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Box Truss Light-Combo-2',NULL,70000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,763,NULL),(798,NULL,'2017-01-08 09:01:17',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'DJ 4000 watt',NULL,7000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,764,NULL),(799,NULL,'2017-01-08 09:03:14',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'DJ 8000 watt',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,765,NULL),(800,NULL,'2017-01-08 09:04:32',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'DJ 12000 watt',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,766,NULL),(801,NULL,'2017-01-08 09:07:05',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Generator 62kva',NULL,3500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,767,NULL),(802,NULL,'2017-01-08 09:08:36',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Generator 125 kva',NULL,4500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,768,NULL),(803,NULL,'2017-01-08 09:10:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Metal Light',NULL,150.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,769,NULL),(804,NULL,'2017-01-08 09:12:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Par Light Regular',NULL,200.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,770,NULL),(805,NULL,'2017-01-08 09:13:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Park Light LED',NULL,250.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,771,NULL),(806,NULL,'2017-01-08 09:15:35',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Halogen 500 watt',NULL,50.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,772,NULL),(807,NULL,'2017-01-08 09:16:59',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Halogen 1000 watt',NULL,100.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,773,NULL),(808,NULL,'2017-01-08 09:23:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'10000 sq.ft. Area-Combo-1',NULL,6000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,774,NULL),(809,NULL,'2017-01-08 09:26:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'15000 sq.ft. Area-Combo-2',NULL,9000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,775,NULL),(810,NULL,'2017-01-08 09:27:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'20000 sq.ft. Area-Combo-3',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,776,NULL),(811,NULL,'2017-01-08 09:30:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Doli-1',NULL,3500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,777,NULL),(812,NULL,'2017-01-08 09:32:18',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Doli-2',NULL,5000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,778,NULL),(813,NULL,'2017-01-08 09:33:40',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Doli-3',NULL,7000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,779,NULL),(814,NULL,'2017-01-08 09:35:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Ghodi Normal',NULL,3500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,780,NULL),(815,NULL,'2017-01-08 09:36:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'White Noori Ghodi with Decor',NULL,4500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,781,NULL),(816,NULL,'2017-01-08 09:37:44',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'White Noori Ghodi with Decor & Chatar',NULL,5600.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,782,NULL),(817,NULL,'2017-01-08 09:40:13',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Varmala-1',NULL,1500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,783,NULL),(818,NULL,'2017-01-08 09:41:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Varmala-2',NULL,2500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,784,NULL),(819,NULL,'2017-01-08 09:45:07',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Varmala-3',NULL,4000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,785,NULL),(820,NULL,'2017-01-08 09:46:55',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-1',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,786,NULL),(844,NULL,'2017-01-08 12:41:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-2',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,810,NULL),(845,NULL,'2017-01-08 12:41:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-4',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,811,NULL),(846,NULL,'2017-01-08 12:43:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-3',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,812,NULL),(847,NULL,'2017-01-08 12:46:20',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Valet 1000',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,813,NULL),(848,NULL,'2017-01-08 12:48:45',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Valet 1500',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,814,NULL),(849,NULL,'2017-01-08 12:50:35',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Valet 2000',NULL,16000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,815,NULL),(850,NULL,'2017-01-08 12:53:23',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'LED Screen Normal',NULL,9500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,816,NULL),(851,NULL,'2017-01-08 12:55:44',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'LED Screen Premium',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,817,NULL),(852,NULL,'2017-01-08 13:04:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'LED Screen Sliding',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,818,NULL),(894,NULL,'2017-01-11 16:48:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Alaav',NULL,400.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,860,NULL),(895,NULL,'2017-01-11 16:50:26',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Gas Heater',NULL,1500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,861,NULL),(896,NULL,'2017-01-11 16:53:43',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Selfie Corner-combo-1',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,862,NULL),(944,NULL,'2017-01-11 18:21:50',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'King size Sofa',NULL,450.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,910,NULL),(945,NULL,'2017-01-11 18:25:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Round Table with Cover & Nylon Top',NULL,175.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,911,NULL),(946,NULL,'2017-01-11 18:26:48',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Hut Pandal-1',NULL,1.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,912,NULL),(947,NULL,'2017-01-11 18:28:06',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Hut Pandal-2',NULL,2.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,913,NULL),(948,NULL,'2017-01-11 18:29:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Carpet Blue',NULL,500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,914,NULL),(949,NULL,'2017-01-11 18:31:09',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Carpet Red',NULL,600.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,915,NULL),(950,NULL,'2017-01-11 18:34:14',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Dj 2000 watt',NULL,2500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,916,NULL),(951,NULL,'2017-01-11 18:36:18',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Dance Floor',NULL,2000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,917,NULL),(952,NULL,'2017-01-11 18:38:27',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Linery System',NULL,1.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,918,NULL),(997,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(1006,NULL,'2017-01-12 18:47:54',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Male Anchor',NULL,5000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,960,NULL),(1007,NULL,'2017-01-12 18:49:49',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Male Anchor cum Mimicry Artist',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,961,NULL),(1044,NULL,'2017-01-13 16:22:45',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-1',NULL,3500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1010,NULL),(1045,NULL,'2017-01-13 16:27:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-2',NULL,4500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1011,NULL),(1049,NULL,'2017-01-13 16:28:53',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-3',NULL,5600.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1012,NULL),(1094,NULL,'2017-01-15 10:25:41',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Gas Heater',NULL,1500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1060,NULL);
/*!40000 ALTER TABLE `blc_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_attribute`
--

DROP TABLE IF EXISTS `blc_sku_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_attribute` (
  `SKU_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ATTR_ID`),
  KEY `SKUATTR_NAME_INDEX` (`NAME`),
  KEY `SKUATTR_SKU_INDEX` (`SKU_ID`),
  KEY `FK6C6A5934B78C9977` (`SKU_ID`),
  CONSTRAINT `FK6C6A5934B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_attribute`
--

LOCK TABLES `blc_sku_attribute` WRITE;
/*!40000 ALTER TABLE `blc_sku_attribute` DISABLE KEYS */;
INSERT INTO `blc_sku_attribute` VALUES (1,'heatRange',NULL,'4',1),(2,'heatRange',NULL,'1',2),(3,'heatRange',NULL,'2',3),(4,'heatRange',NULL,'2',4),(5,'heatRange',NULL,'4',5),(6,'heatRange',NULL,'4',6),(7,'heatRange',NULL,'3',7),(8,'heatRange',NULL,'4',8),(9,'heatRange',NULL,'5',9),(10,'heatRange',NULL,'5',10),(11,'heatRange',NULL,'2',11),(12,'heatRange',NULL,'1',12),(13,'heatRange',NULL,'2',13),(14,'heatRange',NULL,'2',14),(15,'heatRange',NULL,'1',15),(16,'heatRange',NULL,'3',16),(17,'heatRange',NULL,'5',17),(18,'heatRange',NULL,'3',18),(19,'heatRange',NULL,'1',19);
/*!40000 ALTER TABLE `blc_sku_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_availability`
--

DROP TABLE IF EXISTS `blc_sku_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_availability` (
  `SKU_AVAILABILITY_ID` bigint(20) NOT NULL,
  `AVAILABILITY_DATE` datetime DEFAULT NULL,
  `AVAILABILITY_STATUS` varchar(255) DEFAULT NULL,
  `LOCATION_ID` bigint(20) DEFAULT NULL,
  `QTY_ON_HAND` int(11) DEFAULT NULL,
  `RESERVE_QTY` int(11) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_AVAILABILITY_ID`),
  KEY `SKUAVAIL_STATUS_INDEX` (`AVAILABILITY_STATUS`),
  KEY `SKUAVAIL_LOCATION_INDEX` (`LOCATION_ID`),
  KEY `SKUAVAIL_SKU_INDEX` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_availability`
--

LOCK TABLES `blc_sku_availability` WRITE;
/*!40000 ALTER TABLE `blc_sku_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_bundle_item`
--

DROP TABLE IF EXISTS `blc_sku_bundle_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_bundle_item` (
  `SKU_BUNDLE_ITEM_ID` bigint(20) NOT NULL,
  `ITEM_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKD55968CCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FKD55968B78C9977` (`SKU_ID`),
  CONSTRAINT `FKD55968B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKD55968CCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_bundle_item`
--

LOCK TABLES `blc_sku_bundle_item` WRITE;
/*!40000 ALTER TABLE `blc_sku_bundle_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_bundle_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee`
--

DROP TABLE IF EXISTS `blc_sku_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fee` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXPRESSION` longtext,
  `FEE_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SKU_FEE_ID`),
  KEY `FKEEB7181E3E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FKEEB7181E3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee`
--

LOCK TABLES `blc_sku_fee` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee_xref`
--

DROP TABLE IF EXISTS `blc_sku_fee_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fee_xref` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  KEY `FKD88D409CB78C9977` (`SKU_ID`),
  KEY `FKD88D409CCF4C9A82` (`SKU_FEE_ID`),
  CONSTRAINT `FKD88D409CB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKD88D409CCF4C9A82` FOREIGN KEY (`SKU_FEE_ID`) REFERENCES `blc_sku_fee` (`SKU_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee_xref`
--

LOCK TABLES `blc_sku_fee_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_excluded`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fulfillment_excluded` (
  `SKU_ID` bigint(20) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  KEY `FK84162D7381F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FK84162D73B78C9977` (`SKU_ID`),
  CONSTRAINT `FK84162D7381F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK84162D73B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_excluded`
--

LOCK TABLES `blc_sku_fulfillment_excluded` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_flat_rates`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_flat_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fulfillment_flat_rates` (
  `SKU_ID` bigint(20) NOT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ID`,`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C9681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C96B78C9977` (`SKU_ID`),
  CONSTRAINT `FKC1988C9681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC1988C96B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_flat_rates`
--

LOCK TABLES `blc_sku_fulfillment_flat_rates` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_media_map`
--

DROP TABLE IF EXISTS `blc_sku_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_media_map` (
  `SKU_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `BLC_SKU_SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_MEDIA_ID`),
  KEY `FKEB4AECF96E4720E0` (`MEDIA_ID`),
  KEY `FKEB4AECF9D93D857F` (`BLC_SKU_SKU_ID`),
  CONSTRAINT `FKEB4AECF96E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKEB4AECF9D93D857F` FOREIGN KEY (`BLC_SKU_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_media_map`
--

LOCK TABLES `blc_sku_media_map` WRITE;
/*!40000 ALTER TABLE `blc_sku_media_map` DISABLE KEYS */;
INSERT INTO `blc_sku_media_map` VALUES (-100,'primary',101,1),(-99,'primary',201,2),(-98,'primary',301,3),(-97,'primary',401,4),(-96,'primary',501,5),(-95,'primary',601,6),(-94,'primary',701,7),(-93,'primary',801,8),(-92,'primary',901,9),(-91,'primary',1001,10),(-90,'primary',1101,11),(-89,'primary',1201,12),(-88,'primary',1301,13),(-87,'primary',1401,14),(-86,'primary',1501,15),(-85,'primary',1601,16),(-84,'primary',1701,17),(-83,'primary',1801,18),(-82,'primary',1901,19),(-81,'alt1',102,1),(-80,'alt1',202,2),(-79,'alt1',302,3),(-78,'alt1',402,4),(-77,'alt1',502,5),(-76,'alt1',602,6),(-75,'alt1',702,7),(-74,'alt1',802,8),(-73,'alt1',902,9),(-72,'alt1',1002,10),(-71,'alt1',1102,11),(-70,'alt1',1202,12),(-69,'alt1',1302,13),(-68,'alt1',1402,14),(-67,'alt1',1502,15),(-66,'alt1',1602,16),(-65,'alt1',1702,17),(-64,'alt1',1802,18),(-63,'alt1',1902,19),(-62,'alt2',203,2),(-61,'alt3',204,2),(-60,'alt4',205,2),(-59,'alt5',206,2),(-58,'primary',10001,100),(-57,'primary',20002,200),(-56,'primary',30003,300),(-55,'primary',40002,400),(-54,'primary',50003,500),(-53,'primary',60001,600),(-52,'alt1',10002,100),(-51,'alt1',20001,200),(-50,'alt1',30001,300),(-49,'alt1',40001,400),(-48,'alt1',50001,500),(-47,'alt1',60002,600),(-46,'alt2',10003,100),(-45,'alt2',20003,200),(-44,'alt2',30002,300),(-43,'alt2',40003,400),(-42,'alt2',50002,500),(-41,'alt2',60003,600),(3,'primary',60015,646),(51,'primary',60063,694),(52,'primary',60064,695),(101,'primary',60113,744),(151,'primary',60163,745),(152,'primary',60164,748),(201,'primary',60213,749),(202,'primary',60214,750),(203,'primary',60215,751),(204,'primary',60216,752),(205,'primary',60217,753),(206,'primary',60218,754),(207,'primary',60219,755),(208,'primary',60220,756),(209,'primary',60221,794),(210,'primary',60222,795),(211,'primary',60223,796),(212,'primary',60224,797),(213,'primary',60225,798),(214,'primary',60226,799),(215,'primary',60227,800),(216,'primary',60228,801),(217,'primary',60229,802),(218,'primary',60230,803),(219,'primary',60231,804),(220,'primary',60232,805),(221,'primary',60233,806),(222,'primary',60234,894),(223,'primary',60235,949),(224,'primary',60236,950),(225,'primary',60237,951),(251,'primary',60263,1044),(252,'primary',60264,1045),(256,'primary',60268,1049),(301,'primary',60313,945),(302,'primary',60314,746),(303,'primary',60315,747),(304,'primary',60316,944),(305,'primary',60317,946),(306,'primary',60318,947),(307,'primary',60319,948),(308,'primary',60320,807),(309,'primary',60321,814),(310,'primary',60322,815),(311,'primary',60323,816),(312,'primary',60324,850),(313,'primary',60325,851),(314,'primary',60326,852),(315,'primary',60327,895),(316,'primary',60328,1094);
/*!40000 ALTER TABLE `blc_sku_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_option_value_xref`
--

DROP TABLE IF EXISTS `blc_sku_option_value_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_option_value_xref` (
  `SKU_OPTION_VALUE_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_OPTION_VALUE_XREF_ID`),
  KEY `FK7B61DC0BB0C16A73` (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK7B61DC0BB78C9977` (`SKU_ID`),
  CONSTRAINT `FK7B61DC0BB0C16A73` FOREIGN KEY (`PRODUCT_OPTION_VALUE_ID`) REFERENCES `blc_product_option_value` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FK7B61DC0BB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_option_value_xref`
--

LOCK TABLES `blc_sku_option_value_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_option_value_xref` DISABLE KEYS */;
INSERT INTO `blc_sku_option_value_xref` VALUES (121,1,611),(122,11,611),(123,1,612),(124,12,612),(125,1,613),(126,13,613),(127,1,614),(128,14,614),(129,2,621),(130,11,621),(131,2,622),(132,12,622),(133,2,623),(134,13,623),(135,2,624),(136,14,624),(137,3,631),(138,11,631),(139,3,632),(140,12,632),(141,3,633),(142,13,633),(143,3,634),(144,14,634),(154,24,647),(155,25,648),(156,26,649),(208,1,997),(209,2,998),(210,3,999);
/*!40000 ALTER TABLE `blc_sku_option_value_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_state`
--

DROP TABLE IF EXISTS `blc_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_state` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `STATE_NAME_INDEX` (`NAME`),
  KEY `FK8F94A1EBA46E16CF` (`COUNTRY`),
  CONSTRAINT `FK8F94A1EBA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_state`
--

LOCK TABLES `blc_state` WRITE;
/*!40000 ALTER TABLE `blc_state` DISABLE KEYS */;
INSERT INTO `blc_state` VALUES ('AA','ARMED FORCES AMERICA','US'),('AB','ALBERTA','CA'),('AE','ARMED FORCES','US'),('AK','ALASKA','US'),('AL','ALABAMA','US'),('AP','ARMED FORCES PACIFIC','US'),('AR','ARKANSAS','US'),('AS','AMERICAN SAMOA','US'),('AZ','ARIZONA','US'),('BC','BRITISH COLUMBIA','CA'),('CA','CALIFORNIA','US'),('CO','COLORADO','US'),('CT','CONNECTICUT','US'),('DC','DISTRICT OF COLUMBIA','US'),('DE','DELAWARE','US'),('FL','FLORIDA','US'),('FM','FEDERATED STATES OF MICRONESIA','US'),('GA','GEORGIA','US'),('GU','GUAM','US'),('HI','HAWAII','US'),('IA','IOWA','US'),('ID','IDAHO','US'),('IL','ILLINOIS','US'),('IN','INDIANA','US'),('KS','KANSAS','US'),('KY','KENTUCKY','US'),('LA','LOUISIANA','US'),('MA','MASSACHUSETTS','US'),('MB','MANITOBA','CA'),('MD','MARYLAND','US'),('ME','MAINE','US'),('MH','MARSHALL ISLANDS','US'),('MI','MICHIGAN','US'),('MN','MINNESOTA','US'),('MO','MISSOURI','US'),('MP','NORTHERN MARIANA ISLANDS','US'),('MS','MISSISSIPPI','US'),('MT','MONTANA','US'),('NB','NEW BRUNSWICK','CA'),('NC','NORTH CAROLINA','US'),('ND','NORTH DAKOTA','US'),('NE','NEBRASKA','US'),('NH','NEW HAMPSHIRE','US'),('NJ','NEW JERSEY','US'),('NL','NEWFOUNDLAND','CA'),('NM','NEW MEXICO','US'),('NS','NOVA SCOTIA','CA'),('NT','NORTHWEST TERRITORIES','CA'),('NU','NUNAVUT','CA'),('NV','NEVADA','US'),('NY','NEW YORK','US'),('OH','OHIO','US'),('OK','OKLAHOMA','US'),('ON','ONTARIO','CA'),('OR','OREGON','US'),('PA','PENNSYLVANIA','US'),('PE','PRINCE EDWARD ISLAND','CA'),('PR','PUERTO RICO','US'),('PW','PALAU','US'),('QC','QUEBEC','CA'),('RI','RHODE ISLAND','US'),('SC','SOUTH CAROLINA','US'),('SD','SOUTH DAKOTA','US'),('SK','SASKATCHEWAN','CA'),('TN','TENNESSEE','US'),('TX','TEXAS','US'),('UT','UTAH','US'),('VA','VIRGINIA','US'),('VI','VIRGIN ISLANDS','US'),('VT','VERMONT','US'),('WA','WASHINGTON','US'),('WI','WISCONSIN','US'),('WV','WEST VIRGINIA','US'),('WY','WYOMING','US'),('YT','YUKON','CA');
/*!40000 ALTER TABLE `blc_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset`
--

DROP TABLE IF EXISTS `blc_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `FILE_EXTENSION` varchar(255) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FULL_URL` varchar(255) NOT NULL,
  `MIME_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STORAGE_TYPE` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `ASST_FULL_URL_INDX` (`FULL_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset`
--

LOCK TABLES `blc_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_static_asset` DISABLE KEYS */;
INSERT INTO `blc_static_asset` VALUES (60101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari OPEN 9.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari P5..jpg','image/jpg','Decor','FILESYSTEM',NULL),(60103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DANCE FLOOR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 1 FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 2 FINAL copy.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 4 FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 6 FINAL copy.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/FRONT TRUSS FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GAS HEATER FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GENERATOR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GHODI WITH CHATAR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GREEN CARP.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GREEN CARPET FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/halogen.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Pandal Hut 2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/king size sofa.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/leather sofa-1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/leather sofa-2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/led par tower.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/led par.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/metal.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/NORMAL GHODI FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal bengali.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal hut.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal printed.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal white.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/par.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/RED CARPET.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table black.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table golden.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table white.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table with nylon top.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table-cover-top.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/screen 1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/screen 2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/sliding screen.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/sofa with cover.JPG','image/jpg','Decor','FILESYSTEM',NULL),(60139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/WHITE GHODI FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Pandal Hut 1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/ALAAV FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BLACK  BACKGROUND.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BLUE CARPET FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BOX TRUSS FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAIR WITH COVER FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAIR WITH COVER N RIBBON.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chair.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari OPEN 6.jpg','image/jpg','Decor','FILESYSTEM',NULL);
/*!40000 ALTER TABLE `blc_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_desc`
--

DROP TABLE IF EXISTS `blc_static_asset_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset_desc` (
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_desc`
--

LOCK TABLES `blc_static_asset_desc` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_strg`
--

DROP TABLE IF EXISTS `blc_static_asset_strg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset_strg` (
  `STATIC_ASSET_STRG_ID` bigint(20) NOT NULL,
  `FILE_DATA` longblob,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_STRG_ID`),
  KEY `STATIC_ASSET_ID_INDEX` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_strg`
--

LOCK TABLES `blc_static_asset_strg` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_strg` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_strg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_store`
--

DROP TABLE IF EXISTS `blc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_store` (
  `STORE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `STORE_NAME` varchar(255) NOT NULL,
  `OPEN` tinyint(1) DEFAULT NULL,
  `STORE_HOURS` varchar(255) DEFAULT NULL,
  `STORE_NUMBER` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `FK8F94D63BC13085DD` (`ADDRESS_ID`),
  CONSTRAINT `FK8F94D63BC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_store`
--

LOCK TABLES `blc_store` WRITE;
/*!40000 ALTER TABLE `blc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_system_property`
--

DROP TABLE IF EXISTS `blc_system_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_system_property` (
  `BLC_SYSTEM_PROPERTY_ID` bigint(20) NOT NULL,
  `FRIENDLY_GROUP` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `FRIENDLY_TAB` varchar(255) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_TYPE` varchar(255) DEFAULT NULL,
  `PROPERTY_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BLC_SYSTEM_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_system_property`
--

LOCK TABLES `blc_system_property` WRITE;
/*!40000 ALTER TABLE `blc_system_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_system_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tar_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_tar_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_tar_crit_offer_xref` (
  `OFFER_TAR_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_TAR_CRIT_ID`),
  KEY `FK125F5803D5F3FAF4` (`OFFER_ID`),
  KEY `FK125F58033615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F58033615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F5803D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tar_crit_offer_xref`
--

LOCK TABLES `blc_tar_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` DISABLE KEYS */;
INSERT INTO `blc_tar_crit_offer_xref` VALUES (-100,1,1);
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tax_detail`
--

DROP TABLE IF EXISTS `blc_tax_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_tax_detail` (
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `TAX_COUNTRY` varchar(255) DEFAULT NULL,
  `JURISDICTION_NAME` varchar(255) DEFAULT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `TAX_REGION` varchar(255) DEFAULT NULL,
  `TAX_NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TAX_DETAIL_ID`),
  KEY `FKEABE4A4B3E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKEABE4A4BC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FKEABE4A4B3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKEABE4A4BC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tax_detail`
--

LOCK TABLES `blc_tax_detail` WRITE;
/*!40000 ALTER TABLE `blc_tax_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_tax_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_trans_additnl_fields`
--

DROP TABLE IF EXISTS `blc_trans_additnl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_trans_additnl_fields` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`,`FIELD_NAME`),
  KEY `FK376DDE4B9E955B1D` (`PAYMENT_TRANSACTION_ID`),
  CONSTRAINT `FK376DDE4B9E955B1D` FOREIGN KEY (`PAYMENT_TRANSACTION_ID`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_trans_additnl_fields`
--

LOCK TABLES `blc_trans_additnl_fields` WRITE;
/*!40000 ALTER TABLE `blc_trans_additnl_fields` DISABLE KEYS */;
INSERT INTO `blc_trans_additnl_fields` VALUES (1,'COD','PASSTHROUGH_PAYMENT_TYPE'),(2,'COD','PASSTHROUGH_PAYMENT_TYPE'),(51,'COD','PASSTHROUGH_PAYMENT_TYPE'),(101,'COD','PASSTHROUGH_PAYMENT_TYPE'),(151,'COD','PASSTHROUGH_PAYMENT_TYPE'),(201,'COD','PASSTHROUGH_PAYMENT_TYPE'),(251,'COD','PASSTHROUGH_PAYMENT_TYPE'),(301,'COD','PASSTHROUGH_PAYMENT_TYPE'),(351,'COD','PASSTHROUGH_PAYMENT_TYPE'),(401,'COD','PASSTHROUGH_PAYMENT_TYPE'),(451,'COD','PASSTHROUGH_PAYMENT_TYPE'),(501,'COD','PASSTHROUGH_PAYMENT_TYPE'),(551,'COD','PASSTHROUGH_PAYMENT_TYPE');
/*!40000 ALTER TABLE `blc_trans_additnl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_translation`
--

DROP TABLE IF EXISTS `blc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_translation` (
  `TRANSLATION_ID` bigint(20) NOT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `TRANSLATED_VALUE` longtext,
  PRIMARY KEY (`TRANSLATION_ID`),
  KEY `TRANSLATION_INDEX` (`ENTITY_TYPE`,`ENTITY_ID`,`FIELD_NAME`,`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_translation`
--

LOCK TABLES `blc_translation` WRITE;
/*!40000 ALTER TABLE `blc_translation` DISABLE KEYS */;
INSERT INTO `blc_translation` VALUES (-1003,'3','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2>'),(-1002,'2','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2><h4 style=\"text-align:center;\">Haga <a href=\"http://www.broadleafcommerce.com/features/content\">click aqu&iacute;</a> para mas informaci&oacute;n.</h4>'),(-1001,'1','Page','pageTemplate|body','es','prueba de contenido'),(-1000,'1','Page','pageTemplate|title','es','Espa&ntilde;ol G&eacute;nerico'),(-398,'6','MenuItem','label','fr','FAQ'),(-397,'5','MenuItem','label','fr','Nouveau Hot Sauce?'),(-396,'3','FulfillmentOption','longDescription','fr','1 - 2 Journ&eacute;es'),(-395,'3','FulfillmentOption','name','fr','Express'),(-394,'2','FulfillmentOption','longDescription','fr','3 - 5 Journ&eacute;es'),(-393,'2','FulfillmentOption','name','fr','Priorit&eacute;'),(-392,'1','FulfillmentOption','longDescription','fr','5 - 7 Journ&eacute;es'),(-391,'1','FulfillmentOption','name','fr','Norme'),(-382,'3','SearchFacet','label','fr','Prix'),(-381,'2','SearchFacet','label','fr','Degr&eacute; de chaleur'),(-380,'1','SearchFacet','label','fr','Fabricant'),(-300,'600','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-299,'600','Sku','name','fr','Mascot Clinique chaleur (Femmes)'),(-298,'500','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-297,'500','Sku','name','fr','Mascot Clinique chaleur (Hommes)'),(-296,'400','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les femmes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-295,'400','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Femmes)'),(-294,'300','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les hommes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-293,'300','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Hommes)'),(-292,'200','Sku','longDescription','fr','Collecte de femmes Habanero standards chemise &agrave; manches courtes shirt s&eacute;rigraphi&eacute; &agrave; 30 coton doux singles en coupe regular.'),(-291,'200','Sku','name','fr','Hawt comme une chemise Habanero (Femmes)'),(-290,'100','Sku','longDescription','fr','Collecte Hommes Habanero standards chemise &agrave; manches courtes t s&eacute;rigraphi&eacute;es en 30 coton doux singles en coupe regular.'),(-289,'100','Sku','name','fr','Hawt comme une chemise Habanero (Hommes)'),(-288,'19','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-287,'19','Sku','name','fr','Sauce chaudes Chipotle'),(-286,'18','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-285,'18','Sku','name','fr','Sauces chaudes Jalapeno'),(-284,'17','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-283,'17','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-282,'16','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-281,'16','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-280,'15','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-279,'15','Sku','name','fr','Sauce &agrave; l\'ail rÃ´ti chaud'),(-278,'14','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-277,'14','Sku','name','fr','Frais Poivre de Cayenne Hot Sauce'),(-276,'13','Sku','longDescription','fr','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Tout est plus grand au Texas, m&ecirc;me la brÃ»lure de Hot Sauce une Snortin Bull! douche sur le Texas Steak taille qu\'ils appellent le 96er Ole ou vos l&eacute;gumes Jane avion. Si vous &ecirc;tes un fan sur faire de la sauce barbecue &agrave; partir de z&eacute;ro comme je suis, vous pouvez utiliser la sauce Bull amygdales Snort Smokin \'Hot tant qu\'additif. Red hot habaneros et piments donner &agrave; cette tingler amygdales sa saveur c&eacute;l&egrave;bre et rouge de chaleur chaud. Bull Snort Smokin \'Hot amygdales Sauce\'ll avoir vos entrailles buckin Â»avec une goutte d\'eau.'),(-275,'13','Sku','name','fr','Bull Snort Smokin \'Hot Sauce Toncils'),(-274,'12','Sku','longDescription','fr','L\'une des sauces les plus insolites que nous vendons. L\'original &eacute;tait un vieux style sauce cajun et c\'est Ã§a le noircissement &agrave; jour de version. C\'est gentil, mais vous obtenez un grand succ&egrave;s de cannelle et de clou de girofle avec un coup de chaleur agr&eacute;able de Cayenne. Utilisez-le sur tous les aliments &agrave; donner cette ambiance cajun.'),(-273,'12','Sku','name','fr','Caf&eacute; Cajun Louisiane Douce Sauce Blackening'),(-272,'11','Sku','longDescription','fr','Been there, encord&eacute;s cela. Hotter than jument buckin \'en chaleur! Saupoudrez de plats de viande, de fruits de mer et l&eacute;gumes. Utilisation comme additif dans une sauce barbecue ou tout aliment qui a besoin d\'une saveur &eacute;pic&eacute;e. Commencez avec quelques gouttes et travailler jusqu\'&agrave; la saveur d&eacute;sir&eacute;e.'),(-271,'11','Sku','name','fr','Bull Snort Cowboy poivre de Cayenne Hot Sauce'),(-270,'10','Sku','longDescription','fr','Voici la prescription pour ceux qui aiment la chaleur intol&eacute;rable. Dr Chilemeister potion de malades et mal mortel doit &ecirc;tre utilis&eacute; avec prudence. La douleur peut devenir une d&eacute;pendance!'),(-269,'10','Sku','name','fr','Dr Chilemeister Sauce Hot Insane'),(-268,'9','Sku','longDescription','fr','Tout l\'enfer se d&eacute;chaÃ®ne, le feu et le soufre pleuvoir? se pr&eacute;parer &agrave; rencontrer votre machine?'),(-267,'9','Sku','name','fr','Armageddon Le Hot Sauce To End All'),(-266,'8','Sku','longDescription','fr','Vous misez vos bottes, cette sauce chaude valu son nom de gens qui appr&eacute;cient une sauce chaude exceptionnel. Ce que vous trouverez ici est une saveur piquante vraiment original, pas un piquant irr&eacute;sistible que l\'on retrouve dans les sauces au poivre Tabasco ordinaires - m&ecirc;me si le piment utilis&eacute; dans ce produit a &eacute;t&eacute; test&eacute; &agrave; 285.000 unit&eacute;s Scoville. Alors, en selle pour une balade inoubliable. Pour vous assurer que nous vous avons apport&eacute; la plus belle sauce au poivre de Habanero, nous sommes all&eacute;s aux contreforts des montagnes mayas au Belize, en Am&eacute;rique centrale. Ce produit est pr&eacute;par&eacute; enti&egrave;rement &agrave; la main en utilisant uniquement des l&eacute;gumes frais et de tous les ingr&eacute;dients naturels.'),(-265,'8','Sku','name','fr','Blazin \'Selle XXX Hot Habanero sauce au poivre'),(-264,'7','Sku','longDescription','fr','Fabriqu&eacute; avec Naga Bhut Jolokia, plus chaud poivre dans le monde.'),(-263,'7','Sku','name','fr','Green Ghost'),(-262,'6','Sku','longDescription','fr','Souvent confondu avec le Habanero, le Scotch Bonnet a une pointe profond&eacute;ment invers&eacute;e par rapport &agrave; l\'extr&eacute;mit&eacute; pointue de l\'Habanero. Allant dans de nombreuses couleurs allant du vert au jaune-orange, le Scotch Bonnet est un aliment de base dans les Antilles et sauces au poivre de style Barbade.'),(-261,'6','Sku','name','fr','Jour de la sauce Scotch Bonnet Hot Morte'),(-260,'5','Sku','longDescription','fr','Si vous voulez chaud, c\'est le piment de choisir. Originaire de la CaraÃ¯be, du Yucatan et du Nord CÃ´te de l\'Am&eacute;rique du Sud, le Habanero se pr&eacute;sente dans une vari&eacute;t&eacute; de couleurs allant du vert p&acirc;le au rouge vif. La chaleur gras Habanero, la saveur et l\'arÃ´me unique, en a fait le favori des amateurs de chili.'),(-259,'5','Sku','name','fr','Jour de la sauce Habanero Hot Morte'),(-258,'4','Sku','longDescription','fr','Lorsque tout le poivre est s&eacute;ch&eacute; et fum&eacute;, il est consid&eacute;r&eacute; comme un Chipotle. Normalement, avec un aspect froiss&eacute;, drak brun, le chipotle fum&eacute; offre une saveur douce qui est g&eacute;n&eacute;ralement utilis&eacute; pour ajouter un smokey, saveur rÃ´tie aux salsas, les ragoÃ»ts et marinades.'),(-257,'4','Sku','name','fr','Jour de la sauce chaude Morte Chipotle'),(-256,'3','Sku','longDescription','fr','Tangy, venu de Cayenne poivron flux avec l\'ail, l\'oignon p&acirc;te de tomate, et un soupÃ§on de sucre de canne pour en faire une sauce onctueuse avec une morsure. Magnifique sur les Å“ufs, la volaille, le porc ou le poisson, cette sauce marie pour faire des marinades et des soupes riches.'),(-255,'3','Sku','name','fr','Hot Sauce Hoppin'),(-254,'2','Sku','longDescription','fr','Le parfait topper pour le poulet, le poisson, des hamburgers ou une pizza. Un grand m&eacute;lange de Habanero, mangue, fruits de la passion et de plus faire cette sauce Mort d\'un festin incroyable tropicale'),(-253,'2','Sku','name','fr','Sauce Sweet Death'),(-252,'1','Sku','longDescription','fr','Comme mes Chilipals sais, je suis pas du genre &agrave; &ecirc;tre satisfaite. Par cons&eacute;quent, la cr&eacute;ation de la mort subite. Lorsque vous avez besoin d\'aller au-del&agrave; ... Mort subite livrera!'),(-251,'1','Sku','name','fr','Sauce mort subite'),(-247,'14','ProdOptionVal','attributeValue','fr','XG'),(-246,'13','ProdOptionVal','attributeValue','fr','G'),(-245,'12','ProdOptionVal','attributeValue','fr','M'),(-244,'11','ProdOptionVal','attributeValue','fr','P'),(-243,'3','ProdOptionVal','attributeValue','fr','Argent'),(-242,'2','ProdOptionVal','attributeValue','fr','Rouge'),(-241,'1','ProdOptionVal','attributeValue','fr','Noir'),(-232,'2','ProdOption','label','fr','Shirt Taille'),(-231,'1','ProdOption','label','fr','Shirt Couleur'),(-214,'2004','Category','description','fr','D&eacute;gagement'),(-213,'2003','Category','description','fr','Marchandisfr'),(-212,'2002','Category','description','fr','Sauces chaudfr'),(-211,'2001','Category','description','fr','Page d\'accueil'),(-204,'2004','Category','name','fr','D&eacute;gagement'),(-203,'2003','Category','name','fr','Marchandisfr'),(-202,'2002','Category','name','fr','Sauces chaudfr'),(-201,'2001','Category','name','fr','Page d\'accueil'),(-198,'6','MenuItem','label','es','FAQ'),(-197,'5','MenuItem','label','es','Nuevo a la Salsa?'),(-196,'3','FulfillmentOption','longDescription','es','1 - 2 D&iacute;as'),(-195,'3','FulfillmentOption','name','es','Express'),(-194,'2','FulfillmentOption','longDescription','es','3 - 5 D&iacute;as'),(-193,'2','FulfillmentOption','name','es','Ejecutiva'),(-192,'1','FulfillmentOption','longDescription','es','5 - 7 D&iacute;as'),(-191,'1','FulfillmentOption','name','es','EstÃ¡ndar'),(-182,'3','SearchFacet','label','es','Precio'),(-181,'2','SearchFacet','label','es','Rango de Calor'),(-180,'1','SearchFacet','label','es','Fabricante'),(-100,'600','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-99,'600','Sku','name','es','Mascota de Heat Clinic (Mujeres)'),(-98,'500','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-97,'500','Sku','name','es','Mascota de Heat Clinic (Hombres)'),(-96,'400','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-95,'400','Sku','name','es','Heat Clinic dibujado a mano (Mujeres)'),(-94,'300','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-93,'300','Sku','name','es','Heat Clinic dibujado a mano (Hombres)'),(-92,'200','Sku','longDescription','es','Colecci&oacute;n de Mujeres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-91,'200','Sku','name','es','Camisa de Habanero Hawt (Mujeres)'),(-90,'100','Sku','longDescription','es','Colecci&oacute;n de Hombres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-89,'100','Sku','name','es','Camisa de Habanero Hawt (Hombres)'),(-88,'19','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-87,'19','Sku','name','es','Salsa de Pimienta Roja y Chipotle'),(-86,'18','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-85,'18','Sku','name','es','Salsa de Jalape&ntilde;o Ardiente'),(-84,'17','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-83,'17','Sku','name','es','Salsa de Locura'),(-82,'16','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-81,'16','Sku','name','es','Salsa de Locura'),(-80,'15','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-79,'15','Sku','name','es','Salsa de Ajo Tostado'),(-78,'14','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-77,'14','Sku','name','es','Salsa de Cayene Fresco'),(-76,'13','Sku','longDescription','es','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Si usted es un fan de hacer la salsa de barbacoa a partir de cero, como yo, puede utilizar la Salsa de Snortin Bull como aditivo. Habaneros ardientes y los pimientos de cayena dan a la garganta un sabor y calor al rojo vivo.'),(-75,'13','Sku','name','es','Salsa Mata-Gargantas de Bull Snort'),(-74,'12','Sku','longDescription','es','Una de las salsas m&aacute;s inusuales que vendemos. La original era un viejo estilo salsa caj&uacute;n y esto versi&oacute;n actualizada ennegrecimiento. Es dulce, pero se obtiene un gran sabor de canela y clavo de olor con un tiro agradable de piacnte de Cayena. Use en todos los alimentos para dar ese toque caj&uacute;n.'),(-73,'12','Sku','name','es','Salsa Dulce de Cajun de Lousiane'),(-72,'11','Sku','longDescription','es','Espolvorear con platos de carne, pescado y verduras. Use como aditivo en la salsa de barbacoa o cualquier alimento que necesita un sabor picante. Comience con unas gotas y aumente hasta llegar al sabor deseado.'),(-71,'11','Sku','name','es','Salsa Picante del Vaquero'),(-70,'10','Sku','longDescription','es','AquÃ­ est&aacute; la receta para aquellos que disfrutan de picante intolerable. Esta salsa macabra y mortal del Dr. Chilemeister se debe utilizar con precauci&oacute;n. El dolor puede llegar a ser adictivo!'),(-69,'10','Sku','name','es','Salsa Loca del Dr. Chilemeister'),(-68,'9','Sku','longDescription','es','Todo el infierno se ha desatado, fuego y azufre. Est&aacute; listo para el fin?'),(-67,'9','Sku','name','es','Fin del Mundo Salsa'),(-66,'8','Sku','longDescription','es','Esta salsa caliente recibe su nombre por la gente que aprecian una salsa picante. Lo que vas a encontrar aquÃ­ es un sabor picante realmente original, no una acritud abrumador que se encuentra en las salsas de chile Tabasco ordinarios - a pesar de la pimienta usado en este producto ha sido probado en 285.000 unidades Scoville. Por lo tanto, ensillar a dar un paseo para recordar. Para asegurarnos de que usted trajo s&oacute;lo la mejor salsa de pimiento habanero, nos fuimos a las faldas de las monta&ntilde;as mayas en Belice, Am&eacute;rica Central. Este producto se prepara totalmente a mano utilizando s&oacute;lo las verduras frescas y solo ingredientes naturales.'),(-65,'8','Sku','name','es','Salsa de Habanero de la Silla Ardiente'),(-64,'7','Sku','longDescription','es','Hecho con Naga Jolokia Bhut, el chile m&aacute;s picante del mundo.'),(-63,'7','Sku','name','es','Fantasma Verde'),(-62,'6','Sku','longDescription','es','Parecido al Habanero, el Bonnet Escoc&eacute;s tiene una punta profundamente invertidas en comparaci&oacute;n con el extremo puntiagudo del Habanero. Van en colores de verde a amarillo-naranja, el Bonnet Escoc&eacute;s es un alimento b&aacute;sico en West Indies, en Barbados y salsas estilo pimienta.'),(-61,'6','Sku','name','es','Salsa del D&iacute;a de los Muertos de Bonnet Escoc&eacute;s'),(-60,'5','Sku','longDescription','es','Si quieres picante, este es el Chile a elegir. Originario del Caribe, Yucat&aacute;n y la Costa norte de Am&eacute;rica del Sur, el habanero se presenta en una variedad de colores que van desde el verde claro a un rojo brillante. El calor, sabor y aroma &uacute;nicos del Habanero ha convertido el chile en el favorito de los amantes del picante.'),(-59,'5','Sku','name','es','Salsa del D&iacute;a de los Muertos de Habanero'),(-58,'4','Sku','longDescription','es','Cuando cualquier pimienta se seca y se fuma, se refiere como un Chipotle. Por lo general, con una apariencia arrugada, caf&eacute; oscuro, el Chipotle ofrece un sabor ahumado y dulce que se utiliza generalmente para agregar un sabor asado a las salsas, guisos y adobos.'),(-57,'4','Sku','name','es','Salsa del D&iacute;a de los Muertos de Chipotle'),(-56,'3','Sku','longDescription','es','Picante, maduro pimienta que se mezcla junto con el ajo, la cebolla, pasta de tomate y una pizca de az&uacute;car de ca&ntilde;a para hacer de esto una salsa suave. Maravilloso en huevos, aves de corral, carne de cerdo o pescado, esta salsa se â€‹â€‹mezcla para hacer los adobos y sopas ricas.'),(-55,'3','Sku','name','es','Salsa de la Muerte Saltante'),(-54,'2','Sku','longDescription','es','El perfecto acompa&ntilde;ante para el pollo, el pescado, hamburguesas o pizza. Una gran mezcla de habanero, mango, fruta de la pasi&oacute;n y mucho m&aacute;s hacen de esta salsa de la Muerte una delicia tropical incre&iacute;ble.'),(-53,'2','Sku','name','es','Salsa de la Muerte Dulce'),(-52,'1','Sku','longDescription','es','Como mis amigos salseros saben, nunca soy f&aacute;cil de satisfacer. Por lo tanto, naci&oacute; la creaci&oacute;n de la Muerte S&uacute;bita. Cuando este listo para saborear al m&aacute;s all&aacute; ... Muerte s&uacute;bita entregar&aacute;!'),(-51,'1','Sku','name','es','Salsa de la Muerte S&uacute;bita'),(-47,'14','ProdOptionVal','attributeValue','es','XG'),(-46,'13','ProdOptionVal','attributeValue','es','G'),(-45,'12','ProdOptionVal','attributeValue','es','M'),(-44,'11','ProdOptionVal','attributeValue','es','CH'),(-43,'3','ProdOptionVal','attributeValue','es','Plateado'),(-42,'2','ProdOptionVal','attributeValue','es','Rojo'),(-41,'1','ProdOptionVal','attributeValue','es','Negro'),(-32,'2','ProdOption','label','es','Tama&ntilde;o de Camisa'),(-31,'1','ProdOption','label','es','Color de Camisa'),(-14,'2004','Category','description','es','Descuento'),(-13,'2003','Category','description','es','Mercanc&iacute;a'),(-12,'2002','Category','description','es','Salsas Picantes'),(-11,'2001','Category','description','es','Inicio'),(-4,'2004','Category','name','es','Descuento'),(-3,'2003','Category','name','es','Mercanc&iacute;a'),(-2,'2002','Category','name','es','Salsas'),(-1,'2001','Category','name','es','Inicio');
/*!40000 ALTER TABLE `blc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_url_handler`
--

DROP TABLE IF EXISTS `blc_url_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_url_handler` (
  `URL_HANDLER_ID` bigint(20) NOT NULL,
  `INCOMING_URL` varchar(255) NOT NULL,
  `NEW_URL` varchar(255) NOT NULL,
  `URL_REDIRECT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`URL_HANDLER_ID`),
  KEY `INCOMING_URL_INDEX` (`INCOMING_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_url_handler`
--

LOCK TABLES `blc_url_handler` WRITE;
/*!40000 ALTER TABLE `blc_url_handler` DISABLE KEYS */;
INSERT INTO `blc_url_handler` VALUES (1,'/googlePerm','http://www.google.com','REDIRECT_PERM'),(2,'/googleTemp','http://www.google.com','REDIRECT_TEMP'),(3,'/insanity','/hot-sauces/insanity_sauce','FORWARD'),(4,'/jalepeno','/hot-sauces/hurtin_jalepeno_hot_sauce','REDIRECT_TEMP');
/*!40000 ALTER TABLE `blc_url_handler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_userconnection`
--

DROP TABLE IF EXISTS `blc_userconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_userconnection` (
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(255) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`providerId`,`providerUserId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_userconnection`
--

LOCK TABLES `blc_userconnection` WRITE;
/*!40000 ALTER TABLE `blc_userconnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_userconnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_zip_code`
--

DROP TABLE IF EXISTS `blc_zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_zip_code` (
  `ZIP_CODE_ID` varchar(255) NOT NULL,
  `ZIP_CITY` varchar(255) DEFAULT NULL,
  `ZIP_LATITUDE` double DEFAULT NULL,
  `ZIP_LONGITUDE` double DEFAULT NULL,
  `ZIP_STATE` varchar(255) DEFAULT NULL,
  `ZIPCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZIP_CODE_ID`),
  KEY `ZIPCODE_CITY_INDEX` (`ZIP_CITY`),
  KEY `ZIPCODE_LATITUDE_INDEX` (`ZIP_LATITUDE`),
  KEY `ZIPCODE_LONGITUDE_INDEX` (`ZIP_LONGITUDE`),
  KEY `ZIPCODE_STATE_INDEX` (`ZIP_STATE`),
  KEY `ZIPCODE_ZIP_INDEX` (`ZIPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_zip_code`
--

LOCK TABLES `blc_zip_code` WRITE;
/*!40000 ALTER TABLE `blc_zip_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_zip_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_generator`
--

DROP TABLE IF EXISTS `sequence_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence_generator` (
  `ID_NAME` varchar(255) NOT NULL,
  `ID_VAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_generator`
--

LOCK TABLES `sequence_generator` WRITE;
/*!40000 ALTER TABLE `sequence_generator` DISABLE KEYS */;
INSERT INTO `sequence_generator` VALUES ('AddressImpl',1101),('AdminSectionImpl',10010),('CategoryImpl',2268),('CategoryProductXrefImpl',600),('CategorySearchFacetImpl',17),('CategoryXrefImpl',269),('ChallengeQuestionImpl',19),('CountrySubdivisionCategoryImpl',96),('CustomerAddressImpl',51),('CustomerRoleImpl',51),('EmailTrackingImpl',751),('FeaturedProductImpl',20),('FieldDefinitionImpl',13),('FieldGroupImpl',11),('FieldImpl',19),('FulfillmentGroupImpl',5151),('FulfillmentGroupItemImpl',5151),('FulfillmentOptionImpl',13),('IndexFieldImpl',19),('IndexFieldTypeImpl',20),('MediaImpl',60363),('MenuImpl',11),('MenuItemImpl',116),('OfferImpl',11),('OfferItemCriteriaImpl',11),('OrderImpl',5151),('OrderItemAttributeImpl',501),('OrderItemImpl',5151),('OrderItemPriceDetailImpl',3501),('OrderPaymentImpl',1051),('PageFieldImpl',14),('PageImpl',13),('PageTemplateFieldGroupXrefImpl',12),('PageTemplateImpl',11),('PaymentTransactionImpl',601),('PersonalMessageImpl',751),('PhoneImpl',1001),('ProductAttributeImpl',29),('ProductImpl',1110),('ProductOptionImpl',113),('ProductOptionValueImpl',124),('ProductOptionXrefImpl',123),('RoleImpl',11),('SandBoxImpl',101),('SandBoxManagementImpl',101),('SearchFacetImpl',14),('SearchFacetRangeImpl',14),('SkuAttributeImpl',29),('SkuImpl',1144),('SkuMediaXrefImpl',351),('SkuProductOptionValueXrefImpl',254),('StaticAssetImpl',60158),('URLHandlerImpl',14);
/*!40000 ALTER TABLE `sequence_generator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-17  4:13:04
