-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ADBL
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.12.04.1

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
-- Table structure for table `Dialect`
--

DROP TABLE IF EXISTS `Dialect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dialect` (
  `Id_Dialect` int(11) NOT NULL AUTO_INCREMENT,
  `Dialect_Name` varchar(100) NOT NULL,
  `Short_Dialect_Name` varchar(10) NOT NULL,
  `Source` varchar(1000) NOT NULL,
  PRIMARY KEY (`Id_Dialect`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dialect`
--

LOCK TABLES `Dialect` WRITE;
/*!40000 ALTER TABLE `Dialect` DISABLE KEYS */;
INSERT INTO `Dialect` VALUES (1,'Spanish Loan Words/Préstamos lingüísticos del español','ES','NONE'),(2,'Ashéninka Perené','PRQ','NONE'),(3,'Ajyíninka Apurucayali','CPC','NONE'),(4,'Asháninka','CNI','NONE'),(5,'Ashéninka Pajonal','CJO','NONE'),(6,'Ashéninka Pichis','CPU','NONE'),(7,'Ashéninka Sur de Ucayali','CPY','NONE'),(8,'Ashéninka Ucayali-Yurúa','CPB','NONE'),(9,'Inglés/English','EN','NONE'),(10,'Quechua','QU','NONE');
/*!40000 ALTER TABLE `Dialect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lexical_Unit`
--

DROP TABLE IF EXISTS `Lexical_Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lexical_Unit` (
  `Id_Lexical_Unit` int(11) NOT NULL AUTO_INCREMENT,
  `Is_Loan_Word` bit(1) NOT NULL,
  `Is_Dictionary_Entry` bit(1) NOT NULL,
  `Is_OWLU` bit(1) NOT NULL,
  PRIMARY KEY (`Id_Lexical_Unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lexical_Unit`
--

LOCK TABLES `Lexical_Unit` WRITE;
/*!40000 ALTER TABLE `Lexical_Unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lexical_Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paradigm`
--

DROP TABLE IF EXISTS `Paradigm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paradigm` (
  `Id_Paradigm` int(11) NOT NULL AUTO_INCREMENT,
  `Source` varchar(1000) NOT NULL,
  PRIMARY KEY (`Id_Paradigm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paradigm`
--

LOCK TABLES `Paradigm` WRITE;
/*!40000 ALTER TABLE `Paradigm` DISABLE KEYS */;
INSERT INTO `Paradigm` VALUES (1,'\\cite[pag. 84]{anderson:cuentos:85}');
/*!40000 ALTER TABLE `Paradigm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spelling`
--

DROP TABLE IF EXISTS `Spelling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spelling` (
  `Id_Spelling` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Word` text NOT NULL,
  `Spelling_System` varchar(100) NOT NULL,
  `Source` text NOT NULL,
  `Definition_EN` text NOT NULL,
  `Gloss_EN` text NOT NULL,
  `Definition_ES` text,
  `Gloss_ES` text,
  `Definition_PT` text,
  `Gloss_PT` text,
  `Morphological_Values` text,
  `Example` text,
  `Frequency` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Spelling`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spelling`
--

LOCK TABLES `Spelling` WRITE;
/*!40000 ALTER TABLE `Spelling` DISABLE KEYS */;
INSERT INTO `Spelling` VALUES (1,'eeee','','\\cite[pag. 110]{hvalkof:cjo:15} \\cite[pag. 84]{anderson:cuentos:85}','sound.of.fear/anguish','Ideo','sonido.de.miedo/angustia',NULL,NULL,NULL,'+whistle.lang.+mono.syl.',NULL,NULL),(2,'eee','','\\cite[pag. 84]{anderson:cuentos:85}','sound.of.fear/anguish','Ideo','sonido.de.miedo/angustia','','','','+whistle.lang.+mono.syl.',NULL,NULL),(3,'shikerek','','\\cite[pag. 96]{anderson:cuentos:85}','animal.cry.made.by.a.bear/maini','Ideo',NULL,NULL,NULL,NULL,'+tri.syl.',NULL,NULL),(4,'toom','','\\cite[pag. 96]{anderson:cuentos:85}','sound.of.a.rock.being.moved','Ideo','sonido.de.una.roca.siendo.movida',NULL,NULL,NULL,'+mono.syl.',NULL,NULL),(6,'aaa','','\\cite[pag. 105]{anderson:cuentos:85}','parrot/savaro.squawking.sound','Ideo','sonido.del.garritar.del.papagayo/savaro',NULL,NULL,NULL,'+mono.syl.+s.redup.word',NULL,NULL),(7,'chempok','','\\cite[pag. 112]{anderson:cuentos:85}','action.of.a.shrimp.jumping/mitaantsi','Ideo','acción.de.el.saltar/mitaantsi.de.un.camarón',NULL,NULL,NULL,'+di.syl.+s.redup.word',NULL,NULL),(8,'satak','','\\cite[pag. 114]{anderson:cuentos:85}','action.of.chewing.ivenki','Ideo','acción.de.masticar.ivenki',NULL,NULL,NULL,'+di.syl.',NULL,NULL),(9,'tyarek','','\\cite[pag. 114]{anderson:cuentos:85}','action.of.going.through.by.one.side','Ideo','acción.de.pasar.por.un.lado',NULL,NULL,NULL,'+di.syl.',NULL,NULL),(10,'chee','','\\cite[pag. 116]{anderson:cuentos:85}','action.of.a.lighting.falling','Ideo','acción.del.caer.un.rayo',NULL,NULL,NULL,'+mono.syl.',NULL,NULL),(11,'pakaaak','','\\cite[pag. 118]{anderson:cuentos:85}','action.of.hitting.sth./sb.with.sth.','Ideo','acción.de.golpear.algo/algn.con.algo',NULL,NULL,NULL,'+di.syl.',NULL,NULL),(12,'hohoho','','\\cite[pag. 184]{anderson:cuentos:85}','falcon.sound','Ideo','canto.del.halcón',NULL,NULL,NULL,'+tri.syl.+s.redup.word',NULL,NULL),(13,'pirem','','','water.moving.serenely','Ideo','agua.que.se.mueve.tranquilamente',NULL,NULL,NULL,'+di.syl.+s.redup.word',NULL,NULL),(14,'metok','','','sound/action.of.felling.a.tree','Ideo','sonido/acción.de.destroncar/tumbar.un.árbol',NULL,NULL,NULL,'+di.syl.+s.redup.word',NULL,NULL),(15,'cherok','','','sound/action.of.shooting.arrows','Ideo','sonido/acción.de.tirar.flechas',NULL,NULL,NULL,'+di.syl.+s.redup.word',NULL,NULL),(16,'konak','','','sound/action.of.cutting.chimicua-tree','Ideo','sonido/acción.de.cortar.chimicua',NULL,NULL,NULL,'+di.syl.+s.redup.word',NULL,NULL),(17,'tevarerek','','','sound/action.of.cutting.a.tree-branch/tevaantsi','Ideo','sonido/acción.de.cortar.la.rama/tevaantsi.de.un.árbol',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Spelling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spelling_Paradigm`
--

DROP TABLE IF EXISTS `Spelling_Paradigm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spelling_Paradigm` (
  `Id_Paradigm` int(11) NOT NULL,
  `Id_Spelling` int(10) unsigned NOT NULL,
  `Source` varchar(1000) NOT NULL,
  UNIQUE KEY `Id_Spelling` (`Id_Spelling`),
  KEY `Id_Paradigm` (`Id_Paradigm`),
  CONSTRAINT `Spelling_Paradigm_ibfk_1` FOREIGN KEY (`Id_Paradigm`) REFERENCES `Paradigm` (`Id_Paradigm`),
  CONSTRAINT `Spelling_Paradigm_ibfk_2` FOREIGN KEY (`Id_Spelling`) REFERENCES `Spelling` (`Id_Spelling`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spelling_Paradigm`
--

LOCK TABLES `Spelling_Paradigm` WRITE;
/*!40000 ALTER TABLE `Spelling_Paradigm` DISABLE KEYS */;
INSERT INTO `Spelling_Paradigm` VALUES (1,1,''),(1,2,'');
/*!40000 ALTER TABLE `Spelling_Paradigm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 15:27:11
