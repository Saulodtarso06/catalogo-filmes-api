-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: filmes_db
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmes` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `titulo` varchar(100) NOT NULL,
    `diretor` varchar(100) DEFAULT NULL,
    `ano` int(11) DEFAULT NULL,
    `genero` varchar(50) DEFAULT NULL,
    `nota` decimal(2,1) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'O Poderoso Chefão','Francis Ford Coppola',1972,'Drama/Crime',9.2),(2,'Interestelar','Christopher Nolan',2014,'Ficção Científica',8.6),(3,'Cidade de Deus','Fernando Meirelles',2002,'Drama/Policial',8.7),(4,'Parasita','Bong Joon-ho',2019,'Drama/Suspense',8.6),(5,'Vingadores: Ultimato','Anthony e Joe Russo',2019,'Ação/Ficção',8.4),(6,'A Origem','Christopher Nolan',2010,'Ação/Ficção',8.8),(7,'Matrix','Lana Wachowski, Lilly Wachowski',1999,'Ficção Científica',8.7),(8,'Pulp Fiction','Quentin Tarantino',1994,'Crime/Drama',8.9),(9,'O Senhor dos Anéis: O Retorno do Rei','Peter Jackson',2003,'Fantasia/Aventura',9.0),(10,'Forrest Gump','Robert Zemeckis',1994,'Drama/Romance',8.8),(11,'O Poderoso Chefão','Francis Ford Coppola',1972,'Drama/Crime',9.2),(12,'Interestelar','Christopher Nolan',2014,'Ficção Científica',8.6),(13,'Cidade de Deus','Fernando Meirelles',2002,'Drama/Policial',8.7),(14,'Parasita','Bong Joon-ho',2019,'Drama/Suspense',8.6),(15,'Vingadores: Ultimato','Anthony e Joe Russo',2019,'Ação/Ficção',8.4),(16,'A Origem','Christopher Nolan',2010,'Ação/Ficção',8.8),(17,'Matrix','Lana Wachowski, Lilly Wachowski',1999,'Ficção Científica',8.7),(18,'Pulp Fiction','Quentin Tarantino',1994,'Crime/Drama',8.9),(19,'O Senhor dos Anéis: O Retorno do Rei','Peter Jackson',2003,'Fantasia/Aventura',9.0),(20,'Forrest Gump','Robert Zemeckis',1994,'Drama/Romance',8.8);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20  1:13:19
