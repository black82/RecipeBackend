CREATE DATABASE  IF NOT EXISTS `recipedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `recipedb`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: recipedb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recipe` (
  `recipe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `announce` varchar(3000) DEFAULT NULL,
  `cooking_time` int(11) NOT NULL,
  `prep_time_minute` int(11) NOT NULL,
  `publication_date` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `FKc8o8io8s0f7nqcd3429u6cxjs` (`user_id`),
  KEY `FK7x0rmhqtb4ck4xvcjfbyyq6kl` (`rate`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
REPLACE INTO `recipe` (`recipe_id`, `announce`, `cooking_time`, `prep_time_minute`, `publication_date`, `title`, `user_id`, `rate`) VALUES (1,'The easiest pasta dish you will ever make with just 5 ingredients in 15 min, loaded with Parmesan and crisp bacon goodness!',12,5,'2019-02-23 15:22:05','SPAGHETTI CARBONARA',11,11),(2,'Antonio Carluccio\'s not above an easy tuna pasta recipe. A store cupboard favourite with a twist of fresh ginger.',10,30,'2019-02-23 20:48:12','Spaghetti BologneseTuna pasta sauce',2,2),(4,'Master crispy crackling with this simple roast pork shoulder recipe and you’ll have the perfect roast dinner. Use our roast calculator to work out exact roast pork shoulder cooking times and temperatures.',120,30,'2019-02-23 21:53:27','Roast pork shoulder',13,13);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23 22:57:51
