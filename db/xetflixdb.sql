CREATE DATABASE  IF NOT EXISTS `xetflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `xetflix`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: xetflix
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Paul Rudd'),(2,'Robert Downey Jr.'),(3,'Chris Evans'),(4,'Mark Ruffalo'),(5,'Scarlett Johanson'),(6,'Tom Holland'),(7,'Michael Cera'),(8,'idk');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_videos`
--

DROP TABLE IF EXISTS `actors_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors_videos` (
  `af_id` int NOT NULL AUTO_INCREMENT,
  `actor_id` int NOT NULL,
  `video_id` int NOT NULL,
  PRIMARY KEY (`af_id`),
  KEY `actor_id` (`actor_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `actors_videos_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `actors_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_videos`
--

LOCK TABLES `actors_videos` WRITE;
/*!40000 ALTER TABLE `actors_videos` DISABLE KEYS */;
INSERT INTO `actors_videos` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,2,3),(7,3,3),(8,4,3),(9,5,3),(10,6,3),(11,5,4),(12,2,5),(13,6,5),(14,2,6),(15,5,6),(16,3,7),(17,7,7),(18,2,8),(19,6,8),(20,2,9),(21,3,9),(22,4,9),(23,5,9),(24,6,10),(25,2,11),(26,4,11),(27,8,12),(28,8,13),(29,8,14),(30,8,15);
/*!40000 ALTER TABLE `actors_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comments_id` int NOT NULL AUTO_INCREMENT,
  `video_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_content` text,
  `likes` int DEFAULT NULL,
  PRIMARY KEY (`comments_id`),
  KEY `user_id` (`user_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'action'),(2,'comedy'),(3,'scifi'),(4,'adventure'),(5,'family'),(6,'thriller'),(7,'crime');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres_videos`
--

DROP TABLE IF EXISTS `genres_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres_videos` (
  `gf_id` int NOT NULL AUTO_INCREMENT,
  `genre_id` int NOT NULL,
  `video_id` int NOT NULL,
  PRIMARY KEY (`gf_id`),
  KEY `genre_id` (`genre_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `genres_videos_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `genres_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres_videos`
--

LOCK TABLES `genres_videos` WRITE;
/*!40000 ALTER TABLE `genres_videos` DISABLE KEYS */;
INSERT INTO `genres_videos` VALUES (1,1,1),(2,2,1),(3,1,2),(4,3,2),(5,1,3),(6,3,3),(7,1,4),(8,3,4),(9,5,5),(10,4,5),(11,1,6),(12,3,6),(13,1,7),(14,2,7),(15,1,8),(16,3,8),(17,1,9),(18,3,9),(19,6,10),(20,6,11),(21,7,11),(22,5,12),(23,2,12),(24,2,13),(25,3,13),(26,4,13),(27,1,14),(28,4,14),(29,5,14),(30,7,14),(31,1,15),(32,4,15),(33,3,15);
/*!40000 ALTER TABLE `genres_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_video_mylist`
--

DROP TABLE IF EXISTS `user_video_mylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_video_mylist` (
  `myList_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `video_id` int NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`myList_id`),
  KEY `user_id` (`user_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `user_video_mylist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_video_mylist_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_video_mylist`
--

LOCK TABLES `user_video_mylist` WRITE;
/*!40000 ALTER TABLE `user_video_mylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_video_mylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pfp` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nomnom','123p',NULL),(2,'123','123',NULL),(8,'123','123',NULL),(9,'123','123',NULL),(10,'122','122',NULL),(11,'122','122',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `seasons` int NOT NULL,
  `episodes` int NOT NULL,
  `poster_path` varchar(200) NOT NULL,
  `video_path` varchar(200) NOT NULL,
  `rating` int DEFAULT NULL,
  `summary` text,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'Antman',1,1,'posters/antman.jpg','videos/antman.mp4',4,'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, pull off a plan that will save the world.'),(2,'Avengers: age of Ultron',1,1,'posters/avengersageofultron.jpg','videos/avengersageofultron.mp4',4,'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.'),(3,'Avengers: Infinity War',1,1,'posters/avengersinfinitywar.jpg','videos/avengersinfinitywar.mp4',5,'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.'),(4,'Black Widow',1,1,'posters/blackwidow.jpg','videos/blackwidow.mp4',3,'Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.'),(5,'Dolittle',1,1,'posters/dolittle.jpg','videos/dolittle.mp4',3,'A physician who can talk to animals embarks on an adventure to find a legendary island with a young apprentice and a crew of strange pets.'),(6,'Iron man',1,1,'posters/ironman.jpg','videos/ironman.mp4',5,'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.'),(7,'Scott Pilgrim vs the world',1,1,'posters/scottpilgrimvstheworld.jpg','videos/scottpilgrimvstheworl.mp4',4,'A young man must defeat his new girlfriend\'s seven evil exes, who are willing to do anything to prevent her happiness with someone else.'),(8,'Spider-man: Homecoming',1,1,'posters/spider-manhomecoming.jpg','videos/spider-manhomecoming.mp4',4,'Peter Parker tries to stop Adrian \'The Vulture\' Toomes from selling weapons made with advanced Chitauri technology while trying to balance his life as an ordinary high school student.'),(9,'The Avengers',1,1,'posters/theavengers.jpg','videos/theavengers.mp4',5,'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.'),(10,'The Crowded Room',1,6,'posters/thecrowdedroom.jpg','videos/thecrowdedroom.mp4',5,'In Manhattan in the summer of 1979, a young man is arrested for a shocking crime, and an unlikely investigator must solve the mystery behind it before the true criminal strikes again.'),(11,'Zodiac',1,1,'posters/zodiac.jpg','videos/zodiac.mp4',4,'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.'),(12,'Family Guy',23,18,'posters/familyguy.jpg','videos/familyguy.mp4',4,'In a wacky Rhode Island town, a dysfunctional family strives to cope with everyday life as they are thrown from one crazy scenario to another.'),(13,'Rick and Morty',8,5,'posters/rickandmorty.jpg','videos/rickandmorty.mp4',5,'The fractured domestic lives of a nihilistic mad scientist and his anxious grandson are further complicated by their inter-dimensional misadventures.'),(14,'Batman: The Animated Series',1,35,'posters/batman.jpg','videos/batman.mp4',5,'Follows the adventures of billionaire playboy Bruce Wayne who is secretly the vigilante known as Batman, whom with help from various side kicks and allies fights a rouges gallery of criminals and super-villains in Gotham City.'),(15,'Arcane',2,6,'posters/arcane.jpg','videos/arcabe.mp4',5,'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-19 22:33:25
