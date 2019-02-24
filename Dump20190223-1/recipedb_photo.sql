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
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photo` (
  `photo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patch` varchar(5000) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
REPLACE INTO `photo` (`photo_id`, `patch`) VALUES (1,'http://newpost.gr/photo/master/201607/1148125.jpg'),(2,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeg'),(3,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeg'),(4,'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/linguinewithtunafish_70041_16x9.jpg'),(5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvbO6cIm0VK4ufn1bSH6OO4H-7ov0XpFjVu0Bp_9w5lFcWu3Ce'),(6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT58HRc1rT2ANi-SGhrF7oMnz_Mailaeornw0_fAf7vzh2Z390_'),(7,'https://hips.hearstapps.com/del.h-cdn.co/assets/16/04/1453933735-carbonara-delish-1.jpg'),(8,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(9,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeg'),(10,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeg'),(11,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(12,'https://hips.hearstapps.com/del.h-cdn.co/assets/16/04/1453933735-carbonara-delish-1.jpg'),(13,'https://hips.hearstapps.com/del.h-cdn.co/assets/16/04/1453933735-carbonara-delish-1.jpg'),(14,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(15,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeg'),(16,'https://img.taste.com.au/kmT_aJW8/taste/2016/11/spaghetti-with-tuna-sauce-13068-1.jpeghttps://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(17,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(18,'https://hips.hearstapps.com/del.h-cdn.co/assets/16/04/1453933735-carbonara-delish-1.jpg'),(19,'https://hips.hearstapps.com/del.h-cdn.co/assets/16/04/1453933735-carbonara-delish-1.jpg'),(20,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(21,'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(22,'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(23,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(24,'https://kochkarussell.com/wp-content/uploads/2018/08/Spaghetti-Carbonara-1.jpg'),(25,'https://hips.hearstapps.com/del.h-cdn.co/assets/17/03/2560x1706/gallery-1484784941-white-cheddar-carbonaral1.jpg?resize=768:*'),(26,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(27,'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(28,'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(29,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(30,'https://hips.hearstapps.com/del.h-cdn.co/assets/17/03/2560x1706/gallery-1484784941-white-cheddar-carbonaral1.jpg?resize=768:*'),(31,'https://hips.hearstapps.com/del.h-cdn.co/assets/17/03/2560x1706/gallery-1484784941-white-cheddar-carbonaral1.jpg?resize=768:*'),(32,'https://howtofeedaloon.com/wp-content/uploads/2016/12/Pasta-Carbonara-Vertical-Video-Blog.jpg'),(33,'https://media.eggs.ca/assets/RecipePhotos/_resampled/FillWyIxMjgwIiwiNzIwIl0/Linguine-Carbonara-CMS.jpg'),(37,'https://www.seriouseats.com/recipes/images/2015/12/20111204-pork-shoulder%20-%2007.jpg'),(38,'https://2.bp.blogspot.com/-4nFjB70G6XE/UB_UD1cjHqI/AAAAAAAAB9I/382fTS13y6g/s640/pork3small.jpg'),(39,'https://img.taste.com.au/xIM9T2Xv/w643-h428-cfill-q90/taste/2016/11/fennel-black-pepper-and-lemon-slow-roasted-pork-shoulder-76036-1.jpeg');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23 22:57:56
