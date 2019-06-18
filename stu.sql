-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athlete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `score` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete`
--

LOCK TABLES `athlete` WRITE;
/*!40000 ALTER TABLE `athlete` DISABLE KEYS */;
INSERT INTO `athlete` VALUES (1,'åˆ˜ç¿”','2008-08-08 03:23:23','00:00:10'),(2,'è‹ç‚³æ·»','2018-06-29 00:00:00','00:00:11'),(3,'åšå°”ç‰¹','2019-06-17 00:00:00','11:27:46'),(4,'ç›–å°”','2014-03-05 00:00:00','00:00:12'),(5,'ç½—ä¼¯ç‰¹','2014-03-05 00:00:00','00:00:12'),(6,'èˆèˆ','2019-06-17 11:31:55','11:31:55');
/*!40000 ALTER TABLE `athlete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `author` varchar(32) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'å¾®å¾®ä¸€ç¬‘å¾ˆå€¾åŸŽ','å°å››','2009-02-03'),(2,'éª†é©¼ç¥¥å­','è€èˆ','1996-07-25');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES (2,'éª†é©¼ç¥¥å­','2019-06-17 11:34:45');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `name` varchar(15) NOT NULL,
  `sex` enum('ç”·','å¥³') DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `score` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('æŽå››','ç”·',8,76),('çŽ‹ç¾Žä¸½','å¥³',12,86),('ä¸æ˜¯','å¥³',12,96),('å—æºª','å¥³',11,96),('èµ›å…‹','ç”·',11,98);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametask`
--

DROP TABLE IF EXISTS `gametask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametask` (
  `name` varchar(30) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `skills` varchar(15) NOT NULL,
  `skinnum` int(11) DEFAULT NULL,
  `attack_power` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametask`
--

LOCK TABLES `gametask` WRITE;
/*!40000 ALTER TABLE `gametask` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `comment` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'picture01.jpg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\09ô\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ó\ÑC\ç“p»”õª0¼S‹)„ñAô¤ƒ©\âœc­D\ÜR\àv 	†\ëW\ì\'\0´3d\Æô@o®:\ÖhSÑ¶°9\éF\àu‡BÒ¾\Í,\Ð\Æ#qÅ‰\n6œœ¸5\Éù1˜#t\Î\ÙF}\0\Ív\Z$\é<,	\ÆÄ§vÀ\'J\ä\Ã|ž[0fY˜œ{Š\É/~Å¦ùn6Kq-&ïº¹\Æ)\0¨+)\ä\Ï\'ÿ\0\nž\çþ<\äÿ\0pûR-\Äee‹§{ù?Â¶öq\'žEf‰\ÇLŸø…4ù«\Ñþù5sÏ‡þ{Aÿ\0ƒ	?Â“Ïˆtžÿ\0qÿ\0\n—Iª2©qI»móWrœ‘þE[„\Ëæ„’R~\\ñKª·\ÖJ\Øi*\åÃ—\àŽO__Æ’?øù\î\çJœÕŽrhl’,w\Ç,cft\î»Öž&SÏ˜Ÿø9¦»\ì½\'\Îf1ÿ\0/,ò:”\\&9¾ÿ\0°—ÿ\0Z¶2\æ¡þ5ÿ\0¿óÒ†C\ÆSñy\Í/\Ú#ÿ\0Ÿ\Õüu#þ¿hŒÿ\0\Ë\Ügþ\âmþ;ý\ãW¼\"«º\é\Ï\Þ\08\íógúU9rsœóœ\çõ\ïZ\æ;¿PWÿ\0f¥=„Í«–\0ž´°»®)$uóFz\Å:Ð4*\ÌN=kNû\åÝ‘\ÐËŠº\Ñ3Â²¬Š\ÌH\ËzU&—\ê{Õˆ€#’N3ž§\"Œ*rC{\Ô\ìdŽ*I‰i	l\ã¯58a\Ô\Ðˆ‘Šž8¦9 ŠrLX<ö¦õ\0z\Ðn«‘Ÿ›ƒÖ¡M¬8?Z°€(,…¼¤ñQ	\ÔpEH\n‘\ÎO	|Ã´g4\ÆY\Æ\È,s\Äp¹\ïP”ùÆšOÌ£\Ôw¤ŠÈ›3‘R+#ƒTU@“SF§o\Ï¹S\ïøT@Oò¥\ì~j®P³ô`•aÚ€Ì’q\ÓYb\Ã¼ƒRO…#s‘\ÐP‰‹9×\ÌûuýHHR€O|6+\ÐÄ…b\È\È,\ášó«\ÐÄº¦\ÞG\Ú\æ\ëþõkjK\ç›XÊ—Ì§€ª„ÿ\0xú\Ó’\ÊCô†3ü¥¨õ¶»±4õÿ\0tÿ\0\ÏO–¥W¢Fÿ\0¶6Mÿ\0³U½\Æ>\æ\Ô\Ú\éRÆ°¼LA81•\'§`\ì\"(þ\Ç\ÏHn¿ð\çÿ\0Ž\Ò]…m&UH•FÊ°Æ¹\é\Ú6 þy§¦š\0\è	ÿ\0‚Áÿ\0\Ç)5½—\ÙIcË‘€^\ã\î\Ãò¦ÜŒ\Ïmÿ\0]öG§%¯Ù›?eXs\ÜYy9üw¶~”\ÉNn-‡ý4\Ïþ:\ÕKa\Ôb3\Ém‚[!\ÜôôFõª\çM\çýU\Ï\áisÿ\0\Çj}J/6[U1ùŸ3q\äù½2?D¶\nO§ÿ\0\Ãÿ\0ŽRc-·\Ùô›€El7\Ç*É˜·\äj\Ó\\Ÿøö¹Çµ¥\Çõ’¬Oo\ä\é(\")”n>\Îb\Ï\Ýsù\Õ²ž3`‡\ë§ýšJ@Zµ\Ó\Ú	<\æŠ\å1™ d›9þUq¹‰ÿ\0\Ý?Ê©Z[ªHXZ¤D¼¶±\Çú‡\'ô«ñ\Ç$\Î!‰\É\'ÈŠ:’xš\Ø\ÃCý\î“`¤\äXøÿ\0€\n\Òv€Nzb¯\éz\Z‡k.¤@–($Á\È\ÜZ\ÇMvö÷Qqkom¤yù¤™¿\"s\Îq‚¼ŽªJ••\â´E2$r\0}Šr\Ëc·5CûMn5/*EA \èFFýþ\Ë|¯\ìW\Î\àO÷®j\ÊU\æ\áª\nøJ”U\ä´: \ë\Í8#9¬m/Uµ\Õ f†Dó#;dM\ÙÁõ¸5¤\n÷À\çÖºŽbW##x¢«I2†\0J?¼(¦>nó%ÿ\0ž²\ßF†š@?\Ö\È9þñ¦€ \àœÒ¼HÏµ	\ÇrH\éV+ˆ\Ó\Ë\Úgÿ\0¾ š_ù\í(üiIQ€1À\Æi»•±9Á\ãš\0p‘ÿ\0ç´‡ñ \Ì\ë\Öi:c\\Gò€¸\Æy\Í:9¢c‚HÏ¯z\0x¸—þ{\ÊÖ´Kÿ\0=¥ü\êX£Û’yRp1\Åh\èöz~£®\ÚZ\\JR	d\Úv°\ÝÏ¿N´=À‹C\Ô\îmµ«\"—.L¨r\ÜHþucTG·2o7\ÊóO”\åHóŸš½‚ü7\ÊSp§¨ýü™ýBŸÊ¹?øš\ß^»\í\á™Re-/V\É»tõ\ï\\Î¥\åt”4³96½¸+€x!ºT\í­]\ÝÉŠº³{S÷\Æ\ßyýFkOk\äO³3ÿ\0¶®‚‚.œŠö\Õ\à\Æ.[× «ž]£u‚!ÿ\0ö[\'\ê\×þú?\ãGµA\ì\Ù&±rÒ›I\â_³#¾\ã©÷\Íbý¾ulù§=3[\Ó$7ÄŽ\ß,kµvž\ÞþµWû\Z\Ýñ¶W\\\Z˜M-\Ç(¶g&¥:Hd\á\È\ÆHŠk7›r³ÿ\0\ãƒü*#Kk¹\"b\'žüTbH¥m£jþ•ºwF%\Õ\×o€\æ\ãð\Ø?Â¯\Ú\ë­+’\à.{\í\á\\ö\èû\Ù\Ô\Çu\Îbq\É4\\,uÿ\0j·yy·<_ÊŸer‘oòKn[i9 f¹«]R{kw\"M®\0f+–üû~Ñ]o\àTjº,…Â¹ƒ§\ÓÜ†š\'{\ås)>\ÌiF¥¸R/\'V<ƒ½¨V\Ò[¤7[ a¹\É\É\çÚ£…m®\ï{ˆÔ£ª€A!‡sœz\Ña\\º5X@o\ä\éÀ\Þ\ÜU®Jƒr\ßHry\Ãu÷¨Ÿbm¤3º\Æ¶\Ä\Îq==¾½+:UµK…ˆ¸\ç Ž\â‹\n\æ¼úö7ö”sò“Çµ$šâª‚o&cõ==k[tFUS\è\Ùÿ\0&ž\Æ\Ú$\Ép®¿6=±J\Ã6²»AK\é=~f\â\ëì„‰5Œvš³JÀQ\Ê\ÈÊžfp¾Ÿ…G¼©$›7ó0\éù\Z,5W—Žú\à\ç\ÑÛŠbk“)\Ë\êC\Û{S\Ò|\È\â\Êp	·b™µ·\Ê\ÊÑ \Æqž}J|¢¸õñ‡þbSŒž\å¨>!ŸvR¸o¦­6\î\×K&ce„n|‡\'û¹\Ó#µF/³‰7JQ÷\nÿ\0ú¨°\îi]\ã\"ú\áˆ\ê2E\ÛWnÛ–ò\äžü“T­\í­76ó	\æ˜ý¾*X/ô\Èg’I#\0…O|u¢Ár\Ð\Ö\î‘F\ë\Ùö‘\×{\n•u\É\Ä$V\áŽ˜ÕŒ\×vW\Ç9¸\Æ8KJ—˜69>†•‚\å\íÛ‡;¿µnòüõaN>#™\×1\êW‹\É\à;õ¨’ÿ\0Je1,Y\ÞNò Œsùqõ¨m\í!I3¡S&y\àsõ\ë\Ûó§`¹tk—NŒ?µo7\ÙÚ “V»wj7,?\ë£~µ©me¥<›ž\î(ˆ\ÆWp\ÇLuú\Ó4]J3¾df$°\Ú˜\äŽþ´r…Ì¡®^\ï\Úo\îŠ\ã2¶?CöÑ¹˜û\É\É99$ú\Õ\ÉmtønY÷F‡pG#§>¹¦\\2vˆ\r§\Þ\Ù#×Š,#\æ½\Ï\Þ]\Ãó¡&´y\0p¼u;A¢m^\Äy8\Ô,jC@7TV\æ\Æfgó.~\éŸÊ€»$žký\Ú117P\ß\"¢I4\ØO%c\Ç\È*\ÄWú}¦\Ã\ä‰Ê¸l61\ë\Ï\éM™­uˆ\ì(\Ù\nFrs\Æ:\äp\Ík–YsÁ*˜&¥–tl²\Í \Ç#vj\å´v\n›&‘0¤Ã©ŸÎ¯<úž GcpŽAd*>PzóÞ‹\n\ç75\Â<`1gÇ¯4ž|!T”\0öknkM-vÌ²FÁ\ÙXG¸‚rs\éT\Óû+û<¬ŸñðN7y€¿Zv\Ê	qo\n\ìª;H\×0n\àƒŒ•­i&±·„¨š\×\Ês÷UK7Oþµ-\ÅÞ•z\ËºA–\n\ÇSš@f\Ç,1|\êp@\çô®\ë\áT	{\â÷žB\äZ[»¨|ðÄ…ò&¹O²\éð›–ž\â9@c\Ú\Ý[zö®\Ë\á\ÅÕ®™¬,\èZ\î2\ïb9\Æ>€š\Z¼už9\Ô$\Z½¶vÄ°\ï\ä’?¥aZN#XÂžy\ã\Ôòk¯ñ.„5«Dxˆ[¨3\å“Ñê¦¼ö\ÆgŠöK…)<$­\Ô\ãð?Î¼¼\Â2t\îºW€”\'C–;­\Èd†³®s\æUN}Ú¤qðG$ƒ\ÐñIeo\ç\ëE\Èùb\Ë~=ªG+q<À\ê¤.Nzu¯NU1jQû;‹4©\Ò\å{³“¹%\Ä\Ó\É\Îü\ä6üö\ë“Y\Ï4#vPóÐ…­ÿ\0\"ÀDwƒÉœþ&­1\Ðd¹ý\Ë\ÛÅˆÂòo\ä÷\àûzW\ÖXùY=Ngj¯’2~Z+¥’ÿ\0N2°i ›X:v\äQF‚¹\äX~tm“û\íùÕ‚¼Ñ´T›\\¯‰?¾ßõfü\ê\Æyð9P)˜Øœdþt¾Sv&­\í§ù`u .SÄ‡ø\Ûó¦ùoý\ãù\Õ\á44c°\Ï\Ê{\çt˜\íW_®ŽVÀGþÎ…”/|\Æ\ï©95Ë”ù±Ž\Õ\Õ\êò$\Ð\Ú*!,!GsÑˆŒ`/¶üsYTZ£H=\ÎT]ÞŽ“·\â©¡x:¸?ðB¨\ïK°g§*#™Š5[¡\Õc?§®¯6>h—ð8ª\ì£\ÛÒ…QŠ\\ˆ|\ÌÙ\æ\Ä_(‚O/n\î§Àü+\"{\Û\Öv_7`”cõ­\Û0«\áÀ\Òn`.™bPx\rµ	?ñ¬IFg3¸\ÔE+²›\Ñö\È\ÌIv$òI4‚#žKU¤4õüâµ±\Êb6^ŒE(Fë½³ëš·\"\ÍQô\æ˜\\«µÁÀ‘…*ù¨Á–G=CU\Ï/\'\ä\ÒÀPh†Y\ÝD&yDd\ä®\ãÊ®yRª¬\Ûs\ïÖª/\Ê\ê{æ´­n¶02G\éA,¬öÒ‘µ\É8\än$âž¶²—n;ö­§‰\0…\Ð®¹\Î;äŠ’\Ùþyù±¹XŽc¬$v\n¬\Ã=rpsP\ÉlC‘’@\èI\ç\×\\[$wqª.c\Û\Îy\Ëcq\É\îi—–¦Y‰e}Š·j‘\Üö\îGZvc•Ž	W”‘\Ó\'ø[¦³“4ÇŽ¥5¸öª˜\Âò¥<ZÛŠ7\ÄT\à~?…\ÌaYAM2\çû¬riŸg•zK 9\ÆCš\è\Ö\Ô2€·z­%¸Ž\åÐ¸Oj,\Æ/\Øgü²J\Øÿ\0hñB\ÙH%\n%“#®\Zº­2\Õ&¸X\ÉÇ˜\á3œu\ëÏ ª\Æ8VU\än\Æ\'<ð(°s\ï\Ø\Ø€\êK\á³ôæ†°e‹?=òk¦{lNñ¹\ÎGO§\çDö\É\å| ƒ\æ=Mc˜[\\\0 w&œ-]€q\î\Ä\×\\šZ5’ÀvpŠ½	=\Éö\éù\ÔMe•RF	û¸Ÿ¥+1\Ë	ò\Í×±5\'\Ù3†~23žõ\×\\iÈ·\Ûv6#¶GC´qü\ê¤\Öe`ge\àsŒÓ°¹ŽlZ\ÈCgÀãƒŒÒ­“ó\Û\îz\Ö\âD­Ž˜=h\\Z[­’M½2]”ó€?™‹1\È=›o\'\rsHš{9#º¤³Y!y\nœ!™‡=½ñR\Çi\Z –T$m\èA‹1\Ç,g*I©ÿ\0crW\å$“\ÈWak§\Æ÷¡IV\ì	\0.NjÔšdk3¼4R1Uc\Î\à\'úÿ\0…1\Ã\r5\Ün<×Ž”ñ¥‘’U²9®\ê\r26´½o)˜,jÀ\ì<\Ã\0}\\R3\å‰B|\ä–qœÿ\0\Ïj,.c…þ\Ïa÷T\ç ÿ\0>•!\ÒdÝ€„ž\ÜþµÙ<Œ¼òI?JH\ã‰K/\æ+€zþX\éEƒ˜\ã\ßKcû“\Û\éLM)™€U\Ür8»I-£Y@\0\í\ÎO¡>”\è¬\ÒV¤„öã¿©úõ¢Á\ÌqgL+\È@sÚŸF\á\É\àc¹®\ÖX¸}À\ã‚9\Ç4ÄÉ‰¶ ‘‘\Øý?\ÏzA\Ì\ÎD\è˜aû®ƒ\'+R\Ú\ÚÍ¦\ß\Û\Þ[†Žxd¯b9®\Ð\ÛFŠ\\GŒŒ	\Ú{gó\Ï\ài·\Ñ;¡\0BJŽæƒ™ž¿\ájh°_Eò–’3\Õu\ç±SÄž‹R»¶¿ƒ\ß@\Ãv\ßùiu>ø\Î\rp\Þ\Öÿ\0±u¢‡Š\á±*Ž?\ÞOñ«\Zµòx¡®m¬\îd»›TŽ\îQ÷Ik€&\ç\Ð9\ã‚’³\Ø\ê¡^P|\Ðvfø\Ó`±{™b´\Ã\Ì#Š\ä\ï\á’FTò‹\Ä\ä—`ûHýEY\Ò\'¾\Òü)–¢\Ç\íjò+\å³Ç˜\Äsô\"³µMA¤‡\ÉLÿ\0y\Çðþ½E\Z¢­\ëJ¤¹¦\îqº\à—i8Ð¨s\Üÿ\0*\Ì]>@¬\Û	¿Lz\×G=¼qüˆ¤•zþf£c\áv®:œô>™\ïZœ·0Mœ‰ÀEUÿ\0\Z+q®•ö\î\0•\ç4PgG4˜§\ã’;\ÒÒƒa\nñJ§§­8—¦€C(.8¥\È8\Ç\'„``\Ð21J\0Dý}iç§­5O\â¥ò\ÉM\ßÎ€+\ã–\ç\êk±“O½\Ô4>øÁ3G©Œ„*ªù\Éÿ\0=+¤\Ðo¼¤h¶S²[›ó™–e“~y\Û\ÏÒ«k¾>[«+›[;|¹ch\ÚIHc§>¾µ\Í9¶ì‘´#c\Ï>\Ã>1°ŸÆ£6\×†OÊµRg\Ú>_Î¤Ÿ\î\ÕûF.D`”–6\å/=V‘9?•t\"\ã\ÕO\çOûR†\\ýhö¯°{?1šk+øb\î!´<w*ûe#õX·”™ý\É?\á[\Â\îFR0­÷‡cõ¤&\Æ\\–[ÜŠ•;;\ÇK\Ð\È54m•§5oRŠ\Ô2}€œ\îª\"8ü\ët\î®dô\Ðv\Ý\Ø\ç\0w5.Ü  \Ï\Ô\ã\0óV>lò\ã#D•;X´\âÆ£8oLR¸8÷\éŠ8\0(¤sŠ’\'Àù‡PqR|¤p\0,aß©\ë\ØPû[\Ò4vPc§S“þ9­\è’?2&h\ËF\ß{`g·<pq\\¦\Þ@°§µ©e©?\ZJ\Çnx<qB%£ 1°‘\ç\Üq[8¯—ÿ\0^¦š4‘÷\Ü\Û$·¡3\Å ¸C\æ3\r\ãp\ë\Æ;\n’Ü‡’7Bž\nr7ŒS3*=¨g\Þ6c‚\\oóúÕ£y1ü€–Fz\ÎO aN¸¼Y\r¸Êªqž=½zõ«vs+Æ‘;,cx\Ç_\ÓÚ˜ð,k3µ\ÆÞŒ»pI\È\ã·N½}«6H7nm¤½–þõtñiPˆˆ²º\ï8\ÉÂ“œd\ãŸóŠ\È\Ô ò%ò£\0GjÞœŸ\×?&M>\Þ26u-\å©8\È\äû\çð¨\á”D¿*þð\çqZúm¯œ²¬Š\è3g\0\áÁÇ¾k6-†\ïiQ‚\Ù\0žßŸ¥\0>\ÒP±±e\ÍÄ·q\íô…IsdTB‘Ç‰a¹\äúŸ¥J-U/_Û¹‚õ\Î{c¥i\\X*Fe„\à¬j\Ù9\Ú	\é\Ï\çù\ãÖ€3í¢•`•€#…+\Æ1\×\ËfR»IŒ W¹\ê?t–VK¢<ˆªs\É!G#œŸÏ§ù9Lm\Å\ãù\\(\\’zO\ã“úP.˜\Èp~\ë0\Éõÿ\0?¥V»1\Ëo\Äbv’N\Üõ\ã¹ü?Z\Øû,RO™U7°QÓŽÀž)³XEœgŽ2¸F1†\0eF\0\ÏLuú\ÓsM\n\ÇpŒÇ±üý•Z™\"†T0.NrNqŽÞ˜ü\èŽ’%£g\Èõ\Çn3\é\×?…]Õ­\Ú;x$*KH·\Ë÷F\0\Æ}\Ï4€\Ï3´­Cw` \èq\ïþ{VŒf;§¼j O•TôÀ\ëü¿.j¼\ÇqbYW\æ2¯9\éœþžßj\ÒÓ­\"{v\Þ…‹°\Æp^¿Nh%\"’3–*K·–úö\íV\î\É\ä¨R°\àqúV…µ‹HD\Ìv€ ©#‚F95z}?\íaP “‚\ä\à)%r zô\ëÚ‚\Æu´\äBr1 $‘—<ƒ\ÇSŽ?OJg\Úb	.ô\'{ñZ	\n­µ\Í\ÄO…h\Ú\r\Ç\ä9\Î+*;G{9Ss ÷\é@\nñÁ\"eˆ\é\í\è*	’#‚‘@\ÈÛŒqžp•*X\âY² °M\Û00\Ø\Ï\'\Ø*ET–M¨\0ý\æ\Ü= \"Š8Mº\0…%\'vÁ“øsøô«¶ö9#ÍŽ\"„‘žø\È\é“\ÅT¸Š_µ\Çs\í—\ï\í`y8?\á[Ö–ó\Ì<²X U\r€;pE2„m-\Ó}œ´‘\î;X‚yõö­5µH•U£\Ü\à\ÎFA$ž1»Ž\Ý:~unU™&˜¬cpÁP\Ø\îH\ìOqTæ¥Û»h<r	\0ú÷\é\í@\È#€¥½\Â\äŸ1p¹\ãŸ›§Ú²’dfR7u\Ü\Ù8÷­Ø¦7p:N0¨À‚€eG?R\rQX\"‰\É	¸\ÛWù\Ò{kqq,¨\0q¹Ž>aþ¿\ëMñ\rÞ±¥\Ù\Ço¦I\å\Åya\Zm¼c‚3ZVQ¬›2\á\"S\Î=zq\ÏNÿ\0Ö©\ê&T¼RŽ\î\Î1’\ØÀ\ÐEr¡{\èpš.±«\ë~!¶†}FCg\æ=\Ì`\ás\ÏlƒÚº}Q\×ûBH\á‰\ä\\G\É@õ\'\éYšd¶’\\\Þ\r…\å3J\Ø\êÄœó\éšè„–#Ë€û²9\ä“ô4“¾¨ª—½™”p‚A€H\ÞOS\éŸóÚ²5\r.ò)\ËLÀG¸„E­u[°vù€b\0t±Ywm&«w»d[À³©\ËHÝ€ô\í\Í2xô\é\È`¹;NC\×ú\Ñ]:Ø´c9›“Œ7ÚŠ\0òfÀ Œ\àÒ®\Þ2¼z\Ó	Ê‘\ÇœX \Ïö¤l/x\ë\Ç\0q\éÖ€¤9ô!\\\ã9\Ï^”\0í Ž@üzRJ€eúô\íR˜þR:\nT\\ºGn)ˆ®H84¨\\d\ãµI\nœ	©$·\ÃgŸþµ Á<py«úDp´\×QN	F\äLŽ¬ŠX\Ð\Õ~]\Ã\ÔÕ½2\äZ\ë6r¶Ò«2\ï\ÝÐ®pG\åJJ\éŽ.Ì©r$Á\r\È#¸4\Ô,\Ù\Ã7\çWµki\í\ï®!¹ \Î{Ÿs\Ïõ¬ø\Å.;T\ÃTT÷2¡#\Ìlu\Îi¢y~\îö5!|¹8\Ï\\T/\ÇA\ÐUYv[\Óck\ë\ï²É†ó‚\ätlqP?\È\Å;s\ïKe\"E{¬jº–\0\à\"®j±\ì¼gT\Û\ã\åqŒ®HIµ‰˜\È:öõ4ø˜Òœ[9sHŒ7\ëB	\Ú ¥w\ëS–\ÈÊ\ë\íR\é76ðjq\ÉušI>L–\ØBõ}\ìu®5,–q}¬8\Êr?\Ö3é´¤.=ºbs©\\±?Zk6\àlbº6ŸG¹Ši\ä‰7<Ä¬B|†D`F\Ð6‡÷©%¾\Ð\ç–õã³Ž(¤‰BF\Ö\ê[>[‚…Nò‡ ®Ar\â3\Èœ“Ò¦ùH Ÿ˜Ô…W\ÌÚ§ Êš0\Ã<ÿ\0Zb-DAÁQÀ\íþz\ÓL;”ÇžÀt¨W,Tœ|§ŒÕ˜~`¾ý³@[[€±\ì\'?/\Ýýo¥m+\Z2ª«3\Æ3ôô\Ïò®v\Ù›Œò¹=q[ö°\Æ8P¿0\n9\ÎsœO¥2$‰. U*\ß+eÀœ÷ö\ë\×ô¨\îPÄŠ¿*1B9\ì§;N?\ÏZÒ¸·coŒ›~ƒ¹\È\é\Û=Œ†X\\*&\Ü‹\Û\å\ç=¨$µc\æ=\Ê	&gm †V$bI\äŒ×½I\â£œ4±A\ä\Çl|¢ps“\ÓüúUk<-\ï–Yž2N\ÔmÁ\çž\ÜzÖ”\ÛÌ²\Å{\"¢\ÇrFÓžÀzq\Í03|>„£nV\àÃž}¹\ï\íP\Ý[\ÛEf‹\æp#\è3Ÿ\ëZ:e²ª«gˆ\ËyŒyù@\Æx\í\Ïù\æ’ú\Õ&ºI œ\r\Ñ.õn2C`œv4†b\\ù\êLI\Ï\'\å9 ddAZ×­\åG,Å¤eP»{€:Ÿ§N}j£i\í$’I!,]€\î`}\Ïô­ak\æB€‚ù\É8\äú{šb\"¹’h!YB…Á\È#±\ç\ëX*,í€˜V$û¨òzöü\ëWd\Æ\\|ûFr\ßÃ’@\Îxôü*(-\Ü\Ë8Bª§+¸õ0s\Ô\æ@|Ì²Jw,y\0d\ç¯o\Ä\×Aj\ëœ˜€\ÊXˆ\Ö>\à‚\Çð¬6µh-¤\Äa‰\à¯=+N\Ñ\Ävm:ª\åQ··™Ì˜\ç=3Ú£\æ\Ø\Û\ê^Pùö1Ýº¹ž=9\Åt7‰\Ø6˜\Ø\ä„wú\×ÿ\0­Q\\\Ão-Í« ‘‰\ÍÀÂ\Ý? ?Rj\ç‘	´{k€s$lÇŒS§=¹\ç\çü™$h\Û<²yôöúþ•>‹¸¤»¤_Ý¦nüóž}iò\Ø9·1¤¡Ý°¹\Ç9 u•X´³òdp€²3’rKƒþ}\è¬À\ÝI*	\09´‹Žy\ç9\È\Î+TÂ—A‘Ad*«€F	\'žx\íøU\Ò\ÙZ\éd\Çqž1ž\ßSS\\E˜ù˜\Ä\í8\Ãt\äL\æ€$/l\ïz¥H·2I²F|8\0\ãWŒó\ÅgÌ±[E,¥T*“ß§õ9«i(’	\Ü\ÄE\Õ\ÊX\ã…°\Ï\éX“Gx\ì\à-»YNqG×§\ëHf“²]CŠ]‘™\ÃœžœÊ±bO.G¶¸m\Òo\Ädœ\ä’	ü{T–’\\BnO\î\Ëª\Ø\ÝõþŸJžò/>HfŽõb~U\ä`\ßAÀ Dq[<\Z\Ôq¸¹\ê2Z¶0Kªùjô\Æ\0ôô\ïÿ\0\ë¬X%•®a\Ç\Èlm\ÎBŸ\ëÁý+~žF\ÈÀðôÀ™Iß¼°Œ“‚{ø÷\éŠR’\í\Û\ßr 1G\èpNX\ãð\ÏÓœ\ï2f»X€Z.œô\çüúÕ¶»V»¥J+€\Ýz`yÿ\0=\élvFØ¼Œ<\Æ”g¯NÀg¦j›,mg$dò\ß.	úöÿ\0\ëV¬€\Äþ`ûAÜªq‘\Èõ\ïž\Ô\Ù\î`H	5bF\0\à\æ€+yKf\â7} >\í¡ù\àzœÖ›q›¨\\7§\Ê¹ò?ZŠö\à_ê±´yYw°}ñ\Üb³EŒ\á\ÚBû]‰\ê\Ýxö\ï\Çs\ØPM†\Ù\éè²«\ÑdbX\Éùrx÷ü\riF$¸µˆF\Ì\ÍË“•\É9\Æ=y==ªDü‘q¡iÃ®H\í\í\Í_³h\'­\Éfˆ\ç-·\äƒþ¥H.\Þ\å;»;“x§\á6ªnH\0~Ê Š\ÍV1»\Èe^Š¯S\î{~u¶ñ ‰•e\Ë\0r\Øõô\ä{\Öz€\ç\ìö®K2’¿t*\àg9÷\'ŠAac[˜c¦SŽ¤(\ëß¥WQmA®Ï•µQ@Qû\Üg\ßó¢\èx³ð\Zp<A¥û\Ç8\0:qÁ\ç\Óõ¤j5Ž8\Î*U“\n}z\Z\0W\0\ãŒ\Òü‡ úP\â›z™™H<ö\íUTlnœ\Zœ\ÆUCnùp1	n~nr8éŠšg<\Î\Ü~5hCùœJL\îQ\á ,›N\0\ä\ÒHlž¾Ô²\0T0#¨õ¯O¶ðÿ\0„\ílm\îfd“z\rs6:Œô\n\ÎsQÜ¨\Å\Ëc\ÖÉ¹–¦!¥ºg‘¿\Þ\ÃƒË°\í^®ø‡\Ã\é¤\\YXüÇˆÆ‚°§8\éš\á@z­eNv[\Z\Ê)|ñJQºP]A\0þ>õ¤OU¥\Êª?*¿i\äO³2•7}\ÓÛ¥mkm\î‰\È\ê\éòŒÿ\0\ã\Ù…E½Eð¡®£C·\n6¨=‡ ©”®\ÑJ3yŒ\Ü\nf\ÇF\ëZ¢k~¥Wò¾S¾\äÀ\0r1Þ´Œ\ï\Ð\ÎQ°ý[>­\ê-©W,KmJó¹z°¨úŽµ«:i#Gžb\Ê/arVùY\ÌA‚z.\î\Îsž3Y¼!Á\ïšbùb\äÕ‘sv\ëû\íµÆ—B\é\Ö\Ðm¢ ñ…$“\Ü<ƒœpF9G¶\Ð~\Ó~Ö³\Å-¯–\Ë9I\åp\ØS‚\Çr©\Æ=s\\ûDL\Üô&£Ž0«¸\Î(\ÍmB\×Oˆ\Ø5•\ÒH\Í[ ü²ztùˆ\ÈùM[xü>\Ò\ëB„Œ‘d\à_	!\Ï\ß=\Âõ\ÎsŒñ†ª»\È3(x¾rW,3l\Ð+\n\ÙxxjpB×£\ÈkuGH@YÄŠôû…r~„žqU`‡Kiô÷vˆ[‚òN\æo\Þ!JŽF@PÞ­Þ³BedÒ¦Kaö…\Ë)\0dƒÖ€¹eüˆ®®BL\Z1’7VrƒÁõ©\ìï¥²2°\ÏôÖ³\â…#3eW\å\ç&§ŠT	†l³ô÷ª\ÛEt5X¥#u\Ú\Ü\'\Þ#=Ou8¨›Qˆ4q\Æ²9\É<ú\ÖFp‹\'“$˜Wl?‡ÿ\0^ºI´x\Þx\ç’Xâ€œ¢/9ëŸóÓ¥m\Ú]og’6ý÷^3×·¯×µZÕ¦¿µuxY\Ø\Ú\È\\rq\Ó\Øg×­]}*#/Ÿ²1m\Ú©\ç\'Œ~Â£»ž\ÏP\Ó. YR)£ÌŽ8\ë\Ó\'¹$ž´\0šm\Ú\Ïi2\È\ë\"\Ì\"6\ÒF.}ûþžõZ{Õ½¾–5?*Œ\Ý\éŸ×­T\Ñ\Ò\ÞK7\Þ\ä#)`\î;š†\æy“Te\Î_8Ta\Ð\àG?ZsM¤[(7û\îY˜ž_¦:\ÕÅš	\Ìg˜« &\æ-\×Û§§\çQ\\4sZI!Q´ª±\É\ç¦:\ã$qOH\Éòü\×U8\È=\É¸¦7\×P\ÊO–&ŠHC®G<õ\Èü:Þ¨\Ër,\åó\\3«±rid\ïø\àVµÄ–\×\ëÓ•VØŒx\àôü\é«g\äeQ\×\Ì9Ã¹;€\Øsß¯¥\0d%\ëH›R2ªX{ú‡ó­‹y\ä–\'š9Á%v•* søsÐš,4¸aŠhcK9<´Ë€­\ì1ô©¤‚\ßO-\á623\Æôþ})žŒ\âD„Lû¶mˆðJõÿ\0\n\Ð\Ô5H\Ö)Z5Ì’…jðH\n#\ßµg-\ÜPHª±t\Ï-Žzú}*h¬Ñ¥[•¹m\ç\î N8œ÷¦0¶\Ü\É`™$Lƒ\Ó:Š\Ò\Ü5;Nõ”G\0g¯n `\Öe¾P\î9\ÃpÇ·=OZ½ss7b&ˆ˜ÁP\Ì\n\ÎG\é@\È\Ñ\ê~G™º7\ÎWi\ÛÜŽ{ò\çZ«u›p\åc\Ìqü¥¸$pJó\ëÞ™yc²;\á#UÇ–Ag·\ãþxªñk¯0ù{|\Ì\ãh\Éõý?\ë@\ZvŸ#˜˜®ÔŒ\í`8\Ïù\ïþ5Y\Þ&Vw#yq\Î\Ó\î1Á©–\ÖC;H\ÓHQmT!v“\ë\ÏL\n\Í\Ón#žµ\r´¡µ\ÐñŸ\Ë4\0\æ¶ò¾m\Ê_\rœ~~¾ž\ÔË°V.bP˜±À<ñ\Ô\çÞ¦¹¹ƒ®\å”\Äs\Ó?^z{R‡K\å´…”\ä«n\'\×ü?:B1\æ3M™pQ]\Øœ\åO°\Öf‚Q\È\n ŽH\è5¬\Öñ[\Çn\Ø@®p¬y<õôôÿ\0\ëVuõ¤;7L’d;pI?\äþ”\0Æ¸‘n\'Ìˆ\çi#!‡·nŸ­M\Ü=°d\\eH9nI\ï\Çj\ÉX\îAh‘ \Æð `’9\É\ãO<Ö„W6\ìøO.P\ç©\Ï\éÞ€4,®eŽ\à	\Ú\Äa1÷sþMGªC,¶Œ\å°	&!žž\ßÒaùŒdm\ÂE.1\Æ1‘\Ôq\ëùšŽy¼¹R²˜\Ð\áL¼óþÎ€1®fx\ÞØ\ÌÀ«§´\ß_C0@\âBBE¥,Á1R\ÃE&Kg“V-¤´µ³\Â!—A\É0G¿¥\0Fg’5\ß]J\ÊÀ}\á\éŸ\Ãó«0Þ¤\ÏMÁ¤X\ã89ýGJg˜\ÓÎ’@»¡+“\Îp?\Î)aHžo3J7\0w\Ï\ê9ý)jK—\Ëga´-À\ã=1þ{Õµ\Ùp23.ü‚@Áé‘ÀŸÎ«D€&\ï1·Â¸<cü;q\éK\æ^ÏŽ‰¹.\Ýö\ç<{\ã°\ç½\Û\É,qlR\Ò\0O(|QO[\É`\Ì)¸Cƒœòzõ\Ç=h G†¢Íƒ\È\'š0K\0qœT±ð\ß0J¸æ‘±\â8\Ï\åB\å#·ZX\Ó{‘Þœ£\0\Ó4\0ª€Ã·hƒ\åsõ¨¢]¯»\0ûb–I7ƒ@†\Ã8Cw\éNG\Ø\ïž2r2}©¨ŠT\çŽ8¦8\Þ\Ù\Ï8 	\ËF\Ø$œûUy?\Õ¬r)Q¾B;SyRs\Ó9 f–—Ú¬¯P¸_%Vb[9Ú¼>¤Ž=ýª9\ÉYQ¾\ê¸\Î*M\å-5Xd”%ÉŽPG[ÓƒøQyÆŽ’\ßE&c¡¬¶™¢\Ö%Wß»‚y¨\È~Acø\Z–XŸ\åe;“=»S\É\ÞV¶2¹\0pKZšeš\Ý\Îñ	11AŸ\â\ä\Õ4B\é¸ñ‚{õ© •¢`\è\ÛYx\È\íS(\ÝY\È.!\Ævcz‘D2*O¦+Bö\ÝMÄ‘ª\ì‰\ÎøGªš£<;w1·;Ò¦\î‡5©*:£0\r\Çj©p¦9Ž*IQ—”_zT\nS\Ì|±\ã­hfD>Hºœ\Õ$l²Z`·(i²\Ñþ•UY¢b;78¤1û\Ïðœ\æ¤Y\Î\ÜLrzw¨\ÑN†œQ”\ä-0%ˆ4dIµGÓš¼ûd\ÕIçžœ?úõXDd‡<ž0)°¬ HœŸaÚ| ab¼q·¯P{\Ó\í\âW\Û 8 côª	U\ÝNyð\íN‹Ì‹x\Îh\Ü%•ò¤N0;W¡è·†\ê\ÇÊ‘²QFC\ã<gýy¯2I\ÚÝŽG\Îzñ‘]†µxãº’p§ ž™¦KG¢XÛ¬–\íÒ¡%‰Ú„ð3\êO5F\î\Ï\ì‘]yK¶Ð ò\Ìsƒù\ãŠËŽ\ê\â\Úy$F,\ä¼ÿ\0‡ù\íZ\çXT\Ó÷”V™TöÀõý;\Ó$Æ‹J–\Â\â1žË»ó9üªI\àL«–Ã²Œq\×?Ó°¢\âø\\:\"³—\n\ÝNq\É\Ï\Ô\Õ%»žÕŠ\È\ß#žXó\ïHF¬m!“]\Çwÿ\0\Z–[4Š\ïh£\nb\0óÁ9\Î~µ˜bŽu3E1!T¹ r\É*={~u¡x¨—6­¼;È¨\âD\É\Þ9ƒ\Û8 	\îbKkdQ*„\Üw;`ôúõüº\Ó)a•®78Aò¼.G§ôªwO4®[\Ê\Ì1Hõƒ\ßÚ¼­n\ÑÉ\0oP\ãüŠ\0ß	%‰ŒÈœ‚í·ž{ñ<Õ»\Ë8.¡& ¯! ƒ\Ø\\~5\Ï\Ü\Þ-ýœo	\Ú\ÙÁ\\`\äS\ØjSEp‹.\æQ\ÏPI>¿­1‘\Ý\é\rq;ÿ\0\å\Ý\n‡‚\Ç8úþ¶À\Û\Â™ò‡À!s”ÿ\09ü\ê\ÕÎ§º\ì\ÄcýÒ¨\ïžO\ëú\Ö\ä’6×·\Þ\åƒ|£9\ëÆ€4!Å¤¢IŒ1#žxú\åZ’\\¥í”’oI\0r1ÿ\0\ê¬_\íx\ï\àX¯	IùJ€2Ã üÿ\0­Z³·ˆ5\Êy‘Ÿ6!ûŒA#¦?Z@h] ’2›rœcód~½ê•µ›\"°ò\Ë(û¹\ç\'ŒjŠÁœ\ä*6>\ïóŽŸ•XÓ®¥e‘›b¯°\Ç?\çŠ\\K¢cxAÊ–1©\É\êZ\ÍÔ Š\Ö\è\\\Ú\ÂR4n_p\Ã@?J»=¶. l¡S\É\àg\×Zò)^\ÑY–I²:dŽžô}\êY\\¬\Â6Io˜\räž™ô¢{) {l¥¾US\Î~N,\âKdV–8\Æ\æ#\ïžþ\ÞÆw4«\åK7NPüOùú\ÓnS\Åey2\Äsþ5”©%Å«\ÈÌ±\Èv˜\ÕF3Ÿ¦J\ÑÕ¼\Ø\á¶T,Yœs\Ð.vóõ¬V•e#kHQ\Ù$ñ\Î	þt„h\é\ë$V·<A\Ô>qƒ\È9\ëô©X\Ú\Åj—-µ€ v\È%\ê›gFT,\Ä³Ž;öÏµC+¼‹µW\ËeC·©\ã<~_•\0Ck­*¤’Hb8wß§\ëú\ÔÆ‚\âHe\"8\ßn\0¹‡\ç\ßóÐ…£ŽW–Yˆ‰rBO=O×µSi¤24¨H„œ7qÜŸÂ€()h£‡0\Ì\åW°$ú}sŠ»\r€[‰.x“®xbN9ÿ\0\n»6\Ù\ì\ãQ\Z´ŠF\Åo\á?OÂ‹\Ò!\ÓO–v‚2cQ’{œp{\æ€ ’H’ö®@P2ò¡†{w\ï\×Ú¯Akn²ºò\î\0óŽ;ø\Õ>4ö­»ƒÐ“’}ºœýjÔ¯=µ¡ŠEqŸ~žù\à\nC$¸WNH`—\Ì`¼9=>¿Mµ\í¬\å—;Ù“Œ	&ª4\'Ì˜ S\'@qƒ\Æ~¿§JžK£,±F»)-œ\ã§\0óÓ­\"º‚\á\Ý¢|\ì\Æ:þTT7rO ,„eA ö>”PI Ýœðy\éK!A\éQH\Êzv¨Ù¾D\çøi\ZØ\\œ|ÆŸ\Ì@ö\æ£\0qž)Yˆ )  \ÎniŽ£f\ì`\ZjÀ\î<b§\Îû@\'šb!\r\ÏZ‡¡ã¨¤Š¿\éû€n\'µ!ŒBU€\ê3S4A\ØäŽ•\àñ×­)}\Ä(=E…‚¿yNA÷½ªI\Ì\æ\å$WQ‡QŸ\ã#-ù6G\áXvä¬‹º5lJ±À\"¯\êú„º‹\Ç*,qùkµ6/±Ú²¨µF´ú”þ\Ò\ÉBOˆ\äVR3È¨\æ˜:\ØÝŽ£½B‡\çùÖ‰\ÝµfYŽb\ÇnÂ›ì¤’3\Îj(ŽCÆœH\nvqšb7#&\êÈ±|\Ü\Â@\\Ÿ\à9\ÈTò]§q÷€g­I \ÞÁd\×2L\Ç\Íò¿t3\Ô÷¨6üÏ‚ŒAÊŽyþµ’º›¶ÆŽ\Î:ŽTyN:qŸZWR«ß¥Ez?\Òw(!q\éQ«²6\Ý±˜\å“x\n\Ýzu¨æ…¸b§\0zõúS‘w!$üÀñVJoO84€ª%V\02)ñ0e\äœbš`\"\\×Œc¥:$*í»€@ Vò+ü‹’GjpeŽ÷n\Ü\î\ç\ëM·D[…v †§–\ß÷»†\ÒpsÖ˜ˆfg†E•Tlc\Î;Ô¢UVg ‘Ž\Ô\è\âi¤¬6\ç…Ï­6\â\Ù\â›l ¶@ \Í\0=„w*N\Ýj»½½\ìn\Ü0\Å]T“\Ìò\ÈU#<óžõ\Â46\Ã÷²GCÒ€;;k\ÒÖ±‘¸  ö®!…P\n£\è8™\áõó\á1:ü€rH ¯¯OÆµï –Ü›˜dÌ¥œ’£·\ÊqúPf\Ñ1²)€\Ù\\:ƒ\Î	©?\Ëð¨\Þ\ÎR\Î|¿1\0<ž?Ò¥‚\â{\ë\"xVO”`u[JÔ”\Ü=½À`FvŸ\Çÿ\0¯N\â+\Ü\é07\Ú-AŒI^I$süº\ÓašO!`#¢\í\ÎGNž+N\æýdg.¹ù¹\ÆMXò –\Þl£	\Ôóþ•\0%µ\ê,‰	\ï(Q!<sÀÏ·øV~±g¯l†8\à\ç\0ƒ\íVa·\ÔsEd|,{öŒ>T\ïÿ\0×©nb¹¶Y\âž-\Ãz°|’\ÎG\ã@zs4v\ä[§~q’—\á\ïW ¹(e2\r\ÅXmc\Üdc\éÒ©¥¥\Ü_h½£ò\âlG\r’zz÷¨u\í]tû;u‰¶\ÝÝ¨‘\Ì\à.@\ã¿\Í\Ó\×\Òn\ÃJ\çM$Iu\\BX‡EP\Í÷ryð\0\ÕY-\Ã<Œ¬D&@\Îr01\ÛÚ¼§T±Ôù·\â\áxù|ðAÇ°=O¦xªúÉ¢ŽI\Zh€®r@ö5*i–\é´zki/r†‰7yd\èsÿ\0\Ö\Íf=¥Í•Â¬…¤P›Tž˜\Îz~¯m®\Ú>’—¸cÀ9\'\æÁüºÿ\0:ˆjS\í#Q‚¤\î\ç›“õ«3±F¦@\Æl«\ì	Œ`1±\Ó#ü\ç+\ÎÅ–\Æ09e\è9ÿ\0SØ®˜\ÚÊ»ˆÁ#g\Óü*\ì‹þ\Îøù”…\\\äc\0õ\Èð¢\ábM:\ê\á\"h\Û!\ãù~a‘\Î>´\ÍI\ç7	,S®\àCˆ\Ëd®O\'ðô«ð\ìh\á†@\'®3ôô¨\çGHå U&5F\'Žy<t\ëù\Ó†2Õ£w\Øò!!A\È<d“Œ\ã\ëPAg\æ\Ê\ÎBgs±w¦:\nK×’G¶?)û¢~\î\àw~¼þU&¡§\îµY#ù\Ø.KO®)Ñ¾ž­(HbV!€_—9\çß¿CùW7W½“(\ìùŒ;«\Ãqß ükv\ækh\ì\á\àˆòr©\ÝHü=*¥‚­\å\Ý\Â\0Q\ã\á÷·PzL\ã*5ž2¬\ç<qôª¶¡ˆP\ìŠœò{sžœþ•¥´\Ë,ƒ\ÎR7£¦\Â\Ð:gŽs\Ï|O\åM\Ðð\ßtª\ãŒ(ŽI\Ô\"§>a-ŽB\ã§=\é…\çšðn‰L!¹\Îpzs\ØR<¦\Êi£DX\Õÿ\0\å¡lO÷j<l£\"‚A\èO\×=4\ã•ü™ˆ`ü¼òß‡¦x¢\â\ë?\è©ý\è\0gó\Î?\n‚\Îm¯±D*T°n§§Ö¥]-\Äm\Ý]\Óœÿ\0:C\Ñ\\l9x\Û>Xh l\Ñk%Äƒp°©\Øw\0\ã\'ü2j9nž{¹6¿(ÙŽFr>œô¦I©<;Q~tq€cüžhnUY\ì\î\"RY™w.yÁ=)lA[V \0\êä‘ŽNs\Éüj™¹¢0-ž3÷ˆ\ë\É\èx:dS ¼\ç\ã\È/Ðž	\Æ3Ž€÷¤.M\ZIå°¸•rŸò\Ìn“\ÏJ*;›\ëkYŒm!C€\ØH\Æ9ú\Ñ@\Ï\íLe8\\t©6œó\rI´(‘¨\î<•8\ç£\Üx8\ã½;–\Üm=½\Å\08\á\\œ|¾”õœ(«Œœ\ÔaÀ\È,\0>½©UUX0;½©€¾_ñfŸ\åü¤\í\çÖšs!\È\Èu©\ä‘õ¤\" ‡p\âž\"·qRF»€\àsÓšqˆ©#¯\ï7pE1\ãI«~N\çù[\0Œ\â pwm\'¿j`U#Ÿzn®8©]y§\"\r¤\ã\ëHc ;UÁö\æ”6\æ8õ\âœ\0ô¤)°u C€.Š1È§-Ç”\ÃÈ¨\Ëm>\âžvHKdœ{`P©‰\Í\Ð÷ô\0œ…zš€±eŒ9§®cÀ\Í\0L\0$“\Øö§£\î\ÊpA\íQ;‹v\êsœT\Æp\Ã\éLC£O›¾3Š†`L\ìüÀœŠ·lê™ˆúõõª÷Hc \'>\Ü\Ð	\îÀb{;VŒ,\Ò(\Ë7\Ý\Æj|¡U\ã‘\ëSZ¹c´\às‘\è(@X\ág\0\È\Îü)n&>~\ày<cü…I³\å@\'¡\'©úS\î\æUŽ7=\0\è:š`A“¤Š£\å\Ï Ò¥o\"Y\Z@¡[\0onüUWºVPÿ\0®(i÷©hÀ\Â…\Ï@)¹¡1†\ìd\ã#\é]=Áó%i\Öe(cžp==k‹\Ó}\ÄrJ\Än=+¹Ÿ+bŽ6Ÿ—p\Úzúù\ÐDŒs<nVXX!\\§\'9\àš½k²_’H€ÀÁ(=úœt\ëúTö¾]\åµ\Ã™6|¡½i5½\Éò÷o|)\Æ{sþz\ÐI(µ†\ÑgžOõn\Ø*¼ž{Ÿ\ÈÖ…³\Å4D\Äxd\0\í_n=?\ÄU˜mm\å‹c£H:3•M\Zb\Çg<¾PUƒ#Ÿ^\r1•`7RGµP§®0=\Ïø\ns\Ü\Ý6—\"ºù\í&\ÊcÀ\0\çóPÚ¬vÓ¼L¬\n¹\ÙO=A\àóUÎª ¼·\çÂ£ƒ\0#8\âÍºH\êŠw.\Üm\ä`VF»¤ˆ\æ\Z¼*\Ò\ÝG\Çh\Ã‚N\ãžO\Þ\è=*üi7ŸgR\ÂŽý\Ê\ÈÏ¯nØ¬?\êºrI=Œ°Mö„\n\ÛÀÀ\Ú@<©\ÇjÎ¯Ã¡µsjszîŠ±Y«\Éz\í<\àI*¹\É_Æ¸\"¦9\çi\Åt—Z’É¸\à€\0\Îx®aŸ|ŒOrMc±\é>x\ï49 •°\Ð\Î0\Ç*‘ž?k«¸»²¶i`—*B„\Ü\Ø\ÆGO\Çô¯9ð”\â\Ö6mÍ™p§\Åw’\Ëoqih—%°\ÌW<c¦z‡\á]1\Ø\ä’\ÔI­e6\êU•¤Ul7\\ü\Ýÿ\0Ô¶v\ÒOY GX\Ülp@\Ï_^õ¾·¶\×%,YDÇ·*\ë€:ñ\ÍWB–\Ì\ÆTfUF$¨ù³“\ïÛŠd/e»²Q,$8À\'<t\'#òþ•)ºŽ[)§•\×`È­\Ç=ÿ\0Lsô§^Û‡µ\ÙLŸ.ôN›~µ˜-š\æ9#‘F\Ïõ \àw½\0h\Ù\É]$¤¾Ð˜ÝžrG_\åP\Ü\Þ}™\äRÙ…±À\\ð|÷®|K%˜\àË´ôn}=??Î·“RˆÁnw¦Ý¡\Î\ï¼Àq\Ïô\\D’A\å\ÚKM\î]Œ$–\È\Æ@\êG\Ê?*«f`·‰®.’\áØ²Œm\ÇÍ\Äcs\×\ÓÞ¦\Z¬2C*`\ÂcƒÓŒs“Ž:\ã­U’\â{™ˆ…ƒF{Ž)Œ 7$‘&œ	9\ë\Ç\éR‰~Á¦\Ü<µ,ƒœ\çž?:\Í0\Ý-\Ò\Ï6\ï03rI=;\Ø~µ\'\ÚQ­\ß#62\Þ$œg½#ºeš7’S¹A\Æzñ\Ï\åþ4\í)Ä²\ä%H-óý1G‘ö‹dŽ\ÈrA \ìô\0u4\ÛY\Ú< ŒÅœ\\\ëŽ>œ\ã\ë@EˆncZL–ñ“\Û?S\ÎkN	c“NS<h\Ñ{ò\Øcý\ÇÒ«yÁò9Š\à•$c\Ô÷\æ£Vsa8*†\á€‡ñ\É\ã½ ,_-²Ü¤°M\êe€\'©?¨£Ž«s#ü§w$\Ç¨\ÏÊ“©(¬0@9b};ŽŸ­Md’E$»?wÁP«ôüˆ\é@{[y¤Ž\Ýr\ÌTm@¹Ç©úóÖ£¥¼mHe\Éa^;Ÿ\ÄR\ß#A¾\ä6\r˜9ËŽ3\ëU\á&\Úhö’b\n	\Ïs\Çôü\èE‚pVŸp\ÉbT\äýhª$nU—i\ÉS»¨\ÏÖŠy®>~G½#³ùS¦ù0õ\Å#®±\ïH\Øb?\0c\êiG\Ì\ÇMG,x\ÍJŠY\Ê\æ€\Ë\ÃýisŒü\êGP¼T.p£œš\0š»‰\ÛÉ§†\í\éP†P\Çwô;_€0h\Â\ç\Î^\ÙœT…¸\Ç\ä*}\Î1\Ô\r=H2NN\ß\ëLC\Ã\í#Î£l;cßš•”6q×­D¡‹`u\ë@“\îô\àR)\ã*Fù£÷¨”\ï^¸`i“l„€=©Å\n1ø\ÔgÀ\'“Oþ\éô\ë@hø\Î~”£*S\ÅIµR<\îðjÀsÚ€\Í (\ÛÓ¥=e\ÎA\ãú\Ô23N,¬20=x c&\"z`óSnÚªO\0òO\çU‡õëŠ™\Ü\0rOlc\ë@‰7•;±H\ï½$g¦*O”Žœt\ãµA2$/$ô\Å0”\ê:U¸\ÜC‘ž;U?4 ]\Ç\'½YVFDÀ\ç844²\áGQó/Ö’Gsh\Ê\Ë\Él*>b[=:\Ôñ\í,7HÁ\ëÞ€*Dc%wg\Ì\Ï_jž\ÊJ\åFºþ¡ŒS‚œÕ¨GË°@\Î\âhÅ«¡—o?Oz\ì,\Ã\Ëh%i7G\Z\ç\0“\Ôzqú\×ªªAU?8\Ç\ã[\Þ¼Ä¿fus\0\ä?‡\åA2:XV\×M²±€\Ì%í‘ŸË§ó\ëR:‰WrK„\Ë§$pOq•ú~¸ª±K\çH\ÐË“Œ®7(*8ÿ\0Ö¬_;\Þi›\âYù¸\\¹¸À\\£œ\çÚ™&©¶\0Dƒa9D\Ç9\Ç9¬Œ\Ü\Ý)Pû˜7?6p§\éS\Æ\Ïš‹‰y?»Q\Æyüÿ\0\n¬›R\æUY\ßÀ\É\í\ï\éÒ•À©©«jI#F|¬”uO>˜\Ç\çBEo{g$v\èpò•U#¹\è\à?:Óº’\Þ+û¥\'\Ì\r„ù¸?\\ñúUBºù5$VhH\ß\nnÀ\'‘ŸÀqøûP	\\µij\ì[\æ\nBƒƒ\Ð€9õ\àV¾#š\ÇPƒÉ‰\î¬[L–‰¹\rô\äg\ÜÕ™\â=rV\Ô\Z\ÒE–’²)SÁÿ\0\ëþ•™k­Nš\ä\Z’>ZL\Æþ‡\0\0?B?\ZRWV4‹\åw8‹”C,Š€\í ¬=¤’I\'€ZöK\ÝNÉ§c‡,Y¤<\Éöe9>\ã\'ð¨¬tE\ÔõŸ.\ê¡O:Q·hRH\n\íŒ\çó¬\ãM£ITOcŒ\Ò4Ë‹hF÷x¨¡®¶Á£{•¹;A\ã\æ<fºT\Òl\rÉ´H‘’!\æH\Ì3\×\îŒt\Î\n\ÇÔ´[»i¦’\Ú\ÓÎ€\å¶Hú/z\Ò\Ö2½\Ç\ÛH,K÷Š®pzúÿ\0ŸJ¿û¹<\Ó)\Øc\'8\ç\ëž?*É°¹†ô,r*\å€\ì3œŽ•ªŽ‹w´·Bdu\Ï~Ã¥²ø‘œ¡˜‚¡$úó\Î>µJ(^k\Ú\ÅJ¹W9\È\çð©c¸ŽH^& œs\Üt\ãÛ‚\åR[\ÎùF	E$uS\É?SLF}Àk\Ê\0±ƒ€LVm­°Y#Iœloœ*\ç&·!h\ç\à¸B\Ù\ÜÍ”t#Ú©^Ù¼”<>\Õ\ÝÕ€H\ì3Ú6Q%Á²\ä_œƒ÷221\ïš¼l\Ë2EQœ÷\éú\Ô\×q2Ø–\Ëf\\†\\ð1þ\"Ÿcp\Ó\Êgd*¯ò\ß\Â@\Æ\é\Å1™¨Ù\Ã&\íÐ±H#=ñú\n³4rÇôÜ…J.~§?^G\à*U¶i5ŸH\ØŽ­\î\0?:’X\Þ\æ)-C‘JYvœ\ÏlŸ\çHEWG6ðZ-º3\å‹rp ~¼ôüª‰\Ò\Æ\ç\Ì+*\ãüG=*\åš\Ë\çn24—;ðY—\0dÇ¿CS\Â`Q\Ü© •9ÀÀýI=ýý¨-\"’Ü¿É³2¹\É\É\ÏOóÚ…g%‹€ÙŽ2rxú‚)ò™.\\É\ç\Ë\Ëq€>œõüê°–]#\"¸ˆœ‚qÀ<P¨n¤»l<j\Û©vQ\×\×ùÕ©¥k\"»(Œùc\ßô\ÇoZÍ‚\å\æt1\ÄÁr0:dw=\Í@u%p.í©r\0:{†Ž‚”\ä\Ç-\éœþ•[Y#“dD…lqßŽ:Uk¸\ÊF2`?_Aš†+Y|øÌ€ªŽNG\n\0I­n&}\Â\êd^Š#c>æŠ¾\Ó\Ã!\Ý#sþ\È\ã±E<©/RP@\ÌzRù\ç\Ë\Ê\Æ\ävOøU+x\Ý\æ\Äa‰\ï°v­hšì¤‘ªÄˆ£ø·gùÔ›\èŒ\áxQ\É)õ5f\Þ\égr°#Ú©\Ü,\Ø8\Ïl\Ôp®NH z3MŽ\æ>±Ll‚y\æ£YNqùS\Ën ŽMŠ]\Øô¡[§™\Îy\Í#1×Šc\'Y9\àâž² ¥U\Ü;\çJ–&ýh:\Ü6qŒSVr2q\ÍFH\ÇZvÓŒŠ\0{;\"`ŽžŸJ…r†\è|ˆ\Ï=x¦\Æ~\\ùP\å\Ç\ÊsøS•¾Qœ{\Ôx$Ž\ép¨=\0>F\È·zk`ô\æ•Ê”\Î2D ŽO¥\0<q\Ï¤-œ‘\×æ€pÇŒRnO\\c\é@‰F)þnrMV\r€\é\éOF]\ã¥\0Y3²€p@ú\Ðó1qÓžõ°+ž´ªt4nSô5b1¾0™\äœjj+r	úT\ÑÇ‰@\ã’(\Â1µ€ü=J\Ù:\àñ\ëŒSL˜\ä€ô¬„¾v\ã=óšb$tWA$XW¬©\Ê(Á Œ\ç§ª;É…”†_a\ÏiY·o\ÎT@\í\\*Gø³\Í_\Ð\î:\ÔlA)Iž¥e†g~G\r\Ê\àö©me1\ê1•¨S@™\Þ4–¶\×\çX‹œc\×\éü\êû¹x]òÍµ˜¼=úöü‡_­sö²<÷RA$$E\'\ÌXŒc9\È\ê\ëÞ¶ š8öœª…O¼Ã©\Ï,~œP@\é-Œ¶L\è\ÂI	EF<—Ÿ©È¨.­’\ÛÍœ™Qp1\ï’QArÔ«1Vn­ž	$\ï\Ï\èj\Ô3›\Ôù”3¸+óŽ8\Ç\ÓÞ€$\Ó\å‚\çQ·‡\Ê\Ê\Ü1Tnx\ä±Ö½lQ\ÛGojD1Æ¡hûª8\0WœØ¤öRÁw\n\ÄeW\rûÓ‹ŽF}ù÷úv’O‰\Ú]¾¤öw\Ð\Ïh\Ù\ÂHË¹\èGõ¤\Í oø—Â–\ZÝŒi\"<J\Ú	\Õy\ÈÓ¾+\Ë5\Í\áMQ,§™n-\Ë	ax\Ü7g‘\Øõúö\ï^§¿\ÖMw%\Â`yj§\"F\'\n?@¯9ñ\'‹Ö©s¢y‘²\Ç*¬ŒzM7;\ä#ø‚\ãj©<b¥\Ê\Ê\å¨óht^º[}.\â~\0V\'qôÿ\0&¹“©Img¬\\£÷N¨…y<[ù­Cý¨\å\îX\äaßŸ›\éò\ÆFjÎ´-­›v„\ß÷zŒu£Û¾ˆ¯cmÙ³\á#=Æºò\Ü\\$qJ\ÈûÀy8ûª	\ä\èJô\Ø5;{t\ÙnG,r\Ôy\Ø×‚\ì¸Ô–W\Þ@\Î[ ö³£ø\Âm6\ÒI5sòF¡#K¹\ä\0\ã$œ7‡=š¨ÞŒN	+\Ä\í|Omw\æm´T¹\ê&_”·³c¨¬Kbde.vF½UO\'ž?¬\'ñ…¾§#´p:’¹PFó&­i÷^tQ$`óÉ«L\ÊH²gòKw’N	\îžß‡Z\ÕG+\0r\0Á\Ç`?©\Åsöó~úX\É\Æ\ÐN}qZ\Ö/\'\ï¾\ë‚ü€y\è?*d´[h\Ã4‘\Å-µr0Lñ\ëT\în\äˆü\Ûòi\ç$óžµmguž5“\åG|ö\â™où	º\á›ký\ÕÀ“\ïô\ïLE…–\Å\Ó&7Aò–\ätçŽŸýz©÷—-\ì;1\n§™\Ð\r„\à1®x­Y3‹H’/™þ@²8zgéš£ˆŽFŸbî©†Ÿ”ô\è=h~+¤Hd‰P• ·®=~¼T+xùdŒ¨r[§Ÿçš©¨–XG\Íòü§\î\î\íõúb­=¾ë†”\í1©\ç$¤\ãó=\è²Ê¶\Í!R\Ç\Î\ÎTòGN?\n§l±¢J¦|of\n\ë‚zõ>\Õ~;cynÁf\ÆI\Â\àþþºb\ÙÀ²*v¸\Ü\Û0\ZC· gÓ“ù\Ð2d³¶ò¤†öƒ¹”d§#·§5V\ä\Âð¿—†;bp3À\ÉúS/£™D\ïlù¤‘–þ¸\éjKsn¤\ÈSd\îS\ç\éü¨–¤	Êª\ág\0\çv1À§j\Z|>L“\àEŒa\â›2ý†]\í½\äR_*\ÎG\ç½2¶y‚\\ub\Ý\×\Ð\Ð#:RñDÕ„ª\í^sž\Ãò­\æœÆ€…`ª9=zsš5b¸ª	ÁøH÷\ï\Å$‹‘H+†,3ø\n\0¯6ÙŸÌŠ€;\Ñ@†\É\Æ\é\äý:`Q@`x´«Q`O\Þ5…\Ã]L\Ù_—i\Íg\Þù\Å\É|õ\Îj+K³\n¸\äM+¤Ú€/µE:š|Ó‡<\ZŽ?ZLiS%…NH\èJ†>;S\ä<Š;\"‘Žîž”\ÆcÇ¥8€3@OÆŸ óšˆŸ›5\"\É\êq@\'®*\Â\rüjœx$\ç¥L‡\Ó3o^\ÔÀ£\r79;;<;P÷\æ¢\Þ[Æ#ƒZ„6i!c¶Œ\í_zc7OJ	%\rw§z7d`TYùzö¡I\nI4 \àOzr‘ŒŸ\ÈTLx\ÆsO¹\"€¤3ÁÏ­NŒ£ŒþµTœKúÔ¹\ãµ1\ÖzS\ã˜d³œ\ç×Š¦[q<Ö”>1Ž3@¬]–A¼¾xÀü}©è¼‹žAU\í\ë\ëÖ”\ÆqœŠÆš€û¹Á8\ã=H© np§üýj›M\å±+€:\à\Zh¹l\ï1\éšh\Îü;&[–\Ï8öô«Q§\ï\âçŒ’y¬ƒ9WÀoÆ¤‚ñ’x\É9 ñšž$j\Z2¸\ÚF3\Îx?¯ù5_co\r$2Ç¿%\Ë\0¸\ÆF:s\Ï u¤°\Ô\ì¨\Ãnò\Ë~ ÿ\0žù¨\ÛRý\Â@\åsƒ\ëú\Ó3,X¬€–E\n	\ã>?Öœ÷¾C…€.\á\ÇŒ\ÖJ\\™Fð\ìÀ0ùsŸ~jAu—\Ãò\ã\Øõ\ë@‹[³-©R\Ý\È!¸\0ž{š\ã|Ub_\Ävq¤[iq²O\álqøÿ\0J\é¬\æ‡dÀìŒ±º©\éTµ\ë öjAW–7ócõlò¥\'±pvg,\Ó\Þ\èó³»š%cÃ¡#¡¬‰\'Ý¨\Çq9Ý–%\É\ï\ë[W\Ä\\@²®v°\Ü2+™¾\Ê\àz\Z\ç‹jGSZ=¾£¦Q&1Î„m\nÇ•\Ïõ¬\ÍI\Z\Ø]B2À\rª\Îx\Åsð\È\"¹ŠB»¶8lgÁ\ÍtWW:™¼\ÕwgnGF\Æ9ª–Ž\è#ª³67}‹K†\ÔºF7Ÿ|V\r\Ê‚òÆ­}«Ì·<å›©ªrL#Ò³Š»*NÈž\Â.\Ø\îR²kMºŽ2f^\ãÿ\0\ê®rº+A\í\ë[/\Z\ÌJ\Ú2Y[\ÄtÂºQ\Ë#SO•#\Ô$w‚1Œz\æº\à¼C\ÌŠ’y\è£\×ñ®jeŒ’!\ç\0\àqÚ¶^\æ¬…\ÄKš@¶\î}³þ™Ñ›\r\r³\Çp4 ³?\Ì0x\0\Ó\ÖE‚\Ú\n\È`\ç“üù¬arñ,3ß…9Px?­Y’\é¯UHÚ‡¢ž\àõ\ÎzS¥\ÊÐ»`–v$(óŽžƒõª÷WQ\Æ\Í\Z\å]X»F@\Îzš¬³D²¨ó0XƒŽzþ_Î«]^A,›£bÍ‚Yˆ ôÿ\0õ\çµ\0Kt\\\\G\äE¼ƒ…U-\ëô\ëV\ÅÁ‚bh[vÌ€Gö#¾kK\Ù\ç\Î\\“ƒó|f¦r\ÊÉ´\0\Äü¸>ø F…žÅ·ctU›¼qƒô\'‘×­Kuq\×A”·wŒ¨ëŒ¯\éX¢\ä\ÎJ´˜“ \î*®#»>H\ãS´c>üþ}(\Ð\Æ\ì.\Ér\àÚ¿(\è3ƒ\×\rµˆ6ûXÌ†e+ \è u·\åY\æqf\ë\å‰Q¸³n,s\Û\Û9\â–K\ÌZ†Ý—p\ÒH\Çý:\Ð™c™\îgT\Ù”©\åúðª\Û<\Ê\Ý\É\éÏ­0\Þ\âyò\ì÷D\×+±P89\nIÀÿ\0\Í/\ÝÂ¥¼\Ï0c®{ýzõªžyHXðÚ”]3D\Ù¶\Ð\0þ‡­E;ÌŠÀ\r\ã\r\Ó\ãÖ€ %¦ó\É´Sa\"8ö•\'Üš*n3…–Hù	$cŽ€ýj”‡Ð‚=«[P³‚5aOµc\íù\Í\éB¨©\â\ÔKV#>ô’Nv\È4\Æ88\Í!9¦!FH\æœ\í‘ÓšŒ\ncw4\0\å\ä\ÓÐS\à\Zz°\ns\é@‡ \0œô\ïŠM\Ü\Ò+c©\ëN8\rs\Å\09›Ž)¹\ëÖ£,Gó¤S@fùý³M=h$d}(8\ë@\nzb\Ø¤còf™ž\Ô^ôð\ÛW\Ä8\êzÓ8 ©ù©ü\îãŠ~ñ§†\Ã@‰-ž¦•\ÏÍ€8¨\Ë|\äôô§\îR½H4\0ð~\\zSw{\Ó»úqL\ÎOZ\0°\Òr4	r¸\íPÀ\ç\ØÒ‚ô ,hpb\áq9&¡Vž˜þu\Z\Ü2¢¯c’>ÿ\0¸:qLV,4™LŠ%\"@{ŒT9 ”={J||ºŒw\æ•Á–\Þ\à\éOyYÔ¶\Â@=}úUxB\Ãhœ\àãŽœ\Z¾cSdK\ÊA\0\Ù\ç1LÄ$\nø\Ée<ŸLó\ÅF·L˜\Î\àÄNzŸ§§4¶\ïh\n5¹BN‘\Çœ~Umt\è\ç,\ÐJ²\ä†ù[‘cÈ¤\å`±\Ý\Ø\ê\äôõ¤–aöfe\ÃJ«»dsRg‘ `p9\éK\"\ß\Ì;<\Â\êT\çŠ.†‘o:]¬\È‰e_\çþ5ƒ©&	\È\ä\ZÐºµ¸\Óo’{x$x”\ç\n2@\î8üj\åß‡µ}Xy\Úv“{q™Ä±À\Û8\ëóc”•¥ttÁû¶8Þ•-¿\Í&kNOø…/\í\ì¤\Ñ\î\ãž\å¶Ä²&\Ð\ÄO\'Ž€ŸÂ´Ç€¼Mb“\ég®Ù£o\ä\ÕS\Û@Fy\"\Û=O@=\ë<ß¹¹\Ï&­\Üóš)‘\í*\Ã\Z#ùÔ’)AYž¥‹5w”0\0¢õ\Ï\'?\áZRIHU§øA\ã\ëY\Ñ?”˜*	\íR-Ü€Û»°õ«º2hº·\Î2\ÙÁ\É>õ­o)x²ì£\Æ:ö\ëX;ð\ì†#§\\V­³\0—À\ï\Í4È’/\Ãp7\ã`Ï¥:¡\Ã\r¸F 7$g?\ÌSbdó	,vû÷öª\Ì\Ên¶¡\Ê\äõú\Ó$¸ÿ\0($2˜óžz\ã(„²Ý¨ŸE\É;xZ\Ûrm‰’	õ¦»	1\'\Ìù:m\í\Óõ \ÜL\\$(UœñŒÿ\0ŸZsD«jòRzR\Ý\Æ\Ñ`+«`mÊœCÈ­\á\Ã¸\Æ:`\Ðyû\Ñ\ã;z§OÆª¸gUSžOsV\â–58”© `ŒŸ¥Cx©„\Û(g\Ý\è(Ž\n\àw\ã<zœÔ¸ûÇ¸\ìy\æ¢\n$U\àm!sžMJ%H€§\ç\í@Àz\Ò\î\"@‘ŽH\'¯L\Ò$6\á°\ät\ã\ÓùS#µ\Ã2>BžÝ¨\Â?\Ù\îrH OÒ‰Œ²œaF3\ÎO­Bÿ\04Å‰ùƒô§Mò£ò:®=8 f\Ü\\y#œ\ÑH¡r\0üh¤):²pzõ¬À¥¬\Æ#\ÕŸzŒ•\0„L}(gBfz!\ÎjQÁ\ë\ÍI\å\êqK\åHc	\ÏzAŸZv\ÃF\Ã@„ƒÖ‚\ÜQ\å\Z_,ú\ÐA8À4¹4¾Q¥ò˜v e½h\Ôÿ\0)½)|–÷¦{š€O­K\åÚ”BOj@Aó\ZÍŽj_,Š<¶¦|\ãšLzf¥7zx†€+\à_Ê—\'¯5?•G’}h[œ\çŸÊ—ŸÊ¬ˆ	\ïKöv eL1=\éB¿lÕ¯³µ(€\Ð*•Cõ¦€Kuæ­¼$óQ\Ã	v&€ \Ú\Þô\åW¡«~A(ò›Ö€+sÜô§0T\ÞQ\Ç&\Ç\îhXŸz|;Œ\ë\Æy\îi|£R\Û\Â|\åú\Ð\ÙH®\Ø(¶:\n²¯}´£©+\èE\\‚Ðˆ•¶ƒVVÁG\îÜŸjf,\Åû=\ËdÇ§\Ì1H¶\×w|\àŽ\àÿ\0õ\ël\é\åz¿QN\ZvD‹HW9öñ\ÐnD¹¸\ã¡úf«]jZ\ÌŸ´\Þe€•–·n<7k>Y”õV \ÔW¾[°ù”‚ü»\Ëýju4RF}¶½o5\Ô0³\Ì<\ÇT.qòäšö\Û=B]M‹Nš\Þgx2Š\Ñ&A\\§¨$\ãÀ<\æ¼Q|!j$Sö‰RQþ\éZvºþ#\Ö&kF\ÓN‰$¡w2ô;Xñž9\'\éM”š\èfx§\ÄWKsc<\0¤‘^\ÆF\ì\\‚:ò2?:\èµ=~\'€²E)‰—;\ÄmŒz’@\Ç\ã\\\Ä;km/\ìó[jQN\Í:¾\È\æ\Æ;;õ\ã­w1[\Í\n:\í–\ãXù\Ûp{\î>ø#<W\Åw²E\â[°¡6¶\ÖÁQÞ²“PšB,xm_ñ,~~¹+	–q’¾jôp	Áü±U \Ó$.®§iô§m\n\Ò\Ä\ÒMsS$Qzr3\é\ÅOK2d0C\è*T\Ó\\Å³.\í\Ç\ëVc\Ó_€(K¹\r¢——2I\ã×­h[C3 *\ê\Üt\Í[‡L­X]2D;2Ÿaj\Ñ\r‘\ìc@YA<žM+%Ä®“€r0+B(@¸ÊŽÞŸ]J\ê6¿\'\ÜS \ÅKy\Ö@ÿ\0!8\èNq\ÅD\ÑÍŒnPs\ë[O§¸<6~¦£ûˆ\Ìv[Ž€¯\çBE<c‡V$2Mk#\Ã~4©¦6yp(Ì“\ÖK}\âNsJ\ÆWqµqýk]´ò?\å°Ï¦3M:t¸\ê§\èhÌ³„+E?SHVB\ê\æEbŸw<Š\ÕþÈ“\0–\Æ{To¥È§¡\æ‹\Ìù$º™\Ë5\Ç\Ì{\à\Ó#”aeP1ŽkKû>E8\êi>Á)\Ï(°\\\ÎeqŸ\Þ&÷¨Çœ\ÎKJ‡=Mi›\"F	\Ç\áG\Ø@\èsô .S83\É¢¬µ‹±\È\ÈP3Ž\Ú=sJy§•\'±¤\Ø}\êM\ÈöÒ…ö©CF\Ó\è*\0f\ÑF\Úv\ÖôoÊœÿ\0tþTZ]µ(‰;[ò¥ò›û¦‹\n\ä8”¢¥\îšPž\ÔÀŒö¥?…?\Ë9\à\Zw”\ßÝ .CŠvG¥Köv=ˆú\Òýœ÷¢Â¹“Ò¬y8¥òÀ\ê(°\\€/ §\íS\Ç÷M/—þÉ¢Ár=¨\Øjqþ\é¥ò[\Ð\Ñ`¹\\z]¾\æ§°þJ¿ºi\Ø.F±\î=:~Ð½H§bzR•oJ\0‚l\Ï¶\Ê!‘×š&ŠR0¨Hö*\ÆÁ@\Ú*,±ÿ\0\ëR^Â¤ý67\åK\ä\Èz¡ü¨°ˆyÿ\0õR\ê\Ï\Ù\ä?ÃÀ\ÓM»‚š,;•Œg=*KdcpƒoSS}–Oîšµ§X\Ë-\ìk±ù>”XMe¬2}™0¼ý*\È3»?\0+J\×G»0€# Þ¬¦t§˜2~†‹ª\ÌF}N9¥*€ý\Þ~•³ý•y»þ=‡O½Úœ4{²\n‹T\ç¹?ýz\0\Å\Ât\íô¡\"\Ïñ[-\áû¾=”Ò\èñÛ¯Î‹0±Ž@GÍ¸ýW=¬øniUN•*´\Å *O¾yô®ñt+Á±€G}\Ãüh]ø\ä˜\ÇN\î?Æ††®“ÂšôªR[T\0Žœ¿\ãWdð®¾c]’Û¶G)\çƒøŠõÐ®\Ø\å`ô.¿\ãQ6‡¨&H¶Œ?Æ—)\\\ìó‹j\éö\ï)J¾\ãúW[o¡\é\Ö\Ñ\ám\ÇBy&¶\âÑ¯d@\ê§i²œþF¥\ZE\è_–-þ¸aýH¦‘-¶b-²Œy*G½5­-;U>‹[‡H½\ía³üjD\ÑoœÁÛŽTÿ\0Zv\ÏD\å9\ËS-¾N#ð­¿\ì[\ã\Ô(\íHt+\Å\ç\ãý\ïþµŒV°‡AÓž•\Ó%\ßj\Èõ‰\Ï\é\Ç\Ð.‹y‘\Ìdú\ç¥Dt‹Õ+ùk\é–\àþ”Œ8R[cŸ*n\è\ßçš³ö@û¤ý+N\ãÃ—7+†Ks\ßvpAú\Å\Ú¯m’kyb\ì7\Ãô¢Ác(À\0\è¹1M1‘Á\æº¢\\±\Ã<\n1Ð±ÿ\0\nA\áÛ–tð€x$ÿ\0J,+B\Èù\Õsô§‹hG\Ü\"¶‡¦\Ï\ËqsŒGô©\át\0µ\Âs\Ü7\éÒ‹Œ1nƒ¡<û\ÐQAÁ<{š\Ù:ŽO©Â™ÿ\0ÔŒCÑƒ\Ó4Œ¡,0Ái­kp¸úV\ßü#R©ÿ\0•>ø<þ´\á\é:‹•SŒ\äþ4\Â\Æ ·µ\è>Â›-švŽµm\Ügq¼=\Â\äÿ\0:ˆ\èR\Ûö\æ\×\Ë\Ïþ\Í@X\Âk5@¢¶¤\Ñ\ÝX´\ã®\Ãþ4P;C°}hò\Ç\íÿ\0JP\ã8¤h7\Ë÷\ã\éN\Ù\è@¤,?¼?:.qi\0»ON)B\â…\ÆN\n\â—r\â€`Ï½.\ßZ7ƒÞ0c’)ˆMƒ=:Ó„_JD\ïÖœF_Î€\Ë·\åNÛŽ‚š\Ò\àõ/ž\â˜QA‰óô£v\ã\Ãw \ÓÁP00(\0XöŽ8/€ë½Ae<qù\Ð\í\ßJ\\-00^„b”H§©€µGLR\àz\nhe\Ä)\ÞbzÎ€(#)2p:ž¸ô£\ÌA“œR,‹÷‰\Ð\Âv§ˆ\Æ)¾jöaGœ¸û\Ü\ÐžX^xü©\ÇNµš½Ú“\ÏN™\æ˜nÀ\í@!5Hº\ZPãŽ‚p\r!z‘\ëMÚƒ\'Îƒ\éø\Z\0žkk\Ãqu$„u¬m\È¥uþ…>\Ó\æ–t\Í13\ÐbS\åFBq\íRU“ô\ÍBó#H‘NÑŒ\î†\á\è‰\ê\ßýz,\"Bw|¹ö©cãŸ­Uó\ZH‡ü\nz\ÜÆ‡>bc·\Ì(V6\04ŠXú™\ã5	½€a¾Ð€\ã¡nôƒQ²n\"¿0ÿ\0\Z\0²ª\Æ1\Í4Ä¸ ±\ÚG#hª\ÇR\Ó÷\ÞB¾\å\Ç.©a3mŽþÝŽ2H‘N=©°\Ã*+Ñ±\Í7k´>xÁ\ÎEFomð~˜öaMmB\Ü\ËXø\ä\à\Ó‘Kn\æTe~g\è¼?\\ÿ\0œÊ³NyÜ¹þñj6\Ô-U·y«\Î2sùUD\Ôm™ƒ\ÛÊ$|‡;\á\Ûù \rU”õm ÷#Š\"•\ÏR=g6©b˜\ßs\Z’xËš‹û^\ÇvRòA\nÀŒ\Ð5Ø“\Ð\ãð¦\î\çqÁª1\êŽ\Ùó\Õ\È<„\çùPÚ¥™\É>\å_½òž(ßš^hi#u\Ù&6ÿ\0µU\Ííº¡s•2\ÈGóªgT´g*$\È’#b\åE\Ð·½³“óKíŒ²ÿ\0ˆý~µ:H®ªñen~^G\éYo¬\Ø\Ç\Ã\ÎÁs€|¶<þ\\S\Þx7n…Àw?ttorC\ïù\Ñp4óÁ%X~Sƒ…b”.8F+0\ê\Å\ï\Ø!\éó‡ð¨e\Ö\ìU¾Ó”\Æxò]®I\'bzôoRFOn\Ãˆ|I¦‘‘p\Î	\Ì-‘ÿ\0ŽÒ¶·`pV\è\àð\ãúR\Ð\r†q´\ãp=òz\Ó7£üÁö¾9!zýFpk-ukv`«\'8\É\ãŒ1\ï\àPŽXüù\Æ\ã\Ó4h4\Ú\áU0ûWŽrT}}?—½K´}\àpœ†\â±µmB†b\ê3\Ô\àcß¯½9n­£\r%½ôiÜ©m\Ê\Çý\ß_qƒ@\\\Ú)\ïžýižHòòO ö¬\èµ\èK*>Öõ\Ø\ãóÁü1DšÅ´*Z@\áÜ¼^XQ \Ë\Çóü½=…™.»l_)!ÛU?\È\ÑN\èG‚)\çÌ¥,\ê9jŒy\Í+Iœp+#QÁ\Øÿ\0)Û›\ë\çQ”\íù\ì((\Ï3~œ)\ÎXýMD§š€÷\'µ1,˜Ž=y4ÀÒ»‚F\Õôõ¦(\ä3O§aR&€&\éøÓ‹ý\Õü\ê¶XúÒ‚hd0\ÏAŠ_“9À\Å@Š]\Ä\Ð¥·2µ.¯¹5\Zš•[Š`0³#{þõ!\Î?\Ö?\çKò\ä\ä\Ñò‘Ž´€n\ì]¿:@Ã»1üh ŽªÖ€T8 yˆ¾¹§…\ì„To\È\ÅF\0\Ï$~t`L¤sõ£\Ïõüª¾\ä\éúÒ€‡§4a®®g\ä)ži\'$ô¦aGALa\Í0,‰•Œ\çÐGž	\ÉúU] ûRŠ@X{€q³AMr_ô¨9\ÏJx\éž)7\îœ\r\Ç?QR\'“ùG\ä3Uƒ\ÔÔ¡‡9^\Ô:®\é\Æ\0“Ð­wzU¬–ö\n\èw>9\n\År\ZLNgWò\É¸®\Ö¤Š0È \ã\0!_ð ‰2\Ôlï´´{A9\ä\ã5+4J¥#ƒÁ Œ\Õ·\\6®\Ý\ÆGÓ­*L\Ä\å\Êz(\È9 %Cò÷¯÷™@n*9|¯3tÑ±8A\Ï\çWso$X%\É\ÇJƒ\í§\È#¶\ç\æ‹\äE\ÐdGò¯l \Èüi±±²•$tR£Ÿ¹Y°\Ó0ô\0RJŠ«¹e9=¶ÿ\0õ\è)^\\\å…õe8¬»+‰4­\\£#y3œ….0Ö´ü¹.\Î=óU\î\ícºƒj«£\ç*\æBp{P“\êòÄ–8\Ôg(òô§®¯K\Æ\ÌH\à«¾õ›f\â\Ñbü™W\äü¬8=\ê¦\é0\0\æ`8fð\ÕQJlŽE$zhŽòu\Ö\"vžX¶O?Ê°\Öu9³ÞŸ\çn\ï\ÝÓ\Írü·2Î¥ž(¤oE8aUR²\îT1Ž\ë\Éˆ¤i7 B\Òf\0R9v;Kß§JV\ÉZ\âW v\Ï\ß=\é\É422€sµ”b«HGð¼‡\× cô¤Š-\ã\ÔÓ°®]ä•˜ü¥±÷ŽI¤Y^)P\ä\ãžH¨UX.\0ƒ‚\Õ*¼›6\îõùA¢À:k™Ü†h¤8\à6\ãýj5ž\ì±\Û#(ô-š<\éw#§qSF@ý\àr9®\ï|\Ì9%ÀÁù\Ï9\ëÞ‘µ±ƒ;+œ~¦¦a\\™NsÒªÊ¸b\Ê2;\ç­ó\ë36Z\Æ\ÍB/§nh\"sý\æNz~FšI=T\ã\ëMò™”…r§®§a\\™µ	d\É1\Â	<¸‰Aü8\â\\\ÎAø\Ï‘\Å\"D\ã\\‚:u\Í8\ìŽN€“ê´¬1\Ó\ê\×\ÇóQü dT­~\×%XÄ¥‡v8ô\ÍTfóò¨\î;\n\çÓƒŠv\É¤Ê”H\ÃLšp¼¾!\Æ;\ì& ™\í\×5e%Q‚J\àŽÃ­‘½ý\ÞFù³\Ç‘I\Ç\åE2R›øS¥Xg™w¢‚¤sH3\ê*\r\ÅÇ½=@4€d0¹n\àz\Ð¥\Æv(õô¥\n|ž\æ¢ À¥\r0%œ\rD>a\Å/+\×ù\Ò&M¨÷Òž¬GP1L¯^´ýÝ©¾g\0§\Øšn\çcÀ\â€&W8\ëAe\ïœ\Ôlp€–\0ö\0TfSŽ´)qÿ\0ë¦—=3P$Òƒš\0”±ÿ\0Zija$v™?…\0<“\íH>cŽôƒu4ñ\ÏJ\0i\\ÀÓ‘I4dTŠG\æ€\0[8”†\ïŠvp0(\È4\Ä4\np4€ŽÔ¿ \äòhqM\r­<\È\n\ãS\0ÿ\0… y\ÍZ´‰\åp\08ô¨\í\í\ÞW\0)Á5\Ð\Ú[­¸Bc\ë\Îi‰²Ý„_f\\ýß©«\Â\çh#~s\ÓH›xAÏª\Óc\É~6©\Î2h3-¥\Óc’y\êsR¥\Øý^\ïz¤\ÊT€X\î#¿¥4³‰\ïÝŽÂ‹ˆ×ŠG‘\Æ†\î8}V\Ð šOO7Š\ç˜Ÿ•±\èEZ…[nÿ\05XûzS¸®¤„®Q ÿ\0c®jŠ5¬„y\0\\ÿ\03C\à)n s…5²\Ôôü\é™\ã]\Çdá—¨§\Â`n\\Ž€÷¬÷ùˆš0z<\ÓRñ\í¥*¯=²(_u\Þ“\åIð‡\Ùû\Ä|¿‚Ô¯kŒo\n\Äý\ãü«þ\î;›vŒÏã«ŠK-WÌ„\Ç&wŽi\Ç\ãÒÍ¼j§	£œ#ˆ¦r?<\Õv™P\nü{\ÔO}·,\Ýs˜¢\ã4Qb*r\Å}×š_•	Á\Ï\\€k1\ï\ãr=†Ú‘5PJz\í\éEÀ½*Hø\Û¯4‰jn‘\ÄQÖ«ÿ\0h\\\ã‰U\Æj9|\é\Ø\n8\Ú\Äb\Ø\Æò[f;MF‡Í»‡˜Ð“´ \ç¹\ÝRG$©…;I\ÇqÒ˜\Í60“¹W=ˆ\'ÿ\0­Qð$\Ëû²:«˜e-—vú¯\"£p ++q\Í\'‘\äØ¨È¸\å·f”£\ÛE¼4n¿\\š¦w„R9öóLGÀ\Îü\à“\Í|N%\0\åx\íŠl\ÓÄ¸c\Î{Ui$·‡MÃ¢\Ô{¡\íÃŸ\Ç\\V4>\Ù\ærB:›\Îi”¡x\çƒQhZgö®¨¶\ë\Ä*\Èø\ä(ô>§ W¤\ÚY[X\Ä#µ…\"Qý\Ñ\Éúž¦¼\Ìvi+\äµ\ÙÛ†ÁÊ²æ½‘\ç%W\Ë(¶idM£yU\0w\Åz\îi~…n!V=Ÿ0ú\Z\àu@,o¦³•”º0\ç¦\àFA\ÇN†ž2†*ñJ\Íƒ•\rotSiT¶\ÞýÁ\\\çRP>\\gû¡z\Ô-\"±p£·\ËOQ&U·F~8¯L\ã¼w\Îh \Ì†Œ7¾\rµ‰a8(\Ä\âõ\ÅgnŸÒ“3ú\Z\r¬i?\Ô\ÄGº\ÓÁ€/ð\ß5—ºJR\Óú\ZcM\Ú‡m¼*qÁH¦2òbzVa3c½Ÿ\Ðþt\'Ùµ±c\Ó“teG\Ék8‰ˆ\éŸÆ,\ÃøG\ç@X\Ñ,’cO¦iwFWˆ\ã\ëYøœ\ëI‰ý(¸‹§÷cJj\ÉA,¸ª[f\Ç\ÝmŸÒ\ìi	#8\Æ\Ï\ÈRo\ä¦=6Š\Ï\Û8\éü\è\ÅÀ\çŠb±¥¼c\åòÿ\0B³qþ¥¿\à\"³qpG Æ€\'\Ãú\Ñp±­¹s\ÊFxé¶“÷{FbŒŸaY`O\ÛùÓ‡\Úÿ\0®‹…-°ÿ\0\Ïñÿ\0T•”\Z\àgüi\Û\î1\×õ ,i:[\ÄKL+\Ö\Ä \Ç5Cu\Ç\×ñ£uÇ§\ë@•bcS@òƒ\Ý.1TA¸\Æ\0\0\Üz~´\\\r\Ç\Ç\îSò§?Ô 9ô\íY»®ðþ´¹¹ôýh¸X\Ñ_+¼KùU\Û-\î.yG¸¬ n	û¿­ii‚ó\ÎQ¨=\Ê-2\Ú4Ù°1Œ\Õ\Ñ=‰ ÿ\0eÙ’?¼¹®L>¦	Âž÷ºÓ¼\íP	ôûÂƒ-N \ÞX©´‹A¸Œ•ô=ÍpH´+\ÉZ\å|\ÝPõ}ÿ\0¼*Q&©Ô ð!L5:1-™BÍ¦[+À\Ç\ãµ6V\Ó\Èf:lDŽ¿7lö®\Ì\ÔÀ?*õ\Î29¥ó5F\\ˆ\Ç_ZA©\Ó4­¹\Z|j\0\ìÆ•²\ÛoüK£Áwš\æLº þð!Móµ #ÿ\0x=\0\éÁ\ÓB`\éÑ±\É¿8¥g\Ós\'üK\Ð‚ ¶}\ë–2\ê`œ =\Ç\"I¨ƒ\ÌKŒwaEÀ\é´\É\ìNŸn÷\Zm³H\È2\Ê\Ü\Z´.4!I¶+Ÿ^k…\Ò´\ÉF0:n`8­Ú—h€ÿ\0ñ g_Î“\ÇüI­px\Î)©s¥™´[\\\ç\ïgµr\ÕIÀ‹\Ïññ¥_\íl\Å\ÇûÃŠ.+³®’óIÞ»t{Ly¨–\ëKß“¢\Ûu9d\×,\ßÚ€Œ\Å\ÐuÈ¦‘ªž‘Þ£@»;s¥| i ûŠ{M¥\î\Ïö-¡RA\È5\Çªg• ûœgõ§\í\"pT1\É\çuvu\çG{§H³\0	\ëS<ºc`\r\Ó\ë\Ï5\Æù:‰“& x\ç\æ§yZƒõc\Ü\äP;³°\ì‚üI\í§‘6³F²ïŸ–¹u\Ñ9}\ê”M~\î\Ç9¤gN\Óh\ã*4{Uÿ\0w¥G\rÆ&e—G³#8\n\å\Þ]Cª¡ÿ\0¾ª/3S\É>Q\"€»:õ¸\Ò\Z0Ff¸\0Ry\ÚK1Ý£Y\ã<q\Íq\áµsõ¦—\Ôs¤})\Î\Å$\Ò¯™¢\Ûcš…\îth\ä\0i»H>¹\à\â¹S.¢1ˆ\È=\ÍB\ï~Ç˜Û¯<P=C¸±–òQge¹òòJO5\ÓÁ§]\Ü\ÂeŠ\"\É\Ø\äý=k€ð-µá¸»º¸ÈŒ ‰A\îIþXzU­õª\Ãjg‰-K\'?…|¦:ªcd¦ú#\Ý\Â\ÊqÃ§R–%K;y.¬\årxlÃµrÚµÆ˜o\\iñ\\H˜R\ìNzt\ëZž(ñ„ºTvö\è&¿Vˆ×•R\Ç ±\ì§Zò‰.5)_Ì•Ù›q$rI\ë]¹f\rÆ«¬¶²Kõ9±¸‹\Ã\Ùõ¹\Ú½ «¤@T“\Æ\ã\Óó§½)eý“NzHx\é\ï\\QkòÀùGŽ\Ô\àu-\ÜD\çùW¼yw;	.ô½\ß.“1ÿ\0=\r\ÉgP\ï\n)…\Î\ÏoEü¨ó\Ü‹ùT]¿\nF\ê(6&ûCú/\åGžþ‹ùT#­)\ï@ý¡ÿ\0\Ùü¨ó\ä\ë‘ùT=\è\í@ý¡ýWò¥ó\ß\Õsô¨W½«P¾|ž£ò¥\É\ê?*ˆuP¦w\ìE\'\Ú$õ•D:\Ñ\é@‰\å=\Ç\åGŸ \î?*Œ\Ñ\ØP¿h“\Ô~T¿h“G\åPzÒŽ”7\Ú$õ•h÷•D:SOJ\0›Ï—û\Ãò£\íÿ\0x~UzCÖ€\'\Ëý\áùQö‰GqùT4zP\Þ|ƒ¸ü¨ûD¿\Þ\r!\ê>´`\\J{Êœ’\\Hx\Ç\åP¯Þ­_\ë@›±-µ¼ýH_Êµ`–\æm\Óÿ\0¯IOÊœz~V2l°Ú•\á}{\ì j7›±½®V«§\Ü?Zp\ïøÿ\0*Z\Z…\Øl1ˆtÿ\0\ë\Ó\×P¸#a\'·\Éÿ\0×ªM÷›\ê)\ËÕ¿\Z\0»ý¡u\Ç\Éÿ\0€šwÛ®xÁ‡=þ\\ÿ\0Z¬¿u¾´\çû\ëô\ì+–\Õ\Ø\Ç1·üS…\Ý\æ\Ñþ¯\é´T_ò\Ü}(\Åþð¢ÀJo.\Ëû±\Û\îP..\É\å£\ã\Ö:gü²_ÆüKõÎ‹\0±\É8\'2O9)\Óõ§‹²\ß(g\Ñ?úô\åÿ\0–\ßQý)\×?q>«ý(°›\Â\ß\ëðAKö«\Õ\É#\Õ(—ýk½ý)ÝŸ\è(°\\j]_–È‘H?\ÂPqMù\'\í\nyýØ©\ï­,Ÿ\Ñh°\\\í\Z‡y£9\í³ÿ\0¯Nó\ï\ÉÏ˜«\ß_ZXþ\ëS\Ïú¦ÿ\0wú\Ñ`¸‚\ê\ïi\æ>{\ì\éú\Òý²\å°‹Ž¿!ÿ\0\Zu\ÇY>•ÿ\0\\¿_\ë@\É\Ö\æ\ëùMï°Œ~´\ÓwpNB\Â3\Ï(Æ”ý\Êoaø:,+Ž7`qä¢ýi\Â\êl¬,}vŸñ¦·øÿ\0*S\Ò?\Çùš,;Š&¹\'\röqž€FxúóF\ëƒ\Þß\Ú?þ½9>\ëý?­)ÿ\0P\ßSý(°&ñH ÃŒñû¾?H$¸²!$\Ó21úÓŸýTAü…=ÿ\0\Õ\Çþ\í -Z\Ë,1«‹¸\âw\ê ÷À\àý?:’Y\çŸz5úH¸\ãqb^ÄŒtR\êbúŸ\ä(\ëYºPo™­KS’V¹%µ¹eMò\Øá±€¨Tƒ\èrzõü©²„VP±@\à’3Ç¨<SÞ“\éýEòóù\ÕØ‹‘8\Î& tÿ\0Ö£tYÿ\0z{üÿ\0ýjAÿ\0-~”\Öû\ëþ\è y¢\È\Ûd@\Ç÷¿û\Z)%ÿ\0Z\ÔPÿ\Ù');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `course` char(1) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'mike','sing,draw','A',8886.23,'è¡¨çŽ°è‰¯å¥½ï¼Œæ°”è´¨ç»ä½³ã€‚'),(2,'byke','dance','B',2366.00,'æœ‰æ½œè´¨ï¼Œæœ‰å¾ˆå¥½çš„æœªæ¥ã€‚'),(3,'andy','sing','C',8636.20,'è¯—ä½œçš„å¥½'),(4,'candy','sing','C',5632.20,'æ­ŒåŠ¨å¬'),(5,'tendy','draw','A',478.10,'ç”»ç”»ä¼ ç¥ž');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping` (
  `brand` varchar(20) NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT '0.00',
  `color` varchar(5) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `sex` enum('ç”·','å¥³') DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'mike',22,'ç”·','16675151386',86),(2,'byke',23,'ç”·',NULL,85),(4,'andy',20,'å¥³',NULL,96),(5,'booby',18,'ç”·',NULL,56),(6,'tendy',26,'ç”·',NULL,85),(7,'candy',27,'å¥³',NULL,50),(12,'lily',19,'å¥³','16675151386',67);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 20:39:52
