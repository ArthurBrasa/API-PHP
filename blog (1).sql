-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 01:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
  `title` varchar(100) DEFAULT NULL,
  `subTitle` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `subTitle`, `content`, `idUser`, `created_at`, `updated_at`) VALUES
(127, 'Nier: Automata Ver1.1a', 'O jogo que virou Anime!', 'Nier: Automata Ver1.1a é uma série de anime baseada no jogo homônimo desenvolvido pela PlatinumGames e publicado pela Square Enix. A série está sendo produzida pela A-1 Pictures e está com lançamento planejado para Janeiro de 2023. Wikipédia', 6, '2023-03-20 18:34:57', '2023-03-20 18:34:57'),
(128, 'Laravel', 'Framework PHP', 'Laravel é um framework PHP livre e open-source criado por Taylor B. Otwell para o desenvolvimento de sistemas web que utilizam o padrão MVC. Wikipédia', 6, '2023-03-20 18:37:06', '2023-03-20 18:37:06'),
(130, 'CSS, HTML E JS', 'O Kit Básico de Todo o DEV Frontend!', 'Para todos os devs que estão iniciando sua jornada em programação web, CSS, HTML e JS são as principais linguagens que você precisa aprender. HTML é responsável pela estrutura do site, CSS é responsável pelo estilo e aparência, e JS é responsável pela interatividade e dinamismo. Comece aprendendo HTML para entender como a estrutura do site funciona e como adicionar elementos como imagens, links e formulários. Em seguida, aprenda CSS para personalizar a aparência do site, como fontes, cores e layout. Por fim, aprenda JS para adicionar interatividade, como animações e eventos de clique. Com essas três linguagens, você pode criar sites incríveis e dar vida às suas ideias na web!', 4, '2023-03-21 01:51:02', '2023-03-21 01:51:02'),
(132, 'Anime Summit', 'Evento de Anime em Brasília - 2023', 'Anime Summit foi um evento relacionado à cultura pop japonesa, como convenções e festivais que reúnem fãs e entusiastas do anime e mangá de todo o mundo. Esse evento  inclui diversas atividades, como exibições, concursos, painéis de discussão, apresentações ao vivo e estandes de vendas, proporcionando aos participantes uma experiência única e imersiva no mundo dos animes.', 4, '2023-03-21 01:59:50', '2023-03-21 01:59:50'),
(133, 'League of Legends', 'Um jogo no estilo MOBA!', 'League of Legends é um dos jogos mais jogados do mundo. Conquistou fãns do mundo todo e continua sendo muito popular nos dias de hoje. Ele é responsável tambem por abrir portas para vários jovens no mercado de games.', 10, '2023-03-21 02:28:21', '2023-03-21 02:28:21'),
(134, 'React', 'Uma Biblioteca Frontend Muito Poderosa!', 'O React é uma biblioteca front-end JavaScript de código aberto com foco em criar interfaces de usuário em páginas web. fonte: Wikipédia', 10, '2023-03-21 02:30:08', '2023-03-21 02:30:08'),
(139, 'Prolog', 'O que é Prolog?', 'Prolog é uma linguagem de programação de lógica declarativa, utilizada em inteligência artificial, processamento de linguagem natural, sistemas especialistas, entre outras áreas. A sigla Prolog significa \"Programming in Logic\" (Programação em Lógica, em português).\r\n\r\nDiferente das linguagens de programação convencionais, Prolog se baseia em um modelo de programação lógica, no qual os programas são compostos por regras e fatos declarativos, e a computação é feita através da dedução lógica dessas regras e fatos.\r\n\r\nNa prática, isso significa que o programador especifica o que o programa deve fazer, em vez de como fazer, e o Prolog deduz a solução a partir das regras e fatos declarados. Isso torna Prolog particularmente útil para lidar com problemas complexos que envolvem raciocínio lógico e inferência.', 3, '2023-04-01 19:48:40', '2023-04-01 19:48:40'),
(143, 'Valor', 'valor subtitle descrip afkjaslasdf fakj 20', 'iu asdpirakl daoufia ksf 283fj dfsad', 19, '2023-04-01 20:13:21', '2023-06-21 23:00:28'),
(150, '5432676859069-087867564534', 'asfd', 'as', 3, '2023-04-01 22:11:59', '2023-04-01 22:11:59'),
(151, 'rewq', 'rwqer', 'qwer', 3, '2023-04-01 22:15:07', '2023-04-01 22:15:07'),
(152, '67878675345 - teste', '657978', '6756435786', 3, '2023-04-01 22:19:17', '2023-04-01 22:19:17'),
(153, 'rasdas', 'ras', 'rasdrasdr', 3, '2023-04-01 22:20:51', '2023-04-01 22:20:51'),
(154, 'rasdas', 'ras', 'rasdrasdr', 3, '2023-04-01 22:21:07', '2023-04-01 22:21:07'),
(155, '143143', '12342134', '23', 3, '2023-04-01 22:22:17', '2023-04-01 22:22:17'),
(156, 'resre', 'res', 'area', 6, NULL, NULL),
(158, 'res32432423432re', 'res', 'area', 6, NULL, NULL),
(159, 'res32432423432re', 'res', 'area', 6, '2023-06-21 21:21:36', '2023-06-21 21:21:36'),
(160, 'Time Stanp', 'res', 'area', 6, '2023-06-21 21:22:09', '2023-06-21 21:22:09'),
(161, 'Tanjiro Kamado', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', 6, '2023-06-21 21:23:03', '2023-06-21 21:23:03'),
(162, 'Tanjiro Kamado', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', 6, '2023-06-21 21:26:22', '2023-06-21 21:26:22'),
(163, 'Tanjiro Kamado - TANK', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', 6, '2023-06-21 21:26:41', '2023-06-21 21:26:41');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_17_072022_create_sessions_table', 1),
(7, '2023_03_17_141629_create_permission_tables', 1),
(8, '2023_03_18_183850_create_articles_table', 1),
(11, '2023_03_19_215453_create_topics_table', 2),
(14, '2023_03_19_223355_create_article_has_topics_table', 3),
(17, '2023_04_01_183121_create_article_has_topics', 4),
(18, '2023_04_01_190901_create_article_topics', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create articles', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(2, 'publish articles', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(3, 'edit articles', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(4, 'delete articles', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(5, 'delete anyUser', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(6, 'delete anyArticles', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(2, 'admin', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(3, 'Super-Admin', 'web', '2023-03-19 03:47:11', '2023-03-19 03:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NdlCGlDx7dx3EFPvJxhRgCJR9r9wevVU97zzFhmn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicVprd3pOWUdUYldhdk1SOUp5RElPQVdmNkhIOFhZRlFEMzdXUXhqWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbS5DR0ZtMEJhVVpwTEtXWUR5TGhaLldyZXhCZFdvNDlLcjZ4VDRZdUVCc1hrRklDMFdvRmkiO30=', 1679845780);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Anime', '2023-03-20 01:31:42', '2023-03-20 01:31:42'),
(2, 'Tech', '2023-03-20 01:31:42', '2023-03-20 01:31:42'),
(3, 'Cosplay', '2023-03-20 01:31:42', '2023-03-20 01:31:42'),
(4, 'Game', '2023-03-20 01:31:42', '2023-03-20 01:31:42'),
(5, 'fire', '2023-03-20 17:22:13', '2023-03-20 17:22:13');

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Usuário Demo', 'user@user.com', NULL, '$2y$10$m.CGFm0BaUZpLKWYDyLhZ.WrexBdWo49Kr6xT4YuEBsXkFIC0WoFi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(2, 'Admin', 'admin@admin.com', NULL, '$2y$10$94J2YkoJ2qRDqtlMjgGIve5TFDuz1HybAGlfuJfN4zQpv98BDiUpG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(3, 'Super Admin', 'superadmin@superadmin.com', NULL, '$2y$10$vZWN2DM7k1pyvyR5ihRdVOR6LmZZ8adlpfuL.W6ElNX5S3F4XzbxG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 03:47:11', '2023-03-19 03:47:11'),
(4, 'Antonio', 'anntonio@teste.com', NULL, '$2y$10$0GUF/U024MPSNage0a909OW.vmSxDhZt06/ruDKF1jzFPnd9Skfle', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:27:56', '2023-03-19 18:27:56'),
(5, 'Naruto', 'naruto@teste.com', NULL, '$2y$10$Vd9VWDz.Vfur4qBwe7FOxuqjqebwAKScFicb57xmQZF56TGrTtjcG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:31:59', '2023-03-19 18:31:59'),
(6, 'Sasuke', 'sasuke@teste.com', NULL, '$2y$10$ewe0T0PadDbbKSBlA3afBOP0bytv6XBOAsKWfdhJhP0iAUWJrkR9.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:34:11', '2023-03-19 18:34:11'),
(7, 'EstelaTeste', 'estela@teste.com', NULL, '$2y$10$9nRyVzKGdcj6gt4UBd5N6eNA.BrEmHkstRs8cKYjN94VCEVPN9LMe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:40:21', '2023-03-19 18:40:21'),
(9, 'EstelaTeste', 'estela1@teste.comteste', NULL, '$2y$10$.vZURIH4tEC/YgqsgsadD.5.V7QJNuCJpvyU9Ob/kX06fHQxFetP.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:41:02', '2023-03-19 18:41:02'),
(10, 'Estela', 'estela1@teste.com', NULL, '$2y$10$Z8424TsCOC17SIPAhWrojOzjXDSS8QXBxc/GuDm.BBMBwGT9IyoMi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:41:02', '2023-03-19 18:41:02'),
(11, 'PHPtesteacountTeste', 'php@teste.comteste', NULL, '$2y$10$ra8wlaWZun/NbcXXUguqIOvmzYGD40Z5rnZt4.a9YxwfqoPKCwwSC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:52:37', '2023-03-19 18:52:37'),
(12, 'PHPtesteacount', 'php@teste.com', NULL, '$2y$10$NuPw3OmBY5p2R4XXkOYUP..xwYtE5z3G6la7/hAstx2T1m2PnNvRC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:52:37', '2023-03-19 18:52:37'),
(13, 'Naruto2', 'naruto2@teste.com', NULL, '$2y$10$ZPYPj6.fDMPT4VBou3smhuSgQ5UWJTbSN5vyET0KRq/JiLYIJtqRe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 18:54:43', '2023-03-19 18:54:43'),
(14, 'maisUmaContaTESTE', 'testes2@teste.com', NULL, '$2y$10$nfnAURbfY8IoNeYOfs387unpVHcq7FkD6WCedQVXUBRTC1zAJPDuu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 20:35:31', '2023-03-19 20:35:31'),
(15, 'otaku', 'otaku@teste.com', NULL, '$2y$10$R.AtSYh5zUUyuF2TmyxUTexRhJQDRGKgkOgPgjZU.41WVD9ctwOKS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 21:48:09', '2023-03-19 21:48:09'),
(16, 'Duelista', 'duelista@teste.com', NULL, '$2y$10$t/HhADzVlhxjvvb9Q44HFOZmjaNrvtSmoPddWBuVJ90lNmZf/ro5S', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 22:42:35', '2023-03-19 22:42:35'),
(17, 'Baki', 'baki@teste.com', NULL, '$2y$10$1cPyMUiz9Lo0iknlEd0NhuHtm.D4Tvolh8T8JSnFDYyT/npT4Kmfe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 23:21:12', '2023-03-19 23:21:12'),
(18, 'User2', 'user2@teste.com', NULL, '$2y$10$6mYO8GAXDx38D/LCm2IF.eONkol9QIgTgnw1XEPhHTwqaew1ze.Su', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-21 11:47:17', '2023-03-21 11:47:17'),
(19, 'tester', 'teste9@teste.com', NULL, '$2y$10$5X.hVsC6hbj/eLJ.RFtVOeeRPb3PQdvab4SH/fv/3bCFTOXklMfZi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-01 20:12:18', '2023-04-01 20:12:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_iduser_foreign` (`idUser`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topics_type_unique` (`type`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
