-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: barondelacerveza
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avatars`
--

DROP TABLE IF EXISTS `avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_FK` (`userId`) USING BTREE,
  CONSTRAINT `contacts_FK_copy` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatars`
--

LOCK TABLES `avatars` WRITE;
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;
INSERT INTO `avatars` VALUES (3,'avatar-default.png',36);
/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Lager'),(2,'Black IPA'),(3,'Cerveza Negra'),(4,'Dorada Original'),(5,'IPA'),(6,'Clasica');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `city` varchar(350) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(350) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_FK` (`userId`),
  CONSTRAINT `contacts_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (34,'calle falsa 123','buenos aires',36,'buenos aires','011 39366942');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `alcoholContent` decimal(10,0) DEFAULT NULL,
  `outstanding` tinyint(1) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `trademark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `category_idx` (`categoryId`),
  CONSTRAINT `category` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
<<<<<<< HEAD
<<<<<<< HEAD
INSERT INTO `products` VALUES (1,'Hoppy Lager',200,10,'Cerveza lager , de amargor moderado pero fÃ¡cil de percibir. Notablemente balanceado con una base bien maltosa, como a bizcocho, pan tostado, proveniente de la malta vienna. De final seco y cuerpo ligero.',1,NULL,NULL,NULL,1,'img1.jpg',NULL),(2,'Dark Vader',1350,NULL,'Prima hermana de nuestra Superstar, La Dark Vader es una cerveza negra con intensa presencia de lÃºpulos tanto en aroma como en sabor.',2,NULL,NULL,NULL,0,'img2.png',NULL),(3,'Noire',250,10,'Cerveza Stella Artois Noire Schwarzbier negra lata 473 mL 6 u',3,NULL,NULL,NULL,NULL,'img3.png',NULL),(4,'Dorada Original',200,5,'La Cerveza Brahma Dorada es fÃ¡cil de tomar, suave y ligera, con baja carbonataciÃ³n. ',4,NULL,NULL,4,1,'img4.png',NULL),(5,'Fernandez',201,NULL,'La cerveza FernÃ¡ndez IPA es ideal para maridar con platos aromÃ¡ticos e intensos, vegetales grillados, carnes rojas con especias y salsas herbales o brochettes.',1,NULL,NULL,5,1,'img5.png',NULL),(6,'Chop',180,NULL,'Cerveza suave y refrescante',4,NULL,NULL,4,NULL,'img6.png',NULL),(7,'Andes Origen',200,12,'CERVEZA ANDES ORIGEN Negra LATA 473ML',6,NULL,NULL,NULL,NULL,'img7.png',NULL),(8,'Black Mamba',230,12,'Es una cerveza balanceado de color dorado profundo, con dulce aroma a malta y leve aroma a lÃºpulo. en boca se percibe la maltosidad con un carÃ¡cter leve a tostado y con un bajo frutado. Finaliza con un amargo medio, creando una cerveza de gran tomabilidad.',7,NULL,NULL,7,NULL,'img2.png',NULL),(9,'Cerveza Clasica',200,NULL,'Quilmes Red Lager es una cerveza roja que se destaca por su equilibrio, cremosidad y su delicado sabor amargo. Resulta fÃ¡cil de tomar e ideal para resaltar momentos especiales. Su color rojo cobrizo es producto de la perfecta combinaciÃ³n de maltas finamente seleccionadas y el tostado natural de los taninos de la cebada durante el proceso de malteo. ',8,NULL,NULL,NULL,NULL,'img9.jpg',NULL);
=======
>>>>>>> 26014cf75ac1aadd672d7439ca5d2e1db9da4652
=======
INSERT INTO `products` VALUES (124,'Happy Lager',120,10,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',1,'2021-10-15 01:14:34','2021-10-15 01:14:34',0,1,'img1.jpg','Patagonia'),(125,'Dark Vader',205,10,'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. ',2,'2021-10-15 01:16:03','2021-10-15 01:16:03',10,1,'img2.png','BierHause'),(126,'Notre',210,10,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',3,'2021-10-15 01:16:42','2021-10-15 01:16:42',30,1,'img3.png','Stella Artois'),(127,'Clasica',210,0,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',4,'2021-10-15 01:17:17','2021-10-15 01:17:17',21,1,'img4.png','Brahma'),(128,'Fernandez IPA',210,20,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',5,'2021-10-15 01:17:45','2021-10-15 01:17:45',23,1,'img5.png','Patagonia'),(129,'Brahma Chop',150,15,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',6,'2021-10-15 01:18:32','2021-10-15 01:18:32',23,1,'img6.png','Brahma'),(130,'Andes Origen',250,0,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',3,'2021-10-15 01:19:16','2021-10-15 01:19:16',12,1,'img7.png','Andes'),(131,'Black Mamba',300,0,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n\r\n',3,'2021-10-15 01:19:51','2021-10-15 01:19:51',0,1,'img8.png','Grunge'),(132,'Quilmes Clasica',150,0,' Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad. \r\n',6,'2021-10-15 01:20:34','2021-10-15 01:20:34',0,1,'img9.jpg','Quilmes');
>>>>>>> 947775c296b582934a47f680e0ad2b6447ee4b22
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `rol` int(2) NOT NULL DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (23,'Jonatan','admin@admin.com','$2a$12$FjDPu61/JRRADiF0qb8Aq..zoEMGWY4yFT34CQPq3HJwFAY9TfFYq',1,'2021-10-13 21:53:46','2021-10-13 21:53:46'),(36,'Jonatan','email@email.com','$2a$12$iej551/v56aGFjUttySLBubQMMhuwzcsJ6mVbsTynSdjXdwIkk0Ea',0,'2021-10-17 03:02:25','2021-10-17 03:04:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'barondelacerveza'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
<<<<<<< HEAD
-- Dump completed on 2021-10-13 21:29:20
=======
-- Dump completed on 2021-10-14 22:15:49
>>>>>>> 26014cf75ac1aadd672d7439ca5d2e1db9da4652
=======
-- Dump completed on 2021-10-17  5:17:08
>>>>>>> 947775c296b582934a47f680e0ad2b6447ee4b22