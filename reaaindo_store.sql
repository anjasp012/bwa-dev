-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 03:04 AM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reaaindo_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `page_body` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `page_title`, `meta_keyword`, `meta_description`, `page_body`, `picture`, `slug`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'REAA INDONESIA by REAA-INDONESIA.ID', 'reaa indonesia,reaa-indonesia.id,reaa-indonesia.com, reaa, situs jual beli pakaian', 'reaa indonesia,reaa-indonesia.id,reaa-indonesia.com, reaa, situs jual beli pakaian', '<p><strong>Reaa-indonesia.id</strong>&nbsp;adalah salah satu situs jual beli online di Indonesia yang memudahkan penjual dan pembeli dalam melakukan transaksi jual-beli secara online.</p>\r\n\r\n<p><strong>Reaa-indonesia.id&nbsp;</strong>juga memiliki banyak produk menarik yang tentu saja berkaitan dengan berbagai produk seperti produk rumah tangga, kendaraan, property dan lainnya.</p>\r\n\r\n<p><strong>Reaa-indonesia.id&nbsp;</strong>juga menyajikan berita yang berkaitan dengan produk-produk yang ada di situs reaa-indonesia.com</p>\r\n\r\n<p><strong>Reaa-indonesia.id&nbsp;</strong>merupakan bagian dari situs <a href=\"http://setuptogo.com\" target=\"_blank\">www.setuptogo.com</a> yang saling berkaitan satu sama lain.</p>', 'assets/about/HuH0VL3ENm1dtZiyVAmbBUCjLozhPIXopZ1ywb7r.png', 'reaa-indonesia-by-reaa-indonesiaid', '1', '2023-05-27 07:41:14', '2023-05-28 23:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `thumbnail`, `title`, `slug`, `body`, `created_at`, `updated_at`, `meta_keyword`, `meta_description`) VALUES
(11, 'assets/article/JJLXvBJ8cp1MkHmUdTOFG7lnZky8T7DeaRgtZSiC.png', 'Design Bagus dong', 'design-bagus', '<p>Menarik</p>', '2023-05-10 08:26:14', '2023-05-13 15:45:23', '', ''),
(15, 'assets/article/aAGHglxoVwuNfCLTBRkLL8x1OEyBnGG2qYzuP8pF.jpg', 'Memilih bahan kaos untuk dipakai sehari hari', 'memilih-bahan-kaos-untuk-dipakai-sehari-hari', '<p><strong>Memilih bahan kaos untuk dipakai sehari hari</strong>. Untuk kamu yang suka memakai kaos, berikut yang wajib kamu ketahui dalam memilih kaos untuk dipakai setiap hari.</p>\r\n\r\n<ol>\r\n	<li><strong>Katun</strong> : Katun adalah bahan yang paling umum digunakan untuk membuat kaos. Ini adalah serat alami yang lembut, ringan, dan nyaman di kulit. Selain itu, katun juga cukup mudah dirawat dan memiliki daya tahan yang baik.</li>\r\n	<li><strong>Rayon</strong>: Rayon adalah bahan buatan manusia yang terbuat dari serat kayu. Ini sangat lembut dan ringan, sehingga nyaman untuk dipakai dalam cuaca panas. Namun, rayon juga bisa mudah kusut dan perlu dijaga dengan hati-hati saat dicuci.</li>\r\n	<li><strong>Jersey</strong>: Jersey adalah bahan kaos yang terbuat dari campuran katun, wol, atau sintetis. Ini adalah bahan yang lembut, elastis, dan cukup kuat, sehingga nyaman dan tahan lama.</li>\r\n	<li><strong>Modal</strong>: Modal adalah bahan kaos buatan manusia yang terbuat dari serat kayu. Ini sangat lembut, nyaman, dan memiliki daya tahan yang baik. Namun, modal bisa sulit dijaga dan rentan terhadap kerutan.</li>\r\n	<li><strong>Microfiber</strong>: Microfiber adalah bahan kaos yang terbuat dari serat sintetis seperti polyester atau nylon. Ini sangat lembut dan nyaman di kulit, serta mudah dirawat dan tahan lama. Namun, microfiber bisa memanaskan tubuh saat cuaca panas.</li>\r\n</ol>\r\n\r\n<p>Dalam memilih bahan kaos yang lembut, Anda bisa mencoba meraba-raba atau menyentuh bahan secara langsung untuk mengetahui kualitas dan kelembutan bahan. Selain itu, Anda juga bisa memperhatikan instruksi perawatan pada label produk, dan memilih bahan yang sesuai dengan kebutuhan dan preferensi pribadi.</p>\r\n\r\n<p>Kesimpulan : Untuk memilih kaos dengan bahan yang lembut sudah dapat dipastikan kamu lebih baik memilih kaos produk REAA-Indonesia, karena kualitasnya memang 100% bahan katun yang lembut dan nyaman saat dipakai, menyerap keringat dan tidak berbau saat dipakai.</p>', '2023-05-12 04:15:58', '2023-05-12 04:15:58', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`, `size`) VALUES
(20, 5, 2, '2023-05-27 22:38:07', '2023-05-27 22:38:07', 'm'),
(21, 11, 6, '2023-06-19 21:42:47', '2023-06-19 21:42:47', 'xl');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'KAOS COMBAD 24S', 'assets/category/wlPvRcIHWSXJEfV2wNhXbZ25brdK3OEt9rjnu3YQ.png', 'kaos-combad-24s', NULL, '2023-05-10 07:51:04', '2023-05-10 07:51:04', NULL),
(2, 'KAOS COMBAD 30S', 'assets/category/e3abyWthnusjh45KxDUCZv9EURF3eBIXfrZpUJRt.png', 'kaos-combad-30s', NULL, '2023-05-10 07:51:38', '2023-05-10 08:04:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jam_operasional` text NOT NULL,
  `google_map` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `alamat`, `no_telp`, `email`, `jam_operasional`, `google_map`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', '+62813-9999-6542', 'info@reaa-indonesia.com', '24 Jam', '1000000', '2023-05-27 07:51:22', '2023-05-27 07:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` char(7) NOT NULL,
  `regency_id` char(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_05_02_140432_create_provinces_tables', 1),
(5, '2017_05_02_140444_create_regencies_tables', 1),
(6, '2017_05_02_142019_create_districts_tables', 1),
(7, '2017_05_02_143454_create_villages_tables', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_04_05_084608_create_categories_table', 1),
(11, '2023_04_05_084835_create_products_table', 1),
(12, '2023_04_05_085043_create_product_galleries_table', 1),
(13, '2023_04_05_085213_create_carts_table', 1),
(14, '2023_04_05_085837_create_transactions_table', 1),
(15, '2023_04_05_085850_create_transaction_details_table', 1),
(16, '2023_04_05_090755_delete_resi_from_transactions_table', 1),
(17, '2023_04_05_091220_add_resi_and_shipping_status_to_transaction_details_table', 1),
(18, '2023_04_05_091615_add_code_to_transactions_table', 1),
(19, '2023_04_05_091621_add_code_to_transaction_details_table', 1),
(20, '2023_04_05_091917_add_slug_to_products_table', 1),
(21, '2023_04_05_092135_add_roles_to_users_table', 1),
(22, '2023_04_05_154620_change_nullable_from_users_table', 1),
(23, '2023_05_05_113629_create_articles_table', 1),
(24, '2023_05_11_070406_create_testimonies_table', 2),
(25, '2023_05_14_221405_add_discon_price_to_products_table', 3),
(26, '2023_05_17_075549_add_else_to_products_table', 4),
(27, '2023_05_17_083921_add_size_to_carts_table', 4),
(28, '2023_05_17_093240_add_size_to_transaction_details_table', 4),
(29, '2023_05_20_040416_add_meta_to_articles_table', 5),
(30, '2023_05_20_041025_create_sliders_table', 5),
(31, '2023_05_25_020123_create_popups_table', 5),
(32, '2023_05_25_020132_create_contacts_table', 5),
(33, '2023_05_25_020140_create_promos_table', 5),
(34, '2023_05_25_020846_create_abouts_table', 5),
(35, '2023_05_25_021015_create_misi_visis_table', 5),
(36, '2023_06_11_124346_add_parent_id_to_categories_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `misi_visis`
--

CREATE TABLE `misi_visis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misi_visis`
--

INSERT INTO `misi_visis` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Visi Reaa Indonesia</strong></p>\r\n\r\n<p>Menjadi pasar bisnis jual beli online di Indonesia</p>\r\n\r\n<p><strong>Misi Reaa Indonesia</strong></p>\r\n\r\n<p>Memberikan kemudahan kepada penjual dan pembeli dalam melakukan transaksi jual beli</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2023-05-27 07:48:27', '2023-05-27 07:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `discon_price` double DEFAULT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `size_s` tinyint(1) DEFAULT NULL,
  `size_m` tinyint(1) DEFAULT NULL,
  `size_l` tinyint(1) DEFAULT NULL,
  `size_xl` tinyint(1) DEFAULT NULL,
  `size_xxl` tinyint(1) DEFAULT NULL,
  `link_youtube` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `user_id`, `category_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`, `discon_price`, `meta_keyword`, `meta_description`, `size_s`, `size_m`, `size_l`, `size_xl`, `size_xxl`, `link_youtube`) VALUES
(1, 'Kaos Combad 24S ART-WOLF-001', 3, 1, 125000, '<p>- Bahan Kain Combad 24S</p>\r\n\r\n<p>- Nyaman dipakai, lebut dan tidak panas</p>\r\n\r\n<p>- Sablon DTF</p>\r\n\r\n<p>&nbsp;</p>', '2023-05-13 17:04:51', '2023-05-10 08:06:43', '2023-05-13 17:04:51', 'kaos-combad-24s-art-wolf-001', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Kaos Distro by Reaa-indonesia RA-01', 3, 1, 175000, '<p><strong>Kaos Distro by Reaa-indonesia RA-01</strong></p>\r\n\r\n<p>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</p>\r\n\r\n<p>Kaos DESIGN UNIK Original Design Tanpa Duplikasi + Bonus Sticker</p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p><strong>Bahan : Katun Combed 24s</strong></p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p><strong>Sablon : Plastisol</strong></p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya mantap banget</p>', NULL, '2023-05-13 08:24:01', '2023-05-28 00:32:12', 'kaos-distro-by-reaa-indonesia-ra-01', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 1, 1, 1, 1, 1, 'www.youtube.com'),
(7, 'Kaos Distro Reaa-indonesia RA-01', 3, 1, 175000, '<p><strong>Kaos Distro Reaa-indonesia.id RA-01</strong></p>\r\n\r\n<p>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</p>\r\n\r\n<p><strong>Kaos DESIGN UNIK Original Design Tanpa Ngebosenin + Bonus Sticker</strong></p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p><strong>Bahan : Katun Combed 24s</strong></p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p><strong>Sablon : Plastisol</strong></p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya mantap banget</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Minat WA : 0813-99996542</strong></p>', NULL, '2023-05-13 16:42:15', '2023-05-28 00:33:30', 'kaos-distro-reaa-indonesia-ra-01', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 1, 1, 1, 1, 1, 'www.youtube.com'),
(8, 'Holly Ayers', 3, 2, 253, '<p>aos Distro Harga Murah Art 01- Reaa-indonesia.id</p>\r\n\r\n<p>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</p>\r\n\r\n<p>Kaos DESIGN UNIK Original Design Tanpa Duplikasi + Bonus Sticker</p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p>Bahan : Katun Combed 24s</p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p>Sablon : Plastisol</p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya&nbsp;mantap&nbsp;banget</p>', '2023-05-13 16:58:02', '2023-05-13 16:54:57', '2023-05-13 16:58:02', 'holly-ayers', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'KAOS DISTRO COMBAD 24S - REAA BH01', 3, 1, 175000, '<p><strong>KAOS DISTRO COMBAD 24S - REAA BH01</strong></p>\r\n\r\n<p><strong>Buat yang paham kualitas:</strong><br />\r\n- Bahan 100% original cotton combed 24s<br />\r\n- Warna lebih dalam dan tajam<br />\r\n- Pola reguler fit unisex&nbsp;<br />\r\n- Handfeel supersoft &amp; heavy (180-190 gr/m2)</p>\r\n\r\n<p><strong>Jahitan</strong><br />\r\n- RIP jahit dualstick dan rata<br />\r\n- BIS jahit doublestick<br />\r\n- Overdeck double nail<br />\r\n- Pundak jahit double rantai<br />\r\n- Obras jahit dan rata</p>\r\n\r\n<p><strong>Sablon : Plastisol</strong></p>\r\n\r\n<p><strong>Minat WA : 0813-9999-6542</strong></p>', NULL, '2023-05-13 16:58:55', '2023-05-28 00:32:34', 'kaos-distro-combad-24s-reaa-bh01', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia', 1, 1, 1, 1, 1, 'www.youtube.com'),
(11, 'Kaos Combad 24S Reea-Indonesia ART-WOLF-001', 3, 1, 175000, '<p><strong>Kaos Combad 24S ART-WOLF-001&nbsp;</strong></p>\r\n\r\n<p>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</p>\r\n\r\n<p>Kaos DESIGN UNIK Original Design Tanpa Duplikasi + Bonus Sticker<br />\r\nGambar Kaos langsung dengan kaos asli</p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p>Bahan : Katun Combed 24s</p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p>Sablon : Plastisol</p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya mantap banget</p>', NULL, '2023-05-13 17:06:23', '2023-05-28 00:32:49', 'kaos-combad-24s-reea-indonesia-art-wolf-001', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, gambar serigala', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, gambar serigala', 1, 1, 1, 1, 1, 'www.youtube.com'),
(12, 'Kaos Distro Art - Reaa AM01', 3, 1, 175000, '<p><strong>Kaos Distro Art - Reaa AM01- Reaa Indonesia</strong></p>\r\n\r\n<p><strong>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</strong></p>\r\n\r\n<p>Kaos DESIGN UNIK Original Design Tanpa Ngebosenin+ Bonus Sticker<br />\r\nGambar Kaos langsung dengan kaos asli</p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p><strong>Bahan : Katun Combed 24s</strong></p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p><strong>Sablon : Plastisol</strong></p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya mantap banget</p>\r\n\r\n<p>Minat : Islahkan Add to Chart atau WA 0813-9999-6542</p>', NULL, '2023-05-13 17:20:19', '2023-05-28 00:32:59', 'kaos-distro-art-reaa-am01', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, gambar tengkorak', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, gambar tengkorak', 1, 1, 1, 1, 1, 'www.youtube.com'),
(13, 'KAOS DISTRO COMBAD 24S - REAA BH02', 3, 1, 125000, '<p><strong>KAOS DISTRO COMBAD 24S - REAA BH02</strong></p>\r\n\r\n<p><strong>Buat yang paham kualitas:</strong><br />\r\n- Bahan 100% original cotton combed 24s<br />\r\n- Warna lebih dalam dan tajam<br />\r\n- Pola reguler fit unisex&nbsp;<br />\r\n- Handfeel supersoft &amp; heavy (180-190 gr/m2)</p>\r\n\r\n<p><strong>Jahitan</strong><br />\r\n- RIP jahit dualstick dan rata<br />\r\n- BIS jahit doublestick<br />\r\n- Overdeck double nail<br />\r\n- Pundak jahit double rantai<br />\r\n- Obras jahit dan rata</p>\r\n\r\n<p><strong>Sablon : Plastisol</strong></p>\r\n\r\n<p><strong>Minat WA : 0813-9999-6542 atau bisa langsung Order di wesite kami</strong></p>', '2023-05-13 17:38:58', '2023-05-13 17:28:11', '2023-05-13 17:38:58', 'kaos-distro-combad-24s-reaa-bh02', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Karina Stokes', 3, 1, 488, '<p>aaksadkaslk kfsaofk oaksfsaf</p>', '2023-05-13 17:50:57', '2023-05-13 17:42:46', '2023-05-13 17:50:57', 'karina-stokes', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'KAOS DISTRO COMBAD 24S - REAA BH03', 3, 1, 175000, '<p><strong>KAOS DISTRO COMBAD 24S - REAA BH03</strong><br />\r\nJudul : KAUS PRIA DISTRO CASUAL 501 KATUN COMBED 24$ LENGAN PENDEK MADE IN FHILIPIN<br />\r\nKaos Distro Harga Murah Art 01- Reaa-indonesia.id</p>\r\n\r\n<p>Kaos ORIGINAL hanya di www.reaa-indonesia.id !!!</p>\r\n\r\n<p>Kaos DESIGN UNIK Original Design Tanpa Duplikasi + Bonus Sticker<br />\r\nGambar Kaos langsung dengan kaos asli</p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p>Bahan : Katun Combed 24s</p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p>Sablon : Plastisol</p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>#Asli Bahannya adem banget</p>\r\n\r\n<p>#Asli Nyaman banget dipakai</p>\r\n\r\n<p>#Asli Cocok Untuk Semua Umur</p>\r\n\r\n<p>#Asli Jahitan Rapi Banget</p>\r\n\r\n<p>#Asli Dijamin Tidak akan Mengecewakan</p>\r\n\r\n<p>#Asli Fashionable banget</p>\r\n\r\n<p>#Asli High Quality</p>\r\n\r\n<p>#Asli barangnya mantap banget</p>', NULL, '2023-05-13 17:47:23', '2023-05-28 00:33:12', 'kaos-distro-combad-24s-reaa-bh03', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, Kata-kata bijak', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, Kata-kata bijak', 1, 1, 1, 1, 1, 'www.youtube.com'),
(20, 'Kaos Kombad 24S LGD01 by Reaa Indonesia', 3, 1, 175000, '<p><strong>Kaos Kombad 24S LGD01 by Reaa Indonesia, DESIGN UNIK Original Design Tanpa Ngebosenin + Bonus Sticker</strong></p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p><strong>Bahan : Katun Combed 24s</strong></p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p><strong>Sablon : DTF</strong></p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Minat WA : 0813-9999-6542</strong></p>', NULL, '2023-05-28 00:39:21', '2023-05-28 00:47:52', 'kaos-kombad-24s-lgd01-by-reaa-indonesia-1685259561', 125000, 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, reaa LGD01', 'kaos distro, kaos combad 24S, kaos polos, reaa indonesia, reaa LGD01', 1, 1, 1, 1, 1, 'www.youtube.com'),
(21, 'Kaos Kombad 30S LGD3002 by Reaa Indonesia', 3, 2, 115000, '<p><strong>Kaos Kombad 24S LGD02 by Reaa Indonesia, DESIGN UNIK Original Design Tanpa Ngebosenin + Bonus Sticker</strong></p>\r\n\r\n<p>- Bahan Berkualitas</p>\r\n\r\n<p>- Produk Original (Desain Sendiri)</p>\r\n\r\n<p>- Ada kebanggan tersendiri memakai kaos yang tidak dijual di toko-toko</p>\r\n\r\n<p>- Sudah Dipercaya Untuk Menjadi Produsen Outfit Profesi di Indonesia</p>\r\n\r\n<p><strong>Bahan : Katun Combed 30s</strong></p>\r\n\r\n<p>- Unisex dapat dipakai pria dan wanita</p>\r\n\r\n<p>- Tidak panas, menyerap keringat dengan baik</p>\r\n\r\n<p>- Jahitan kaos tipe rantai sehingga kuat dan tahan lama</p>\r\n\r\n<p>- Memiliki karakteristik bahan yang halus, dingin sehingga nyaman dipakai</p>\r\n\r\n<p>Sablon : DTF</p>\r\n\r\n<p>-Hasil sablon meresap ke pori-pori kaos dan tidak lengket sehingga nyaman dipakai</p>\r\n\r\n<p>-Warna sablon pekat solid memiliki kesan mengkilap dan tidak mudah luntur</p>\r\n\r\n<p>-Tampilan kaos kelas distro tampak mewah</p>\r\n\r\n<p><strong>Minat WA : 0813-9999-6542</strong></p>', NULL, '2023-05-28 00:42:39', '2023-05-28 00:48:01', 'kaos-kombad-24s-lgd02-by-reaa-indonesia-1685259759', 95000, 'Kaos Kombad 30S LGD3002 by Reaa Indonesia, reaa-indonesia.id,reaa-indonesia.com', 'Kaos Kombad Kaos Kombad 30S LGD3002 by Reaa Indonesia, reaa-indonesia.id,reaa-indonesia.com30S LGD02 by Reaa Indonesia, reaa-indonesia.id,reaa-indonesia.com', 1, 1, 1, 1, 1, 'www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `photos`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 'assets/product/otdVhcC6BCixYTFBu2kEzNLArIuXrY787uW38w3w.jpg', 5, '2023-05-13 16:56:22', '2023-05-13 16:56:22'),
(6, 'assets/product/product-4IiBWGWAxL.jpg', 9, '2023-05-13 16:58:55', '2023-05-13 16:58:55'),
(8, 'assets/product/OKceuIOwI7jrGazsOEBX5XfSAHf2ONj6alXqt74E.jpg', 11, '2023-05-13 17:15:08', '2023-05-13 17:15:08'),
(9, 'assets/product/TAMYU21AYeDc7AChBP4LOSgkag2bkytCX6MsAwSD.jpg', 7, '2023-05-13 17:17:44', '2023-05-13 17:17:44'),
(11, 'assets/product/TlCXJLLKbwfGspd3BEdYr4odIy1n7I2d0gV4xd0D.jpg', 12, '2023-05-13 17:27:25', '2023-05-13 17:27:25'),
(15, 'assets/product/product-lDkzOCNwz6.jpg', 18, '2023-05-13 17:47:23', '2023-05-13 17:47:23'),
(17, 'assets/product/product-5eQ00br5S6.jpg', 5, '2023-05-15 04:35:51', '2023-05-15 04:35:51'),
(18, 'assets/product/product-TD7IpiRttJ.jpg', 5, '2023-05-15 04:38:29', '2023-05-15 04:38:29'),
(19, 'assets/product/product-sMOZdBVNUq.png', 5, '2023-05-15 04:39:07', '2023-05-15 04:39:07'),
(20, 'assets/product/product-7bFLEll2Xv.jpg', 20, '2023-05-28 00:39:21', '2023-05-28 00:39:21'),
(21, 'assets/product/product-XjiTaF53jR.jpg', 20, '2023-05-28 00:39:34', '2023-05-28 00:39:34'),
(22, 'assets/product/product-nr6HOPkx2c.jpg', 20, '2023-05-28 00:40:28', '2023-05-28 00:40:28'),
(23, 'assets/product/product-vSmOg1T4dQ.jpg', 20, '2023-05-28 00:40:34', '2023-05-28 00:40:34'),
(24, 'assets/product/product-FOBgU1ZNBG.jpg', 21, '2023-05-28 00:42:39', '2023-05-28 00:42:39'),
(25, 'assets/product/product-MpxmYgP8CI.jpg', 21, '2023-05-28 00:43:01', '2023-05-28 00:43:01'),
(26, 'assets/product/product-OG4dZxStNg.jpg', 21, '2023-05-28 00:43:07', '2023-05-28 00:43:07'),
(27, 'assets/product/product-arB0Qgioye.jpg', 21, '2023-05-28 00:43:13', '2023-05-28 00:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `promo_line` int(11) NOT NULL,
  `active_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) NOT NULL,
  `province_id` char(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'assets/slider/Gs5tSVxuL2YVEAUwKPm5lai6W4xjEKkTTJcmEUin.jpg', '2023-05-26 04:22:04', '2023-05-26 04:22:04'),
(2, 'assets/slider/PVEqG0Z0XMxXfJ95qDqwb0osYwZXQ7c4gZJJ7hiC.jpg', '2023-05-26 04:22:41', '2023-05-26 04:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Rismono', '<p>Kualitas bahannya bagus, adem dipakai, jaitannya rapi banget dan sablonnya rapi. Terima kasih REAA Indonesia</p>', 'assets/testimony/9GsVi19jvqE5VJPGmBC2HdsoT4QvJEYQ4jIGla7h.jpg', '2023-05-11 15:34:47', '2023-06-13 21:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `inscurance_price` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `inscurance_price`, `shipping_price`, `total_price`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`, `code`) VALUES
(9, 2, 0, 0, 125000, 'SUCCESS', NULL, '2023-05-10 08:59:37', '2023-05-10 08:59:58', 'BWA-49577'),
(15, 5, 0, 0, 125000, 'SUCCESS', NULL, '2023-05-15 19:48:29', '2023-05-15 19:48:43', 'REAA-91329');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(255) NOT NULL,
  `resi` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `price`, `created_at`, `updated_at`, `shipping_status`, `resi`, `code`, `size`) VALUES
(9, 9, 1, 125000, '2023-05-10 08:59:37', '2023-05-10 08:59:37', 'PENDING', '', 'TRX-81999', ''),
(15, 15, 7, 125000, '2023-05-15 19:48:29', '2023-05-17 02:05:23', 'SUCCESS', '', 'TRX-5424', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address_one` longtext DEFAULT NULL,
  `address_two` longtext DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `regency_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `province_id`, `regency_id`, `zip_code`, `country`, `phone_number`, `store_name`, `category_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-05-10 05:38:50', '$2y$10$RH0LJROKvGjDK98GO0fs9O1/6HGN5ZnR7a0mxuv9rtdT6Fp9zjlh2', 'JAKARTA', 'JAKARTA', 31, 3173, 11320, 'Indonesia', '+6281380889027', NULL, NULL, NULL, NULL, NULL, '2023-05-10 05:38:50', '2023-05-10 09:10:56', 'ADMIN'),
(2, 'anjas', 'anjas@gmail.com', NULL, '$2y$10$aEf9qOk0ESboQ0kEKI9TAeq8/VetavdS1GyonLmXtIM5r.OB.1mB6', 'Krenekan', 'Krenekan', 33, 3310, 57465, 'Indonesia', '089529591732', NULL, NULL, 0, NULL, NULL, '2023-05-10 08:39:33', '2023-05-10 08:40:10', 'USER'),
(3, 'Store', 'store@gmail.com', NULL, '$2y$10$ptQrJ06ACHuV.1OD7ptX7.AWgISJUyyQA.Owqpie7UfKIffPyC6Oy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Store', NULL, 1, NULL, NULL, '2023-05-10 17:15:38', '2023-05-10 17:15:38', 'USER'),
(5, 'Anjas Putra', 'anjasputra012@gmail.com', NULL, '$2y$10$JNt1eUQiXPsrGgbC6R.aKesh8.hW78kb1utw4H/NWnwgfSAalVQo2', 'krenekan rt03/rw05, klepu, ceper, klaten', 'krenekan rt03/rw05, klepu, ceper, klaten', 33, 3310, 57465, 'Indonesia', '089529591732', NULL, NULL, 0, NULL, NULL, '2023-05-15 18:57:31', '2023-05-15 19:00:11', 'USER'),
(6, 'Suparman', 'suparman.vv@gmail.com', NULL, '$2y$10$nNhS0MeW3K8aEG.O/dTqvOi4J/mIHl0Gal4nKIkh64THMrq6TCdha', NULL, NULL, NULL, NULL, NULL, NULL, '+6281380889027', NULL, NULL, NULL, NULL, NULL, '2023-05-18 05:22:42', '2023-06-19 21:42:06', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` char(10) NOT NULL,
  `district_id` char(7) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD KEY `districts_regency_id_foreign` (`regency_id`),
  ADD KEY `districts_id_index` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misi_visis`
--
ALTER TABLE `misi_visis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD KEY `provinces_id_index` (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD KEY `regencies_province_id_foreign` (`province_id`),
  ADD KEY `regencies_id_index` (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD KEY `villages_district_id_foreign` (`district_id`),
  ADD KEY `villages_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `misi_visis`
--
ALTER TABLE `misi_visis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
