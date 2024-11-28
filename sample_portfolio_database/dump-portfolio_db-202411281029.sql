-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add captcha store',7,'add_captchastore'),(26,'Can change captcha store',7,'change_captchastore'),(27,'Can delete captcha store',7,'delete_captchastore'),(28,'Can view captcha store',7,'view_captchastore'),(29,'Can add blog post',8,'add_blogpost'),(30,'Can change blog post',8,'change_blogpost'),(31,'Can delete blog post',8,'delete_blogpost'),(32,'Can view blog post',8,'view_blogpost'),(33,'Can add contact',9,'add_contact'),(34,'Can change contact',9,'change_contact'),(35,'Can delete contact',9,'delete_contact'),(36,'Can view contact',9,'view_contact'),(37,'Can add homepage',10,'add_homepage'),(38,'Can change homepage',10,'change_homepage'),(39,'Can delete homepage',10,'delete_homepage'),(40,'Can view homepage',10,'view_homepage'),(41,'Can add project',11,'add_project'),(42,'Can change project',11,'change_project'),(43,'Can delete project',11,'delete_project'),(44,'Can view project',11,'view_project'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$tIpBaqUgoOLXJBYr3WEEUy$WKs0xRyykcNxBfZWx3riL6JG7z42szx/sFnAvJHebIM=','2024-11-27 20:05:10.743908',1,'admin','','','matthew.mangion@gmail.com',1,1,'2024-11-27 16:44:48.858447');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (1,'GLTW','gltw','cc8e6a20e71ce5ffaa6e0891ef3da6edacef1341','2024-11-27 16:46:25.945575'),(2,'HBGX','hbgx','e2a00da32a2adc59be27f275800e7c0b70632cfb','2024-11-27 17:13:14.564332'),(3,'ZVPD','zvpd','6a036b4d669011f66df22342d5be8cfe28cb2ea8','2024-11-27 17:55:55.432411'),(4,'YXWG','yxwg','f715b84482f31ae29c3cfdbfd178db17bd81f73f','2024-11-27 17:56:17.115854'),(5,'BARP','barp','376f9b32e11fb7276331ec38aad268de09f5bd6b','2024-11-27 17:56:42.356106'),(6,'KING','king','6943220c2732ba6ae7f1bd10edded3a97cb53120','2024-11-27 17:58:38.130484'),(7,'DQIF','dqif','39b694cd100508562387de624d97492a2fc7982c','2024-11-27 18:12:30.165100'),(8,'LGER','lger','1f2c201a81599af7e258b8ab4e82745cf8e46e13','2024-11-27 18:12:56.107365'),(9,'WIJO','wijo','24da5073d25c50674676bcfd426f97df8c474d67','2024-11-27 18:18:08.113061'),(10,'BHPP','bhpp','4eaa58880dc9ad552661d06960efc6db67f31521','2024-11-27 18:19:48.889636'),(11,'TXII','txii','a4be78aaa1131e6910ecd58e1b6641b97d26485d','2024-11-27 18:26:12.441321'),(12,'NHCV','nhcv','bc6bea05de36a774929d41b9cae08a5b227793a7','2024-11-27 18:26:16.856480'),(13,'HRJD','hrjd','8ef13a20c4e854367fe8d94013eeb7f5a3ad3335','2024-11-27 19:36:58.062943'),(14,'FIEJ','fiej','eee239409a576c971fe1a25cec12ebabe6db114e','2024-11-27 19:37:08.337625'),(15,'YKBB','ykbb','6ea92134483089897351b10cdf4d96e390d9fd14','2024-11-27 21:05:05.446260'),(16,'JAHQ','jahq','6aee648ce1f2565e285531248b45e78a64224951','2024-11-27 21:05:11.744654'),(17,'VCDS','vcds','f7349583b7b1290729e0184df1c579948d6c10b4','2024-11-27 21:08:48.964628'),(18,'PYRK','pyrk','82d8da2e9efc42e074ace28b29ea2effde22a90a','2024-11-27 21:12:00.192770'),(19,'QSPC','qspc','5cb6ee6b28c99b34e1324d8fd8a11dc5fb9ccd04','2024-11-27 21:23:12.714299'),(20,'XIWN','xiwn','90c6b9de4efe441a1c57068a82abc99586adf385','2024-11-27 21:23:34.730100'),(21,'KCFP','kcfp','c14f77fc07c169035766e27d6ce08db88c043856','2024-11-27 21:23:37.214635'),(22,'AAZD','aazd','2189a8715228e1da47236e76e70379582bec35ed','2024-11-27 21:24:15.348455'),(23,'CUHJ','cuhj','b9ed345da632cbcbc86d30aa14ebfe501c2fa0d5','2024-11-27 21:24:16.572408'),(24,'KMLH','kmlh','e6c6e71c212f5bd5bc8054ea4eef1c3c136c30cf','2024-11-27 21:24:17.264528'),(25,'UXNB','uxnb','e63c3d0407a8d0f4403f6334c7886aaaefe16b97','2024-11-27 21:25:53.016313'),(26,'KNHU','knhu','98fc838e3ae478549032460bd962d8ee3c979609','2024-11-27 21:26:04.446453'),(27,'MVIL','mvil','e8536bb554297e0d03382f75307e23f21cc095e5','2024-11-27 21:26:12.751329'),(28,'LVUG','lvug','a5feb0c4e52b75fbfbae7c3df1c830611b73b433','2024-11-27 21:26:21.522726'),(29,'BQTE','bqte','a31db7c6b8f28f325be624ca3aa1505700d35294','2024-11-27 21:26:38.068140'),(30,'ZVQF','zvqf','ab33385a1c1fcae36a45fff8af1802e0bf3d2c76','2024-11-27 21:26:44.924420'),(31,'NSCI','nsci','931cc1c5f2c60d727f98b2f161ca70ec67e57d73','2024-11-27 21:26:46.352531'),(32,'ERCN','ercn','667abe7ccdadc22c9af9e578bcc328a67c39b21d','2024-11-27 21:26:52.442108'),(33,'FJJE','fjje','73f2ac6c4457baf539027ae1fa1c0cd17f4123e1','2024-11-27 21:26:57.767509'),(34,'WRXJ','wrxj','d375376b08a6e2d0f3cdc2db7d7f1adfbbec4f39','2024-11-27 21:27:02.401051'),(35,'FUGE','fuge','97963031ecbeecbbdcda0ed4f12e1680726465be','2024-11-27 21:27:13.415125'),(36,'OQVQ','oqvq','6687f24deef89ccfaee71b5b940504860703f358','2024-11-27 21:27:20.339179'),(37,'DWJB','dwjb','25d3948f70da5bcd7fba00f7cb4bc906946c03b2','2024-11-27 21:27:21.448770'),(38,'BIOC','bioc','da758a7403a24bc6200cecb2c7e4a32b60ad0ad0','2024-11-27 21:27:26.451747'),(39,'SOOF','soof','2e1f867e9666b8ee4a08ed16a58a10919aa9a6ba','2024-11-27 21:27:27.677667'),(40,'KGCK','kgck','c1d5a34a2ad26770bfc28f981c841044c49015c2','2024-11-27 21:27:28.259650'),(41,'DHLI','dhli','58bde321518aa1784a7efb7e515d0fecb956a312','2024-11-27 21:27:28.849480'),(42,'BNYJ','bnyj','64a66d71ec36ad47d7dc9a402112230bfbdc8976','2024-11-27 21:27:29.411745'),(43,'MLVN','mlvn','f30434c54bf86fd22ecf7d2880ce3488abdb7c84','2024-11-27 21:27:29.993464'),(44,'RTAF','rtaf','8ba0df0ef1bd7d585cf4c6ac005a890a805c96f1','2024-11-27 21:27:30.550371'),(45,'UUIP','uuip','e4b360a5575b285d81c53cb3e36d3e7be9e94ac4','2024-11-27 21:28:13.003413'),(46,'QFFG','qffg','86ca81e892764f7b41db54577f243fad1d274c0d','2024-11-27 21:28:14.561346'),(47,'UNPM','unpm','4323e17f4f1f1abf4834c1886f94124cf5ba1987','2024-11-27 21:28:23.472096'),(48,'RSUB','rsub','cfeb6a47b249c201adeee13539506215fa5cc5b5','2024-11-27 21:32:37.790219'),(49,'ZSQM','zsqm','17ef2fed3cd6166a7acf7514785ead4ff8c715a8','2024-11-27 21:32:38.583408'),(50,'GPNW','gpnw','a7a6089a45f8fa3eefde9d1509150089b0290cf3','2024-11-27 21:32:39.340941'),(51,'ARLS','arls','1ab53db8475137f77f21c8d337545de42e09d83e','2024-11-27 21:32:42.948051'),(52,'KKAH','kkah','ef9da6c3d14325b5677dedc645c4371bbebbf733','2024-11-27 21:32:52.136900'),(53,'DVDS','dvds','ceeec1a5dc020a237ac2867e8ade8146d234b508','2024-11-27 21:32:59.536906'),(54,'HASZ','hasz','c78bbe7ef71555bba948e7c6ade66ecc8ba71581','2024-11-27 21:33:20.745987'),(55,'TVIJ','tvij','e4d065cf1eddb5626f8789324f957754fa243de9','2024-11-27 21:33:47.117441'),(56,'DEPW','depw','bd8edcf8fd8441289d98ef5112ccad12fe9f1b70','2024-11-27 21:33:48.284516'),(57,'EWUO','ewuo','f1f3feae75b23d120705579fbf206be667688236','2024-11-27 21:33:49.232741'),(58,'ETHX','ethx','942f465b6b59e6be8359fbe8858f0bf33d88d002','2024-11-27 21:33:51.890916'),(59,'ZHVH','zhvh','516a62cdeec96bc0e5f1789fb8fcbf55fe5c8f15','2024-11-27 21:34:13.266437'),(60,'JPKG','jpkg','c4521469bb3f0a56dc3b0d6da8537522dceb805f','2024-11-27 21:34:15.598721'),(61,'WSPU','wspu','d229180903fde13cee21c9453f5f09e4e7b14665','2024-11-27 21:34:29.206121'),(62,'STIA','stia','b83457fe9e4b7c5ae10e63229d425450ae619d3b','2024-11-27 21:39:20.721361'),(63,'BLXJ','blxj','41583fb447eaf8c5957ac3ff7d39c5837e203dc1','2024-11-27 21:39:30.265979'),(64,'VLUT','vlut','d41078dc6d6a873b4a48b6d9740cdd66a5a1f5f8','2024-11-27 21:39:54.523270'),(65,'UWMS','uwms','3982197a85813e8549099794a44d87d9525ba898','2024-11-27 21:40:07.885905'),(66,'VSFY','vsfy','1ba72ebb5636fe9e186f4f1774b377248da9dc53','2024-11-27 21:40:35.555775'),(67,'VQQT','vqqt','0d30b7f6c54d3c0e19716f9e4fe986a5432534b8','2024-11-27 21:40:45.081424'),(68,'GAOP','gaop','9144ebba92bbe271aad8306cba9479e419864634','2024-11-27 21:41:07.742316'),(69,'CLPJ','clpj','e57241a6f09e3671bffd08f5265022565df076c0','2024-11-27 21:43:39.160873'),(70,'WZUN','wzun','47858775d343be4c9ac9b67efc1c4b6e7b3268a1','2024-11-27 21:44:04.083855'),(71,'QLHK','qlhk','454436a1614c616a26177997b1de4eae43915840','2024-11-27 21:44:04.844654'),(72,'XRTL','xrtl','76ffd84cd609bf1f01babc6354c79ed1e53db1c9','2024-11-27 21:44:05.091113'),(73,'SZMP','szmp','1a8556b350e07376363a534d0d104e6dfe818c60','2024-11-27 21:44:05.291217'),(74,'WJTC','wjtc','278991c7d4f414b4ba60b210a934ee4d572c42c6','2024-11-27 21:44:05.474721'),(75,'NDWL','ndwl','69471ca163664f21d53ace7c515c2cd3f389e0fa','2024-11-27 21:44:06.859580'),(76,'ONUR','onur','ccde93fa5d3eac50cefaa40da473a58856025e24','2024-11-27 21:44:24.916945'),(77,'IQTM','iqtm','426f71a70d828dbd9923bb9dea9c905971ba4ef4','2024-11-27 21:44:59.233028'),(78,'BMGL','bmgl','2ab0131ab2d79ed768cda05e5f13f09568d4dbd6','2024-11-27 21:45:19.895574'),(79,'GIYJ','giyj','fee05e0ea3f0953192ffe5cd12ba5e02f4c07d7f','2024-11-27 21:46:41.450030'),(80,'WFVR','wfvr','440804dec77af1548d32b17edf82859eb4dbdd49','2024-11-27 21:46:42.438890'),(81,'AIDV','aidv','724b6084ffd966d2c654e580d8f7ca385e727c7c','2024-11-27 21:46:55.959964'),(82,'BAKB','bakb','a7f74907fd0e66fc4dbfef7ded438ce329b77be6','2024-11-27 21:47:02.371528'),(83,'FVCD','fvcd','f08f6218ffcb277ab277612765e02b57bd64adbe','2024-11-27 21:47:02.923426'),(84,'QFDH','qfdh','efa033e4fac3ba7662f30e540dd5ac16db9bd0ea','2024-11-27 21:47:03.122054'),(85,'MNXR','mnxr','49302aa374f61f2d6cb6d76fd99d911f9cbb03fc','2024-11-27 21:47:03.295967'),(86,'ZSZK','zszk','a655978035ab5785c28c466afdbe879ef653b296','2024-11-27 21:47:23.413287'),(87,'SSTU','sstu','365a524059f64aa84bd2330e0e39dc3145e0f545','2024-11-27 21:48:22.029272'),(88,'NMAI','nmai','e1877841a9aea88a0a6aee1a21c7b285b62b670c','2024-11-27 21:48:34.835357'),(89,'UXLB','uxlb','45d71bdf771fb9a6be7d8aac261151b6e4ea973e','2024-11-27 21:51:46.130855'),(90,'JJNI','jjni','a49c8527f0a89e91360cd0f0a80e45b2fc1ea8d5','2024-11-27 21:51:47.047487'),(91,'TWJO','twjo','23acb12d3b136fd9598bab0e7ed36626552a3c16','2024-11-27 21:51:47.514761'),(92,'SPON','spon','796632e6a8f0d42312044b56f0b1e66794af7958','2024-11-27 21:51:48.263347'),(93,'MJJV','mjjv','49e3032575bdf7a5d32e4703c07e2b2040d9b58f','2024-11-27 21:51:53.541085'),(94,'EVHG','evhg','11dfb23c63d51ed82b281667473f9d8518e3e31c','2024-11-27 21:51:54.310291'),(95,'QKIY','qkiy','e6e32948a326fb921e5788bd4073431a5201a0d1','2024-11-27 21:52:30.738864'),(96,'DOPE','dope','2783fceabcff88536610658045e5441136954b2a','2024-11-27 21:54:23.935515'),(97,'RFJL','rfjl','d83050c65088da02370643ece1fc6f6a69d34cbc','2024-11-27 21:54:25.617429'),(98,'PGJE','pgje','d962dc92a5666ed227505b3dad86453930828574','2024-11-27 21:54:26.299330'),(99,'LMXS','lmxs','5850c3e027fb84f033903734f2610544218c3b04','2024-11-27 21:54:35.716612'),(100,'OHNE','ohne','b141955f8375a74029100c5c373c2e336fc566f6','2024-11-27 21:55:04.854675'),(101,'XBCZ','xbcz','ed158f3a261839ffe1c3aa14b1165a5030fda25c','2024-11-27 21:55:09.518021'),(102,'ZXIF','zxif','2fdd40366f4f60afd00eeda278e534d1b930e288','2024-11-27 21:55:27.709184'),(103,'FVSM','fvsm','6045168b89cecaedd1685b9d2aeea605d2061e3b','2024-11-27 22:16:46.554397'),(104,'FRKE','frke','4687947394a303580c7ae3521b5b119802871764','2024-11-27 22:18:47.537594'),(105,'QHUE','qhue','01d75e596e7dfd72c8a8958beb9800da5b548eef','2024-11-27 22:22:24.339097'),(106,'FZNT','fznt','1e4a9dad599eff7b72e2f5fb877e740b4e0f6095','2024-11-27 22:36:16.678257'),(107,'QEFQ','qefq','880c732df1a27404c72661e2f2f8e53f9871b799','2024-11-27 22:45:06.749310'),(108,'IDKD','idkd','a516ee7151fcbe22805d497bb001ae6fa0761fc8','2024-11-27 23:00:10.852871'),(109,'ERNX','ernx','126a4cb2c07660c3226ad8eca1bb5f3ba5f0bf8b','2024-11-27 23:13:27.640070'),(110,'JAKJ','jakj','cb8505032f882e630c09cdd5ce0febfe0abdef1f','2024-11-27 23:23:16.598552'),(111,'FVDJ','fvdj','d92774db6797cd81e8a10137573efd708bd60b77','2024-11-27 23:25:04.316795'),(112,'EIBF','eibf','c3ed45ad90baf7be0e63c89dde046676ca99e924','2024-11-27 23:25:19.423559'),(113,'BFEL','bfel','506a0d0548078e26323d6f054714b967e5c5e972','2024-11-27 23:27:51.861285'),(114,'YQTH','yqth','9c8a851771ea43b1f26f5b535a34e09e4434c78e','2024-11-27 23:27:53.135296'),(115,'EHBP','ehbp','a9436a4d7ee3b5afd5a17448cd733bf77649fe49','2024-11-27 23:27:53.711272'),(116,'HTII','htii','627b3b2afb4ee04895a10e1fc052a7c5e828d7ad','2024-11-27 23:27:53.919802'),(117,'EUOZ','euoz','41276e6dcf26031b10a380594a8889d29cdbf035','2024-11-27 23:27:54.113336'),(118,'BOOJ','booj','5bfd0a5a5dc6d6aa16bd6d9015938523181f9210','2024-11-27 23:27:54.275430'),(119,'VWLV','vwlv','a578eec7bce3e1cc435cc3833169ba99596744f9','2024-11-27 23:27:55.058143'),(120,'FYTG','fytg','bbfca27e9cf28ca244f0c1403e86d0aa199688a1','2024-11-27 23:27:55.293093'),(121,'WYKQ','wykq','0172fe9f8b22fe3fa72a1417b4b131bb8128692b','2024-11-27 23:27:55.559064'),(122,'SQHV','sqhv','1db75ab620d3ce5d9eedde2bdcf6492518050411','2024-11-27 23:27:56.319082'),(123,'UBCC','ubcc','91a7b97a8bfaebd72c5d6076ab82780b195e0fbe','2024-11-27 23:27:56.556515'),(124,'TVBV','tvbv','6c66b91e861316dd68e8395c14872ee67ec2d2f3','2024-11-27 23:27:56.742900'),(125,'RZKY','rzky','a4f8cfbdee19be29dae0b65423d218d9c30d005d','2024-11-27 23:28:00.797665'),(126,'UONP','uonp','c5d070c45fd26ce559dd947751ee6e0afa5324bf','2024-11-27 23:28:00.975183'),(127,'YPAP','ypap','97de7fb762a66f954c5b7519fd200082e7e05800','2024-11-27 23:28:01.160627'),(128,'WLET','wlet','85eb6d9e886209d117ea3e214f9f38ac94b00f50','2024-11-27 23:28:01.340636'),(129,'TRWT','trwt','e29b67532519e5953fc0134bea1a9680c231ba71','2024-11-27 23:28:02.363651'),(130,'HRNX','hrnx','4afc92460b069652818511f0c98e6e906870fb9f','2024-11-27 23:28:02.543693'),(131,'LUZM','luzm','6ef52943e8d9f2fc7ce2fb44c6bc94eed0bd1894','2024-11-27 23:28:33.182082'),(132,'UJIC','ujic','770ba91507abaf2a2c73a9196445850f116794ae','2024-11-27 23:50:44.459539'),(133,'YKBF','ykbf','d9c004e8fb6ab59fe87d5b9d198e448afb48deaa','2024-11-27 23:51:59.314697'),(134,'PXYP','pxyp','9a95f3482017f41902cb8432f5f976685eceedd3','2024-11-27 23:52:00.302493'),(135,'RHYP','rhyp','ba8b6d1b9de3ea88c33b1966d1887fff6f7ed4fb','2024-11-28 00:05:08.927166'),(136,'UPHD','uphd','e9abed254953bbe76a872302620f8c4560b18d0b','2024-11-28 00:07:40.976731'),(137,'KFIG','kfig','9e1fc7de0f106ee40a1d5b2f70519cfac111db5e','2024-11-28 00:29:34.195826'),(138,'ZFAL','zfal','5920bcd1019fbbaa496a248b3d329a7fb08d2e8f','2024-11-28 09:23:39.069950');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-27 16:47:56.671452','1','Project 1: Simple ATM System in Python',1,'[{\"added\": {}}]',11,1),(2,'2024-11-27 16:48:41.066385','2','Project 2: RESTful App Using Django',1,'[{\"added\": {}}]',11,1),(3,'2024-11-27 16:49:38.511627','3','Project 3: Library Management System',1,'[{\"added\": {}}]',11,1),(4,'2024-11-27 16:50:10.436168','4','Project 4: Blog System',1,'[{\"added\": {}}]',11,1),(5,'2024-11-27 16:50:39.065694','5','Project 5: Django Web Application',1,'[{\"added\": {}}]',11,1),(6,'2024-11-27 16:51:09.965643','6','Project 6: API Interaction',1,'[{\"added\": {}}]',11,1),(7,'2024-11-27 16:51:34.229773','7','Project 7: Personal Porfolio Website',1,'[{\"added\": {}}]',11,1),(8,'2024-11-27 16:56:51.344990','1','Project 1: Simple ATM System in Python',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(9,'2024-11-27 16:57:04.218318','2','Project 2: RESTful App Using Django',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(10,'2024-11-27 16:57:13.608816','3','Project 3: Library Management System',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(11,'2024-11-27 16:57:23.781941','4','Project 4: Blog System',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(12,'2024-11-27 16:57:35.903210','5','Project 5: Django Web Application',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(13,'2024-11-27 16:57:46.003205','6','Project 6: API Interaction',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(14,'2024-11-27 16:57:55.941633','7','Project 7: Personal Porfolio Website',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',11,1),(15,'2024-11-27 17:00:02.990082','1','Judge in Trump criminal case delays sentencing indefinitely',1,'[{\"added\": {}}]',8,1),(16,'2024-11-27 17:00:26.617476','2','Six backpackers dead after suspected alcohol poisoning at Laos hostel',1,'[{\"added\": {}}]',8,1),(17,'2024-11-27 17:01:00.013008','3','Venezuela opposition calls for \'enormous\' anti-Maduro protest',1,'[{\"added\": {}}]',8,1),(18,'2024-11-27 17:01:27.445538','4','France marks 80 years since Strasbourg\'s World War II liberation',1,'[{\"added\": {}}]',8,1),(19,'2024-11-27 17:02:20.638550','5','Six face trial in Paris for blackmailing Juve\'s Paul Pogba',1,'[{\"added\": {}}]',8,1),(20,'2024-11-27 17:02:41.935359','6','DHL cargo plane crashes in Lithuania, killing one',1,'[{\"added\": {}}]',8,1),(21,'2024-11-27 17:03:09.060191','7','Ukraine fires UK Storm Shadow missiles into Russia: media',1,'[{\"added\": {}}]',8,1),(22,'2024-11-27 17:03:35.533171','8','US police arrest man over alleged New York Stock Exchange plot',1,'[{\"added\": {}}]',8,1),(23,'2024-11-27 17:04:01.814422','9','Banana taped to a wall sells for $6.2 million',1,'[{\"added\": {}}]',8,1),(24,'2024-11-27 17:04:25.088672','10','Two decades of Nintendo’s top-selling DS console',1,'[{\"added\": {}}]',8,1),(25,'2024-11-27 17:04:49.387467','11','Russia fires intercontinental ballistic missile at Ukraine for first time',1,'[{\"added\": {}}]',8,1),(26,'2024-11-27 17:05:11.185164','12','Trump taps loyalist Pam Bondi for attorney general after Gaetz withdraws',1,'[{\"added\": {}}]',8,1),(27,'2024-11-27 17:05:31.451782','13','Spain shuts down illegal football streaming platform',1,'[{\"added\": {}}]',8,1),(28,'2024-11-27 17:05:50.627041','14','\'Vanishing act\': UK Magic Circle seeks disappearing woman',1,'[{\"added\": {}}]',8,1),(29,'2024-11-27 17:06:16.303873','15','New law lets Swedish police seize luxury items without formal suspicion',1,'[{\"added\": {}}]',8,1),(30,'2024-11-27 20:05:45.903975','7','Project 7: Personal Porfolio Website',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(31,'2024-11-27 20:10:08.873487','5','Project 5: Django Web Application',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(32,'2024-11-27 20:10:33.270716','6','Project 6: API Interaction',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(33,'2024-11-27 20:10:48.808239','7','Project 7: Personal Porfolio Website',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(34,'2024-11-27 21:51:32.930517','15','New law lets Swedish police seize luxury items without formal suspicion',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(35,'2024-11-27 21:51:38.585708','14','\'Vanishing act\': UK Magic Circle seeks disappearing woman',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(36,'2024-11-27 21:52:15.200518','13','Spain shuts down illegal football streaming platform',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(37,'2024-11-27 21:52:27.592353','12','Trump taps loyalist Pam Bondi for attorney general after Gaetz withdraws',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(38,'2024-11-27 21:52:35.460956','11','Russia fires intercontinental ballistic missile at Ukraine for first time',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(39,'2024-11-27 21:52:40.030788','10','Two decades of Nintendo’s top-selling DS console',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(40,'2024-11-27 21:52:44.875129','9','Banana taped to a wall sells for $6.2 million',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(41,'2024-11-27 21:52:59.899771','8','US police arrest man over alleged New York Stock Exchange plot',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(42,'2024-11-27 21:53:06.535608','7','Ukraine fires UK Storm Shadow missiles into Russia: media',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(43,'2024-11-27 21:53:12.472559','6','DHL cargo plane crashes in Lithuania, killing one',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(44,'2024-11-27 21:53:18.465989','5','Six face trial in Paris for blackmailing Juve\'s Paul Pogba',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(45,'2024-11-27 21:53:24.426399','4','France marks 80 years since Strasbourg\'s World War II liberation',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(46,'2024-11-27 21:53:29.599487','4','France marks 80 years since Strasbourg\'s World War II liberation',2,'[]',8,1),(47,'2024-11-27 21:53:34.516931','3','Venezuela opposition calls for \'enormous\' anti-Maduro protest',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(48,'2024-11-27 21:53:42.396073','2','Six backpackers dead after suspected alcohol poisoning at Laos hostel',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(49,'2024-11-27 21:53:46.974901','1','Judge in Trump criminal case delays sentencing indefinitely',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'captcha','captchastore'),(5,'contenttypes','contenttype'),(8,'portfolio','blogpost'),(12,'portfolio','comment'),(9,'portfolio','contact'),(10,'portfolio','homepage'),(11,'portfolio','project'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-27 16:40:22.788729'),(2,'auth','0001_initial','2024-11-27 16:40:23.563002'),(3,'admin','0001_initial','2024-11-27 16:40:23.776561'),(4,'admin','0002_logentry_remove_auto_add','2024-11-27 16:40:23.784066'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-27 16:40:23.798090'),(6,'contenttypes','0002_remove_content_type_name','2024-11-27 16:40:23.895381'),(7,'auth','0002_alter_permission_name_max_length','2024-11-27 16:40:23.974644'),(8,'auth','0003_alter_user_email_max_length','2024-11-27 16:40:24.009848'),(9,'auth','0004_alter_user_username_opts','2024-11-27 16:40:24.019120'),(10,'auth','0005_alter_user_last_login_null','2024-11-27 16:40:24.091896'),(11,'auth','0006_require_contenttypes_0002','2024-11-27 16:40:24.096424'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-27 16:40:24.104519'),(13,'auth','0008_alter_user_username_max_length','2024-11-27 16:40:24.216688'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-27 16:40:24.302554'),(15,'auth','0010_alter_group_name_max_length','2024-11-27 16:40:24.323664'),(16,'auth','0011_update_proxy_permissions','2024-11-27 16:40:24.335333'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-27 16:40:24.417711'),(18,'captcha','0001_initial','2024-11-27 16:40:24.459396'),(19,'captcha','0002_alter_captchastore_id','2024-11-27 16:40:24.462826'),(20,'portfolio','0001_initial','2024-11-27 16:40:24.644104'),(21,'sessions','0001_initial','2024-11-27 16:40:24.687475'),(22,'portfolio','0002_alter_project_technologies','2024-11-28 00:37:50.455265');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0b9sha3qgq1cu97fd78rjnsg2bvgb3sv','.eJxVjDsOwyAQRO9CHSGWn3HK9D4DWlgITiKQjF1FuXtsyUVSzrw382Yet7X4rafFz8SuDNjltwsYn6kegB5Y743HVtdlDvxQ-Ek7nxql1-10_w4K9rKvEUxQ0VkdRidliHZQzgAIHIUxKkN2iIAkSO45axMd6TgQIZGVAYF9vs0xN-Y:1tGLCC:6CSrib6_Z476GY6KJaPPkwPCYIF7YlVzSPXaLiHLQXU','2024-12-11 16:47:20.198985'),('n6kq9ui8tdruxzk3a3ifcvlzzzkjbe8c','.eJxVjDsOwyAQRO9CHSGWn3HK9D4DWlgITiKQjF1FuXtsyUVSzrw382Yet7X4rafFz8SuDNjltwsYn6kegB5Y743HVtdlDvxQ-Ek7nxql1-10_w4K9rKvEUxQ0VkdRidliHZQzgAIHIUxKkN2iIAkSO45axMd6TgQIZGVAYF9vs0xN-Y:1tGOHe:39IxQ9AzNPusfmD59IgAYPBaddQFlBOp3HQblKatm08','2024-12-11 20:05:10.751064');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_blogpost`
--

DROP TABLE IF EXISTS `portfolio_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_blogpost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_blogpost`
--

LOCK TABLES `portfolio_blogpost` WRITE;
/*!40000 ALTER TABLE `portfolio_blogpost` DISABLE KEYS */;
INSERT INTO `portfolio_blogpost` VALUES (1,'Judge in Trump criminal case delays sentencing indefinitely','<p>The judge in Donald Trump&#39;s criminal hush money case on Friday delayed his sentencing indefinitely, in what the president-elect&#39;s team called a &quot;decisive win&quot; as he prepares to return to the White House.</p>\r\n\r\n<p>Trump, who was to have been sentenced on November 26, fought to block that proceeding before he succeeded Joe Biden in January.</p>\r\n\r\n<p>&quot;The joint application for a stay of sentencing is granted to the extent that the November 26, 2024 date is adjourned,&quot; Judge Juan Merchan said in an order in New York.</p>\r\n\r\n<p>Trump&#39;s legal team cited a landmark July ruling from the Supreme Court that gives presidents sweeping immunity for official acts committed while in office as justification for their request.</p>\r\n\r\n<p>&quot;In a decisive win for President Trump, the hoax Manhattan Case is now fully stayed and sentencing is adjourned,&quot; Trump&#39;s communications director Steven Cheung said in a statement.</p>\r\n\r\n<p>&quot;President Trump won a landslide victory as the American People have issued a mandate to return him to office and dispose of all remnants of the Witch Hunt cases.&quot;</p>\r\n\r\n<p>Trump was convicted of 34 felony counts in May after a jury found he had fraudulently manipulated business records to cover up an alleged sexual encounter with a porn star ahead of the 2016 election.</p>\r\n\r\n<p>Prosecutors argued that concealing the alleged tryst was intended to help him win his first run for the White House.</p>\r\n\r\n<h3>&#39;Motion to dismiss&#39;</h3>\r\n\r\n<p>Ahead of the election in November, Trump&#39;s lawyers moved to have the case thrown out in light of the Supreme Court decision, a move which prosecutors firmly rejected.</p>\r\n\r\n<p>On Friday, Merchan granted Trump leave to seek to have the conviction thrown out, likely meaning several further hearings that could be delayed once Trump is sworn in.</p>\r\n\r\n<p>New York state prosecutors previously acknowledged in correspondence with the court the &quot;unprecedented circumstances,&quot; and called for the competing interests of the jury&#39;s verdict and Trump&#39;s election to be balanced.</p>\r\n\r\n<p>The Republican president-elect has repeatedly derided the hush money case as a witch hunt.</p>\r\n\r\n<p>Alongside the hush money case, Trump faces two active federal cases: one related to his effort to overturn the 2020 election and the other connected to classified documents he allegedly mishandled after leaving office.</p>\r\n\r\n<p>In the election interference case, Special Counsel Jack Smith has moved to vacate deadlines, delaying it indefinitely - but not yet dropping it outright, in line with long-standing Justice Department policy not to prosecute sitting US presidents.</p>\r\n\r\n<p>A Trump-appointed federal judge already thrown out the documents case, but Smith had sought to appeal that decision. As president, Trump would be able to intervene to end those cases.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:00:02.972160','Trump, USA, POTUS','blog_images/BlogPost_1_Trump_Lk09j5r.jpg'),(2,'Six backpackers dead after suspected alcohol poisoning at Laos hostel','<p>Six foreign tourists have died after a suspected mass methanol poisoning from drinking tainted alcohol at a backpacker hotspot in Laos.</p>\r\n\r\n<p>Australian Holly Bowles, 19, became the incident&#39;s latest fatality on Friday when she died in a Bangkok hospital surrounded by family. Bowles&rsquo; best friend, Bianca Jones, died as a result of the poisoning on Thursday.</p>\r\n\r\n<p>A British lawyer identified in reports as Simone White also died, and the UK foreign office said it was &quot;supporting the family of a British woman who has died in Laos.&quot;</p>\r\n\r\n<p>Two Danish citizens and an American also died, officials said, after what media described as a night out in Vang Vieng where they drank possibly tainted alcohol.</p>\r\n\r\n<p>The group of about a dozen tourists became ill after going out on November 12, according to British and Australian media.</p>\r\n\r\n<p>Bowles and Jones, both aged 19 from Melbourne, became unwell while staying at Vang Vieng&#39;s Nana Backpackers Hostel last week, Australian media reported.</p>\r\n\r\n<p>The women drank at the hostel&#39;s bar before they went out for the evening, the Sydney Morning Herald reported.</p>\r\n\r\n<p>They failed to check out on November 13, when hostel staff rushed the pair to the hospital.</p>\r\n\r\n<p>The Facebook and Instagram pages of the hostel had been deactivated as of Thursday and it was no longer taking bookings on websites.</p>\r\n\r\n<p>AFP was unable to reach the hostel for comment.</p>\r\n\r\n<h3>&#39;Unimaginable time&#39;</h3>\r\n\r\n<p>The Vietnamese manager of the hostel has been detained for questioning, the Laos tourist police told AFP.</p>\r\n\r\n<p>No charges have been made, however, as police are still &quot;investigating,&quot; an official said, speaking on condition of anonymity.</p>\r\n\r\n<p>In a statement on its website, Laos&#39; Ministry of Foreign Affairs said Saturday it expressed &quot;sincere sympathy and deepest condolences to the families of the deceased&quot;, adding an investigation was underway.</p>\r\n\r\n<p>The US State Department also confirmed the &quot;death of a US citizen in Vang Vieng, Laos,&quot; and said it was &quot;closely monitoring the situation and providing consular assistance.&quot;</p>\r\n\r\n<p>It did not give details on the date or cause of death.</p>\r\n\r\n<p>New Zealand&#39;s embassy in Bangkok said it had been contacted by one of its citizens &quot;who was unwell and may be a victim of methanol poisoning in Laos&quot;.</p>\r\n\r\n<p>Vang Vieng has been a fixture on the Southeast Asia backpacker trail since Laos&#39; secretive communist rulers opened the country to tourism decades ago.</p>\r\n\r\n<p>The town was once notorious for backpackers behaving badly at jungle parties and has since re-branded as an eco-tourism destination. Alcohol tainted with methanol, a toxic alcohol usually used in industrial and household products like antifreeze, is suspected to be the cause of the deaths.</p>\r\n\r\n<p>It can be added to liquor to increase its potency but can cause blindness, liver damage and death.</p>\r\n\r\n<p>On their travel advice websites for Laos, UK and Australian authorities warn their citizens to beware of methanol poisoning while consuming alcohol in the country.</p>\r\n\r\n<p>In neighbouring Thailand, at least six people died and more than 20 were hospitalised after drinking methanol-laced bootleg alcohol in August.</p>\r\n\r\n<p>But in Vang Vieng, business seemed to be going on as usual.</p>\r\n\r\n<p>&quot;I heard the news but everything is normal here,&quot; Michael, a manager at Vangvieng Rock Backpacker Rooftop Hostel told AFP on Friday, asking to use only one name.</p>\r\n\r\n<p>&quot;The high season is about to start, so we are welcoming more tourists every day.&quot; &quot;There are still many tourists in town, and they go partying,&quot; a receptionist at Vang Vieng Chill House Hostel told AFP.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:00:26.614478','Laos, backpackers, alcohol','blog_images/BlogPost_2_Laos_Cjtgotd.jpg'),(3,'Venezuela opposition calls for \'enormous\' anti-Maduro protest','<p>The top leaders of the Venezuelan opposition called Saturday for an &quot;enormous&quot; turnout next Sunday to protest the contested reelection of President Nicolas Maduro.</p>\r\n\r\n<p>&quot;We have to act now,&quot; Maria Corina Machado said in a virtual meeting with other opposition activists. &quot;This December 1 will be a unique demonstration.</p>\r\n\r\n<p>&quot; Protests will take place &quot;inside and outside Venezuela,&quot; added Machado, who has been in hiding after government threats of imprisonment.</p>\r\n\r\n<p>She also promised &quot;firmer, more decisive action&quot; ahead of January 10, when Maduro is set to be sworn in to a new term in office.</p>\r\n\r\n<p>Machado and her party&#39;s candidate in the July 28 elections, Edmundo Gonzalez Urrutia, have accused the Maduro government of widespread electoral fraud.</p>\r\n\r\n<p>The country&#39;s National Electoral Council proclaimed Maduro the winner, but the government has refused to provide detailed voting data to substantiate its claim.</p>\r\n\r\n<p>Anti-government protests since then claimed 28 lives, leaving 200 people injured and more than 2,400 in jail.</p>\r\n\r\n<p>The authorities subsequently launched investigations of opposition leaders and called for Gonzalez Urrutia&#39;s arrest.</p>\r\n\r\n<p>He fled to Spain but has promised to return to be sworn in as president on January 10. &quot;There is no doubt about that,&quot; he said in the virtual meeting.</p>\r\n\r\n<p>&quot;We are fighting, we are taking our voice -- the voice of all Venezuelans -- abroad,&quot; he said, adding that he had found &quot;great receptivity&quot; to the opposition cause during visits to Portugal, Italy and Belgium.</p>\r\n\r\n<p>Countries including the United States, Italy and Ecuador have recognized Gonzalez Urrutia as Venezuela&#39;s legitimate president-elect.</p>\r\n\r\n<h3>Treason investigation</h3>\r\n\r\n<p>The call to protest came a day after Venezuelan prosecutors opened a treason investigation into opposition leader Maria Corina Machado.</p>\r\n\r\n<p>Prosecutors accuse her of supporting US sanctions targeting President Nicolas Maduro after his contested July reelection.</p>\r\n\r\n<p>In a statement, the prosecutor&#39;s office said it has opened the inquiry because Machado&#39;s support for tougher US measures constitutes &quot;treason to the homeland, according to article 128 of the penal code, (and) conspiracy with foreign countries.&quot;</p>\r\n\r\n<p>The office said it is &quot;fighting against any person, group, or national or international entity that threatens the stability of the country.&quot;</p>\r\n\r\n<p>On Monday, the US House of Representatives passed the BOLIVAR Act, a bipartisan bill which bars US federal agencies from conducting business with the Maduro regime or its associates. It still needs passage by the Senate and President Joe Biden&#39;s signature for it to become law.</p>\r\n\r\n<p>Caracas reacted angrily to the House action, saying the bill would violate the UN Charter.</p>\r\n\r\n<h3>US pressure</h3>\r\n\r\n<p>During Donald Trump&#39;s first term as US president, from 2017 to 2021, he imposed a policy of maximum pressure &mdash; including tightening financial sanctions and instituting an oil embargo &mdash; in an unsuccessful effort to oust Maduro from power.</p>\r\n\r\n<p>The measures were later softened by President Joe Biden, whose administration nonetheless refused to recognize Maduro&#39;s claim to have won a third term in July 2024 elections, which were again marked by allegations of fraud.</p>\r\n\r\n<p>Maduro claimed victory and defied domestic and international calls to release detailed polling numbers to back up the assertion that he won.</p>\r\n\r\n<p>The opposition claimed that its candidate Edmundo Gonzalez Urrutia, who had been swiftly picked to run in Machado&#39;s place after she was declared ineligible, won with over 67 percent of the vote.</p>\r\n\r\n<p>Amid an outcry at home and abroad, the former bus driver Maduro, handpicked by the late Hugo Chavez, is now serving his third term in the oil-rich country whose economy is in shambles, as Venezuelans endure acute shortages of food, medicine and other basic goods.</p>\r\n\r\n<p>Maduro is accused of leading a harshly repressive leftist regime, with a systematic crackdown on the opposition.</p>\r\n\r\n<p>Washington has not recognized Maduro&#39;s victory said for the first time this week it recognizes Gonzalez Urrutia as Venezuela&#39;s president-elect.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:01:00.005972','Venezuela, Maduro, protest','blog_images/BlogPost_3_Venezuela_1Kjks5z.jpg'),(4,'France marks 80 years since Strasbourg\'s World War II liberation','<p>French President Emmanuel Macron marked on Saturday the 80th anniversary of Free French troops liberating the eastern city of Strasbourg from Nazi occupation and called for overlooked victims of World War II to be honoured.</p>\r\n\r\n<p>The president reviewed troops and attended a military ceremony at the Broglie Square in central Strasbourg, bowing before a monument to General Philippe Leclerc who led Free French troops into the city on November 23, 1944.</p>\r\n\r\n<p>&quot;When we knew the flag was up on the cathedral, we had reached our objective; freedom, freeing Alsace,&quot; said Roger Le Neures, a 101-year-old veteran of the fight present at the ceremony.</p>\r\n\r\n<p>France&#39;s colours flew from the cathedral&#39;s spire during the ceremony in homage to the city&#39;s liberators.</p>\r\n\r\n<p>Macron was also to visit Natzweiler-Struthof, around 60 kilometres west of Strasbourg, the only concentration camp built by the Nazis on French soil. Around 17,000 of the 50,000 people interned at Struthof and its satellite camps died or disappeared.</p>\r\n\r\n<p>The president highlighted the fate of tens of thousands of Alsatian men forcibly enlisted into the German army.</p>\r\n\r\n<p>&quot;These children of Alsace... were captured, dressed in a uniform they loathed in the service of a cause that made them slaves, instruments of a crime that killed them too, and threatened with reprisals if they attempted to flee,&quot; he said.</p>\r\n\r\n<p>The conscripts&#39; &quot;tragedy must be named, recognised and taught&quot;, Macron added.</p>\r\n\r\n<h3>&#39;Against our will&#39;</h3>\r\n\r\n<p>Alsace had been fought over for decades by the neighbours and was annexed by Germany following France&#39;s defeat in 1940.</p>\r\n\r\n<p>The forced conscription is &quot;something that&#39;s always been misunderstood&quot;, said 99-year-old Jean-Marie Hostert, a surviving member of the group known as &quot;Malgre-nous&quot; (&quot;against our will&quot;).</p>\r\n\r\n<p>&quot;We didn&#39;t want to go&quot; to fight for Germany, added Hostert, speaking during the Strasbourg commemorations in Strasbourg.</p>\r\n\r\n<p>Some have tied the &quot;Malgre-nous&quot; group to the 1944 massacre at Oradour-sur-Glane, one of the worst mass killings of civilians by the Nazis in western Europe.</p>\r\n\r\n<p>&quot;Following the war, people wanted to highlight the memory of heroes, resistance fighters, everything that could bind France together again,&quot; said historian Christophe Woehrle.</p>\r\n\r\n<p>&quot;In that whole story, the &#39;Malgre-nous&#39; are a bit of a stain. It&#39;s not glorious. It&#39;s not something you can build a national memory from,&quot; he added.</p>\r\n\r\n<h3>Resistance hero</h3>\r\n\r\n<p>Macron announced that scholar and Resistance fighter Marc Bloch, tortured and executed by the Gestapo in 1944, would be reinterred in the Pantheon &mdash; the Paris monument to France&#39;s greatest citizens.</p>\r\n\r\n<p>Bloch would be honoured &quot;for his work, his teaching and his courage,&quot; the president said, calling him a &quot;man of the Englightenment in the army of the shadows&quot; &mdash; the nickname for the French Resistance.</p>\r\n\r\n<p>Born into a Jewish family, decorated First World War veteran Bloch revolutionised his field of medieval history by bringing in ideas from sociology, geography, psychology and economics.</p>\r\n\r\n<p>His 1940 book L&#39;Etrange Defaite (&quot;The Strange Defeat&quot;), only published after the war, blamed France&#39;s elites for failing to prepare adequately for war with Nazi Germany.</p>\r\n\r\n<p>Bloch&#39;s family was &quot;very moved&quot; by the move to honour Bloch, his great-granddaughter Helene Seguret, 50, said following Macron&#39;s speech.</p>\r\n\r\n<p>The family also asked Macron in a letter seen by AFP that &quot;the far right in all its forms should be shut out of any participation in the ceremony&quot; at the Pantheon.</p>\r\n\r\n<p>Their request highlighted France&#39;s political divisions with the far-right National Rally &mdash; one of whose founding members had been in the Waffen-SS &mdash; is the single largest party in a fragmented parliament.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:01:27.428193','France, World War II','blog_images/BlogPost_4_France_World_War_u06TPcA.jpg'),(5,'Six face trial in Paris for blackmailing Juve\'s Paul Pogba','<p>Six men linked to Juventus and France midfielder Paul Pogba face trial from Tuesday, accused of blackmail, attempted extorsion of millions of euros and holding the player at gunpoint.</p>\r\n\r\n<p>The case at the Paris criminal court has shocked the French football world - all the more so because the perpetrators include three childhood friends and Pogba&#39;s own brother Mathias.</p>\r\n\r\n<p>The development comes as Pogba battles professional woes, as Juventus this month cancelled his contract following his suspension until March 2025 for doping.</p>\r\n\r\n<p>In total, the group are accused of attempting to squeeze 13 million euros out of the player.</p>\r\n\r\n<p>Mathias was himself the one to go public in the case, publishing a video on social networks in August 2022 in French, Italian, English and Spanish.</p>\r\n\r\n<p>He promised revelations about his younger brother that were &quot;likely to be explosive&quot; while remaining vague about the details.</p>\r\n\r\n<p>In a subsequent clip, Mathias accused his younger brother of casting an evil spell on his France teammate Kylian Mbappe.</p>\r\n\r\n<p>Paul Pogba&#39;s lawyers and his agent Rafaela Pimenta said in a statement later in August 2022 that the videos &quot;came on top of threats and attempts at extortion as part of a criminal gang&quot; against their client.</p>\r\n\r\n<p>He had already filed criminal complaints in Italy and France in July that year.</p>\r\n\r\n<p>Pogba told French investigators that he had in March 2022 been &quot;tricked by childhood friends&quot; from the neighbourhood in Roissy-en-Brie outside Paris where he and Mathias grew up.</p>\r\n\r\n<p>He accused them of snatching him before he was held at gunpoint by two hooded men with assault rifles, demanding 13 million euros for &quot;services rendered&quot; - blaming the footballer for failing to help them financially since his professional success.</p>\r\n\r\n<p>Pogba said at the time that he had paid them only 100,000 euros.</p>\r\n\r\n<p>The footballer said he had also been pressured at the France national team&#39;s training centre in Clairefontaine, at one of his homes in Manchester, and at Juventus&#39; training ground.</p>\r\n\r\n<p>Pogba added that he had also paid a bill of more than 57,000 euros that the same friends had racked up at the Adidas store on Paris&#39; glitzy Champs-Elysees avenue.</p>\r\n\r\n<p>Paul Pogba&#39;s lawyer Pierre-Jean Douvier declined to comment ahead of the case when contacted by AFP.</p>\r\n\r\n<h3>&#39;Like my family&#39;</h3>\r\n\r\n<p>A police overview of the case seen by AFP calls the childhood friends and other acquaintances of Paul Pogba &quot;a criminal team... with the objective of extracting 13 million euros from Paul, who had cut them off financially&quot; early in 2022.</p>\r\n\r\n<p>All of the accused deny the allegations, claiming they themselves were victims of the hooded men who held Paul Pogba at gunpoint who have never been identified.</p>\r\n\r\n<p>All five face charges of extortion, kidnapping and forming a criminal gang.</p>\r\n\r\n<p>Mathias Pogba, who was not present the night his brother was snatched, is suspected of &quot;pressuring his brother Paul and his family to ensure the payment of the sum of 13 million euros&quot;.</p>\r\n\r\n<p>He is charged with attempted extortion and forming a criminal gang.</p>\r\n\r\n<p>Mathias Pogba&#39;s lawyer Mbeko Tabula said he would not comment until the end of the trial.</p>\r\n\r\n<p>Mathias claimed months ago that he was only a &quot;puppet&quot; in the extorsion affair, making an emotional appeal to see his brother again.</p>\r\n\r\n<p>&quot;I hope our bond will be strengthened again&quot; through a meeting, he said at the time.</p>\r\n\r\n<p>The so-called &quot;Pogba affair&quot; has put in the spotlight brotherly ties poisoned by competition and money, but also the difficulty professional footballers can face keeping up friendships with those who knew them before their success.</p>\r\n\r\n<p>&quot;Despite everything that&#39;s happened, they&#39;ll always have a place in my heart... they were like my family,&quot; Paul Pogba said in September 2023 after he and the defendants were jointly questioned by investigators.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:02:20.633561','Pogba, Juventus, Paris, France, Football','blog_images/BlogPost_5_Paul_Pogba_OVWRuXz.jpg'),(6,'DHL cargo plane crashes in Lithuania, killing one','<p>A DHL cargo plane crashed early Monday near the airport in Lithuania&#39;s capital, killing one person, authorities said as they searched for clues to what caused the tragedy.</p>\r\n\r\n<p>Lithuanian officials, who in the past weeks have been probing alleged acts of sending incendiary devices on Western-bound cargo planes, stopped short of linking the crash with that investigation.</p>\r\n\r\n<p>&quot;It is premature to associate it with anything or to make any attributions,&quot; State Security Department chief Darius Jauniskis told reporters.</p>\r\n\r\n<p>Images from the crash site in the capital Vilnius showed debris from the plane and packages on fire scattered across the residential area cordoned off by the emergency services.</p>\r\n\r\n<p>&quot;We cannot rule out the case of terrorism. We have warned that such things are possible, we see an increasingly aggressive Russia... but we cannot make any attributions or point fingers yet,&quot; Jauniskis said.</p>\r\n\r\n<p>According to the Lithuanian police, the plane, flying from the eastern German city of Leipzig, skidded several hundred metres, hitting the residential house which was set on fire, smaller buildings, and a car.</p>\r\n\r\n<p>Renatas Pozela, head of the firefighting and rescue department, said one person from the plane&#39;s four-member crew died in the crash that happened as the plane was due to land in Vilnius.</p>\r\n\r\n<p>Head of National Crisis Management Centre Vilmantas Vitkauskas said the residential building was successfully evacuated, with its 12 residents moved to safety. &#39;</p>\r\n\r\n<h3>&#39;Emergency landing&#39;</h3>\r\n\r\n<p>German logistics company DHL said the cargo aircraft was operated by its partner SwiftAir and had made an &quot;emergency landing&quot; in Lithuania.</p>\r\n\r\n<p>&quot;We can confirm that today, at approximately 4:30 am CET, a Swiftair aircraft, operated by a service partner on behalf of DHL, performed an emergency landing about one kilometre from VNO Airport (Vilnius, Lithuania) while en route from LEJ Airport (Leipzig, Germany) to VNO Airport,&quot; it said in a statement.</p>\r\n\r\n<p>Lithuanian police Chief Arunas Paulauskas said investigators had gone to the hospital to talk to the pilots.</p>\r\n\r\n<p>It was not immediately clear what caused the crash.</p>\r\n\r\n<p>Earlier this month Lithuania said it had carried out arrests as part of a criminal probe into sending incendiary devices on Western-bound planes.</p>\r\n\r\n<p>Polish and Lithuanian media said the devices, including electric massagers implanted with a flammable substance, were sent from Lithuania to the UK in July and could be behind a lorry fire outside Warsaw.</p>\r\n\r\n<p>UK anti-terrorism police last month said they were investigating how a parcel burst into flames at a depot earlier this year, after a similar case in Germany blamed on Russia. Advertisement</p>\r\n\r\n<p>The Lithuanian president&#39;s chief security advisor said this month that Moscow had been behind the incidents.</p>\r\n\r\n<p>&quot;We know who the source of these operations is. It is Russian military intelligence,&quot; Kestutis Budrys told Ziniu radio.</p>\r\n\r\n<p>&quot;We cannot let this go unanswered as it will only escalate into the new kinds of actions,&quot; Budrys added.</p>\r\n\r\n<p>Poland and Lithuania, both NATO members bordering Russia, are staunch allies of Ukraine, frequently warning about Russian-inspired sabotage on EU soil.</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:02:41.935359','DHL, Aviation, Berlin','blog_images/BlogPost_6_DHL_ck8lSFU.jpg'),(7,'Ukraine fires UK Storm Shadow missiles into Russia: media','<p>Ukraine has fired UK-supplied Storm Shadow missiles into Russia for the first time, British media reported on Wednesday, after being given the green light from London.</p>\r\n\r\n<p>Several missiles were launched against at least one Russian military target, the&nbsp;<em>Financial Times&nbsp;</em>said, citing an unnamed Western official.</p>\r\n\r\n<p><em>The Times</em>&nbsp;said government sources had confirmed the use of the long-range missiles for the first time.</p>\r\n\r\n<p>The report, quoting Russian channels, said 12 of the missiles were fired into Kursk, a border region partially held by Ukrainian forces, on Wednesday afternoon.</p>\r\n\r\n<p><em>The Guardian&nbsp;</em>said the UK had given Ukraine permission to use the missiles in Russia in response to the deployment of North Korean troops on the border.</p>\r\n\r\n<p>Broadcasters&nbsp;<em>Sky News</em>&nbsp;and the&nbsp;<em>BBC</em>&nbsp;also reported the use of the missiles.</p>\r\n\r\n<p>Both Prime Minister Keir Starmer&#39;s Downing Street office and the Ministry of Defence refused to confirm the reports when contacted by&nbsp;<em>AFP</em>.</p>\r\n\r\n<p>Asked about the reports in parliament on Wednesday, Defence Secretary John Healey said he was &quot;not able to go into any further operational details&quot;.</p>\r\n\r\n<p>But he said he spoke to his counterpart in Kyiv, Rustem Umerov, on Tuesday, where they discussed UK support for Ukraine.</p>\r\n\r\n<p>&quot;We&#39;ve seen over recent weeks significant change in the action and in the rhetoric on Ukraine, and Ukraine&#39;s action on the battlefield speaks for itself,&quot; he said.</p>\r\n\r\n<p>&quot;We, as a nation and as a government, are doubling down on our support for Ukraine and are determined to do more.&quot;</p>\r\n\r\n<p>On Tuesday at the G20 summit in Rio de Janeiro, Starmer promised that Ukraine would have &quot;what is needed for as long as it&#39;s needed&quot; to defeat Russia.</p>\r\n\r\n<p>Several Western countries, including the UK, United States and France, have supplied Ukraine with long-range missiles. Washington gave its approval for Kyiv to use them against targets inside Russia last weekend.</p>\r\n\r\n<p>Overnight Monday to Tuesday, US-supplied ATACMS were used against a military site in the Russian border region of Brianksk, prompting the Kremlin to accuse US President Joe Biden of seeking to &quot;escalate&quot; the conflict.</p>\r\n\r\n<p>Russian President Vladimir Putin has since signed a decree loosening the rules about the use of nuclear weapons.</p>\r\n\r\n<p>Storm Shadows are long-range cruise missiles developed jointly by the UK and France, where they are called SCALP. They are launched from fighter jets and have a range of more than 250 kilometres.</p>\r\n\r\n<p>The UK-supplied weapons have previously been used against targets in Russian-annexed Crimea.</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:03:09.056770','Ukraine, War, Missle, UK','blog_images/BlogPost_7_Ukraine_vspzinL.jpg'),(8,'US police arrest man over alleged New York Stock Exchange plot','<p>US police on Wednesday arrested a homeless man suspected of plotting to bomb the New York Stock Exchange this week after he shared his plans with undercover officers, according to a court filing.</p>\r\n\r\n<p>The suspect, identified as Harun Abdul-Malik Yener, was arrested after a months-long investigation by agents with the Federal Bureau of Investigation (FBI), who were allegedly asked by Yener to help find explosive components to build a pipe bomb.</p>\r\n\r\n<p>Yener, a Florida native born in the United States in 1994, thought the undercover agents were members of a militia he had sought to join.</p>\r\n\r\n<p>His motive for the bombing was to create a &quot;reboot&quot; of the US government, according to the FBI.</p>\r\n\r\n<p>He told the undercover agents he chose the Stock Exchange building in New York because &quot;tons of people would support it.&quot;</p>\r\n\r\n<p>&quot;I&#39;ve already seen it, I know the layout of it, there is barely any security,&quot; he later told police.</p>\r\n\r\n<p>A search of a storage unit owned by Yener turned up bombmaking sketches, timers, circuit boards and other electronics &quot;that could be used for constructing explosive devices,&quot; the FBI said.</p>\r\n\r\n<p>Search warrants yielded internet browsing history for Yener involving &quot;aspects of bombmaking&quot; as early as 2017, and a search of his messages and emails revealed additional exchanges on the topic.</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:03:35.528935','New York, Bomb, Arrest','blog_images/BlogPost_8_New_York_uh4C5ND.jpg'),(9,'Banana taped to a wall sells for $6.2 million','<p>A fresh banana taped to a wall - a provocative work of conceptual art by Italian artist Maurizio Cattelan - was bought for $6.2 million on Wednesday by a cryptocurrency entrepreneur at a New York auction, Sotheby&#39;s announced in a statement.</p>\r\n\r\n<p>The debut of the edible creation entitled &#39;Comedian&#39; at the Art Basel show in Miami Beach in 2019 sparked controversy and raised questions about whether it should be considered art - Cattelan&#39;s stated aim.&nbsp;</p>\r\n\r\n<p>Chinese-born crypto founder Justin Sun on Wednesday forked over more than six million for the fruit and its single strip of silver duct tape, which went on sale for 120,000 dollars five years ago.&nbsp;</p>\r\n\r\n<p>&quot;This is not just an artwork. It represents a cultural phenomenon that bridges the worlds of art, memes, and the cryptocurrency community,&quot; Sun was quoted as saying in the Sotheby&#39;s statement.&nbsp;</p>\r\n\r\n<p>&quot;I believe this piece will inspire more thought and discussion in the future and will become a part of history.&quot;</p>\r\n\r\n<p>The sale featured seven potential buyers and smashed expectations, with the auction house issuing a guide price of $1-1.5 million before the bidding.&nbsp;</p>\r\n\r\n<p>Given the shelf life of a banana, Sun is essentially buying a certificate of authenticity that the work was created by Cattelan as well as instructions about how to replace the fruit when it goes bad.</p>\r\n\r\n<p>The installation auctioned on Wednesday was the third iteration - with the first one eaten by performance artist David Datuna, who said he felt &quot;hungry&quot; while inspecting it at the Miami show.</p>\r\n\r\n<p>Sun, who founded cryptomoney exchange Tron, said that he intended to eat his investment too.</p>\r\n\r\n<p>&quot;In the coming days, I will personally eat the banana as part of this unique artistic experience, honoring its place in both art history and popular culture,&quot; he said.</p>\r\n\r\n<h3>&#39;Gone mad&#39;</h3>\r\n\r\n<p>As well as his banana work, Cattelan is also known for producing an 18-carat, fully functioning gold toilet called &quot;America&quot; that was offered to Donald Trump during his first term in the White House.</p>\r\n\r\n<p>His work is often humourous and deliberately provocative, with a 1999 sculpture of the pope stuck by a meteor titled &quot;The Ninth Hour.&quot;</p>\r\n\r\n<p>He has explained the banana work as a critical commentary on the art market, which he has criticised in the past for being speculative and failing to help artists.&nbsp;</p>\r\n\r\n<p>The asking price of $120,000 for &quot;Comedian&quot; in 2019 was seen at the time as evidence that the market was &quot;bananas&quot; and the art world had &quot;gone mad,&quot; as The New York Post said in a front-page article.</p>\r\n\r\n<p>The banana sold on Wednesday was bought for 35 cents from a Bangladeshi fruit seller on the Upper East Side of Manhattan, according to The New York Times.&nbsp;</p>\r\n\r\n<p>Sun has hit headlines in the past as an art collector and as a major player in the murky cryptocurrency world.&nbsp;</p>\r\n\r\n<p>He was charged last year by the US Securities and Exchange Commission for alleged market manipulation and unregistered sales of crypto assets, which he promoted with celebrity endorsements, including from Lindsay Lohan.</p>\r\n\r\n<p>In 2021, he bought Alberto Giacometti&#39;s &quot;Le Nez&quot; for $78.4 million, which was hailed by Sotheby&#39;s at the time as signaling &quot;an influx of younger, tech-savvy collectors.&quot;</p>\r\n\r\n<p>Global art markets have been dropping in value in recent years due to higher interest rates, as well as concern about geopolitical instability, experts say.</p>\r\n\r\n<p>&quot;Empire of Light&quot; (&quot;L&#39;Empire des lumieres&quot;), a painting by Rene Magritte, shattered an auction record for the surrealist artist on Tuesday, however, selling for more than $121 million at Christie&#39;s in New York.</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:04:01.809422','Banana, Auction, New York','blog_images/BlogPost_9_Banana_grNhSSK.jpg'),(10,'Two decades of Nintendo’s top-selling DS console','<p>The gadget that introduced a new wave of casual gamers to Nintendo, the hand-held DS console, turned 20 on Thursday.</p>\r\n\r\n<p>The Nintendo DS remains the Japanese company&rsquo;s biggest commercial success, having sold 154 million units worldwide, making it the second most-sold video game console, behind Sony&rsquo;s PlayStation 2.</p>\r\n\r\n<p>Pre-empting smartphone games with its touch screen and controlled with a stylus, the DS shook up the gaming world when it launched on November 21, 2004.</p>\r\n\r\n<p>&ldquo;Even people who had never touched a games console before easily understood how to use it, thanks to the touch screen and because it could be held horizontally or vertically,&rdquo; game history expert Hiroyuki Maeda told AFP.</p>\r\n\r\n<p>With its double screen and flip-open design, the console was designed to appeal to video game newcomers.</p>\r\n\r\n<p>At the time, the Kyoto-based game giant was rethinking its strategy after disappointing sales of its Nintendo 64 and GameCube consoles. Nintendo&rsquo;s president at the time, Satoru Iwata, wanted &ldquo;to expand the gaming population&rdquo;.</p>\r\n\r\n<p>&ldquo;Whether a person was good at gaming or not was no longer important,&rdquo; Maeda said, explaining that Nintendo had &ldquo;made something into a game that was not before&rdquo;.</p>\r\n\r\n<p>An updated version of the DS, the Nintendo DSi, was launched in 2008, adding two cameras and the ability to download apps to the original design.</p>\r\n\r\n<p>According to Maeda, the DS therefore &ldquo;served as a link between the Game Boy&rdquo;, Nintendo&rsquo;s classic hand-held console first released in 1989, &ldquo;and modern-day smartphones&rdquo;.</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:04:25.084685','Nintendo, Gadget, Gaming','blog_images/BlogPost_10_Nintendo_jnUbhnc.jpg'),(11,'Russia fires intercontinental ballistic missile at Ukraine for first time','<p>Moscow on Thursday launched an intercontinental ballistic missile at Ukraine for the first time, Kyiv said, marking the latest escalation of the conflict since Ukraine fired Western-supplied long-range missiles on Russia.</p>\r\n\r\n<p>The Ukrainian air force said in a statement that Russian forces in the morning had launched several types of missiles at the central city of Dnipro, targeting critical infrastructure.</p>\r\n\r\n<p>&quot;In particular, an intercontinental ballistic missile was launched from the Astrakhan region of the Russian Federation,&quot; the statement said.</p>\r\n\r\n<p>A source in the Ukrainian air force confirmed to AFP that it was the first time since the Kremlin launched its invasion that its forces had deployed the weapon.</p>\r\n\r\n<p>The source added it was &quot;obvious&quot; that the missile, which is designed to carry both conventional and nuclear warheads, did not carry a nuclear charge.</p>\r\n\r\n<p>Asked whether Moscow fired the missile, which can hit targets thousands of kilometres away, Kremlin spokesman Dmitry Peskov said he had &quot;nothing to say on this topic.&quot;</p>\r\n\r\n<p>Air defence units downed six missiles, the air force said, without elaborating on whether the intercontinental ballistic missile (ICBM) had been downed.</p>\r\n\r\n<p>The head of the wider region where the city of Dnipro is located said the Russian aerial bombardment had damaged a rehabilitation centre and several homes, as well as an industrial enterprise.</p>\r\n\r\n<p>&quot;Two people were wounded -- a 57-year-old man was treated on the scene and a 42-year-old woman was hospitalised,&quot; the official, Sergiy Lysak.</p>\r\n\r\n<p>Russia and Ukraine have escalated their use of deadly long-range missiles over recent days since the United States gave permission to use its ATACMS against military targets inside Russia -- a long-standing Ukrainian request.</p>\r\n\r\n<p>British media meanwhile reported on Wednesday that Kyiv had launched UK-supplied Storm Shadow missiles at targets in Russia after being given the green light from London.</p>\r\n\r\n<p>The defence ministry in Moscow said its air defence systems had downed two Storm Shadows, without saying whether they were downed on Russian territory or in occupied Ukraine.&nbsp;&nbsp;</p>\r\n\r\n<p>Zelensky says &#39;crazy&#39; Russia using Ukraine as a &#39;testing ground&#39;&nbsp; &nbsp;</p>\r\n\r\n<p>President Volodymyr Zelensky said following the Russian missile attack that Russian leader Vladimir Putin was using Ukraine as a weapons-testing ground.</p>\r\n\r\n<p>&quot;It is obvious that Putin is using Ukraine as a testing ground,&quot; Zelensky said, referring to Russia as &quot;our crazy neighbour.&quot;</p>\r\n\r\n<p><em>Source:</em>&nbsp;&nbsp;<strong>Times of Malta</strong></p>','2024-11-27 17:04:49.382429','Russia, War, Missle','blog_images/BlogPost_11_Russia_licihem.jpg'),(12,'Trump taps loyalist Pam Bondi for attorney general after Gaetz withdraws','<p>US President-elect Donald Trump tapped Pam Bondi, a staunch ally who helped defend the ex-leader against impeachment, as US attorney general on Thursday following firebrand Matt Gaetz&#39;s withdrawal from the running.</p>\r\n\r\n<p>Gaetz&#39;s retreat amid sexual misconduct allegations signalled limits to Trump&#39;s power, even as the president-elect prepares to retake the White House with his Republican Party also in control of both chambers of Congress.</p>\r\n\r\n<p>The nomination of Bondi, a former Florida attorney general who served as a surrogate during the 2024 campaign and pushed to de-legitimize vote counting in swing state Pennsylvania in 2020, could be seen as a useful tool for Trump in his attempt to settle personal grievances.</p>\r\n\r\n<p>&quot;For too long, the partisan Department of Justice has been weaponized against me and other Republicans - Not anymore,&quot; Trump wrote on his Truth Social network in announcing Bondi&#39;s nomination.</p>\r\n\r\n<p>Bondi, 59, was a member of Trump&#39;s legal team during his first Senate impeachment trial, in which he was alleged to have pressured Ukrainian President Volodymyr Zelensky, using aid as leverage, to hand over political dirt on Biden.</p>\r\n\r\n<p>&quot;Pam will refocus the DOJ to its intended purpose of fighting Crime, and Making America Safe Again,&quot; Trump wrote, adding that she is &quot;smart and tough, and is an AMERICA FIRST Fighter.&quot;</p>\r\n\r\n<p>Trump has made several eye-catching selections for top roles, including Fox News host Pete Hegseth as defence secretary, vaccine sceptic Robert F. Kennedy Jr. as health secretary and billionaire Elon Musk to head a government cost-cutting unit.</p>\r\n\r\n<p>The exit of Gaetz, 42, was the first setback for Trump and Vice-president elect JD Vance in placing key allies in top positions, but his confirmation by the Senate was widely seen as doomed due to lack of support from fellow Republicans.</p>\r\n\r\n<h3>Ethics probe</h3>\r\n\r\n<p>A congressional panel has been investigating alleged illegal activity by Gaetz, including sexual contact with a 17-year-old girl - which he denies - as well as drug use and misappropriating campaign funds.</p>\r\n\r\n<p>&quot;I had excellent meetings with Senators yesterday,&quot; Gaetz said on X.</p>\r\n\r\n<p>&quot;While the momentum was strong, it is clear that my confirmation was unfairly becoming a distraction to the critical work of the Trump/Vance Transition.&quot;</p>\r\n\r\n<p>Gaetz was first elected to the House of Representatives in 2016 and won reelection recently, but he resigned as a congressman shortly after Trump picked him to be attorney general.</p>\r\n\r\n<p>&quot;Matt has a wonderful future, and I look forward to watching all of the great things he will do,&quot; Trump said in response to his withdrawal.</p>\r\n\r\n<p>The ethics probe into Gaetz, a deeply polarizing Florida congressman, was effectively ended after he resigned from the House.</p>\r\n\r\n<p>Gaetz is known as a political disruptor who earned the enmity of some House colleagues, including by engineering the ouster of fellow Republican Kevin McCarthy as speaker last year.</p>\r\n\r\n<p>The latest transition upheaval ahead of Trump&#39;s inauguration on January 20 came as new lurid details emerged about defense secretary nominee Hegseth.</p>\r\n\r\n<p>He was investigated for sexual assault after a complaint from an unnamed woman at a 2017 conference in California.</p>\r\n\r\n<p><em>The New York Times</em>&nbsp;reported details from the police investigation, which was closed without Hegseth being charged.</p>\r\n\r\n<p>The married woman told officers that her memory of the episode was hazy and thought her drink might have been spiked, while Hegseth said the encounter was consensual.</p>\r\n\r\n<p><em>Source:</em><strong>&nbsp; Times of Malta</strong></p>','2024-11-27 17:05:11.181201','Trump, POTUS, Bondi, Attorney','blog_images/BlogPost_12_Bondi_q4Wlm2u.jpg'),(13,'Spain shuts down illegal football streaming platform','<p>Spanish authorities said Friday they had shut down the country&#39;s biggest illegal streaming platform Cristal Azul, which had been offering La Liga and second-division football matches online for free.</p>\r\n\r\n<p>&quot;More than 78,000 community members... were benefiting from the broadcasting, defrauding two well-known Spanish companies of more than &euro;42 million,&quot; said Spain&#39;s Guardia Civil, a national law enforcement agency, in a statement.</p>\r\n\r\n<p>The operation began following a complaint filed jointly by La Liga and broadcaster Movistar, and finished with the identification of the alleged perpetrator, a 37-year-old man, now under investigation.</p>\r\n\r\n<p>The operation is a victory for La Liga president Javier Tebas in his battle with illegal streaming, which he considers to be &quot;theft&quot; that could drive football &quot;into bankruptcy&quot;.</p>\r\n\r\n<p><em>Source:&nbsp;&nbsp;</em><strong>Times of Malta</strong></p>','2024-11-27 17:05:31.447665','La Liga, Football, Spain','blog_images/BlogPost_13_Football_ZVbu0gE.jpg'),(14,'\'Vanishing act\': UK Magic Circle seeks disappearing woman','<p>Britain&#39;s Magic Circle has launched an appeal to track down a woman it expelled over three decades ago for posing as a man to gain admittance to the formerly male-only magicians&#39; society.</p>\r\n\r\n<p>The London-based international magic organisation now wants to apologise to Sophie Lloyd who was ejected in 1991 for &quot;masquerading as a male&quot;.</p>\r\n\r\n<p>Efforts to locate Lloyd, however, have so far drawn a blank.</p>\r\n\r\n<p>&quot;It&#39;s almost as if they just made her vanish from thin air, tried to brush it under the carpet, but obviously now the story has come out and we&#39;re so desperate to right this wrong,&quot; Laura London, the first female chair of the Magic Circle, told The Guardian.</p>\r\n\r\n<p>Lloyd, who had posed as Raymond Lloyd for 18 months, unmasked herself as a woman when the organisation voted to admit women in 1991.</p>\r\n\r\n<p>But members angered at her &quot;deliberate deception, went ahead with her expulsion.</p>\r\n\r\n<p>Although women have been admitted now for over 30 years, they still make up only around five per cent of the society&#39;s 1,700 members.</p>\r\n\r\n<p>Lloyd was last heard of around 1997 when she appeared in local newspaper articles in Coventry and Leamington Spa in central England.</p>\r\n\r\n<p>After that the trail goes cold, said London, adding that the society was keen to hear the story from Lloyd&#39;s side and invite her to rejoin.</p>\r\n\r\n<p>And she said the saga could soon find its way onto the big screen.</p>\r\n\r\n<p>&quot;We&#39;re already in talks about making a movie of her extraordinary heist,&quot; she said.</p>\r\n\r\n<p><em>Source:&nbsp;&nbsp;</em><strong>Times of Malta</strong></p>','2024-11-27 17:05:50.622047','UK, Magic','blog_images/BlogPost_14_Magician_fbgqUbt.jpg'),(15,'New law lets Swedish police seize luxury items without formal suspicion','<p>Sweden imposed a law on Friday allowing police to seize luxury items from people even if they are not suspected of a crime, if they cannot prove they acquired them legally.</p>\r\n\r\n<p>The measure, which was passed by parliament on October 2, is part of the right-wing government&#39;s crackdown on organised criminal gangs.</p>\r\n\r\n<p>It means police can seize cars, gold watches and designer goods from people suspected of having ties to criminal gangs, where the items are believed to have been bought with money earned from illicit gang activities, even if the person is not formally suspected of a crime.</p>\r\n\r\n<p>An example would be an expensive sports car driven by an unemployed person with no legal income and who cannot explain how they paid for it.</p>\r\n\r\n<p>&quot;This is about seizing goods where it is clear that crime is involved,&quot; Prime Minister Ulf Kristersson told a press conference earlier this week.</p>\r\n\r\n<p>He said the new law was &quot;the biggest reform since the criminal code was introduced&quot; in 1965.</p>\r\n\r\n<p>Sweden has struggled to rein in a surge in gang shootings and bombings in recent years, linked to score-settling and struggles to control the illicit drug market.</p>\r\n\r\n<p>In 2023, the country registered 53 deaths in 363 shootings, increasingly occurring in public places and at times claiming innocent victims, such as passers-by.</p>\r\n\r\n<p>Relatives of gang members have also been targeted in vendetta killings.</p>\r\n\r\n<p>The perpetrators are often young teens, hired as contract killers because they are under the age of criminal responsibility, which is 15.</p>\r\n\r\n<p>The new seizure law also applies to under-15s.</p>\r\n\r\n<h3>Concerns over rule of law</h3>\r\n\r\n<p>&quot;We know that these are status symbols, like watches and cars, which are used to recruit people into criminal gangs,&quot; the prime minister said.</p>\r\n\r\n<p>Chief of police Petra Lundh said the new law was &quot;not a gamechanger but a very important piece of the puzzle&quot;.</p>\r\n\r\n<p>Critics of the measure - including the Parliamentary Ombudsmen, who ensure that public authorities comply with legislation - have expressed concern about the rule of law, such as the principle of presumption of innocence and the vague requirements for carrying out property and physical searches.</p>\r\n\r\n<p>Justice Minister Gunnar Strommer has defended the legislation but acknowledged its &quot;offensive&quot; nature.</p>\r\n\r\n<p>&quot;We&#39;re building something that is not part of the traditional models.&nbsp;</p>\r\n\r\n<p>&quot;All of the guarantees for rule of law within the framework of criminal cases are obviously not present when you do things outside the traditional model,&quot; he told reporters this week.</p>\r\n\r\n<p>&quot;We are being offensive here. Otherwise we won&#39;t get the desired effect,&quot; he said, adding that ultimately a court would have the final say about a seizure.</p>\r\n\r\n<p>The organised criminal gang economy is estimated at around 100 to 150 billion kronor a year, according to authorities.</p>\r\n\r\n<p><em>Source:&nbsp;&nbsp;</em><strong>Times of Malta</strong></p>','2024-11-27 17:06:16.297558','Sweden, Law, Luxury','blog_images/BlogPost_15_Sweden_WqDkHmp.jpg');
/*!40000 ALTER TABLE `portfolio_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_comment`
--

DROP TABLE IF EXISTS `portfolio_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_comment_post_id_9494724e_fk_portfolio_blogpost_id` (`post_id`),
  CONSTRAINT `portfolio_comment_post_id_9494724e_fk_portfolio_blogpost_id` FOREIGN KEY (`post_id`) REFERENCES `portfolio_blogpost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_comment`
--

LOCK TABLES `portfolio_comment` WRITE;
/*!40000 ALTER TABLE `portfolio_comment` DISABLE KEYS */;
INSERT INTO `portfolio_comment` VALUES (1,'Matthew Mangion','matthew.mangion@gmail.com','Very Interesting!','2024-11-27 23:51:37.762481',14);
/*!40000 ALTER TABLE `portfolio_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_contact`
--

DROP TABLE IF EXISTS `portfolio_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `date_sent` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_contact`
--

LOCK TABLES `portfolio_contact` WRITE;
/*!40000 ALTER TABLE `portfolio_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_homepage`
--

DROP TABLE IF EXISTS `portfolio_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_homepage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_homepage`
--

LOCK TABLES `portfolio_homepage` WRITE;
/*!40000 ALTER TABLE `portfolio_homepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_project`
--

DROP TABLE IF EXISTS `portfolio_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `technologies` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_project`
--

LOCK TABLES `portfolio_project` WRITE;
/*!40000 ALTER TABLE `portfolio_project` DISABLE KEYS */;
INSERT INTO `portfolio_project` VALUES (1,'Project 1: Simple ATM System in Python','<p>A basic ATM system using Python that allows users to perform essential banking operations such as checking balance, depositing money, and withdrawing money.</p>','projects/Project_1_ATM_mHHd1A2.png','https://github.com/mattmang/simple_atm','Python'),(2,'Project 2: RESTful App Using Django','<p>A simple RESTful API using Django and Django REST Framework (DRF) without utilizing a database. Using an in-memory data structure to manage resources.</p>','projects/Project_2_RESTful_api_oGjwoG2.png','https://github.com/mattmang/my_rest_api','Python, Django, DRF'),(3,'Project 3: Library Management System','<p>A basic Library Management system using Django that allows users to perform book registering, borrowing and deletion using a web api and saving to an SQL database.</p>','projects/Project_3_Library_Mgmt_Ho5TdTb.png','https://github.com/mattmang/library_system','Python, Django, HTML, MySQL'),(4,'Project 4: Blog System','<p>A basic Blog system using Python and HTML templates that allows users to register and log into a portal, write blog entries and view a full list of blog entries.</p>','projects/Project_4_Blog_System_lK3ZZa9.png','https://github.com/mattmang/blog_system','Python, Django, HTML, Bootstrap, MySQL'),(5,'Project 5: Django Web Application','<p>A Django webapp that allows users to login, logout, and perform CRUD operations on a task model using a MySQL database.</p>','projects/Project_5_Django_Web_App_13YHRFA.png','https://github.com/mattmang/django_web_app','Python, Django, HTML, Bootstrap, MySQL'),(6,'Project 6: API Interaction','<p>A basic project demonstrating API interaction using request handling, data serialization, and integration with third party services.</p>','projects/Project_6_API_Interaction_UccAROa.png','https://github.com/mattmang/api_interaction','Python, Django, HTML'),(7,'Project 7: Personal Porfolio Website','<p>This is a Django-based project to create a dynamic&nbsp;Personal Portfolio Website&nbsp;to showcase your skills, achievements, projects, and technical content.</p>','projects/Project_7_Personal_Porfolio_hu9eyBA.png','https://github.com/mattmang/personal_portfolio_website','Python, Django, Django REST Framework, HTML, CSS, Bootstrap, JavaScript');
/*!40000 ALTER TABLE `portfolio_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'portfolio_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 10:29:07
