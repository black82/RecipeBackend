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
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ingredient` (
  `ingredient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descriptions` varchar(3000) NOT NULL,
  `name_ingredient` varchar(3000) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
REPLACE INTO `ingredient` (`ingredient_id`, `descriptions`, `name_ingredient`) VALUES (1,'8 ounces spaghetti',' spaghetti'),(2,' 2 large eggs ','  eggs freshly'),(3,'1/2 cup freshly',' grated Parmesan'),(4,' grated Parmesan ','  slices bacon'),(5,'4 slices bacon','   cloves garlic minced Kosher'),(6,' diced 4 ',' salt'),(7,'cloves garlic',' black pepper'),(8,' minced Kosher salt a','   chopped '),(9,'nd freshly ground black','fresh parsley leaves'),(10,'375g/13oz dried linguine or other pasta',' linguine'),(11,'4 tbsp extra virgin olive oil',' olive oil'),(12,'3 tbsp finely chopped parsley','parsley'),(13,'2 garlic cloves finely chopped','garlic'),(14,'1 small chilli pepper finely chopped',' chilli'),(15,'1cm/½in fresh ginger root thinly sliced','ginger'),(16,'450g/1lb carton or bottle passata',' passata'),(17,'400g tinned tuna in oil drained and roughly chopped','tinned tuna'),(18,' salt and freshly ground black pepper',' black pepper'),(19,'8 ounces spaghetti',' spaghetti'),(20,' 2 large eggs ','  eggs freshly'),(21,'1/2 cup freshly',' grated Parmesan'),(22,' grated Parmesan ','  slices bacon'),(23,'4 slices bacon','   cloves garlic minced Kosher'),(24,' diced 4 ',' salt'),(25,'cloves garlic',' black pepper'),(26,' minced Kosher salt a','   chopped '),(27,'nd freshly ground black','fresh parsley leaves'),(28,'nd freshly ground black','fresh parsley leaves'),(29,' minced Kosher salt a','   chopped '),(30,'cloves garlic',' black pepper'),(31,' diced 4 ',' salt'),(32,'4 slices bacon','   cloves garlic minced Kosher'),(33,' grated Parmesan ','  slices bacon'),(34,'1/2 cup freshly',' grated Parmesan'),(35,' 2 large eggs ','  eggs freshly'),(36,'8 ounces spaghetti',' spaghetti'),(37,'8 ounces spaghetti',' spaghetti'),(38,' 2 large eggs ','  eggs freshly'),(39,'1/2 cup freshly',' grated Parmesan'),(40,' grated Parmesan ','  slices bacon'),(41,'4 slices bacon','   cloves garlic minced Kosher'),(42,' diced 4 ',' salt'),(43,'cloves garlic',' black pepper'),(44,' minced Kosher salt a','   chopped '),(45,'nd freshly ground black','fresh parsley leaves'),(46,'nd freshly ground black','fresh parsley leaves'),(47,' minced Kosher salt a','   chopped '),(48,'cloves garlic',' black pepper'),(49,' diced 4 ',' salt'),(50,'4 slices bacon','   cloves garlic minced Kosher'),(51,' grated Parmesan ','  slices bacon'),(52,'1/2 cup freshly',' grated Parmesan'),(53,' 2 large eggs ','  eggs freshly'),(54,'8 ounces spaghetti',' spaghetti'),(55,'8 ounces spaghetti',' spaghetti'),(56,' 2 large eggs ','  eggs freshly'),(57,'1/2 cup freshly',' grated Parmesan'),(58,' grated Parmesan ','  slices bacon'),(59,'4 slices bacon','   cloves garlic minced Kosher'),(60,' diced 4 ',' salt'),(61,'cloves garlic',' black pepper'),(62,' minced Kosher salt a','   chopped '),(63,'nd freshly ground black','fresh parsley leaves'),(64,'nd freshly ground black','fresh parsley leaves'),(65,' minced Kosher salt a','   chopped '),(66,'cloves garlic',' black pepper'),(67,' diced 4 ',' salt'),(68,'4 slices bacon','   cloves garlic minced Kosher'),(69,' grated Parmesan ','  slices bacon'),(70,'1/2 cup freshly',' grated Parmesan'),(71,' 2 large eggs ','  eggs freshly'),(72,'8 ounces spaghetti',' spaghetti'),(73,'8 ounces spaghetti',' spaghetti'),(74,' 2 large eggs ','  eggs freshly'),(75,'1/2 cup freshly',' grated Parmesan'),(76,' grated Parmesan ','  slices bacon'),(77,'4 slices bacon','   cloves garlic minced Kosher'),(78,' diced 4 ',' salt'),(79,'cloves garlic',' black pepper'),(80,' minced Kosher salt a','   chopped '),(81,'nd freshly ground black','fresh parsley leaves'),(82,' drained mushrooms','5'),(83,'½ tbsp olive oil',' olive oil'),(84,'150g/5½oz smoked bacon or pancetta diced',' pancetta'),(85,' 3 large free-range eggs','  eggs'),(86,'100g/3½oz Parmesan grated plus extra for serving',' parmesan'),(87,'50ml/2fl oz full-fat milk',' milk'),(88,'200g/7oz dried spaghetti','spaghetti'),(89,'salt and freshly ground pepper','pepper'),(98,'2-2.5kg/4lb 8oz-5lb half pork shoulder boned and rolled',' pork shoulder'),(99,'_',' olive oil'),(100,'_','sea salt'),(101,'3 white onions halved',' onions'),(102,'2 carrots',' carrots'),(103,'3 Bramley apples. peeled. cored and diced',' Bramley apples'),(104,'1 sprig rosemary finely chopped',' rosemary'),(105,'demerara sugar to taste','demerara sugar');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23 22:58:00
