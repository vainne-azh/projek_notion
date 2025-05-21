-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 02:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-13-130000', 'App\\Database\\Migrations\\Product', 'default', 'App', 1747141339, 1),
(2, '2025-05-13-130000', 'App\\Database\\Migrations\\User', 'default', 'App', 1747141339, 1),
(3, '2025-05-13-130001', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1747141339, 1),
(4, '2025-05-13-130038', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1747141339, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2025-05-13 13:07:28', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-05-13 13:07:28', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-05-13 13:07:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'farhunnisa22', 'galak50@prastuti.go.id', '$2y$10$x5hlVaKkdFB310Pe6Ii7YOEuz6SqnSwaXF4YuAfBJHOnlqQsNJ68K', 'guest', '2025-05-13 13:08:24', NULL),
(2, 'jamal.wahyudin', 'siti73@gmail.com', '$2y$10$Ak5oogiE//7yYSNsfIgO2OHj2geouWBhOlNXIFJjks0GeBXI6hsZu', 'admin', '2025-05-13 13:08:24', NULL),
(3, 'ojanuar', 'pardi70@prayoga.id', '$2y$10$dPvl3y2D9JhVU58z1O3T5Ok6ZwS6hCL4gyCBA90/uWJyZ4tNy2Eji', 'admin', '2025-05-13 13:08:24', NULL),
(4, 'setya.latupono', 'agustina.ade@agustina.web.id', '$2y$10$DiPBkQPDzIA00QhvsWBOi.Px9ouP4S3GdXuKWaVBa90L6qlYcDwmK', 'admin', '2025-05-13 13:08:25', NULL),
(5, 'usamah.luhung', 'kayla32@prakasa.com', '$2y$10$wHAJMPoAjfuG74roHiz.ZOt/tKWgVOhWNiSXLxRKEhZVi5SMi938O', 'guest', '2025-05-13 13:08:25', NULL),
(6, 'usyi29', 'clara91@gmail.com', '$2y$10$6xKMmxXK/McG8lnpD0M5uejht183b7a87E4k8FHUlZLOfWCqtHW8i', 'admin', '2025-05-13 13:08:25', NULL),
(7, 'bakiman.purwanti', 'gada.namaga@ramadan.net', '$2y$10$j/AZROIjRh02g6jEWa5SXeL.SyW5rK7y3VayVRcaSTjXwBT.X.kDu', 'admin', '2025-05-13 13:08:25', NULL),
(8, 'najwa14', 'pusada@yahoo.com', '$2y$10$zn6rWcrs/i7m.DGEUc1LYuKBTfX6wddtlVPyJUBWBmYxT0UkXUEfC', 'admin', '2025-05-13 13:08:25', NULL),
(9, 'bakianto.utama', 'wibisono.nilam@saptono.mil.id', '$2y$10$VRjVeFzp9u54/ZCUtAa9veJ8GNx7jwqYlFd2pOUkBEhyigzltxl52', 'guest', '2025-05-13 13:08:25', NULL),
(10, 'yusuf.salahudin', 'cengkir.tampubolon@padmasari.info', '$2y$10$UcXkRuc.G7bWtm/IPG1HNe74F38DL.5Ku.GnMhsONBRZpymDdhtcm', 'guest', '2025-05-13 13:08:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
