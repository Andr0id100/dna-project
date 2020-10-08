-- MariaDB dump 10.17  Distrib 10.5.5-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `BIKE`
--

DROP TABLE IF EXISTS `BIKE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIKE` (
  `Vehicle_id` varchar(255) NOT NULL,
  PRIMARY KEY (`Vehicle_id`),
  CONSTRAINT `Bike_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `VEHICLE` (`Vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIKE`
--

LOCK TABLES `BIKE` WRITE;
/*!40000 ALTER TABLE `BIKE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIKE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAR`
--

DROP TABLE IF EXISTS `CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAR` (
  `Vehicle_id` varchar(255) NOT NULL UNIQUE,
  `Car_Type` varchar(255) NOT NULL,
  `Fuel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`),
  CONSTRAINT `CAR_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `VEHICLE` (`Vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR`
--

LOCK TABLES `CAR` WRITE;
/*!40000 ALTER TABLE `CAR` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLEANER`
--

DROP TABLE IF EXISTS `CLEANER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLEANER` (
  `Agency_id` int NOT NULL,
  `Cleaner_id` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Agency_id`,`Cleaner_id`),
  UNIQUE KEY `Cleaner_id` (`Cleaner_id`),
  CONSTRAINT `CLEANER_ibfk_1` FOREIGN KEY (`Agency_id`) REFERENCES `CLEANING_AGENCY` (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLEANER`
--

LOCK TABLES `CLEANER` WRITE;
/*!40000 ALTER TABLE `CLEANER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLEANER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLEANING_AGENCY`
--

DROP TABLE IF EXISTS `CLEANING_AGENCY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLEANING_AGENCY` (
  `Registration_number` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLEANING_AGENCY`
--

LOCK TABLES `CLEANING_AGENCY` WRITE;
/*!40000 ALTER TABLE `CLEANING_AGENCY` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLEANING_AGENCY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLEANING_AGENCY_CONTACT`
--

DROP TABLE IF EXISTS `CLEANING_AGENCY_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLEANING_AGENCY_CONTACT` (
  `Contact_number` bigint NOT NULL,
  `Registration_number` int NOT NULL,
  PRIMARY KEY (`Contact_number`,`Registration_number`),
  KEY `Registration_number` (`Registration_number`),
  CONSTRAINT `CLEANING_AGENCY_CONTACT_ibfk_1` FOREIGN KEY (`Registration_number`) REFERENCES `CLEANING_AGENCY` (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLEANING_AGENCY_CONTACT`
--

LOCK TABLES `CLEANING_AGENCY_CONTACT` WRITE;
/*!40000 ALTER TABLE `CLEANING_AGENCY_CONTACT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLEANING_AGENCY_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACTS`
--

DROP TABLE IF EXISTS `CONTRACTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONTRACTS` (
  `Manager_id` int NOT NULL,
  `Cleaning_Agency_id` int,
  PRIMARY KEY (`Manager_id`, `Cleaning_Agency_id`),
  KEY `Cleaning_Agency_id` (`Cleaning_Agency_id`),
  CONSTRAINT `CONTRACTS_ibfk_1` FOREIGN KEY (`Manager_id`) REFERENCES `MANAGER` (`Manager_id`),
  CONSTRAINT `CONTRACTS_ibfk_2` FOREIGN KEY (`Cleaning_Agency_id`) REFERENCES `CLEANING_AGENCY` (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACTS`
--

LOCK TABLES `CONTRACTS` WRITE;
/*!40000 ALTER TABLE `CONTRACTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONTRACTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `Aadhar_number` bigint NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_CONTACT`
--

DROP TABLE IF EXISTS `CUSTOMER_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER_CONTACT` (
  `Contact_number` bigint NOT NULL,
  `Aadhar_number` bigint NOT NULL,
  PRIMARY KEY (`Contact_number`,`Aadhar_number`),
  KEY `Aadhar_number` (`Aadhar_number`),
  CONSTRAINT `CUSTOMER_CONTACT_ibfk_1` FOREIGN KEY (`Aadhar_number`) REFERENCES `CUSTOMER` (`Aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_CONTACT`
--

LOCK TABLES `CUSTOMER_CONTACT` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_CONTACT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CUSTOMER_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `Employee_id` int NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Pan_number` varchar(255) NOT NULL,
  `Hours` int DEFAULT NULL COMMENT 'Number of working hours',
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_HAS_VOUCHER`
--

DROP TABLE IF EXISTS `EMPLOYEE_HAS_VOUCHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE_HAS_VOUCHER` (
  `Employee_id` int NOT NULL,
  `Voucher_number` int NOT NULL,
  PRIMARY KEY (`Employee_id`,`Voucher_number`),
  KEY `Voucher_number` (`Voucher_number`),
  CONSTRAINT `EMPLOYEE_HAS_VOUCHER_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `EMPLOYEE` (`Employee_id`),
  CONSTRAINT `EMPLOYEE_HAS_VOUCHER_ibfk_2` FOREIGN KEY (`Voucher_number`) REFERENCES `VOUCHER` (`Voucher_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_HAS_VOUCHER`
--

LOCK TABLES `EMPLOYEE_HAS_VOUCHER` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_HAS_VOUCHER` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE_HAS_VOUCHER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTORY`
--

DROP TABLE IF EXISTS `FACTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACTORY` (
  `Registration_number` bigint NOT NULL,
  `Building_number` int DEFAULT NULL,
  `Locality` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTORY`
--

LOCK TABLES `FACTORY` WRITE;
/*!40000 ALTER TABLE `FACTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FACTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTORY_CONTACT`
--

DROP TABLE IF EXISTS `FACTORY_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACTORY_CONTACT` (
  `Contact_number` bigint NOT NULL,
  `Registration_number` bigint NOT NULL,
  PRIMARY KEY (`Contact_number`,`Registration_number`),
  KEY `Registration_number` (`Registration_number`),
  CONSTRAINT `FACTORY_CONTACT_ibfk_1` FOREIGN KEY (`Registration_number`) REFERENCES `FACTORY` (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTORY_CONTACT`
--

LOCK TABLES `FACTORY_CONTACT` WRITE;
/*!40000 ALTER TABLE `FACTORY_CONTACT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FACTORY_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MANAGER`
--

DROP TABLE IF EXISTS `MANAGER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MANAGER` (
  `Manager_id` int NOT NULL,
  `start_date` date DEFAULT NULL COMMENT 'Date on which he was promoted',
  PRIMARY KEY (`Manager_id`),
  CONSTRAINT `MANAGER_ibfk_1` FOREIGN KEY (`Manager_id`) REFERENCES `EMPLOYEE` (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MANAGER`
--

LOCK TABLES `MANAGER` WRITE;
/*!40000 ALTER TABLE `MANAGER` DISABLE KEYS */;
/*!40000 ALTER TABLE `MANAGER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURCHASES_VEHICLE_FROM`
--

DROP TABLE IF EXISTS `PURCHASES_VEHICLE_FROM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASES_VEHICLE_FROM` (
  `Factory_id` bigint NOT NULL,
  `Manager_id` int DEFAULT NULL,
  PRIMARY KEY (`Factory_id`),
  KEY `Manager_id` (`Manager_id`),
  CONSTRAINT `PURCHASES_VEHICLE_FROM_ibfk_1` FOREIGN KEY (`Factory_id`) REFERENCES `FACTORY` (`Registration_number`),
  CONSTRAINT `PURCHASES_VEHICLE_FROM_ibfk_2` FOREIGN KEY (`Manager_id`) REFERENCES `MANAGER` (`Manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASES_VEHICLE_FROM`
--

LOCK TABLES `PURCHASES_VEHICLE_FROM` WRITE;
/*!40000 ALTER TABLE `PURCHASES_VEHICLE_FROM` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASES_VEHICLE_FROM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALE`
--

DROP TABLE IF EXISTS `SALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALE` (
  `Sale_id` int NOT NULL AUTO_INCREMENT,
  `Vehicle_id` varchar(255) DEFAULT NULL,
  `Customer_Aadhar_no` bigint NOT NULL,
  `Service_Center_id` int DEFAULT NULL,
  `SalesPerson_id` int DEFAULT NULL,
  `Sale_price` int NOT NULL,
  `Profit` int DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Payment_type` varchar(255) NOT NULL,
  PRIMARY KEY (`Sale_id`),
  UNIQUE KEY `Customer_Aadhar_no` (`Customer_Aadhar_no`),
  UNIQUE KEY `Vehicle_id` (`Vehicle_id`),
  KEY `Service_Center_id` (`Service_Center_id`),
  KEY `SalesPerson_id` (`SalesPerson_id`),
  CONSTRAINT `SALE_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `VEHICLE` (`Vehicle_id`),
  CONSTRAINT `SALE_ibfk_2` FOREIGN KEY (`Customer_Aadhar_no`) REFERENCES `CUSTOMER` (`Aadhar_number`),
  CONSTRAINT `SALE_ibfk_3` FOREIGN KEY (`Service_Center_id`) REFERENCES `SERVICE_CENTER` (`Center_id`),
  CONSTRAINT `SALE_ibfk_4` FOREIGN KEY (`SalesPerson_id`) REFERENCES `SALESPERSON` (`SalesPerson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALE`
--

LOCK TABLES `SALE` WRITE;
/*!40000 ALTER TABLE `SALE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALESPERSON`
--

DROP TABLE IF EXISTS `SALESPERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALESPERSON` (
  `SalesPerson_id` int NOT NULL,
  `Reporter_id` int DEFAULT NULL,
  PRIMARY KEY (`SalesPerson_id`),
  KEY `Reporter_id` (`Reporter_id`),
  CONSTRAINT `SALESPERSON_ibfk_1` FOREIGN KEY (`SalesPerson_id`) REFERENCES `EMPLOYEE` (`Employee_id`),
  CONSTRAINT `SALESPERSON_ibfk_2` FOREIGN KEY (`Reporter_id`) REFERENCES `SALESPERSON` (`SalesPerson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALESPERSON`
--

LOCK TABLES `SALESPERSON` WRITE;
/*!40000 ALTER TABLE `SALESPERSON` DISABLE KEYS */;
INSERT INTO `SALESPERSON` VALUES (1,NULL),(4,NULL),(5,NULL);
/*!40000 ALTER TABLE `SALESPERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICE_CENTER`
--

DROP TABLE IF EXISTS `SERVICE_CENTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SERVICE_CENTER` (
  `Center_id` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  PRIMARY KEY (`Center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICE_CENTER`
--

LOCK TABLES `SERVICE_CENTER` WRITE;
/*!40000 ALTER TABLE `SERVICE_CENTER` DISABLE KEYS */;
/*!40000 ALTER TABLE `SERVICE_CENTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIES`
--

DROP TABLE IF EXISTS `SUPPLIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPPLIES` (
  `Vehicle_id` varchar(255) NOT NULL,
  `Factory_id` bigint DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`),
  KEY `Factory_id` (`Factory_id`),
  CONSTRAINT `SUPPLIES_ibfk_1` FOREIGN KEY (`Vehicle_id`) REFERENCES `VEHICLE` (`Vehicle_id`),
  CONSTRAINT `SUPPLIES_ibfk_2` FOREIGN KEY (`Factory_id`) REFERENCES `FACTORY` (`Registration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIES`
--

LOCK TABLES `SUPPLIES` WRITE;
/*!40000 ALTER TABLE `SUPPLIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUPPLIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICLE`
--

DROP TABLE IF EXISTS `VEHICLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VEHICLE` (
  `Vehicle_id` varchar(255) NOT NULL,
  `Model_name` varchar(255) NOT NULL,
  `Passenger_capacity` int DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICLE`
--

LOCK TABLES `VEHICLE` WRITE;
/*!40000 ALTER TABLE `VEHICLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `VEHICLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOUCHER`
--

DROP TABLE IF EXISTS `VOUCHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOUCHER` (
  `Voucher_number` int NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Valid_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Voucher_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOUCHER`
--

LOCK TABLES `VOUCHER` WRITE;
/*!40000 ALTER TABLE `VOUCHER` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOUCHER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 18:07:02
