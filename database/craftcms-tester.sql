-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2023 at 12:27 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftcms-tester`
--

-- --------------------------------------------------------

--
-- Table structure for table `crft_addresses`
--

CREATE TABLE `crft_addresses` (
  `id` int NOT NULL,
  `ownerId` int DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_announcements`
--

CREATE TABLE `crft_announcements` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `pluginId` int DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_assetindexdata`
--

CREATE TABLE `crft_assetindexdata` (
  `id` int NOT NULL,
  `sessionId` int NOT NULL,
  `volumeId` int NOT NULL,
  `uri` text,
  `size` bigint UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT '0',
  `recordId` int DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT '0',
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_assetindexingsessions`
--

CREATE TABLE `crft_assetindexingsessions` (
  `id` int NOT NULL,
  `indexedVolumes` text,
  `totalEntries` int DEFAULT NULL,
  `processedEntries` int NOT NULL DEFAULT '0',
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT '0',
  `isCli` tinyint(1) DEFAULT '0',
  `actionRequired` tinyint(1) DEFAULT '0',
  `processIfRootEmpty` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_assets`
--

CREATE TABLE `crft_assets` (
  `id` int NOT NULL,
  `volumeId` int DEFAULT NULL,
  `folderId` int NOT NULL,
  `uploaderId` int DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text,
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `size` bigint UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_assets`
--

INSERT INTO `crft_assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(7, 1, 1, 1, 'vander-films-IWi2xbThF8U-unsplash.jpg', 'image', NULL, 2000, 1332, 562609, NULL, NULL, NULL, '2023-10-31 15:23:02', '2023-10-31 14:27:45', '2023-10-31 15:23:02'),
(8, 1, 1, 1, 'vander-films-IWi2xbThF8U-unsplash_2023-10-31-145000_pxqd.jpg', 'image', NULL, 2000, 1332, 565775, NULL, 0, 0, '2023-10-31 14:50:00', '2023-10-31 14:50:00', '2023-10-31 14:50:00'),
(9, 1, 1, 1, 'vander-films-IWi2xbThF8U-unsplash_2023-10-31-151555_sytv.jpg', 'image', NULL, 2000, 1332, 565775, NULL, 0, 0, '2023-10-31 15:15:55', '2023-10-31 15:15:55', '2023-10-31 15:15:55'),
(10, 1, 1, 1, 'vander-films-IWi2xbThF8U-unsplash_2023-10-31-152258_befb.jpg', 'image', NULL, 2000, 1332, 565775, NULL, 0, 0, '2023-10-31 15:22:58', '2023-10-31 15:22:58', '2023-10-31 15:22:58'),
(21, 1, 1, 1, 'henry-potter.jpg', 'image', NULL, 128, 128, 5426, NULL, NULL, NULL, '2023-11-01 13:58:24', '2023-11-01 13:58:24', '2023-11-01 13:58:24'),
(34, 1, 1, 1, 'jack-starfield.jpg', 'image', NULL, 128, 128, 5657, NULL, NULL, NULL, '2023-11-01 14:00:10', '2023-11-01 14:00:10', '2023-11-01 14:00:10'),
(52, 1, 1, 1, 'sarah-bradbury.jpg', 'image', NULL, 128, 128, 12498, NULL, NULL, NULL, '2023-11-01 14:00:36', '2023-11-01 14:00:36', '2023-11-01 14:00:36'),
(69, 1, 1, 1, 'felix-lam-J7fxkhtOqt0-unsplash.jpg', 'image', NULL, 2000, 1332, 340985, NULL, NULL, NULL, '2023-11-01 17:03:24', '2023-11-01 17:03:24', '2023-11-01 17:03:24'),
(70, 1, 1, 1, 'forest.jpg', 'image', NULL, 2000, 1332, 490394, NULL, NULL, NULL, '2023-11-01 17:03:25', '2023-11-01 17:03:25', '2023-11-01 17:03:25'),
(71, 1, 1, 1, 'gear.jpg', 'image', NULL, 2000, 1332, 551689, NULL, NULL, NULL, '2023-11-01 17:03:26', '2023-11-01 17:03:26', '2023-11-01 17:03:26'),
(74, 1, 1, 1, 'mohit-suthar-a1_tFcBSp7w-unsplash.jpg', 'image', NULL, 2000, 1332, 370272, NULL, NULL, NULL, '2023-11-01 17:05:21', '2023-11-01 17:05:21', '2023-11-01 17:05:21'),
(75, 1, 1, 1, 'mountains.jpg', 'image', NULL, 2000, 1332, 999550, NULL, NULL, NULL, '2023-11-01 17:05:22', '2023-11-01 17:05:22', '2023-11-01 17:05:22'),
(76, 1, 1, 1, 'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg', 'image', NULL, 2000, 1332, 820955, NULL, NULL, NULL, '2023-11-01 17:05:23', '2023-11-01 17:05:23', '2023-11-01 17:05:23'),
(79, 1, 1, 1, 'hero.jpg', 'image', NULL, 1500, 1001, 162832, NULL, NULL, NULL, '2023-11-01 17:06:33', '2023-11-01 17:06:33', '2023-11-01 17:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `crft_categories`
--

CREATE TABLE `crft_categories` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_categorygroups`
--

CREATE TABLE `crft_categorygroups` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_categorygroups_sites`
--

CREATE TABLE `crft_categorygroups_sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_changedattributes`
--

CREATE TABLE `crft_changedattributes` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_changedattributes`
--

INSERT INTO `crft_changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(1, 1, 'fullName', '2023-11-03 12:25:24', 0, 1),
(1, 1, 'lastPasswordChangeDate', '2023-11-03 12:25:24', 0, 1),
(1, 1, 'password', '2023-11-03 12:25:24', 0, 1),
(1, 1, 'verificationCode', '2023-11-03 12:25:24', 0, 1),
(1, 1, 'verificationCodeIssuedDate', '2023-11-03 12:25:24', 0, 1),
(68, 1, 'postDate', '2023-11-01 17:04:22', 0, 1),
(68, 1, 'slug', '2023-11-01 17:01:54', 0, 1),
(68, 1, 'title', '2023-11-01 17:01:54', 0, 1),
(68, 1, 'uri', '2023-11-01 17:01:54', 0, 1),
(73, 1, 'postDate', '2023-11-01 17:05:34', 0, 1),
(73, 1, 'slug', '2023-11-01 17:04:52', 0, 1),
(73, 1, 'title', '2023-11-01 17:04:52', 0, 1),
(73, 1, 'uri', '2023-11-01 17:04:52', 0, 1),
(78, 1, 'postDate', '2023-11-01 17:06:49', 0, 1),
(78, 1, 'slug', '2023-11-01 17:05:47', 0, 1),
(78, 1, 'title', '2023-11-01 17:05:47', 0, 1),
(78, 1, 'uri', '2023-11-01 17:05:47', 0, 1),
(81, 1, 'title', '2023-11-01 18:07:52', 0, 1),
(102, 1, 'postDate', '2023-11-02 09:50:41', 0, 1),
(102, 1, 'slug', '2023-11-02 09:50:35', 0, 1),
(102, 1, 'title', '2023-11-02 09:50:35', 0, 1),
(102, 1, 'uri', '2023-11-02 09:50:35', 0, 1),
(106, 1, 'postDate', '2023-11-02 09:59:15', 0, 1),
(106, 1, 'slug', '2023-11-02 09:57:05', 0, 1),
(106, 1, 'title', '2023-11-02 09:57:05', 0, 1),
(106, 1, 'uri', '2023-11-02 09:57:05', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crft_changedfields`
--

CREATE TABLE `crft_changedfields` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `fieldId` int NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_changedfields`
--

INSERT INTO `crft_changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '2023-10-31 15:31:05', 0, 1),
(2, 1, 2, '2023-10-31 15:31:05', 0, 1),
(2, 1, 3, '2023-11-01 14:01:20', 0, 1),
(2, 1, 4, '2023-11-01 14:16:14', 0, 1),
(2, 1, 11, '2023-11-01 18:13:48', 0, 1),
(68, 1, 8, '2023-11-01 17:03:41', 0, 1),
(68, 1, 9, '2023-11-01 17:02:33', 0, 1),
(68, 1, 10, '2023-11-01 17:02:45', 0, 1),
(73, 1, 8, '2023-11-01 17:05:31', 0, 1),
(73, 1, 9, '2023-11-01 17:05:04', 0, 1),
(73, 1, 10, '2023-11-01 17:04:56', 0, 1),
(78, 1, 8, '2023-11-01 17:06:47', 0, 1),
(78, 1, 9, '2023-11-01 17:05:56', 0, 1),
(78, 1, 10, '2023-11-01 17:05:50', 0, 1),
(102, 1, 9, '2023-11-02 09:53:22', 0, 1),
(106, 1, 9, '2023-11-02 09:58:59', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crft_content`
--

CREATE TABLE `crft_content` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_heroTitle_dtlkwmfu` text,
  `field_ridersIntroContent_itbksfam` text,
  `field_richText_alcbujfw` text,
  `field_shortDescription_ntfaxqxc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_content`
--

INSERT INTO `crft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_heroTitle_dtlkwmfu`, `field_ridersIntroContent_itbksfam`, `field_richText_alcbujfw`, `field_shortDescription_ntfaxqxc`) VALUES
(1, 1, 1, NULL, '2023-10-31 12:33:16', '2023-11-03 12:25:24', '44e16952-2bba-4a30-ab81-93c5f6c422cc', NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home', '2023-10-31 13:41:44', '2023-11-01 18:13:48', '24de3f71-c8f8-4ee2-984f-8ac5b661225f', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(3, 3, 1, 'Home', '2023-10-31 13:41:44', '2023-10-31 13:41:44', '407a2ff0-f939-4c3e-ad20-759f53f9e7a8', NULL, NULL, NULL, NULL),
(4, 4, 1, 'Home', '2023-10-31 13:41:44', '2023-10-31 13:41:44', '3386c6c6-1d29-4a4a-9ee9-6c9d1d4f5d09', NULL, NULL, NULL, NULL),
(5, 5, 1, 'Home', '2023-10-31 14:26:02', '2023-10-31 14:26:02', '9f82086a-5dcc-465c-b11d-67b94f0c6a19', NULL, NULL, NULL, NULL),
(7, 7, 1, 'Vander films I Wi2xb Th F8 U unsplash', '2023-10-31 14:27:45', '2023-10-31 15:23:02', '7c5a7c0c-efbb-47d5-83fc-79dd231d7db5', NULL, NULL, NULL, NULL),
(8, 8, 1, 'Vander films I Wi2xb Th F8 U unsplash', '2023-10-31 14:50:00', '2023-10-31 14:50:00', '9c6423f4-c4a3-4d0c-b1e6-1e3790137d44', NULL, NULL, NULL, NULL),
(9, 9, 1, 'Vander films I Wi2xb Th F8 U unsplash', '2023-10-31 15:15:55', '2023-10-31 15:15:55', 'fc2898dc-a28a-4bc7-83c7-7f7b32c1bdc4', NULL, NULL, NULL, NULL),
(10, 10, 1, 'Vander films I Wi2xb Th F8 U unsplash', '2023-10-31 15:22:58', '2023-10-31 15:22:58', '6562c1ff-cf94-490d-b2b8-69f00635ac31', NULL, NULL, NULL, NULL),
(11, 11, 1, 'Home', '2023-10-31 15:31:05', '2023-10-31 15:31:05', 'e13ebc34-f540-4a84-9269-5af264d9c625', 'Testing the Title Field', NULL, NULL, NULL),
(12, 12, 1, 'Home', '2023-11-01 12:57:14', '2023-11-01 12:57:14', 'd62d7985-7bfa-4f57-9c51-49b87955a41f', 'Testing the Title Field', NULL, NULL, NULL),
(13, 13, 1, 'Home', '2023-11-01 13:56:42', '2023-11-01 13:56:42', 'b3b98ff4-36af-4fa1-9a28-fe5c4b34a4ed', 'Testing the Title Field', NULL, NULL, NULL),
(15, 21, 1, 'Henry potter', '2023-11-01 13:58:24', '2023-11-01 13:58:24', 'aa812e04-d54e-48c5-94ae-1a905cbf5907', NULL, NULL, NULL, NULL),
(16, 34, 1, 'Jack starfield', '2023-11-01 14:00:10', '2023-11-01 14:00:10', '140611f8-3bc1-4c03-b54c-020f858509eb', NULL, NULL, NULL, NULL),
(17, 52, 1, 'Sarah bradbury', '2023-11-01 14:00:36', '2023-11-01 14:00:36', '8ef3a925-fd96-48dd-b993-e926122bb076', NULL, NULL, NULL, NULL),
(18, 59, 1, 'Home', '2023-11-01 14:01:21', '2023-11-01 14:01:21', '923dbe20-5786-4e79-a0a1-c7b2936e735d', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(20, 64, 1, 'Home', '2023-11-01 14:16:13', '2023-11-01 14:16:13', '5fe38ca7-682f-4528-a757-c222d3b6445c', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(21, 68, 1, 'Exporing Peru by Motorbike', '2023-11-01 16:59:15', '2023-11-01 17:04:22', '3975b964-8651-4572-bee4-6ad8b8c3ea8a', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(22, 69, 1, 'Felix lam J7fxkht Oqt0 unsplash', '2023-11-01 17:03:24', '2023-11-01 17:03:24', 'f431f034-6a71-4eaf-8afa-cf53ca2a98e9', NULL, NULL, NULL, NULL),
(23, 70, 1, 'Forest', '2023-11-01 17:03:25', '2023-11-01 17:03:25', '557e8e5f-3804-4fcc-920d-55c5a8e3a356', NULL, NULL, NULL, NULL),
(24, 71, 1, 'Gear', '2023-11-01 17:03:26', '2023-11-01 17:03:26', '4a75d772-5f79-487e-935f-ed9ab3bca82e', NULL, NULL, NULL, NULL),
(25, 72, 1, 'Exporing Peru by Motorbike', '2023-11-01 17:04:23', '2023-11-01 17:04:23', '15ae95f9-752d-46b4-a36a-90db08050f90', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(26, 73, 1, 'KTM’s Nile River Rally', '2023-11-01 17:04:43', '2023-11-01 17:05:35', 'e14b3eef-8155-4247-82e8-cc7e7702ed5a', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(27, 74, 1, 'Mohit suthar a1 t Fc B Sp7w unsplash', '2023-11-01 17:05:21', '2023-11-01 17:05:21', 'bbf03805-e743-4875-80fa-f8c5cff15617', NULL, NULL, NULL, NULL),
(28, 75, 1, 'Mountains', '2023-11-01 17:05:22', '2023-11-01 17:05:22', '63ad4a69-38ca-4b7b-85ac-faa4bce36fd9', NULL, NULL, NULL, NULL),
(29, 76, 1, 'Jeremy bishop h MHJY Ql W Qw U unsplash', '2023-11-01 17:05:23', '2023-11-01 17:05:23', 'd76e5343-430b-443d-be1b-4487a1c699b5', NULL, NULL, NULL, NULL),
(30, 77, 1, 'KTM’s Nile River Rally', '2023-11-01 17:05:35', '2023-11-01 17:05:35', 'f3f3cc65-16cf-478c-91b2-5461f8b08347', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(31, 78, 1, 'Summer Days in Argentina', '2023-11-01 17:05:39', '2023-11-01 17:06:49', '55182747-a926-412c-a77b-45ca6c599056', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(32, 79, 1, 'Hero', '2023-11-01 17:06:33', '2023-11-01 17:06:33', 'e7f4b149-1f44-4600-8dbb-5626041a38ca', NULL, NULL, NULL, NULL),
(33, 80, 1, 'Summer Days in Argentina', '2023-11-01 17:06:49', '2023-11-01 17:06:49', '428a5b80-174f-4794-941a-06fc6eaf2e65', NULL, NULL, '<p>Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h2>Grit and gravel make fun travel</h2>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p>\r\n<h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.'),
(34, 81, 1, 'Stories Listing from single story template', '2023-11-01 18:06:25', '2023-11-01 18:07:52', 'ee3aa2f7-643f-4af4-ab6c-3104393ff530', NULL, NULL, NULL, NULL),
(35, 82, 1, 'Stories Listing', '2023-11-01 18:06:25', '2023-11-01 18:06:25', '95703d94-b379-4dbe-8c85-60ef05856a70', NULL, NULL, NULL, NULL),
(36, 83, 1, 'Stories Listing', '2023-11-01 18:06:26', '2023-11-01 18:06:26', 'f7a4fc1b-91a5-48e9-91c8-7be13c24d080', NULL, NULL, NULL, NULL),
(37, 84, 1, 'Stories Listing', '2023-11-01 18:07:05', '2023-11-01 18:07:05', '0a34dc5f-8dff-4082-88a7-8f467da31ae6', NULL, NULL, NULL, NULL),
(39, 86, 1, 'Stories Listing from single story template', '2023-11-01 18:07:52', '2023-11-01 18:07:52', '2d4e2d23-f63e-43c4-9cdf-edf809df4281', NULL, NULL, NULL, NULL),
(40, 87, 1, 'Home', '2023-11-01 18:12:30', '2023-11-01 18:12:30', '8b51b2a7-4a61-4b66-9164-9df5c804537d', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(41, 91, 1, 'Home', '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'cd220a60-d545-4ba4-a25f-f02d415182ef', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(43, 96, 1, 'Home', '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'b4a73b18-799d-4656-99e0-b283f60147df', 'Testing the Title Field', '<p></p><h2>Meet the Riders</h2>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n<p></p>', NULL, NULL),
(44, 100, 1, NULL, '2023-11-02 09:07:27', '2023-11-02 09:07:27', '9638c8b2-a563-4eaf-9174-19748d8e6c3e', NULL, NULL, NULL, NULL),
(45, 101, 1, NULL, '2023-11-02 09:09:46', '2023-11-02 09:09:46', '85455e15-30bc-4f97-a0f7-b667de323391', NULL, NULL, NULL, NULL),
(46, 102, 1, 'Our Gear', '2023-11-02 09:50:23', '2023-11-02 09:53:22', '00d3296f-2ec6-4de8-b75b-0c5d7c361238', NULL, NULL, '<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p><figure><img src=\"{asset:71:url||http://craftcms-tester.test/web/uploads/gear.jpg}\" alt=\"\" /></figure>\r\n<p></p><h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', NULL),
(47, 103, 1, 'Our Gear', '2023-11-02 09:50:41', '2023-11-02 09:50:41', 'b390af81-d9a4-475f-9d05-3ff61b36e845', NULL, NULL, NULL, NULL),
(49, 105, 1, 'Our Gear', '2023-11-02 09:53:22', '2023-11-02 09:53:22', 'db307add-68b8-4cf3-8070-a9db38e15f27', NULL, NULL, '<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.</p><figure><img src=\"{asset:71:url||http://craftcms-tester.test/web/uploads/gear.jpg}\" alt=\"\" /></figure>\r\n<p></p><h3>Arcu cursus vitae congue</h3>\r\n<p>Viverra nam libero justo laoreet sit amet cursus. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Dictum fusce ut placerat orci nulla pellentesque. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</p>', NULL),
(50, 106, 1, 'Fuji Motors', '2023-11-02 09:56:43', '2023-11-02 09:59:15', 'aefb8402-b65e-426e-ba4c-5709a9b13b1d', NULL, NULL, '<h3>Arcu cursus vitae congue</h3>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. Paecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. Maecenas sed enim ut sem viverra aliquet eget sit amet. Dalesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. <br /></p><figure><img src=\"{asset:7:url||http://craftcms-tester.test/web/uploads/vander-films-IWi2xbThF8U-unsplash.jpg}\" alt=\"\" /></figure>', NULL),
(51, 107, 1, 'Fuji Motors', '2023-11-02 09:59:15', '2023-11-02 09:59:15', '29e40ad9-9d70-43a4-8f2c-c2a495a515f1', NULL, NULL, '<h3>Arcu cursus vitae congue</h3>\r\n<p>Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. Paecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. Maecenas sed enim ut sem viverra aliquet eget sit amet. Dalesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu. <br /></p><figure><img src=\"{asset:7:url||http://craftcms-tester.test/web/uploads/vander-films-IWi2xbThF8U-unsplash.jpg}\" alt=\"\" /></figure>', NULL),
(52, 108, 1, NULL, '2023-11-02 10:17:10', '2023-11-02 10:21:30', '5665e2ac-0af6-4b6b-bebe-e517dfa09398', NULL, NULL, NULL, NULL),
(53, 111, 1, NULL, '2023-11-02 10:34:51', '2023-11-02 10:35:49', '03bbe3c3-8a49-45a4-b2c9-919427661c64', NULL, NULL, '<p>Copyright 2021 Motoventure Corp. All rights reserved.....</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crft_craftidtokens`
--

CREATE TABLE `crft_craftidtokens` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_deprecationerrors`
--

CREATE TABLE `crft_deprecationerrors` (
  `id` int NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint UNSIGNED DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_drafts`
--

CREATE TABLE `crft_drafts` (
  `id` int NOT NULL,
  `canonicalId` int DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_drafts`
--

INSERT INTO `crft_drafts` (`id`, `canonicalId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(9, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(10, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crft_elementactivity`
--

CREATE TABLE `crft_elementactivity` (
  `elementId` int NOT NULL,
  `userId` int NOT NULL,
  `siteId` int NOT NULL,
  `draftId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_elementactivity`
--

INSERT INTO `crft_elementactivity` (`elementId`, `userId`, `siteId`, `draftId`, `type`, `timestamp`) VALUES
(102, 1, 1, NULL, 'edit', '2023-11-02 09:53:19'),
(102, 1, 1, NULL, 'save', '2023-11-02 09:53:22'),
(106, 1, 1, NULL, 'save', '2023-11-02 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `crft_elements`
--

CREATE TABLE `crft_elements` (
  `id` int NOT NULL,
  `canonicalId` int DEFAULT NULL,
  `draftId` int DEFAULT NULL,
  `revisionId` int DEFAULT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_elements`
--

INSERT INTO `crft_elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2023-10-31 12:33:16', '2023-11-03 12:25:24', NULL, NULL, 'b9e1781e-c174-448e-95c5-596ecceae56b'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2023-10-31 13:41:44', '2023-11-01 18:13:48', NULL, NULL, '1653764b-2994-4d5c-8439-71c95ab49faa'),
(3, 2, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2023-10-31 13:41:44', '2023-10-31 13:41:44', NULL, NULL, 'f04676ce-8a99-4048-bfc4-9ef7a8f6c96b'),
(4, 2, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2023-10-31 13:41:44', '2023-10-31 13:41:44', NULL, NULL, '6a48e71a-4457-4bb1-b61e-b32bdd1d95a5'),
(5, 2, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2023-10-31 14:26:02', '2023-10-31 14:26:02', NULL, NULL, 'cb9e10bd-6c31-4127-b747-99cc67ef7a1c'),
(7, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-10-31 14:27:45', '2023-10-31 15:23:02', NULL, NULL, '72570878-ee35-49ca-bad0-eb87d66ddcbe'),
(8, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-10-31 14:50:00', '2023-10-31 14:50:00', NULL, '2023-10-31 14:50:06', 'f30e24c7-e869-4504-bad7-9b162ab0dfed'),
(9, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-10-31 15:15:55', '2023-10-31 15:15:55', NULL, '2023-10-31 15:15:59', '1d046132-00a7-4185-876e-37d65d715e04'),
(10, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-10-31 15:22:58', '2023-10-31 15:22:58', NULL, '2023-10-31 15:23:03', 'ec57ea30-8792-4631-80e8-7a05cfcbeeee'),
(11, 2, NULL, 4, 1, 'craft\\elements\\Entry', 1, 0, '2023-10-31 15:31:05', '2023-10-31 15:31:05', NULL, NULL, '99bf39ad-f3e5-4741-81a9-bc42e4493d25'),
(12, 2, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 12:57:14', '2023-11-01 12:57:14', NULL, NULL, 'd514d053-37d7-41bd-963a-a532b80e5c72'),
(13, 2, NULL, 6, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 13:56:42', '2023-11-01 13:56:42', NULL, NULL, '28f7b8dc-ca7f-4bfc-9a3f-0f31a10078a1'),
(21, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 13:58:24', '2023-11-01 13:58:24', NULL, NULL, '86e0bdb9-c80c-48d2-99a1-5c23b74dc97a'),
(34, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 14:00:10', '2023-11-01 14:00:10', NULL, NULL, 'bab26a45-18bf-46fc-9c06-b3e80511fa61'),
(52, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 14:00:36', '2023-11-01 14:00:36', NULL, NULL, '9c6dc040-e408-4c7e-b4e0-e2519df62332'),
(56, NULL, NULL, NULL, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 14:01:20', NULL, NULL, '89aa5de7-8581-48ff-b2d6-8235258a1294'),
(57, NULL, NULL, NULL, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:01:21', NULL, NULL, '8dce6c45-d5a3-4528-b1d4-17f0d372c55f'),
(58, NULL, NULL, NULL, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:01:21', NULL, NULL, '2035129a-3d11-489b-af62-d28715853e12'),
(59, 2, NULL, 7, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 14:01:20', '2023-11-01 14:01:21', NULL, NULL, '9ddb9ade-fa21-4805-945b-96d62ef8818b'),
(60, 56, NULL, 8, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 14:01:21', NULL, NULL, 'aa61e83c-1eb2-4c2d-b837-159b0d66ab2e'),
(61, 57, NULL, 9, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:01:21', NULL, NULL, 'ba8ad499-d2a2-433c-9c81-2f008ed56bf6'),
(62, 58, NULL, 10, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:01:21', NULL, NULL, 'b8cc4c33-b428-4456-b628-242b7a2fd304'),
(64, 2, NULL, 11, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 14:16:13', '2023-11-01 14:16:13', NULL, NULL, '04606e60-64f8-4b89-bd3b-d6b8985f14c0'),
(65, 56, NULL, 12, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 14:16:13', NULL, NULL, '4b89c7da-8456-4cf7-9882-ebdeda339e0f'),
(66, 58, NULL, 13, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:16:13', NULL, NULL, '118215af-651c-49d4-b526-267a45ff5205'),
(67, 57, NULL, 14, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 14:16:13', NULL, NULL, '6df205c7-72fb-4cf4-a636-cb950ae47ca9'),
(68, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 16:59:14', '2023-11-01 17:04:22', NULL, NULL, '0d3c2774-7664-4445-8b5c-d6ce86b4257f'),
(69, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:03:24', '2023-11-01 17:03:24', NULL, NULL, 'ffa54e21-c277-4bf1-8a11-22a24eda2069'),
(70, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:03:25', '2023-11-01 17:03:25', NULL, NULL, 'b585a52e-fe74-43b8-aa38-83483814b295'),
(71, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:03:26', '2023-11-01 17:03:26', NULL, NULL, 'e9eb0550-d67e-4237-9d2c-eab6189a73de'),
(72, 68, NULL, 15, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 17:04:22', '2023-11-01 17:04:23', NULL, NULL, '1640b126-66b3-4d3b-9bea-5ba839dc9c23'),
(73, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 17:04:43', '2023-11-01 17:05:35', NULL, NULL, '58529d3e-32a4-4965-89e2-aa1bca19ca99'),
(74, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:05:21', '2023-11-01 17:05:21', NULL, NULL, 'bd92befe-68ba-48e5-9cc5-dbcd7bcf8317'),
(75, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:05:22', '2023-11-01 17:05:22', NULL, NULL, 'c7f6a610-51a4-4413-a81f-dd95ba47b083'),
(76, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:05:23', '2023-11-01 17:05:23', NULL, NULL, 'bc40bea1-fcef-462e-b5ab-677950942810'),
(77, 73, NULL, 16, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 17:05:35', '2023-11-01 17:05:35', NULL, NULL, '14b0f9b5-11d9-42c1-8f14-d51da0cbf129'),
(78, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 17:05:39', '2023-11-01 17:06:49', NULL, NULL, '6ca031bb-c7b0-4f2e-82a5-cc2c4742789a'),
(79, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2023-11-01 17:06:33', '2023-11-01 17:06:33', NULL, NULL, 'fe709373-ca0b-41cc-bd7f-8bfa31e8a9bb'),
(80, 78, NULL, 17, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-01 17:06:49', '2023-11-01 17:06:49', NULL, NULL, 'f3f93870-8df2-44dc-a8ff-7578b0a5facf'),
(81, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:06:25', '2023-11-01 18:07:52', NULL, NULL, '73152fd9-f27d-4c18-9dc4-a35ef2d3d8b9'),
(82, 81, NULL, 18, 6, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:06:25', '2023-11-01 18:06:25', NULL, NULL, 'a2957784-0923-48dd-abc0-d47387ec13c1'),
(83, 81, NULL, 19, 6, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:06:26', '2023-11-01 18:06:26', NULL, NULL, '6aca323c-796d-4549-a161-e3943d0f4c47'),
(84, 81, NULL, 20, 6, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:07:05', '2023-11-01 18:07:05', NULL, NULL, 'd30626bc-9c01-4962-8c03-98b416eb555b'),
(86, 81, NULL, 21, 6, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:07:52', '2023-11-01 18:07:52', NULL, NULL, 'cb733520-cd76-4348-b745-b1c3c7555172'),
(87, 2, NULL, 22, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:12:30', '2023-11-01 18:12:30', NULL, NULL, '0b87c3af-b1bb-4775-9ea4-7c73a81d997d'),
(88, 56, NULL, 23, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 18:12:30', NULL, NULL, '8367a8b3-8be7-45c6-869f-36aab3e09b31'),
(89, 58, NULL, 24, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:12:30', NULL, NULL, '661bfcc0-6eb2-4856-9c7e-3b1f56646b7a'),
(90, 57, NULL, 25, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:12:30', NULL, NULL, '16b114af-0eef-40ce-a7a0-af8b35603e83'),
(91, 2, NULL, 26, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:13:02', '2023-11-01 18:13:02', NULL, NULL, 'e64e7673-1d9e-4012-afdc-eb959b764b7d'),
(92, 56, NULL, 27, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 18:13:02', NULL, NULL, 'f9adccd7-8de0-45ff-84f0-218bd7c11ad5'),
(93, 58, NULL, 28, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:13:02', NULL, NULL, '7050bf74-eb2b-4877-9599-898561664a07'),
(94, 57, NULL, 29, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:13:02', NULL, NULL, 'a326dde5-3684-4de5-80ca-9cf9385d2594'),
(96, 2, NULL, 30, 1, 'craft\\elements\\Entry', 1, 0, '2023-11-01 18:13:48', '2023-11-01 18:13:48', NULL, NULL, 'bf25bef6-2605-458d-bbfb-fdc94b679a24'),
(97, 56, NULL, 31, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:20', '2023-11-01 18:13:48', NULL, NULL, 'cbe5c35a-2de6-401e-b5e6-f34a1514c776'),
(98, 58, NULL, 32, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:13:48', NULL, NULL, '64004d60-2845-471f-aa98-bc345211fdfa'),
(99, 57, NULL, 33, 3, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-01 14:01:21', '2023-11-01 18:13:48', NULL, NULL, 'a56712bf-68ea-41f8-ac96-6a9f72805e08'),
(100, NULL, 9, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:07:27', '2023-11-02 09:07:27', NULL, NULL, '63d15ecb-b28a-4004-a7d8-bfe620b21fa3'),
(101, NULL, 10, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:09:46', '2023-11-02 09:09:46', NULL, NULL, 'c5a933c3-db64-4662-86fb-727c4b12d839'),
(102, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:50:22', '2023-11-02 09:53:22', NULL, NULL, '6fa34c4a-7724-4b7c-936b-b02794aacfd1'),
(103, 102, NULL, 34, 7, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:50:41', '2023-11-02 09:50:41', NULL, NULL, 'c34a1571-c504-4b0f-8540-364e23ec8b44'),
(105, 102, NULL, 35, 7, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:53:22', '2023-11-02 09:53:22', NULL, NULL, '74144ae1-d641-443d-896a-478c7654248a'),
(106, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:56:43', '2023-11-02 09:59:15', NULL, NULL, '26a93f3e-44a6-4cc4-8850-5aa1261bc768'),
(107, 106, NULL, 36, 7, 'craft\\elements\\Entry', 1, 0, '2023-11-02 09:59:15', '2023-11-02 09:59:15', NULL, NULL, 'c31bb047-f6f6-4df5-b3f2-753ac43a1d90'),
(108, NULL, NULL, NULL, 9, 'craft\\elements\\GlobalSet', 1, 0, '2023-11-02 10:17:10', '2023-11-02 10:21:30', NULL, NULL, '12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1'),
(109, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-02 10:21:30', '2023-11-02 10:21:30', NULL, NULL, '524128ac-f962-4183-8c2b-35b21ee2ee9a'),
(110, NULL, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2023-11-02 10:21:30', '2023-11-02 10:21:30', NULL, NULL, '8963b31b-50a8-41cd-a84d-9b78b9516de7'),
(111, NULL, NULL, NULL, 10, 'craft\\elements\\GlobalSet', 1, 0, '2023-11-02 10:34:51', '2023-11-02 10:35:49', NULL, NULL, '63bff4e7-9b7b-4266-98f0-5c2c8cf3463e');

-- --------------------------------------------------------

--
-- Table structure for table `crft_elements_sites`
--

CREATE TABLE `crft_elements_sites` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_elements_sites`
--

INSERT INTO `crft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2023-10-31 12:33:16', '2023-10-31 12:33:16', '86af5abd-0020-43f5-a627-f1025982a557'),
(2, 2, 1, 'home', '__home__', 1, '2023-10-31 13:41:44', '2023-10-31 13:41:44', 'd772e7ca-3185-49fa-85a3-9c6e350913ee'),
(3, 3, 1, 'home', '__home__', 1, '2023-10-31 13:41:44', '2023-10-31 13:41:44', 'cc77f0a7-a33a-4a01-8df0-6fae78d36124'),
(4, 4, 1, 'home', '__home__', 1, '2023-10-31 13:41:44', '2023-10-31 13:41:44', '82b54978-a780-4db7-a7f8-a418f1436ec8'),
(5, 5, 1, 'home', '__home__', 1, '2023-10-31 14:26:02', '2023-10-31 14:26:02', '33c21f80-2d09-498c-bb50-0dd7b35f80d3'),
(7, 7, 1, NULL, NULL, 1, '2023-10-31 14:27:45', '2023-10-31 14:27:45', 'f96dbe1b-dbff-43ee-8ec5-f898f30c3f7a'),
(8, 8, 1, NULL, NULL, 1, '2023-10-31 14:50:00', '2023-10-31 14:50:00', 'a984e030-0a01-4610-a676-d521a3cc8469'),
(9, 9, 1, NULL, NULL, 1, '2023-10-31 15:15:55', '2023-10-31 15:15:55', '82c458f2-4277-4b29-ab26-2fcf2eff4f3a'),
(10, 10, 1, NULL, NULL, 1, '2023-10-31 15:22:58', '2023-10-31 15:22:58', 'a63b0449-80e8-49c9-bf4b-ed3b685b3ce6'),
(11, 11, 1, 'home', '__home__', 1, '2023-10-31 15:31:05', '2023-10-31 15:31:05', '0e497be0-e1d1-4c14-aa1c-d0813e5cb6ac'),
(12, 12, 1, 'home', '__home__', 1, '2023-11-01 12:57:14', '2023-11-01 12:57:14', 'd3ea4d24-d3ca-4dcf-88de-21670a608ace'),
(13, 13, 1, 'home', '__home__', 1, '2023-11-01 13:56:42', '2023-11-01 13:56:42', '88d67c3a-1622-4881-946b-e3c269da9650'),
(21, 21, 1, NULL, NULL, 1, '2023-11-01 13:58:24', '2023-11-01 13:58:24', 'bb7e452f-f252-48c8-8371-5f17f78c3c5c'),
(34, 34, 1, NULL, NULL, 1, '2023-11-01 14:00:10', '2023-11-01 14:00:10', '76779a5c-1440-4bed-abff-25dcbe455110'),
(52, 52, 1, NULL, NULL, 1, '2023-11-01 14:00:36', '2023-11-01 14:00:36', 'a697299b-6047-496d-bd47-07be509e0778'),
(56, 56, 1, NULL, NULL, 1, '2023-11-01 14:01:20', '2023-11-01 14:01:20', '32e23720-27b3-4571-89d3-fd086b8afe7a'),
(57, 57, 1, NULL, NULL, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '39c3dee5-f6dc-4fe5-8447-eb10161bd4ad'),
(58, 58, 1, NULL, NULL, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'd64e457a-c607-4f03-a5c8-2da3999cbe49'),
(59, 59, 1, 'home', '__home__', 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '4ec5f5cc-039a-43f1-90b3-582d69cef00f'),
(60, 60, 1, NULL, NULL, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '1572bc50-24d9-43a6-a445-e54bf7ebb220'),
(61, 61, 1, NULL, NULL, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '771fe745-9f73-48f9-9ae2-2388134f25d7'),
(62, 62, 1, NULL, NULL, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'e68ac1d4-a42c-4d6e-93ed-306bed77c798'),
(64, 64, 1, 'home', '__home__', 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '446507fb-2aea-414a-85b8-ff255829bd58'),
(65, 65, 1, NULL, NULL, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '137b4ab0-8d6b-4431-92a6-4a7d479bba1d'),
(66, 66, 1, NULL, NULL, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '2b7eeb6d-ce1c-486c-81ec-434634196656'),
(67, 67, 1, NULL, NULL, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', 'd51f0340-4d27-4d7f-9f68-330bc5d6ab84'),
(68, 68, 1, 'exporing-peru-by-motorbike', 'stories/exporing-peru-by-motorbike', 1, '2023-11-01 16:59:14', '2023-11-01 17:01:54', '0e5f5d20-cf50-47c5-b679-2dbef82f14dd'),
(69, 69, 1, NULL, NULL, 1, '2023-11-01 17:03:24', '2023-11-01 17:03:24', 'a1c78be4-4e7f-4c33-a835-fe74d609fab3'),
(70, 70, 1, NULL, NULL, 1, '2023-11-01 17:03:25', '2023-11-01 17:03:25', 'f577f062-c83f-462c-9c81-f32828e7bb78'),
(71, 71, 1, NULL, NULL, 1, '2023-11-01 17:03:26', '2023-11-01 17:03:26', 'db385a2d-0227-487e-a064-529e542854ae'),
(72, 72, 1, 'exporing-peru-by-motorbike', 'stories/exporing-peru-by-motorbike', 1, '2023-11-01 17:04:23', '2023-11-01 17:04:23', '0f9aa39a-e14b-40b2-bec4-57b8d1afdb54'),
(73, 73, 1, 'ktms-nile-river-rally', 'stories/ktms-nile-river-rally', 1, '2023-11-01 17:04:43', '2023-11-01 17:04:52', 'c76189f6-076f-467a-bfe5-b57e0b95b61f'),
(74, 74, 1, NULL, NULL, 1, '2023-11-01 17:05:21', '2023-11-01 17:05:21', '789db88c-1480-4824-8357-521293169532'),
(75, 75, 1, NULL, NULL, 1, '2023-11-01 17:05:22', '2023-11-01 17:05:22', 'aae197fb-6ecf-4760-aec5-697982430e19'),
(76, 76, 1, NULL, NULL, 1, '2023-11-01 17:05:23', '2023-11-01 17:05:23', 'bd387056-c4cc-4e1e-b1ae-82278a65df7e'),
(77, 77, 1, 'ktms-nile-river-rally', 'stories/ktms-nile-river-rally', 1, '2023-11-01 17:05:35', '2023-11-01 17:05:35', 'b5dcb45c-3768-46f5-9768-3902dcf70200'),
(78, 78, 1, 'summer-days-in-argentina', 'stories/summer-days-in-argentina', 1, '2023-11-01 17:05:39', '2023-11-01 17:05:47', '3d06fa03-ed2f-4c8f-8739-62071d99c83c'),
(79, 79, 1, NULL, NULL, 1, '2023-11-01 17:06:33', '2023-11-01 17:06:33', '11522087-9168-4916-b226-9a47b3e6526e'),
(80, 80, 1, 'summer-days-in-argentina', 'stories/summer-days-in-argentina', 1, '2023-11-01 17:06:49', '2023-11-01 17:06:49', '82ec59cf-f6a8-48dc-88dc-e70b1a698278'),
(81, 81, 1, 'stories-listing', 'stories', 1, '2023-11-01 18:06:25', '2023-11-01 18:06:25', '64acfd82-dcac-4943-b1fc-fd9e0b87b2d6'),
(82, 82, 1, 'stories-listing', 'stories', 1, '2023-11-01 18:06:25', '2023-11-01 18:06:25', '4637ff5a-179f-4bfd-a738-13fe32af5820'),
(83, 83, 1, 'stories-listing', 'stories', 1, '2023-11-01 18:06:26', '2023-11-01 18:06:26', '3b72accf-d26b-43ab-aca5-b46bc4ee5545'),
(84, 84, 1, 'stories-listing', 'stories', 1, '2023-11-01 18:07:05', '2023-11-01 18:07:05', '0f429b7e-eb7c-4a12-a274-d253d17b21d1'),
(86, 86, 1, 'stories-listing', 'stories', 1, '2023-11-01 18:07:52', '2023-11-01 18:07:52', 'dd8a0dc9-7a7c-4a2e-92c2-94b064f4afe2'),
(87, 87, 1, 'home', '__home__', 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '4add0435-f77b-4a75-8fbf-2e9f08c2ae64'),
(88, 88, 1, NULL, NULL, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '294e5dc8-744b-49f2-8388-e37c0e0ff8c9'),
(89, 89, 1, NULL, NULL, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '12a4b5e2-121d-4951-a40d-d3ba0ef9421a'),
(90, 90, 1, NULL, NULL, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', 'b938b43f-7b0f-4d9e-80f2-91b7daf132b3'),
(91, 91, 1, 'home', '__home__', 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '0d801189-2ab5-429f-853b-be05e152c3c4'),
(92, 92, 1, NULL, NULL, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '6476b93a-44fe-4138-b96f-a0356e388b61'),
(93, 93, 1, NULL, NULL, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'ba34e808-a2b6-41b5-9798-d9bc209f664c'),
(94, 94, 1, NULL, NULL, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'c545e151-a96d-4985-9869-093912f502e6'),
(96, 96, 1, 'home', '__home__', 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'ad7f1522-be47-45dc-9532-202f8d8b867f'),
(97, 97, 1, NULL, NULL, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '3b364bc5-3f39-4fc0-b5fd-e39a9e1a2c1a'),
(98, 98, 1, NULL, NULL, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'f1fc5237-e2d7-4c11-ad2c-4adb36e2a193'),
(99, 99, 1, NULL, NULL, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '75f4b0c5-fed7-459d-a83e-6ab44b285157'),
(100, 100, 1, '__temp_flyjyzsrrvhizqlnhacllrphvbeaajmxjgvy', 'stories/__temp_flyjyzsrrvhizqlnhacllrphvbeaajmxjgvy', 1, '2023-11-02 09:07:27', '2023-11-02 09:07:27', '574a5219-035f-406b-a1cb-c3a8ad370897'),
(101, 101, 1, '__temp_lseomlbclldjfalthjvkybagikhcuabajnor', 'stories/__temp_lseomlbclldjfalthjvkybagikhcuabajnor', 1, '2023-11-02 09:09:46', '2023-11-02 09:09:46', 'cc2e10a8-bd5a-49e1-83e6-8b2dae5d44c0'),
(102, 102, 1, 'our-gear', 'our-gear', 1, '2023-11-02 09:50:22', '2023-11-02 09:50:35', '81a9f3fb-e2d8-4e16-8d57-3d8c72fe384e'),
(103, 103, 1, 'our-gear', 'our-gear', 1, '2023-11-02 09:50:41', '2023-11-02 09:50:41', 'fc1cc979-78fd-418a-8879-8ab286d19e4c'),
(105, 105, 1, 'our-gear', 'our-gear', 1, '2023-11-02 09:53:22', '2023-11-02 09:53:22', '2f9a79fb-1656-4685-8498-41964d4d39a0'),
(106, 106, 1, 'fuji-motors', 'our-gear/fuji-motors', 1, '2023-11-02 09:56:43', '2023-11-02 09:59:42', '21937466-81d9-4005-b138-e375a5d0e55a'),
(107, 107, 1, 'fuji-motors', 'fuji-motors', 1, '2023-11-02 09:59:15', '2023-11-02 09:59:15', '04f096aa-aa56-4e41-95b2-4c08fe63f51b'),
(108, 108, 1, NULL, NULL, 1, '2023-11-02 10:17:10', '2023-11-02 10:17:10', '26ed8523-aa86-4428-9dfb-91d8af9d37bf'),
(109, 109, 1, NULL, NULL, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '7c27057b-79d0-47f5-b5ad-796280cf0e18'),
(110, 110, 1, NULL, NULL, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '8f540673-1387-4053-81dc-3f3ae07d5c30'),
(111, 111, 1, NULL, NULL, 1, '2023-11-02 10:34:51', '2023-11-02 10:34:51', '9080f562-e9e7-40ff-87a2-348eb7e3b7cb');

-- --------------------------------------------------------

--
-- Table structure for table `crft_entries`
--

CREATE TABLE `crft_entries` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `authorId` int DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_entries`
--

INSERT INTO `crft_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-10-31 13:41:44', '2023-10-31 13:41:44'),
(3, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-10-31 13:41:44', '2023-10-31 13:41:44'),
(4, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-10-31 13:41:44', '2023-10-31 13:41:44'),
(5, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-10-31 14:26:02', '2023-10-31 14:26:02'),
(11, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-10-31 15:31:05', '2023-10-31 15:31:05'),
(12, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 12:57:14', '2023-11-01 12:57:14'),
(13, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 13:56:42', '2023-11-01 13:56:42'),
(59, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(64, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 14:16:13', '2023-11-01 14:16:13'),
(68, 3, NULL, 3, 1, '2023-11-01 17:04:00', NULL, NULL, '2023-11-01 16:59:14', '2023-11-01 17:04:22'),
(72, 3, NULL, 3, 1, '2023-11-01 17:04:00', NULL, NULL, '2023-11-01 17:04:23', '2023-11-01 17:04:23'),
(73, 3, NULL, 3, 1, '2023-11-01 17:05:00', NULL, NULL, '2023-11-01 17:04:43', '2023-11-01 17:05:34'),
(77, 3, NULL, 3, 1, '2023-11-01 17:05:00', NULL, NULL, '2023-11-01 17:05:35', '2023-11-01 17:05:35'),
(78, 3, NULL, 3, 1, '2023-11-01 17:06:00', NULL, NULL, '2023-11-01 17:05:39', '2023-11-01 17:06:49'),
(80, 3, NULL, 3, 1, '2023-11-01 17:06:00', NULL, NULL, '2023-11-01 17:06:49', '2023-11-01 17:06:49'),
(81, 4, NULL, 4, NULL, '2023-11-01 18:06:00', NULL, NULL, '2023-11-01 18:06:25', '2023-11-01 18:06:25'),
(82, 4, NULL, 4, NULL, '2023-11-01 18:06:00', NULL, NULL, '2023-11-01 18:06:25', '2023-11-01 18:06:25'),
(83, 4, NULL, 4, NULL, '2023-11-01 18:06:00', NULL, NULL, '2023-11-01 18:06:26', '2023-11-01 18:06:26'),
(84, 4, NULL, 4, NULL, '2023-11-01 18:06:00', NULL, NULL, '2023-11-01 18:07:05', '2023-11-01 18:07:05'),
(86, 4, NULL, 4, NULL, '2023-11-01 18:06:00', NULL, NULL, '2023-11-01 18:07:52', '2023-11-01 18:07:52'),
(87, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 18:12:30', '2023-11-01 18:12:30'),
(91, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 18:13:02', '2023-11-01 18:13:02'),
(96, 1, NULL, 1, NULL, '2023-10-31 13:41:00', NULL, NULL, '2023-11-01 18:13:48', '2023-11-01 18:13:48'),
(100, 3, NULL, 3, 1, '2023-11-02 09:07:27', NULL, NULL, '2023-11-02 09:07:27', '2023-11-02 09:07:27'),
(101, 3, NULL, 3, 1, '2023-11-02 09:09:46', NULL, NULL, '2023-11-02 09:09:46', '2023-11-02 09:09:46'),
(102, 5, NULL, 5, 1, '2023-11-02 09:50:00', NULL, NULL, '2023-11-02 09:50:22', '2023-11-02 09:50:41'),
(103, 5, NULL, 5, 1, '2023-11-02 09:50:00', NULL, NULL, '2023-11-02 09:50:41', '2023-11-02 09:50:41'),
(105, 5, NULL, 5, 1, '2023-11-02 09:50:00', NULL, NULL, '2023-11-02 09:53:22', '2023-11-02 09:53:22'),
(106, 5, NULL, 5, 1, '2023-11-02 09:59:00', NULL, NULL, '2023-11-02 09:56:43', '2023-11-02 09:59:15'),
(107, 5, NULL, 5, 1, '2023-11-02 09:59:00', NULL, NULL, '2023-11-02 09:59:15', '2023-11-02 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `crft_entrytypes`
--

CREATE TABLE `crft_entrytypes` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `slugTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `slugTranslationKeyFormat` text,
  `showStatusField` tinyint(1) DEFAULT '1',
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_entrytypes`
--

INSERT INTO `crft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `slugTranslationMethod`, `slugTranslationKeyFormat`, `showStatusField`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 'site', NULL, 1, 1, '2023-10-31 13:41:43', '2023-10-31 13:41:43', NULL, '2676e5cd-afc3-4cb6-b35e-982c0e4f5458'),
(2, 2, 4, 'Default', 'default', 1, 'site', NULL, NULL, 'site', NULL, 1, 1, '2023-11-01 16:54:30', '2023-11-01 16:54:30', '2023-11-01 16:56:04', '13c76b3d-bf83-4276-a617-b1483096e57b'),
(3, 3, 5, 'Stories', 'Stories', 1, 'site', NULL, NULL, 'site', NULL, 0, 1, '2023-11-01 16:57:20', '2023-11-01 16:58:46', NULL, '1c1ae85e-29f6-40bc-8a05-89a093d8ca85'),
(4, 4, 6, 'Stories Listing', 'storiesListing', 1, 'site', NULL, '{section.name|raw}', 'site', NULL, 0, 1, '2023-11-01 18:06:25', '2023-11-01 18:07:05', NULL, '686eab3b-dd97-4e17-8b37-2bf780e69060'),
(5, 5, 7, 'General Pages', 'generalPages', 1, 'site', NULL, NULL, 'site', NULL, 0, 1, '2023-11-02 09:48:46', '2023-11-02 09:50:06', NULL, 'dcf144ae-03ec-4cc6-8697-62618324cfbf');

-- --------------------------------------------------------

--
-- Table structure for table `crft_fieldgroups`
--

CREATE TABLE `crft_fieldgroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_fieldgroups`
--

INSERT INTO `crft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2023-10-31 12:33:16', '2023-10-31 12:33:16', NULL, '91e43bf0-87e7-41d0-86a2-2576d7217b4f'),
(2, 'Home Page', '2023-10-31 14:20:16', '2023-10-31 14:20:16', NULL, '5e9b40b0-1a44-47f7-b5d4-c066ca3997f0');

-- --------------------------------------------------------

--
-- Table structure for table `crft_fieldlayoutfields`
--

CREATE TABLE `crft_fieldlayoutfields` (
  `id` int NOT NULL,
  `layoutId` int NOT NULL,
  `tabId` int NOT NULL,
  `fieldId` int NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_fieldlayoutfields`
--

INSERT INTO `crft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 3, 5, 6, 1, 0, '2023-11-01 13:03:01', '2023-11-01 13:03:01', 'b2827858-5f1c-4c3b-a266-38b7d8bb7cb0'),
(7, 3, 5, 7, 1, 1, '2023-11-01 13:03:01', '2023-11-01 13:03:01', '9660be70-e6f6-4e6e-a4d7-a2cb9d26e810'),
(8, 3, 5, 5, 1, 2, '2023-11-01 13:03:01', '2023-11-01 13:03:01', '04125e64-49f6-40cc-88f4-f2c333e95e00'),
(13, 5, 10, 8, 0, 1, '2023-11-01 16:58:46', '2023-11-01 16:58:46', 'e75a5cbc-fa97-4580-aacb-8a546010a71f'),
(14, 5, 10, 9, 0, 2, '2023-11-01 16:58:46', '2023-11-01 16:58:46', 'ba0aeec1-0d68-4b26-aea0-7ff99cc1aae8'),
(15, 5, 10, 10, 0, 3, '2023-11-01 16:58:46', '2023-11-01 16:58:46', '5aa1f1ba-3c98-4a33-ac56-c7b531039729'),
(21, 1, 16, 1, 0, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'd3e8a4dd-b513-4102-8b98-800f7c50d98d'),
(22, 1, 16, 2, 0, 2, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '5fab74f3-7343-4cb7-8997-b22beba626d5'),
(23, 1, 17, 11, 0, 0, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '9bc57ca7-f883-46c9-bece-6e49c505978d'),
(24, 1, 18, 3, 0, 0, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '08019285-17af-4681-b2b0-e58360d84596'),
(25, 1, 18, 4, 0, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'd2647efc-fe54-4c72-88df-3fcb10a725ca'),
(26, 7, 21, 9, 0, 1, '2023-11-02 09:51:46', '2023-11-02 09:51:46', '82934f4c-711c-43ec-a998-45e8255e40fc'),
(27, 8, 22, 14, 1, 0, '2023-11-02 10:13:15', '2023-11-02 10:13:15', '37a78195-958b-4a0a-a860-0d924ae3bd2c'),
(28, 8, 22, 13, 1, 1, '2023-11-02 10:13:15', '2023-11-02 10:13:15', 'c39d5229-06be-4aab-bd05-f38efe74962a'),
(29, 9, 23, 12, 0, 0, '2023-11-02 10:17:10', '2023-11-02 10:17:10', '7ae208cd-aa40-4353-acd0-4563d82d2b33'),
(30, 10, 24, 9, 0, 0, '2023-11-02 10:34:51', '2023-11-02 10:34:51', 'fd307cda-e62e-489f-93c1-1c2ecf16adcf');

-- --------------------------------------------------------

--
-- Table structure for table `crft_fieldlayouts`
--

CREATE TABLE `crft_fieldlayouts` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_fieldlayouts`
--

INSERT INTO `crft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2023-10-31 13:41:43', '2023-10-31 13:41:43', NULL, 'f6a9b0a2-339c-4fb6-94b1-580dba36daad'),
(2, 'craft\\elements\\Asset', '2023-10-31 14:19:01', '2023-10-31 14:19:01', NULL, '140143a5-4b31-4820-a133-e1d779f1c4c4'),
(3, 'craft\\elements\\MatrixBlock', '2023-11-01 13:03:01', '2023-11-01 13:03:01', NULL, '58640ac2-58c7-4775-8d4b-233e8f2c7cc1'),
(4, 'craft\\elements\\Entry', '2023-11-01 16:54:30', '2023-11-01 16:54:30', '2023-11-01 16:56:04', 'f133f538-1323-4a17-b940-a2e72b1c9c3a'),
(5, 'craft\\elements\\Entry', '2023-11-01 16:57:20', '2023-11-01 16:57:20', NULL, '0332bb7f-cd35-40f6-b789-139b4e9a5b49'),
(6, 'craft\\elements\\Entry', '2023-11-01 18:06:25', '2023-11-01 18:06:25', NULL, '20168f72-ab65-40c3-be4f-b20d1412e8c2'),
(7, 'craft\\elements\\Entry', '2023-11-02 09:48:46', '2023-11-02 09:48:46', NULL, '4c1d1f65-6f1f-433b-abaf-8cd4666a899d'),
(8, 'craft\\elements\\MatrixBlock', '2023-11-02 10:13:15', '2023-11-02 10:13:15', NULL, '50c37d1e-21b8-4137-807b-2cbf0d324390'),
(9, 'craft\\elements\\GlobalSet', '2023-11-02 10:17:10', '2023-11-02 10:17:10', NULL, 'dd17f29f-8a4b-4188-adef-882ea742dc3c'),
(10, 'craft\\elements\\GlobalSet', '2023-11-02 10:34:51', '2023-11-02 10:34:51', NULL, 'f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b');

-- --------------------------------------------------------

--
-- Table structure for table `crft_fieldlayouttabs`
--

CREATE TABLE `crft_fieldlayouttabs` (
  `id` int NOT NULL,
  `layoutId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text,
  `elements` text,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_fieldlayouttabs`
--

INSERT INTO `crft_fieldlayouttabs` (`id`, `layoutId`, `name`, `settings`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"6e69f5a4-103c-44f1-8cbe-1824baa8649b\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-10-31 14:19:01', '2023-10-31 14:19:01', 'bba74a51-0028-4d07-9cc5-b799fc107b69'),
(5, 3, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"d2db0199-1d34-455c-acf0-5534c967be53\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9361d4cf-aab0-46e9-b6b7-c2bc91059832\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"053e1946-68bf-4fb4-84ac-bc48cd28b3a5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"f6647277-94f6-4b5c-a69c-869e61bc7cb0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"0c0dd5fe-42e8-4273-b9c2-3cf840861959\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"843a6afc-942f-4fcd-9d44-5980e23622ee\"}]', 1, '2023-11-01 13:03:01', '2023-11-01 13:03:01', '4d1ea4b2-915e-4daa-bb75-7631e06228d5'),
(8, 4, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"70b3a4aa-811e-4a18-9598-9c42914012ff\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-11-01 16:54:30', '2023-11-01 16:54:30', '82554e8d-b34f-446c-a791-6ef6c79bcafa'),
(10, 5, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"76ae5a2b-27d2-4a81-8644-16d35374427b\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c86c7c16-1e1b-4bc8-994f-2428a4a9ea8b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"5fe4002f-d114-49ac-8f0b-a11ce693adf8\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"1a4d77ab-d582-4756-81f6-a56f85125608\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"65a874e7-1c8c-4d5e-b117-74b6d42b525a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"82052d4c-990d-4680-9996-93fd7fbcf208\"}]', 1, '2023-11-01 16:58:46', '2023-11-01 16:58:46', 'b6419e7d-e081-4810-a101-ded326ffb6de'),
(12, 6, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"fefe644c-aa3d-4195-8925-0200ebe1fed4\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-11-01 18:07:05', '2023-11-01 18:07:05', '71ee59be-da4b-4fad-9453-035cb29c8dc5'),
(16, 1, 'Hero', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"bd72a219-2b8e-4b45-ad28-20296197448a\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d648ccad-9e24-442f-a6d8-8add3fff84e8\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"daaf24e3-3156-4fbf-8ea6-3d4f55657051\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"99fa0c14-8d48-4a64-be85-1ee620bd73bd\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"03032ea8-b23a-4b51-966a-ee4c850c423c\"}]', 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '3f3b26ba-4278-4617-b9eb-1b63cb2350a9'),
(17, 1, 'Featured Story', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"0e748bee-5e59-4795-932b-3cf038790421\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bb63441f-923a-4a2c-8513-35dd5af4bb11\"}]', 2, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '9b4fb044-d77d-47ba-8949-a04922248ba4'),
(18, 1, 'Riders', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"85b8e17a-a4c7-48ce-8fde-f1076178e683\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3e96d424-e122-43a7-b165-947f2048a8dc\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f1d6c7ba-4937-4e8f-9c6c-76572b6b398b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"4aa3edd5-8bfc-42ba-b540-5de6dd750eb5\"}]', 3, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '6f8fecae-f791-49bb-81b1-a9d2407cdcca'),
(21, 7, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"3d387b43-d165-44be-ae1e-525f49983e36\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"70d4c93c-46b1-47bf-b665-cdb61719c127\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"}]', 1, '2023-11-02 09:51:46', '2023-11-02 09:51:46', 'd68b0e08-0bd5-44d4-b177-afb352de523c'),
(22, 8, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"d130af2f-be85-4941-bbb9-41b3e14f61c1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"787bd09d-39b1-435d-b43c-5b97562dd88f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"17977bb0-431e-4707-b068-30db457dd45a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"84d2f1ab-d6ba-41a8-beff-466dea3da3ac\"}]', 1, '2023-11-02 10:13:15', '2023-11-02 10:13:15', 'f6d91b1f-c705-4171-8715-9274c7b9e0b2'),
(23, 9, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"9a21fa4f-4926-438e-89ef-b98b31705ef1\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"a25d5806-91e4-4856-9334-d2e03ee8d82e\"}]', 1, '2023-11-02 10:17:10', '2023-11-02 10:17:10', '1089e6f8-414a-4f63-b27f-a5bab1707a72'),
(24, 10, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"fedf2602-4587-44aa-b400-16a3cd99c029\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"}]', 1, '2023-11-02 10:34:51', '2023-11-02 10:34:51', 'ae46b40e-5f3a-4a18-b73a-3482fd4b7391');

-- --------------------------------------------------------

--
-- Table structure for table `crft_fields`
--

CREATE TABLE `crft_fields` (
  `id` int NOT NULL,
  `groupId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_fields`
--

INSERT INTO `crft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Hero Title', 'heroTitle', 'global', 'dtlkwmfu', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-10-31 14:21:05', '2023-10-31 14:21:05', 'daaf24e3-3156-4fbf-8ea6-3d4f55657051'),
(2, 2, 'Hero Image', 'heroImage', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a background image\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-10-31 14:24:40', '2023-10-31 14:24:40', '03032ea8-b23a-4b51-966a-ee4c850c423c'),
(3, 2, 'Riders Intro Content', 'ridersIntroContent', 'global', 'itbksfam', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2023-11-01 12:56:12', '2023-11-01 12:56:12', '3e96d424-e122-43a7-b165-947f2048a8dc'),
(4, 2, 'Riders', 'riders', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_riders}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2023-11-01 13:02:58', '2023-11-01 13:02:58', '4aa3edd5-8bfc-42ba-b540-5de6dd750eb5'),
(5, NULL, 'Description', 'description', 'matrixBlockType:bc5fbe1b-101b-474a-a837-84bea84bb449', 'xiccetpv', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":2,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-11-01 13:03:01', '2023-11-01 13:03:01', '843a6afc-942f-4fcd-9d44-5980e23622ee'),
(6, NULL, 'Photo', 'photo', 'matrixBlockType:bc5fbe1b-101b-474a-a837-84bea84bb449', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2023-11-01 13:03:01', '2023-11-01 13:03:01', '9361d4cf-aab0-46e9-b6b7-c2bc91059832'),
(7, NULL, 'Full Name', 'fullName', 'matrixBlockType:bc5fbe1b-101b-474a-a837-84bea84bb449', 'zdjhfozj', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-11-01 13:03:01', '2023-11-01 13:03:01', 'f6647277-94f6-4b5c-a69c-869e61bc7cb0'),
(8, 1, 'Photos', 'photos', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":4,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":\"Add photos\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":[\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-11-01 16:49:08', '2023-11-01 16:50:18', '5fe4002f-d114-49ac-8f0b-a11ce693adf8'),
(9, 1, 'Rich Text', 'richText', 'global', 'alcbujfw', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"9e4f26cd-50d4-42bd-a96b-cd15990d3d4a\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2023-11-01 16:50:00', '2023-11-02 11:16:40', '21d8fb85-0963-468e-825f-e3f7c3dfe1c6'),
(10, 1, 'Short Description', 'shortDescription', 'global', 'ntfaxqxc', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":3,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-11-01 16:52:27', '2023-11-01 16:52:27', '82052d4c-990d-4680-9996-93fd7fbcf208'),
(11, 2, 'Featured Story', 'featuredStory', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":\"Select a story\",\"showSiteMenu\":false,\"sources\":[\"section:06df8f08-c36e-4694-9fea-74644bd6bc95\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2023-11-01 18:11:45', '2023-11-01 18:11:45', 'bb63441f-923a-4a2c-8513-35dd5af4bb11'),
(12, 1, 'Nav Links', 'navLinks', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_navlinks}}\",\"maxBlocks\":null,\"minBlocks\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2023-11-02 10:13:14', '2023-11-02 10:13:14', 'a25d5806-91e4-4856-9334-d2e03ee8d82e'),
(13, NULL, 'Link Destination', 'linkDestination', 'matrixBlockType:6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"branchLimit\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":1,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":\"Select and entry\",\"showSiteMenu\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2023-11-02 10:13:15', '2023-11-02 10:13:15', '84d2f1ab-d6ba-41a8-beff-466dea3da3ac'),
(14, NULL, 'Link Text', 'linkText', 'matrixBlockType:6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7', 'pzxhkypj', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-11-02 10:13:15', '2023-11-02 10:13:15', '787bd09d-39b1-435d-b43c-5b97562dd88f');

-- --------------------------------------------------------

--
-- Table structure for table `crft_globalsets`
--

CREATE TABLE `crft_globalsets` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_globalsets`
--

INSERT INTO `crft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(108, 'Header', 'header', 9, 1, '2023-11-02 10:17:10', '2023-11-02 10:17:10', '12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1'),
(111, 'Footer', 'footer', 10, 2, '2023-11-02 10:34:51', '2023-11-02 10:34:51', '63bff4e7-9b7b-4266-98f0-5c2c8cf3463e');

-- --------------------------------------------------------

--
-- Table structure for table `crft_gqlschemas`
--

CREATE TABLE `crft_gqlschemas` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_gqltokens`
--

CREATE TABLE `crft_gqltokens` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_imagetransformindex`
--

CREATE TABLE `crft_imagetransformindex` (
  `id` int NOT NULL,
  `assetId` int NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_imagetransformindex`
--

INSERT INTO `crft_imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-10-31 15:23:03', '2023-10-31 15:23:03', '2023-10-31 15:23:04', '2caaaccb-973e-46e4-b454-413ddad058d2'),
(13, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-10-31 15:23:03', '2023-10-31 15:23:03', '2023-10-31 15:23:05', 'babf37eb-67a7-4f04-a9da-c22c00019066'),
(14, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_120x79_crop_center-center_none', 1, 0, 0, '2023-10-31 17:21:40', '2023-10-31 17:21:40', '2023-10-31 17:21:42', '41e6eb83-9d63-4ad1-8942-fe97426f5816'),
(15, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_240x159_crop_center-center_none', 1, 0, 0, '2023-10-31 17:21:40', '2023-10-31 17:21:40', '2023-10-31 17:21:42', 'd378eb72-8114-463c-b21d-bed16ddeacef'),
(16, 21, 'craft\\imagetransforms\\ImageTransformer', 'henry-potter.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-11-01 13:58:24', '2023-11-01 13:58:24', '2023-11-01 13:58:25', '1f30cb3f-cfee-42b3-992f-f24f5f654a08'),
(17, 21, 'craft\\imagetransforms\\ImageTransformer', 'henry-potter.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-11-01 13:58:24', '2023-11-01 13:58:24', '2023-11-01 13:58:27', '3bb8353b-c759-4397-bc8b-3d62697b93c1'),
(18, 34, 'craft\\imagetransforms\\ImageTransformer', 'jack-starfield.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-11-01 14:00:10', '2023-11-01 14:00:10', '2023-11-01 14:00:11', '57ee2298-1ed9-4994-a4b5-732fbde6a47e'),
(19, 34, 'craft\\imagetransforms\\ImageTransformer', 'jack-starfield.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-11-01 14:00:10', '2023-11-01 14:00:10', '2023-11-01 14:00:12', '940faf31-237c-4679-b333-99526ee6deb7'),
(20, 52, 'craft\\imagetransforms\\ImageTransformer', 'sarah-bradbury.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-11-01 14:00:36', '2023-11-01 14:00:36', '2023-11-01 14:00:37', '834f88e6-655d-442c-9e59-d638f5502702'),
(21, 52, 'craft\\imagetransforms\\ImageTransformer', 'sarah-bradbury.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-11-01 14:00:37', '2023-11-01 14:00:37', '2023-11-01 14:00:39', 'ea768c76-b16e-47b9-b757-13f44379f96d'),
(22, 21, 'craft\\imagetransforms\\ImageTransformer', 'henry-potter.jpg', NULL, '_120x120_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:25', '2023-11-01 14:15:25', '2023-11-01 14:15:26', '5b41cb88-2845-4111-b856-bbf8ee9b352d'),
(23, 21, 'craft\\imagetransforms\\ImageTransformer', 'henry-potter.jpg', NULL, '_240x240_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:25', '2023-11-01 14:15:25', '2023-11-01 14:15:26', '6737af9c-89bd-460a-80c1-e8595654875a'),
(24, 34, 'craft\\imagetransforms\\ImageTransformer', 'jack-starfield.jpg', NULL, '_120x120_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:25', '2023-11-01 14:15:25', '2023-11-01 14:15:27', 'd464cd6d-b070-4716-9bf8-79d8a5944b5c'),
(25, 34, 'craft\\imagetransforms\\ImageTransformer', 'jack-starfield.jpg', NULL, '_240x240_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:25', '2023-11-01 14:15:25', '2023-11-01 14:15:27', 'a4a0e972-392f-48c0-b0c1-5cdcfb4e97c4'),
(26, 52, 'craft\\imagetransforms\\ImageTransformer', 'sarah-bradbury.jpg', NULL, '_120x120_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:25', '2023-11-01 14:15:25', '2023-11-01 14:15:27', 'faeffd86-2f3f-402c-85c4-d98bb0c35af0'),
(27, 52, 'craft\\imagetransforms\\ImageTransformer', 'sarah-bradbury.jpg', NULL, '_240x240_crop_center-center_none', 1, 0, 0, '2023-11-01 14:15:26', '2023-11-01 14:15:26', '2023-11-01 14:15:27', '66c97b05-3df4-4164-91d0-324880c22187'),
(28, 71, 'craft\\imagetransforms\\ImageTransformer', 'gear.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:26', '2023-11-01 17:03:26', '2023-11-01 17:03:27', '0e7b9d54-d7dd-4c51-96c9-01d73784b632'),
(29, 71, 'craft\\imagetransforms\\ImageTransformer', 'gear.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:26', '2023-11-01 17:03:26', '2023-11-01 17:03:27', '2bbbbc75-bb0b-4db8-8fdc-14bbc08719a7'),
(30, 70, 'craft\\imagetransforms\\ImageTransformer', 'forest.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:26', '2023-11-01 17:03:26', '2023-11-01 17:03:27', 'aa51b0c7-e6b8-4232-b7cd-cbe19a793b8d'),
(31, 70, 'craft\\imagetransforms\\ImageTransformer', 'forest.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:27', '2023-11-01 17:03:27', '2023-11-01 17:03:27', '4dc9ea0d-7e81-49a8-b773-17cbe8ce64f0'),
(32, 69, 'craft\\imagetransforms\\ImageTransformer', 'felix-lam-J7fxkhtOqt0-unsplash.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:27', '2023-11-01 17:03:27', '2023-11-01 17:03:28', 'e22488dd-a202-47e6-96d2-ed2081a8609f'),
(33, 69, 'craft\\imagetransforms\\ImageTransformer', 'felix-lam-J7fxkhtOqt0-unsplash.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:03:27', '2023-11-01 17:03:27', '2023-11-01 17:03:29', '08cabffe-dc64-4846-9934-54fa6f61c2b5'),
(34, 76, 'craft\\imagetransforms\\ImageTransformer', 'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:23', '2023-11-01 17:05:23', '2023-11-01 17:05:24', '4fcb6c81-e3d6-4b5a-823c-b100435ac897'),
(35, 76, 'craft\\imagetransforms\\ImageTransformer', 'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:23', '2023-11-01 17:05:23', '2023-11-01 17:05:24', '28446e5c-8d1a-47ab-aecd-65e15cb83715'),
(36, 75, 'craft\\imagetransforms\\ImageTransformer', 'mountains.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:23', '2023-11-01 17:05:23', '2023-11-01 17:05:24', '46493f7f-864a-46aa-95e3-294339d0d4b3'),
(37, 75, 'craft\\imagetransforms\\ImageTransformer', 'mountains.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:24', '2023-11-01 17:05:24', '2023-11-01 17:05:25', '8d69f0fd-d05e-433f-b1fb-ca269fe61346'),
(38, 74, 'craft\\imagetransforms\\ImageTransformer', 'mohit-suthar-a1_tFcBSp7w-unsplash.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:24', '2023-11-01 17:05:24', '2023-11-01 17:05:25', 'b3c665d2-0245-4070-a634-dc922685d817'),
(39, 74, 'craft\\imagetransforms\\ImageTransformer', 'mohit-suthar-a1_tFcBSp7w-unsplash.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:05:24', '2023-11-01 17:05:24', '2023-11-01 17:05:26', 'c1b4b350-bdc5-49a9-99d7-1f2af4cbf3e7'),
(40, 79, 'craft\\imagetransforms\\ImageTransformer', 'hero.jpg', NULL, '_34x22_crop_center-center_none', 1, 0, 0, '2023-11-01 17:06:33', '2023-11-01 17:06:33', '2023-11-01 17:06:34', '78fb13ec-a28e-4d52-ab8e-240654a25fad'),
(41, 79, 'craft\\imagetransforms\\ImageTransformer', 'hero.jpg', NULL, '_68x45_crop_center-center_none', 1, 0, 0, '2023-11-01 17:06:33', '2023-11-01 17:06:33', '2023-11-01 17:06:35', '80fec256-e2ac-4b00-bf3c-73e8d6182626'),
(42, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_hero', 1, 0, 0, '2023-11-02 11:03:53', '2023-11-02 11:03:53', '2023-11-02 11:03:54', '28b60135-bcf5-4fcc-8d8a-acad8493c115'),
(43, 21, 'craft\\imagetransforms\\ImageTransformer', 'henry-potter.jpg', NULL, '_avatar', 1, 0, 0, '2023-11-02 11:09:27', '2023-11-02 11:09:27', '2023-11-02 11:09:27', 'f5092858-a029-43ed-95ee-640dd8def992'),
(44, 52, 'craft\\imagetransforms\\ImageTransformer', 'sarah-bradbury.jpg', NULL, '_avatar', 1, 0, 0, '2023-11-02 11:09:27', '2023-11-02 11:09:27', '2023-11-02 11:09:27', '35415e3c-c7db-4bed-9fad-d07571b66030'),
(45, 34, 'craft\\imagetransforms\\ImageTransformer', 'jack-starfield.jpg', NULL, '_avatar', 1, 0, 0, '2023-11-02 11:09:27', '2023-11-02 11:09:27', '2023-11-02 11:09:28', '03e79195-4350-4980-8019-1d0b1863c5ca'),
(46, 74, 'craft\\imagetransforms\\ImageTransformer', 'mohit-suthar-a1_tFcBSp7w-unsplash.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:01', '2023-11-02 16:42:02', '2023-11-02 16:42:03', '544fd28b-5090-405f-8a43-4183101fbb40'),
(47, 75, 'craft\\imagetransforms\\ImageTransformer', 'mountains.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:02', '2023-11-02 16:42:02', '2023-11-02 16:42:04', '83d5dcc7-d46b-42e7-9e7e-50535028d6d2'),
(48, 76, 'craft\\imagetransforms\\ImageTransformer', 'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:02', '2023-11-02 16:42:02', '2023-11-02 16:42:04', '8130e985-8438-449b-94d3-fb11d0fba58b'),
(49, 69, 'craft\\imagetransforms\\ImageTransformer', 'felix-lam-J7fxkhtOqt0-unsplash.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:02', '2023-11-02 16:42:02', '2023-11-02 16:42:04', 'e46de788-a9cc-46b7-b260-7d5981859d2a'),
(50, 7, 'craft\\imagetransforms\\ImageTransformer', 'vander-films-IWi2xbThF8U-unsplash.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:02', '2023-11-02 16:42:02', '2023-11-02 16:42:04', 'abf58a39-eeb6-46bc-91cf-59815dbec661'),
(51, 79, 'craft\\imagetransforms\\ImageTransformer', 'hero.jpg', NULL, '_slider', 1, 0, 0, '2023-11-02 16:42:02', '2023-11-02 16:42:02', '2023-11-02 16:42:05', 'eed72c9b-7edd-4b4f-9560-7f0f6c189151');

-- --------------------------------------------------------

--
-- Table structure for table `crft_imagetransforms`
--

CREATE TABLE `crft_imagetransforms` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT '1',
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_imagetransforms`
--

INSERT INTO `crft_imagetransforms` (`id`, `name`, `handle`, `mode`, `position`, `width`, `height`, `format`, `quality`, `interlace`, `fill`, `upscale`, `parameterChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Hero', 'hero', 'fit', 'center-center', 1400, 900, NULL, NULL, 'none', NULL, 1, '2023-11-02 11:02:16', '2023-11-02 11:02:16', '2023-11-02 11:02:16', 'aca62faf-a4c1-4a4c-b268-77f06ac032d4'),
(2, 'Avatar', 'avatar', 'crop', 'center-center', 100, 100, NULL, NULL, 'none', NULL, 1, '2023-11-02 11:08:53', '2023-11-02 11:08:53', '2023-11-02 11:08:53', 'c14fd7bd-dfe5-4f91-88fd-80d48d3136cf'),
(3, 'Slider', 'slider', 'crop', 'center-center', 900, 600, NULL, NULL, 'none', NULL, 1, '2023-11-02 11:11:39', '2023-11-02 11:11:39', '2023-11-02 11:11:39', '45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2'),
(4, 'Content Image', 'contentImage', 'fit', 'center-center', 900, 600, NULL, NULL, 'none', NULL, 1, '2023-11-02 11:16:14', '2023-11-02 11:16:14', '2023-11-02 11:16:14', '9e4f26cd-50d4-42bd-a96b-cd15990d3d4a');

-- --------------------------------------------------------

--
-- Table structure for table `crft_info`
--

CREATE TABLE `crft_info` (
  `id` int NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_info`
--

INSERT INTO `crft_info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '4.5.9', '4.5.3.0', 0, 'fmiyxppzqgbh', '3@vfgvjtwtnb', '2023-10-31 12:33:16', '2023-11-02 11:16:40', '3987aa08-8fcb-4293-858a-d0a3a928f7d6');

-- --------------------------------------------------------

--
-- Table structure for table `crft_matrixblocks`
--

CREATE TABLE `crft_matrixblocks` (
  `id` int NOT NULL,
  `primaryOwnerId` int NOT NULL,
  `fieldId` int NOT NULL,
  `typeId` int NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_matrixblocks`
--

INSERT INTO `crft_matrixblocks` (`id`, `primaryOwnerId`, `fieldId`, `typeId`, `deletedWithOwner`, `dateCreated`, `dateUpdated`) VALUES
(56, 2, 4, 1, NULL, '2023-11-01 14:01:20', '2023-11-01 14:01:20'),
(57, 2, 4, 1, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(58, 2, 4, 1, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(60, 59, 4, 1, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(61, 59, 4, 1, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(62, 59, 4, 1, NULL, '2023-11-01 14:01:21', '2023-11-01 14:01:21'),
(65, 64, 4, 1, NULL, '2023-11-01 14:16:13', '2023-11-01 14:16:13'),
(66, 64, 4, 1, NULL, '2023-11-01 14:16:13', '2023-11-01 14:16:13'),
(67, 64, 4, 1, NULL, '2023-11-01 14:16:13', '2023-11-01 14:16:13'),
(88, 87, 4, 1, NULL, '2023-11-01 18:12:30', '2023-11-01 18:12:30'),
(89, 87, 4, 1, NULL, '2023-11-01 18:12:30', '2023-11-01 18:12:30'),
(90, 87, 4, 1, NULL, '2023-11-01 18:12:30', '2023-11-01 18:12:30'),
(92, 91, 4, 1, NULL, '2023-11-01 18:13:02', '2023-11-01 18:13:02'),
(93, 91, 4, 1, NULL, '2023-11-01 18:13:02', '2023-11-01 18:13:02'),
(94, 91, 4, 1, NULL, '2023-11-01 18:13:02', '2023-11-01 18:13:02'),
(97, 96, 4, 1, NULL, '2023-11-01 18:13:48', '2023-11-01 18:13:48'),
(98, 96, 4, 1, NULL, '2023-11-01 18:13:48', '2023-11-01 18:13:48'),
(99, 96, 4, 1, NULL, '2023-11-01 18:13:48', '2023-11-01 18:13:48'),
(109, 108, 12, 2, NULL, '2023-11-02 10:21:30', '2023-11-02 10:21:30'),
(110, 108, 12, 2, NULL, '2023-11-02 10:21:30', '2023-11-02 10:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `crft_matrixblocks_owners`
--

CREATE TABLE `crft_matrixblocks_owners` (
  `blockId` int NOT NULL,
  `ownerId` int NOT NULL,
  `sortOrder` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_matrixblocks_owners`
--

INSERT INTO `crft_matrixblocks_owners` (`blockId`, `ownerId`, `sortOrder`) VALUES
(56, 2, 1),
(57, 2, 3),
(58, 2, 2),
(60, 59, 1),
(61, 59, 2),
(62, 59, 3),
(65, 64, 1),
(66, 64, 2),
(67, 64, 3),
(88, 87, 1),
(89, 87, 2),
(90, 87, 3),
(92, 91, 1),
(93, 91, 2),
(94, 91, 3),
(97, 96, 1),
(98, 96, 2),
(99, 96, 3),
(109, 108, 1),
(110, 108, 2);

-- --------------------------------------------------------

--
-- Table structure for table `crft_matrixblocktypes`
--

CREATE TABLE `crft_matrixblocktypes` (
  `id` int NOT NULL,
  `fieldId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_matrixblocktypes`
--

INSERT INTO `crft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 3, 'Rider', 'rider', 1, '2023-11-01 13:03:01', '2023-11-01 13:03:01', 'bc5fbe1b-101b-474a-a837-84bea84bb449'),
(2, 12, 8, 'Link', 'link', 1, '2023-11-02 10:13:15', '2023-11-02 10:13:15', '6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7');

-- --------------------------------------------------------

--
-- Table structure for table `crft_matrixcontent_navlinks`
--

CREATE TABLE `crft_matrixcontent_navlinks` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_link_linkText_pzxhkypj` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_matrixcontent_navlinks`
--

INSERT INTO `crft_matrixcontent_navlinks` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_link_linkText_pzxhkypj`) VALUES
(1, 109, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '363eac0b-c3e0-475c-b5c2-c5754630575a', 'Stories'),
(2, 110, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '361508b5-232a-4d15-9b94-d09ff012e65f', 'Our Gear');

-- --------------------------------------------------------

--
-- Table structure for table `crft_matrixcontent_riders`
--

CREATE TABLE `crft_matrixcontent_riders` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_rider_description_xiccetpv` text,
  `field_rider_fullName_zdjhfozj` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_matrixcontent_riders`
--

INSERT INTO `crft_matrixcontent_riders` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_rider_description_xiccetpv`, `field_rider_fullName_zdjhfozj`) VALUES
(39, 56, 1, '2023-11-01 14:01:20', '2023-11-01 14:01:20', 'ea512f0f-abc0-4986-af98-fae95c29d7ae', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(40, 57, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'd3c43c94-764c-49d1-8597-78680db06522', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2'),
(41, 58, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '821bad33-8d06-43dc-9e88-25a1fd087c7e', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(42, 60, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '6ff2ae08-bc42-4650-8a09-980a62413913', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(43, 61, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'e9bd2caa-16fd-4596-ab17-a5a3324eff16', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2'),
(44, 62, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'a1b5b6d1-aec5-4f7f-87e2-b8c2b01f354b', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(45, 65, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', 'ed3cbe3d-378e-446e-9ba9-86fa88739e6d', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(46, 66, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', 'aa4a31dc-482d-4cfb-9808-63d120d9a8cd', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(47, 67, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '6e9be6fa-f2c0-4267-ab17-e52ed229beff', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2'),
(48, 88, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '699259b2-b8b3-4a55-b18d-d80bd28949e9', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(49, 89, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', 'a3357fed-db7a-44ba-96c6-387da6d79ccd', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(50, 90, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '3cbd67a2-635b-4723-8dae-af420dd38028', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2'),
(51, 92, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '75a65879-bb2f-4cc7-a00b-2a336f5dc8b0', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(52, 93, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'd97cedfd-2e26-47b1-813e-701cdc7e77cd', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(53, 94, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '03e4cf7f-ff94-4554-961d-b25da4d56ed1', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2'),
(54, 97, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '8a97a41d-a413-4a84-805e-c7fb977ed5d7', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 1'),
(55, 98, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '6e11c45c-cd75-400f-b7d4-2c627f31cc56', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 3'),
(56, 99, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'aa22b2b0-bd80-4d27-9a5a-6187ca5da676', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.', 'Rider 2');

-- --------------------------------------------------------

--
-- Table structure for table `crft_migrations`
--

CREATE TABLE `crft_migrations` (
  `id` int NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_migrations`
--

INSERT INTO `crft_migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2023-10-31 12:33:17', '2023-10-31 12:33:17', '2023-10-31 12:33:17', 'e0bb4997-3727-47f6-8332-1e225e7e3356'),
(2, 'craft', 'm210121_145800_asset_indexing_changes', '2023-10-31 12:33:17', '2023-10-31 12:33:17', '2023-10-31 12:33:17', 'ae3344b9-ef14-48e4-ac23-efa13e815109'),
(3, 'craft', 'm210624_222934_drop_deprecated_tables', '2023-10-31 12:33:17', '2023-10-31 12:33:17', '2023-10-31 12:33:17', 'bb16683c-d2b7-4ec2-905d-03a552bea458'),
(4, 'craft', 'm210724_180756_rename_source_cols', '2023-10-31 12:33:17', '2023-10-31 12:33:17', '2023-10-31 12:33:17', '64892959-845e-406a-840a-2cb603578265'),
(5, 'craft', 'm210809_124211_remove_superfluous_uids', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'd30db2a2-565d-410b-ad01-32b5cf407564'),
(6, 'craft', 'm210817_014201_universal_users', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '1012b47c-6ce5-432b-840d-0c0529179173'),
(7, 'craft', 'm210904_132612_store_element_source_settings_in_project_config', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '6f6069d2-d364-4a68-b3dd-41d647c0d2ff'),
(8, 'craft', 'm211115_135500_image_transformers', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '611d96d9-3858-4631-ba06-a498e8010699'),
(9, 'craft', 'm211201_131000_filesystems', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '984254b8-d110-455a-b8cc-29b010fff171'),
(10, 'craft', 'm220103_043103_tab_conditions', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '7fd96e48-9ab6-48b3-9def-952c6b5a0a1e'),
(11, 'craft', 'm220104_003433_asset_alt_text', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'b02e18bd-0a48-4c9d-8ff9-490f2f56eb7a'),
(12, 'craft', 'm220123_213619_update_permissions', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '1eaac172-52da-42cd-8387-93660b7f92a0'),
(13, 'craft', 'm220126_003432_addresses', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '58729a7f-c67b-4559-a82a-ba5534afa6f8'),
(14, 'craft', 'm220209_095604_add_indexes', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '56af086e-cffe-4740-842e-c15dd96c0340'),
(15, 'craft', 'm220213_015220_matrixblocks_owners_table', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '75d800e8-0086-48e3-b482-c5bca0dad1ff'),
(16, 'craft', 'm220214_000000_truncate_sessions', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '4ba56f63-ff74-44b3-9c33-35ac7f04f607'),
(17, 'craft', 'm220222_122159_full_names', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '8098068e-80ea-4f08-b61f-2e92a115b521'),
(18, 'craft', 'm220223_180559_nullable_address_owner', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '353a328c-bc1e-4636-a259-533ee7f40799'),
(19, 'craft', 'm220225_165000_transform_filesystems', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2848b150-7621-419c-8ad5-60eb2b1c6704'),
(20, 'craft', 'm220309_152006_rename_field_layout_elements', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '83f3c30e-a300-483b-b135-88e7909d3bac'),
(21, 'craft', 'm220314_211928_field_layout_element_uids', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '9dc9e99e-ef40-4a97-878c-5d7fa84acc0e'),
(22, 'craft', 'm220316_123800_transform_fs_subpath', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2df417db-91e0-487f-ac34-18d1df50c00f'),
(23, 'craft', 'm220317_174250_release_all_jobs', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '0519f500-ad62-4651-93da-b9731cdefcb2'),
(24, 'craft', 'm220330_150000_add_site_gql_schema_components', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'f19b0afd-51f8-4122-8520-0064f4b037b4'),
(25, 'craft', 'm220413_024536_site_enabled_string', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '90593802-1e20-4051-a760-4ad9b851de21'),
(26, 'craft', 'm221027_160703_add_image_transform_fill', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '7a758759-8fcf-48a3-8f39-1f26d1a99a9f'),
(27, 'craft', 'm221028_130548_add_canonical_id_index', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '8dfa38a8-da8a-4f48-8a9e-1c6eb6d53fea'),
(28, 'craft', 'm221118_003031_drop_element_fks', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'f426e944-2723-4d77-aa18-6492194060fb'),
(29, 'craft', 'm230131_120713_asset_indexing_session_new_options', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'cd55871c-a0c0-429d-bc61-b99152ffd10b'),
(30, 'craft', 'm230226_013114_drop_plugin_license_columns', '2023-10-31 12:33:18', '2023-10-31 12:33:18', '2023-10-31 12:33:18', 'b4899bb9-6e7f-4f9b-b9e9-9346ddf60413'),
(31, 'craft', 'm230531_123004_add_entry_type_show_status_field', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '28ebb853-a1f7-4b28-9109-274ae1825b94'),
(32, 'craft', 'm230607_102049_add_entrytype_slug_translation_columns', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2023-10-31 12:33:19', 'b0bda9dd-ecad-4fd7-8700-70b8e98f6457'),
(33, 'craft', 'm230710_162700_element_activity', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2c190d3f-b924-4112-8612-5f8ce6c4e635'),
(34, 'craft', 'm230820_162023_fix_cache_id_type', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '7b2eeec7-92ba-48c2-8717-7b157d3c4a7b'),
(35, 'craft', 'm230826_094050_fix_session_id_type', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '2023-10-31 12:33:19', '0dd666f4-7f69-45a8-87ca-5345a612102f'),
(36, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2023-11-01 12:50:58', '2023-11-01 12:50:58', '2023-11-01 12:50:58', '525fa1f0-248a-40a9-a86f-bcd94bf26274'),
(37, 'plugin:redactor', 'Install', '2023-11-01 12:50:58', '2023-11-01 12:50:59', '2023-11-01 12:50:59', '724d4c22-daf8-416d-b0fa-70d2586a7856'),
(38, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2023-11-01 12:50:59', '2023-11-01 12:50:59', '2023-11-01 12:50:59', 'f092d580-b33b-45ec-bf1c-286ace7a8fd0');

-- --------------------------------------------------------

--
-- Table structure for table `crft_plugins`
--

CREATE TABLE `crft_plugins` (
  `id` int NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_plugins`
--

INSERT INTO `crft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '3.0.4', '2.3.0', '2023-11-01 12:50:58', '2023-11-01 12:50:58', '2023-11-01 12:50:58', '2def5a32-570d-4122-9924-6d2d1b9e2625');

-- --------------------------------------------------------

--
-- Table structure for table `crft_projectconfig`
--

CREATE TABLE `crft_projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_projectconfig`
--

INSERT INTO `crft_projectconfig` (`path`, `value`) VALUES
('dateModified', '1698923800'),
('email.fromEmail', '\"shabab.ahmed.sebpo@gmail.com\"'),
('email.fromName', '\"craftcms-tester\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elementCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.class', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.disabled', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.id', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.instructions', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.label', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.max', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.min', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.name', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.orientation', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.readonly', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.requirable', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.size', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.step', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.tip', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.title', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.uid', '\"76ae5a2b-27d2-4a81-8644-16d35374427b\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.warning', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.0.width', '100'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.fieldUid', '\"5fe4002f-d114-49ac-8f0b-a11ce693adf8\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.instructions', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.label', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.required', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.tip', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.uid', '\"c86c7c16-1e1b-4bc8-994f-2428a4a9ea8b\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.warning', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.1.width', '100'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.fieldUid', '\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.instructions', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.label', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.required', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.tip', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.uid', '\"1a4d77ab-d582-4756-81f6-a56f85125608\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.warning', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.2.width', '100'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.fieldUid', '\"82052d4c-990d-4680-9996-93fd7fbcf208\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.instructions', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.label', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.required', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.tip', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.uid', '\"65a874e7-1c8c-4d5e-b117-74b6d42b525a\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.warning', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.elements.3.width', '100'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.name', '\"Content\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.uid', '\"b6419e7d-e081-4810-a101-ded326ffb6de\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.fieldLayouts.0332bb7f-cd35-40f6-b789-139b4e9a5b49.tabs.0.userCondition', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.handle', '\"Stories\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.hasTitleField', 'true'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.name', '\"Stories\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.section', '\"06df8f08-c36e-4694-9fea-74644bd6bc95\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.showStatusField', 'false'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.slugTranslationKeyFormat', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.slugTranslationMethod', '\"site\"'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.sortOrder', '1'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.titleFormat', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.titleTranslationKeyFormat', 'null'),
('entryTypes.1c1ae85e-29f6-40bc-8a05-89a093d8ca85.titleTranslationMethod', '\"site\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.class', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.disabled', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.id', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.max', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.min', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.name', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.orientation', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.readonly', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.requirable', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.size', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.step', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.title', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.uid', '\"bd72a219-2b8e-4b45-ad28-20296197448a\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.0.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.fieldUid', '\"daaf24e3-3156-4fbf-8ea6-3d4f55657051\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.required', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.uid', '\"d648ccad-9e24-442f-a6d8-8add3fff84e8\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.1.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.fieldUid', '\"03032ea8-b23a-4b51-966a-ee4c850c423c\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.required', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.uid', '\"99fa0c14-8d48-4a64-be85-1ee620bd73bd\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.elements.2.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.name', '\"Hero\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.uid', '\"3f3b26ba-4278-4617-b9eb-1b63cb2350a9\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.0.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.fieldUid', '\"bb63441f-923a-4a2c-8513-35dd5af4bb11\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.required', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.uid', '\"0e748bee-5e59-4795-932b-3cf038790421\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.elements.0.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.name', '\"Featured Story\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.uid', '\"9b4fb044-d77d-47ba-8949-a04922248ba4\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.1.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.fieldUid', '\"3e96d424-e122-43a7-b165-947f2048a8dc\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.required', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.uid', '\"85b8e17a-a4c7-48ce-8fde-f1076178e683\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.0.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.elementCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.fieldUid', '\"4aa3edd5-8bfc-42ba-b540-5de6dd750eb5\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.instructions', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.label', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.required', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.tip', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.uid', '\"f1d6c7ba-4937-4e8f-9c6c-76572b6b398b\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.warning', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.elements.1.width', '100'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.name', '\"Riders\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.uid', '\"6f8fecae-f791-49bb-81b1-a9d2407cdcca\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.fieldLayouts.f6a9b0a2-339c-4fb6-94b1-580dba36daad.tabs.2.userCondition', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.handle', '\"home\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.hasTitleField', 'false'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.name', '\"Home\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.section', '\"5d056ada-9050-4fa7-b99b-250e724ea0c0\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.showStatusField', 'true'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.slugTranslationKeyFormat', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.slugTranslationMethod', '\"site\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.sortOrder', '1'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.titleTranslationKeyFormat', 'null'),
('entryTypes.2676e5cd-afc3-4cb6-b35e-982c0e4f5458.titleTranslationMethod', '\"site\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elementCondition', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.class', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.disabled', 'false'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.id', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.instructions', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.label', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.max', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.min', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.name', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.orientation', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.readonly', 'false'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.requirable', 'false'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.size', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.step', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.tip', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.title', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.uid', '\"fefe644c-aa3d-4195-8925-0200ebe1fed4\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.warning', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.elements.0.width', '100'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.name', '\"Content\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.uid', '\"71ee59be-da4b-4fad-9453-035cb29c8dc5\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.fieldLayouts.20168f72-ab65-40c3-be4f-b20d1412e8c2.tabs.0.userCondition', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.handle', '\"storiesListing\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.hasTitleField', 'true'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.name', '\"Stories Listing\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.section', '\"69ceb33c-81af-4e98-8d55-c771ce31963c\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.showStatusField', 'false'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.slugTranslationKeyFormat', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.slugTranslationMethod', '\"site\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.sortOrder', '1'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.titleTranslationKeyFormat', 'null'),
('entryTypes.686eab3b-dd97-4e17-8b37-2bf780e69060.titleTranslationMethod', '\"site\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elementCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.class', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.disabled', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.id', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.label', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.max', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.min', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.name', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.orientation', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.readonly', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.requirable', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.size', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.step', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.tip', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.title', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.uid', '\"3d387b43-d165-44be-ae1e-525f49983e36\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.warning', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.0.width', '100'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.fieldUid', '\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.instructions', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.label', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.required', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.tip', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.uid', '\"70d4c93c-46b1-47bf-b665-cdb61719c127\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.warning', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.elements.1.width', '100'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.name', '\"Content\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.uid', '\"d68b0e08-0bd5-44d4-b177-afb352de523c\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.fieldLayouts.4c1d1f65-6f1f-433b-abaf-8cd4666a899d.tabs.0.userCondition', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.handle', '\"generalPages\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.hasTitleField', 'true'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.name', '\"General Pages\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.section', '\"8637e10b-a65c-46c6-ae0f-88124cd19c28\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.showStatusField', 'false'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.slugTranslationKeyFormat', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.slugTranslationMethod', '\"site\"'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.sortOrder', '1'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.titleFormat', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.titleTranslationKeyFormat', 'null'),
('entryTypes.dcf144ae-03ec-4cc6-8697-62618324cfbf.titleTranslationMethod', '\"site\"'),
('fieldGroups.5e9b40b0-1a44-47f7-b5d4-c066ca3997f0.name', '\"Home Page\"'),
('fieldGroups.91e43bf0-87e7-41d0-86a2-2576d7217b4f.name', '\"Common\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.columnSuffix', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.contentColumnType', '\"string\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.fieldGroup', '\"5e9b40b0-1a44-47f7-b5d4-c066ca3997f0\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.handle', '\"heroImage\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.instructions', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.name', '\"Hero Image\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.searchable', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.allowedKinds.0', '\"image\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.allowSelfRelations', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.allowSubfolders', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.allowUploads', 'true'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.branchLimit', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.defaultUploadLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.defaultUploadLocationSubpath', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.localizeRelations', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.maintainHierarchy', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.maxRelations', '1'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.minRelations', '1'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.previewMode', '\"full\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.restrictedLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.restrictedLocationSubpath', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.restrictFiles', 'true'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.restrictLocation', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.selectionLabel', '\"Add a background image\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.showSiteMenu', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.showUnpermittedFiles', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.showUnpermittedVolumes', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.sources.0', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.targetSiteId', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.validateRelatedElements', 'false'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.settings.viewMode', '\"large\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.translationKeyFormat', 'null'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.translationMethod', '\"site\"'),
('fields.03032ea8-b23a-4b51-966a-ee4c850c423c.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.columnSuffix', '\"alcbujfw\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.contentColumnType', '\"text\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.fieldGroup', '\"91e43bf0-87e7-41d0-86a2-2576d7217b4f\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.handle', '\"richText\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.instructions', 'null'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.name', '\"Rich Text\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.searchable', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.availableTransforms', '\"\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.availableVolumes', '\"*\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.columnType', '\"text\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.configSelectionMode', '\"choose\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.defaultTransform', '\"9e4f26cd-50d4-42bd-a96b-cd15990d3d4a\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.manualConfig', '\"\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.purifierConfig', 'null'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.purifyHtml', 'true'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.redactorConfig', 'null'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.removeEmptyTags', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.removeInlineStyles', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.removeNbsp', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.showHtmlButtonForNonAdmins', 'true'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.showUnpermittedFiles', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.showUnpermittedVolumes', 'false'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.settings.uiMode', '\"enlarged\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.translationKeyFormat', 'null'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.translationMethod', '\"none\"'),
('fields.21d8fb85-0963-468e-825f-e3f7c3dfe1c6.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.columnSuffix', '\"itbksfam\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.contentColumnType', '\"text\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.fieldGroup', '\"5e9b40b0-1a44-47f7-b5d4-c066ca3997f0\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.handle', '\"ridersIntroContent\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.instructions', 'null'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.name', '\"Riders Intro Content\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.searchable', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.availableTransforms', '\"\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.availableVolumes', '\"*\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.columnType', '\"text\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.configSelectionMode', '\"choose\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.defaultTransform', '\"\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.manualConfig', '\"\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.purifierConfig', 'null'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.purifyHtml', 'true'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.redactorConfig', 'null'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.removeEmptyTags', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.removeInlineStyles', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.removeNbsp', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.showHtmlButtonForNonAdmins', 'true'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.showUnpermittedFiles', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.showUnpermittedVolumes', 'false'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.settings.uiMode', '\"enlarged\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.translationKeyFormat', 'null'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.translationMethod', '\"none\"'),
('fields.3e96d424-e122-43a7-b165-947f2048a8dc.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.columnSuffix', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.contentColumnType', '\"string\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.fieldGroup', '\"5e9b40b0-1a44-47f7-b5d4-c066ca3997f0\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.handle', '\"riders\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.instructions', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.name', '\"Riders\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.searchable', 'false'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.settings.contentTable', '\"{{%matrixcontent_riders}}\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.settings.maxBlocks', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.settings.minBlocks', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.settings.propagationKeyFormat', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.settings.propagationMethod', '\"all\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.translationKeyFormat', 'null'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.translationMethod', '\"site\"'),
('fields.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.columnSuffix', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.contentColumnType', '\"string\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.fieldGroup', '\"91e43bf0-87e7-41d0-86a2-2576d7217b4f\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.handle', '\"photos\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.instructions', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.name', '\"Photos\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.searchable', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.allowedKinds.0', '\"image\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.allowSelfRelations', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.allowSubfolders', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.allowUploads', 'true'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.branchLimit', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.defaultUploadLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.defaultUploadLocationSubpath', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.localizeRelations', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.maintainHierarchy', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.maxRelations', '4'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.minRelations', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.previewMode', '\"full\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.restrictedLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.restrictedLocationSubpath', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.restrictFiles', 'true'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.restrictLocation', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.selectionLabel', '\"Add photos\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.showSiteMenu', 'true'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.showUnpermittedFiles', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.showUnpermittedVolumes', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.sources.0', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.targetSiteId', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.validateRelatedElements', 'false'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.settings.viewMode', '\"list\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.translationKeyFormat', 'null'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.translationMethod', '\"site\"'),
('fields.5fe4002f-d114-49ac-8f0b-a11ce693adf8.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.columnSuffix', '\"ntfaxqxc\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.contentColumnType', '\"text\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.fieldGroup', '\"91e43bf0-87e7-41d0-86a2-2576d7217b4f\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.handle', '\"shortDescription\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.instructions', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.name', '\"Short Description\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.searchable', 'false'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.byteLimit', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.charLimit', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.code', 'false'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.columnType', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.initialRows', '3'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.multiline', 'true'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.placeholder', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.settings.uiMode', '\"normal\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.translationKeyFormat', 'null'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.translationMethod', '\"none\"'),
('fields.82052d4c-990d-4680-9996-93fd7fbcf208.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.columnSuffix', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.contentColumnType', '\"string\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.fieldGroup', '\"91e43bf0-87e7-41d0-86a2-2576d7217b4f\"');
INSERT INTO `crft_projectconfig` (`path`, `value`) VALUES
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.handle', '\"navLinks\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.instructions', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.name', '\"Nav Links\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.searchable', 'false'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.settings.contentTable', '\"{{%matrixcontent_navlinks}}\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.settings.maxBlocks', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.settings.minBlocks', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.settings.propagationKeyFormat', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.settings.propagationMethod', '\"all\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.translationKeyFormat', 'null'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.translationMethod', '\"site\"'),
('fields.a25d5806-91e4-4856-9334-d2e03ee8d82e.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.columnSuffix', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.contentColumnType', '\"string\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.fieldGroup', '\"5e9b40b0-1a44-47f7-b5d4-c066ca3997f0\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.handle', '\"featuredStory\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.instructions', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.name', '\"Featured Story\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.searchable', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.allowSelfRelations', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.branchLimit', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.localizeRelations', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.maintainHierarchy', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.maxRelations', '1'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.minRelations', '1'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Entry\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.selectionLabel', '\"Select a story\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.showSiteMenu', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.sources.0', '\"section:06df8f08-c36e-4694-9fea-74644bd6bc95\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.targetSiteId', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.validateRelatedElements', 'false'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.settings.viewMode', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.translationKeyFormat', 'null'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.translationMethod', '\"site\"'),
('fields.bb63441f-923a-4a2c-8513-35dd5af4bb11.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.columnSuffix', '\"dtlkwmfu\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.contentColumnType', '\"text\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.fieldGroup', '\"5e9b40b0-1a44-47f7-b5d4-c066ca3997f0\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.handle', '\"heroTitle\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.instructions', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.name', '\"Hero Title\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.searchable', 'false'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.byteLimit', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.charLimit', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.code', 'false'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.columnType', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.initialRows', '4'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.multiline', 'false'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.placeholder', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.settings.uiMode', '\"normal\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.translationKeyFormat', 'null'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.translationMethod', '\"none\"'),
('fields.daaf24e3-3156-4fbf-8ea6-3d4f55657051.type', '\"craft\\\\fields\\\\PlainText\"'),
('fs.uploads.hasUrls', 'true'),
('fs.uploads.name', '\"Uploads\"'),
('fs.uploads.settings.path', '\"@webroot/uploads\"'),
('fs.uploads.type', '\"craft\\\\fs\\\\Local\"'),
('fs.uploads.url', '\"@web/uploads/\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elementCondition', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.elementCondition', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.fieldUid', '\"a25d5806-91e4-4856-9334-d2e03ee8d82e\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.instructions', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.label', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.required', 'false'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.tip', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.uid', '\"9a21fa4f-4926-438e-89ef-b98b31705ef1\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.userCondition', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.warning', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.elements.0.width', '100'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.name', '\"Content\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.uid', '\"1089e6f8-414a-4f63-b27f-a5bab1707a72\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.fieldLayouts.dd17f29f-8a4b-4188-adef-882ea742dc3c.tabs.0.userCondition', 'null'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.handle', '\"header\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.name', '\"Header\"'),
('globalSets.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1.sortOrder', '1'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elementCondition', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.elementCondition', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.fieldUid', '\"21d8fb85-0963-468e-825f-e3f7c3dfe1c6\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.instructions', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.label', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.required', 'false'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.tip', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.uid', '\"fedf2602-4587-44aa-b400-16a3cd99c029\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.userCondition', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.warning', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.elements.0.width', '100'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.name', '\"Content\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.uid', '\"ae46b40e-5f3a-4a18-b73a-3482fd4b7391\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.fieldLayouts.f2f0b6c8-6c0e-4751-bd6a-193b0c0bbc2b.tabs.0.userCondition', 'null'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.handle', '\"footer\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.name', '\"Footer\"'),
('globalSets.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e.sortOrder', '2'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.fill', 'null'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.format', 'null'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.handle', '\"slider\"'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.height', '600'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.interlace', '\"none\"'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.mode', '\"crop\"'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.name', '\"Slider\"'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.position', '\"center-center\"'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.quality', 'null'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.upscale', 'true'),
('imageTransforms.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2.width', '900'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.fill', 'null'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.format', 'null'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.handle', '\"contentImage\"'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.height', '600'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.interlace', '\"none\"'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.mode', '\"fit\"'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.name', '\"Content Image\"'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.position', '\"center-center\"'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.quality', 'null'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.upscale', 'true'),
('imageTransforms.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a.width', '900'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.fill', 'null'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.format', 'null'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.handle', '\"hero\"'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.height', '900'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.interlace', '\"none\"'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.mode', '\"fit\"'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.name', '\"Hero\"'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.position', '\"center-center\"'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.quality', 'null'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.upscale', 'true'),
('imageTransforms.aca62faf-a4c1-4a4c-b268-77f06ac032d4.width', '1400'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.fill', 'null'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.format', 'null'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.handle', '\"avatar\"'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.height', '100'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.interlace', '\"none\"'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.mode', '\"crop\"'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.name', '\"Avatar\"'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.position', '\"center-center\"'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.quality', 'null'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.upscale', 'true'),
('imageTransforms.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf.width', '100'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.field', '\"a25d5806-91e4-4856-9334-d2e03ee8d82e\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.fieldUid', '\"787bd09d-39b1-435d-b43c-5b97562dd88f\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.uid', '\"d130af2f-be85-4941-bbb9-41b3e14f61c1\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.fieldUid', '\"84d2f1ab-d6ba-41a8-beff-466dea3da3ac\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.uid', '\"17977bb0-431e-4707-b068-30db457dd45a\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.uid', '\"f6d91b1f-c705-4171-8715-9274c7b9e0b2\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fieldLayouts.50c37d1e-21b8-4137-807b-2cbf0d324390.tabs.0.userCondition', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.columnSuffix', '\"pzxhkypj\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.contentColumnType', '\"text\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.fieldGroup', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.handle', '\"linkText\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.instructions', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.name', '\"Link Text\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.searchable', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.byteLimit', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.charLimit', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.code', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.columnType', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.initialRows', '4'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.multiline', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.placeholder', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.translationKeyFormat', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.translationMethod', '\"none\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.787bd09d-39b1-435d-b43c-5b97562dd88f.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.columnSuffix', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.contentColumnType', '\"string\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.fieldGroup', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.handle', '\"linkDestination\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.instructions', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.name', '\"Link Destination\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.searchable', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.branchLimit', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.localizeRelations', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.maintainHierarchy', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.maxRelations', '1'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.minRelations', '1'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Entry\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.selectionLabel', '\"Select and entry\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.showSiteMenu', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.sources', '\"*\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.targetSiteId', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.settings.viewMode', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.translationKeyFormat', 'null'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.translationMethod', '\"site\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.fields.84d2f1ab-d6ba-41a8-beff-466dea3da3ac.type', '\"craft\\\\fields\\\\Entries\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.handle', '\"link\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.name', '\"Link\"'),
('matrixBlockTypes.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7.sortOrder', '1'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.field', '\"4aa3edd5-8bfc-42ba-b540-5de6dd750eb5\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.fieldUid', '\"9361d4cf-aab0-46e9-b6b7-c2bc91059832\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.uid', '\"d2db0199-1d34-455c-acf0-5534c967be53\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.fieldUid', '\"f6647277-94f6-4b5c-a69c-869e61bc7cb0\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.uid', '\"053e1946-68bf-4fb4-84ac-bc48cd28b3a5\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.elementCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.fieldUid', '\"843a6afc-942f-4fcd-9d44-5980e23622ee\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.required', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.uid', '\"0c0dd5fe-42e8-4273-b9c2-3cf840861959\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.userCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.uid', '\"4d1ea4b2-915e-4daa-bb75-7631e06228d5\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fieldLayouts.58640ac2-58c7-4775-8d4b-233e8f2c7cc1.tabs.0.userCondition', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.columnSuffix', '\"xiccetpv\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.contentColumnType', '\"text\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.fieldGroup', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.handle', '\"description\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.name', '\"Description\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.searchable', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.byteLimit', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.charLimit', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.code', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.columnType', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.initialRows', '2'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.multiline', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.placeholder', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.translationKeyFormat', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.translationMethod', '\"none\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.843a6afc-942f-4fcd-9d44-5980e23622ee.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.columnSuffix', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.contentColumnType', '\"string\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.fieldGroup', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.handle', '\"photo\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.name', '\"Photo\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.searchable', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.allowSubfolders', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.allowUploads', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.branchLimit', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.defaultUploadLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.defaultUploadLocationSubpath', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.localizeRelations', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.maintainHierarchy', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.maxRelations', '1'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.minRelations', '1'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.previewMode', '\"full\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.restrictedDefaultUploadSubpath', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.restrictedLocationSource', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.restrictedLocationSubpath', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.restrictFiles', 'true'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.restrictLocation', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.selectionLabel', '\"Add a photo\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.showSiteMenu', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.sources.0', '\"volume:e2e255b6-f8af-4884-acb4-9a0c9ecd803d\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.targetSiteId', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.settings.viewMode', '\"large\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.translationKeyFormat', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.translationMethod', '\"site\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.9361d4cf-aab0-46e9-b6b7-c2bc91059832.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.columnSuffix', '\"zdjhfozj\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.contentColumnType', '\"text\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.fieldGroup', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.handle', '\"fullName\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.instructions', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.name', '\"Full Name\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.searchable', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.byteLimit', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.charLimit', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.code', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.columnType', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.initialRows', '4'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.multiline', 'false'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.placeholder', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.translationKeyFormat', 'null'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.translationMethod', '\"none\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.fields.f6647277-94f6-4b5c-a69c-869e61bc7cb0.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.handle', '\"rider\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.name', '\"Rider\"'),
('matrixBlockTypes.bc5fbe1b-101b-474a-a837-84bea84bb449.sortOrder', '1'),
('meta.__names__.03032ea8-b23a-4b51-966a-ee4c850c423c', '\"Hero Image\"'),
('meta.__names__.06df8f08-c36e-4694-9fea-74644bd6bc95', '\"Stories\"'),
('meta.__names__.12fd8f94-4f72-4f80-9b8d-a6d1d7661cd1', '\"Header\"'),
('meta.__names__.148b99ca-50e0-4be3-9f95-942fcd12ecd5', '\"craftcms-tester\"'),
('meta.__names__.1c1ae85e-29f6-40bc-8a05-89a093d8ca85', '\"Stories\"'),
('meta.__names__.21d8fb85-0963-468e-825f-e3f7c3dfe1c6', '\"Rich Text\"'),
('meta.__names__.2676e5cd-afc3-4cb6-b35e-982c0e4f5458', '\"Home\"'),
('meta.__names__.3e96d424-e122-43a7-b165-947f2048a8dc', '\"Riders Intro Content\"'),
('meta.__names__.45ce135a-7b3d-4781-9fb3-ad2c8d13c7e2', '\"Slider\"'),
('meta.__names__.4aa3edd5-8bfc-42ba-b540-5de6dd750eb5', '\"Riders\"'),
('meta.__names__.5d056ada-9050-4fa7-b99b-250e724ea0c0', '\"Home\"'),
('meta.__names__.5e9b40b0-1a44-47f7-b5d4-c066ca3997f0', '\"Home Page\"'),
('meta.__names__.5fe4002f-d114-49ac-8f0b-a11ce693adf8', '\"Photos\"'),
('meta.__names__.63bff4e7-9b7b-4266-98f0-5c2c8cf3463e', '\"Footer\"'),
('meta.__names__.686eab3b-dd97-4e17-8b37-2bf780e69060', '\"Stories Listing\"'),
('meta.__names__.69ceb33c-81af-4e98-8d55-c771ce31963c', '\"Stories Listing\"'),
('meta.__names__.6c5fe6b4-7112-4ff5-9ee6-e21e3af136d7', '\"Link\"'),
('meta.__names__.787bd09d-39b1-435d-b43c-5b97562dd88f', '\"Link Text\"'),
('meta.__names__.82052d4c-990d-4680-9996-93fd7fbcf208', '\"Short Description\"'),
('meta.__names__.843a6afc-942f-4fcd-9d44-5980e23622ee', '\"Description\"'),
('meta.__names__.84d2f1ab-d6ba-41a8-beff-466dea3da3ac', '\"Link Destination\"'),
('meta.__names__.8637e10b-a65c-46c6-ae0f-88124cd19c28', '\"General Pages\"'),
('meta.__names__.91e43bf0-87e7-41d0-86a2-2576d7217b4f', '\"Common\"'),
('meta.__names__.9361d4cf-aab0-46e9-b6b7-c2bc91059832', '\"Photo\"'),
('meta.__names__.9e4f26cd-50d4-42bd-a96b-cd15990d3d4a', '\"Content Image\"'),
('meta.__names__.a1db3681-340f-4c30-8cc1-80f75af4d3b8', '\"craftcms-tester\"'),
('meta.__names__.a25d5806-91e4-4856-9334-d2e03ee8d82e', '\"Nav Links\"'),
('meta.__names__.aca62faf-a4c1-4a4c-b268-77f06ac032d4', '\"Hero\"'),
('meta.__names__.bb63441f-923a-4a2c-8513-35dd5af4bb11', '\"Featured Story\"'),
('meta.__names__.bc5fbe1b-101b-474a-a837-84bea84bb449', '\"Rider\"'),
('meta.__names__.c14fd7bd-dfe5-4f91-88fd-80d48d3136cf', '\"Avatar\"'),
('meta.__names__.daaf24e3-3156-4fbf-8ea6-3d4f55657051', '\"Hero Title\"'),
('meta.__names__.dcf144ae-03ec-4cc6-8697-62618324cfbf', '\"General Pages\"'),
('meta.__names__.e2e255b6-f8af-4884-acb4-9a0c9ecd803d', '\"Uploads\"'),
('meta.__names__.f6647277-94f6-4b5c-a69c-869e61bc7cb0', '\"Full Name\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.defaultPlacement', '\"end\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.enableVersioning', 'true'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.handle', '\"stories\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.name', '\"Stories\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.propagationMethod', '\"all\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.enabledByDefault', 'true'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.hasUrls', 'true'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.template', '\"stories/_entry\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.uriFormat', '\"stories/{slug}\"'),
('sections.06df8f08-c36e-4694-9fea-74644bd6bc95.type', '\"channel\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.defaultPlacement', '\"end\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.enableVersioning', 'true'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.handle', '\"home\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.name', '\"Home\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.propagationMethod', '\"all\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.enabledByDefault', 'true'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.hasUrls', 'true'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.template', '\"home.twig\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.uriFormat', '\"__home__\"'),
('sections.5d056ada-9050-4fa7-b99b-250e724ea0c0.type', '\"single\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.defaultPlacement', '\"end\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.enableVersioning', 'true'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.handle', '\"storiesListing\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.name', '\"Stories Listing\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.propagationMethod', '\"all\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.enabledByDefault', 'true'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.hasUrls', 'true'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.template', '\"stories\\\\index.twig\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.uriFormat', '\"stories\"'),
('sections.69ceb33c-81af-4e98-8d55-c771ce31963c.type', '\"single\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.defaultPlacement', '\"end\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.enableVersioning', 'true'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.handle', '\"generalPages\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.name', '\"General Pages\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.propagationMethod', '\"all\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.enabledByDefault', 'true'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.hasUrls', 'true'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.template', '\"general.twig\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.siteSettings.148b99ca-50e0-4be3-9f95-942fcd12ecd5.uriFormat', '\"{parent.uri}/{slug}\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.structure.maxLevels', '2'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.structure.uid', '\"f2770db1-91d1-491c-9e3e-3527677a4b49\"'),
('sections.8637e10b-a65c-46c6-ae0f-88124cd19c28.type', '\"structure\"'),
('siteGroups.a1db3681-340f-4c30-8cc1-80f75af4d3b8.name', '\"craftcms-tester\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.handle', '\"default\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.hasUrls', 'true'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.language', '\"en-us\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.name', '\"craftcms-tester\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.primary', 'true'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.siteGroup', '\"a1db3681-340f-4c30-8cc1-80f75af4d3b8\"'),
('sites.148b99ca-50e0-4be3-9f95-942fcd12ecd5.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"craftcms-tester\"'),
('system.schemaVersion', '\"4.5.3.0\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elementCondition', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.autocomplete', 'false'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.autocorrect', 'true'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.class', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.disabled', 'false'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.elementCondition', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.id', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.instructions', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.label', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.max', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.min', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.name', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.orientation', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.placeholder', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.readonly', 'false'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.requirable', 'false'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.size', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.step', 'null');
INSERT INTO `crft_projectconfig` (`path`, `value`) VALUES
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.tip', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.title', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.uid', '\"6e69f5a4-103c-44f1-8cbe-1824baa8649b\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.userCondition', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.warning', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.elements.0.width', '100'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.name', '\"Content\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.uid', '\"bba74a51-0028-4d07-9cc5-b799fc107b69\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fieldLayouts.140143a5-4b31-4820-a133-e1d779f1c4c4.tabs.0.userCondition', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.fs', '\"uploads\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.handle', '\"uploads\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.name', '\"Uploads\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.sortOrder', '1'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.titleTranslationKeyFormat', 'null'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.titleTranslationMethod', '\"site\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.transformFs', '\"\"'),
('volumes.e2e255b6-f8af-4884-acb4-9a0c9ecd803d.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `crft_queue`
--

CREATE TABLE `crft_queue` (
  `id` int NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int NOT NULL,
  `ttr` int NOT NULL,
  `delay` int NOT NULL DEFAULT '0',
  `priority` int UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int DEFAULT NULL,
  `progress` smallint NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_relations`
--

CREATE TABLE `crft_relations` (
  `id` int NOT NULL,
  `fieldId` int NOT NULL,
  `sourceId` int NOT NULL,
  `sourceSiteId` int DEFAULT NULL,
  `targetId` int NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_relations`
--

INSERT INTO `crft_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 2, 2, NULL, 7, 1, '2023-10-31 15:31:05', '2023-10-31 15:31:05', '2e2635ad-7cb0-45a6-9d27-8d3f598786dd'),
(7, 2, 11, NULL, 7, 1, '2023-10-31 15:31:05', '2023-10-31 15:31:05', '3719e3e2-8238-4c15-9113-1af7463fb316'),
(8, 2, 12, NULL, 7, 1, '2023-11-01 12:57:14', '2023-11-01 12:57:14', '1b8be21c-fb98-470f-a4e5-448bcba5690e'),
(9, 2, 13, NULL, 7, 1, '2023-11-01 13:56:42', '2023-11-01 13:56:42', '9c5abca6-a1d1-4d94-91f9-dee786e63843'),
(34, 6, 56, NULL, 21, 1, '2023-11-01 14:01:20', '2023-11-01 14:01:20', 'c5a2232f-10c8-4392-ba1a-55f9c946b138'),
(35, 6, 57, NULL, 34, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'b30c4ead-5583-46df-88e1-a4f1c0f3eb44'),
(36, 6, 58, NULL, 52, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '544bbd77-fbb0-4692-b205-997b1836c829'),
(37, 2, 59, NULL, 7, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'adda31b3-bb42-427a-9f28-f9dd1fd096ba'),
(38, 6, 60, NULL, 21, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '8ad8a124-53f7-4d69-b482-cff7d2ce12a4'),
(39, 6, 61, NULL, 34, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', '9eb0c806-e3f0-4c4c-bc4d-bb49c3958bcc'),
(40, 6, 62, NULL, 52, 1, '2023-11-01 14:01:21', '2023-11-01 14:01:21', 'a6fe860b-9214-4835-91d6-475750b07d00'),
(42, 2, 64, NULL, 7, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', 'a7a2fc35-798a-43c8-bc5a-3e7cda31a686'),
(43, 6, 65, NULL, 21, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '992df021-31ba-4122-91d5-057506f4873b'),
(44, 6, 66, NULL, 52, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '5370b617-51c8-4d8b-b2d0-ccc635e6d5f4'),
(45, 6, 67, NULL, 34, 1, '2023-11-01 14:16:13', '2023-11-01 14:16:13', '097992c1-8af9-4583-bae2-7348fe1246cb'),
(46, 8, 68, NULL, 71, 2, '2023-11-01 17:03:37', '2023-11-01 17:03:41', '3f405864-dd66-4212-a4e0-2798d9639dc3'),
(47, 8, 68, NULL, 70, 1, '2023-11-01 17:03:37', '2023-11-01 17:03:41', 'f7179531-b3e3-42dd-954e-70341b42cfd0'),
(48, 8, 68, NULL, 69, 3, '2023-11-01 17:03:37', '2023-11-01 17:03:37', '32941116-e4bb-4adc-9e0d-42372e06cbd8'),
(49, 8, 72, NULL, 70, 1, '2023-11-01 17:04:23', '2023-11-01 17:04:23', '6ee8e170-0b50-4bea-97a2-062c87af2218'),
(50, 8, 72, NULL, 71, 2, '2023-11-01 17:04:23', '2023-11-01 17:04:23', '39d71869-5983-46c7-a2a3-d1f41e7f7ab6'),
(51, 8, 72, NULL, 69, 3, '2023-11-01 17:04:23', '2023-11-01 17:04:23', '60e060d1-38c0-433e-b270-6f2607cb233d'),
(52, 8, 73, NULL, 76, 3, '2023-11-01 17:05:26', '2023-11-01 17:05:31', '5ee4f00e-c479-4e90-aa54-2ccd4ea1335b'),
(53, 8, 73, NULL, 75, 2, '2023-11-01 17:05:26', '2023-11-01 17:05:31', 'e27c3de6-3b0a-4010-8897-586cb2a031a7'),
(54, 8, 73, NULL, 74, 1, '2023-11-01 17:05:26', '2023-11-01 17:05:29', '45f20e1e-beaa-4aaa-a450-78f553bc8c7f'),
(55, 8, 77, NULL, 74, 1, '2023-11-01 17:05:35', '2023-11-01 17:05:35', '1b484116-ebf6-4df5-b501-605cee074f1a'),
(56, 8, 77, NULL, 75, 2, '2023-11-01 17:05:35', '2023-11-01 17:05:35', 'e85fc7de-75f6-407b-9dad-1741ece1c369'),
(57, 8, 77, NULL, 76, 3, '2023-11-01 17:05:35', '2023-11-01 17:05:35', '7d34e66d-d5f1-445e-ae19-8db24a969c2d'),
(58, 8, 78, NULL, 79, 3, '2023-11-01 17:06:39', '2023-11-01 17:06:45', '30cb7d58-f410-4dbc-883f-e90aa4563607'),
(59, 8, 78, NULL, 69, 1, '2023-11-01 17:06:39', '2023-11-01 17:06:47', '8f28fb4b-3f88-4804-8d90-8f4bcefc34c0'),
(60, 8, 78, NULL, 7, 2, '2023-11-01 17:06:39', '2023-11-01 17:06:47', '02a50068-f55a-4ced-818d-780b1441b408'),
(61, 8, 80, NULL, 69, 1, '2023-11-01 17:06:49', '2023-11-01 17:06:49', '710e3b96-36a9-4e2d-a561-d5d9ad741153'),
(62, 8, 80, NULL, 7, 2, '2023-11-01 17:06:49', '2023-11-01 17:06:49', '3c73ca52-7c8e-4db3-af1f-0ae7dbe1cd9f'),
(63, 8, 80, NULL, 79, 3, '2023-11-01 17:06:49', '2023-11-01 17:06:49', 'ce206042-0a12-47a4-9bfe-f451bd704af6'),
(64, 2, 87, NULL, 7, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '26e54058-6f7f-4943-a373-824b471d2f7b'),
(65, 6, 88, NULL, 21, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', 'c0745cc6-8c04-47f5-8c42-c9d54632ca21'),
(66, 6, 89, NULL, 52, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '26766d68-2eae-48d3-97ae-e6fd7f2bc5c6'),
(67, 6, 90, NULL, 34, 1, '2023-11-01 18:12:30', '2023-11-01 18:12:30', '86f2b663-e8e6-4f7f-b702-fe5c19f95425'),
(68, 2, 91, NULL, 7, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', 'dd6cd478-72f9-43fc-a476-52167c660c9e'),
(69, 6, 92, NULL, 21, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '6308df36-7780-4913-8ef0-62e4e7fce011'),
(70, 6, 93, NULL, 52, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '3c304830-d588-4dad-aff2-c3dfcf15a3ea'),
(71, 6, 94, NULL, 34, 1, '2023-11-01 18:13:02', '2023-11-01 18:13:02', '5315fd17-7d21-4999-a064-f9867cc9413c'),
(74, 11, 2, NULL, 73, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '5e9ed6a7-3912-4ac0-80ef-3d9f1742917e'),
(75, 2, 96, NULL, 7, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'e8e8fd89-deb1-4a16-89aa-8c1cdab28028'),
(76, 11, 96, NULL, 73, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'e73a85e1-c80f-4332-88e9-d21a461ccff1'),
(77, 6, 97, NULL, 21, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'd1c52e55-5466-404c-b01e-c29d331e7b93'),
(78, 6, 98, NULL, 52, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', '6d886f17-01db-49be-a788-d9cec8378405'),
(79, 6, 99, NULL, 34, 1, '2023-11-01 18:13:48', '2023-11-01 18:13:48', 'bb5b9c41-ad8e-410d-8a6a-ac2b561e58f1'),
(80, 13, 109, NULL, 81, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '6c1b2f44-878d-401f-8c95-ff0d6208a3a9'),
(81, 13, 110, NULL, 102, 1, '2023-11-02 10:21:30', '2023-11-02 10:21:30', '431e0e5d-167a-4ed0-a197-2e728022fbc5');

-- --------------------------------------------------------

--
-- Table structure for table `crft_resourcepaths`
--

CREATE TABLE `crft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_resourcepaths`
--

INSERT INTO `crft_resourcepaths` (`hash`, `path`) VALUES
('1121ea2f', '@craft/web/assets/jquerypayment/dist'),
('1172354d', '@craft/web/assets/jquerytouchevents/dist'),
('14b6e898', '@craft/web/assets/velocity/dist'),
('1b15ed8f', '@craft/web/assets/assetindexes/dist'),
('1bb36771', '@craft/web/assets/feed/dist'),
('1bbc84ca', '@craft/web/assets/edittransform/dist'),
('24a65a35', '@craft/web/assets/craftsupport/dist'),
('26c28df1', '@craft/web/assets/xregexp/dist'),
('2d7a30f1', '@craft/web/assets/picturefill/dist'),
('2e317d39', '@craft/web/assets/dbbackup/dist'),
('426f5e0f', '@craft/web/assets/elementresizedetector/dist'),
('478f41e7', '@bower/jquery/dist'),
('4d68d1f1', '@craft/web/assets/jqueryui/dist'),
('5313075a', '@craft/web/assets/fileupload/dist'),
('549f29ae', '@craft/redactor/assets/redactor/dist'),
('62f041ba', '@craft/web/assets/dashboard/dist'),
('7626c335', '@craft/web/assets/htmx/dist'),
('79f742c9', '@craft/web/assets/edituser/dist'),
('7d3aa2d6', '@craft/web/assets/matrixsettings/dist'),
('830aac3c', '@craft/web/assets/updateswidget/dist'),
('834153e4', '@craft/web/assets/d3/dist'),
('88205a53', '@craft/web/assets/iframeresizer/dist'),
('8e498f65', '@craft/web/assets/fieldsettings/dist'),
('900f45d0', '@craft/web/assets/pluginstore/dist'),
('92296dc7', '@craft/web/assets/tailwindreset/dist'),
('953cd7e5', '@craft/web/assets/selectize/dist'),
('9630c3', '@craft/web/assets/vue/dist'),
('997475ad', '@craft/web/assets/cp/dist'),
('a5457b0b', '@craft/web/assets/axios/dist'),
('b473a80d', '@craft/web/assets/updater/dist'),
('bdb0ee52', '@craft/web/assets/recententries/dist'),
('be378606', '@craft/web/assets/conditionbuilder/dist'),
('c1930237', '@craft/redactor/assets/field/dist'),
('c3864d67', '@craft/web/assets/utilities/dist'),
('c465b747', '@craft/web/assets/queuemanager/dist'),
('cb5d991e', '@craft/web/assets/matrix/dist'),
('cec09c', '@craft/web/assets/editsection/dist'),
('d3acdb59', '@craft/web/assets/fabric/dist'),
('dd5edf44', '@craft/web/assets/sites/dist'),
('ef29d1f5', '@craft/web/assets/focalpoint/dist'),
('fb1eec4e', '@craft/web/assets/garnish/dist');

-- --------------------------------------------------------

--
-- Table structure for table `crft_revisions`
--

CREATE TABLE `crft_revisions` (
  `id` int NOT NULL,
  `canonicalId` int NOT NULL,
  `creatorId` int DEFAULT NULL,
  `num` int NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_revisions`
--

INSERT INTO `crft_revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, NULL),
(3, 2, 1, 3, NULL),
(4, 2, 1, 4, 'Applied “Draft 1”'),
(5, 2, 1, 5, NULL),
(6, 2, 1, 6, NULL),
(7, 2, 1, 7, 'Applied “Draft 1”'),
(8, 56, 1, 1, NULL),
(9, 57, 1, 1, NULL),
(10, 58, 1, 1, NULL),
(11, 2, 1, 8, 'Applied “Draft 1”'),
(12, 56, 1, 2, NULL),
(13, 58, 1, 2, NULL),
(14, 57, 1, 2, NULL),
(15, 68, 1, 1, ''),
(16, 73, 1, 1, ''),
(17, 78, 1, 1, ''),
(18, 81, 1, 1, NULL),
(19, 81, 1, 2, NULL),
(20, 81, 1, 3, NULL),
(21, 81, 1, 4, 'Applied “Draft 1”'),
(22, 2, 1, 9, NULL),
(23, 56, 1, 3, NULL),
(24, 58, 1, 3, NULL),
(25, 57, 1, 3, NULL),
(26, 2, 1, 10, NULL),
(27, 56, 1, 4, NULL),
(28, 58, 1, 4, NULL),
(29, 57, 1, 4, NULL),
(30, 2, 1, 11, 'Applied “Draft 1”'),
(31, 56, 1, 5, NULL),
(32, 58, 1, 5, NULL),
(33, 57, 1, 5, NULL),
(34, 102, 1, 1, ''),
(35, 102, 1, 2, 'Applied “Draft 1”'),
(36, 106, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `crft_searchindex`
--

CREATE TABLE `crft_searchindex` (
  `elementId` int NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int NOT NULL,
  `siteId` int NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_searchindex`
--

INSERT INTO `crft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' shabab ahmed sebpo gmail com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' new born 3 '),
(2, 'slug', 0, 1, ' home '),
(2, 'title', 0, 1, ' home '),
(7, 'alt', 0, 1, ''),
(7, 'extension', 0, 1, ' jpg '),
(7, 'filename', 0, 1, ' vander films iwi2xbthf8u unsplash jpg '),
(7, 'kind', 0, 1, ' image '),
(7, 'slug', 0, 1, ''),
(7, 'title', 0, 1, ' vander films i wi2xb th f8 u unsplash '),
(8, 'alt', 0, 1, ''),
(8, 'extension', 0, 1, ' jpg '),
(8, 'filename', 0, 1, ' vander films iwi2xbthf8u unsplash 2023 10 31 145000 pxqd jpg '),
(8, 'kind', 0, 1, ' image '),
(8, 'slug', 0, 1, ''),
(8, 'title', 0, 1, ' vander films i wi2xb th f8 u unsplash '),
(9, 'alt', 0, 1, ''),
(9, 'extension', 0, 1, ' jpg '),
(9, 'filename', 0, 1, ' vander films iwi2xbthf8u unsplash 2023 10 31 151555 sytv jpg '),
(9, 'kind', 0, 1, ' image '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' vander films i wi2xb th f8 u unsplash '),
(10, 'alt', 0, 1, ''),
(10, 'extension', 0, 1, ' jpg '),
(10, 'filename', 0, 1, ' vander films iwi2xbthf8u unsplash 2023 10 31 152258 befb jpg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' vander films i wi2xb th f8 u unsplash '),
(21, 'alt', 0, 1, ''),
(21, 'extension', 0, 1, ' jpg '),
(21, 'filename', 0, 1, ' henry potter jpg '),
(21, 'kind', 0, 1, ' image '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' henry potter '),
(34, 'alt', 0, 1, ''),
(34, 'extension', 0, 1, ' jpg '),
(34, 'filename', 0, 1, ' jack starfield jpg '),
(34, 'kind', 0, 1, ' image '),
(34, 'slug', 0, 1, ''),
(34, 'title', 0, 1, ' jack starfield '),
(52, 'alt', 0, 1, ''),
(52, 'extension', 0, 1, ' jpg '),
(52, 'filename', 0, 1, ' sarah bradbury jpg '),
(52, 'kind', 0, 1, ' image '),
(52, 'slug', 0, 1, ''),
(52, 'title', 0, 1, ' sarah bradbury '),
(56, 'slug', 0, 1, ''),
(57, 'slug', 0, 1, ''),
(58, 'slug', 0, 1, ''),
(68, 'slug', 0, 1, ' exporing peru by motorbike '),
(68, 'title', 0, 1, ' exporing peru by motorbike '),
(69, 'alt', 0, 1, ''),
(69, 'extension', 0, 1, ' jpg '),
(69, 'filename', 0, 1, ' felix lam j7fxkhtoqt0 unsplash jpg '),
(69, 'kind', 0, 1, ' image '),
(69, 'slug', 0, 1, ''),
(69, 'title', 0, 1, ' felix lam j7fxkht oqt0 unsplash '),
(70, 'alt', 0, 1, ''),
(70, 'extension', 0, 1, ' jpg '),
(70, 'filename', 0, 1, ' forest jpg '),
(70, 'kind', 0, 1, ' image '),
(70, 'slug', 0, 1, ''),
(70, 'title', 0, 1, ' forest '),
(71, 'alt', 0, 1, ''),
(71, 'extension', 0, 1, ' jpg '),
(71, 'filename', 0, 1, ' gear jpg '),
(71, 'kind', 0, 1, ' image '),
(71, 'slug', 0, 1, ''),
(71, 'title', 0, 1, ' gear '),
(73, 'slug', 0, 1, ' ktms nile river rally '),
(73, 'title', 0, 1, ' kts nile river rally '),
(74, 'alt', 0, 1, ''),
(74, 'extension', 0, 1, ' jpg '),
(74, 'filename', 0, 1, ' mohit suthar a1 tfcbsp7w unsplash jpg '),
(74, 'kind', 0, 1, ' image '),
(74, 'slug', 0, 1, ''),
(74, 'title', 0, 1, ' mohit suthar a1 t fc b sp7w unsplash '),
(75, 'alt', 0, 1, ''),
(75, 'extension', 0, 1, ' jpg '),
(75, 'filename', 0, 1, ' mountains jpg '),
(75, 'kind', 0, 1, ' image '),
(75, 'slug', 0, 1, ''),
(75, 'title', 0, 1, ' mountains '),
(76, 'alt', 0, 1, ''),
(76, 'extension', 0, 1, ' jpg '),
(76, 'filename', 0, 1, ' jeremy bishop hmhjyqlwqwu unsplash jpg '),
(76, 'kind', 0, 1, ' image '),
(76, 'slug', 0, 1, ''),
(76, 'title', 0, 1, ' jeremy bishop h mhjy ql w qw u unsplash '),
(78, 'slug', 0, 1, ' summer days in argentina '),
(78, 'title', 0, 1, ' summer days in argentina '),
(79, 'alt', 0, 1, ''),
(79, 'extension', 0, 1, ' jpg '),
(79, 'filename', 0, 1, ' hero jpg '),
(79, 'kind', 0, 1, ' image '),
(79, 'slug', 0, 1, ''),
(79, 'title', 0, 1, ' hero '),
(81, 'slug', 0, 1, ' stories listing '),
(81, 'title', 0, 1, ' stories listing from single story template '),
(100, 'slug', 0, 1, ' temp flyjyzsrrvhizqlnhacllrphvbeaajmxjgvy '),
(100, 'title', 0, 1, ''),
(101, 'slug', 0, 1, ' temp lseomlbclldjfalthjvkybagikhcuabajnor '),
(101, 'title', 0, 1, ''),
(102, 'slug', 0, 1, ' our gear '),
(102, 'title', 0, 1, ' our gear '),
(106, 'slug', 0, 1, ' fuji motors '),
(106, 'title', 0, 1, ' fuji motors '),
(108, 'slug', 0, 1, ''),
(109, 'slug', 0, 1, ''),
(110, 'slug', 0, 1, ''),
(111, 'slug', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `crft_sections`
--

CREATE TABLE `crft_sections` (
  `id` int NOT NULL,
  `structureId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_sections`
--

INSERT INTO `crft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', 'end', NULL, '2023-10-31 13:41:43', '2023-10-31 13:41:43', NULL, '5d056ada-9050-4fa7-b99b-250e724ea0c0'),
(2, NULL, 'Stories', 'stories', 'channel', 1, 'all', 'end', NULL, '2023-11-01 16:54:30', '2023-11-01 16:54:30', '2023-11-01 16:56:04', '3ea104ff-43ab-4cb3-9060-ffdc461d7ab5'),
(3, NULL, 'Stories', 'stories', 'channel', 1, 'all', 'end', NULL, '2023-11-01 16:57:20', '2023-11-01 16:57:20', NULL, '06df8f08-c36e-4694-9fea-74644bd6bc95'),
(4, NULL, 'Stories Listing', 'storiesListing', 'single', 1, 'all', 'end', NULL, '2023-11-01 18:06:25', '2023-11-01 18:06:25', NULL, '69ceb33c-81af-4e98-8d55-c771ce31963c'),
(5, 1, 'General Pages', 'generalPages', 'structure', 1, 'all', 'end', NULL, '2023-11-02 09:48:45', '2023-11-02 09:48:45', NULL, '8637e10b-a65c-46c6-ae0f-88124cd19c28');

-- --------------------------------------------------------

--
-- Table structure for table `crft_sections_sites`
--

CREATE TABLE `crft_sections_sites` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_sections_sites`
--

INSERT INTO `crft_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'home.twig', 1, '2023-10-31 13:41:43', '2023-10-31 13:41:43', '0223aac7-bd5f-44c3-9ba1-b660df63be43'),
(2, 2, 1, 1, 'stories/{slug}', 'stories/_entry', 1, '2023-11-01 16:54:30', '2023-11-01 16:54:30', '34b24350-b8f2-4fd4-ad51-fba54c077e4a'),
(3, 3, 1, 1, 'stories/{slug}', 'stories/_entry', 1, '2023-11-01 16:57:20', '2023-11-01 16:57:20', '9ddd00b5-8f3d-46c9-86c3-d4019611977d'),
(4, 4, 1, 1, 'stories', 'stories\\index.twig', 1, '2023-11-01 18:06:25', '2023-11-01 18:06:25', '97fa1763-3889-44b4-a4f8-f1894630693f'),
(5, 5, 1, 1, '{parent.uri}/{slug}', 'general.twig', 1, '2023-11-02 09:48:45', '2023-11-02 09:48:45', 'a168a0a6-bd03-4e94-b3ea-025b99c482f5');

-- --------------------------------------------------------

--
-- Table structure for table `crft_sequences`
--

CREATE TABLE `crft_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_sessions`
--

CREATE TABLE `crft_sessions` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_sessions`
--

INSERT INTO `crft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, 'jYwPd8AAv-K0bki56XHthLZVs8Ljeyn0VCBDuebeD4kNjiBRVmIVbNVVXgZ3PbVBMY_Zi5kZofj-peHwV3ozAmfIGHgIPVj0zjrP', '2023-11-03 12:25:36', '2023-11-03 12:26:26', '506ce71c-3da1-4718-875c-cc7eda9dc8aa');

-- --------------------------------------------------------

--
-- Table structure for table `crft_shunnedmessages`
--

CREATE TABLE `crft_shunnedmessages` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_sitegroups`
--

CREATE TABLE `crft_sitegroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_sitegroups`
--

INSERT INTO `crft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craftcms-tester', '2023-10-31 12:33:16', '2023-10-31 12:33:16', NULL, 'a1db3681-340f-4c30-8cc1-80f75af4d3b8');

-- --------------------------------------------------------

--
-- Table structure for table `crft_sites`
--

CREATE TABLE `crft_sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_sites`
--

INSERT INTO `crft_sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'true', 'craftcms-tester', 'default', 'en-us', 1, '$PRIMARY_SITE_URL', 1, '2023-10-31 12:33:16', '2023-10-31 12:33:16', NULL, '148b99ca-50e0-4be3-9f95-942fcd12ecd5');

-- --------------------------------------------------------

--
-- Table structure for table `crft_structureelements`
--

CREATE TABLE `crft_structureelements` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `elementId` int DEFAULT NULL,
  `root` int UNSIGNED DEFAULT NULL,
  `lft` int UNSIGNED NOT NULL,
  `rgt` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_structureelements`
--

INSERT INTO `crft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 6, 0, '2023-11-02 09:50:22', '2023-11-02 09:59:42', 'c3f9d968-ad77-43b0-b97b-cab8bca9ade7'),
(2, 1, 102, 1, 2, 5, 1, '2023-11-02 09:50:22', '2023-11-02 09:59:42', '6c938b8e-05ce-4c75-adf7-dc6386758fd1'),
(3, 1, 106, 1, 3, 4, 2, '2023-11-02 09:56:43', '2023-11-02 09:59:42', '9c2bda20-a8ac-460b-ac97-d246a1db1265');

-- --------------------------------------------------------

--
-- Table structure for table `crft_structures`
--

CREATE TABLE `crft_structures` (
  `id` int NOT NULL,
  `maxLevels` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_structures`
--

INSERT INTO `crft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, '2023-11-02 09:48:45', '2023-11-02 09:48:45', NULL, 'f2770db1-91d1-491c-9e3e-3527677a4b49');

-- --------------------------------------------------------

--
-- Table structure for table `crft_systemmessages`
--

CREATE TABLE `crft_systemmessages` (
  `id` int NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_taggroups`
--

CREATE TABLE `crft_taggroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_tags`
--

CREATE TABLE `crft_tags` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_tokens`
--

CREATE TABLE `crft_tokens` (
  `id` int NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint UNSIGNED DEFAULT NULL,
  `usageCount` tinyint UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_usergroups`
--

CREATE TABLE `crft_usergroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_usergroups_users`
--

CREATE TABLE `crft_usergroups_users` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_userpermissions`
--

CREATE TABLE `crft_userpermissions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_userpermissions_usergroups`
--

CREATE TABLE `crft_userpermissions_usergroups` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `groupId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_userpermissions_users`
--

CREATE TABLE `crft_userpermissions_users` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `crft_userpreferences`
--

CREATE TABLE `crft_userpreferences` (
  `userId` int NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_userpreferences`
--

INSERT INTO `crft_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"locale\":null,\"weekStartDay\":\"1\",\"alwaysShowFocusRings\":false,\"useShapes\":false,\"underlineLinks\":false,\"notificationDuration\":\"5000\",\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `crft_users`
--

CREATE TABLE `crft_users` (
  `id` int NOT NULL,
  `photoId` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_users`
--

INSERT INTO `crft_users` (`id`, `photoId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, 1, 0, 0, 0, 1, 'new-born-3', '', NULL, NULL, 'shabab.ahmed.sebpo@gmail.com', '$2y$13$y3RnudX.jNO5aqk09ITyF.oXb8f7gfxjHeK7Ydb9RDb9ftI76XBcC', '2023-11-03 12:25:36', NULL, NULL, NULL, '2023-11-02 08:56:16', NULL, 1, NULL, NULL, NULL, 0, '2023-11-03 12:25:24', '2023-10-31 12:33:17', '2023-11-03 12:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `crft_volumefolders`
--

CREATE TABLE `crft_volumefolders` (
  `id` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `volumeId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_volumefolders`
--

INSERT INTO `crft_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Uploads', '', '2023-10-31 14:19:01', '2023-10-31 14:19:01', 'c717c971-69b8-41cb-b3ce-6e32da2a9134'),
(2, NULL, NULL, 'Temporary filesystem', NULL, '2023-10-31 14:26:46', '2023-10-31 14:26:46', 'd5c64e6a-040a-49c8-ac4b-dcef2e637565'),
(4, 2, NULL, 'user_1', 'user_1/', '2023-11-02 09:52:43', '2023-11-02 09:52:43', '098577a8-feba-4e6a-bb44-37ec68a4d3eb');

-- --------------------------------------------------------

--
-- Table structure for table `crft_volumes`
--

CREATE TABLE `crft_volumes` (
  `id` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_volumes`
--

INSERT INTO `crft_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 'Uploads', 'uploads', 'uploads', '', '', 'site', NULL, 1, '2023-10-31 14:19:01', '2023-10-31 14:19:01', NULL, 'e2e255b6-f8af-4884-acb4-9a0c9ecd803d');

-- --------------------------------------------------------

--
-- Table structure for table `crft_widgets`
--

CREATE TABLE `crft_widgets` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `colspan` tinyint DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crft_widgets`
--

INSERT INTO `crft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2023-10-31 13:03:03', '2023-10-31 13:03:03', '74231266-dbf5-4d1e-ad7a-ed3bdab455b7'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2023-10-31 13:03:03', '2023-10-31 13:03:03', '716baec4-dc59-40ac-983e-2c4f9504a0dc'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2023-10-31 13:03:03', '2023-10-31 13:03:03', '6e7f34c8-e654-4d43-8a22-d8d81d91ab56'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2023-10-31 13:03:04', '2023-10-31 13:03:04', '167311c4-e928-465a-9415-55a6c871ca27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crft_addresses`
--
ALTER TABLE `crft_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_fk_csvsxzqyyaawinlplswnlfctwoyihltwkdrf` (`ownerId`);

--
-- Indexes for table `crft_announcements`
--
ALTER TABLE `crft_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_mhqvfwxwifaerghrkckjlagfganagshuhncd` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `crft_idx_rkrbcidykuxuzhacmhbpuzxaxzttixowutkd` (`dateRead`),
  ADD KEY `crft_fk_bdahotvisitkmuddyyixmpsbqkjeevlvcyeh` (`pluginId`);

--
-- Indexes for table `crft_assetindexdata`
--
ALTER TABLE `crft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_fhpylonwcnukqztlaeefunylrblhmocjwiat` (`sessionId`,`volumeId`),
  ADD KEY `crft_idx_nghuktigtigdxfmpzbthrvylembwvoymwtkl` (`volumeId`);

--
-- Indexes for table `crft_assetindexingsessions`
--
ALTER TABLE `crft_assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crft_assets`
--
ALTER TABLE `crft_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_gsfemjeptvzddkcenyrkrjgiujnohdwgbhvf` (`filename`,`folderId`),
  ADD KEY `crft_idx_bahhccowgdyqrwcvtqehbemnhsndppwefgnn` (`folderId`),
  ADD KEY `crft_idx_gmqhoxnyhvkgujenxwhrakfrbxxqcsqwagoa` (`volumeId`),
  ADD KEY `crft_fk_apjfwsalrlfvkxgeocbrqvhnujmtexokgalh` (`uploaderId`);

--
-- Indexes for table `crft_categories`
--
ALTER TABLE `crft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_lpmrdtelrbvwocvkgtouqhxyqjhrrukgemjp` (`groupId`),
  ADD KEY `crft_fk_gorfxqpcauwtgykeulogkinynijyvqxhfpgr` (`parentId`);

--
-- Indexes for table `crft_categorygroups`
--
ALTER TABLE `crft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_dkfjirqudwjdjcpypeuoriboujxgftnbmdpf` (`name`),
  ADD KEY `crft_idx_pqjfhowrllemenofqvnaibeimljwoosfussf` (`handle`),
  ADD KEY `crft_idx_phstsuyjchaknowghlundkovgfhtnerhfzlu` (`structureId`),
  ADD KEY `crft_idx_hlotwzrscyczftujopwcrzqdndzlyrsctbic` (`fieldLayoutId`),
  ADD KEY `crft_idx_ntpeohfcwfwshyufshqcrsnzmkpmfddpbavu` (`dateDeleted`);

--
-- Indexes for table `crft_categorygroups_sites`
--
ALTER TABLE `crft_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_qykixchwfvqwualkynifasytyelsxfezimau` (`groupId`,`siteId`),
  ADD KEY `crft_idx_eavlfevcadvekvsqkycttmrvqacupawenogl` (`siteId`);

--
-- Indexes for table `crft_changedattributes`
--
ALTER TABLE `crft_changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `crft_idx_msdgzxobckdcgcyqlflokmiufvxaajpltory` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `crft_fk_dagraldqczxrbbjklpmzbybxgswkgupifkmu` (`siteId`),
  ADD KEY `crft_fk_zgskoosjzjfjvlsxezjmsdwlljhjcfkbxlod` (`userId`);

--
-- Indexes for table `crft_changedfields`
--
ALTER TABLE `crft_changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `crft_idx_ksjxrruuhwypfbkzktropiiffucspgobbquf` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `crft_fk_ooclaiixsgywedwbouhmthjkbkbftezqkoua` (`siteId`),
  ADD KEY `crft_fk_aidjmvhjdopiijrbarohvxexvhisysbpgkmz` (`fieldId`),
  ADD KEY `crft_fk_axnclphheiagmscllrxhnamnbvqwjsnxazjc` (`userId`);

--
-- Indexes for table `crft_content`
--
ALTER TABLE `crft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_knehclzaviufgomdoyazsykmestktixqmela` (`elementId`,`siteId`),
  ADD KEY `crft_idx_fedhqqtgmwuadexqjfidwqlznktlaekvqdwy` (`siteId`),
  ADD KEY `crft_idx_xrysosdffjdyzyrevscjyulbhcntmzlzqvqh` (`title`);

--
-- Indexes for table `crft_craftidtokens`
--
ALTER TABLE `crft_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_fk_bhubkzlzjyoyprqkhcfwepildrtinpzghqfx` (`userId`);

--
-- Indexes for table `crft_deprecationerrors`
--
ALTER TABLE `crft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_vjyigulyhpnmxiqgdgzfelqrowqjglbeaeqt` (`key`,`fingerprint`);

--
-- Indexes for table `crft_drafts`
--
ALTER TABLE `crft_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_rxkfawaovtulzlcgqumsevilvlgfkhgzcqrh` (`creatorId`,`provisional`),
  ADD KEY `crft_idx_fznlfcogdltmxgwivnnmohrlvmzbvtfjmejd` (`saved`),
  ADD KEY `crft_fk_qpfwuejptcywiinpckkutgpyjvfdghpuxttd` (`canonicalId`);

--
-- Indexes for table `crft_elementactivity`
--
ALTER TABLE `crft_elementactivity`
  ADD PRIMARY KEY (`elementId`,`userId`,`type`),
  ADD KEY `crft_idx_rwepgyqyxaezluazysntjkmilafachuouirh` (`elementId`,`timestamp`,`userId`),
  ADD KEY `crft_fk_mhedxwewvgsteukkeowwopongacuhcgtgugu` (`userId`),
  ADD KEY `crft_fk_pdlhuxzchjfcmazwlaladjtjazesgtloelts` (`siteId`),
  ADD KEY `crft_fk_ljlgiuxmzxlemyurygfdenqdvfohsvniutru` (`draftId`);

--
-- Indexes for table `crft_elements`
--
ALTER TABLE `crft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_yrlwhcvlbpeintzakcdwmmllhsuiryluwwdl` (`dateDeleted`),
  ADD KEY `crft_idx_ggsrrhweescgunvdeevuadrzweohxgnfmfog` (`fieldLayoutId`),
  ADD KEY `crft_idx_edalsmnpbviunfobocslxpwzufihlybauqlm` (`type`),
  ADD KEY `crft_idx_fbmbcvmpbrorfxibgsqmfcrrvuojpckjnyyl` (`enabled`),
  ADD KEY `crft_idx_gngqdijfxdajeivbhbgdnxogurprsvzmiwzi` (`canonicalId`),
  ADD KEY `crft_idx_tmahxbulioquculimnxqnfzqiekyiwjiuckb` (`archived`,`dateCreated`),
  ADD KEY `crft_idx_qgdnpdecqmdmulnervtyufnslogankgesowj` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `crft_idx_hqlehlykhqwxunrvvoojxnlljghwuktcpiml` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `crft_fk_pfioskqvrbmbtyngmfkoziybqmjldxdiscpe` (`draftId`),
  ADD KEY `crft_fk_efhwteqdlaorwamkenugbrfohqiexmjcmngd` (`revisionId`);

--
-- Indexes for table `crft_elements_sites`
--
ALTER TABLE `crft_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_jyvevwzqjirsykqzjzzcpxhgncexzzhekftf` (`elementId`,`siteId`),
  ADD KEY `crft_idx_kigsqxpwggzioaoncyygfrnqwugmhcqdsnsb` (`siteId`),
  ADD KEY `crft_idx_wmknemnwhkxbhjhvlaiuffpnvfnsqogqplld` (`slug`,`siteId`),
  ADD KEY `crft_idx_sccwbxpwnawgcnytdhvruhzmygeikuozvzsu` (`enabled`),
  ADD KEY `crft_idx_wuvilsipbwhaxraqqtaqlwtudzwwkhewukqv` (`uri`,`siteId`);

--
-- Indexes for table `crft_entries`
--
ALTER TABLE `crft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_ptzcwcckraduhvbzpnghpawthkkkikxwpfxe` (`postDate`),
  ADD KEY `crft_idx_efgftnhpjsbkqjxwuimznuiuunvbftkgbnwh` (`expiryDate`),
  ADD KEY `crft_idx_cjaolntrvsupujtzefdgenisttpifppgvapu` (`authorId`),
  ADD KEY `crft_idx_uvpikcrrncipijqriedkmwvasusihttectol` (`sectionId`),
  ADD KEY `crft_idx_lulvxlpmoznibyhtbirvvaykqlxyurxqigcx` (`typeId`),
  ADD KEY `crft_fk_cfflcbnhxhaktejzbvzaacnjkfbtgjshfabd` (`parentId`);

--
-- Indexes for table `crft_entrytypes`
--
ALTER TABLE `crft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_bdkmzembdszhgwvutfkhtypsirjadpmhqdog` (`name`,`sectionId`),
  ADD KEY `crft_idx_tfyglnxraexzhvfmrrqvhfsgpwpndnunxwbc` (`handle`,`sectionId`),
  ADD KEY `crft_idx_ygcithfswrlwculwfjuxkzyicjklydzljzps` (`sectionId`),
  ADD KEY `crft_idx_owsijthipfbdssvmlyprpaibjanzemcghmov` (`fieldLayoutId`),
  ADD KEY `crft_idx_qwioinontsxgrdgahmeasmcaggjuukbfbifh` (`dateDeleted`);

--
-- Indexes for table `crft_fieldgroups`
--
ALTER TABLE `crft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_rfkntkogasdxfpnwfgwtfznvbkgapndxhqfh` (`name`),
  ADD KEY `crft_idx_vcpwtwdwygxrjczcjogrblmqfeasdxieysnj` (`dateDeleted`,`name`);

--
-- Indexes for table `crft_fieldlayoutfields`
--
ALTER TABLE `crft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_uzlpgubtgqggkwgrejewaqnevybngicqxqep` (`layoutId`,`fieldId`),
  ADD KEY `crft_idx_svhbiudfcgrabsibslsiuqmdgqstitkavlyv` (`sortOrder`),
  ADD KEY `crft_idx_jejytntbtkdxgbehyjeurrakloecqazifoan` (`tabId`),
  ADD KEY `crft_idx_zjuyzatyfvodficafedceqvtbxyovstfmkfs` (`fieldId`);

--
-- Indexes for table `crft_fieldlayouts`
--
ALTER TABLE `crft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_wzejtpywyzfisvylijoaeexbscdilmgtwvsg` (`dateDeleted`),
  ADD KEY `crft_idx_krpclgejceypetjjpotxmjndkldvezrflrql` (`type`);

--
-- Indexes for table `crft_fieldlayouttabs`
--
ALTER TABLE `crft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_fhazqvcvzywbsbqjlspwkfnabivolwqsfixk` (`sortOrder`),
  ADD KEY `crft_idx_zcnuxomgctbjdnqlcoqcbxssuwnrfjkqfsno` (`layoutId`);

--
-- Indexes for table `crft_fields`
--
ALTER TABLE `crft_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_uujquylmfsxvweyljpvqjwcykfxxuuifdehr` (`handle`,`context`),
  ADD KEY `crft_idx_sbzxrclezyzbuvgrgajbpavhvpjuogowmzzl` (`groupId`),
  ADD KEY `crft_idx_avrkoexblewdakmgyzjsdnjoyfblecuyslrf` (`context`);

--
-- Indexes for table `crft_globalsets`
--
ALTER TABLE `crft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_jgakmtfaglsdjhnqdypmyncwjtrqxyrlzngj` (`name`),
  ADD KEY `crft_idx_agpavsnldkkngpfvfbxlccqrhddjwbbwkbcn` (`handle`),
  ADD KEY `crft_idx_qsintdqhdghazesrtyskfvseoazptjfpfeie` (`fieldLayoutId`),
  ADD KEY `crft_idx_ivzzchomglnxrfoqoxnpseffuwlhbeiwzauh` (`sortOrder`);

--
-- Indexes for table `crft_gqlschemas`
--
ALTER TABLE `crft_gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crft_gqltokens`
--
ALTER TABLE `crft_gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_ihuztvvqhbekkiihkqhiyrglqtkfqrkjbpbk` (`accessToken`),
  ADD UNIQUE KEY `crft_idx_qsmsjxsnxxnmpkqbjtopmmblxeiwjpyzbzyj` (`name`),
  ADD KEY `crft_fk_wfevlnsvkhwuhjebaxpqkiczxjcixbjygdvb` (`schemaId`);

--
-- Indexes for table `crft_imagetransformindex`
--
ALTER TABLE `crft_imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_jjnkznpvrxjmsfqtxzltsciygjngbngcmhij` (`assetId`,`transformString`);

--
-- Indexes for table `crft_imagetransforms`
--
ALTER TABLE `crft_imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_ueodrgekbizkmcizcbzrhzbfjtllooggxsyi` (`name`),
  ADD KEY `crft_idx_nplenlppdwmnbansxvcjxdmttlbkgugrrcfl` (`handle`);

--
-- Indexes for table `crft_info`
--
ALTER TABLE `crft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crft_matrixblocks`
--
ALTER TABLE `crft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_uzvfpleizpoieaqaejlqseavrhmwwgxdqwhk` (`primaryOwnerId`),
  ADD KEY `crft_idx_dzsywdkpcmepjkhkmhjttbvmqjuqblshdhcr` (`fieldId`),
  ADD KEY `crft_idx_wehzgcbwsbonydpndfcwopgwyduuytwkymqg` (`typeId`);

--
-- Indexes for table `crft_matrixblocks_owners`
--
ALTER TABLE `crft_matrixblocks_owners`
  ADD PRIMARY KEY (`blockId`,`ownerId`),
  ADD KEY `crft_fk_uoufffwitqirkuwckgvuwyoyjnbfvozvsfwe` (`ownerId`);

--
-- Indexes for table `crft_matrixblocktypes`
--
ALTER TABLE `crft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_mgocqxopgdtlmihwfudqifyiplymduifyrse` (`name`,`fieldId`),
  ADD KEY `crft_idx_ssmfqkavgqepatbahcxdqscqqgfraxumtjyd` (`handle`,`fieldId`),
  ADD KEY `crft_idx_cuukgejoxruawlcxsbwzscotauqhtwtdxnnm` (`fieldId`),
  ADD KEY `crft_idx_oocffixigntmptibnqxcivxmwtndquuouaax` (`fieldLayoutId`);

--
-- Indexes for table `crft_matrixcontent_navlinks`
--
ALTER TABLE `crft_matrixcontent_navlinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_erqtpqepivuhmchgtczckteusqcceklyeopj` (`elementId`,`siteId`),
  ADD KEY `crft_fk_tbshqbhbaigmipifmxvfibdftjryjldbaoyd` (`siteId`);

--
-- Indexes for table `crft_matrixcontent_riders`
--
ALTER TABLE `crft_matrixcontent_riders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_dxofikuwsarwjlpqibcpkfrmzcdumefvngit` (`elementId`,`siteId`),
  ADD KEY `crft_fk_zvhacgghyelxffraqctihcrwvjlqeflpummz` (`siteId`);

--
-- Indexes for table `crft_migrations`
--
ALTER TABLE `crft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_ncahuhdgvmrhpjahhrnlnxipvsdvbnrwzxew` (`track`,`name`);

--
-- Indexes for table `crft_plugins`
--
ALTER TABLE `crft_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_qvvyyiwqmtphdrdqwlxsjplcewsjwddovepk` (`handle`);

--
-- Indexes for table `crft_projectconfig`
--
ALTER TABLE `crft_projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `crft_queue`
--
ALTER TABLE `crft_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_mmtktabbkdjrtbiloezhanzrxrmuffhovzhx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `crft_idx_edgxlsbciwwwkidzbeygvpavvqfwkizfhxij` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `crft_relations`
--
ALTER TABLE `crft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_tlrnyxkyfefjioxtjfhlxaqfgoffekvaqdgj` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `crft_idx_ulcbvretdsfghbptasnkaejfstjughugapgw` (`sourceId`),
  ADD KEY `crft_idx_lvirduuvhppjkcpquaxhzukqvydjgfikdmfg` (`targetId`),
  ADD KEY `crft_idx_xitgfyftgjpirmdyfsbmdsaxecqprwtfoyph` (`sourceSiteId`);

--
-- Indexes for table `crft_resourcepaths`
--
ALTER TABLE `crft_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `crft_revisions`
--
ALTER TABLE `crft_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_wrnjrbyvcovsgzmettffjftgobtxwvztopnu` (`canonicalId`,`num`),
  ADD KEY `crft_fk_idhhwdmnuvtuykbbhdxrmxpliyphblzuzxeu` (`creatorId`);

--
-- Indexes for table `crft_searchindex`
--
ALTER TABLE `crft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `crft_searchindex` ADD FULLTEXT KEY `crft_idx_ngyihsgdwlulwhlesykwbqxsmjibafrcjyea` (`keywords`);

--
-- Indexes for table `crft_sections`
--
ALTER TABLE `crft_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_fgjubgbwvdbdeuyntitsiumuaowgdgfeypay` (`handle`),
  ADD KEY `crft_idx_gsemuipnftxwjkhifbvtjblftzzpabmpcnyz` (`name`),
  ADD KEY `crft_idx_qmmuonejphxppcsjangqxakoinwqvqydnyji` (`structureId`),
  ADD KEY `crft_idx_kignlxmvupoeihlgtxfbdyaemtptsftquvlk` (`dateDeleted`);

--
-- Indexes for table `crft_sections_sites`
--
ALTER TABLE `crft_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_aouxdhtofjmmajpnscdzypuloeftnqeqklhx` (`sectionId`,`siteId`),
  ADD KEY `crft_idx_xgmzaedcfksmqfydntlgqwsvtuzntnuaryzy` (`siteId`);

--
-- Indexes for table `crft_sequences`
--
ALTER TABLE `crft_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `crft_sessions`
--
ALTER TABLE `crft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_lvtfrdogonzlpsqxgegseyasottecjtkkdeu` (`uid`),
  ADD KEY `crft_idx_zsfvwpotmiuijnfcukjoxzydtxikvuxgeaho` (`token`),
  ADD KEY `crft_idx_bmimozpiiaiwzityfftljpbnfqomoujejlpz` (`dateUpdated`),
  ADD KEY `crft_idx_cecylzfmsmfustcavfrxaftkuwyasfrekgve` (`userId`);

--
-- Indexes for table `crft_shunnedmessages`
--
ALTER TABLE `crft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_slywbqbvoqwtkmphbarusdhwbanvwoicuoxv` (`userId`,`message`);

--
-- Indexes for table `crft_sitegroups`
--
ALTER TABLE `crft_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_fykcuqjytlzjdwmeyjxdxehefdcpqwsawcml` (`name`);

--
-- Indexes for table `crft_sites`
--
ALTER TABLE `crft_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_nbcawybtfzxgveztgewnulghsstxdkulvvca` (`dateDeleted`),
  ADD KEY `crft_idx_kwobvpindfjxxusxjhmbyhzkqgieunhmwgmz` (`handle`),
  ADD KEY `crft_idx_iygpaefggtvsqfyoudphyolyvncamhpohryh` (`sortOrder`),
  ADD KEY `crft_fk_hsistdzgxmhmedqbvhtorhqwusyvxpfiayks` (`groupId`);

--
-- Indexes for table `crft_structureelements`
--
ALTER TABLE `crft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_gcfomwcbhjlzkockfkniyxdenhojnqknmxjb` (`structureId`,`elementId`),
  ADD KEY `crft_idx_qftjicoglzosxluzodypdnohrtqiueubnmqf` (`root`),
  ADD KEY `crft_idx_uhsbrsgiojxvzkmmpdbcmplzuzfphpebcajc` (`lft`),
  ADD KEY `crft_idx_zasrrpvvtmmdlhxgvsopdjbiatjcxjvutmcr` (`rgt`),
  ADD KEY `crft_idx_pxjmasiotxynxrsaovtznxcuevtdrakhgzqc` (`level`),
  ADD KEY `crft_idx_ixuomdhzugrrjvrcoctwlwvatyhhqlxtgrcz` (`elementId`);

--
-- Indexes for table `crft_structures`
--
ALTER TABLE `crft_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_pgphpexgmhauqtoynqnsleczmdmxjrdgawrm` (`dateDeleted`);

--
-- Indexes for table `crft_systemmessages`
--
ALTER TABLE `crft_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_ytkitoqhnpgrlcslsdsadyvyobwyhwbgfolv` (`key`,`language`),
  ADD KEY `crft_idx_ouqewrczyimlgxgnvjnahermfbolwfmynvsj` (`language`);

--
-- Indexes for table `crft_taggroups`
--
ALTER TABLE `crft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_sxwvflvxidffxyjwsikhbjefgxbstkaktcam` (`name`),
  ADD KEY `crft_idx_vrrgkhqrisolsjthlykbvgyjfnccikcqiwbu` (`handle`),
  ADD KEY `crft_idx_fmbxfpctkqdhkuyntdwsyfwojzkiknmcilum` (`dateDeleted`),
  ADD KEY `crft_fk_fwowqwegcziijrnwwrvxsjorljcffyfebkpa` (`fieldLayoutId`);

--
-- Indexes for table `crft_tags`
--
ALTER TABLE `crft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_lziexwhunujrcoyidnsjclyglbbkyuwibkib` (`groupId`);

--
-- Indexes for table `crft_tokens`
--
ALTER TABLE `crft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_xgoxdyvpuyyjfwxkjgabssrrxkbxvbzsdidd` (`token`),
  ADD KEY `crft_idx_hxxxvmuzljvmafseqiacmgorsegdzpvtvuts` (`expiryDate`);

--
-- Indexes for table `crft_usergroups`
--
ALTER TABLE `crft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_slgjvgzaluvyacshmcpurmrlftqbasfwkqaz` (`handle`),
  ADD KEY `crft_idx_lpqfkjqatnjeohhqtkczrkjwkoogwrkupkwn` (`name`);

--
-- Indexes for table `crft_usergroups_users`
--
ALTER TABLE `crft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_zuaazyogmydfanvwqeyujhdnwhlnnsrisnik` (`groupId`,`userId`),
  ADD KEY `crft_idx_srduxtmxxsxlbuounzfblhtldhezgzethyeu` (`userId`);

--
-- Indexes for table `crft_userpermissions`
--
ALTER TABLE `crft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_kluhhazuegqqhzheurcresknlmijowqhniog` (`name`);

--
-- Indexes for table `crft_userpermissions_usergroups`
--
ALTER TABLE `crft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_nzqasecolfqpqatsrxvpxvbqmiupohbkzlrr` (`permissionId`,`groupId`),
  ADD KEY `crft_idx_vtppiolnryupmkzgnachhxlhrcnaxqmkaune` (`groupId`);

--
-- Indexes for table `crft_userpermissions_users`
--
ALTER TABLE `crft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_lknzqsomsngdfahpaxhpavvcyangxmxmqllb` (`permissionId`,`userId`),
  ADD KEY `crft_idx_ajljzjscqpdhiaackqqvicnzrlyaygvrdrfu` (`userId`);

--
-- Indexes for table `crft_userpreferences`
--
ALTER TABLE `crft_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `crft_users`
--
ALTER TABLE `crft_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_urzrgwwbumivynzsklmgbjvvwutrjmnkuqfp` (`active`),
  ADD KEY `crft_idx_vcxozjijuqcfbrtdqunqhjmynbvscayafavy` (`locked`),
  ADD KEY `crft_idx_xpfylvuljklmitszlnkbneicuqwldezdwaqj` (`pending`),
  ADD KEY `crft_idx_wytlxdlssaajickddygocrfhksbpoobqbryk` (`suspended`),
  ADD KEY `crft_idx_ixqpgfoepoxmbkouowhxezizpocikkgzhqnv` (`verificationCode`),
  ADD KEY `crft_idx_bqdavtwlixaeuvomxtwduevtkghnlxisqobi` (`email`),
  ADD KEY `crft_idx_pbihcmvqeamnjemibnqwindmgjcsdinhevjf` (`username`),
  ADD KEY `crft_fk_bpgprvmjbtpsgwsrydemntualoectpoolhru` (`photoId`);

--
-- Indexes for table `crft_volumefolders`
--
ALTER TABLE `crft_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crft_idx_xylxqjgzsldzcslxbqavrshrfbfdgfssssxl` (`name`,`parentId`,`volumeId`),
  ADD KEY `crft_idx_fntjsmzflwziwgboymrfvkteaooejugvvvnc` (`parentId`),
  ADD KEY `crft_idx_ymvcfttvyzesrrkkgsbqoiiedxuvtylluvov` (`volumeId`);

--
-- Indexes for table `crft_volumes`
--
ALTER TABLE `crft_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_risbnecwzlibcoanicnkfokexiheapjpbjch` (`name`),
  ADD KEY `crft_idx_muudvsegoankaexxcwpjmjhlbeklbjmealkw` (`handle`),
  ADD KEY `crft_idx_qzegkqaixawmbqpfdhduhnsmspndbwceufdh` (`fieldLayoutId`),
  ADD KEY `crft_idx_zbzheowltmzcosroumixlnmcylxnldalznif` (`dateDeleted`);

--
-- Indexes for table `crft_widgets`
--
ALTER TABLE `crft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crft_idx_takamxhxkkmoevzjrafiyjkhsgcpcmtaykge` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crft_announcements`
--
ALTER TABLE `crft_announcements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_assetindexdata`
--
ALTER TABLE `crft_assetindexdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_assetindexingsessions`
--
ALTER TABLE `crft_assetindexingsessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_categorygroups`
--
ALTER TABLE `crft_categorygroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_categorygroups_sites`
--
ALTER TABLE `crft_categorygroups_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_content`
--
ALTER TABLE `crft_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `crft_craftidtokens`
--
ALTER TABLE `crft_craftidtokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_deprecationerrors`
--
ALTER TABLE `crft_deprecationerrors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_drafts`
--
ALTER TABLE `crft_drafts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crft_elements`
--
ALTER TABLE `crft_elements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `crft_elements_sites`
--
ALTER TABLE `crft_elements_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `crft_entrytypes`
--
ALTER TABLE `crft_entrytypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crft_fieldgroups`
--
ALTER TABLE `crft_fieldgroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crft_fieldlayoutfields`
--
ALTER TABLE `crft_fieldlayoutfields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `crft_fieldlayouts`
--
ALTER TABLE `crft_fieldlayouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crft_fieldlayouttabs`
--
ALTER TABLE `crft_fieldlayouttabs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `crft_fields`
--
ALTER TABLE `crft_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `crft_globalsets`
--
ALTER TABLE `crft_globalsets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `crft_gqlschemas`
--
ALTER TABLE `crft_gqlschemas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_gqltokens`
--
ALTER TABLE `crft_gqltokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_imagetransformindex`
--
ALTER TABLE `crft_imagetransformindex`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `crft_imagetransforms`
--
ALTER TABLE `crft_imagetransforms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crft_info`
--
ALTER TABLE `crft_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_matrixblocktypes`
--
ALTER TABLE `crft_matrixblocktypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crft_matrixcontent_navlinks`
--
ALTER TABLE `crft_matrixcontent_navlinks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crft_matrixcontent_riders`
--
ALTER TABLE `crft_matrixcontent_riders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `crft_migrations`
--
ALTER TABLE `crft_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `crft_plugins`
--
ALTER TABLE `crft_plugins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_queue`
--
ALTER TABLE `crft_queue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `crft_relations`
--
ALTER TABLE `crft_relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `crft_revisions`
--
ALTER TABLE `crft_revisions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `crft_sections`
--
ALTER TABLE `crft_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crft_sections_sites`
--
ALTER TABLE `crft_sections_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crft_sessions`
--
ALTER TABLE `crft_sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crft_shunnedmessages`
--
ALTER TABLE `crft_shunnedmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_sitegroups`
--
ALTER TABLE `crft_sitegroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_sites`
--
ALTER TABLE `crft_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_structureelements`
--
ALTER TABLE `crft_structureelements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crft_structures`
--
ALTER TABLE `crft_structures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_systemmessages`
--
ALTER TABLE `crft_systemmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_taggroups`
--
ALTER TABLE `crft_taggroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_tokens`
--
ALTER TABLE `crft_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_usergroups`
--
ALTER TABLE `crft_usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_usergroups_users`
--
ALTER TABLE `crft_usergroups_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_userpermissions`
--
ALTER TABLE `crft_userpermissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_userpermissions_usergroups`
--
ALTER TABLE `crft_userpermissions_usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_userpermissions_users`
--
ALTER TABLE `crft_userpermissions_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crft_userpreferences`
--
ALTER TABLE `crft_userpreferences`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_volumefolders`
--
ALTER TABLE `crft_volumefolders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crft_volumes`
--
ALTER TABLE `crft_volumes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crft_widgets`
--
ALTER TABLE `crft_widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crft_addresses`
--
ALTER TABLE `crft_addresses`
  ADD CONSTRAINT `crft_fk_bwvbyjusvrfawsdtnaxkzyvyuyiqhflyqibh` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_csvsxzqyyaawinlplswnlfctwoyihltwkdrf` FOREIGN KEY (`ownerId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_announcements`
--
ALTER TABLE `crft_announcements`
  ADD CONSTRAINT `crft_fk_bdahotvisitkmuddyyixmpsbqkjeevlvcyeh` FOREIGN KEY (`pluginId`) REFERENCES `crft_plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_bzinvhvbhtspsqfbzncyqptohtqswynrskmu` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_assetindexdata`
--
ALTER TABLE `crft_assetindexdata`
  ADD CONSTRAINT `crft_fk_qtzilgyxtbzvrloezbtdjrsqtbrtcbapsxfu` FOREIGN KEY (`sessionId`) REFERENCES `crft_assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_vlhepceuywoujzaiaiyasbvpiicynrerxuqk` FOREIGN KEY (`volumeId`) REFERENCES `crft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_assets`
--
ALTER TABLE `crft_assets`
  ADD CONSTRAINT `crft_fk_apjfwsalrlfvkxgeocbrqvhnujmtexokgalh` FOREIGN KEY (`uploaderId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_ejzzwfmbdqublfeljecxvkzalnjkszidxwsy` FOREIGN KEY (`volumeId`) REFERENCES `crft_volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_hbklvandssfxwikiqwpeirkyebrrbwjinnus` FOREIGN KEY (`folderId`) REFERENCES `crft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_reyyegcleddtlnjbkskqxpashuxpahfbhlai` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_categories`
--
ALTER TABLE `crft_categories`
  ADD CONSTRAINT `crft_fk_gorfxqpcauwtgykeulogkinynijyvqxhfpgr` FOREIGN KEY (`parentId`) REFERENCES `crft_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_mghbzrsvbqlujnaeeuphxdauovwslxvnztcb` FOREIGN KEY (`groupId`) REFERENCES `crft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_tzqripdoaewaksfyhbjhpvxdolvlzqgxgaab` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_categorygroups`
--
ALTER TABLE `crft_categorygroups`
  ADD CONSTRAINT `crft_fk_lwziwgzigsswuvzyuowriybfenrjftyctwcb` FOREIGN KEY (`structureId`) REFERENCES `crft_structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_qbdyuzxsstkdhfpvhsfialabktcumzluivif` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_categorygroups_sites`
--
ALTER TABLE `crft_categorygroups_sites`
  ADD CONSTRAINT `crft_fk_rtigjvgvskybvcafkillrvcvbbysxzkdmuiu` FOREIGN KEY (`groupId`) REFERENCES `crft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_ubgbfyyewbxqajmkcwnxspjpioibwldxysfu` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_changedattributes`
--
ALTER TABLE `crft_changedattributes`
  ADD CONSTRAINT `crft_fk_aetczlhdegindpiynqcrmobfqzmlfswztvoe` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_dagraldqczxrbbjklpmzbybxgswkgupifkmu` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_zgskoosjzjfjvlsxezjmsdwlljhjcfkbxlod` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `crft_changedfields`
--
ALTER TABLE `crft_changedfields`
  ADD CONSTRAINT `crft_fk_aidjmvhjdopiijrbarohvxexvhisysbpgkmz` FOREIGN KEY (`fieldId`) REFERENCES `crft_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_axnclphheiagmscllrxhnamnbvqwjsnxazjc` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_ooclaiixsgywedwbouhmthjkbkbftezqkoua` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_qccuuvatxsvljuqvkazlnxdjshtidapltxld` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_content`
--
ALTER TABLE `crft_content`
  ADD CONSTRAINT `crft_fk_jnnwtmfgebsgqpxhxhdfmcppsrvpjdahtweo` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_lixdpikwrhktkzzbmbyxafvcvrtngfmtojiv` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_craftidtokens`
--
ALTER TABLE `crft_craftidtokens`
  ADD CONSTRAINT `crft_fk_bhubkzlzjyoyprqkhcfwepildrtinpzghqfx` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_drafts`
--
ALTER TABLE `crft_drafts`
  ADD CONSTRAINT `crft_fk_nptwgtjkhacnwtbtglxqjmnywdhphjbsjvuc` FOREIGN KEY (`creatorId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_qpfwuejptcywiinpckkutgpyjvfdghpuxttd` FOREIGN KEY (`canonicalId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_elementactivity`
--
ALTER TABLE `crft_elementactivity`
  ADD CONSTRAINT `crft_fk_ljlgiuxmzxlemyurygfdenqdvfohsvniutru` FOREIGN KEY (`draftId`) REFERENCES `crft_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_mhedxwewvgsteukkeowwopongacuhcgtgugu` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_pdlhuxzchjfcmazwlaladjtjazesgtloelts` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_tygxdficwcprtrrixjpyufkijayedztzsies` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_elements`
--
ALTER TABLE `crft_elements`
  ADD CONSTRAINT `crft_fk_bvszuxoolhlqeiyqsjdepkhpabsaoudaxsxg` FOREIGN KEY (`canonicalId`) REFERENCES `crft_elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_efhwteqdlaorwamkenugbrfohqiexmjcmngd` FOREIGN KEY (`revisionId`) REFERENCES `crft_revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_pfioskqvrbmbtyngmfkoziybqmjldxdiscpe` FOREIGN KEY (`draftId`) REFERENCES `crft_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_sfnqgutxooljoidvtbtcdgnaowkwxobctmhk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_elements_sites`
--
ALTER TABLE `crft_elements_sites`
  ADD CONSTRAINT `crft_fk_njjfmkoerjbtahyzlymryeujttoxoufdibaw` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_xudzsrdclecwmphdjcnutxdhnqcdyiohqalj` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_entries`
--
ALTER TABLE `crft_entries`
  ADD CONSTRAINT `crft_fk_cfflcbnhxhaktejzbvzaacnjkfbtgjshfabd` FOREIGN KEY (`parentId`) REFERENCES `crft_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_fjzhvxvjvkrtlqedgkqdwjceepkgyzolehuf` FOREIGN KEY (`typeId`) REFERENCES `crft_entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_ixxswjgepsepjpbkfzcjsfaturtwtxpgrxcj` FOREIGN KEY (`sectionId`) REFERENCES `crft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_uqeqdnygltktpldzbxbfaosadrnxrlrhmxzc` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_wtgddgfoopigbhyhjiodkxlnjpnkcchfjnqk` FOREIGN KEY (`authorId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_entrytypes`
--
ALTER TABLE `crft_entrytypes`
  ADD CONSTRAINT `crft_fk_bviptshykkdybrtatapbtcvmnhgyjkjrvuqu` FOREIGN KEY (`sectionId`) REFERENCES `crft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_ptgtrtgmqiljnhzkxtbppssjbbubuambevob` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_fieldlayoutfields`
--
ALTER TABLE `crft_fieldlayoutfields`
  ADD CONSTRAINT `crft_fk_bsccptdovwfhhfxdseewzhfpvpobqjdvvohy` FOREIGN KEY (`fieldId`) REFERENCES `crft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_dizyqndsrxogmzxdrkjwthlwbridjcuyfuxv` FOREIGN KEY (`layoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_rqtyxrzcgiaufddnmmlfgmstlupmfsfwvzwo` FOREIGN KEY (`tabId`) REFERENCES `crft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_fieldlayouttabs`
--
ALTER TABLE `crft_fieldlayouttabs`
  ADD CONSTRAINT `crft_fk_amhuhejtepijnyscjicanwtnaswavshsylik` FOREIGN KEY (`layoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_fields`
--
ALTER TABLE `crft_fields`
  ADD CONSTRAINT `crft_fk_bygarsldwqnfvfzpzrzrazbhgcabqtjpcoct` FOREIGN KEY (`groupId`) REFERENCES `crft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_globalsets`
--
ALTER TABLE `crft_globalsets`
  ADD CONSTRAINT `crft_fk_nouaklbavlpeirsypcehvwbbsitgaxtpoolk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_yofmeivurqtwdmmkolohqkzbukvuvsasljcj` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_gqltokens`
--
ALTER TABLE `crft_gqltokens`
  ADD CONSTRAINT `crft_fk_wfevlnsvkhwuhjebaxpqkiczxjcixbjygdvb` FOREIGN KEY (`schemaId`) REFERENCES `crft_gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_matrixblocks`
--
ALTER TABLE `crft_matrixblocks`
  ADD CONSTRAINT `crft_fk_bqqkyhbifohdfcikubytvuzcrjjrlhaytcgc` FOREIGN KEY (`typeId`) REFERENCES `crft_matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_nlqkxurbcvjjxfvkskhhfwaxenzcsuxmfadt` FOREIGN KEY (`primaryOwnerId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_prlkciggeryayvckmongwhjlohpxlboohebd` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_yjmjrimflqqwlnjbcziibmjafeyovexayrmm` FOREIGN KEY (`fieldId`) REFERENCES `crft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_matrixblocks_owners`
--
ALTER TABLE `crft_matrixblocks_owners`
  ADD CONSTRAINT `crft_fk_mffsjyiaxaewjhvqcumwhoetnsijbefxmdln` FOREIGN KEY (`blockId`) REFERENCES `crft_matrixblocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_uoufffwitqirkuwckgvuwyoyjnbfvozvsfwe` FOREIGN KEY (`ownerId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_matrixblocktypes`
--
ALTER TABLE `crft_matrixblocktypes`
  ADD CONSTRAINT `crft_fk_nykngjoxiudcjaopxhzwarrsrenygmjsbcwb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_ooirqpyzhtvnnixicoukapriodzybufouaxf` FOREIGN KEY (`fieldId`) REFERENCES `crft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_matrixcontent_navlinks`
--
ALTER TABLE `crft_matrixcontent_navlinks`
  ADD CONSTRAINT `crft_fk_mzctpvzsnffwbjfoooiatzemsktdodffafet` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_tbshqbhbaigmipifmxvfibdftjryjldbaoyd` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_matrixcontent_riders`
--
ALTER TABLE `crft_matrixcontent_riders`
  ADD CONSTRAINT `crft_fk_vzaztshxnossxnlebtdhjvyxdcptqfhnegbs` FOREIGN KEY (`elementId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_zvhacgghyelxffraqctihcrwvjlqeflpummz` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_relations`
--
ALTER TABLE `crft_relations`
  ADD CONSTRAINT `crft_fk_msmcrdadhifedkzwjiifnphszpljhfssnjez` FOREIGN KEY (`sourceId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_nddophsvtzcmijxxnycfxkhttyacbseerkez` FOREIGN KEY (`sourceSiteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crft_fk_yineppyzkovlgsrqjzohbzdswkzaquxmwtpv` FOREIGN KEY (`fieldId`) REFERENCES `crft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_revisions`
--
ALTER TABLE `crft_revisions`
  ADD CONSTRAINT `crft_fk_idhhwdmnuvtuykbbhdxrmxpliyphblzuzxeu` FOREIGN KEY (`creatorId`) REFERENCES `crft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_rddnzagxkvigpenhsdgjiabatopnumhczssb` FOREIGN KEY (`canonicalId`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_sections`
--
ALTER TABLE `crft_sections`
  ADD CONSTRAINT `crft_fk_vqlzkqgvmchdhxtkuhxxnnpxpbjpribcdqzg` FOREIGN KEY (`structureId`) REFERENCES `crft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_sections_sites`
--
ALTER TABLE `crft_sections_sites`
  ADD CONSTRAINT `crft_fk_aqlbmiblphgcgcnygkymtmbshmzkoixaebfc` FOREIGN KEY (`sectionId`) REFERENCES `crft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_odooiwouvsdfyshjmugflqpagdgrcfmfqxzz` FOREIGN KEY (`siteId`) REFERENCES `crft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crft_sessions`
--
ALTER TABLE `crft_sessions`
  ADD CONSTRAINT `crft_fk_klghvaoruxvyspqallxrkrirnirapyitwoxd` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_shunnedmessages`
--
ALTER TABLE `crft_shunnedmessages`
  ADD CONSTRAINT `crft_fk_wiubvqgkyjybaagwbcermqufapozmgocgqrj` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_sites`
--
ALTER TABLE `crft_sites`
  ADD CONSTRAINT `crft_fk_hsistdzgxmhmedqbvhtorhqwusyvxpfiayks` FOREIGN KEY (`groupId`) REFERENCES `crft_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_structureelements`
--
ALTER TABLE `crft_structureelements`
  ADD CONSTRAINT `crft_fk_pkhvtbxijlygeilhiwctqxnfumxbmwpvitso` FOREIGN KEY (`structureId`) REFERENCES `crft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_taggroups`
--
ALTER TABLE `crft_taggroups`
  ADD CONSTRAINT `crft_fk_fwowqwegcziijrnwwrvxsjorljcffyfebkpa` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_tags`
--
ALTER TABLE `crft_tags`
  ADD CONSTRAINT `crft_fk_coptctbtzvdmctwoboqrcoelsjqxrswjoimn` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_rcgobpuuzplkrfuchffljqdmzefdkgktlojz` FOREIGN KEY (`groupId`) REFERENCES `crft_taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_usergroups_users`
--
ALTER TABLE `crft_usergroups_users`
  ADD CONSTRAINT `crft_fk_albikucvpcdouahngocjffgiiwpcrbxxdshm` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_pmkcdomabuukbmurwcemqplzaadzesfekcwg` FOREIGN KEY (`groupId`) REFERENCES `crft_usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_userpermissions_usergroups`
--
ALTER TABLE `crft_userpermissions_usergroups`
  ADD CONSTRAINT `crft_fk_hawnojsnmkjprflsdoiwjludbicesbeptrds` FOREIGN KEY (`groupId`) REFERENCES `crft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_mtttyqqwdxltgxntuxcnnntumwqtrbbgyfah` FOREIGN KEY (`permissionId`) REFERENCES `crft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_userpermissions_users`
--
ALTER TABLE `crft_userpermissions_users`
  ADD CONSTRAINT `crft_fk_ijhsbckvldswrpbnesgnfboehifgrjifovmv` FOREIGN KEY (`permissionId`) REFERENCES `crft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_jegvlkososqshfkwmbzbzinfocekwcifinbo` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_userpreferences`
--
ALTER TABLE `crft_userpreferences`
  ADD CONSTRAINT `crft_fk_ymebscoxkafioynrrfokcxbkwptlfjyhygob` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_users`
--
ALTER TABLE `crft_users`
  ADD CONSTRAINT `crft_fk_bpgprvmjbtpsgwsrydemntualoectpoolhru` FOREIGN KEY (`photoId`) REFERENCES `crft_assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `crft_fk_wprjwolwvrsntwyktfpgidjgokokbogsmoxv` FOREIGN KEY (`id`) REFERENCES `crft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_volumefolders`
--
ALTER TABLE `crft_volumefolders`
  ADD CONSTRAINT `crft_fk_afipvjdxelvisylvsuliepkycxzckwoqjdrb` FOREIGN KEY (`parentId`) REFERENCES `crft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crft_fk_viqadqtmsdzsgcgdaepnbacwpydeuqwfbyqg` FOREIGN KEY (`volumeId`) REFERENCES `crft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crft_volumes`
--
ALTER TABLE `crft_volumes`
  ADD CONSTRAINT `crft_fk_nxtirbduqekbcaoxyybzoimzskoftnoebudv` FOREIGN KEY (`fieldLayoutId`) REFERENCES `crft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `crft_widgets`
--
ALTER TABLE `crft_widgets`
  ADD CONSTRAINT `crft_fk_symmdvloltydnxmaeneivvfxgkuktgoghoui` FOREIGN KEY (`userId`) REFERENCES `crft_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
