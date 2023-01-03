-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 03:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_advanced`
--

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
(5, '2023_01_02_215055_create_posts_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 'Assumenda itaque neque dolore.', 'Aut esse similique sapiente quibusdam iure voluptas aperiam. Sed quisquam omnis voluptatum id doloribus vel fugit. Et non voluptate sequi est quos.', '2023-01-02 20:23:36', '2023-01-02 20:23:36'),
(2, 2, 'Et voluptatum nulla expedita nostrum.', 'Ex omnis sint amet consequuntur quidem. Dignissimos explicabo qui maxime et sequi quod. Facilis nisi error blanditiis aliquid autem ea laudantium. Tenetur soluta vel autem non. Natus et rem tempore omnis asperiores in odio dolorem.', '2023-01-02 20:23:36', '2023-01-02 20:23:36'),
(3, 3, 'Ex non omnis.', 'Voluptatem eos reiciendis dolores consequatur ipsa non. Magni blanditiis blanditiis qui aut. Nisi sed illum similique velit omnis repellendus id. Praesentium explicabo qui dolor eius. Exercitationem quam eum qui.', '2023-01-02 20:23:36', '2023-01-02 20:23:36'),
(4, 2, 'Dignissimos ullam repellendus.', 'Rerum dolor ut reprehenderit ex ea. Voluptatum et sed id enim qui omnis porro aut.', '2023-01-02 20:23:36', '2023-01-02 20:23:36'),
(5, 3, 'Velit neque et eligendi.', 'Iure non illum qui sit. Molestias enim cupiditate rem quidem excepturi aliquam illo. Facere deleniti quia aliquid quia. Error voluptas incidunt labore recusandae.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(6, 3, 'Tempora fugiat eum ipsum.', 'Quas atque vel aut ut exercitationem. Sed omnis molestiae quibusdam eveniet. Odit quia accusantium temporibus ut unde dolores dolorem. Ut officia atque consequatur rerum atque dolores.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(7, 2, 'Aliquam animi autem et impedit.', 'Mollitia beatae nihil quos reiciendis aut repellendus et. Incidunt molestiae sed blanditiis non tempore. Molestias possimus dolor reiciendis officia fuga sunt.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(8, 1, 'Et nam nesciunt accusamus atque eius.', 'Excepturi quia culpa esse aut illum aperiam. Cum eaque nam sint inventore velit vel. Velit repellendus adipisci quasi voluptatem qui doloribus.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(9, 3, 'Illum qui autem sit.', 'Suscipit modi id et laborum eum. Deserunt eum qui doloribus harum inventore cumque consectetur et. Harum minima maiores et voluptates nam qui.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(10, 3, 'Expedita aliquam sunt.', 'Et qui reiciendis quis sapiente ut. Non fuga est est. Officiis id commodi omnis iure.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(11, 1, 'Illum laboriosam vel.', 'Dolor quia fugit quasi et. Saepe nostrum occaecati illo inventore maxime voluptas voluptas ut. Expedita omnis vero quasi voluptatem et tempore unde. Et velit est quis.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(12, 2, 'Eum dolorem magni nesciunt saepe omnis.', 'Quae eius distinctio quasi laboriosam vitae rem voluptas. Doloribus harum ut autem maxime enim incidunt sed. Voluptatem aliquam iusto ullam nostrum odio.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(13, 1, 'Ducimus minus dicta ratione et non.', 'Laborum voluptatem qui magni dignissimos fuga ut quaerat. Ea quis quo sint eum ut dolores. Quibusdam libero hic culpa est.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(14, 1, 'Consectetur ab consequatur qui blanditiis.', 'Voluptatem omnis non et ut aperiam enim nam. Qui quae eos corporis aliquam quia. Qui quia laboriosam nihil quo atque. Nisi accusantium mollitia esse sed et iure. Soluta sint ea amet magni autem quis.', '2023-01-02 20:23:37', '2023-01-02 20:23:37'),
(15, 1, 'Quia laudantium dolores.', 'Molestiae dolorem dolorem consequatur sunt. Perferendis impedit inventore voluptas quos. Commodi ut repudiandae magnam cumque debitis. Excepturi qui repudiandae ut voluptas quae dicta totam.', '2023-01-02 20:23:37', '2023-01-02 20:23:37');

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
(1, 'abdo', 'abdo@gmail.com', NULL, '$2y$10$7xJaU2GONSaXNA1DhVxRBuJko7UoRMVakFDIboOjPPFXGsUu50iJi', NULL, '2023-01-02 20:23:35', '2023-01-02 20:23:35'),
(2, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$ZohjVIdTccJQexKV9gCKwOBgWIp7DaxzRxldFdvxNXPY5vSR2GgUy', NULL, '2023-01-02 20:23:35', '2023-01-02 20:23:35'),
(3, 'mido', 'mido@gmail.com', NULL, '$2y$10$agel080CC.U8I1VKMr7m9e3LOSYJ2LQQ5ZPzzAR/s3veJ74jyyJAu', NULL, '2023-01-02 20:23:35', '2023-01-02 20:23:35');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
