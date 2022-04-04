-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dask
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_04_02_110950_create_providers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tur` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1274,1,'IT Task 0','3','6',NULL,NULL),(1275,1,'IT Task 1','4','6',NULL,NULL),(1276,1,'IT Task 2','3','10',NULL,NULL),(1277,1,'IT Task 3','4','4',NULL,NULL),(1278,1,'IT Task 4','3','5',NULL,NULL),(1279,1,'IT Task 5','1','12',NULL,NULL),(1280,1,'IT Task 6','1','4',NULL,NULL),(1281,1,'IT Task 7','5','6',NULL,NULL),(1282,1,'IT Task 8','3','8',NULL,NULL),(1283,1,'IT Task 9','1','6',NULL,NULL),(1284,1,'IT Task 10','2','10',NULL,NULL),(1285,1,'IT Task 11','1','6',NULL,NULL),(1286,1,'IT Task 12','4','11',NULL,NULL),(1287,1,'IT Task 13','5','3',NULL,NULL),(1288,1,'IT Task 14','1','11',NULL,NULL),(1289,1,'IT Task 15','4','6',NULL,NULL),(1290,1,'IT Task 16','5','4',NULL,NULL),(1291,1,'IT Task 17','3','11',NULL,NULL),(1292,1,'IT Task 18','2','11',NULL,NULL),(1293,1,'IT Task 19','3','8',NULL,NULL),(1294,1,'IT Task 20','3','11',NULL,NULL),(1295,1,'IT Task 21','1','5',NULL,NULL),(1296,1,'IT Task 22','4','5',NULL,NULL),(1297,1,'IT Task 23','2','7',NULL,NULL),(1298,1,'IT Task 24','2','6',NULL,NULL),(1299,1,'IT Task 25','3','9',NULL,NULL),(1300,1,'IT Task 26','4','6',NULL,NULL),(1301,1,'IT Task 27','4','7',NULL,NULL),(1302,1,'IT Task 28','1','4',NULL,NULL),(1303,1,'IT Task 29','4','5',NULL,NULL),(1304,1,'IT Task 30','5','9',NULL,NULL),(1305,1,'IT Task 31','2','5',NULL,NULL),(1306,1,'IT Task 32','2','5',NULL,NULL),(1307,1,'IT Task 33','2','6',NULL,NULL),(1308,1,'IT Task 34','5','6',NULL,NULL),(1309,1,'IT Task 35','1','10',NULL,NULL),(1310,1,'IT Task 36','1','10',NULL,NULL),(1311,1,'IT Task 37','1','10',NULL,NULL),(1312,1,'IT Task 38','5','12',NULL,NULL),(1313,1,'IT Task 39','4','12',NULL,NULL),(1314,1,'IT Task 40','2','6',NULL,NULL),(1315,1,'IT Task 41','3','8',NULL,NULL),(1316,1,'IT Task 42','5','10',NULL,NULL),(1317,1,'IT Task 43','3','10',NULL,NULL),(1318,1,'IT Task 44','5','8',NULL,NULL),(1319,1,'IT Task 45','5','9',NULL,NULL),(1320,1,'IT Task 46','3','3',NULL,NULL),(1321,1,'IT Task 47','4','4',NULL,NULL),(1322,1,'IT Task 48','1','12',NULL,NULL),(1323,1,'IT Task 49','1','7',NULL,NULL),(1324,1,'IT Task 50','1','4',NULL,NULL),(1325,1,'IT Task 51','1','10',NULL,NULL),(1326,1,'IT Task 52','4','8',NULL,NULL),(1327,1,'IT Task 53','3','3',NULL,NULL),(1328,1,'IT Task 54','4','10',NULL,NULL),(1329,1,'IT Task 55','4','12',NULL,NULL),(1330,1,'IT Task 56','3','10',NULL,NULL),(1331,1,'IT Task 57','2','11',NULL,NULL),(1332,1,'IT Task 58','1','7',NULL,NULL),(1333,1,'IT Task 59','2','4',NULL,NULL),(1334,1,'IT Task 60','3','4',NULL,NULL),(1335,1,'IT Task 61','1','3',NULL,NULL),(1336,1,'IT Task 62','1','6',NULL,NULL),(1337,1,'IT Task 63','3','3',NULL,NULL),(1338,1,'IT Task 64','4','12',NULL,NULL),(1339,1,'IT Task 65','2','11',NULL,NULL),(1340,1,'IT Task 66','3','10',NULL,NULL),(1341,2,'Business Task 0','1','7',NULL,NULL),(1342,2,'Business Task 1','3','4',NULL,NULL),(1343,2,'Business Task 2','1','6',NULL,NULL),(1344,2,'Business Task 3','5','4',NULL,NULL),(1345,2,'Business Task 4','2','7',NULL,NULL),(1346,2,'Business Task 5','5','7',NULL,NULL),(1347,2,'Business Task 6','4','5',NULL,NULL),(1348,2,'Business Task 7','2','11',NULL,NULL),(1349,2,'Business Task 8','4','12',NULL,NULL),(1350,2,'Business Task 9','1','4',NULL,NULL),(1351,2,'Business Task 10','2','7',NULL,NULL),(1352,2,'Business Task 11','4','3',NULL,NULL),(1353,2,'Business Task 12','3','10',NULL,NULL),(1354,2,'Business Task 13','1','3',NULL,NULL),(1355,2,'Business Task 14','2','10',NULL,NULL),(1356,2,'Business Task 15','2','12',NULL,NULL),(1357,2,'Business Task 16','3','9',NULL,NULL),(1358,2,'Business Task 17','4','9',NULL,NULL),(1359,2,'Business Task 18','1','7',NULL,NULL),(1360,2,'Business Task 19','4','4',NULL,NULL),(1361,2,'Business Task 20','5','4',NULL,NULL),(1362,2,'Business Task 21','4','4',NULL,NULL),(1363,2,'Business Task 22','2','5',NULL,NULL),(1364,2,'Business Task 23','5','9',NULL,NULL),(1365,2,'Business Task 24','5','12',NULL,NULL),(1366,2,'Business Task 25','3','9',NULL,NULL),(1367,2,'Business Task 26','2','12',NULL,NULL),(1368,2,'Business Task 27','3','9',NULL,NULL),(1369,2,'Business Task 28','1','7',NULL,NULL),(1370,2,'Business Task 29','4','4',NULL,NULL),(1371,2,'Business Task 30','4','4',NULL,NULL),(1372,2,'Business Task 31','1','7',NULL,NULL),(1373,2,'Business Task 32','4','7',NULL,NULL),(1374,2,'Business Task 33','3','9',NULL,NULL),(1375,2,'Business Task 34','2','9',NULL,NULL),(1376,2,'Business Task 35','1','9',NULL,NULL),(1377,2,'Business Task 36','5','3',NULL,NULL),(1378,2,'Business Task 37','4','5',NULL,NULL),(1379,2,'Business Task 38','1','9',NULL,NULL),(1380,2,'Business Task 39','5','7',NULL,NULL),(1381,2,'Business Task 40','1','6',NULL,NULL),(1382,2,'Business Task 41','1','5',NULL,NULL),(1383,2,'Business Task 42','5','9',NULL,NULL),(1384,2,'Business Task 43','1','9',NULL,NULL),(1385,2,'Business Task 44','5','8',NULL,NULL),(1386,2,'Business Task 45','5','8',NULL,NULL),(1387,2,'Business Task 46','1','9',NULL,NULL),(1388,2,'Business Task 47','1','12',NULL,NULL),(1389,2,'Business Task 48','1','3',NULL,NULL),(1390,2,'Business Task 49','5','7',NULL,NULL),(1391,2,'Business Task 50','5','12',NULL,NULL),(1392,2,'Business Task 51','1','11',NULL,NULL),(1393,2,'Business Task 52','3','7',NULL,NULL),(1394,2,'Business Task 53','1','3',NULL,NULL),(1395,2,'Business Task 54','4','10',NULL,NULL),(1396,2,'Business Task 55','2','11',NULL,NULL),(1397,2,'Business Task 56','4','9',NULL,NULL),(1398,2,'Business Task 57','3','7',NULL,NULL),(1399,2,'Business Task 58','2','4',NULL,NULL),(1400,2,'Business Task 59','4','9',NULL,NULL),(1401,2,'Business Task 60','2','10',NULL,NULL),(1402,2,'Business Task 61','3','8',NULL,NULL),(1403,2,'Business Task 62','1','10',NULL,NULL),(1404,2,'Business Task 63','4','11',NULL,NULL),(1405,2,'Business Task 64','4','5',NULL,NULL),(1406,2,'Business Task 65','3','9',NULL,NULL),(1407,2,'Business Task 66','1','3',NULL,NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02 16:39:20
