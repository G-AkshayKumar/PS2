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
-- Table structure for table `certification_general`
--

DROP TABLE IF EXISTS `certification_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification_general` (
  `Export_country` varchar(100) NOT NULL,
  `Certification_name` varchar(100) NOT NULL,
  `Issuing_authority` varchar(100) DEFAULT NULL,
  `Description` text,
  `Type` text,
  PRIMARY KEY (`Certification_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification_general`
--

LOCK TABLES `certification_general` WRITE;
/*!40000 ALTER TABLE `certification_general` DISABLE KEYS */;
INSERT INTO `certification_general` VALUES ('India','Antiquity Measurement Certificate','Archaeological Survey of India','Issued for antiques and historical artifacts.','Product-Specific'),('India','Bill of Exchange','Exporter (Submitted via Bank)','Payment request document.','General'),('India','Bill of Lading/Airway Bill/Lorry Receipt','Shipping Agents, Freight Forwarders','Shipping confirmation document issued by shipping agents.','General'),('India','Certificate of Chemical Analysis','Certified Testing Labs (SGS, Intertek)','Issued for chemicals, metals, and minerals.','Product-Specific'),('India','Certificate of Conditioning','APEDA','For perishable products, ensuring storage conditions.','Product-Specific'),('India','Certificate of Free Sale','Ministry of Health/Authorized Bodies','Certification for pharmaceuticals and medical devices.','Country-Specific'),('India','Certificate of Inspection','SGS, Intertek, Bureau Veritas','Quality and compliance certification.','Product-Specific'),('India','Certificate of Origin','DGFT, EPCs, Chamber of Commerce','Proof of product origin.','Country-Specific'),('India','Commercial Invoice','Exporter (Self-generated)','Final payment and shipment record.','General'),('India','Export License','DGFT, Ministry of Commerce, India','For restricted items like defense and chemicals.','Country-Specific'),('India','FEMA Declaration','Authorized Bank','Currency and payment regulation declaration.','General'),('India','Fumigation Certificate','Approved Fumigation Agencies','Required for perishable goods and wooden packaging.','Product-Specific'),('India','GMP Certification','Local Health Authorities','Good manufacturing practices certification.','Product-Specific'),('India','Hazardous Cargo Certificate','Government-approved Agencies','Required for hazardous chemicals and cargo.','Product-Specific'),('India','Health/Veterinary/Sanitary Certificate','Ministry of Health or Veterinary Authority','Required for food, meat, and dairy products.','Product-Specific'),('India','Import Export Code (IEC)','Directorate General of Foreign Trade (DGFT)','Mandatory unique code for all import-export businesses in India.','First-Time Export'),('India','Insurance Certificate','Insurance Companies (ICICI, New India)','Cargo insurance proof.','General'),('India','ISO/ISI Certifications','Bureau of Indian Standards (BIS)','Quality certifications for all products.','General'),('India','Let Export Order (LEO)','Indian Customs (ICEGATE)','Export shipment clearance from customs.','General'),('India','Manufacturer\'s Certificate','Manufacturer, Chamber of Commerce','Proof of product manufacturing origin.','Product-Specific'),('India','Marine Insurance Policy','Insurance Companies (New India Assurance, ICICI Lombard)','Cargo insurance policy.','General'),('India','Mate’s Receipt','Ship Captain/Shipping Line','Cargo receipt from the shipping vessel.','General'),('India','Organic Certification','APEDA, Organic Certifying Bodies','Issued for organic food and products.','Product-Specific'),('India','Packing List','Exporter (Self-generated)','Details of product and shipment issued by the exporter.','General'),('India','Phyto-Sanitary Certificate','Plant Quarantine Authority (MoA)','Issued for agricultural products, seeds, and grains.','Product-Specific'),('India','Port KYC Approval','Port Authorities & Customs','Mandatory KYC verification by port authorities for export clearance.','First-Time Export'),('India','Proforma Invoice','Exporter (Self-generated)','Pre-shipment price agreement document.','General'),('India','Registration Cum Membership Certificate (RCMC)','Export Promotion Councils (EPCs), Commodity Boards','Membership certificate required for export benefits.','First-Time Export'),('India','RoHS & REACH Compliance Certificates','Certified Testing Agencies (SGS, TUV)','Compliance certification for electronics and chemicals.','Country-Specific'),('India','Sanitary Export Permit','Ministry of Agriculture (India)','Issued for agricultural and food exports.','Product-Specific'),('India','Shipping Bill/Bill of Export','Indian Customs (ICEGATE)','Mandatory for customs clearance.','General'),('India','Technical Specification Document','Manufacturer','Specifications for machinery and industrial equipment.','Product-Specific');
/*!40000 ALTER TABLE `certification_general` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 16:10:21
