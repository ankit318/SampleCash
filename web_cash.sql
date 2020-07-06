-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: web_cash
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `cat_path` varchar(255) DEFAULT '',
  `cat_desc` varchar(500) DEFAULT '',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_store`
--

DROP TABLE IF EXISTS `master_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_store` (
  `master_store_id` int(11) NOT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_slug` varchar(255) DEFAULT NULL,
  `store_domain` varchar(255) DEFAULT NULL,
  `store_partner_key` varchar(255) DEFAULT NULL,
  `store_heading` varchar(255) DEFAULT NULL,
  `store_description` text,
  `notice` varchar(500) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `minium_transaction_amount` double DEFAULT NULL,
  `vary` varchar(255) DEFAULT NULL,
  `store_primary_key_word` varchar(500) DEFAULT NULL,
  `store_secondary_key_word` varchar(500) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(11) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_store`
--

LOCK TABLES `master_store` WRITE;
/*!40000 ALTER TABLE `master_store` DISABLE KEYS */;
INSERT INTO `master_store` VALUES (1,'name1','slug1','flip.com','123456','HEading','desc','Notice','PRiority',890,'var2','PRimary','Secondary',NULL,1,'2020-07-04 08:00:37',0,'2020-07-04 08:00:37'),(2,'srote2 ','nvjkn','jknkjnkn','njknk','jkn','njnk','nkjnk','nkjnk',56578,'var1','nvdkjnkndjlkb','jkbvsdjkbsabv',1,1,'2020-07-04 08:02:30',0,'2020-07-04 08:02:30');
/*!40000 ALTER TABLE `master_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_details`
--

DROP TABLE IF EXISTS `store_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_details` (
  `store_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_store_id` int(11) NOT NULL DEFAULT '0',
  `store_class` varchar(255) NOT NULL,
  `store_of_the_day` varchar(255) DEFAULT NULL,
  `store_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_details`
--

LOCK TABLES `store_details` WRITE;
/*!40000 ALTER TABLE `store_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_merchent_charges`
--

DROP TABLE IF EXISTS `store_merchent_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_merchent_charges` (
  `store_merchent_charges_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_store_id` int(11) DEFAULT '0',
  `delivery_charges` double DEFAULT NULL,
  `minimum_free_delivery_amount` double DEFAULT NULL,
  PRIMARY KEY (`store_merchent_charges_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_merchent_charges`
--

LOCK TABLES `store_merchent_charges` WRITE;
/*!40000 ALTER TABLE `store_merchent_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_merchent_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_detail`
--

DROP TABLE IF EXISTS `store_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_detail` (
  `store_user_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`store_user_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_detail`
--

LOCK TABLES `store_user_detail` WRITE;
/*!40000 ALTER TABLE `store_user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_role` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `mobile_number` varchar(15) DEFAULT NULL,
  `approved_link` varchar(10) NOT NULL DEFAULT '0',
  `approved_link_scrap2` varchar(11) NOT NULL DEFAULT '0',
  `approved_link_scrap3` varchar(11) NOT NULL DEFAULT '0',
  `company_link` varchar(11) NOT NULL DEFAULT '0',
  `company_link_temp` int(11) DEFAULT NULL,
  `current_dept` varchar(50) DEFAULT NULL,
  `portal_lite_role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'admin','admin','2020-07-03 10:10:28',2,'Active',NULL,'0','0','0','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-06 22:12:36
