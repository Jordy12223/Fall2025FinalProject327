CREATE DATABASE  IF NOT EXISTS `diabetesdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diabetesdb`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: diabetesdb
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Temporary view structure for view `average_age_by_db_type`
--

DROP TABLE IF EXISTS `average_age_by_db_type`;
/*!50001 DROP VIEW IF EXISTS `average_age_by_db_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_age_by_db_type` AS SELECT 
 1 AS `diabetes_type`,
 1 AS `avg_patient_age`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dietary_habits`
--

DROP TABLE IF EXISTS `dietary_habits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dietary_habits` (
  `diet_id` int unsigned NOT NULL AUTO_INCREMENT,
  `diet_description` varchar(10) NOT NULL,
  PRIMARY KEY (`diet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietary_habits`
--

LOCK TABLES `dietary_habits` WRITE;
/*!40000 ALTER TABLE `dietary_habits` DISABLE KEYS */;
INSERT INTO `dietary_habits` VALUES (1,'Healthy');
/*!40000 ALTER TABLE `dietary_habits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifestyle_info`
--

DROP TABLE IF EXISTS `lifestyle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifestyle_info` (
  `lifestyle_id` int unsigned NOT NULL AUTO_INCREMENT,
  `alcohol_consumption` varchar(10) NOT NULL,
  `smoking_status` varchar(15) NOT NULL,
  `diet_id` int unsigned NOT NULL,
  `activity_id` int unsigned NOT NULL,
  PRIMARY KEY (`lifestyle_id`),
  KEY `fk_lifestyle_info_dietary_habits1_idx` (`diet_id`),
  KEY `fk_lifestyle_info_physical_activity_levels1_idx` (`activity_id`),
  CONSTRAINT `fk_lifestyle_info_dietary_habits1` FOREIGN KEY (`diet_id`) REFERENCES `dietary_habits` (`diet_id`),
  CONSTRAINT `fk_lifestyle_info_physical_activity_levels1` FOREIGN KEY (`activity_id`) REFERENCES `physical_activity_levels` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifestyle_info`
--

LOCK TABLES `lifestyle_info` WRITE;
/*!40000 ALTER TABLE `lifestyle_info` DISABLE KEYS */;
INSERT INTO `lifestyle_info` VALUES (1,'Low','Non-Smoker',1,1),(2,'Low','Non-Smoker',1,2);
/*!40000 ALTER TABLE `lifestyle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_birth_info`
--

DROP TABLE IF EXISTS `patient_birth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_birth_info` (
  `birth_info_id` int unsigned NOT NULL AUTO_INCREMENT,
  `pregnany_history` varchar(15) NOT NULL,
  `weight_gain_during_pregnancy` int unsigned NOT NULL,
  `birth_weight` int unsigned NOT NULL,
  PRIMARY KEY (`birth_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_birth_info`
--

LOCK TABLES `patient_birth_info` WRITE;
/*!40000 ALTER TABLE `patient_birth_info` DISABLE KEYS */;
INSERT INTO `patient_birth_info` VALUES (1,'Normal',18,3684),(2,'Complications',14,3462),(3,'Normal',7,3459),(4,'Complications',16,3973),(5,'Complications',2,2485),(6,'Complications',10,3306),(7,'Normal',23,2631),(8,'Complications',13,3079),(9,'Normal',11,3778),(10,'Normal',19,3574),(11,'Complications',9,3490),(12,'Complications',19,3463),(13,'Complications',24,4340),(14,'Normal',0,1925),(15,'Normal',0,2062),(16,'Normal',8,2698),(17,'Normal',13,3138),(18,'Complications',27,2760),(19,'Normal',15,2567),(20,'Complications',16,2571),(21,'Normal',21,3965),(22,'Normal',0,2423),(23,'Normal',1,1747),(24,'Normal',18,3820),(25,'Complications',12,3548),(26,'Complications',12,2569),(27,'Complications',8,2984),(28,'Complications',18,2940),(29,'Normal',24,3097),(30,'Complications',14,3347),(31,'Complications',10,3834),(32,'Complications',17,2520),(33,'Complications',15,2852),(34,'Normal',10,3546),(35,'Complications',16,3297),(36,'Normal',4,2048),(37,'Normal',10,3137),(38,'Complications',14,2760),(39,'Normal',8,3136),(40,'Normal',12,3242),(41,'Normal',1,2390),(42,'Complications',15,3268),(43,'Normal',15,2653),(44,'Complications',12,3148),(45,'Complications',14,3310),(46,'Normal',20,3780),(47,'Complications',8,3950),(48,'Normal',16,2642),(49,'Normal',12,3154),(50,'Complications',18,3644),(51,'Normal',19,3429),(52,'Normal',27,2630),(53,'Complications',21,2569),(54,'Complications',19,3678),(55,'Complications',6,2538),(56,'Complications',14,4041),(57,'Normal',17,3115),(58,'Complications',8,3866),(59,'Complications',6,3319),(60,'Complications',17,3270),(61,'Normal',0,1549),(62,'Normal',23,2634);
/*!40000 ALTER TABLE `patient_birth_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patient_demographics_lifestyle`
--

DROP TABLE IF EXISTS `patient_demographics_lifestyle`;
/*!50001 DROP VIEW IF EXISTS `patient_demographics_lifestyle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_demographics_lifestyle` AS SELECT 
 1 AS `patient_id`,
 1 AS `diabetes_type`,
 1 AS `patient_age`,
 1 AS `ethnicity_risk`,
 1 AS `alcohol_consumption`,
 1 AS `smoking_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patient_ethnicity`
--

DROP TABLE IF EXISTS `patient_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_ethnicity` (
  `ethnicity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ethnicity_risk` varchar(10) NOT NULL,
  PRIMARY KEY (`ethnicity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_ethnicity`
--

LOCK TABLES `patient_ethnicity` WRITE;
/*!40000 ALTER TABLE `patient_ethnicity` DISABLE KEYS */;
INSERT INTO `patient_ethnicity` VALUES (1,'Low Risk');
/*!40000 ALTER TABLE `patient_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_health_metrics`
--

DROP TABLE IF EXISTS `patient_health_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_health_metrics` (
  `health_metrics_id` int unsigned NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(20) NOT NULL,
  `metric_value` int unsigned NOT NULL,
  PRIMARY KEY (`health_metrics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_health_metrics`
--

LOCK TABLES `patient_health_metrics` WRITE;
/*!40000 ALTER TABLE `patient_health_metrics` DISABLE KEYS */;
INSERT INTO `patient_health_metrics` VALUES (1,'BMI',32),(2,'BMI',15),(3,'BMI',18),(4,'BMI',20),(5,'BMI',16),(6,'BMI',21),(7,'BMI',27),(8,'BMI',22),(9,'BMI',23),(10,'BMI',29),(11,'BMI',30),(12,'BMI',28),(13,'BMI',31),(14,'BMI',24),(15,'BMI',25),(16,'BMI',33),(17,'BMI',17),(18,'BMI',26),(19,'BMI',19),(20,'BMI',34),(21,'Blood Pressure',114),(22,'Blood Pressure',102),(23,'Blood Pressure',113),(24,'Blood Pressure',103),(25,'Blood Pressure',97),(26,'Blood Pressure',94),(27,'Blood Pressure',120),(28,'Blood Pressure',91),(29,'Blood Pressure',129),(30,'Blood Pressure',112),(31,'Blood Pressure',115),(32,'Blood Pressure',100),(33,'Blood Pressure',82),(34,'Blood Pressure',96),(35,'Blood Pressure',126),(36,'Blood Pressure',125),(37,'Blood Pressure',106),(38,'Blood Pressure',116),(39,'Blood Pressure',84),(40,'Blood Pressure',88),(41,'Blood Pressure',105),(42,'Blood Pressure',127),(43,'Blood Pressure',117),(44,'Blood Pressure',93),(45,'Blood Pressure',101),(46,'Blood Pressure',81),(47,'Blood Pressure',122),(48,'Blood Pressure',90),(49,'Blood Pressure',108),(50,'Blood Pressure',95),(51,'Blood Pressure',128),(52,'Blood Pressure',118),(53,'Blood Pressure',109),(54,'Blood Pressure',104),(55,'Blood Pressure',111),(56,'Blood Pressure',110),(57,'Blood Pressure',92),(58,'Blood Pressure',98),(59,'Cholesterol Levels',201),(60,'Cholesterol Levels',195),(61,'Cholesterol Levels',165),(62,'Cholesterol Levels',171),(63,'Cholesterol Levels',179),(64,'Cholesterol Levels',197),(65,'Cholesterol Levels',189),(66,'Cholesterol Levels',180),(67,'Cholesterol Levels',164),(68,'Cholesterol Levels',186),(69,'Cholesterol Levels',177),(70,'Cholesterol Levels',198),(71,'Cholesterol Levels',175),(72,'Cholesterol Levels',135),(73,'Cholesterol Levels',150),(74,'Cholesterol Levels',225),(75,'Cholesterol Levels',192),(76,'Cholesterol Levels',204),(77,'Cholesterol Levels',108),(78,'Cholesterol Levels',128),(79,'Cholesterol Levels',172),(80,'Cholesterol Levels',207),(81,'Cholesterol Levels',166),(82,'Cholesterol Levels',187),(83,'Cholesterol Levels',181),(84,'Cholesterol Levels',183),(85,'Cholesterol Levels',152),(86,'Cholesterol Levels',126),(87,'Cholesterol Levels',159),(88,'Cholesterol Levels',194),(89,'Cholesterol Levels',185),(90,'Cholesterol Levels',111),(91,'Cholesterol Levels',174),(92,'Cholesterol Levels',158),(93,'Cholesterol Levels',223),(94,'Cholesterol Levels',191),(95,'Cholesterol Levels',190),(96,'Cholesterol Levels',205),(97,'Cholesterol Levels',182),(98,'Cholesterol Levels',199),(99,'Cholesterol Levels',155),(100,'Cholesterol Levels',214),(101,'Cholesterol Levels',153),(102,'Cholesterol Levels',161),(103,'Cholesterol Levels',143),(104,'Cholesterol Levels',168),(105,'Blood Glucose Levels',114),(106,'Blood Glucose Levels',129),(107,'Blood Glucose Levels',128),(108,'Blood Glucose Levels',112),(109,'Blood Glucose Levels',241),(110,'Blood Glucose Levels',133),(111,'Blood Glucose Levels',130),(112,'Blood Glucose Levels',125),(113,'Blood Glucose Levels',105),(114,'Blood Glucose Levels',138),(115,'Blood Glucose Levels',136),(116,'Blood Glucose Levels',122),(117,'Blood Glucose Levels',218),(118,'Blood Glucose Levels',257),(119,'Blood Glucose Levels',113),(120,'Blood Glucose Levels',102),(121,'Blood Glucose Levels',150),(122,'Blood Glucose Levels',81),(123,'Blood Glucose Levels',141),(124,'Blood Glucose Levels',250),(125,'Blood Glucose Levels',283),(126,'Blood Glucose Levels',177),(127,'Blood Glucose Levels',145),(128,'Blood Glucose Levels',124),(129,'Blood Glucose Levels',107),(130,'Blood Glucose Levels',87),(131,'Blood Glucose Levels',140),(132,'Blood Glucose Levels',139),(133,'Blood Glucose Levels',137),(134,'Blood Glucose Levels',135),(135,'Blood Glucose Levels',115),(136,'Blood Glucose Levels',269),(137,'Blood Glucose Levels',104),(138,'Blood Glucose Levels',100),(139,'Blood Glucose Levels',108),(140,'Blood Glucose Levels',275),(141,'Blood Glucose Levels',123),(142,'Blood Glucose Levels',126),(143,'Blood Glucose Levels',118),(144,'Blood Glucose Levels',96),(145,'Blood Glucose Levels',127),(146,'Blood Glucose Levels',120),(147,'Blood Glucose Levels',119),(148,'Blood Glucose Levels',132),(149,'Blood Glucose Levels',91),(150,'Blood Glucose Levels',147),(151,'Blood Glucose Levels',85),(152,'Blood Glucose Levels',109),(153,'Blood Glucose Levels',259),(154,'Blood Glucose Levels',161),(155,'Insulin Levels',17),(156,'Insulin Levels',19),(157,'Insulin Levels',15),(158,'Insulin Levels',25),(159,'Insulin Levels',14),(160,'Insulin Levels',16),(161,'Insulin Levels',12),(162,'Insulin Levels',18),(163,'Insulin Levels',11),(164,'Insulin Levels',22),(165,'Insulin Levels',29),(166,'Insulin Levels',13),(167,'Insulin Levels',10),(168,'Insulin Levels',26),(169,'Insulin Levels',30),(170,'Insulin Levels',32),(171,'Insulin Levels',23),(172,'Insulin Levels',6),(173,'Insulin Levels',24),(174,'Insulin Levels',5),(175,'Insulin Levels',27),(176,'Insulin Levels',21),(177,'Insulin Levels',7),(178,'Insulin Levels',9),(179,'Insulin Levels',20);
/*!40000 ALTER TABLE `patient_health_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_history` (
  `history_id` int unsigned NOT NULL AUTO_INCREMENT,
  `pcos_history` varchar(3) NOT NULL,
  `cystic_fibrosis_diagnosis` varchar(3) NOT NULL,
  `steroid_use_history` varchar(3) NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
INSERT INTO `patient_history` VALUES (1,'No','No','No'),(2,'No','Yes','No'),(3,'Yes','No','No'),(4,'Yes','Yes','No');
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_physical_info`
--

DROP TABLE IF EXISTS `patient_physical_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_physical_info` (
  `physical_info_id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_age` int unsigned NOT NULL,
  `early_onset` varchar(3) NOT NULL,
  `ethnicity_id` int unsigned NOT NULL,
  `birth_info_id` int unsigned NOT NULL,
  PRIMARY KEY (`physical_info_id`),
  KEY `fk_patient_physical_info_patient_ethnicity1_idx` (`ethnicity_id`),
  KEY `fk_patient_physical_info_patient_birth_info1_idx` (`birth_info_id`),
  CONSTRAINT `fk_patient_physical_info_patient_birth_info1` FOREIGN KEY (`birth_info_id`) REFERENCES `patient_birth_info` (`birth_info_id`),
  CONSTRAINT `fk_patient_physical_info_patient_ethnicity1` FOREIGN KEY (`ethnicity_id`) REFERENCES `patient_ethnicity` (`ethnicity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_physical_info`
--

LOCK TABLES `patient_physical_info` WRITE;
/*!40000 ALTER TABLE `patient_physical_info` DISABLE KEYS */;
INSERT INTO `patient_physical_info` VALUES (1,20,'No',1,1),(2,25,'No',1,2),(3,18,'No',1,3),(4,23,'No',1,4),(5,18,'No',1,5),(6,18,'No',1,6),(7,24,'No',1,7),(8,21,'No',1,8),(9,22,'No',1,9),(10,18,'No',1,10),(11,21,'No',1,11),(12,23,'No',1,12),(13,21,'No',1,13),(14,19,'No',1,14),(15,19,'No',1,15),(16,18,'No',1,16),(17,20,'No',1,17),(18,24,'No',1,18),(19,22,'No',1,19),(20,24,'No',1,20),(21,19,'No',1,21),(22,19,'No',1,22),(23,18,'No',1,23),(24,23,'No',1,24),(25,25,'No',1,25),(26,19,'No',1,26),(27,23,'No',1,27),(28,21,'No',1,28),(29,19,'No',1,29),(30,25,'No',1,30),(31,20,'No',1,31),(32,21,'No',1,32),(33,23,'No',1,33),(34,24,'No',1,34),(35,25,'No',1,35),(36,19,'No',1,36),(37,19,'No',1,37),(38,23,'No',1,38),(39,25,'No',1,39),(40,19,'No',1,40),(41,19,'No',1,41),(42,23,'No',1,42),(43,23,'No',1,43),(44,24,'No',1,44),(45,20,'No',1,45),(46,21,'No',1,46),(47,24,'No',1,47),(48,25,'No',1,48),(49,19,'No',1,49),(50,25,'No',1,50),(51,25,'No',1,51),(52,22,'No',1,52),(53,25,'No',1,53),(54,22,'No',1,54),(55,21,'No',1,55),(56,21,'No',1,56),(57,18,'No',1,57),(58,22,'No',1,58),(59,20,'No',1,59),(60,24,'No',1,60),(61,19,'No',1,61),(62,21,'No',1,62);
/*!40000 ALTER TABLE `patient_physical_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_tests`
--

DROP TABLE IF EXISTS `patient_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_tests` (
  `test_id` int unsigned NOT NULL AUTO_INCREMENT,
  `glucose_level_test` varchar(45) NOT NULL,
  `liver_function_test` varchar(45) NOT NULL,
  `urine_test` varchar(45) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_tests`
--

LOCK TABLES `patient_tests` WRITE;
/*!40000 ALTER TABLE `patient_tests` DISABLE KEYS */;
INSERT INTO `patient_tests` VALUES (1,'Normal','Abnormal','Normal'),(2,'Abnormal','Abnormal','Glucose Present'),(3,'Abnormal','Abnormal','Ketones Present'),(4,'Normal','Normal','Normal'),(5,'Abnormal','Normal','Glucose Present'),(6,'Normal','Normal','Glucose Present'),(7,'Abnormal','Abnormal','Protein Present'),(8,'Normal','Normal','Protein Present'),(9,'Abnormal','Abnormal','Ketones Present'),(10,'Normal','Abnormal','Normal'),(11,'Normal','Normal','Ketones Present'),(12,'Abnormal','Normal','Normal'),(13,'Normal','Abnormal','Glucose Present'),(14,'Normal','Abnormal','Ketones Present'),(15,'Abnormal','Normal','Protein Present'),(16,'Abnormal','Abnormal','Normal'),(17,'Abnormal','Normal','Glucose Present'),(18,'Normal','Abnormal','Protein Present'),(19,'Abnormal','Normal','Ketones Present');
/*!40000 ALTER TABLE `patient_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int unsigned NOT NULL AUTO_INCREMENT,
  `diabetes_type` varchar(45) NOT NULL,
  `history_id` int unsigned NOT NULL,
  `lifestyle_id` int unsigned NOT NULL,
  `physical_info_id` int unsigned NOT NULL,
  `test_id` int unsigned NOT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk_patients_patient_history1_idx` (`history_id`),
  KEY `fk_patients_lifestyle_info1_idx` (`lifestyle_id`),
  KEY `fk_patients_patient_physical_info1_idx` (`physical_info_id`),
  KEY `fk_patients_patient_tests1_idx` (`test_id`),
  CONSTRAINT `fk_patients_lifestyle_info1` FOREIGN KEY (`lifestyle_id`) REFERENCES `lifestyle_info` (`lifestyle_id`),
  CONSTRAINT `fk_patients_patient_history1` FOREIGN KEY (`history_id`) REFERENCES `patient_history` (`history_id`),
  CONSTRAINT `fk_patients_patient_physical_info1` FOREIGN KEY (`physical_info_id`) REFERENCES `patient_physical_info` (`physical_info_id`),
  CONSTRAINT `fk_patients_patient_tests1` FOREIGN KEY (`test_id`) REFERENCES `patient_tests` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Gestational Diabetes',4,1,1,1),(2,'Type 1 Diabetes',4,1,2,2),(3,'MODY',3,1,3,3),(4,'MODY',3,2,4,4),(5,'Wolfram Syndrome',1,1,5,5),(6,'MODY',2,2,6,6),(7,'Gestational Diabetes',3,1,7,7),(8,'MODY',2,1,8,8),(9,'Gestational Diabetes',3,2,9,9),(10,'MODY',3,1,10,9),(11,'MODY',3,1,11,10),(12,'MODY',3,2,12,11),(13,'Gestational Diabetes',1,2,13,12),(14,'Wolfram Syndrome',1,2,14,13),(15,'Wolfram Syndrome',4,1,15,14),(16,'Type 1 Diabetes',3,1,16,14),(17,'Gestational Diabetes',3,2,17,15),(18,'Gestational Diabetes',4,1,18,16),(19,'Cystic Fibrosis-Related Diabetes (CFRD)',1,1,19,2),(20,'MODY',3,2,20,15),(21,'Cystic Fibrosis-Related Diabetes (CFRD)',3,1,21,7),(22,'Wolfram Syndrome',3,1,22,1),(23,'Wolfram Syndrome',2,1,23,17),(24,'Cystic Fibrosis-Related Diabetes (CFRD)',4,2,24,15),(25,'Cystic Fibrosis-Related Diabetes (CFRD)',3,1,25,18),(26,'Cystic Fibrosis-Related Diabetes (CFRD)',3,2,26,4),(27,'MODY',3,2,27,1),(28,'MODY',3,2,28,6),(29,'Type 1 Diabetes',1,1,29,11),(30,'MODY',2,2,30,8),(31,'MODY',2,2,31,5),(32,'Cystic Fibrosis-Related Diabetes (CFRD)',2,2,32,8),(33,'Type 1 Diabetes',4,2,33,19),(34,'Type 1 Diabetes',3,1,34,17),(35,'Gestational Diabetes',1,1,35,1),(36,'Wolfram Syndrome',3,1,36,12),(37,'Cystic Fibrosis-Related Diabetes (CFRD)',1,1,37,3),(38,'Type 1 Diabetes',1,1,38,19),(39,'MODY',2,2,39,10),(40,'Cystic Fibrosis-Related Diabetes (CFRD)',4,1,40,15),(41,'Wolfram Syndrome',4,1,41,5),(42,'MODY',4,1,42,16),(43,'Type 1 Diabetes',3,2,43,13),(44,'Gestational Diabetes',3,2,44,14),(45,'Type 1 Diabetes',1,1,45,6),(46,'Gestational Diabetes',1,1,46,6),(47,'MODY',2,1,47,11),(48,'Type 1 Diabetes',3,1,48,17),(49,'MODY',1,2,49,17),(50,'Cystic Fibrosis-Related Diabetes (CFRD)',4,2,50,14),(51,'Gestational Diabetes',4,1,51,12),(52,'Gestational Diabetes',1,2,52,2),(53,'Cystic Fibrosis-Related Diabetes (CFRD)',1,1,53,15),(54,'Type 1 Diabetes',2,2,54,19),(55,'MODY',2,2,55,12),(56,'Gestational Diabetes',3,1,56,4),(57,'Type 1 Diabetes',1,2,57,6),(58,'MODY',2,1,58,12),(59,'Type 1 Diabetes',3,1,59,2),(60,'MODY',1,1,60,8),(61,'Wolfram Syndrome',3,1,61,9),(62,'Cystic Fibrosis-Related Diabetes (CFRD)',4,2,62,14);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patients_above_average_bmi`
--

DROP TABLE IF EXISTS `patients_above_average_bmi`;
/*!50001 DROP VIEW IF EXISTS `patients_above_average_bmi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patients_above_average_bmi` AS SELECT 
 1 AS `patient_id`,
 1 AS `bmi_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `patients_and_their_health_metrics`
--

DROP TABLE IF EXISTS `patients_and_their_health_metrics`;
/*!50001 DROP VIEW IF EXISTS `patients_and_their_health_metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patients_and_their_health_metrics` AS SELECT 
 1 AS `patient_id`,
 1 AS `metric_name`,
 1 AS `metric_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patients_has_patient_health_metrics`
--

DROP TABLE IF EXISTS `patients_has_patient_health_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients_has_patient_health_metrics` (
  `patient_id` int unsigned NOT NULL,
  `health_metrics_id` int unsigned NOT NULL,
  PRIMARY KEY (`patient_id`,`health_metrics_id`),
  KEY `fk_patients_has_patient_health_metrics_patient_health_metri_idx` (`health_metrics_id`),
  KEY `fk_patients_has_patient_health_metrics_patients1_idx` (`patient_id`),
  CONSTRAINT `fk_patients_has_patient_health_metrics_patient_health_metrics1` FOREIGN KEY (`health_metrics_id`) REFERENCES `patient_health_metrics` (`health_metrics_id`),
  CONSTRAINT `fk_patients_has_patient_health_metrics_patients1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_has_patient_health_metrics`
--

LOCK TABLES `patients_has_patient_health_metrics` WRITE;
/*!40000 ALTER TABLE `patients_has_patient_health_metrics` DISABLE KEYS */;
INSERT INTO `patients_has_patient_health_metrics` VALUES (1,1),(13,1),(37,1),(2,2),(15,2),(41,2),(3,3),(12,3),(22,3),(4,4),(23,4),(43,4),(53,4),(56,4),(5,5),(29,5),(6,6),(8,6),(33,6),(48,6),(50,6),(54,6),(7,7),(25,7),(26,7),(40,7),(51,7),(9,8),(59,8),(10,9),(14,9),(16,9),(36,9),(42,9),(58,9),(11,10),(24,10),(17,11),(21,11),(46,11),(18,12),(31,12),(39,12),(19,13),(20,14),(27,14),(44,14),(45,14),(61,14),(28,15),(30,15),(52,15),(32,16),(34,17),(57,17),(35,18),(49,18),(60,18),(38,19),(47,19),(55,19),(62,20),(1,21),(20,21),(45,21),(2,22),(28,22),(3,23),(29,23),(33,23),(4,24),(5,25),(15,25),(34,25),(6,26),(7,27),(8,28),(11,28),(47,28),(57,28),(9,29),(25,29),(10,30),(35,30),(12,31),(30,31),(13,32),(39,32),(14,33),(16,34),(59,34),(17,35),(18,36),(19,37),(48,37),(21,38),(46,38),(22,39),(23,40),(24,41),(38,41),(56,41),(26,42),(27,43),(43,43),(55,43),(31,44),(58,44),(32,45),(36,46),(37,47),(40,48),(41,49),(42,50),(53,50),(44,51),(49,52),(50,53),(51,54),(52,55),(60,55),(54,56),(61,57),(62,58),(1,59),(2,60),(11,60),(3,61),(4,62),(48,62),(5,63),(6,64),(59,64),(7,65),(18,65),(39,65),(8,66),(9,67),(10,68),(12,69),(34,69),(13,70),(20,70),(27,70),(53,70),(14,71),(30,71),(15,72),(16,73),(17,74),(44,74),(19,75),(58,75),(21,76),(22,77),(23,78),(24,79),(25,80),(26,81),(33,81),(28,82),(29,83),(35,83),(31,84),(32,85),(36,86),(37,87),(38,88),(40,89),(45,89),(41,90),(42,91),(43,92),(46,93),(47,94),(49,95),(50,96),(51,97),(52,97),(54,98),(55,99),(56,100),(57,101),(60,102),(61,103),(62,104),(1,105),(37,105),(2,106),(3,107),(17,107),(4,108),(51,108),(5,109),(6,110),(7,111),(8,112),(9,113),(10,114),(12,114),(11,115),(13,116),(14,117),(15,118),(16,119),(18,120),(19,121),(20,122),(21,123),(22,124),(23,125),(24,126),(25,127),(43,127),(26,128),(27,129),(32,129),(28,130),(31,130),(29,131),(30,132),(33,133),(34,134),(35,135),(52,135),(36,136),(38,137),(39,138),(40,139),(41,140),(42,141),(46,141),(44,142),(45,143),(48,143),(47,144),(49,145),(50,146),(55,146),(53,147),(54,148),(56,149),(57,150),(58,151),(59,152),(60,152),(61,153),(62,154),(1,155),(40,155),(42,155),(43,155),(2,156),(19,156),(23,156),(52,156),(61,156),(3,157),(36,157),(45,157),(4,158),(12,158),(20,158),(27,158),(50,158),(58,158),(5,159),(9,159),(15,159),(41,159),(56,159),(6,160),(26,160),(7,161),(18,161),(34,161),(51,161),(8,162),(22,162),(38,162),(10,163),(11,164),(31,164),(53,164),(13,165),(39,165),(14,166),(48,166),(54,166),(16,167),(17,167),(30,167),(47,167),(21,168),(37,168),(44,168),(24,169),(25,170),(28,171),(55,171),(29,172),(32,173),(33,174),(35,175),(46,176),(49,176),(62,176),(57,177),(59,178),(60,179);
/*!40000 ALTER TABLE `patients_has_patient_health_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical_activity_levels`
--

DROP TABLE IF EXISTS `physical_activity_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical_activity_levels` (
  `activity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `activity_description` varchar(10) NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_activity_levels`
--

LOCK TABLES `physical_activity_levels` WRITE;
/*!40000 ALTER TABLE `physical_activity_levels` DISABLE KEYS */;
INSERT INTO `physical_activity_levels` VALUES (1,'High'),(2,'Moderate');
/*!40000 ALTER TABLE `physical_activity_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `test_count_by_diabetes_type`
--

DROP TABLE IF EXISTS `test_count_by_diabetes_type`;
/*!50001 DROP VIEW IF EXISTS `test_count_by_diabetes_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test_count_by_diabetes_type` AS SELECT 
 1 AS `diabetes_type`,
 1 AS `total_tests`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `average_age_by_db_type`
--

/*!50001 DROP VIEW IF EXISTS `average_age_by_db_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_age_by_db_type` AS select `p`.`diabetes_type` AS `diabetes_type`,avg(`pi`.`patient_age`) AS `avg_patient_age` from (`patients` `p` join `patient_physical_info` `pi` on((`p`.`physical_info_id` = `pi`.`physical_info_id`))) group by `p`.`diabetes_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patient_demographics_lifestyle`
--

/*!50001 DROP VIEW IF EXISTS `patient_demographics_lifestyle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_demographics_lifestyle` AS select `p`.`patient_id` AS `patient_id`,`p`.`diabetes_type` AS `diabetes_type`,`pi`.`patient_age` AS `patient_age`,`pe`.`ethnicity_risk` AS `ethnicity_risk`,`li`.`alcohol_consumption` AS `alcohol_consumption`,`li`.`smoking_status` AS `smoking_status` from (((`patients` `p` join `patient_physical_info` `pi` on((`p`.`physical_info_id` = `pi`.`physical_info_id`))) join `patient_ethnicity` `pe` on((`pi`.`ethnicity_id` = `pe`.`ethnicity_id`))) join `lifestyle_info` `li` on((`p`.`lifestyle_id` = `li`.`lifestyle_id`))) where (`li`.`smoking_status` = 'Non-Smoker') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patients_above_average_bmi`
--

/*!50001 DROP VIEW IF EXISTS `patients_above_average_bmi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patients_above_average_bmi` AS select `p`.`patient_id` AS `patient_id`,`hm`.`metric_value` AS `bmi_value` from ((`patients` `p` join `patients_has_patient_health_metrics` `phm` on((`phm`.`patient_id` = `p`.`patient_id`))) join `patient_health_metrics` `hm` on((`phm`.`health_metrics_id` = `hm`.`health_metrics_id`))) where ((`hm`.`metric_name` = 'BMI') and (`hm`.`metric_value` > (select avg(`patient_health_metrics`.`metric_value`) from `patient_health_metrics` where (`patient_health_metrics`.`metric_name` = 'BMI')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patients_and_their_health_metrics`
--

/*!50001 DROP VIEW IF EXISTS `patients_and_their_health_metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patients_and_their_health_metrics` AS select `p`.`patient_id` AS `patient_id`,`hm`.`metric_name` AS `metric_name`,`hm`.`metric_value` AS `metric_value` from ((`patients` `p` join `patients_has_patient_health_metrics` `phm` on((`p`.`patient_id` = `phm`.`patient_id`))) join `patient_health_metrics` `hm` on((`phm`.`health_metrics_id` = `hm`.`health_metrics_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test_count_by_diabetes_type`
--

/*!50001 DROP VIEW IF EXISTS `test_count_by_diabetes_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test_count_by_diabetes_type` AS select `p`.`diabetes_type` AS `diabetes_type`,count(`pt`.`test_id`) AS `total_tests` from (`patients` `p` join `patient_tests` `pt` on((`p`.`test_id` = `pt`.`test_id`))) where (`p`.`diabetes_type` is not null) group by `p`.`diabetes_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15 22:00:56
