-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: libdb
-- ------------------------------------------------------
-- Server version	8.0.20
create database libdb;
use libdb;
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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_book_genre1_idx` (`genre_id`),
  CONSTRAINT `fk_book_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'A Game of Thrones','George R. R. Martin',1),(2,'The Fellowship of the Ring','J. R. R. Tolkien',1),(3,'The Lion, the Witch and the Wardrobe','C. S. Lewis',1),(4,'The Colour of Magic','Terry Pratchett',1),(5,'Assassin?s Apprentice','Robin Hobb',1),(6,'The Lies of Locke Lamora','Scott Lynch',1),(7,'The Name of the Wind','Patrick Rothfuss',1),(8,'Dragonflight','Anne McCaffrey',1),(9,'The Eye of the World','Robert Jordan',1),(10,'The Blade Itself','Joe Abercrombie',1),(11,'The Hitchhiker\'s Guide to the Galaxy','Douglas Adams',2),(12,'Ender\'s Game','Orson Scott Card',2),(13,'Dune','Frank Herbert',2),(14,'Foundation','Isaac Asimov',2),(15,'Neuromancer','William Gibson',2),(16,'Slaughterhouse-Five','Kurt Vonnegut',2),(17,'The Handmaid\'s Tale','Margaret Atwood',2),(18,'2001: A Space Odyssey','Arthur C. Clarke',2),(19,'Ready Player One','Ernest Cline',2),(20,'The Time Machine','H. G. Wells',2),(21,'All the Light We Cannot See','Anthony Doerr',3),(22,'The Color Purple','Alice Walker',3),(23,'War and Peace','Leo Tolstoy',3),(24,'Sarah\'s Key','Tatiana de Rosnay',3),(25,'Wolf Hall','Hilary Mantel',3),(26,'I, Claudius','Robert Graves',3),(27,'The Other Boleyn Girl','Philippa Gregory',3),(28,'A Tale of Two Cities','Charles Dickens',3),(29,'Girl with a Pearl Earring','Tracy Chevalier',3),(30,'The Book Thief','Markus Zusak',3),(31,'And Then There Were None','Agatha Christie',4),(32,'The Big Sleep','Raymond Chandler',4),(33,'Gone Girl','Gillian Flynn',4),(34,'The Postman Always Rings Twice','James M. Cain',4),(35,'In Cold Blood','Truman Capote',4),(36,'The Woman in White','Wilkie Collins',4),(37,'Anatomy of a Murder','Robert Traver',4),(38,'The Daughter of Time','Josephine Tey',4),(39,'The Da Vinci Code','Dan Brown',4),(40,'The Girl with the Dragon Tattoo','Stieg Larsson',4),(41,'Three Junes','Julia Glass',5),(42,'Commonwealth','Ann Patchett',5),(43,'Beartown','Fredrik Backman',5),(44,'The Heart\'s Invisible Furies','John Boyne',5),(45,'Room','Emma Donoghue',5),(46,'Eleanor Oliphant Is Completely Fine','Gail Honeyman',5),(47,'A Little Life','Hanya Yanagihara',5),(48,'Extremely Loud and Incredibly Close','Jonathan Safran Foer',5),(49,'Less','Andrew Sean Greer',5),(50,'The Secret History','Donna Tartt',5),(51,'The New Jim Crow','Michelle Alexander',6),(52,'The Emperor of All Maladies','Siddhartha Mukherjee',6),(53,'The Immortal Life of Henrietta Lacks','Rebecca Skloot',6),(54,'Bloodlands','Timothy Snyder',6),(55,'The Sixth Extinction','Elizabeth Kolbert',6),(56,'The Invention of Nature','Andrea Wulf',6),(57,'The Witches','Stacy Schiff',6),(58,'Dark Money','Jane Mayer',6),(59,'How to Survive a Plague','David France',6),(60,'The Other Slavery','Andres Resendez',6);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy`
--

DROP TABLE IF EXISTS `copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copy` (
  `copy_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `is_available` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`copy_id`),
  KEY `fk_copy_book1_idx` (`book_id`),
  CONSTRAINT `fk_copy_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy`
--

LOCK TABLES `copy` WRITE;
/*!40000 ALTER TABLE `copy` DISABLE KEYS */;
INSERT INTO `copy` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,2,1),(7,2,1),(8,2,1),(9,2,1),(10,2,1),(11,3,1),(12,3,1),(13,3,1),(14,3,1),(15,3,1),(16,3,1),(17,4,1),(18,4,1),(19,4,1),(20,4,1),(21,4,1),(22,4,1),(23,5,1),(24,5,1),(25,5,1),(26,5,1),(27,6,1),(28,6,1),(29,6,1),(30,6,1),(31,6,1),(32,7,1),(33,7,1),(34,7,1),(35,7,1),(36,7,1),(37,7,1),(38,8,1),(39,8,1),(40,8,1),(41,8,1),(42,9,1),(43,9,1),(44,9,1),(45,9,1),(46,9,1),(47,10,1),(48,10,1),(49,10,1),(50,10,1),(51,10,1),(52,11,1),(53,11,1),(54,11,1),(55,11,1),(56,11,1),(57,11,1),(58,12,1),(59,12,1),(60,12,1),(61,12,1),(62,13,1),(63,13,1),(64,13,1),(65,13,1),(66,13,1),(67,13,1),(68,14,1),(69,14,1),(70,14,1),(71,14,1),(72,14,1),(73,15,1),(74,15,1),(75,15,1),(76,15,1),(77,16,1),(78,16,1),(79,16,1),(80,16,1),(81,17,1),(82,17,1),(83,17,1),(84,17,1),(85,17,1),(86,17,1),(87,18,1),(88,18,1),(89,18,1),(90,18,1),(91,18,1),(92,18,1),(93,19,1),(94,19,1),(95,19,1),(96,19,1),(97,19,1),(98,19,1),(99,20,1),(100,20,1),(101,20,1),(102,20,1),(103,20,1),(104,20,1),(105,21,1),(106,21,1),(107,21,1),(108,21,1),(109,21,1),(110,21,1),(111,22,1),(112,22,1),(113,22,1),(114,22,1),(115,22,1),(116,22,1),(117,23,1),(118,23,1),(119,23,1),(120,23,1),(121,24,1),(122,24,1),(123,24,1),(124,24,1),(125,25,1),(126,25,1),(127,25,1),(128,25,1),(129,25,1),(130,25,1),(131,26,1),(132,26,1),(133,26,1),(134,26,1),(135,26,1),(136,27,1),(137,27,1),(138,27,1),(139,27,1),(140,27,1),(141,27,1),(142,28,1),(143,28,1),(144,28,1),(145,28,1),(146,28,1),(147,28,1),(148,29,1),(149,29,1),(150,29,1),(151,29,1),(152,30,1),(153,30,1),(154,30,1),(155,30,1),(156,31,1),(157,31,1),(158,31,1),(159,31,1),(160,32,1),(161,32,1),(162,32,1),(163,32,1),(164,32,1),(165,33,1),(166,33,1),(167,33,1),(168,33,1),(169,33,1),(170,34,1),(171,34,1),(172,34,1),(173,34,1),(174,34,1),(175,34,1),(176,35,1),(177,35,1),(178,35,1),(179,35,1),(180,35,1),(181,35,1),(182,36,1),(183,36,1),(184,36,1),(185,36,1),(186,36,1),(187,36,1),(188,37,1),(189,37,1),(190,37,1),(191,37,1),(192,38,1),(193,38,1),(194,38,1),(195,38,1),(196,38,1),(197,38,1),(198,39,1),(199,39,1),(200,39,1),(201,39,1),(202,39,1),(203,40,1),(204,40,1),(205,40,1),(206,40,1),(207,40,1),(208,41,1),(209,41,1),(210,41,1),(211,41,1),(212,41,1),(213,41,1),(214,42,1),(215,42,1),(216,42,1),(217,42,1),(218,42,1),(219,42,1),(220,43,1),(221,43,1),(222,43,1),(223,43,1),(224,44,1),(225,44,1),(226,44,1),(227,44,1),(228,45,1),(229,45,1),(230,45,1),(231,45,1),(232,46,1),(233,46,1),(234,46,1),(235,46,1),(236,46,1),(237,46,1),(238,47,1),(239,47,1),(240,47,1),(241,47,1),(242,47,1),(243,48,1),(244,48,1),(245,48,1),(246,48,1),(247,48,1),(248,48,1),(249,49,1),(250,49,1),(251,49,1),(252,49,1),(253,49,1),(254,50,1),(255,50,1),(256,50,1),(257,50,1),(258,51,1),(259,51,1),(260,51,1),(261,51,1),(262,51,1),(263,51,1),(264,52,1),(265,52,1),(266,52,1),(267,52,1),(268,52,1),(269,53,1),(270,53,1),(271,53,1),(272,53,1),(273,53,1),(274,54,1),(275,54,1),(276,54,1),(277,54,1),(278,55,1),(279,55,1),(280,55,1),(281,55,1),(282,55,1),(283,55,1),(284,56,1),(285,56,1),(286,56,1),(287,56,1),(288,56,1),(289,56,1),(290,57,1),(291,57,1),(292,57,1),(293,57,1),(294,58,1),(295,58,1),(296,58,1),(297,58,1),(298,58,1),(299,59,1),(300,59,1),(301,59,1),(302,59,1),(303,59,1),(304,59,1),(305,60,1),(306,60,1),(307,60,1),(308,60,1),(309,60,1),(310,60,1);
/*!40000 ALTER TABLE `copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Fantasy'),(2,'Science Fiction'),(3,'Historical Fiction'),(4,'Mystery'),(5,'Contemporary Fiction'),(6,'Non-Fiction');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hold`
--

DROP TABLE IF EXISTS `hold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hold` (
  `hold_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `user_id` int NOT NULL,
  `queue_position` int NOT NULL,
  `time_issued` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hold_id`),
  KEY `fk_hold_book1_idx` (`book_id`),
  KEY `fk_hold_user1_idx` (`user_id`),
  CONSTRAINT `fk_hold_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_hold_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hold`
--

LOCK TABLES `hold` WRITE;
/*!40000 ALTER TABLE `hold` DISABLE KEYS */;
/*!40000 ALTER TABLE `hold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian` (
  `librarian_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES (1,'carlin','bef2ebe8919fe02072a0ed9283829d7c780cc76ea671c2d4bab0f633e396825e','FTDU6ECGBsHSEq8J2p4/oQ==');
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `notice_text` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `fk_notice_user1_idx` (`user_id`),
  CONSTRAINT `fk_notice_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return`
--

DROP TABLE IF EXISTS `return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `withdrawl_id` int NOT NULL,
  `time_returned` datetime NOT NULL,
  PRIMARY KEY (`return_id`),
  KEY `fk_return_withdrawl1_idx` (`withdrawl_id`),
  CONSTRAINT `fk_return_withdrawl1` FOREIGN KEY (`withdrawl_id`) REFERENCES `withdrawl` (`withdrawl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return`
--

LOCK TABLES `return` WRITE;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
INSERT INTO `return` VALUES (1,2,'2020-08-03 17:58:15');
/*!40000 ALTER TABLE `return` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `make_copy_available` AFTER INSERT ON `return` FOR EACH ROW begin
	update copy join withdrawl using (copy_id)
    set is_available = true
    where withdrawl_id = new.withdrawl_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'aditya','b90a4bdc77448a91f6be00f392e556b5cda5741a50fa96b73a07add8186c8417','91EZDFCHo/GrHXAXkNHn1g=='),(3,'kate123','db4c2e796b553352192f73e0275c8cd8a31952fc5c50236588d29e186afe9f96','TheIh3isj8KeLGd9uY03nw==');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawl`
--

DROP TABLE IF EXISTS `withdrawl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawl` (
  `withdrawl_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `copy_id` int NOT NULL,
  `time_issued` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_due` datetime NOT NULL,
  PRIMARY KEY (`withdrawl_id`),
  KEY `fk_withdrawl_user1_idx` (`user_id`),
  KEY `fk_withdrawl_copy1_idx` (`copy_id`),
  CONSTRAINT `fk_withdrawl_copy1` FOREIGN KEY (`copy_id`) REFERENCES `copy` (`copy_id`),
  CONSTRAINT `fk_withdrawl_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawl`
--

LOCK TABLES `withdrawl` WRITE;
/*!40000 ALTER TABLE `withdrawl` DISABLE KEYS */;
INSERT INTO `withdrawl` VALUES (2,2,1,'2020-08-03 15:06:10','2020-08-17 15:06:10');
/*!40000 ALTER TABLE `withdrawl` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `make_copy_unavailable` AFTER INSERT ON `withdrawl` FOR EACH ROW begin
	update copy
    set is_available = 0
    where copy_id = new.copy_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'libdb'
--

--
-- Dumping routines for database 'libdb'
--
/*!50003 DROP FUNCTION IF EXISTS `num_copy_available` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `num_copy_available`(book_id_param int) RETURNS int
    DETERMINISTIC
begin
	declare available_copies int;
    
    select count(*)
    into available_copies
    from copy
    where book_id = book_id_param and is_available = true;
    
    return available_copies;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_copy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_copy`(book_id_param int) RETURNS int
    DETERMINISTIC
begin
	declare total_copies int;
	
    select count(*)
    into total_copies
    from copy
    where book_id = book_id_param;
    
    return total_copies;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `place_hold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `place_hold`(
	in book_name varchar(255),
    in user_id_param int
)
begin
	declare last_position int;
    declare book_id_var int;
    
    select book_id
    into book_id_var
    from book
    where book_name = title;
    
    if(num_copy_available(book_id_var) > 0) then
		signal sqlstate 'HY000' set message_text = 'You cannot place a hold on a book that is available to withdraw.';
	end if;
    if(not exists(select * from hold join book using (book_id) where book_id_var = book_id and user_id = user_id_param)) then
		if(exists(select * from hold join book using (book_id) where book_id_var = book_id)) then
			select queue_position
			into last_position
			from hold join book using (book_id)
			where book_id = book_id_var
			order by queue_position desc
			limit 1;
			
			insert into hold (book_id, user_id, queue_position, time_issued) values (book_id_var, user_id_param, last_position + 1, now());
		else
			insert into hold (book_id, user_id, queue_position, time_issued) values (book_id_var, user_id_param, 1, now());
		end if;
	else
		signal sqlstate 'HY000' set message_text = 'You cannot place two holds on the same book.';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `return_book`(
	in withdrawl_id_param int
)
begin
	declare book_id_var int;
	if(exists(select * from `return` where withdrawl_id = withdrawl_id_param)) then
		signal sqlstate 'HY000' set message_text = 'This return has already been processed.';
	end if;
	insert into `return` (withdrawl_id, time_returned) values (withdrawl_id_param, now());
    
    select book_id
    into book_id_var
    from withdrawl join copy using (copy_id)
    where withdrawl_id = withdrawl_id_param;
	if(num_copy_available(book_id_var) = 1) then
		call shift_hold(book_id_var);
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `shift_hold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `shift_hold`(
	in book_id_param int
)
begin
	declare hold_id_var int;
    declare user_id_var int;
    declare queue_position_var int;
    declare copy_id_var int;
    
    declare book_name_var varchar(255);
    
	declare row_not_found tinyint default false;
    
	declare hold_cursor cursor for 
		select hold_id, user_id, queue_position from hold where book_id = book_id_param and queue_position > 0;
	declare continue handler for not found
		set row_not_found = true;
	open hold_cursor;
    fetch hold_cursor into hold_id_var, user_id_var, queue_position_var;
    while row_not_found = false do
		-- make sure that the first hold in queue gets given a book through withdrawl
		if(queue_position_var = 1) then
			select title
			into book_name_var
			from book
			where book_id = book_id_param;
			
			call withdraw_book(book_name_var, user_id_var);
		end if;
		update hold
		set queue_position = queue_position_var - 1
		where hold_id = hold_id_var;
		fetch hold_cursor into hold_id_var, user_id_var, queue_position_var;
	end while;
    close hold_cursor;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `withdraw_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `withdraw_book`(
	in book_name varchar(255),
    in user_id int
)
begin
	declare book_id_var int;
    declare copy_id_var int;
    
    select book_id
    into book_id_var
    from book
    where book_name = title;
    
    if(exists(select * from withdrawl join copy using (copy_id) where book_id_var = book_id and user_id = withdrawl.user_id)) then
		signal sqlstate 'HY000' set message_text = 'You cannot withdraw more than one copy of the same book.';
	end if;
    
    if(num_copy_available(book_id_var) = 0) then
		signal sqlstate 'HY000' set message_text = 'You cannot withdraw a book with no available copies.';
	end if;
    
    select copy_id
    into copy_id_var
    from copy
    where book_id = book_id_var and is_available = true
    limit 1;
    
    insert into withdrawl (user_id, copy_id, time_issued, time_due) values (user_id, copy_id_var, now(), now() + interval 2 week);
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-04 13:48:28
