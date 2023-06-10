-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Expedita incidunt minima sunt natus cupiditate.', 'Magni cumque saepe ullam sit omnis aut. Occaecati possimus beatae esse architecto laboriosam. Ducimus perferendis vel quia molestiae dignissimos quia ut maiores.', 2, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(2, 'Aut fugiat eveniet repellendus.', 'Quae omnis voluptas labore repellat. Corporis quis blanditiis in quisquam a est ex et. Doloribus quis quibusdam quia consectetur.', 2, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(3, 'Est perferendis qui et officia et repellat.', 'Eum libero eius ut est ipsum ut ratione. Perspiciatis cumque velit provident distinctio rerum deleniti fugit. Impedit dicta qui nobis ut quo enim molestiae.', 4, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(4, 'Et maxime officiis ducimus provident blanditiis molestias facere odit.', 'Quos odit soluta aut ut et doloremque. Labore quis amet nemo exercitationem iste. Non nam libero quisquam ut iure optio corporis vel. Iure illo quas vero asperiores non.', 5, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(5, 'Quidem sunt vel dolore consequuntur sed.', 'Asperiores ut culpa commodi assumenda. Aut pariatur reiciendis esse aut aut accusantium molestiae omnis. Non et rerum veritatis dolorum quidem. Consequatur et iusto voluptas.', 3, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(6, 'Praesentium iusto velit consequatur consectetur quae tenetur atque.', 'Sunt earum ea exercitationem accusantium veniam omnis recusandae. Omnis vero accusamus harum qui facilis. Officiis qui consequatur eveniet repudiandae iste cupiditate est.', 4, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(7, 'Voluptate est nesciunt fugiat dolor ut rerum debitis eius.', 'Expedita sapiente rerum autem veritatis aut placeat quisquam et. Quia unde quod quasi veritatis aut impedit excepturi sint. Quam laborum accusamus est esse minima ut nesciunt totam. Fuga autem voluptas repudiandae non.', 3, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(8, 'Neque sint expedita vel sint assumenda.', 'Fuga amet ut omnis ea. Quo reiciendis est sunt est hic voluptas in quasi. Id iste porro aliquam ut quia sed inventore dolores.', 3, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(9, 'Voluptatem velit expedita inventore sit rerum debitis aliquid.', 'Facere laborum et enim quod. Nulla consequatur ratione illum provident. Doloremque aperiam accusantium autem molestias ut consequatur laboriosam.', 3, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(10, 'Cupiditate quo harum optio est ad eos nihil.', 'At iste asperiores soluta saepe. Corporis sed sequi numquam. Sit rem eum facere voluptatem illo optio sed.', 2, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(11, 'T1', 'B1', 1, 3, '2023-03-19 22:57:20', '2023-03-19 22:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'General', '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(2, 'Technology', '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(3, 'Mobile', '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(4, 'Computer Science', '2023-03-04 23:54:59', '2023-03-05 00:08:26'),
(5, 'Game', '2023-03-04 23:54:59', '2023-03-04 23:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Vel repellendus error est quidem. Recusandae ipsum voluptatem quo culpa quo tenetur. Vero dolore commodi neque facilis enim laborum corporis explicabo.', 18, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(2, 'Porro rerum labore voluptate sed cupiditate et. Quia deleniti fugit maiores natus quis impedit omnis. Adipisci aspernatur et nostrum est aperiam consequatur. Commodi molestiae hic voluptatem qui autem numquam at culpa.', 9, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(3, 'Facilis sequi sapiente non magni suscipit. Laudantium velit soluta suscipit et voluptas in iste nemo. Architecto aut necessitatibus fuga laboriosam. Odio qui in et quia consequatur id.', 7, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(4, 'Eveniet provident debitis est. In et deleniti rem maiores officia quia magni.', 8, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(5, 'Vitae excepturi qui ad itaque doloribus voluptatem nemo. Et neque sunt cumque aliquid.', 7, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(6, 'Et dignissimos est quia quia et. Rem aut iste assumenda voluptatem modi maxime possimus dolores. Molestiae rem sed eius sit accusantium et. Aliquam repudiandae consequatur enim molestias culpa. Ut adipisci perferendis officia eos.', 18, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(7, 'Eos labore laudantium tempore et quis. Soluta dolorem inventore iusto eum rerum. In et voluptatem est alias non facere voluptatibus. Quis facilis non id laborum sit.', 19, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(8, 'Officiis architecto dolorem repellat mollitia excepturi et. Molestiae consequatur ducimus quia praesentium optio ut voluptates corporis. Quisquam nihil reiciendis rerum culpa repellat et. Cumque odit occaecati dolorem laborum adipisci aspernatur. Minus ut sapiente nam quasi et sint recusandae.', 9, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(9, 'Et rerum pariatur iure neque repudiandae expedita. Est quod unde neque alias explicabo vel. Ipsam quod occaecati similique odio. Molestiae maxime nemo voluptatem necessitatibus expedita ut aperiam earum.', 5, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(10, 'Repellat sit eos eveniet repellat nisi doloribus aliquam incidunt. Voluptas asperiores autem velit atque id. Deserunt et et non rerum odit ratione est.', 11, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(11, 'Distinctio iste ut sunt cum dolor. In voluptatem similique nihil qui eaque. Eum et cum consequatur totam rerum suscipit accusamus.', 13, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(12, 'Nobis quisquam voluptatem voluptate et saepe repellat totam. Inventore perferendis eum sunt impedit porro. Illum eum illo laborum accusantium quo quod dolor. Eos magni aperiam dicta nisi velit omnis alias velit.', 15, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(13, 'Quae sint praesentium unde itaque culpa et. Nulla cumque perspiciatis non vel.', 10, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(14, 'Voluptatem neque et ea necessitatibus. Ipsum aliquid dolores explicabo ut corporis distinctio architecto velit. Molestiae non magni facere ut porro non nostrum ex. Sint et qui repellendus asperiores dignissimos fugiat. Ipsum ut quia exercitationem molestiae qui quia et soluta.', 4, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(15, 'Est voluptas velit officia rerum. Beatae alias dolor aut minus expedita. Dolorem provident unde recusandae minima nisi voluptatem aut similique.', 20, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(16, 'Ducimus rem vero alias ex nihil. Magni accusamus itaque aliquid quia sed qui. Vel aspernatur ipsam officia nihil. Illum dolorem ea ea et quo vel laboriosam.', 4, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(17, 'Quia assumenda provident quasi. Quia reiciendis rerum et officiis. Et asperiores consequuntur eligendi beatae deleniti et molestiae.', 11, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(18, 'Officia hic similique totam sint rem. Dolor delectus vero in nobis dignissimos enim voluptate.', 18, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(19, 'Odit et soluta rerum illum quaerat assumenda incidunt. Hic est quod hic consequatur consequatur laudantium. Autem similique dolorem veritatis asperiores esse sed. Est tempore incidunt nostrum facilis delectus autem.', 1, 1, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(20, 'Aut qui sed ipsum. Aut iusto fuga impedit illo harum provident. Quae accusantium quibusdam officia reiciendis ad.', 6, 2, '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(21, 'Hii Alice', 1, 1, '2023-03-18 21:25:20', '2023-03-18 21:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_11_025433_create_articles_table', 1),
(6, '2023_02_19_014946_create_comments_table', 1),
(7, '2023_02_19_015110_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'web', '573ef5e6f30db503f6955df84e7890c41657169cfb00b39447431b74090b5e90', '[\"*\"]', '2023-03-04 23:58:32', '2023-03-04 23:57:13', '2023-03-04 23:58:32'),
(2, 'App\\Models\\User', 1, 'web', 'e15ddd6eb0985b6aace1f631522b46b7fa0877429440326622e33ace58de67f0', '[\"*\"]', '2023-03-05 00:07:53', '2023-03-05 00:06:33', '2023-03-05 00:07:53'),
(3, 'App\\Models\\User', 1, 'web', 'a6efc49eef60eb251745907a0e0ce9b5c3b6b05e5935d1bb99e45fc377ac4ef2', '[\"*\"]', '2023-03-05 00:08:28', '2023-03-05 00:08:07', '2023-03-05 00:08:28'),
(4, 'App\\Models\\User', 1, 'web', 'e94c2e36c6badf7163f6ccde16836a4b21944767a35612a7bd775ca282ef6020', '[\"*\"]', '2023-03-21 08:03:06', '2023-03-21 08:03:03', '2023-03-21 08:03:06'),
(5, 'App\\Models\\User', 1, 'web', '5e888fe59a8ff4e9f39cffced20c1fc48515e3692889cddfadcd77146b5130a2', '[\"*\"]', '2023-03-21 08:03:06', '2023-03-21 08:03:04', '2023-03-21 08:03:06'),
(6, 'App\\Models\\User', 1, 'web', '34669711cd9d893c388405122d745058864af2d25d5c31b2ffd3880e9d1fa74f', '[\"*\"]', '2023-03-21 08:03:17', '2023-03-21 08:03:05', '2023-03-21 08:03:17'),
(7, 'App\\Models\\User', 1, 'web', '982832dfc7736562af3fe6c4445231f5bce0f7e5288cb3707c97507f7e77da9c', '[\"*\"]', '2023-03-21 08:04:20', '2023-03-21 08:04:19', '2023-03-21 08:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alice', 'a@gmail.com', '2023-03-04 23:54:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OgZkwQgTTdhdRYfQSpvKbv5KxlahWtkSdtm4ueJE4GopYLhRjlFhNBwwA8K1', '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(2, 'Bob', 'b@gmail.com', '2023-03-04 23:54:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9LLbNskIeI', '2023-03-04 23:54:59', '2023-03-04 23:54:59'),
(3, 'Khunn Satt', 'kset.dkk@gmail.com', NULL, '$2y$10$aafE2h6GF5llUJhuhUBArueFiUCJ0bfoyKJKwY2uMizareewH4BWG', NULL, '2023-03-19 22:57:10', '2023-03-19 22:57:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
