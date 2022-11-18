-- MySQL dump 10.13  Distrib 8.0.25, for macos11.3 (x86_64)
--
-- Host: 49.50.165.155    Database: team12
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.11-MariaDB-10.2.11+maria~xenial-log

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `name`) VALUES (20,'국가 정보 없음'),(2,'대한민국'),(14,'독일'),(12,'독일,중국,세르비아'),(4,'러시아'),(23,'멕시코'),(7,'미국'),(21,'미국,러시아'),(5,'벨로루시'),(8,'브라질,독일'),(1,'영국'),(9,'오스트레일리아'),(16,'이탈리아'),(3,'일본'),(22,'일본,영국'),(10,'조지아(그루지야)'),(15,'중국'),(18,'칠레'),(6,'캐나다'),(13,'쿠바'),(19,'폴란드'),(11,'프랑스,아르헨티나,네덜란드,칠레'),(17,'필리핀');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `director_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` (`id`, `name`) VALUES (97,'Hernando Name'),(81,'Jan Nickman'),(53,'Kazuhiko Yamaguchi'),(95,'Peter Phillips'),(98,'Richard Oleksiak'),(85,'rocky schenk'),(44,'Santiago Álvarez'),(84,'Trevor Evans'),(7,'감독 정보 없음'),(34,'고바야시 이치로'),(94,'구성원'),(69,'구소정'),(63,'그레고르 묄러'),(60,'김도영'),(31,'김우승'),(26,'김응천'),(10,'김창훈'),(17,'김현수'),(2,'김홍완'),(59,'나오키 이토'),(57,'나종배'),(72,'나카노 료타'),(93,'다이안 잭슨'),(20,'다카하시 켄타로'),(28,'데이비드 알렉소비치'),(64,'데이비드 체르카스키'),(25,'데자키 오사무'),(83,'디에고 캐개스친'),(41,'레날 카말로브'),(80,'루이지 카푸아노'),(35,'루크 샤나한'),(8,'류한준'),(90,'마리안나 야로프스카야'),(1,'마이클 파웰'),(61,'마크 폴리쉬'),(82,'마티 콜너'),(47,'모현신'),(36,'미쇼 안타제'),(49,'민주홍'),(52,'박근혜정권퇴진비상국민행동미디어팀'),(55,'박기복'),(91,'박마리솔'),(5,'박종수'),(51,'박현수'),(15,'방성준'),(96,'비탈리 무카메지아노브'),(27,'빅 앳킨슨'),(46,'빅히트 엔터테인먼트'),(45,'서지연'),(78,'소륜'),(43,'스즈무라 노부히로'),(4,'신민희'),(23,'아나톨리 보로디치'),(37,'아사하라 유조'),(16,'안정미'),(21,'알렉산더 고록호브'),(30,'어니스트 G. 사우어'),(33,'엘베시우 마링스 주니어'),(74,'오다 마나부'),(22,'요네바야시 히로마사'),(89,'위톨드 기에르츠'),(66,'이다혜'),(39,'이덕찬'),(12,'이동욱'),(40,'이반 마르코비치'),(13,'이상혁'),(19,'이승주'),(48,'이신희'),(75,'이영종'),(58,'이종벽'),(79,'이형표'),(9,'임봉호'),(87,'장일호'),(76,'저스틴 프라이스'),(18,'전성연'),(42,'전응주'),(68,'정다운'),(11,'정상문'),(92,'지웅배'),(14,'지창구'),(32,'진승현'),(70,'초양'),(29,'최거엽'),(88,'최나미'),(54,'최명섭'),(50,'최윤수'),(65,'츠키카게 쿠로우'),(73,'코바야시 유키'),(71,'키무라 히로유키'),(77,'타나다 유키'),(38,'파블로 트라페로'),(86,'펠라요 리라'),(67,'하시모토 코지로'),(24,'하야시 유이치로'),(6,'황미연'),(3,'황우양'),(56,'후카사쿠 킨지'),(62,'히로아키');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `distributor_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` (`id`, `name`) VALUES (13,'㈜진진엔터테인먼트필름'),(22,'(주)무당벌레필름'),(20,'(주)컨텐츠빌리지'),(30,'A-FILMS'),(15,'Along Shot Films'),(34,'Asmik ACE Entertainment'),(33,'BC'),(29,'Burbank Films Australlia'),(14,'Canabrava Fil,Muiraquitã Filmes'),(44,'Canadian Broadcasting Corporation (CBC),Dudley Ent'),(19,'CGV ScreenX,빅히트 엔터테인먼트'),(51,'CTB Film Company'),(6,'CUBINCUP Animation Studio'),(12,'Double Helix Films inc.,Private Screenings'),(43,'East West International Films'),(11,'Encyclopædia Britannica Films,Blake Animation,Star'),(42,'Euro International Film (EIA),Liber Film'),(49,'Frederick Warne   Co,TVC london,British Broadcasti'),(50,'Gimell Records'),(23,'Kadokawa Haruki Jimusho,Toei Company'),(46,'Liber Film'),(7,'MAPPA'),(48,'Mediamax International'),(17,'Nanslafu Films'),(35,'Nikkatsu'),(52,'Producciones Esme S.A.,Producciones Rio Bravo S.A.'),(16,'Shochiku'),(10,'Titlecraft,Pooled Film Services (PFS)'),(8,'TMS ENTERTAINMENT,LTD.'),(21,'Toei Tokyo'),(25,'TYO Productions'),(1,'Vanguard Films,London Film Productions'),(41,'극동흥업주식회사'),(31,'기린그림'),(3,'넥스트'),(38,'니혼뉴스'),(4,'다크코너스튜디오'),(9,'동성영화공사'),(28,'매그넛 필름'),(26,'바네로야 픽쳐스'),(2,'배급사 정보 없음'),(37,'부산국제영화제'),(5,'스튜디오 포녹'),(18,'신필림'),(24,'씨네호크마'),(27,'에스티에스엔터테인먼트'),(40,'유스인라이트픽쳐'),(45,'칸그레조 필름'),(36,'픽처 제로 엔터테인먼트'),(47,'한국예술영화주식회사'),(32,'한국예술종합학교 영상원 영화과'),(39,'후지TV');
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_film`
--

DROP TABLE IF EXISTS `distributor_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor_film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `distributor_id` bigint(20) NOT NULL,
  `film_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe53oecjmxj0hvrk84p5eig5vp` (`distributor_id`),
  KEY `FKavf3tlf78c9fsi80nfj43fv20` (`film_id`),
  CONSTRAINT `FKavf3tlf78c9fsi80nfj43fv20` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `FKe53oecjmxj0hvrk84p5eig5vp` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_film`
--

LOCK TABLES `distributor_film` WRITE;
/*!40000 ALTER TABLE `distributor_film` DISABLE KEYS */;
INSERT INTO `distributor_film` (`id`, `distributor_id`, `film_id`) VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,3,22),(23,4,23),(24,5,24),(25,6,25),(26,7,26),(27,8,27),(28,9,28),(29,10,29),(30,11,30),(31,2,31),(32,12,32),(33,2,33),(34,13,34),(35,14,35),(36,3,36),(37,3,37),(38,15,38),(39,2,39),(40,16,40),(41,2,41),(42,2,42),(43,17,43),(44,2,44),(45,18,45),(46,2,46),(47,2,47),(48,2,48),(49,2,49),(50,19,50),(51,2,51),(52,2,52),(53,2,53),(54,2,54),(55,20,55),(56,2,56),(57,21,57),(58,2,58),(59,2,59),(60,2,60),(61,2,61),(62,2,62),(63,22,63),(64,23,64),(65,2,65),(66,2,66),(67,24,67),(68,25,68),(69,2,69),(70,26,70),(71,27,71),(72,28,72),(73,29,73),(74,27,74),(75,2,75),(76,30,76),(77,31,77),(78,32,78),(79,33,79),(80,27,80),(81,34,81),(82,35,82),(83,35,83),(84,2,84),(85,36,85),(86,37,86),(87,38,87),(88,39,88),(89,40,89),(90,41,90),(91,42,91),(92,2,92),(93,2,93),(94,43,94),(95,44,95),(96,2,96),(97,45,97),(98,46,98),(99,47,99),(100,2,100),(101,48,101),(102,2,102),(103,48,103),(104,43,104),(105,44,105),(106,2,106),(107,45,107),(108,46,108),(109,47,109),(110,2,110),(111,48,111),(112,2,112),(113,48,113),(114,2,114),(115,2,115),(116,2,116),(117,2,117),(118,49,118),(119,2,119),(120,50,120),(121,51,121),(122,52,122),(123,2,123);
/*!40000 ALTER TABLE `distributor_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `director_id` bigint(20) NOT NULL,
  `rating_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkn6k7l7y3jg7bdu1bv0oskgd5` (`country_id`),
  KEY `FK4pqpakiyka8wwbiicmc0rgtwi` (`director_id`),
  KEY `FKm6cyospmf7r278vmltxg8i2s2` (`rating_id`),
  KEY `FK6xxf6ifuvw33h070iqlla38v4` (`type_id`),
  CONSTRAINT `FK4pqpakiyka8wwbiicmc0rgtwi` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  CONSTRAINT `FK6xxf6ifuvw33h070iqlla38v4` FOREIGN KEY (`type_id`) REFERENCES `film_type` (`id`),
  CONSTRAINT `FKkn6k7l7y3jg7bdu1bv0oskgd5` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKm6cyospmf7r278vmltxg8i2s2` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`id`, `year`, `country_id`, `director_id`, `rating_id`, `type_id`, `title`) VALUES (1,1950,1,1,1,1,' 여호'),(2,2011,2,2,1,1,' 잡담'),(3,2004,2,3,1,1,' 게임'),(4,2012,2,4,1,1,' 덕구 TV'),(5,2012,2,5,1,1,' 더 케이스'),(6,2005,2,6,1,1,' 이쁜 치마'),(7,2013,2,7,1,1,' 시작은 잘못됐지만'),(8,2017,2,8,1,1,' 무방향버스'),(9,2017,2,9,1,1,' 무상'),(10,2017,2,7,1,1,' 모녀'),(11,2012,2,10,1,1,' 댄스 위드 마이 마더'),(12,2012,2,11,1,2,' 닭의 마을'),(13,2013,2,12,1,3,' 안녕, 루키'),(14,2017,2,13,1,1,' 목욕탕 가는 길'),(15,2007,2,14,2,3,' 왓 해펀드 투 샘?'),(16,2017,2,15,1,1,' 목련에 대하여'),(17,2004,2,7,1,1,' 디너'),(18,2012,2,16,1,1,' 댄스왕'),(19,2013,2,17,1,2,' 아버지씨'),(20,2013,2,18,1,2,' 아저씨'),(21,2010,2,19,1,1,' 야간수업'),(22,2018,3,20,3,1,' 샤워실의 딸친구'),(23,2017,4,21,2,1,' 우주유영사'),(24,2018,3,22,4,3,' 작은 영웅: 게와 달걀과 투명인간'),(25,2015,5,23,2,3,' 스카이와 친구들: 로보시티의 비밀'),(26,2019,3,24,3,4,' 카케구루이 엑스엑스'),(27,1982,3,25,1,4,' 우주해적 코브라'),(28,1963,2,26,5,1,' 밤에 걸려온 전화'),(29,1979,6,27,6,3,' 투키키'),(30,1991,7,28,6,4,' 브리태니커 세계의 동화'),(31,1990,2,29,6,1,' 꾸러기 특공대'),(32,1990,7,30,1,1,' 침대의 대소동'),(33,2004,2,31,3,1,' 숫처녀만 50번째'),(34,2019,2,32,4,1,' 전주에서 길을 묻다'),(35,2019,8,33,1,1,' 안식처'),(36,2018,3,34,3,1,' 우윳빛깔 옆집유부녀'),(37,2018,3,34,3,1,' 어서와 옆집 유부녀'),(38,2017,9,35,1,1,' 래빗'),(39,2019,10,36,1,2,' 수확'),(40,2016,3,37,4,1,' 나의 한국어 선생님'),(41,2002,11,38,1,1,' 비밀 경찰'),(42,2019,2,39,2,1,' 레오'),(43,2019,12,40,1,1,' 내일부터 나는'),(44,2018,4,41,1,1,' 전화 당번'),(45,1962,2,42,5,1,' 불러도 대답없는 이름이여'),(46,2002,2,7,1,5,' 제10회 춘사 나운규 영화 예술제'),(47,2018,3,43,2,1,' 극장판 가면라이더 이그제이드 외전: 패러독스 위드 뽀삐'),(48,1968,13,44,1,2,' 하노이의 13번째 화요일'),(49,2012,2,45,1,2,' 네 잘못이 아닌데...'),(50,2018,2,46,2,6,' 러브 유어셀프 인 서울'),(51,2017,2,47,2,1,' 국광교회'),(52,2018,2,48,1,1,' 관객, 직원, 시네마테크'),(53,2012,2,49,1,1,' 다이빙'),(54,2012,2,50,1,1,' 평행선'),(55,2019,2,51,1,1,' 원펀치'),(56,2017,2,52,1,2,' 광장'),(57,1974,3,53,1,1,' 여필살권'),(58,2004,2,7,1,5,' 제13회 도선 사진 문화상 시상식 및 부천사진인 송년회'),(59,2003,2,7,1,5,' 노무현 대통령 취임식'),(60,2003,2,7,1,5,' 한미 동맹과 평화번영 정책 세미나'),(61,2013,2,54,1,2,' 최후의 시장, 황학동'),(62,2003,2,7,1,5,' 제4회 전주국제영화제'),(63,2018,2,55,1,1,' 임을 위한 행진곡'),(64,1983,3,56,1,1,' 사토미 팔견전'),(65,2013,2,57,1,2,' 춤'),(66,2004,2,7,1,5,' 2004 한국 경제의 전망 세미나'),(67,1993,2,58,6,2,' 아롱이 친구들의 동물동화'),(68,2019,3,59,2,2,' 나는 논이다 - 제106화'),(69,2019,2,60,2,1,' 낙타들'),(70,2019,7,61,1,1,' 나노 테러리즘: CIA 비밀요원'),(71,2018,3,62,3,1,' 알몸으로 자는 유부녀'),(72,2019,14,63,2,2,' 헬로우 평양'),(73,1988,9,64,6,1,' 피터팬'),(74,2018,3,65,3,1,' 부장님과 뜨겁게 한판'),(75,2014,2,66,4,1,' 마트로 간 소년'),(76,2019,3,67,2,1,' 눈의 꽃'),(77,2019,2,68,2,2,' 이타미 준의 바다'),(78,2017,2,69,1,1,' 열쇠'),(79,2017,15,70,1,1,' 이대요정: 미남과 요괴'),(80,2018,3,71,3,1,' 온천장의 음란한 서비스'),(81,2019,3,72,2,1,' 조금씩, 천천히 안녕'),(82,2017,3,73,3,1,' 전원사형'),(83,2018,3,74,1,1,' 사이몬과 타카시'),(84,2002,2,75,1,2,' 우린 하나 탈북 청소년 광혁이'),(85,2019,7,76,4,1,' 미이라 리턴즈'),(86,2022,2,7,1,5,' [부산국제영화제 인터뷰] 진봉진'),(87,2022,3,7,1,7,' 執務中のサ(?)最高司令官'),(88,2019,3,77,3,8,' 남편의 그것이 들어가지 않아 : 파트 1'),(89,2018,15,78,4,1,' 어쩌다 룸메이트'),(90,1963,2,79,5,1,' 이주사'),(91,1962,16,80,1,1,' 타이거 세븐 씨'),(92,1987,7,81,1,2,' 데저트 비젼'),(93,1992,7,82,1,6,' 셰어: 엑스트라바간자 - 라이브 엣 더 미라지'),(94,1982,17,83,1,1,' 죽음의 결사대'),(95,1978,6,84,1,9,' 크리스마스 캐롤'),(96,1993,7,85,1,6,' 아더 보이시스, 아더 룸스'),(97,2017,18,86,3,1,' 터치 오브 헤븐'),(98,1963,16,80,1,1,' 산드리고'),(99,1963,2,87,5,1,' 현해탄의 구름다리'),(100,1998,2,88,1,3,' 어디만큼 왔니'),(101,2022,6,7,1,2,' 더 그라우스: 언 익셉셔널 버드'),(102,2022,19,89,1,3,' 대왕의 동굴'),(103,1994,6,7,1,8,' Les grands procès'),(104,1982,17,83,1,1,' 죽음의 결사대'),(105,1978,6,84,1,9,' 크리스마스 캐롤'),(106,1993,7,85,1,6,' 아더 보이시스, 아더 룸스'),(107,2017,18,86,3,1,' 터치 오브 헤븐'),(108,1963,16,80,1,1,' 산드리고'),(109,1963,2,87,5,1,' 현해탄의 구름다리'),(110,1998,2,88,1,3,' 어디만큼 왔니'),(111,2022,6,7,1,2,' 더 그라우스: 언 익셉셔널 버드'),(112,2022,19,89,1,3,' 대왕의 동굴'),(113,1994,6,7,1,8,' Les grands procès'),(114,1991,20,7,1,6,' 폴 모리아: 골드 콘서트'),(115,2018,21,90,4,2,' 굴라크 수용소의 여인들'),(116,2019,2,91,1,2,' 믹스를 입양하세요'),(117,2019,2,92,1,2,' 방생하지 말아주세요'),(118,1992,22,93,1,4,' 피터 래빗과 친구들'),(119,2019,2,94,1,2,' 엄마와 옷'),(120,1994,7,95,1,6,' 더 탈리스 스콜라스: 라이브 인 롬'),(121,2018,4,96,2,3,' 로빈슨의 언더워터 어드벤처'),(122,1989,23,97,1,1,' 호랑이 발톱'),(123,1987,6,98,1,1,' 나이트 트랙커');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_type`
--

DROP TABLE IF EXISTS `film_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `film_type_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_type`
--

LOCK TABLES `film_type` WRITE;
/*!40000 ALTER TABLE `film_type` DISABLE KEYS */;
INSERT INTO `film_type` (`id`, `name`) VALUES (6,'(실황)공연물'),(8,'TV-시리즈'),(4,'TV-애니메이션'),(9,'TV-영화'),(1,'극영화'),(5,'기록물'),(2,'다큐멘터리'),(3,'애니메이션'),(10,'유형 정보 없음'),(7,'정보물');
/*!40000 ALTER TABLE `film_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`id`, `name`) VALUES (10,'SF,어드벤처'),(6,'SF,판타지'),(48,'가족'),(41,'가족,드라마'),(7,'가족,인물'),(17,'가족,판타지,액션'),(51,'공포'),(3,'공포,스릴러'),(1,'드라마'),(2,'드라마,가족'),(28,'드라마,가족,범죄'),(15,'드라마,미스터리'),(42,'드라마,범죄'),(33,'드라마,액션,어드벤처,판타지'),(46,'드라마,어드벤처,역사'),(23,'드라마,전쟁'),(24,'멜로/로맨스'),(39,'멜로/로맨스,드라마'),(22,'멜로드라마,코메디,드라마'),(34,'문화'),(16,'뮤지컬'),(27,'뮤직'),(47,'사회,인권'),(13,'스릴러'),(36,'스릴러,SF,액션'),(20,'스릴러,미스터리'),(5,'아동'),(35,'아동,교육'),(14,'액션'),(25,'액션,SF'),(18,'액션,가족'),(43,'액션,공포'),(31,'액션,범죄'),(50,'액션,어드벤처,범죄'),(44,'액션,전쟁'),(12,'어드벤처'),(38,'어드벤처,가족,판타지'),(9,'에로'),(8,'인물'),(30,'인물,역사,사회'),(26,'자연ㆍ환경'),(21,'자연ㆍ환경,과학,역사'),(11,'장르 정보 없음'),(32,'지역'),(37,'지역,사회'),(4,'코메디'),(19,'코메디,멜로/로맨스'),(40,'코메디,멜로드라마,판타지'),(45,'코메디,판타지'),(49,'판타지,어드벤처'),(29,'하이틴(고교),액션');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_film`
--

DROP TABLE IF EXISTS `genre_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) NOT NULL,
  `genre_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdy326gtx6qt4mrjjvr1w5pdms` (`film_id`),
  KEY `FK9p3dhf8wgeetdt06cavuc2fot` (`genre_id`),
  CONSTRAINT `FK9p3dhf8wgeetdt06cavuc2fot` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `FKdy326gtx6qt4mrjjvr1w5pdms` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_film`
--

LOCK TABLES `genre_film` WRITE;
/*!40000 ALTER TABLE `genre_film` DISABLE KEYS */;
INSERT INTO `genre_film` (`id`, `film_id`, `genre_id`) VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,1),(11,11,4),(12,12,1),(13,13,5),(14,14,1),(15,15,6),(16,16,1),(17,17,1),(18,18,1),(19,19,7),(20,20,8),(21,21,1),(22,22,9),(23,23,10),(24,24,11),(25,25,12),(26,26,13),(27,27,14),(28,28,15),(29,29,16),(30,30,17),(31,31,18),(32,32,19),(33,33,9),(34,34,1),(35,35,1),(36,36,9),(37,37,9),(38,38,20),(39,39,21),(40,40,22),(41,41,1),(42,42,2),(43,43,1),(44,44,23),(45,45,24),(46,46,11),(47,47,25),(48,48,26),(49,49,1),(50,50,27),(51,51,28),(52,52,11),(53,53,11),(54,54,11),(55,55,29),(56,56,30),(57,57,31),(58,58,11),(59,59,11),(60,60,11),(61,61,32),(62,62,11),(63,63,1),(64,64,33),(65,65,34),(66,66,11),(67,67,35),(68,68,8),(69,69,1),(70,70,36),(71,71,9),(72,72,37),(73,73,38),(74,74,9),(75,75,1),(76,76,39),(77,77,8),(78,78,1),(79,79,40),(80,80,9),(81,81,41),(82,82,42),(83,83,4),(84,84,8),(85,85,43),(86,86,8),(87,87,11),(88,88,24),(89,89,24),(90,90,24),(91,91,12),(92,92,27),(93,93,27),(94,94,44),(95,95,45),(96,96,27),(97,97,1),(98,98,46),(99,99,39),(100,100,11),(101,101,8),(102,102,11),(103,103,11),(104,104,44),(105,105,45),(106,106,27),(107,107,1),(108,108,46),(109,109,39),(110,110,11),(111,111,8),(112,112,11),(113,113,11),(114,114,27),(115,115,47),(116,116,11),(117,117,26),(118,118,48),(119,119,8),(120,120,27),(121,121,49),(122,122,50),(123,123,51);
/*!40000 ALTER TABLE `genre_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rating_rate_uindex` (`rate`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`id`, `rate`) VALUES (4,'12세관람가'),(1,'15세관람가'),(3,'18세관람가(청소년관람불가)'),(5,'미성년자관람불가'),(6,'연소자관람가'),(2,'전체관람가');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `film_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKloj6cgl63e2nd5ykk8gvlu15b` (`film_id`),
  CONSTRAINT `FKloj6cgl63e2nd5ykk8gvlu15b` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`id`, `review`, `film_id`) VALUES (1,'정말 감동적인 영화였습니다',1),(2,' 영화 보는내내 울다가 웃다가 울다가울다가 웃다가 울다가 했어요구래도 마지막에 인생은 참 아름답구나라를 느끼게 해준 영화',1),(3,'진짜 2022년 명작이네요ㅠㅠ',2),(4,'울고 웃게만든 정말 좋았던 영화',2),(5,'잘 보고 왔습니다...',3),(6,'사람들이 좀 더 알아줬으면 하는 내 인생영화.',3),(7,'노래가 너무 감동이었습니다',18),(8,'영화 기대했던 것 보다 훨씬 좋았습니다.',4),(9,'보는내내 행복한 영화였습니다~',4),(10,'재밌게 잘 봤습니다~~ 가족에 대해 다시 생각해볼수 있었어요~',5),(11,'오랜만에 눈물콧물 쏙쏙 뺀 영화',6),(12,'그럭저럭 봤습니다 ㅎㅎ',7),(13,'요즘 같을 때 딱맞는 주제',8);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_star`
--

DROP TABLE IF EXISTS `review_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) NOT NULL,
  `star_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKahsav8v6e0odrtn79uf8xbbv8` (`review_id`),
  KEY `FK93db4cua5rk9f4igu1nhym6kv` (`star_id`),
  CONSTRAINT `FK93db4cua5rk9f4igu1nhym6kv` FOREIGN KEY (`star_id`) REFERENCES `star` (`id`),
  CONSTRAINT `FKahsav8v6e0odrtn79uf8xbbv8` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_star`
--

LOCK TABLES `review_star` WRITE;
/*!40000 ALTER TABLE `review_star` DISABLE KEYS */;
INSERT INTO `review_star` (`id`, `review_id`, `star_id`) VALUES (1,1,7),(2,2,8),(3,3,9),(4,4,7),(5,5,8),(6,6,9),(7,7,7),(8,8,8),(9,9,9),(10,10,7),(11,11,8),(12,12,6),(13,13,8);
/*!40000 ALTER TABLE `review_star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `point` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `star_point_uindex` (`point`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star`
--

LOCK TABLES `star` WRITE;
/*!40000 ALTER TABLE `star` DISABLE KEYS */;
INSERT INTO `star` (`id`, `point`) VALUES (1,1),(2,1.5),(3,2),(4,2.5),(5,3),(6,3.5),(7,4),(8,4.5),(9,5);
/*!40000 ALTER TABLE `star` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 19:28:33
