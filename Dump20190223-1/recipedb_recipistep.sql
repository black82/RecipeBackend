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
-- Table structure for table `recipistep`
--

DROP TABLE IF EXISTS `recipistep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recipistep` (
  `recipestep_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `step_description` longtext,
  `step_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recipestep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipistep`
--

LOCK TABLES `recipistep` WRITE;
/*!40000 ALTER TABLE `recipistep` DISABLE KEYS */;
REPLACE INTO `recipistep` (`recipestep_id`, `step_description`, `step_title`) VALUES (1,'Heat the oil in a large',' have yet another super easy pasta dish for you all today. And the best part about this dish is that you only need 5 ingredients to whip this up! No wait'),(2,' heavy-based saucepan and fry the bacon until golden over a medium heat. Add the onions and garlic',' the best part is the bacon. Yeah'),(3,' frying until softened. Increase the heat and add the minced beef. Fry it until it has browned',' the bacon.'),(4,'Cook the pasta for 8-10 minutes or until al dente and drain reserving a little of the pasta water.','1'),(5,'Meanwhile heat the oil and gently fry 2 tablespoons of the parsley the garlic chilli and the ginger for a few minutes until slightly soft. Add the tomatoes and continue to cook for another few minutes. Stir in the tuna and salt.','2'),(6,'Toss the pasta with the sauce loosening with a little pasta water if necessary. Serve the tuna pasta sprinkled with the remaining parsley and freshly ground pepper.','3'),(7,'Heat the oil in a large',' have yet another super easy pasta dish for you all today. And the best part about this dish is that you only need 5 ingredients to whip this up! No wait'),(8,'Heat the oil in a large, heavy-based saucepan and fry the bacon until golden over a medium heat. Add the onions and garlic, frying until softened. Increase the heat and add the minced beef. Fry it until it has browned, breaking down any chunks of meat with a wooden spoon. Pour in the wine and boil until it has reduced in volume by about a third. Reduce the temperature and stir in the tomatoes, drained mushrooms, bay leaves, oregano, thyme and balsamic vinegar.  Either blitz the sun-dried tomatoes in a small blender with a little of the oil to loosen, or just finely chop before adding to the pan. Season well with salt and pepper. Cover with a lid and simmer the Bolognese sauce over a gentle heat for 1-1½ hours until it\'s rich and thickened, stirring occasionally. At the end of the cooking time, stir in the basil and add any extra seasoning if necessary.  Remove from the heat to \'settle\' while you cook the spaghetti in plenty of boiling salted water (for the time stated on the packet). Drain and divide between ','1,2,3,'),(9,'Heat the oil in a frying pan over a medium heat. Add the bacon and cook until crisp and slightly browned. Remove the pan from the heat and set aside.,Bring a large pan of salted water to the boil. Add the spaghetti and cook for 8–10 minutes until firm but slightly chewy (al dente).,While the spaghetti is cooking beat together the eggs, Parmesan and milk using a fork. Season well with salt and pepper.,Once the spaghetti is cooked drain over a bowl reserving some of the cooking water.,Place the frying pan back over a medium–low heat. Add the drained spaghetti and egg mixture and stir thoroughly so all the spaghetti is coated in the sauce. Add 1–2 tablespoons of the reserved pasta water to loosen if necessary. Serve immediately on hot plates with grated Parmesan on top.','1,2,3,4,5,'),(10,'Heat the oil in a frying pan over a medium heat. Add the bacon and cook until crisp and slightly browned. Remove the pan from the heat and set aside.','1'),(11,'Bring a large pan of salted water to the boil. Add the spaghetti and cook for 8–10 minutes until firm but slightly chewy (al dente).','2'),(12,'While the spaghetti is cooking beat together the eggs','3'),(13,' Parmesan and milk using a fork. Season well with salt and pepper.','4'),(14,'Once the spaghetti is cooked drain over a bowl reserving some of the cooking water.','5'),(15,'Heat the oil in a frying pan over a medium heat. Add the bacon and cook until crisp and slightly browned. Remove the pan from the heat and set aside.','1'),(16,'Bring a large pan of salted water to the boil. Add the spaghetti and cook for 8–10 minutes until firm but slightly chewy (al dente).','2'),(17,'While the spaghetti is cooking beat together the eggs','3'),(18,' Parmesan and milk using a fork. Season well with salt and pepper.','4'),(19,'Once the spaghetti is cooked drain over a bowl reserving some of the cooking water.','5'),(20,'Heat the oil in a large','1'),(21,' heavy-based saucepan and fry the bacon until golden over a medium heat. Add the onions and garlic','2'),(22,' frying until softened. Increase the heat and add the minced beef. Fry it until it has browned','3'),(23,' breaking down any chunks of meat with a wooden spoon. Pour in the wine and boil until it has reduced in volume by about a third. Reduce the temperature and stir in the tomatoes','4'),(24,' drained mushrooms','5'),(25,' drained mushrooms','5'),(26,'Heat the oil in a large','1'),(27,' heavy-based saucepan and fry the bacon until golden over a medium heat. Add the onions and garlic','2'),(28,' frying until softened. Increase the heat and add the minced beef. Fry it until it has browned','3'),(29,' breaking down any chunks of meat with a wooden spoon. Pour in the wine and boil until it has reduced in volume by about a third. Reduce the temperature and stir in the tomatoes','4'),(30,' drained mushrooms','5'),(31,'Heat the oil in a large','1'),(32,' heavy-based saucepan and fry the bacon until golden over a medium heat. Add the onions and garlic','2'),(33,' frying until softened. Increase the heat and add the minced beef. Fry it until it has browned','3'),(34,' breaking down any chunks of meat with a wooden spoon. Pour in the wine and boil until it has reduced in volume by about a third. Reduce the temperature and stir in the tomatoes','4'),(35,' drained mushrooms','5'),(38,'Preheat the oven to 220C/425F/Gas 7.','1'),(39,'Using a very sharp knife (or a clean Stanley knife) score the skin all over taking care not to cut through to the meat (you can ask your butcher to do this for you if you like).','2'),(40,'Drizzle the pork skin with a little olive oil and then massage one tablespoon of salt into the skin forcing it into the score marks. Put the onions and carrots into a large roasting tin drizzle with olive oil and shake around to coat. Sit the pork on top of the vegetables and place into the preheated oven. Cook for half an hour or until the crackling is crisp and golden-brown.','3'),(41,'Turn the oven down to 180C/350F/Gas 4. Cook for 30 minutes per half kilo or until the pork is cooked through (the juices will run clear when pierced with a knife. Alternatively insert a skewer into the middle of the thickest part of the meat remove and feel the skewer. The meat is cooked if the skewer it hot to touch.) To be honest it\'s hard to overcook pork shoulder so feel free to give it longer.','4'),(42,'While the pork is cooking make the apple sauce. Put the apples into a pan with the rosemary and 50ml/1¾oz of water. Cover and cook over a medium low heat for five minutes or until the apples have started to break down a little and soften.','5'),(43,'Add 1-2 tablespoons of sugar and cook for a further five minutes stirring occasionally until the apples are collapsed but there is still a little texture to the apple sauce. Taste and adjust the sweetness if necessary. Leave to cool to room temperature.','6'),(44,'Once the pork is cooked remove from the oven and leave to rest covered in foil for 15-20 minutes. Serve the pork and crackling sliced with the apple sauce on the side.','7');
/*!40000 ALTER TABLE `recipistep` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23 22:57:59
