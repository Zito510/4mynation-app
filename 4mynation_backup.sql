-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: 4mynation
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ereignisse`
--

DROP TABLE IF EXISTS `ereignisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ereignisse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `titel` varchar(255) DEFAULT NULL,
  `jahr` int DEFAULT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `ereignisse_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ereignisse`
--

LOCK TABLES `ereignisse` WRITE;
/*!40000 ALTER TABLE `ereignisse` DISABLE KEYS */;
INSERT INTO `ereignisse` VALUES (1,1,'F├╝rstentum Arb├½r',1190,'Erstes bekannte albanische Staatswesen im Mittelalter.'),(2,1,'Skanderbegs Losl├Âsung vom Osmanischen Reich',1443,'Beginn des jahrzehntelangen Widerstands.'),(3,1,'Liga von Lezha',1444,'Vereinigung albanischer F├╝rsten unter Skanderbeg.'),(4,1,'Fall von Kruja',1478,'Endg├╝ltiger Sieg der Osmanen nach Skanderbegs Tod.'),(5,1,'Liga von Prizren',1878,'Beginn des albanischen Nationalbewusstseins.'),(6,1,'Alphabet-Kongress',1908,'Festlegung des einheitlichen lateinischen Alphabets.'),(7,1,'Unabh├ñngigkeit von Osmanischem Reich',1912,'Proklamiert in Vlora am 28. November.'),(8,1,'Vertrag von London',1913,'Internationale Anerkennung Albaniens, aber mit Gebietsverlusten.'),(9,1,'Kongress von Lushnja',1920,'Festigung des Staates und Umzug der Hauptstadt nach Tirana.'),(10,1,'K├Ânig Zog I.',1928,'Ausrufung des K├Ânigreichs Albanien.'),(11,1,'Italienische Besatzung',1939,'Mussolinis Truppen marschieren ein.'),(12,1,'Deutsche Besatzung',1943,'Nach Italiens Kapitulation besetzen Nazis das Land.'),(13,1,'Kommunistischer Machtantritt',1944,'Enver Hoxha etabliert eine Diktatur.'),(14,1,'Religionsverbot',1967,'Albanien wird offiziell atheistischer Staat.'),(15,1,'Bruch mit China',1978,'Ende aller Auslandskontakte, extreme Isolation.'),(16,1,'Tod Enver Hoxhas',1985,'Ende einer ├ära der Diktatur.'),(17,1,'Demokratische Wende beginnt',1990,'Massenfluchten und erste Proteste.'),(18,1,'Erster Machtwechsel',1991,'Fall des Kommunismus, erste freie Wahlen.'),(19,1,'Staatskrise durch Pyramidensysteme',1997,'Fast-B├╝rgerkrieg nach Zusammenbruch illegaler Finanzsysteme.'),(20,1,'NATO-Beitritt',2009,'Albanien wird Mitglied des Milit├ñrb├╝ndnisses.');
/*!40000 ALTER TABLE `ereignisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `titel` varchar(255) DEFAULT NULL,
  `jahr` int DEFAULT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `filme_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,1,'Slogans',2001,'Satire ├╝ber das Bildungssystem w├ñhrend der Diktatur.'),(2,1,'The Forgiveness of Blood',2011,'Drama ├╝ber Blutrache im modernen Albanien.'),(3,1,'Bota',2014,'Leben in einem abgeschiedenen Dorf nach dem Kommunismus.'),(4,1,'Time of the Comet',2008,'Historienfilm zur Zeit der albanischen Unabh├ñngigkeit.'),(5,1,'Anija',2012,'Doku ├╝ber die Fluchtwelle 1991 per Schiff nach Italien.'),(6,1,'Alive!',2009,'Ein junger Mann muss sich im Nordalbanen der Moderne behaupten.'),(7,1,'Colonel Bunker',1996,'Politisches Drama ├╝ber das Regime Hoxhas.'),(8,1,'Der Albaner',2010,'Deutscher Film ├╝ber die Migration eines albanischen Jugendlichen.'),(9,1,'East, West, East',2009,'Kom├Âdie ├╝ber eine Radrennmannschaft w├ñhrend des Umbruchs.'),(10,1,'Chromium',2015,'Coming-of-Age-Drama in einer albanischen Industriestadt.');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerichte`
--

DROP TABLE IF EXISTS `gerichte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerichte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `land_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `beschreibung` text,
  `bild_url` varchar(255) DEFAULT NULL,
  `rezept_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `land_id` (`land_id`),
  CONSTRAINT `gerichte_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `laender` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerichte`
--

LOCK TABLES `gerichte` WRITE;
/*!40000 ALTER TABLE `gerichte` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerichte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `getraenke`
--

DROP TABLE IF EXISTS `getraenke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `getraenke` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `getraenke_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `getraenke`
--

LOCK TABLES `getraenke` WRITE;
/*!40000 ALTER TABLE `getraenke` DISABLE KEYS */;
INSERT INTO `getraenke` VALUES (1,1,'Raki','Klarer Schnaps aus Trauben oder Obst, sehr traditionell.'),(2,1,'Dhall├½','Joghurtgetr├ñnk, salzig und erfrischend.'),(3,1,'Albanischer Kaffee','Stark und schwarz, wie t├╝rkischer Mokka.'),(4,1,'Kompot','Hausgemachter Fruchtsaft aus gekochten Fr├╝chten.'),(5,1,'Boz├½','Fermentiertes Getr├ñnk aus Mais oder Weizen.'),(6,1,'Kos','Dickfl├╝ssiger Joghurt, oft als Beilage.'),(7,1,'Ver├½ Shesh i Zi','Traditioneller Rotwein aus autochthoner Rebsorte.'),(8,1,'Ver├½ Shesh i Bardh├½','Typischer Wei├ƒwein aus Albanien.'),(9,1,'├çaj Mali','Bergtee aus wilden Kr├ñutern, beruhigend und aromatisch.'),(10,1,'Shira','Zuckerwasser oder Sirup, manchmal fermentiert.');
/*!40000 ALTER TABLE `getraenke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laender`
--

DROP TABLE IF EXISTS `laender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laender`
--

LOCK TABLES `laender` WRITE;
/*!40000 ALTER TABLE `laender` DISABLE KEYS */;
INSERT INTO `laender` VALUES (1,'Albanien','S├╝dosteurop├ñisches Land mit reicher Geschichte und Kultur.');
/*!40000 ALTER TABLE `laender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkte`
--

DROP TABLE IF EXISTS `produkte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `land_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bild_url` varchar(255) DEFAULT NULL,
  `shop_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `land_id` (`land_id`),
  CONSTRAINT `produkte_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `laender` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkte`
--

LOCK TABLES `produkte` WRITE;
/*!40000 ALTER TABLE `produkte` DISABLE KEYS */;
/*!40000 ALTER TABLE `produkte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speisen`
--

DROP TABLE IF EXISTS `speisen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speisen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `speisen_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speisen`
--

LOCK TABLES `speisen` WRITE;
/*!40000 ALTER TABLE `speisen` DISABLE KEYS */;
INSERT INTO `speisen` VALUES (1,1,'Byrek','Bl├ñtterteig mit F├╝llung (Spinat, Fleisch, K├ñse), ├╝berall beliebt.'),(2,1,'Tav├½ Kosi','Lammauflauf mit Joghurt und Reis, Nationalgericht.'),(3,1,'Fli (Flija)','Vielschichtiges Teiggericht, traditionell ├╝ber Feuer gebacken.'),(4,1,'Qofte','Gebratene Fleischb├ñllchen mit Kr├ñutern.'),(5,1,'F├½rges├½','Ofengericht aus Paprika, Tomaten und K├ñse.'),(6,1,'Speca me gjiz├½','Gef├╝llte Paprika mit Frischk├ñse.'),(7,1,'Pite me Spinaq','Hausgemachte Pastete mit Spinat.'),(8,1,'Japrak','Gef├╝llte Weinbl├ñtter mit Reis.'),(9,1,'Pa├ºe','Suppe aus Kopf oder Kutteln, deftig und w├ñrmend.'),(10,1,'Trile├ºe','Drei-Milch-Kuchen, s├╝├ƒer Klassiker.');
/*!40000 ALTER TABLE `speisen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprichwoerter`
--

DROP TABLE IF EXISTS `sprichwoerter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprichwoerter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `spruch` text,
  `bedeutung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `sprichwoerter_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprichwoerter`
--

LOCK TABLES `sprichwoerter` WRITE;
/*!40000 ALTER TABLE `sprichwoerter` DISABLE KEYS */;
INSERT INTO `sprichwoerter` VALUES (1,1,'Gjuha ├½sht├½ pasuria m├½ e madhe e nj├½ kombi.','Die Sprache ist der gr├Â├ƒte Reichtum eines Volkes.'),(2,1,'M├½ mir├½ nj├½ zog n├½ dor├½ se sa nj├½ p├½llumb n├½ pyll.','Besser ein Vogel in der Hand als eine Taube im Wald.'),(3,1,'Sht├½pia pa lib├½r ├½sht├½ si trupi pa shpirt.','Ein Haus ohne Buch ist wie ein K├Ârper ohne Seele.'),(4,1,'B├½hu burr├½ q├½ t├½ t├½ respektojn├½.','Sei ein Mann, damit man dich respektiert.'),(5,1,'Nuk t├½ jepet ├ºdo gj├½ q├½ e do zemra.','Nicht alles, was das Herz begehrt, wird dir gegeben.'),(6,1,'Guri i fort├½ e thyhet, por i l├½muari rr├½shqet.','Der harte Stein bricht, der glatte rutscht weg.'),(7,1,'Kush k├½rkon gjen, kush l├½viz fiton.','Wer sucht, findet; wer sich bewegt, gewinnt.'),(8,1,'Fjal├½t e holla shkojn├½ n├½ zem├½r.','Sanfte Worte gehen ins Herz.'),(9,1,'Miku i mir├½ ├½sht├½ nj├½ pasuri.','Ein guter Freund ist ein Schatz.'),(10,1,'Kush nuk di t├½ fal├½, nuk di t├½ doj├½.','Wer nicht vergeben kann, kann nicht lieben.');
/*!40000 ALTER TABLE `sprichwoerter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laender_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `beschreibung` text,
  PRIMARY KEY (`id`),
  KEY `laender_id` (`laender_id`),
  CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`laender_id`) REFERENCES `laender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (1,1,'Dua Lipa','Weltstar im Pop, Eltern aus dem Kosovo.'),(2,1,'Rita Ora','Britische Pops├ñngerin mit kosovarischer Herkunft.'),(3,1,'Bebe Rexha','US-S├ñngerin mit albanischen Wurzeln.'),(4,1,'Eliza Dushku','Hollywood-Schauspielerin (Buffy, Bring It On).'),(5,1,'Action Bronson','US-Rapper und Koch, albanischer Vater.'),(6,1,'Ava Max','Pops├ñngerin mit albanischen Eltern, in den USA geboren.'),(7,1,'Era Istrefi','S├ñngerin mit dem WM-Song 2018.'),(8,1,'Arta Dobroshi','Schauspielerin, international bekannt durch Lornas Silence.'),(9,1,'Masiela Lusha','Schauspielerin aus der George Lopez Show.'),(10,1,'Lorik Cana','Ehemaliger Kapit├ñn der albanischen Fu├ƒballnationalmannschaft.');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tage`
--

DROP TABLE IF EXISTS `tage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `stimmung` varchar(50) DEFAULT NULL,
  `aufgaben` text,
  `notiz` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tage`
--

LOCK TABLES `tage` WRITE;
/*!40000 ALTER TABLE `tage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zitate`
--

DROP TABLE IF EXISTS `zitate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zitate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `land_id` int DEFAULT NULL,
  `text` text,
  `autor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `land_id` (`land_id`),
  CONSTRAINT `zitate_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `laender` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zitate`
--

LOCK TABLES `zitate` WRITE;
/*!40000 ALTER TABLE `zitate` DISABLE KEYS */;
/*!40000 ALTER TABLE `zitate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-08 13:30:45
