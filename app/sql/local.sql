-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-01-17 00:42:09','2020-01-17 00:42:09','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://amazing-college.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://amazing-college.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Amazing College','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jared.hodgkins@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:151:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','41','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','39','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1594773729','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1579790531;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579792043;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579792044;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579826530;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579826531;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','&M0.3$6H*71`-8C+h}+xT+[?ml%NJXB5A1J5hy(yt((jDy:tH^yUy?_7Tq`4!h!~','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','GsKKI)VEo]!zZ@56Bnp}Ud{jq)qQkg1rvKf|=-a4dp{*D Ns{+x$e:;h7EBy%n= ','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579787229;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579787229;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579274641;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_timeout_browser_05f578eb3fa9f908f5d74ef7bf6207a5','1579878443','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_browser_05f578eb3fa9f908f5d74ef7bf6207a5','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33','1579878443','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (147,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (149,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (171,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (217,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (223,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (237,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (238,'recovery_mode_email_last_sent','1579556397','yes');
INSERT INTO `wp_options` VALUES (281,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1579771231','no');
INSERT INTO `wp_options` VALUES (282,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>','no');
INSERT INTO `wp_options` VALUES (289,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579787229;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (292,'_transient_timeout_plugin_slugs','1579817111','no');
INSERT INTO `wp_options` VALUES (293,'_transient_plugin_slugs','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','no');
INSERT INTO `wp_options` VALUES (294,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1579774790','no');
INSERT INTO `wp_options` VALUES (295,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:52:\"Web Accessibility in 2020 - Headache or Opportunity?\";s:3:\"url\";s:72:\"https://www.meetup.com/Southern-Maine-WordPress-Meetup/events/267996133/\";s:6:\"meetup\";s:40:\"Greater Portland, Maine WordPress Meetup\";s:10:\"meetup_url\";s:55:\"https://www.meetup.com/Southern-Maine-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-02-05 17:30:00\";s:8:\"end_date\";s:19:\"2020-02-05 19:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Portland, ME, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:43.654491424561002;s:9:\"longitude\";d:-70.254295349120994;}}}}','no');
INSERT INTO `wp_options` VALUES (297,'_site_transient_timeout_theme_roots','1579789029','no');
INSERT INTO `wp_options` VALUES (298,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1579292144:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1579292766:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1579364309:1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1579474143:1');
INSERT INTO `wp_postmeta` VALUES (11,13,'_edit_lock','1579366892:1');
INSERT INTO `wp_postmeta` VALUES (12,3,'_edit_lock','1579365243:1');
INSERT INTO `wp_postmeta` VALUES (13,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (14,3,'_wp_trash_meta_time','1579365391');
INSERT INTO `wp_postmeta` VALUES (15,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (16,18,'_edit_lock','1579366948:1');
INSERT INTO `wp_postmeta` VALUES (17,20,'_edit_lock','1579367873:1');
INSERT INTO `wp_postmeta` VALUES (18,22,'_edit_lock','1579444000:1');
INSERT INTO `wp_postmeta` VALUES (19,24,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (20,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (21,24,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (22,24,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (23,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (24,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_url','http://amazing-college.local/');
INSERT INTO `wp_postmeta` VALUES (28,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (29,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,25,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (31,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (32,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,28,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (58,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (91,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (92,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (93,32,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (94,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (95,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (96,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (97,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (98,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,32,'_menu_item_orphaned','1579444348');
INSERT INTO `wp_postmeta` VALUES (100,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,33,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (103,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_orphaned','1579444348');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (111,34,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (112,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (113,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (115,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,34,'_menu_item_orphaned','1579444348');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (126,35,'_menu_item_orphaned','1579444348');
INSERT INTO `wp_postmeta` VALUES (127,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (128,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (129,36,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (130,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (131,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (132,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (133,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (134,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (135,36,'_menu_item_orphaned','1579444348');
INSERT INTO `wp_postmeta` VALUES (136,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (137,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (138,37,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (139,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (140,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (141,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (142,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (143,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (145,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (146,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (147,38,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (148,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (149,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (150,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (151,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (152,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (154,39,'_edit_lock','1579474156:1');
INSERT INTO `wp_postmeta` VALUES (155,41,'_edit_lock','1579474165:1');
INSERT INTO `wp_postmeta` VALUES (156,43,'_edit_lock','1579548497:1');
INSERT INTO `wp_postmeta` VALUES (159,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (160,45,'_edit_lock','1579553707:1');
INSERT INTO `wp_postmeta` VALUES (161,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (162,46,'_edit_lock','1579620098:1');
INSERT INTO `wp_postmeta` VALUES (163,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (164,47,'_edit_lock','1579617863:1');
INSERT INTO `wp_postmeta` VALUES (170,43,'_wp_old_slug','we-won-an-award__trashed');
INSERT INTO `wp_postmeta` VALUES (171,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,49,'_edit_lock','1579555503:1');
INSERT INTO `wp_postmeta` VALUES (173,47,'event_date','20200720');
INSERT INTO `wp_postmeta` VALUES (174,47,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (175,46,'event_date','20200118');
INSERT INTO `wp_postmeta` VALUES (176,46,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (177,45,'event_date','20200515');
INSERT INTO `wp_postmeta` VALUES (178,45,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (179,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (180,51,'_edit_lock','1579556742:1');
INSERT INTO `wp_postmeta` VALUES (181,51,'event_date','20201210');
INSERT INTO `wp_postmeta` VALUES (182,51,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (183,52,'_edit_lock','1579557306:1');
INSERT INTO `wp_postmeta` VALUES (184,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,54,'_edit_lock','1579558203:1');
INSERT INTO `wp_postmeta` VALUES (186,54,'event_date','20070101');
INSERT INTO `wp_postmeta` VALUES (187,54,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (188,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,55,'_edit_lock','1579558339:1');
INSERT INTO `wp_postmeta` VALUES (190,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (191,56,'_edit_lock','1579558356:1');
INSERT INTO `wp_postmeta` VALUES (192,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,57,'_edit_lock','1579558381:1');
INSERT INTO `wp_postmeta` VALUES (194,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,58,'_edit_lock','1579618861:1');
INSERT INTO `wp_postmeta` VALUES (196,46,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (197,46,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (198,47,'related_programs','a:1:{i:0;s:2:\"57\";}');
INSERT INTO `wp_postmeta` VALUES (199,47,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (200,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (201,60,'_edit_lock','1579731026:1');
INSERT INTO `wp_postmeta` VALUES (202,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (203,61,'_edit_lock','1579731444:1');
INSERT INTO `wp_postmeta` VALUES (204,61,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (205,61,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (206,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (207,62,'_edit_lock','1579659718:1');
INSERT INTO `wp_postmeta` VALUES (208,62,'event_date','20200711');
INSERT INTO `wp_postmeta` VALUES (209,62,'_event_date','field_5e2612aaeb887');
INSERT INTO `wp_postmeta` VALUES (210,62,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (211,62,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (218,60,'related_programs','a:1:{i:0;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (219,60,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (220,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,65,'_edit_lock','1579730978:1');
INSERT INTO `wp_postmeta` VALUES (224,65,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (225,65,'_related_programs','field_5e2628dbe9036');
INSERT INTO `wp_postmeta` VALUES (228,67,'_wp_attached_file','2020/01/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (229,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2020/01/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (230,65,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (231,68,'_wp_attached_file','2020/01/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (232,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/01/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (233,60,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (234,69,'_wp_attached_file','2020/01/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (235,69,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/01/barksalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (236,61,'_thumbnail_id','69');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-01-17 00:42:09','2020-01-17 00:42:09','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-01-17 00:42:09','2020-01-17 00:42:09','',0,'http://amazing-college.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-01-17 00:42:09','2020-01-17 00:42:09','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amazing-college.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-01-17 00:42:09','2020-01-17 00:42:09','',0,'http://amazing-college.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-01-17 00:42:09','2020-01-17 00:42:09','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://amazing-college.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-01-18 16:36:31','2020-01-18 16:36:31','',0,'http://amazing-college.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-01-17 15:07:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-17 15:07:24','0000-00-00 00:00:00','',0,'http://amazing-college.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-01-17 20:18:13','2020-01-17 20:18:13','<!-- wp:paragraph -->\n<p>This is a bit of test info</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2020-01-17 20:18:13','2020-01-17 20:18:13','',0,'http://amazing-college.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-01-17 20:18:13','2020-01-17 20:18:13','<!-- wp:paragraph -->\n<p>This is a bit of test info</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-01-17 20:18:13','2020-01-17 20:18:13','',5,'http://amazing-college.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-01-17 20:18:40','2020-01-17 20:18:40','<!-- wp:paragraph -->\n<p>This is even more test post data to play with.</p>\n<!-- /wp:paragraph -->','Test Post 2','','publish','open','open','','test-post-2','','','2020-01-17 20:18:40','2020-01-17 20:18:40','',0,'http://amazing-college.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-01-17 20:18:40','2020-01-17 20:18:40','<!-- wp:paragraph -->\n<p>This is even more test post data to play with.</p>\n<!-- /wp:paragraph -->','Test Post 2','','inherit','closed','closed','','7-revision-v1','','','2020-01-17 20:18:40','2020-01-17 20:18:40','',7,'http://amazing-college.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-01-17 20:28:56','2020-01-17 20:28:56','<!-- wp:paragraph -->\n<p>Here is a block of random input text just to test the concept of a page.</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2020-01-17 20:28:56','2020-01-17 20:28:56','',0,'http://amazing-college.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-01-17 20:28:56','2020-01-17 20:28:56','<!-- wp:paragraph -->\n<p>Here is a block of random input text just to test the concept of a page.</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','9-revision-v1','','','2020-01-17 20:28:56','2020-01-17 20:28:56','',9,'http://amazing-college.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-01-18 16:19:38','2020-01-18 16:19:38','<!-- wp:paragraph -->\n<p>This is the about page content.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies lectus ligula, at mattis urna cursus in. In nulla sem, ullamcorper quis velit ut, bibendum consequat libero. Sed enim quam, ullamcorper sed risus et, venenatis commodo justo. Duis imperdiet commodo diam, non fermentum risus pharetra quis. Nullam fringilla, augue quis condimentum convallis, est massa facilisis velit, nec vulputate sapien elit quis quam. Nunc aliquet vulputate nisl ut dapibus. Phasellus quis eleifend ipsum. Donec et magna in eros fringilla condimentum. In hac habitasse platea dictumst. </p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-01-18 16:19:38','2020-01-18 16:19:38','',0,'http://amazing-college.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-01-18 16:19:38','2020-01-18 16:19:38','<!-- wp:paragraph -->\n<p>This is the about page content.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies lectus ligula, at mattis urna cursus in. In nulla sem, ullamcorper quis velit ut, bibendum consequat libero. Sed enim quam, ullamcorper sed risus et, venenatis commodo justo. Duis imperdiet commodo diam, non fermentum risus pharetra quis. Nullam fringilla, augue quis condimentum convallis, est massa facilisis velit, nec vulputate sapien elit quis quam. Nunc aliquet vulputate nisl ut dapibus. Phasellus quis eleifend ipsum. Donec et magna in eros fringilla condimentum. In hac habitasse platea dictumst. </p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','11-revision-v1','','','2020-01-18 16:19:38','2020-01-18 16:19:38','',11,'http://amazing-college.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-01-18 16:20:15','2020-01-18 16:20:15','<!-- wp:paragraph -->\n<p>This is the privacy policy content.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere blandit commodo. Suspendisse potenti. Sed tincidunt interdum quam, lobortis rhoncus sapien venenatis eu. In efficitur vulputate dui, a mattis nunc. Aenean tempus magna lobortis, aliquam magna tempor, efficitur erat. Aliquam lobortis mauris in ex laoreet varius. Morbi tempus fermentum pulvinar. Donec euismod tincidunt pulvinar. Pellentesque in augue ex. Morbi porttitor, felis in tincidunt ullamcorper, est nulla viverra libero, nec lacinia nunc enim non urna. Quisque mollis vestibulum sem eleifend facilisis. Vivamus dapibus, erat ac varius gravida, dui tellus facilisis ipsum, sed semper ipsum nulla vel est. Nullam nunc neque, pharetra vitae enim et, viverra posuere risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. </p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy-2','','','2020-01-18 16:20:25','2020-01-18 16:20:25','',0,'http://amazing-college.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-01-18 16:20:15','2020-01-18 16:20:15','<!-- wp:paragraph -->\n<p>This is the privacy policy page.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere blandit commodo. Suspendisse potenti. Sed tincidunt interdum quam, lobortis rhoncus sapien venenatis eu. In efficitur vulputate dui, a mattis nunc. Aenean tempus magna lobortis, aliquam magna tempor, efficitur erat. Aliquam lobortis mauris in ex laoreet varius. Morbi tempus fermentum pulvinar. Donec euismod tincidunt pulvinar. Pellentesque in augue ex. Morbi porttitor, felis in tincidunt ullamcorper, est nulla viverra libero, nec lacinia nunc enim non urna. Quisque mollis vestibulum sem eleifend facilisis. Vivamus dapibus, erat ac varius gravida, dui tellus facilisis ipsum, sed semper ipsum nulla vel est. Nullam nunc neque, pharetra vitae enim et, viverra posuere risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. </p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','13-revision-v1','','','2020-01-18 16:20:15','2020-01-18 16:20:15','',13,'http://amazing-college.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-01-18 16:20:25','2020-01-18 16:20:25','<!-- wp:paragraph -->\n<p>This is the privacy policy content.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere blandit commodo. Suspendisse potenti. Sed tincidunt interdum quam, lobortis rhoncus sapien venenatis eu. In efficitur vulputate dui, a mattis nunc. Aenean tempus magna lobortis, aliquam magna tempor, efficitur erat. Aliquam lobortis mauris in ex laoreet varius. Morbi tempus fermentum pulvinar. Donec euismod tincidunt pulvinar. Pellentesque in augue ex. Morbi porttitor, felis in tincidunt ullamcorper, est nulla viverra libero, nec lacinia nunc enim non urna. Quisque mollis vestibulum sem eleifend facilisis. Vivamus dapibus, erat ac varius gravida, dui tellus facilisis ipsum, sed semper ipsum nulla vel est. Nullam nunc neque, pharetra vitae enim et, viverra posuere risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. </p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','13-revision-v1','','','2020-01-18 16:20:25','2020-01-18 16:20:25','',13,'http://amazing-college.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-01-18 16:20:27','2020-01-18 16:20:27','<!-- wp:paragraph -->\n<p>This is the privacy policy content.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere blandit commodo. Suspendisse potenti. Sed tincidunt interdum quam, lobortis rhoncus sapien venenatis eu. In efficitur vulputate dui, a mattis nunc. Aenean tempus magna lobortis, aliquam magna tempor, efficitur erat. Aliquam lobortis mauris in ex laoreet varius. Morbi tempus fermentum pulvinar. Donec euismod tincidunt pulvinar. Pellentesque in augue ex. Morbi porttitor, felis in tincidunt ullamcorper, est nulla viverra libero, nec lacinia nunc enim non urna. Quisque mollis vestibulum sem eleifend facilisis. Vivamus dapibus, erat ac varius gravida, dui tellus facilisis ipsum, sed semper ipsum nulla vel est. Nullam nunc neque, pharetra vitae enim et, viverra posuere risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. </p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','13-autosave-v1','','','2020-01-18 16:20:27','2020-01-18 16:20:27','',13,'http://amazing-college.local/13-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-01-18 16:36:31','2020-01-18 16:36:31','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://amazing-college.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-01-18 16:36:31','2020-01-18 16:36:31','',3,'http://amazing-college.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-01-18 17:04:50','2020-01-18 17:04:50','<!-- wp:paragraph -->\n<p>This is our history content.  Nam cursus nulla eu nisl viverra, at sagittis lorem gravida. Nam nisl enim, rutrum sit amet erat eget, ornare fringilla risus. Proin venenatis consectetur est. Sed non sem molestie, suscipit ipsum a, bibendum neque. Vestibulum maximus dui nec malesuada egestas. In euismod suscipit dapibus. Maecenas quis eleifend magna, sed volutpat nunc. Fusce ut sagittis justo. Donec et euismod orci, in sagittis tortor. Donec vitae finibus purus. Integer dolor ligula, aliquet eu suscipit at, elementum ac lacus. In hac habitasse platea dictumst. Maecenas sed orci lectus. Sed posuere ligula vel felis pretium tincidunt. Nulla dapibus mauris ut lectus vehicula, ut egestas enim pretium. Phasellus efficitur mauris lectus, nec auctor mauris vulputate eget. </p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-01-18 17:04:50','2020-01-18 17:04:50','',11,'http://amazing-college.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-01-18 17:04:50','2020-01-18 17:04:50','<!-- wp:paragraph -->\n<p>This is our history content.  Nam cursus nulla eu nisl viverra, at sagittis lorem gravida. Nam nisl enim, rutrum sit amet erat eget, ornare fringilla risus. Proin venenatis consectetur est. Sed non sem molestie, suscipit ipsum a, bibendum neque. Vestibulum maximus dui nec malesuada egestas. In euismod suscipit dapibus. Maecenas quis eleifend magna, sed volutpat nunc. Fusce ut sagittis justo. Donec et euismod orci, in sagittis tortor. Donec vitae finibus purus. Integer dolor ligula, aliquet eu suscipit at, elementum ac lacus. In hac habitasse platea dictumst. Maecenas sed orci lectus. Sed posuere ligula vel felis pretium tincidunt. Nulla dapibus mauris ut lectus vehicula, ut egestas enim pretium. Phasellus efficitur mauris lectus, nec auctor mauris vulputate eget. </p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','18-revision-v1','','','2020-01-18 17:04:50','2020-01-18 17:04:50','',18,'http://amazing-college.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-01-18 17:05:30','2020-01-18 17:05:30','<!-- wp:paragraph -->\n<p>This is our goals content.  Nam molestie mauris sed purus accumsan vulputate. Aliquam mattis eleifend nulla a maximus. Nam at lectus vel felis gravida bibendum. Donec porttitor nulla pulvinar est aliquam laoreet. Ut nec ultrices lectus. Nulla vel est erat. Vestibulum cursus finibus odio tristique volutpat. Vivamus mattis tristique nisi. Vestibulum non malesuada tellus. Etiam consequat at ipsum ac porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed scelerisque viverra sollicitudin. Aliquam erat volutpat. </p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-01-18 17:05:30','2020-01-18 17:05:30','',11,'http://amazing-college.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-01-18 17:05:30','2020-01-18 17:05:30','<!-- wp:paragraph -->\n<p>This is our goals content.  Nam molestie mauris sed purus accumsan vulputate. Aliquam mattis eleifend nulla a maximus. Nam at lectus vel felis gravida bibendum. Donec porttitor nulla pulvinar est aliquam laoreet. Ut nec ultrices lectus. Nulla vel est erat. Vestibulum cursus finibus odio tristique volutpat. Vivamus mattis tristique nisi. Vestibulum non malesuada tellus. Etiam consequat at ipsum ac porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed scelerisque viverra sollicitudin. Aliquam erat volutpat. </p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','20-revision-v1','','','2020-01-18 17:05:30','2020-01-18 17:05:30','',20,'http://amazing-college.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-01-18 17:20:40','2020-01-18 17:20:40','<!-- wp:paragraph -->\n<p>this is the cookie policy test content.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-01-18 17:20:40','2020-01-18 17:20:40','',13,'http://amazing-college.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-01-18 17:20:40','2020-01-18 17:20:40','<!-- wp:paragraph -->\n<p>this is the cookie policy test content.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','22-revision-v1','','','2020-01-18 17:20:40','2020-01-18 17:20:40','',22,'http://amazing-college.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-01-19 14:31:23','2020-01-19 14:31:23','','Home','','publish','closed','closed','','home','','','2020-01-19 14:38:47','2020-01-19 14:38:47','',0,'http://amazing-college.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-01-19 14:31:23','2020-01-19 14:31:23',' ','','','publish','closed','closed','','25','','','2020-01-19 14:38:47','2020-01-19 14:38:47','',0,'http://amazing-college.local/?p=25',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-01-19 14:31:23','2020-01-19 14:31:23',' ','','','publish','closed','closed','','28','','','2020-01-19 14:38:47','2020-01-19 14:38:47','',0,'http://amazing-college.local/?p=28',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-01-19 14:32:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 14:32:28','0000-00-00 00:00:00','',0,'http://amazing-college.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-01-19 14:32:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 14:32:28','0000-00-00 00:00:00','',13,'http://amazing-college.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-01-19 14:32:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 14:32:28','0000-00-00 00:00:00','',0,'http://amazing-college.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-01-19 14:32:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 14:32:28','0000-00-00 00:00:00','',11,'http://amazing-college.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-01-19 14:32:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-19 14:32:28','0000-00-00 00:00:00','',11,'http://amazing-college.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-01-19 22:29:45','2020-01-19 22:29:45',' ','','','publish','closed','closed','','37','','','2020-01-19 22:29:45','2020-01-19 22:29:45','',13,'http://amazing-college.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-01-19 22:30:04','2020-01-19 22:30:04',' ','','','publish','closed','closed','','38','','','2020-01-19 22:30:04','2020-01-19 22:30:04','',0,'http://amazing-college.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-01-19 22:51:38','2020-01-19 22:51:38','','Home','','publish','closed','closed','','home','','','2020-01-19 22:51:38','2020-01-19 22:51:38','',0,'http://amazing-college.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-01-19 22:51:38','2020-01-19 22:51:38','','Home','','inherit','closed','closed','','39-revision-v1','','','2020-01-19 22:51:38','2020-01-19 22:51:38','',39,'http://amazing-college.local/39-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-01-19 22:51:47','2020-01-19 22:51:47','','Blog','','publish','closed','closed','','blog','','','2020-01-19 22:51:47','2020-01-19 22:51:47','',0,'http://amazing-college.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-01-19 22:51:47','2020-01-19 22:51:47','','Blog','','inherit','closed','closed','','41-revision-v1','','','2020-01-19 22:51:47','2020-01-19 22:51:47','',41,'http://amazing-college.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-01-19 23:57:31','2020-01-19 23:57:31','<!-- wp:paragraph -->\n<p>Cras vehicula erat sed sem gravida, id consequat lectus gravida. Duis non consequat nibh. Pellentesque dui ante, imperdiet suscipit risus at, maximus placerat mauris. Pellentesque id magna feugiat, mollis tortor accumsan, ullamcorper elit. Fusce viverra vehicula risus, vitae faucibus quam fermentum at. Maecenas aliquam in nulla quis consectetur. Mauris fermentum quam ut enim dictum tempor. Curabitur semper turpis ac laoreet pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc convallis tempor tortor, eu viverra sem sagittis sit amet. Mauris finibus ullamcorper pretium. Morbi finibus odio justo, ut commodo erat molestie at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sodales lectus non scelerisque suscipit. Aliquam ut elit eros. Integer vel purus non arcu pretium consequat. Aliquam dignissim odio vel augue lacinia feugiat.</p>\n<!-- /wp:paragraph -->','We won an award!','','publish','open','open','','we-won-an-award','','','2020-01-20 19:30:47','2020-01-20 19:30:47','',0,'http://amazing-college.local/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-01-19 23:57:31','2020-01-19 23:57:31','<!-- wp:paragraph -->\n<p>Cras vehicula erat sed sem gravida, id consequat lectus gravida. Duis non consequat nibh. Pellentesque dui ante, imperdiet suscipit risus at, maximus placerat mauris. Pellentesque id magna feugiat, mollis tortor accumsan, ullamcorper elit. Fusce viverra vehicula risus, vitae faucibus quam fermentum at. Maecenas aliquam in nulla quis consectetur. Mauris fermentum quam ut enim dictum tempor. Curabitur semper turpis ac laoreet pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc convallis tempor tortor, eu viverra sem sagittis sit amet. Mauris finibus ullamcorper pretium. Morbi finibus odio justo, ut commodo erat molestie at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sodales lectus non scelerisque suscipit. Aliquam ut elit eros. Integer vel purus non arcu pretium consequat. Aliquam dignissim odio vel augue lacinia feugiat.</p>\n<!-- /wp:paragraph -->','We won an award!','','inherit','closed','closed','','43-revision-v1','','','2020-01-19 23:57:31','2020-01-19 23:57:31','',43,'http://amazing-college.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-01-20 19:01:23','2020-01-20 19:01:23','Pellentesque luctus urna ut turpis luctus, in feugiat erat eleifend. Vestibulum porta, libero sed dignissim euismod, nibh nunc ornare nisi, eu vestibulum urna est id massa. Duis ornare placerat dapibus. Sed eros erat, ultrices in elementum mattis, facilisis at nunc. Ut erat sapien, gravida sed elit et, ullamcorper aliquam augue. Cras ornare arcu quis diam laoreet molestie. Donec orci purus, tincidunt ac purus eget, bibendum malesuada risus. Nullam dui metus, molestie tristique condimentum vel, tincidunt scelerisque felis.','Math Meetup','','publish','closed','closed','','math-meetup','','','2020-01-20 20:56:45','2020-01-20 20:56:45','',0,'http://amazing-college.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-01-20 19:01:51','2020-01-20 19:01:51','Nullam ut commodo arcu, ac fringilla lorem. Fusce facilisis libero non euismod ullamcorper. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus quis felis vel est rutrum facilisis. Aliquam gravida urna urna, sit amet accumsan nulla blandit nec. Praesent non felis nunc. Nunc varius efficitur orci, posuere imperdiet leo dignissim eu. Sed pulvinar sit amet felis ut luctus. Vestibulum quam nulla, ultricies quis eros nec, consectetur blandit arcu. Duis condimentum eros et feugiat vestibulum. Nam aliquam nibh id ligula fermentum, eget consectetur nulla fermentum. Praesent bibendum posuere vestibulum. Aenean non feugiat purus, ac ultricies libero. Suspendisse ut porta turpis. Mauris orci neque, consequat eget volutpat ut, dignissim sed justo.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2020-01-20 22:28:47','2020-01-20 22:28:47','',0,'http://amazing-college.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-01-20 19:02:07','2020-01-20 19:02:07','Phasellus iaculis ultrices purus vel dictum. Mauris placerat rhoncus turpis at mattis. Suspendisse scelerisque placerat libero sit amet mollis. Sed a quam ornare, mattis augue ut, fringilla lorem. Quisque lorem nisl, tincidunt at turpis vitae, tempor aliquam lorem. Pellentesque efficitur eros et enim fringilla, nec sodales massa dapibus. Ut venenatis pellentesque erat consequat vehicula. In molestie id magna eget pellentesque. Integer non felis euismod, mollis orci nec, gravida est.','Poetry Day','Poetry day is going to be amazing!','publish','closed','closed','','poetry-day','','','2020-01-21 13:43:48','2020-01-21 13:43:48','',0,'http://amazing-college.local/?post_type=event&#038;p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-01-20 19:08:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-20 19:08:15','0000-00-00 00:00:00','',0,'http://amazing-college.local/?post_type=event&p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-01-20 20:52:06','2020-01-20 20:52:06','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5e26129f0afea','','','2020-01-20 20:57:57','2020-01-20 20:57:57','',0,'http://amazing-college.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-01-20 20:52:06','2020-01-20 20:52:06','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:5:\"m/d/Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5e2612aaeb887','','','2020-01-20 20:57:57','2020-01-20 20:57:57','',49,'http://amazing-college.local/?post_type=acf-field&#038;p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-01-20 21:46:56','2020-01-20 21:46:56','Integer nec accumsan leo. Praesent sagittis ullamcorper ante eu tincidunt. Nullam volutpat libero sed magna laoreet, eu condimentum nisl egestas. Curabitur eu ultricies diam, id aliquam lectus. Phasellus rhoncus dapibus orci id vulputate. Praesent non tortor felis. Proin elementum ipsum sed est pulvinar pulvinar. Curabitur bibendum mauris quis enim dictum aliquet. Donec ac libero finibus, mattis elit vel, eleifend quam.','Winter Study Night','Study time with frosty himself!','publish','closed','closed','','winter-study-night','','','2020-01-20 21:46:56','2020-01-20 21:46:56','',0,'http://amazing-college.local/?post_type=event&#038;p=51',0,'event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-01-20 21:48:15','2020-01-20 21:48:15','','Past Events','','publish','closed','closed','','past-events','','','2020-01-20 21:48:15','2020-01-20 21:48:15','',0,'http://amazing-college.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-01-20 21:48:15','2020-01-20 21:48:15','','Past Events','','inherit','closed','closed','','52-revision-v1','','','2020-01-20 21:48:15','2020-01-20 21:48:15','',52,'http://amazing-college.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-01-20 21:58:16','2020-01-20 21:58:16','Integer ac nibh placerat, congue mi ac, viverra odio. Fusce sit amet pretium tellus. Curabitur a pharetra mauris, ut consectetur ipsum. Aliquam in lorem ligula. Nam elementum dui hendrerit risus molestie porta. Sed odio lorem, lacinia sed nisl ut, consequat dapibus tellus. Nam sit amet laoreet enim. Morbi id elit odio. Donec est neque, tempus vitae malesuada non, malesuada quis urna. Nunc ultrices vestibulum luctus.','New Year 2007','New Years 2007','publish','closed','closed','','new-year-2016','','','2020-01-20 22:12:26','2020-01-20 22:12:26','',0,'http://amazing-college.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-01-20 22:14:42','2020-01-20 22:14:42','Nullam rutrum est ut ligula semper hendrerit. In quam nisl, bibendum sit amet luctus eu, euismod quis lorem. Duis pulvinar, felis quis eleifend porttitor, purus odio laoreet leo, et rhoncus quam leo nec magna. Donec varius, lacus in sagittis malesuada, mauris libero imperdiet elit, eu accumsan turpis libero eget mauris. Morbi ut nulla venenatis enim ornare rhoncus a nec velit. Nam at nisl nec tortor ullamcorper porttitor. Sed pharetra dui vel felis rhoncus, sit amet aliquam turpis efficitur. Suspendisse facilisis, purus nec pellentesque ultrices, arcu erat blandit sapien, eu consectetur augue dui ac nibh. Donec gravida lacus quis sapien elementum, ut laoreet augue accumsan. Nam laoreet semper arcu sed rhoncus. Sed nibh urna, molestie at laoreet at, rutrum id massa. Maecenas quis diam libero.','Math','','publish','closed','closed','','math','','','2020-01-20 22:14:42','2020-01-20 22:14:42','',0,'http://amazing-college.local/?post_type=program&#038;p=55',0,'program','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-01-20 22:14:59','2020-01-20 22:14:59','Mauris sit amet neque mattis, malesuada lacus ut, sagittis massa. Ut tempor in massa in elementum. Integer eleifend congue nibh, nec varius neque sagittis nec. Suspendisse lorem odio, lobortis mollis malesuada ut, ultricies ut mauris. Nullam leo dui, sodales eget porta ut, hendrerit eget nisi. Etiam vulputate venenatis nisl, id commodo est elementum interdum. Donec nulla massa, suscipit non metus rutrum, imperdiet accumsan ex. Maecenas vehicula sollicitudin augue. Curabitur ultrices eu dolor in accumsan. Duis pulvinar bibendum vulputate. Etiam lacinia, ipsum ac dictum ullamcorper, nibh erat porta lorem, vel hendrerit arcu nunc tempor magna. Ut vestibulum turpis id justo hendrerit dictum.','Biology','','publish','closed','closed','','biology','','','2020-01-20 22:14:59','2020-01-20 22:14:59','',0,'http://amazing-college.local/?post_type=program&#038;p=56',0,'program','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-01-20 22:15:17','2020-01-20 22:15:17','Pellentesque in rhoncus eros, eu efficitur velit. Curabitur eleifend, urna eu efficitur bibendum, leo massa ultricies ipsum, et gravida urna lacus et odio. Morbi at lacus at nisl blandit laoreet. Suspendisse condimentum, lorem a placerat dignissim, tortor est venenatis nibh, at molestie tortor nisl ullamcorper leo. In hac habitasse platea dictumst. Phasellus non dictum ligula. Suspendisse dolor dolor, ultrices eu justo ac, aliquam bibendum nibh. Maecenas cursus, nisi quis molestie vulputate, elit ipsum tincidunt nibh, et eleifend odio nisi a augue. Phasellus scelerisque, enim in iaculis elementum, tellus velit dictum nulla, cursus pulvinar dui quam non libero.','English','','publish','closed','closed','','english','','','2020-01-20 22:15:17','2020-01-20 22:15:17','',0,'http://amazing-college.local/?post_type=program&#038;p=57',0,'program','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-01-20 22:28:10','2020-01-20 22:28:10','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5e2628d66ce7b','','','2020-01-21 15:02:50','2020-01-21 15:02:50','',0,'http://amazing-college.local/?post_type=acf-field-group&#038;p=58',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-01-20 22:28:10','2020-01-20 22:28:10','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5e2628dbe9036','','','2020-01-20 22:28:10','2020-01-20 22:28:10','',58,'http://amazing-college.local/?post_type=acf-field&p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-01-21 14:50:02','2020-01-21 14:50:02','Maecenas placerat et justo facilisis tincidunt. Nullam at ornare lorem. Quisque eleifend laoreet mauris at sodales. Fusce pretium accumsan erat, in venenatis ligula convallis in. Nam et vehicula nibh. Morbi tempus mi vitae ipsum ornare porta. Sed dapibus feugiat finibus. Sed non velit eget magna tempus condimentum nec at elit. Donec consectetur metus sagittis, interdum eros volutpat, pretium leo. Sed congue ligula augue, pharetra tincidunt odio maximus eu. Curabitur aliquet et orci eget ultrices.','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2020-01-22 22:12:44','2020-01-22 22:12:44','',0,'http://amazing-college.local/?post_type=professor&#038;p=60',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-01-21 14:50:38','2020-01-21 14:50:38','Praesent vel ligula lorem. Quisque tincidunt laoreet erat, nec pellentesque felis pulvinar et. Ut ultricies orci erat, et gravida nulla pretium in. Integer commodo tellus leo, vel consectetur est cursus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus sit amet magna lacus. Curabitur ac lacus dignissim, egestas mi eget, posuere lectus. Fusce in lectus non dui accumsan lobortis.','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2020-01-22 22:19:46','2020-01-22 22:19:46','',0,'http://amazing-college.local/?post_type=professor&#038;p=61',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-01-21 15:24:40','2020-01-21 15:24:40','Vivamus quis nisl at dui interdum mollis vel id mauris. Integer purus magna, molestie id ex rhoncus, convallis ornare elit. Proin velit nisi, eleifend sit amet tempus ac, sagittis vitae purus. Quisque aliquet nisl mattis massa tincidunt, sit amet efficitur urna vestibulum. Ut sagittis vestibulum ex, a dictum enim dictum eu. Suspendisse ullamcorper non sem et laoreet. Ut quis massa sed eros posuere pharetra. Quisque condimentum non est vel cursus. Pellentesque velit orci, tristique nec nulla sit amet, interdum efficitur dolor. Donec libero felis, ultrices quis fringilla sit amet, mollis in felis. Proin a est iaculis, ornare augue a, aliquet leo. Donec lobortis tellus sed congue fringilla. In nec elit a lacus blandit tincidunt. Donec non turpis vitae velit pretium fermentum vel sed arcu. Morbi id turpis euismod, iaculis nibh non, elementum risus. Aenean accumsan tincidunt placerat.','Chromosomes and You','','publish','closed','closed','','chromosomes-and-you','','','2020-01-21 15:24:40','2020-01-21 15:24:40','',0,'http://amazing-college.local/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-01-22 22:03:50','2020-01-22 22:03:50','Vivamus egestas porttitor bibendum. Nunc porttitor, nisi eget condimentum ornare, lorem turpis vestibulum felis, nec tristique elit nisl nec enim. Donec tempor eget urna at dictum. Nullam a semper enim, consectetur semper leo. Morbi in orci odio. Etiam gravida viverra tortor nec facilisis. Quisque libero nibh, consectetur non justo id, rhoncus lacinia est.','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2020-01-22 22:10:23','2020-01-22 22:10:23','',0,'http://amazing-college.local/?post_type=professor&#038;p=65',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-01-22 22:09:27','2020-01-22 22:09:27','','frog-bio','','inherit','open','closed','','frog-bio','','','2020-01-22 22:09:27','2020-01-22 22:09:27','',65,'http://amazing-college.local/wp-content/uploads/2020/01/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-01-22 22:12:18','2020-01-22 22:12:18','','meowsalot','','inherit','open','closed','','meowsalot','','','2020-01-22 22:12:18','2020-01-22 22:12:18','',60,'http://amazing-college.local/wp-content/uploads/2020/01/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-01-22 22:13:09','2020-01-22 22:13:09','','barksalot','','inherit','open','closed','','barksalot','','','2020-01-22 22:13:09','2020-01-22 22:13:09','',61,'http://amazing-college.local/wp-content/uploads/2020/01/barksalot.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,4,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','We love to blog about our recognitions.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Recognitions','recognitions',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Jared');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Jared');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Hodgkins');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Junior WordPress Developer in training :)');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"d3f3a9cbc5a279e8ef4dc8ccfda2f2a2fc4d4569b2908fd18696051df74ab4fc\";a:4:{s:10:\"expiration\";i:1579785309;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579612509;}s:64:\"f9b5209b7f930458bbf52374a35d3304bc88a1869e55bad03a23405b287079ce\";a:4:{s:10:\"expiration\";i:1579900814;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579728014;}s:64:\"741063ee4cb3f98c33da3c6ba538ff79ad954968dd8e9fd4beca26885ddd02cc\";a:4:{s:10:\"expiration\";i:1579903602;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579730802;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (21,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1579728603');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jaredhodgkins','$P$BUz9EujXsHHq1usuu4m8xzbaZRfmzp/','jaredhodgkins','jared.hodgkins@gmail.com','','2020-01-17 00:42:09','',0,'Jared');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23  8:52:19
