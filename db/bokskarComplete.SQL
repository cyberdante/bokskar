CREATE DATABASE  IF NOT EXISTS `bokskar` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bokskar`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bokskar
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `accountInfo`
--

DROP TABLE IF EXISTS `accountInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `checking` varchar(45) DEFAULT NULL,
  `accountName` varchar(45) DEFAULT NULL,
  `bankId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountInfo`
--

LOCK TABLES `accountInfo` WRITE;
/*!40000 ALTER TABLE `accountInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealerships`
--

DROP TABLE IF EXISTS `dealerships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealerships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `generalManager` varchar(45) DEFAULT NULL,
  `serviceManager` varchar(45) DEFAULT NULL,
  `partsManager` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealerships`
--

LOCK TABLES `dealerships` WRITE;
/*!40000 ALTER TABLE `dealerships` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealerships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT 'Relates to id in user table.',
  `group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyNumber` varchar(45) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `policyHolder` varchar(45) DEFAULT NULL,
  `usedId` int(11) DEFAULT NULL COMMENT 'Relates to id in user table.',
  `vehicleId` int(11) DEFAULT NULL COMMENT 'Relates to id in vehicle table.',
  `agentId` int(11) DEFAULT NULL COMMENT 'relates to id in agent table.',
  `policyBalance` decimal(13,4) DEFAULT NULL,
  `remainingBalance` decimal(13,4) DEFAULT NULL,
  `payOff` decimal(13,4) DEFAULT NULL,
  `paymentAmount` decimal(13,4) DEFAULT NULL,
  `nextPayment` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loanTable`
--

DROP TABLE IF EXISTS `loanTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loanTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `total_balance` decimal(13,4) DEFAULT NULL,
  `paymentTerms` varchar(50) DEFAULT NULL,
  `paymentType` int(11) DEFAULT NULL COMMENT 'Relates to payment types field in ‘paymentTypes’ table.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanTable`
--

LOCK TABLES `loanTable` WRITE;
/*!40000 ALTER TABLE `loanTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `loanTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loanTypes`
--

DROP TABLE IF EXISTS `loanTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loanTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanTypes`
--

LOCK TABLES `loanTypes` WRITE;
/*!40000 ALTER TABLE `loanTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `loanTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenanceCompanies`
--

DROP TABLE IF EXISTS `maintenanceCompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenanceCompanies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenanceCompanies`
--

LOCK TABLES `maintenanceCompanies` WRITE;
/*!40000 ALTER TABLE `maintenanceCompanies` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenanceCompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenancePlan`
--

DROP TABLE IF EXISTS `maintenancePlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenancePlan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT 'Relates to id in user table',
  `vehicleId` int(11) DEFAULT NULL COMMENT 'Relates to id in vehicle table',
  `maintenanceId` int(11) DEFAULT NULL COMMENT 'Relates to id in maintenance table',
  `accountumber` varchar(45) DEFAULT NULL,
  `balance` decimal(13,4) DEFAULT NULL,
  `remainingBalance` decimal(13,4) DEFAULT NULL,
  `payOff` decimal(13,4) DEFAULT NULL,
  `paymentAmount` decimal(13,4) DEFAULT NULL,
  `nextPayment` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenancePlan`
--

LOCK TABLES `maintenancePlan` WRITE;
/*!40000 ALTER TABLE `maintenancePlan` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenancePlan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentTypes`
--

DROP TABLE IF EXISTS `paymentTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentTypes`
--

LOCK TABLES `paymentTypes` WRITE;
/*!40000 ALTER TABLE `paymentTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportTickets`
--

DROP TABLE IF EXISTS `supportTickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportTickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `accountNumber` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `concern` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportTickets`
--

LOCK TABLES `supportTickets` WRITE;
/*!40000 ALTER TABLE `supportTickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `supportTickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(10) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `otherPhone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `memberSince` datetime DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleLoan`
--

DROP TABLE IF EXISTS `vehicleLoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicleLoan` (
  `is` int(11) NOT NULL AUTO_INCREMENT,
  `loanId` int(11) DEFAULT NULL,
  `vehicleId` int(11) DEFAULT NULL COMMENT 'Relates to id in vehicle table.',
  `bankId` int(11) DEFAULT NULL COMMENT 'Relates to bank table for bank and branch info. Phone, address etc.',
  `userId` int(11) DEFAULT NULL,
  `totalBalance` decimal(13,4) DEFAULT NULL,
  `remainingBalance` decimal(13,4) DEFAULT NULL,
  `payOffAmount` decimal(13,4) DEFAULT NULL,
  `paymentAmount` decimal(13,4) DEFAULT NULL,
  `nextPayment` datetime DEFAULT NULL,
  PRIMARY KEY (`is`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleLoan`
--

LOCK TABLES `vehicleLoan` WRITE;
/*!40000 ALTER TABLE `vehicleLoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicleLoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `plate` varchar(20) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL COMMENT 'Relates to id in user table.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28 16:10:06
