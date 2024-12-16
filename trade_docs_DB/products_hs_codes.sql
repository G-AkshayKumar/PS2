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
-- Table structure for table `hs_codes`
--

DROP TABLE IF EXISTS `hs_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hs_codes` (
  `hs_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `policy` text NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hs_codes`
--

LOCK TABLES `hs_codes` WRITE;
/*!40000 ALTER TABLE `hs_codes` DISABLE KEYS */;
INSERT INTO `hs_codes` VALUES ('09011111','Arabica plantation: ---- A Grade','Free','Coffee'),('09011112','Arabica plantation: ---- B Grade','Free','Coffee'),('09011113','Arabica plantation: ---- C Grade','Free','Coffee'),('09011119','Arabica plantation: ---- Other','Requires Health Certificate','Coffee'),('09011121','Arabica Cherry: ---- AB Grade','Free','Coffee'),('09011122','Arabica Cherry: ---- PB Grade','Under Export Quota','Coffee'),('09011123','Arabica Cherry: ---- C Grade','Free','Coffee'),('09011124','Arabica Cherry: ---- B/B/B Grade','Requires Spices Board Approval','Coffee'),('09011129','Arabica Cherry: ---- Other','Free','Coffee'),('09011200','Coffee, not roasted : --Decaffeinated','Requires Export License','Coffee'),('10011100','Durum wheat : -- Seed','Free; Requires license and labeling','Cereals'),('10011900','Durum wheat : -- Other','Prohibited','Cereals'),('10019910','Wheat','Prohibited','Cereals'),('10019920','Meslin','Prohibited; Free for seed quality with conditions','Cereals'),('10021000','Rye : -- Seed','Free','Cereals'),('10031000','Barley : -- Seed','Free','Cereals'),('10039000','Barley : -- Other','Free','Cereals'),('10041000','Oats : -- Seed','Free','Cereals'),('10049000','Oats : -- Other','Free','Cereals'),('10061010','Rice in the husk (paddy or rough): Of seed quality','Restricted; Requires license and labeling','Cereals');
/*!40000 ALTER TABLE `hs_codes` ENABLE KEYS */;
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
