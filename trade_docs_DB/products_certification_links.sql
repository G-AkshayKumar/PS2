CREATE DATABASE  IF NOT EXISTS `products` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `products`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: products
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `certification_links`
--

DROP TABLE IF EXISTS `certification_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification_links` (
  `certificate_name` varchar(100) NOT NULL,
  `issuing_agency` varchar(150) NOT NULL,
  `agency_url` varchar(255) DEFAULT 'N/A',
  `Export_country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`certificate_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification_links`
--

LOCK TABLES `certification_links` WRITE;
/*!40000 ALTER TABLE `certification_links` DISABLE KEYS */;
INSERT INTO `certification_links` VALUES ('Authorized Dealer Code (ADC)','Authorized Banks (Export-Import Banks)','N/A','India'),('Bill of Exchange','Exporter (Submitted via Bank)','N/A','India'),('Bill of Lading/Airway Bill','Shipping Agents, Freight Forwarders','N/A','India'),('Certificate of Inspection','SGS, Intertek, Bureau Veritas','https://intertek.com','India'),('Certificate of Origin','DGFT, EPCs, Chamber of Commerce','https://dgft.gov.in','India'),('Duty Drawback Registration','Indian Customs (ICEGATE)','https://icegate.gov.in','India'),('FEMA Declaration','Authorized Bank','N/A','India'),('Fumigation Certificate','Approved Fumigation Agencies','N/A','India'),('Import Export Code (IEC)','DGFT (Director General of Foreign Trade)','N/A','India'),('Let Export Order (LEO)','Indian Customs (ICEGATE)','https://icegate.gov.in','India'),('Marine Insurance Policy','Insurance Companies (New India Assurance)','https://newindia.co.in','India'),('Mate’s Receipt','Ship Captain/Shipping Line','N/A','India'),('Packing List','Exporter (Self-generated)','N/A','India'),('Phyto-Sanitary Certificate','Plant Quarantine Authority (MoA)','https://plantquarantineindia.nic.in','India'),('Port KYC Approval','Authorized Banks / Shipping Agencies','N/A','India'),('Proforma Invoice','Exporter (Self-generated)','N/A','India'),('Registration Cum Membership Certificate (RCMC)','Export Promotion Councils','N/A','India'),('Shipping Bill/Bill of Export','Indian Customs (ICEGATE)','https://icegate.gov.in','India');
/*!40000 ALTER TABLE `certification_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 16:10:22
