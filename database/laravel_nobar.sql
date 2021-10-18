-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2021 at 04:29 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_nobar`
--

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_pertandingan` int(11) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iklan_member`
--

CREATE TABLE `iklan_member` (
  `id` int(11) NOT NULL,
  `id_pertandingan` int(11) DEFAULT NULL,
  `id_iklan` int(11) DEFAULT NULL,
  `id_member` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nomor_mulai` int(11) DEFAULT NULL,
  `nomor_akhir` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `nomor_mulai`, `nomor_akhir`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'VIP', 1, 50, 1, '2021-10-13 16:11:42', '2021-10-13 16:12:13', NULL),
(2, 'BARAT', 51, 300, 1, '2021-10-13 16:11:57', '2021-10-14 11:54:44', NULL),
(3, 'TIMUR', 301, 400, 1, '2021-10-14 11:55:05', NULL, NULL),
(4, 'SELATAN', 401, 500, 1, '2021-10-14 11:55:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `date_created`) VALUES
(93, 28, 'distribusi2021092912045961534b3bbc87f', 6, '2021-09-29 00:04:59'),
(94, 31, 'distribusi2021092912045961534b3bbcac6', 6, '2021-09-29 00:04:59'),
(95, 33, 'distribusi2021092912045961534b3bbcc3a', 6, '2021-09-29 00:04:59'),
(96, 34, 'distribusi2021092912045961534b3bbcdb4', 6, '2021-09-29 00:04:59'),
(97, 37, 'distribusi2021092912045961534b3bbcfa6', 6, '2021-09-29 00:04:59'),
(98, 38, 'distribusi2021092912045961534b3bbd0fc', 6, '2021-09-29 00:04:59'),
(99, 39, 'distribusi2021092912045961534b3bbd214', 6, '2021-09-29 00:04:59'),
(100, 40, 'distribusi2021092912045961534b3bbd321', 6, '2021-09-29 00:04:59'),
(101, 41, 'distribusi2021092912045961534b3bbd4be', 6, '2021-09-29 00:04:59'),
(102, 42, 'distribusi2021092912045961534b3bbd686', 6, '2021-09-29 00:04:59'),
(103, 43, 'distribusi2021092912045961534b3bbd7db', 6, '2021-09-29 00:04:59'),
(104, 44, 'distribusi2021092912045961534b3bbd8f4', 6, '2021-09-29 00:04:59'),
(105, 45, 'distribusi2021092912045961534b3bbd9ef', 6, '2021-09-29 00:04:59'),
(106, 46, 'distribusi2021092912045961534b3bbdb03', 6, '2021-09-29 00:04:59'),
(107, 47, 'distribusi2021092912045961534b3bbdc2f', 6, '2021-09-29 00:04:59'),
(108, 48, 'distribusi2021092912045961534b3bbdd3c', 6, '2021-09-29 00:04:59'),
(109, 49, 'distribusi2021092912045961534b3bbde45', 6, '2021-09-29 00:04:59'),
(110, 50, 'distribusi2021092912045961534b3bbdf5d', 6, '2021-09-29 00:04:59'),
(111, 51, 'distribusi2021092912045961534b3bbe059', 6, '2021-09-29 00:04:59'),
(112, 52, 'distribusi2021092912045961534b3bbe14d', 6, '2021-09-29 00:04:59'),
(113, 53, 'distribusi2021092912045961534b3bbe23f', 6, '2021-09-29 00:04:59'),
(114, 55, 'distribusi2021092912045961534b3bbe332', 6, '2021-09-29 00:04:59'),
(115, 56, 'distribusi2021100109174561566fc903828', 6, '2021-10-01 09:17:45'),
(116, 57, 'distribusi20211001092210615670d266d0b', 6, '2021-10-01 09:22:10'),
(117, 58, 'distribusi2021100110232561567f2d3733e', 6, '2021-10-01 10:23:25'),
(118, 59, 'distribusi202110011032106156813a81447', 6, '2021-10-01 10:32:10'),
(119, 60, 'distribusi202110010259056156bfc91b17b', 6, '2021-10-01 14:59:05'),
(120, 61, 'distribusi20211007063401615edb29771fd', 6, '2021-10-07 18:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id` int(11) NOT NULL,
  `id_pertandingan` int(11) DEFAULT NULL,
  `id_member` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `nomer_kursi` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `menang` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id`, `id_pertandingan`, `id_member`, `id_kategori`, `nomer_kursi`, `status`, `menang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 2, 3, 1, 1, 1, 2, '2021-10-16 00:30:40', NULL, NULL),
(16, 1, 1, 2, 85, 3, 1, '2021-10-16 00:32:26', '2021-10-16 10:24:52', '2021-10-16 10:24:52'),
(17, 2, 2, 1, 3, 1, 3, '2021-10-16 00:36:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  `kata_sandi` varchar(100) DEFAULT NULL,
  `no_whatsapp` varchar(20) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `email`, `token`, `kata_sandi`, `no_whatsapp`, `photo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'budi', 'budi@gmail.com', 'nobar202110141147096167b64df12c6', '$2y$10$7XCVzUlzjXOTMq0s90XfMO6bR7Tb2xZB5LgxL1Lw6o2KqoeAi8Vjq', '081315253', '54ac51fa32ebc8513f34eceb6566ded0.png', 1, '2021-10-13 11:46:56', NULL, NULL),
(2, 'Isep Lutpi', 'iseplutpi@gmail.com', 'nobar202110141147096167b114df12c6', '$2y$10$Yi9dVPPuVZaEXMm7lOjUI.o86xoeeQ2BB/IZgDOCIFy0HK0.vQ9.G', '085798132505', NULL, 1, '2021-10-14 11:47:09', NULL, NULL),
(3, 'Eska Yulinda', 'eskayulindarahayu@gmail.com', 'nobar202110140332106167eb0adab70', '$2y$10$Dt/2.KzQ05Q63Ia3AV6e6eM5PqBg6mp8HOzh6DG6MKAb5HuBXOIWe', '08579813250', 'b4cdac5ca35bcc9d4b6c70ef78120d18.jpg', 1, '2021-10-14 03:32:10', '2021-10-14 04:36:34', NULL),
(4, 'Eska Yulinda', 'eska@gmail.com', 'nobar202110150730076169744f9bb4b', '$2y$10$412UFByaT3SKp/l5ZKDiEOKPNv5xReBvgxhEJ0OKBd/JeSFKD3DoO', '085798132505', NULL, 1, '2021-10-15 07:30:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

CREATE TABLE `pemain` (
  `id` int(11) NOT NULL,
  `id_team` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`id`, `id_team`, `nama`, `photo`, `id_posisi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'M. Natshir', NULL, 1, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(4, 1, 'Aqil Savik', NULL, 1, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(5, 1, 'Made Wirawan', NULL, 1, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(6, 1, 'Teja Paku Alam', NULL, 1, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(7, 1, 'Henhen Herdiana', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(8, 1, 'Indra Mustafa', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(9, 1, 'Supardi Natsir', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(10, 1, 'Victor Igbonefo', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(11, 1, 'Ardi Idrus', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(12, 1, 'Mario Jardel', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(13, 1, 'Zalnando', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(14, 1, 'Achmad Jufrianto', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(15, 1, 'Nick Kuipers', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(16, 1, 'Kakang', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(17, 1, 'Bayu Fiqri', NULL, 2, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(18, 1, 'Dedi Kusnandar', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(19, 1, 'Febri Hariyadi', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(20, 1, 'Agung Mulyadi', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(21, 1, 'Puja Abdillah', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(22, 1, 'Beckham Putra Nugraha', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(23, 1, 'Abdul Aziz', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(24, 1, 'Erwin', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(25, 1, 'Esteban Vizcarra', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(26, 1, 'Ardi Maulana', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(27, 1, 'Marc Klok', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(28, 1, 'Mohammed Rashid', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(29, 1, 'Ferdiansyah', NULL, 3, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(30, 1, 'Frets Butuan', NULL, 4, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(31, 1, 'Ravil', NULL, 4, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(32, 1, 'Wander Luiz', NULL, 4, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(33, 1, 'Geofrrey Castillion', NULL, 4, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45'),
(34, 1, 'Ezra Walian', NULL, 4, 1, '2021-10-15 08:44:45', '2021-10-15 08:44:45', '2021-10-15 08:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `pertandingan`
--

CREATE TABLE `pertandingan` (
  `id` int(11) NOT NULL,
  `id_team_1` int(11) DEFAULT NULL,
  `id_team_2` int(11) DEFAULT NULL,
  `id_stadion` int(11) DEFAULT NULL,
  `tanggal_main` date DEFAULT NULL,
  `jam_main` time DEFAULT NULL,
  `hasil_team_1` int(11) DEFAULT NULL,
  `hasil_team_2` int(11) DEFAULT NULL,
  `man_of_the_match` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Akan Datang | 1 Tempilkan | 2 Berlangsung | 3 Selesai | 4 Nonaktif',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertandingan`
--

INSERT INTO `pertandingan` (`id`, `id_team_1`, `id_team_2`, `id_stadion`, `tanggal_main`, `jam_main`, `hasil_team_1`, `hasil_team_2`, `man_of_the_match`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2, '2021-10-16', '14:00:00', 0, 0, 0, 5, '2021-10-13 12:59:32', '2021-10-15 13:34:27', '2021-10-15 13:34:27'),
(2, 2, 1, 2, '2021-10-16', '20:45:00', 0, 3, 3, 3, '2021-10-14 11:50:39', '2021-10-16 00:38:01', NULL),
(3, 1, 4, 2, '2021-10-22', '18:15:00', 0, 0, 0, 2, '2021-10-14 11:52:36', '2021-10-16 10:16:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id`, `nama`, `keterangan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kiper', NULL, 1, '2021-10-15 08:46:03', '2021-10-15 08:46:03', '2021-10-15 08:46:03'),
(2, 'Pemain Belakang', NULL, 1, '2021-10-15 08:46:03', '2021-10-15 08:46:03', '2021-10-15 08:46:03'),
(3, 'Gelandang', NULL, 1, '2021-10-15 08:46:03', '2021-10-15 08:46:03', '2021-10-15 08:46:03'),
(4, 'Penyerang', NULL, 1, '2021-10-15 08:46:03', '2021-10-15 08:46:03', '2021-10-15 08:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `stadion`
--

CREATE TABLE `stadion` (
  `id` int(11) NOT NULL,
  `id_team` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stadion`
--

INSERT INTO `stadion` (`id`, `id_team`, `nama`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '122', 3, '2021-10-12 21:36:17', '2021-10-12 21:37:19', '2021-10-12 21:37:19'),
(2, 1, 'Gelora Bandung Lautan Api', 1, '2021-10-12 21:37:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `nama`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PERSIB BANDUNG', 'aa0e18fe8db19654a8ad6770067cefe1.png', 1, '2021-10-12 21:08:49', '2021-10-14 11:49:03', NULL),
(2, 'BHAYANGKARA FC', '0cd3af2e59843492604e0a95894db053.png', 1, '2021-10-12 21:09:28', '2021-10-14 11:49:32', NULL),
(3, 'a', '257136bbd41bbff8be2bd464adc280d8.png', 3, '2021-10-12 21:35:01', '2021-10-12 21:35:28', '2021-10-12 21:35:28'),
(4, ' PSS SLEMAN', '00f490c9bd532731fbb55de642c89923.png', 1, '2021-10-14 11:49:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tebak_mot`
--

CREATE TABLE `tebak_mot` (
  `id` int(11) NOT NULL,
  `id_pertandingan` int(11) NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `id_pemain` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `menang` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tebak_mot`
--

INSERT INTO `tebak_mot` (`id`, `id_pertandingan`, `id_member`, `id_pemain`, `status`, `menang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 2, 3, 3, 1, 1, '2021-10-16 00:30:31', '2021-10-16 12:31:00', NULL),
(9, 2, 1, 3, 1, 2, '2021-10-16 00:32:33', '2021-10-16 12:32:39', NULL),
(10, 2, 2, 4, 1, NULL, '2021-10-16 00:36:46', '2021-10-16 12:36:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tebak_score`
--

CREATE TABLE `tebak_score` (
  `id` int(11) NOT NULL,
  `id_pertandingan` int(11) DEFAULT NULL,
  `id_member` int(11) DEFAULT NULL,
  `score_team_1` int(11) DEFAULT NULL,
  `score_team_2` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `menang` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tebak_score`
--

INSERT INTO `tebak_score` (`id`, `id_pertandingan`, `id_member`, `score_team_1`, `score_team_2`, `status`, `menang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 2, 3, 0, 3, 1, 1, '2021-10-16 00:30:44', '2021-10-16 12:30:53', NULL),
(12, 2, 1, 0, 3, 1, 2, '2021-10-16 00:32:43', '2021-10-16 12:32:56', NULL),
(13, 2, 2, 0, 3, 1, 3, '2021-10-16 00:36:20', '2021-10-16 12:36:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iklan_member`
--
ALTER TABLE `iklan_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertandingan`
--
ALTER TABLE `pertandingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadion`
--
ALTER TABLE `stadion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tebak_mot`
--
ALTER TABLE `tebak_mot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tebak_score`
--
ALTER TABLE `tebak_score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iklan_member`
--
ALTER TABLE `iklan_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `kursi`
--
ALTER TABLE `kursi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pertandingan`
--
ALTER TABLE `pertandingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stadion`
--
ALTER TABLE `stadion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tebak_mot`
--
ALTER TABLE `tebak_mot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tebak_score`
--
ALTER TABLE `tebak_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `keys_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keys_ibfk_2` FOREIGN KEY (`level`) REFERENCES `level` (`lev_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
