-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table pos_naysa4.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.cache: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.cache_locks: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.item_penjualan
CREATE TABLE IF NOT EXISTS `item_penjualan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint unsigned NOT NULL,
  `produk_id` bigint unsigned NOT NULL,
  `kuantitas` int NOT NULL,
  `harga_satuan` int NOT NULL,
  `subtotal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_penjualan_penjualan_id_foreign` (`penjualan_id`),
  KEY `item_penjualan_produk_id_foreign` (`produk_id`),
  CONSTRAINT `item_penjualan_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`),
  CONSTRAINT `item_penjualan_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.item_penjualan: ~0 rows (approximately)
INSERT INTO `item_penjualan` (`id`, `penjualan_id`, `produk_id`, `kuantitas`, `harga_satuan`, `subtotal`, `created_at`, `updated_at`) VALUES
	(1, 1, 39, 4, 389348, 1557392, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(2, 1, 21, 5, 67769, 338845, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(3, 1, 31, 4, 179463, 717852, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(4, 1, 98, 9, 267457, 2407113, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(5, 2, 40, 7, 104082, 728574, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(6, 2, 46, 6, 173958, 1043748, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(7, 2, 52, 2, 499712, 999424, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(8, 2, 92, 4, 174562, 698248, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(9, 2, 43, 1, 491139, 491139, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(10, 3, 27, 3, 501944, 1505832, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(11, 3, 14, 6, 391350, 2348100, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(12, 3, 60, 1, 302670, 302670, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(13, 3, 85, 8, 243741, 1949928, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(14, 4, 18, 2, 53809, 107618, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(15, 5, 34, 7, 109427, 765989, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(16, 5, 35, 2, 222012, 444024, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(17, 5, 23, 5, 90597, 452985, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(18, 5, 3, 10, 228014, 2280140, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(19, 5, 68, 5, 456584, 2282920, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(20, 6, 84, 10, 25597, 255970, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(21, 6, 81, 8, 68351, 546808, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(22, 7, 19, 4, 439756, 1759024, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(23, 7, 41, 1, 165850, 165850, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(24, 8, 50, 5, 320861, 1604305, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(25, 8, 36, 9, 178919, 1610271, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(26, 9, 29, 10, 317528, 3175280, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(27, 10, 88, 4, 286546, 1146184, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(28, 10, 52, 2, 499712, 999424, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(29, 11, 41, 2, 165850, 331700, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(30, 11, 6, 3, 515842, 1547526, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(31, 11, 91, 1, 206686, 206686, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(32, 11, 26, 3, 269350, 808050, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(33, 12, 2, 8, 457108, 3656864, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(34, 13, 73, 5, 389340, 1946700, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(35, 13, 55, 6, 110410, 662460, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(36, 13, 53, 10, 158873, 1588730, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(37, 14, 54, 4, 210659, 842636, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(38, 14, 29, 9, 317528, 2857752, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(39, 14, 62, 7, 459348, 3215436, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(40, 14, 50, 9, 320861, 2887749, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(41, 14, 24, 2, 358547, 717094, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(42, 15, 13, 8, 336259, 2690072, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(43, 16, 43, 4, 491139, 1964556, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(44, 16, 1, 3, 260455, 781365, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(45, 16, 93, 9, 128821, 1159389, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(46, 16, 62, 2, 459348, 918696, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(47, 17, 60, 3, 302670, 908010, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(48, 18, 88, 4, 286546, 1146184, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(49, 19, 11, 4, 550200, 2200800, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(50, 20, 53, 10, 158873, 1588730, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(51, 20, 68, 9, 456584, 4109256, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(52, 20, 24, 5, 358547, 1792735, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(53, 20, 90, 6, 339804, 2038824, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(54, 20, 100, 5, 409529, 2047645, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(55, 21, 58, 1, 96850, 96850, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(56, 21, 31, 8, 179463, 1435704, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(57, 22, 96, 8, 374156, 2993248, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(58, 22, 8, 6, 532241, 3193446, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(59, 22, 18, 6, 53809, 322854, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(60, 22, 8, 1, 532241, 532241, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(61, 23, 35, 1, 222012, 222012, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(62, 23, 80, 3, 80803, 242409, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(63, 23, 64, 3, 150795, 452385, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(64, 24, 61, 9, 415753, 3741777, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(65, 24, 81, 5, 68351, 341755, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(66, 24, 31, 4, 179463, 717852, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(67, 25, 9, 3, 390563, 1171689, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(68, 25, 6, 5, 515842, 2579210, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(69, 25, 92, 4, 174562, 698248, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(70, 26, 27, 6, 501944, 3011664, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(71, 26, 27, 7, 501944, 3513608, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(72, 26, 43, 4, 491139, 1964556, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(73, 26, 63, 9, 128735, 1158615, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(74, 26, 1, 9, 260455, 2344095, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(75, 27, 83, 10, 478829, 4788290, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(76, 27, 27, 8, 501944, 4015552, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(77, 27, 28, 7, 92626, 648382, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(78, 27, 58, 10, 96850, 968500, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(79, 27, 42, 9, 586279, 5276511, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(80, 28, 69, 3, 398682, 1196046, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(81, 28, 74, 2, 567374, 1134748, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(82, 28, 67, 10, 211871, 2118710, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(83, 29, 56, 1, 290601, 290601, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(84, 29, 97, 8, 87860, 702880, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(85, 29, 71, 4, 113596, 454384, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(86, 29, 76, 9, 444108, 3996972, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(87, 30, 98, 10, 267457, 2674570, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(88, 30, 17, 10, 110908, 1109080, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(89, 30, 59, 8, 198327, 1586616, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(90, 30, 31, 4, 179463, 717852, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(91, 30, 41, 6, 165850, 995100, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(92, 31, 64, 9, 150795, 1357155, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(93, 32, 39, 2, 389348, 778696, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(94, 32, 91, 9, 206686, 1860174, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(95, 33, 89, 6, 247576, 1485456, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(96, 33, 86, 6, 293187, 1759122, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(97, 34, 20, 3, 340970, 1022910, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(98, 34, 93, 7, 128821, 901747, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(99, 35, 82, 7, 125685, 879795, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(100, 36, 93, 1, 128821, 128821, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(101, 36, 56, 9, 290601, 2615409, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(102, 36, 84, 8, 25597, 204776, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(103, 36, 97, 1, 87860, 87860, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(104, 37, 18, 9, 53809, 484281, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(105, 37, 1, 3, 260455, 781365, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(106, 37, 6, 8, 515842, 4126736, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(107, 38, 46, 6, 173958, 1043748, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(108, 38, 7, 3, 309035, 927105, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(109, 38, 51, 1, 485844, 485844, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(110, 38, 75, 6, 127428, 764568, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(111, 39, 48, 10, 335717, 3357170, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(112, 39, 9, 2, 390563, 781126, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(113, 39, 100, 9, 409529, 3685761, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(114, 40, 58, 1, 96850, 96850, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(115, 40, 44, 10, 60669, 606690, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(116, 40, 14, 8, 391350, 3130800, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(117, 40, 89, 4, 247576, 990304, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(118, 40, 19, 8, 439756, 3518048, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(119, 41, 3, 3, 228014, 684042, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(120, 41, 2, 4, 457108, 1828432, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(121, 42, 86, 3, 293187, 879561, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(122, 43, 78, 3, 209817, 629451, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(123, 44, 81, 9, 68351, 615159, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(124, 44, 11, 1, 550200, 550200, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(125, 45, 77, 10, 486618, 4866180, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(126, 45, 31, 2, 179463, 358926, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(127, 45, 21, 10, 67769, 677690, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(128, 46, 53, 7, 158873, 1112111, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(129, 47, 36, 10, 178919, 1789190, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(130, 47, 89, 5, 247576, 1237880, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(131, 47, 30, 10, 131174, 1311740, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(132, 47, 27, 3, 501944, 1505832, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(133, 47, 60, 8, 302670, 2421360, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(134, 48, 40, 8, 104082, 832656, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(135, 49, 29, 6, 317528, 1905168, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(136, 49, 44, 6, 60669, 364014, '2026-08-25 21:26:01', '2026-08-25 21:26:01'),
	(137, 50, 57, 7, 175785, 1230495, '2026-08-25 21:26:01', '2026-08-25 21:26:01');

-- Dumping structure for table pos_naysa4.jenis
CREATE TABLE IF NOT EXISTS `jenis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jenis_nama_jenis_unique` (`nama_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.jenis: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.jobs: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.job_batches: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_roles_table', 1),
	(2, '0001_01_01_000000_create_users_table', 1),
	(3, '0001_01_01_000001_create_cache_table', 1),
	(4, '0001_01_01_000002_create_jobs_table', 1),
	(5, '2006_08_19_052959_create_jenis_table', 1),
	(6, '2006_08_21_022030_add_jenis_id_to_produk_table', 1),
	(7, '2026_01_09_155242_create_produk_table', 1),
	(8, '2026_04_22_013115_create_penjualan_table', 1),
	(9, '2026_04_22_013646_create_item_penjualan_table', 1);

-- Dumping structure for table pos_naysa4.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table pos_naysa4.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total_pembayaran` int NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('OPEN','COMPLETED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `penjualan_user_id_foreign` (`user_id`),
  CONSTRAINT `penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.penjualan: ~0 rows (approximately)
INSERT INTO `penjualan` (`id`, `user_id`, `total_pembayaran`, `metode_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
	(1, 6, 5021202, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(2, 4, 3961133, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(3, 2, 6106530, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(4, 2, 107618, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(5, 5, 6226058, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(6, 5, 802778, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(7, 3, 1924874, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(8, 6, 3214576, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(9, 6, 3175280, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(10, 2, 2145608, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(11, 4, 2893962, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(12, 6, 3656864, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(13, 3, 4197890, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(14, 6, 10520667, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(15, 6, 2690072, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(16, 6, 4824006, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(17, 1, 908010, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(18, 5, 1146184, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(19, 6, 2200800, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(20, 1, 11577190, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(21, 4, 1532554, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(22, 5, 7041789, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(23, 1, 916806, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(24, 6, 4801384, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(25, 4, 4449147, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(26, 4, 11992538, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(27, 1, 15697235, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(28, 6, 4449504, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(29, 2, 5444837, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(30, 4, 7083218, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(31, 5, 1357155, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(32, 5, 2638870, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(33, 2, 3244578, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(34, 2, 1924657, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(35, 4, 879795, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(36, 2, 3036866, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(37, 6, 5392382, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(38, 1, 3221265, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(39, 2, 7824057, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(40, 6, 8342692, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(41, 6, 2512474, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(42, 5, 879561, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(43, 3, 629451, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(44, 6, 1165359, 'CASH', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(45, 6, 5902796, 'TRANSFER', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(46, 4, 1112111, 'QRIS', 'OPEN', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(47, 4, 8266002, 'CASH', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(48, 2, 832656, 'QRIS', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(49, 3, 2269182, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01'),
	(50, 6, 1230495, 'TRANSFER', 'COMPLETED', '2026-08-25 21:26:00', '2026-08-25 21:26:01');

-- Dumping structure for table pos_naysa4.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `jenis_id` bigint unsigned DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `stok` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produk_user_id_foreign` (`user_id`),
  KEY `produk_jenis_id_foreign` (`jenis_id`),
  KEY `produk_nama_index` (`nama`),
  CONSTRAINT `produk_jenis_id_foreign` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`) ON DELETE SET NULL,
  CONSTRAINT `produk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.produk: ~0 rows (approximately)
INSERT INTO `produk` (`id`, `user_id`, `jenis_id`, `foto`, `nama`, `harga_beli`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'produk/f77d0555-0c6b-3b2f-91a4-685a304d6d18.jpg', 'repellendus consequuntur recusandae', 230589, 260455, 456, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(2, 2, NULL, 'produk/e0664d7c-40ed-34a4-a6aa-f5908df5eb95.jpg', 'enim et hic', 429726, 457108, 435, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(3, 4, NULL, 'produk/5c4654c4-4156-373c-bdec-2ee183fe03b8.jpg', 'aut alias sunt', 144409, 228014, 32, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(4, 4, NULL, 'produk/d02f8284-a0d4-3005-a61d-4c45ce1a23ae.jpg', 'et inventore ducimus', 289216, 355016, 379, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(5, 2, NULL, 'produk/65669777-4a53-3483-9366-aee9e989e95a.jpg', 'occaecati architecto sit', 441789, 449608, 138, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(6, 1, NULL, 'produk/2ba58135-ad7f-32d6-9817-b2d647d6fa4a.jpg', 'rerum quia necessitatibus', 464162, 515842, 268, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(7, 5, NULL, 'produk/7bf159d2-9765-3e65-852b-044bbc3e95bd.jpg', 'harum aut nihil', 239627, 309035, 333, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(8, 1, NULL, 'produk/852ed2f2-1411-3609-bd97-ad48b03d3926.jpg', 'et aperiam dolor', 456203, 532241, 200, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(9, 1, NULL, 'produk/0396ca42-c4bd-3089-bb92-8e8c7ce3b605.jpg', 'quo consequatur non', 328692, 390563, 493, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(10, 4, NULL, 'produk/f60a7376-80d9-3366-8f0b-89c7f5ada94a.jpg', 'a non esse', 189024, 217268, 247, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(11, 5, NULL, 'produk/bb081955-d650-3ff4-af5a-fa160b5baa57.jpg', 'et corrupti corporis', 481345, 550200, 326, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(12, 5, NULL, 'produk/132aa841-7042-3fef-9474-9367610fb523.jpg', 'sint modi similique', 373359, 407324, 485, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(13, 4, NULL, 'produk/bc50f148-bb9f-306a-a8c7-9d15056620d8.jpg', 'voluptatibus magnam hic', 311234, 336259, 256, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(14, 4, NULL, 'produk/7cb5ec1e-ddea-3a04-970e-4f0abd7a7014.jpg', 'natus dolorem minima', 370901, 391350, 33, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(15, 2, NULL, 'produk/35e47699-1c01-34fe-bf0b-b6af756696f8.jpg', 'neque repellat quisquam', 20772, 58619, 372, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(16, 4, NULL, 'produk/3d854f41-c8da-3e74-844a-8c2cc9b02767.jpg', 'magni officiis natus', 430627, 451005, 114, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(17, 1, NULL, 'produk/32ad2e50-e555-3d22-a1e0-7babc1fc690b.jpg', 'consectetur quasi facere', 97671, 110908, 313, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(18, 2, NULL, 'produk/925c60df-c521-34b2-90fc-131c27123e6d.jpg', 'sunt porro odio', 45849, 53809, 336, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(19, 5, NULL, 'produk/11fe5f4a-d6ed-3416-8639-ec07233babba.jpg', 'aut earum ut', 423261, 439756, 291, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(20, 5, NULL, 'produk/6f5d1eb7-67d7-3726-846a-f24245c45321.jpg', 'amet sed et', 267215, 340970, 180, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(21, 5, NULL, 'produk/f2ada2d3-3491-30df-be00-8a432915efa4.jpg', 'et et voluptatem', 17258, 67769, 225, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(22, 5, NULL, 'produk/b344638f-ca51-32df-9e88-4cadae3f3c5d.jpg', 'et sit consequatur', 98951, 146804, 90, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(23, 5, NULL, 'produk/e071f620-202e-3d43-85ea-d46396d9dca3.jpg', 'beatae explicabo molestias', 58361, 90597, 222, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(24, 2, NULL, 'produk/bae1717b-6dad-3744-a7e7-fda6f94c1571.jpg', 'illum delectus quia', 292692, 358547, 300, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(25, 1, NULL, 'produk/faa9c338-5b0f-3a53-8ab6-ed0b8ddcfffe.jpg', 'in nisi consequatur', 49357, 98678, 73, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(26, 4, NULL, 'produk/842b378d-b00d-372d-9d64-dcdd39525d72.jpg', 'veritatis laborum atque', 254476, 269350, 416, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(27, 1, NULL, 'produk/6b72c48a-7b84-30c4-9d47-9d3867fa27ec.jpg', 'doloribus ut totam', 484187, 501944, 83, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(28, 1, NULL, 'produk/36819c65-c7ca-384d-9b78-9d8aa9ccf970.jpg', 'maiores ipsa doloribus', 30909, 92626, 430, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(29, 5, NULL, 'produk/7ea0543d-b43f-3658-9b9f-74447325b15b.jpg', 'quia nam placeat', 222362, 317528, 278, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(30, 5, NULL, 'produk/d4ab98bd-117b-3654-b8c3-6966370d13c7.jpg', 'eligendi nulla quisquam', 53311, 131174, 113, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(31, 4, NULL, 'produk/8d7029a6-aba3-30f5-98cb-3987b270cf96.jpg', 'magni sint rerum', 121017, 179463, 313, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(32, 5, NULL, 'produk/68d666b5-a61f-3447-961c-09578e2378e8.jpg', 'delectus explicabo eligendi', 206123, 244900, 457, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(33, 1, NULL, 'produk/0256d6b3-868a-389e-ab84-1f8f2d9d7c74.jpg', 'odit non eos', 29440, 74177, 75, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(34, 2, NULL, 'produk/85da3d84-7423-327f-ba04-1075e3970fd2.jpg', 'laboriosam dignissimos ipsum', 92708, 109427, 250, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(35, 4, NULL, 'produk/69cb06be-da93-3b68-9328-c6b435a70e1a.jpg', 'ut veritatis et', 204515, 222012, 296, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(36, 4, NULL, 'produk/b85d6542-5618-3ab5-be7d-cb4380d6d890.jpg', 'ducimus consequuntur magni', 83763, 178919, 27, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(37, 4, NULL, 'produk/debaed0b-8067-3a11-82d3-ba2e695b07d2.jpg', 'dolores quod qui', 129103, 222084, 385, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(38, 1, NULL, 'produk/575d0cd1-ed4f-3116-a018-ddabb033aeeb.jpg', 'id inventore aut', 424098, 431161, 295, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(39, 1, NULL, 'produk/3ad570be-fd95-35e2-8ff2-73f2155c28e4.jpg', 'ratione velit iure', 308299, 389348, 117, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(40, 1, NULL, 'produk/ef5a3955-200f-30b0-8b06-bfc5b652275b.jpg', 'quis iure quisquam', 15419, 104082, 476, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(41, 5, NULL, 'produk/a1d0c5be-70da-3a1c-949a-a322a12b9338.jpg', 'qui officia velit', 94443, 165850, 114, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(42, 2, NULL, 'produk/99ccdbe6-c68a-3f85-9067-cc36f6c1bdbc.jpg', 'sequi exercitationem mollitia', 495746, 586279, 304, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(43, 1, NULL, 'produk/39b9d559-e1d6-3b12-8d48-de692c0374b8.jpg', 'esse rerum inventore', 395915, 491139, 55, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(44, 5, NULL, 'produk/58734def-b830-3a7e-a4ec-2397f2d1ace8.jpg', 'itaque impedit et', 47629, 60669, 312, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(45, 4, NULL, 'produk/c4744b6f-d48a-3ad6-b2e9-66107d52de21.jpg', 'dolores blanditiis enim', 108251, 195804, 446, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(46, 4, NULL, 'produk/f90987fa-13c4-3cc4-9ffb-90b2e8ef2191.jpg', 'rem qui est', 140736, 173958, 288, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(47, 2, NULL, 'produk/5f8d941d-17c9-3427-ace3-ebc16df52624.jpg', 'maxime molestiae sit', 315790, 351060, 15, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(48, 2, NULL, 'produk/4851a410-bfec-3bf7-a995-a5826ddb605c.jpg', 'eum sed et', 321770, 335717, 425, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(49, 4, NULL, 'produk/fdc4e2c8-cf74-3c46-8a3e-43e9361e5b65.jpg', 'at voluptate voluptates', 209626, 232130, 233, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(50, 2, NULL, 'produk/e7772612-9261-3478-a699-689739667082.jpg', 'et totam officia', 300342, 320861, 97, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(51, 2, NULL, 'produk/af8fe016-6e2f-39bc-9af0-43a48238c9e8.jpg', 'id beatae autem', 477068, 485844, 157, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(52, 1, NULL, 'produk/1d6c417a-4d94-346e-baa0-453e9ef8c54a.jpg', 'ut eius modi', 411039, 499712, 18, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(53, 1, NULL, 'produk/5380d6e3-898e-3602-bd20-dc1343225493.jpg', 'enim molestiae corrupti', 83162, 158873, 261, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(54, 4, NULL, 'produk/94deb7f0-52a6-36aa-b156-ec36f8beb8cd.jpg', 'et et voluptatibus', 167340, 210659, 333, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(55, 1, NULL, 'produk/e64b699e-a8dd-31ec-8b22-9a5813d54a5d.jpg', 'et ut ducimus', 78874, 110410, 292, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(56, 4, NULL, 'produk/3b6c9239-9762-3983-bd52-65fac08d4f0c.jpg', 'ullam minima sapiente', 205612, 290601, 126, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(57, 5, NULL, 'produk/7486d5ea-a6f4-349e-aecb-d144a26dd72a.jpg', 'corporis voluptas vel', 124725, 175785, 150, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(58, 1, NULL, 'produk/19bf6c01-85fa-3a38-ae6c-4f561a1d5d5b.jpg', 'distinctio consectetur voluptatum', 29983, 96850, 236, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(59, 1, NULL, 'produk/7ec6ead7-aaca-3d85-8898-a71512795bff.jpg', 'ex quia et', 116050, 198327, 384, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(60, 2, NULL, 'produk/5bde6fa4-ba0e-37df-a2d2-5c9be4665460.jpg', 'qui minus ducimus', 294123, 302670, 178, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(61, 2, NULL, 'produk/223d60c3-07a2-3319-9544-dbbdef876553.jpg', 'corporis reprehenderit sequi', 324154, 415753, 455, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(62, 2, NULL, 'produk/9d7bc0db-d583-3af6-ac0c-9c7c2b2e008c.jpg', 'voluptas quia at', 362794, 459348, 42, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(63, 4, NULL, 'produk/4ee95c47-f7b2-3172-b45e-330c4d0cfef6.jpg', 'maxime voluptatem magni', 104281, 128735, 499, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(64, 1, NULL, 'produk/0dd0d2a9-32d7-3491-9ee8-29a8f1cf35aa.jpg', 'eum amet non', 104209, 150795, 349, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(65, 1, NULL, 'produk/17eee0dd-fa4f-3401-9786-ac156d21f7f8.jpg', 'velit sunt officia', 249747, 315025, 499, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(66, 1, NULL, 'produk/8ba3cdb3-e5f6-3e3f-ab4f-ccbe4ce1cbcd.jpg', 'rem dolores omnis', 48348, 129091, 108, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(67, 2, NULL, 'produk/af1d8fb9-d159-35ee-ba30-de5ea60dadc3.jpg', 'et sed enim', 165563, 211871, 435, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(68, 4, NULL, 'produk/b2317dca-f30b-3b93-b7e1-bd5ff26c06e5.jpg', 'quibusdam autem vel', 411022, 456584, 443, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(69, 4, NULL, 'produk/3491bedd-0c4c-3484-9bd4-d7a1bd7fbe86.jpg', 'necessitatibus ut quisquam', 386499, 398682, 209, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(70, 2, NULL, 'produk/e94ed2a0-2db6-3049-a0cc-24e75311bdce.jpg', 'qui animi exercitationem', 479026, 536753, 317, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(71, 4, NULL, 'produk/c74a3a51-37d6-3df4-85be-98f849cc031a.jpg', 'debitis at sed', 16873, 113596, 461, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(72, 1, NULL, 'produk/4a816844-edda-363c-872e-7393c19b5126.jpg', 'dolore quisquam quia', 235640, 307001, 79, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(73, 5, NULL, 'produk/a068e0c2-9450-3fea-a88f-87833d14d52e.jpg', 'repudiandae qui veritatis', 323581, 389340, 172, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(74, 1, NULL, 'produk/b7124e16-5c8f-3959-a9d9-fd3f9b0c18b6.jpg', 'voluptas est eos', 497899, 567374, 497, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(75, 4, NULL, 'produk/14f37b12-d1d6-34c3-a8c3-7ca5f6776366.jpg', 'laboriosam vel sed', 35603, 127428, 348, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(76, 2, NULL, 'produk/da21db2e-19f0-3b04-9129-77cff3e56682.jpg', 'fuga aut aut', 438536, 444108, 51, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(77, 2, NULL, 'produk/57a58987-f979-3aff-b0c5-3bb07fc311f0.jpg', 'reiciendis aut quo', 390222, 486618, 295, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(78, 4, NULL, 'produk/81d44257-3619-351e-9119-01b8a2d3f934.jpg', 'consectetur molestias eaque', 183262, 209817, 296, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(79, 2, NULL, 'produk/a24accb8-a148-3023-aedf-062154100641.jpg', 'cum unde quod', 444113, 456764, 90, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(80, 5, NULL, 'produk/ddcd05cf-d8dc-3279-8a3e-382417a8ffff.jpg', 'assumenda quam officia', 67542, 80803, 315, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(81, 5, NULL, 'produk/b1784834-08b6-3638-8ae7-c69099b87a72.jpg', 'dolorum est recusandae', 48711, 68351, 80, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(82, 4, NULL, 'produk/0c87c4dc-bc3f-3467-a88e-458b13e13e32.jpg', 'magni itaque iste', 71847, 125685, 445, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(83, 4, NULL, 'produk/6ce2957d-af76-3b13-8d17-8dea41d38c75.jpg', 'et voluptas enim', 471860, 478829, 407, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(84, 4, NULL, 'produk/097787ad-54bb-3f27-acfe-3d35cb3dc62c.jpg', 'ut est molestiae', 12503, 25597, 281, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(85, 5, NULL, 'produk/092470a2-4048-306a-858e-640b55cfb867.jpg', 'quisquam vero ab', 192148, 243741, 387, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(86, 4, NULL, 'produk/8fec7d06-de07-3cf3-9b1e-7f18d323f674.jpg', 'et dolorem voluptatem', 251660, 293187, 117, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(87, 4, NULL, 'produk/4bfbf278-217e-31ec-bd19-7bcc42d57bd0.jpg', 'laborum sed odio', 472532, 533689, 227, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(88, 5, NULL, 'produk/e69334a0-6ce5-3f76-a3fb-3f4bf8268420.jpg', 'aperiam aliquam qui', 270637, 286546, 179, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(89, 1, NULL, 'produk/69876c75-449c-33ad-a515-04fd2e01ee33.jpg', 'magni rem numquam', 165161, 247576, 245, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(90, 2, NULL, 'produk/1fe5bfcd-52ad-38d2-a5e4-b8e716f3c886.jpg', 'et tempore est', 272607, 339804, 87, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(91, 1, NULL, 'produk/e81951db-9d9e-3f3e-95b2-af319e412625.jpg', 'quia voluptatem quod', 166661, 206686, 170, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(92, 2, NULL, 'produk/b6a04e24-a3f9-363e-b725-7fd44c61d3db.jpg', 'magni et quaerat', 166475, 174562, 39, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(93, 4, NULL, 'produk/80130ce6-f75c-351d-8563-e8a6ac1a92af.jpg', 'saepe ad excepturi', 48108, 128821, 297, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(94, 2, NULL, 'produk/3cdb5325-6ffd-3c47-90c7-ca621b73fbb0.jpg', 'numquam eius a', 205402, 304288, 206, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(95, 4, NULL, 'produk/6bc28bed-0e05-3dc9-ae4c-5b0ed70a7c71.jpg', 'maxime at distinctio', 365972, 375134, 275, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(96, 1, NULL, 'produk/5cdd178b-c955-307d-a237-a701435c9665.jpg', 'molestiae aut voluptatibus', 344882, 374156, 110, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(97, 5, NULL, 'produk/4578ead7-39c2-3702-a3aa-b8b135def39b.jpg', 'magnam cum eligendi', 23642, 87860, 278, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(98, 2, NULL, 'produk/18740f72-bc83-350c-89cd-1603f949c32a.jpg', 'eos vitae quam', 260605, 267457, 135, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(99, 5, NULL, 'produk/35a8a581-3100-3252-b8bc-17d45e199332.jpg', 'beatae qui et', 474078, 510314, 100, '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(100, 2, NULL, 'produk/1b350fbd-5748-3c49-b2f6-cecab1adb61e.jpg', 'quae quisquam repudiandae', 356112, 409529, 207, '2026-08-25 21:26:00', '2026-08-25 21:26:00');

-- Dumping structure for table pos_naysa4.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.roles: ~0 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2026-08-25 21:25:59', '2026-08-25 21:25:59'),
	(2, 'kasir', '2026-08-25 21:25:59', '2026-08-25 21:25:59');

-- Dumping structure for table pos_naysa4.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.sessions: ~0 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('kWcfFVEnnOnUWAPQfEY3AhKKbIwkN6ZcmwSLEHhE', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUElKSlo4NERUSlRVS3huRG90NnBIbWpIMGw1M3l5anRKZGQxem1BNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1787718693);

-- Dumping structure for table pos_naysa4.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_name_email_index` (`name`,`email`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pos_naysa4.users: ~7 rows (approximately)
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'naysa', 'naysa@gmail.com', '2026-08-25 21:25:59', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', '3AxZAOeSEjIHM3f29u2hwkyTXToqLNeW2PbqIwdBkRXlJb1u1dbH5UhbK29f', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(2, 1, 'Dr. Lori Kozey Sr.', 'ankunding.magali@example.org', '2026-08-25 21:26:00', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', 'ftS6vanA6J', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(3, 2, 'Miss Anjali Hills DDS', 'qmertz@example.net', '2026-08-25 21:26:00', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', 'cqKSnfAcAYlm6N5lFDVrury6yGZkebJVTaNiqcxXxkZy1SYZDdtP2VMtn78K', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(4, 1, 'Dr. Clyde Haley MD', 'joan53@example.net', '2026-08-25 21:26:00', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', 'yRzdQxaV3V', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(5, 1, 'Fritz Ritchie Jr.', 'arden22@example.org', '2026-08-25 21:26:00', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', 'sxoJJc7iXE', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(6, 2, 'Davin Dooley', 'christiansen.damaris@example.com', '2026-08-25 21:26:00', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', '7TJKx7z5VPKPc7qCFnVoArkLiuQXcfGLyubXB9HCc10j4A1l5S6ttqsdzo9P', '2026-08-25 21:26:00', '2026-08-25 21:26:00'),
	(7, 2, 'Test User', 'test@example.com', '2026-08-25 21:26:01', '$2y$12$./8k6ezUVm0I82WrkKNNSO1FNJjMsluzTK3HVsmvsQbMfNyU0yKg.', '4Rfqhia4aA', '2026-08-25 21:26:01', '2026-08-25 21:26:01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
