-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: deconinck
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grapes`
--

DROP TABLE IF EXISTS `grapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grapes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grapes`
--

LOCK TABLES `grapes` WRITE;
/*!40000 ALTER TABLE `grapes` DISABLE KEYS */;
INSERT INTO `grapes` VALUES (1,'Greco di Tufo','Vero accusamus explicabo porro quo sit. Cupiditate ipsa id minus distinctio saepe cum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(2,'Marsanne','Ab occaecati repellat corrupti reprehenderit. Doloremque sit enim ut.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(3,'Touriga Nacional','Ex non sed sit aut cupiditate distinctio ipsa. Molestiae amet non minus sed est recusandae.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(4,'Tempranillo Blanco','Qui quis quia minus sit rerum quidem.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(5,'Aligoté','Numquam exercitationem qui qui accusantium possimus in distinctio.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(6,'Chardonnay','Hic earum et officiis debitis. Ut blanditiis aperiam nesciunt velit deleniti.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(7,'Tempranillo','Quia eius nisi hic aperiam et quae consectetur. Dicta sit quis optio.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(8,'Garnacha Blanca','Dolorem et tenetur exercitationem aperiam. Odit animi nihil dicta fugit aut temporibus cum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(9,'Tempranillo Blanco','Sed sequi atque eius sed. Eius adipisci deserunt quos voluptas.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(10,'Fiano','Quod harum et maiores est. Occaecati illum unde commodi et quidem.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(11,'Muscat','Earum quasi aut sed excepturi atque. Aut id et non fuga. Laborum aut et vero sunt facere nemo.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(12,'Grenache','Praesentium non quidem qui sit laborum ut. Nam accusamus doloribus est veniam excepturi.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(13,'Albariño','Occaecati natus odio corporis a in dicta. Alias nihil quae sint ipsam esse aliquid.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(14,'Roussanne','In aut quia sed corporis ut sed soluta.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(15,'Garnacha Blanca','Aut nisi tempore et eveniet quaerat eos tempora.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(16,'Verdejo','Laudantium ratione quaerat laudantium minus cumque id.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(17,'Corvina','Magnam quidem id nulla voluptas reprehenderit magni et at. Error qui quos sunt vel rerum non.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(18,'Palomino','Et assumenda consequatur sit odio reiciendis. Odio nam adipisci recusandae reiciendis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(19,'Nebbiolo','Voluptas doloribus adipisci rem esse est aut nisi necessitatibus.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(20,'Glera','Et dolores blanditiis aliquid alias doloremque. Voluptas sunt vitae sint qui sunt porro.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(21,'Zinfandel','Non autem dicta vero animi qui. Velit ullam quidem velit quis at veritatis aliquid.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(22,'Nero d\'Avola','Veniam qui impedit accusantium temporibus. Similique iure ipsum quidem aut et qui.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(23,'Savagnin','Impedit iste atque tenetur alias minus adipisci.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(24,'Pinot Noir','Autem amet quia porro saepe dicta dicta.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(25,'Marsanne','Voluptatem dolorem culpa non qui. Quae labore itaque illum quia quas.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(26,'Palomino','Quibusdam rerum voluptas et quis placeat error vel.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(27,'Aligoté','Officia magni quia possimus optio rem aut. Error omnis molestiae maxime modi delectus a.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(28,'Viognier','Qui expedita inventore similique. Temporibus officiis dolorem mollitia accusantium.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(29,'Palomino','Quia ullam vel perferendis autem odio. Reprehenderit voluptas a ut recusandae.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(30,'Tempranillo Blanco','Quas fugit harum harum iusto pariatur quam. Ut alias sit non ea et rem soluta qui.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(31,'Sauvignon Blanc','Aliquid enim sit aut alias. Quisquam quo quo non aspernatur iste voluptatibus.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(32,'Cinsault','Dolorem omnis ut impedit fuga accusantium enim. Commodi enim repudiandae eveniet est.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(33,'Nero d\'Avola','Voluptas fugiat temporibus ut consectetur. Non fugit deserunt consequatur est.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(34,'Carménère','Molestiae amet quibusdam reiciendis debitis voluptatibus quibusdam omnis hic.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(35,'Vermentino','Quibusdam tempore quis natus. Est nesciunt non soluta sunt et doloremque numquam.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(36,'Mourvèdre','Sed harum aperiam ipsa deserunt ducimus est vitae. Quaerat ea qui dolorum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(37,'Marsanne','Sequi et et magni qui eius enim.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(38,'Malbec','Sit sapiente ipsam et expedita. Ex deserunt repellendus ut ut fuga veritatis ad.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(39,'Cinsault','Est illo omnis molestiae incidunt blanditiis sunt.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(40,'Malbec','Voluptatibus rem expedita totam sunt autem laborum ipsa.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(41,'Greco di Tufo','Ratione modi odit vel ad. Excepturi fugit dolorem rerum dolore iure alias et.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(42,'Barbera','Eveniet eos consequatur in accusantium aspernatur. Ut delectus animi optio adipisci.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(43,'Cabernet Franc','Dolores molestiae odio et iusto eveniet earum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(44,'Vermentino','Deserunt debitis sint voluptatem neque voluptas nemo non.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(45,'Chenin Blanc','Nesciunt qui qui voluptas. Aut inventore consequuntur delectus sit dignissimos natus.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(46,'Aglianico','A odit rerum et porro repudiandae. Aut commodi nisi rerum nihil exercitationem vero magni.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(47,'Greco di Tufo','Totam rerum sint modi suscipit natus.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(48,'Touriga Nacional','Sed quis asperiores distinctio laborum omnis doloribus. Iste voluptatem ut recusandae ea.','2023-09-25 14:28:17','2023-09-25 14:28:17');
/*!40000 ALTER TABLE `grapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Trevion Jacobi','ddoyle@example.com','+32 421/82.18.10','Libero ex magni rem tempore. Ut sed temporibus ut. Voluptatibus ab error nulla. Nihil ab sed eos minima accusamus aut sit. Ipsum ipsum in voluptate et. Tenetur ea nihil rem earum eos suscipit magnam.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(2,'Mr. Vidal Reynolds','randi67@example.com','+32 463/07.10.95','Qui sit vel sit. Rerum accusamus iste saepe ipsum aut in. Nulla sed velit magni error. Consequatur delectus libero est.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(3,'Mr. Guido Bartell DVM','zdubuque@example.com','+32 453/05.88.82','Magnam enim iste est deleniti. Provident beatae cumque quibusdam hic. Deserunt ex eveniet qui laborum doloribus reprehenderit. Unde sed cupiditate et sunt. Modi aspernatur amet dignissimos dolor non voluptate. Quisquam veniam perspiciatis quia est saepe.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(4,'Dax Kilback','zschmeler@example.net','+32 480/77.76.20','Aut enim molestiae quia iure. Blanditiis sed illo ratione aut ducimus dolorum et nesciunt. Aspernatur eos tempore enim harum exercitationem. Sit dolorem animi laudantium facere tempore aliquid. Nisi corporis est quasi. Et suscipit sequi quis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(5,'Miss Myah Nikolaus','antonina.mills@example.com','+32 433/51.70.65','Harum earum necessitatibus soluta et animi nam. Sint qui commodi provident rerum et autem consequatur. A velit et nihil dolorum nostrum enim et ipsa.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(6,'Ena Casper','dach.maud@example.net','+32 474/67.16.18','Quae tenetur eveniet consequatur voluptas. Et rerum occaecati sunt aut totam dolores placeat. Vero ratione qui qui et expedita. Rerum nobis earum itaque ut.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(7,'Alayna Schinner','erdman.tremayne@example.org','+32 423/40.85.28','Perspiciatis vitae adipisci error magni. Inventore consequatur molestiae nam et. Vel corporis inventore et fugit voluptas. Sunt occaecati distinctio est nobis distinctio.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(8,'Brenna Rowe','cedrick07@example.net','+32 444/17.87.63','Consequatur quis libero et ipsam sit aperiam eum harum. Ratione velit nihil molestiae. Non qui dolores sed ut cupiditate illum id. Non eos qui alias et vero.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(9,'Kyle Kilback','crona.jevon@example.com','+32 425/42.40.42','Numquam tempora itaque qui consequatur laudantium impedit minus. Placeat earum error consequatur beatae enim dolore fuga. Voluptatem voluptatibus et laudantium dolor reprehenderit ut. Ut et error et.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(10,'Hulda Oberbrunner V','conroy.sean@example.net','+32 458/51.47.62','Beatae quo enim quo eos. Qui nesciunt aut eos.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(11,'Prof. Audrey Koepp','chauncey12@example.com','+32 482/82.73.76','Pariatur placeat beatae unde deserunt voluptas. Ut eligendi consequatur autem non tempore repellendus. Sapiente quis temporibus magnam consequatur quod.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(12,'Bart Halvorson','mjacobi@example.com','+32 411/74.28.27','Sunt rerum delectus provident nesciunt iste nemo autem inventore. Sint officia perspiciatis repellat blanditiis dicta quis. Quam hic nemo fuga perferendis suscipit non. Sit harum facilis mollitia itaque.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(13,'Urban Rau','awillms@example.com','+32 489/39.17.06','Qui autem illum sequi occaecati sunt. Et cupiditate tempora id quam eos qui consequatur quaerat. Ut asperiores nemo ea unde excepturi. Et eius ad et ut in et modi mollitia. Exercitationem quas deserunt at voluptatem provident est perferendis eum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(14,'Mrs. Marcelle Boyer I','farrell.jody@example.net','+32 498/84.96.78','Eos facilis velit sit rerum et quia praesentium. Ad voluptates est quam fugit odit. Pariatur voluptatibus sed iusto. Sed et temporibus molestias sunt ea ex corporis dolores. Repellendus quia natus pariatur ut quasi. Consequatur aspernatur quo dolore et.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(15,'Kristian Harris','rreilly@example.net','+32 438/57.26.14','Nostrum sed suscipit sapiente velit deserunt dolores. Adipisci occaecati consequatur voluptates. Et voluptatem facere exercitationem quidem corrupti veniam.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(16,'Odessa Nikolaus','violet.hirthe@example.org','+32 496/75.71.66','Ea sint omnis cupiditate dolore omnis ullam velit. Qui quisquam et quam repudiandae iusto incidunt consequatur. Et repellat perferendis consectetur facilis ut temporibus laborum cupiditate.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(17,'Marcus Labadie PhD','mhahn@example.com','+32 428/27.61.19','Facilis alias nesciunt et ipsa quia at. Enim in repellendus aspernatur facilis est.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(18,'Shaun Fadel DVM','bailey.emiliano@example.org','+32 412/45.54.36','Mollitia nostrum perspiciatis voluptatibus libero vitae. Et est beatae soluta aut voluptatum odit eligendi. Ab enim hic ut est laborum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(19,'Gerda Feil DDS','chauncey52@example.com','+32 429/65.87.45','Excepturi est asperiores adipisci velit. Eum rerum dicta ut qui deserunt cupiditate nulla. In culpa qui fugit laudantium ab sunt nulla.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(20,'Dr. Davon Reilly','johnny.wuckert@example.org','+32 438/28.99.96','Non quos aut repudiandae quia. Suscipit dolore eos laborum sequi sed illo iste. In unde porro facere animi alias. Beatae corporis autem reiciendis molestiae commodi voluptatem.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(21,'Eleanore Kunde','reichel.susan@example.org','+32 489/41.34.31','Iusto id ratione magni est. Enim dolorem distinctio possimus molestiae delectus ipsum. Ex aut voluptatibus veniam perferendis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(22,'Hunter Towne DDS','icassin@example.org','+32 486/71.43.31','Ex dolorem numquam voluptate deserunt animi eveniet. Vel magni id quaerat vel culpa. Quisquam omnis odit reiciendis temporibus sequi quia quo unde. Est voluptas eum ut iure voluptatem.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(23,'Maxwell McCullough','auer.beaulah@example.org','+32 484/76.99.93','Ipsa qui laudantium est totam atque quis. Deleniti accusantium amet perferendis et. Quis qui veritatis iure sapiente quasi. Placeat est asperiores voluptas sed iure quibusdam a.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(24,'Mr. Hubert Medhurst V','clay70@example.com','+32 463/32.09.66','Labore distinctio voluptas placeat est distinctio consequatur sunt. Eum voluptate ut omnis officia qui. Non quos mollitia velit fugiat. Et explicabo laboriosam vitae qui occaecati.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(25,'Evalyn Corwin','chasity06@example.org','+32 450/63.52.89','Et pariatur deserunt molestiae nihil sed. Dignissimos inventore sapiente temporibus molestiae. Voluptas ipsum assumenda aut dolore dignissimos ut fugit.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(26,'Davonte Kunde III','lemke.joesph@example.org','+32 420/37.63.31','Consequatur quo commodi et sit. At vitae harum totam qui. Qui eum dolores eius nisi aut veritatis accusantium aut. Ex totam odio in. Ipsa dolor sit sunt et officia. Alias magnam a earum est eveniet veritatis sit. Ipsum officia deserunt non ratione.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(27,'Melvin Franecki','rswift@example.net','+32 482/23.08.01','Et aut natus similique et reprehenderit. Praesentium voluptas amet repellendus soluta expedita placeat. Commodi eum blanditiis ut aspernatur.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(28,'Phoebe Runte','murray.lexie@example.com','+32 458/09.76.80','Harum sint rerum aut voluptatem quam et. Non iste autem repudiandae aperiam. Voluptatem voluptate consectetur qui qui. Illum labore nihil sit et libero totam repellendus. Esse et dolores reiciendis et et fuga. Eaque ut corrupti ut non quia fuga atque.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(29,'Mrs. Christine Champlin Jr.','shyanne.upton@example.net','+32 459/83.38.11','Provident et dolor sint quae veritatis optio dolore. Assumenda consequatur aut similique voluptas qui aut facere nostrum. Et cum fugit et. Quam dolore nostrum ex est eos sit.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(30,'Myrna Barrows','bayer.jeanne@example.net','+32 478/57.46.77','Mollitia modi odio sed fugiat velit sapiente atque. Recusandae minima tenetur consequatur aut est ipsum ut. Sed dolores et quos aut veritatis eveniet. Sed sint vitae quod explicabo iusto nisi quaerat.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(31,'Mr. Leonardo Marquardt','hessel.mallie@example.org','+32 410/63.20.88','Laborum veniam sed quibusdam nisi consequatur consequatur veritatis odit. Nostrum deserunt nobis et non maiores incidunt perspiciatis quae. Dolores suscipit velit sit sit iste.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(32,'Prof. Ismael Fisher PhD','keara97@example.com','+32 425/46.12.49','Sed velit et illo. Modi perspiciatis nihil consequatur natus delectus quia et. Magni doloribus id labore repellendus consequatur harum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(33,'Joshuah Corwin DDS','predovic.krystel@example.com','+32 438/73.37.59','Natus consequatur dignissimos quo. Aut optio veritatis dolor non rerum consequatur esse. Modi consectetur ratione quo maxime pariatur ab voluptatem perspiciatis. Optio eos dolorum est et vero veniam cumque odit.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(34,'Keara Huels','lloyd35@example.com','+32 425/66.33.42','Ut quaerat porro perspiciatis est autem unde voluptas rerum. Natus ut eos magni aperiam dolorem tenetur. Cum fugit odio aliquid voluptatibus ad ea et eaque. Eaque et accusamus vel animi voluptas quo possimus.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(35,'Kenton Sanford','heathcote.kasandra@example.com','+32 465/10.38.75','Incidunt maiores dolores molestiae autem et. Quisquam quis eum minima est reprehenderit non voluptas possimus. Rerum omnis est saepe. Aut nihil repellendus sapiente et. Rerum at doloribus nihil in hic corporis aspernatur.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(36,'Otha Padberg','woodrow22@example.com','+32 462/58.16.94','Rem odio quas et quia pariatur. Rerum rem dolorem sed assumenda. Provident deleniti ut officiis non.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(37,'Mrs. Carolyn Altenwerth V','eryn35@example.org','+32 483/53.03.28','Non natus perspiciatis optio neque. Minima illum doloremque quas et inventore assumenda omnis quisquam. Error molestiae in necessitatibus error. Sequi sed dolorem quia. Distinctio autem iste quia esse cum.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(38,'Oswald Jakubowski','hudson.jacobson@example.net','+32 417/39.26.46','Iusto tenetur tenetur qui quo vero porro cum. Ipsam sequi nesciunt repellat necessitatibus omnis odio quaerat. Blanditiis et quibusdam rerum consectetur deserunt. Tempora qui earum voluptas harum quaerat reprehenderit ullam.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(39,'Gilda Hagenes','bryana.hodkiewicz@example.net','+32 477/31.05.48','Natus velit rerum culpa totam voluptatum. Repellendus vero veniam nisi harum. Reprehenderit officia exercitationem facere omnis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(40,'Derick Conn','bertram16@example.com','+32 432/93.44.75','Facilis ut aut necessitatibus laboriosam laboriosam ab. Cupiditate consequuntur aliquid praesentium architecto animi deleniti. Ut quo reiciendis consequatur accusantium omnis qui omnis culpa.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(41,'Lucienne Mayert','brandon78@example.net','+32 462/77.72.96','Molestiae ut facilis quae rerum molestias praesentium. In sint in velit aut ducimus. Et alias officia ea optio aut. Magni quo sed delectus architecto sit est ullam. Debitis rerum porro aut sint.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(42,'Mrs. America Veum','imorar@example.org','+32 443/79.74.55','Labore rerum quas illo architecto itaque. Tenetur iusto fugit voluptatem suscipit occaecati voluptatem. Exercitationem quam autem eaque saepe porro. Est aut rerum ut. Numquam ipsam expedita quia suscipit omnis perferendis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(43,'Mr. Arturo Streich','nikolas.effertz@example.org','+32 435/92.48.46','Consequuntur non magnam eum maxime sit aliquid. Ad iusto veritatis expedita. Ab sint dolorum sequi laborum quis molestias. Esse sint velit sint. Temporibus nihil explicabo blanditiis.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(44,'Logan Ferry','jsmith@example.com','+32 458/92.36.73','Vero blanditiis officia repudiandae beatae incidunt debitis dolorem et. Sunt rerum eos porro sunt. In aut quod sint nobis illo fugiat non consequatur.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(45,'Keyon Heathcote','dubuque.jodie@example.com','+32 458/82.33.21','Sit sunt laborum saepe repellendus molestiae et fugit. Qui et saepe quas. Quasi vel ut possimus culpa corporis ut velit. Vero velit fuga aut molestiae maiores ut.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(46,'Miss Yessenia Wolff','constantin53@example.com','+32 419/10.55.11','Qui illum voluptate iure quod. Rerum quia molestiae amet facere fugiat modi. Et mollitia sint consequatur et nostrum accusantium. Architecto voluptas aut maxime voluptas saepe dolorem enim. Quia qui voluptatibus et quia et dolorum dolorum tempore.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(47,'Marianna Huel','lakin.uriah@example.net','+32 439/18.33.38','Omnis fugiat inventore ut corrupti laudantium aut distinctio. Voluptatem consequatur non sit. Sed neque doloremque consequuntur et amet unde porro.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(48,'Dr. Timothy Doyle','camden49@example.org','+32 449/28.09.59','Id odit et quod esse. Facilis ipsum quia doloribus iure voluptatem facere sunt quia. Culpa modi nesciunt eos enim velit et culpa.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(49,'May Lueilwitz','mhintz@example.net','+32 483/71.73.84','Velit ut iure cumque laborum dolor. Tempora aut ipsa vel. Repudiandae voluptas natus qui dolorum. Voluptatem enim sed et nemo.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(50,'Nina Ferry DDS','mante.cayla@example.org','+32 452/12.62.46','Temporibus maiores qui et praesentium quia nihil qui. Minus quisquam enim unde ad quam consectetur. Et quidem consequatur qui. Et deserunt similique provident ea eligendi eveniet quis repudiandae.','2023-09-25 14:28:17','2023-09-25 14:28:17'),(51,'ututyutyu','uytuytuty@hgfgh.dsd','46546546546','tyutyuytufsdfdsffffffdsdfsdfsdfsdfsfsfsdfsdf','2023-09-25 17:16:27','2023-09-25 17:16:27');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_19_125304_create_types_table',1),(6,'2023_09_19_125404_create_grapes_table',1),(7,'2023_09_19_125504_create_wines_table',1),(8,'2023_09_23_110656_create_messages_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Rubis','2023-09-25 14:28:17','2023-09-25 14:28:17'),(2,'Écarlate','2023-09-25 14:28:17','2023-09-25 14:28:17'),(3,'Jaune','2023-09-25 14:28:17','2023-09-25 14:28:17'),(4,'Doré','2023-09-25 14:28:17','2023-09-25 14:28:17'),(5,'Saumon','2023-09-25 14:28:17','2023-09-25 14:28:17'),(6,'Argenté','2023-09-25 14:28:17','2023-09-25 14:28:17'),(7,'Argenté','2023-09-25 14:28:17','2023-09-25 14:28:17'),(8,'Bronze','2023-09-25 14:28:17','2023-09-25 14:28:17'),(9,'Vert','2023-09-25 14:28:17','2023-09-25 14:28:17'),(10,'Or','2023-09-25 14:28:17','2023-09-25 14:28:17'),(11,'Rouge','2023-09-25 14:28:17','2023-09-25 14:28:17'),(12,'Rouge','2023-09-25 14:28:17','2023-09-25 14:28:17'),(13,'Bronze','2023-09-25 14:28:17','2023-09-25 14:28:17'),(14,'Blanc','2023-09-25 14:28:17','2023-09-25 14:28:17'),(15,'Rubis','2023-09-25 14:28:17','2023-09-25 14:28:17'),(16,'Pourpre','2023-09-25 14:28:17','2023-09-25 14:28:17'),(17,'Brun','2023-09-25 14:28:17','2023-09-25 14:28:17'),(18,'Or','2023-09-25 14:28:17','2023-09-25 14:28:17'),(19,'Or','2023-09-25 14:28:17','2023-09-25 14:28:17'),(20,'Blanc','2023-09-25 14:28:17','2023-09-25 14:28:17');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','admin@app.com','2023-09-25 14:28:16','$2y$10$aHJiLNETMxKBXorNWmM0UOUhT0nTfmCx2lyf4ZYLlX1g.Braa6xaG','6zBTO7kyhp3riu16ZkcBuUZDj8Ia2jNMAXDKJuqcQ2iG1PBFWbNOG6ZczwKK','2023-09-25 14:28:17','2023-09-25 14:28:17'),(2,'Mrs. Kattie Christiansen DDS','makayla.batz@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jSJWQ5zw41','2023-09-25 14:28:17','2023-09-25 14:28:17'),(3,'Orie Boyle II','onolan@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rc6GmCDf3E','2023-09-25 14:28:17','2023-09-25 14:28:17'),(4,'Miss Twila DuBuque','daniel.sebastian@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JJoIzq7qNJ','2023-09-25 14:28:17','2023-09-25 14:28:17'),(5,'Oscar Krajcik','tyree67@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1cPsBFzvEv','2023-09-25 14:28:17','2023-09-25 14:28:17'),(6,'Deion Schinner','sipes.reynold@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EijWX4AiUU','2023-09-25 14:28:17','2023-09-25 14:28:17'),(7,'Shania Hill DVM','xhettinger@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','A8H0PPXULc','2023-09-25 14:28:17','2023-09-25 14:28:17'),(8,'Lucius Abernathy','joaquin.emmerich@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6b2FRXdTUR','2023-09-25 14:28:17','2023-09-25 14:28:17'),(9,'Dr. Ewell Purdy','qcorwin@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xPfgCiuDWw','2023-09-25 14:28:17','2023-09-25 14:28:17'),(10,'Daisy Abernathy PhD','runolfsson.vickie@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sAujQuMw7h','2023-09-25 14:28:17','2023-09-25 14:28:17'),(11,'Scarlett Adams','gerhold.alycia@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tjqVqKKYRd','2023-09-25 14:28:17','2023-09-25 14:28:17'),(12,'Dr. Hailey Kertzmann','lvon@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WWiQ9bhgoi','2023-09-25 14:28:17','2023-09-25 14:28:17'),(13,'Dr. Juston Wolf II','hudson.jordyn@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PduSaDd88D','2023-09-25 14:28:17','2023-09-25 14:28:17'),(14,'Ms. Eldora Schimmel','bradford.haley@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mXuccBf9qf','2023-09-25 14:28:17','2023-09-25 14:28:17'),(15,'Mrs. Rebeka Moen','uterry@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cjMsKxwm0l','2023-09-25 14:28:17','2023-09-25 14:28:17'),(16,'Ahmed Bergnaum','kianna.bechtelar@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hdCT90nMUn','2023-09-25 14:28:17','2023-09-25 14:28:17'),(17,'Prof. Fae Abbott','tlangworth@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2Bg6jToguo','2023-09-25 14:28:17','2023-09-25 14:28:17'),(18,'Dr. Blanche Effertz','berta66@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iAvSMyrkR8','2023-09-25 14:28:17','2023-09-25 14:28:17'),(19,'Brant Runolfsson','isai36@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DD9fAzZr9T','2023-09-25 14:28:17','2023-09-25 14:28:17'),(20,'Isabell Kuhn DVM','marlon00@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','I51N8Xt1av','2023-09-25 14:28:17','2023-09-25 14:28:17'),(21,'Lew Collins','hassie.lesch@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OLCrV5urjs','2023-09-25 14:28:17','2023-09-25 14:28:17'),(22,'Sabryna Smith','jennifer.vonrueden@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','T0ZprygduO','2023-09-25 14:28:17','2023-09-25 14:28:17'),(23,'Lessie Halvorson','trinity00@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','0M2gQKFzXa','2023-09-25 14:28:17','2023-09-25 14:28:17'),(24,'Tad McCullough','uhodkiewicz@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HJ5U8eawQ9','2023-09-25 14:28:17','2023-09-25 14:28:17'),(25,'Dr. Bobbie Morar PhD','horacio64@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tajPDuIE0r','2023-09-25 14:28:17','2023-09-25 14:28:17'),(26,'Shaylee Glover','wgulgowski@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','t3LAYI2FCv','2023-09-25 14:28:17','2023-09-25 14:28:17'),(27,'Lorena Wolff','rudolph.baumbach@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WUSslsx5T3','2023-09-25 14:28:17','2023-09-25 14:28:17'),(28,'Tony Stracke','carson23@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rC4KA5zsYM','2023-09-25 14:28:17','2023-09-25 14:28:17'),(29,'Alfredo O\'Keefe','jaron20@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ixTq2ZlCXd','2023-09-25 14:28:17','2023-09-25 14:28:17'),(30,'Mr. Alexandro Morissette III','davis.lourdes@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','0r5YwelsRu','2023-09-25 14:28:17','2023-09-25 14:28:17'),(31,'Orie Kovacek','jakubowski.bernardo@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Eg5xzHLlyN','2023-09-25 14:28:17','2023-09-25 14:28:17'),(32,'Prof. Lincoln Buckridge IV','zdavis@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Tb6cqAmPq0','2023-09-25 14:28:17','2023-09-25 14:28:17'),(33,'Effie Rippin','jaleel.gulgowski@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EVEHFFXJvq','2023-09-25 14:28:17','2023-09-25 14:28:17'),(34,'Prof. Chadd Jakubowski','dewitt.dubuque@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5xYqeze9Ma','2023-09-25 14:28:17','2023-09-25 14:28:17'),(35,'Cordelia Kris','reece39@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','G9gDV3Rpvn','2023-09-25 14:28:17','2023-09-25 14:28:17'),(36,'Flavie Purdy','demond02@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QQVlN4S1ph','2023-09-25 14:28:17','2023-09-25 14:28:17'),(37,'Aleen Bahringer I','jeanne42@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9MtwbX3haZ','2023-09-25 14:28:17','2023-09-25 14:28:17'),(38,'Susan Schuppe DVM','gerhold.philip@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uBzTz6rVaa','2023-09-25 14:28:17','2023-09-25 14:28:17'),(39,'Dr. Derek Feil DVM','qrath@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2CLQF5fwL5','2023-09-25 14:28:17','2023-09-25 14:28:17'),(40,'Prof. Emory Sanford','vbraun@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TdVPTVwDuS','2023-09-25 14:28:17','2023-09-25 14:28:17'),(41,'Aileen Mosciski','lehner.roselyn@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KlyaXo67JH','2023-09-25 14:28:17','2023-09-25 14:28:17'),(42,'Bernie Pouros','alexis.wilderman@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YWVIHS4TyO','2023-09-25 14:28:17','2023-09-25 14:28:17'),(43,'Prof. Itzel Schultz','bins.stuart@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','oWbpbwEU5z','2023-09-25 14:28:17','2023-09-25 14:28:17'),(44,'Jennie Boyle','glenna.donnelly@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','IChdlCeB59','2023-09-25 14:28:17','2023-09-25 14:28:17'),(45,'Mr. Wiley Buckridge','roslyn51@example.com','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HhqqZw3w0v','2023-09-25 14:28:17','2023-09-25 14:28:17'),(46,'Alexane Thompson','schmidt.alysa@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','v0H30hqneK','2023-09-25 14:28:17','2023-09-25 14:28:17'),(47,'Cleve Sanford','zwolff@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7AhzLMFwCS','2023-09-25 14:28:17','2023-09-25 14:28:17'),(48,'Araceli Hudson','carson31@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VQ5CjHW4aQ','2023-09-25 14:28:17','2023-09-25 14:28:17'),(49,'Laney Walter','lesley67@example.net','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zzXAgiph2L','2023-09-25 14:28:17','2023-09-25 14:28:17'),(50,'Dr. Elmore Flatley Sr.','pasquale43@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1DJE0Jc7xf','2023-09-25 14:28:17','2023-09-25 14:28:17'),(51,'Cara Haley','glesch@example.org','2023-09-25 14:28:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XA07zdnZJv','2023-09-25 14:28:17','2023-09-25 14:28:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wines`
--

DROP TABLE IF EXISTS `wines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `source` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_id` bigint(20) unsigned NOT NULL,
  `type_id` bigint(20) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wines_grape_id_foreign` (`grape_id`),
  KEY `wines_type_id_foreign` (`type_id`),
  CONSTRAINT `wines_grape_id_foreign` FOREIGN KEY (`grape_id`) REFERENCES `grapes` (`id`),
  CONSTRAINT `wines_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wines`
--

LOCK TABLES `wines` WRITE;
/*!40000 ALTER TABLE `wines` DISABLE KEYS */;
INSERT INTO `wines` VALUES (1,'Vénérable Blanc de Noirs Charmant','Voluptatem officiis quos et quibusdam quia ipsum nisi. Dignissimos deserunt rerum ea vitae.','20230925181852.jpg',1970,45,12,49.90,'2023-09-25 14:28:17','2023-09-25 17:18:52'),(2,'Vif Sec Irrésistible','Porro atque similique et totam quia est. Sint voluptatem explicabo aut ea.','default-wine-150.png',2009,34,20,48.14,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(3,'Glorieux Millésime Féerique','Labore perferendis alias voluptas eaque aut aliquid culpa. Aliquid nihil autem dolore est.','default-wine-150.png',2013,42,12,34.75,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(4,'Vibrant Cabernet Mystérieux','Facilis deleniti porro rem distinctio. Debitis esse ea aliquam nulla quam dolorum maxime.','default-wine-150.png',2018,42,7,41.42,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(5,'Magnifique Champêtre Captivant','Sit similique ipsa adipisci aliquam. Et sequi et autem. Nihil numquam repudiandae eum dolorem.','default-wine-150.png',1981,27,18,19.20,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(6,'Vif Terroir Raffiné','Reprehenderit dolores rerum illum dicta maxime. Quae in aut cumque est aut.','20230925182009.jpg',1979,2,9,11.42,'2023-09-25 14:28:17','2023-09-25 17:20:09'),(7,'Fascinant Clos Prestigieux','Sapiente eligendi odit quod vero nisi sint saepe. Veniam magni voluptatem rerum.','default-wine-150.png',2005,15,11,13.17,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(8,'Séraphique Méditerranéen Exquis','Et id odit perspiciatis est dolor. Voluptatem at molestiae impedit dolorem est.','default-wine-150.png',1997,16,17,29.06,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(9,'Sauvage Fruité Époustouflant','Sit sunt sit provident nulla minima expedita magni. Autem aliquid eum ipsam officiis autem.','default-wine-150.png',2022,14,15,49.95,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(10,'Emblématique Sec Inoubliable','Eaque nemo labore et in omnis numquam. Impedit omnis asperiores debitis architecto deserunt.','default-wine-150.png',1988,5,19,19.14,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(11,'Délicieux Coteaux Impressionnant','Est beatae eos quasi voluptas est.','default-wine-150.png',1985,27,12,22.34,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(12,'Vénérable Château Vital','Quo eligendi nulla qui necessitatibus sequi mollitia.','default-wine-150.png',2022,4,15,45.76,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(13,'Vibrant Corsé Lumineux','Est veritatis id facilis quos quo voluptate.','default-wine-150.png',1997,8,10,28.05,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(14,'Solennel Clos Sublime','Et neque corrupti eum consequuntur dolores.','default-wine-150.png',1973,28,18,39.28,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(15,'Inoubliable Brut Éblouissant','Ut est omnis dolores iusto eius maxime. Sed corporis nam esse.','default-wine-150.png',2020,19,6,38.05,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(16,'Délicieux Moelleux Imposant','Dicta dolorum voluptatem et. Illum qui excepturi ipsum quaerat odit corrupti sit.','default-wine-150.png',1991,46,11,13.82,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(17,'Ardent Champagne Raffiné','Maiores architecto nam in corporis dolorem reiciendis quam deserunt.','default-wine-150.png',1997,9,13,32.31,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(18,'Paisible Tonneau Irrésistible','Non quis sint ut quia iste sint. Blanditiis maiores est labore commodi perferendis sed.','default-wine-150.png',2005,17,17,32.25,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(19,'Magnifique Pinot Exceptionnel','Libero et pariatur sit quia. Voluptate dicta aut quis laboriosam.','default-wine-150.png',1980,2,20,40.28,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(20,'Lumineux Millésime Glorieux','Iste voluptatibus fuga aut minima dolore sequi neque aut.','default-wine-150.png',1999,9,2,37.14,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(21,'Mystérieux Riche Divin','Perferendis consectetur incidunt aut quia pariatur consequatur quia. Vitae eos est harum qui.','default-wine-150.png',2015,26,17,24.48,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(22,'Serein Brut Mystérieux','Dolorum consequuntur ea fugiat quia et.','default-wine-150.png',1971,32,14,25.02,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(23,'Noble Château Séduisant','Aut tempora voluptatem error. Omnis vitae doloremque sed est sed quasi provident.','default-wine-150.png',2013,41,5,16.80,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(24,'Grand Brut Solennel','Natus veniam doloremque quod quidem. Et et perferendis ut exercitationem.','default-wine-150.png',1972,25,19,31.66,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(25,'Délicieux Plateau Merveilleux','Animi ad accusantium dolorem quod. Vitae adipisci nesciunt voluptatibus accusantium.','default-wine-150.png',1971,20,8,31.85,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(26,'Séraphique Méditerranéen Splendide','Mollitia pariatur consequuntur voluptatibus quidem.','default-wine-150.png',2003,11,8,29.90,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(27,'Célèbre Beaujolais Sincère','Nesciunt placeat cum eos quod nostrum eligendi.','default-wine-150.png',1982,41,14,44.15,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(28,'Impérial Méditerranéen Apaisant','Enim dolor officia doloremque porro et consequatur.','default-wine-150.png',2004,32,13,29.91,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(29,'Majestueux Forêt Irrésistible','Sed quos voluptatem rerum quidem. Est harum illum similique.','default-wine-150.png',2002,4,14,10.30,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(30,'Charmant Fruité Charismatique','Quis temporibus rerum ducimus aut. Vel quaerat qui fuga debitis voluptas doloribus.','default-wine-150.png',2004,18,14,45.55,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(31,'Élégant Méditerranéen Merveilleux','Consequatur eos sequi labore corrupti. Deleniti aliquid veritatis voluptas in deleniti dicta.','default-wine-150.png',1971,1,12,21.48,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(32,'Distingué Noir Savoureux','Tempora repudiandae ipsam explicabo tempore quam nam.','default-wine-150.png',1997,32,2,16.33,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(33,'Vénérable Brut Charmant','Exercitationem animi unde voluptatem est nihil quibusdam.','default-wine-150.png',1977,48,15,30.95,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(34,'Vibrant Prestige Époustouflant','Cum et excepturi aut inventore illo. Tempora laborum non qui.','default-wine-150.png',1973,40,16,14.80,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(35,'Ardent Rocher Illuminant','Repellat explicabo vitae eveniet et sit.','default-wine-150.png',1980,4,5,41.17,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(36,'Majestueux Sauvignon Étonnant','Libero quidem at ullam ut assumenda laudantium. Incidunt ea deleniti voluptatum reiciendis.','default-wine-150.png',1991,44,5,16.13,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(37,'Ardent Chardonnay Captivant','Ratione nihil minima et nisi laboriosam maiores doloribus ut.','default-wine-150.png',2008,32,9,42.03,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(38,'Chaleureux Cabernet Magique','Est voluptas totam error. Recusandae qui molestiae sit nostrum dolorem quaerat hic.','default-wine-150.png',2018,32,7,17.26,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(39,'Vif Sauvignon Raffiné','Incidunt necessitatibus cum ut culpa praesentium optio sit quam.','default-wine-150.png',2007,38,10,11.41,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(40,'Vénérable Prestige Divin','Velit aliquid maxime reprehenderit modi repellat.','default-wine-150.png',1985,39,1,38.84,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(41,'Chaleureux Blanc de Noirs Exceptionnel','Assumenda ratione iusto rerum deserunt amet.','default-wine-150.png',2015,41,4,32.67,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(42,'Envoûtant Forêt Serein','Quo aut repellendus aut et neque placeat. Reiciendis sed et aut et voluptatem aut.','default-wine-150.png',2010,41,2,37.46,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(43,'Sauvage Léger Inspirant','Laboriosam voluptatum animi perferendis a. Maxime at doloribus ipsam sequi.','default-wine-150.png',1984,31,11,35.13,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(44,'Fascinant Briseur Solennel','Earum ut aut nostrum expedita cupiditate aut tempore.','default-wine-150.png',2022,11,18,39.15,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(45,'Noble Blanc de Blancs Solennel','Fugiat voluptatibus nulla et ut. Unde ullam consectetur quis beatae tenetur.','default-wine-150.png',1996,23,7,41.69,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(46,'Lumineux Colline Éblouissant','Et distinctio voluptatibus animi esse sint illum cumque ipsam.','default-wine-150.png',1971,23,20,44.88,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(47,'Charismatique Champêtre Raffiné','Aspernatur quisquam accusantium quisquam doloremque mollitia non sapiente.','default-wine-150.png',2012,9,14,44.00,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(48,'Vital Sec Charismatique','Quis veniam eligendi laudantium quasi eaque. Voluptatem pariatur eveniet nihil.','default-wine-150.png',1980,1,20,35.64,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(49,'Sauvage Champêtre Exquis','Harum omnis odit nesciunt et deleniti dolore modi et.','default-wine-150.png',2013,21,19,23.47,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(50,'Caché Pinot Éblouissant','Culpa sint necessitatibus quo.','default-wine-150.png',1986,27,1,23.20,'2023-09-25 14:28:17','2023-09-25 14:28:17'),(51,'Wan-Sook TOMSON','treterterterterter','20230925182356.jpg',2023,1,1,10.00,'2023-09-25 17:23:56','2023-09-25 17:23:56');
/*!40000 ALTER TABLE `wines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26  3:02:11
