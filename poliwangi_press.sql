-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2021 pada 17.07
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliwangi_press`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `id` int(11) NOT NULL,
  `isi_catatan` varchar(255) NOT NULL,
  `id_status_catatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(11) NOT NULL,
  `kategori` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(31, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(32, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(33, '2016_06_01_000004_create_oauth_clients_table', 1),
(34, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2020_08_25_035741_create_usulan_table', 1),
(37, '2020_09_09_091857_create_usulan_dosen_table', 2),
(38, '2020_09_15_031535_create_panduan_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kG1QVV5f7Pq1yCgXp1ui1drqojhYyiCXDg1nInbX', NULL, 'http://localhost', 1, 0, 0, '2021-04-23 07:01:55', '2021-04-23 07:01:55'),
(2, NULL, 'Laravel Password Grant Client', 'IKYf8ILOi121EWwoYaXILXxh30AasPXwHbcggCVo', 'users', 'http://localhost', 0, 1, 0, '2021-04-23 07:01:55', '2021-04-23 07:01:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-23 07:01:55', '2021-04-23 07:01:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `panduan`
--

CREATE TABLE `panduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `jurusan` varchar(191) NOT NULL,
  `nip_nik` varchar(191) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi`
--

CREATE TABLE `revisi` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `id_catatan` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'dosen'),
(3, '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_catatan`
--

CREATE TABLE `status_catatan` (
  `id` int(11) NOT NULL,
  `status_catatan` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@me.com', NULL, '$2y$10$LnuK.RB2hZwh56m045po6eT.SDAlUITBiQ6bMmQ2.hoqryMoW3KWC', '1', NULL, '1599542104.jpeg', 'yAwlcG2uqCO4rrOeNpCArU8mX3kD5TCEAP3KnJr9T75UrYGrreRk2DuK7eEo', '2020-08-24 21:24:59', '2020-09-07 22:15:05'),
(2, 'jipau', 'jipau@me.com', NULL, '123456', '2', NULL, '1599325588.jpeg', NULL, '2020-08-24 21:31:58', '2020-10-05 06:55:29'),
(3, 'dosenku', 'dosen@me.com', NULL, '$2y$10$eIqfsnXm.z.tUeQYCBogV.OSaBNwraDjehoNKT8.eKWRF/HSO.8tC', '2', NULL, '1600445477.jpeg', NULL, '2020-08-24 21:32:58', '2020-09-18 09:11:18'),
(12, 'ji', 'ji@me.com', NULL, '$2y$10$McdMXo55oZ2haoPKoeuboelcXDwvPA7cPmbMn9RpoScTJbbX82jVe', '2', NULL, NULL, NULL, '2020-09-03 07:28:39', '2020-09-03 07:28:39'),
(13, 'uhuy', 'uhuy@me.com', NULL, '$2y$10$9pUykxntCK0Fu6aXMPExn.fJ402Pd.4CTlNGv/RKnre31aaMolsee', '2', NULL, NULL, NULL, '2020-09-03 09:41:23', '2020-09-03 09:41:23'),
(14, 'admin2', 'admin2@me.com', NULL, '$2y$10$ZaVWq/b5OhUOQkJkFUORBeFZlaa/lWpj5Swc.ChGl9yeTYGsKzjcC', '1', NULL, '1599325486.jpeg', NULL, '2020-09-03 09:41:54', '2020-09-15 08:09:19'),
(15, 'coba', 'coba@me.com', NULL, '$2y$10$MlGouPyukrJTOyn6iCTBkuRVoEXELHj9Uga3ngtISjtb3mfkr78XS', '2', NULL, NULL, NULL, '2020-09-11 11:36:56', '2020-09-11 11:36:56'),
(16, 'joss', 'gandos@gmail.com', NULL, '$2y$10$MlGouPyukrJTOyn6iCTBkuRVoEXELHj9Uga3ngtISjtb3mfkr78XS', '1', 'gandos', NULL, NULL, '2020-09-29 04:38:44', '2020-09-29 04:38:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersx`
--

CREATE TABLE `usersx` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `usersx`
--

INSERT INTO `usersx` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@me.com', NULL, '$2y$10$LnuK.RB2hZwh56m045po6eT.SDAlUITBiQ6bMmQ2.hoqryMoW3KWC', 'admin', NULL, '1599542104.jpeg', 'yAwlcG2uqCO4rrOeNpCArU8mX3kD5TCEAP3KnJr9T75UrYGrreRk2DuK7eEo', '2020-08-24 21:24:59', '2020-09-07 22:15:05'),
(2, 'jipau', 'jipau@me.com', NULL, '123456', 'user', NULL, '1599325588.jpeg', NULL, '2020-08-24 21:31:58', '2020-10-05 06:55:29'),
(3, 'dosenku', 'dosen@me.com', NULL, '$2y$10$eIqfsnXm.z.tUeQYCBogV.OSaBNwraDjehoNKT8.eKWRF/HSO.8tC', 'user', NULL, '1600445477.jpeg', NULL, '2020-08-24 21:32:58', '2020-09-18 09:11:18'),
(12, 'ji', 'ji@me.com', NULL, '$2y$10$McdMXo55oZ2haoPKoeuboelcXDwvPA7cPmbMn9RpoScTJbbX82jVe', 'user', NULL, NULL, NULL, '2020-09-03 07:28:39', '2020-09-03 07:28:39'),
(13, 'uhuy', 'uhuy@me.com', NULL, '$2y$10$9pUykxntCK0Fu6aXMPExn.fJ402Pd.4CTlNGv/RKnre31aaMolsee', 'user', NULL, NULL, NULL, '2020-09-03 09:41:23', '2020-09-03 09:41:23'),
(14, 'admin2', 'admin2@me.com', NULL, '$2y$10$ZaVWq/b5OhUOQkJkFUORBeFZlaa/lWpj5Swc.ChGl9yeTYGsKzjcC', 'admin', NULL, '1599325486.jpeg', NULL, '2020-09-03 09:41:54', '2020-09-15 08:09:19'),
(15, 'coba', 'coba@me.com', NULL, '$2y$10$0onaVOludeQ2cIpUkvAUpObiv8fgOl5Ng5QYgSANpLdew.zQiAxTO', 'user', NULL, NULL, NULL, '2020-09-11 11:36:56', '2020-09-11 11:36:56'),
(16, 'joss', 'gandos@gmail.com', NULL, '$2y$10$MlGouPyukrJTOyn6iCTBkuRVoEXELHj9Uga3ngtISjtb3mfkr78XS', 'admin', 'gandos', NULL, NULL, '2020-09-29 04:38:44', '2020-09-29 04:38:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan`
--

CREATE TABLE `usulan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pengajuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `usulan`
--

INSERT INTO `usulan` (`id`, `judul`, `deskripsi`, `file`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Belajar Vue', 'Vue adalah ...', NULL, 2, 'pengajuan', NULL, NULL),
(2, 'Belajar vue', 'Vue adalah ...', NULL, 2, 'pengajuan', '2020-09-11 02:43:05', '2020-09-11 02:43:05'),
(4, 'Bahasa Pemrograman PHP', 'PHP adalah ...', NULL, 2, 'pengajuan', '2020-09-11 11:05:53', '2020-09-11 11:05:53'),
(5, 'Mobile Programming', 'Android Studio', NULL, 2, 'pengajuan', '2020-09-11 11:10:55', '2020-09-11 11:10:55'),
(6, 'Modul Grafika Komputer', 'Terdapat juga Animasi', NULL, 2, 'pengajuan', '2020-09-11 11:18:19', '2020-09-11 11:18:19'),
(7, 'Belajar JavaScript', 'JavaScript adalah ...', NULL, 2, 'pengajuan', '2020-09-11 11:26:24', '2020-09-11 11:26:24'),
(8, 'Cisco', 'Cisco adalah ...', NULL, 2, 'pengajuan', '2020-09-11 11:34:29', '2020-09-11 11:34:29'),
(9, 'Basis Data', NULL, NULL, 2, 'pengajuan', '2020-09-11 11:39:44', '2020-09-11 11:39:44'),
(10, 'tes', 'tes', NULL, 2, 'pengajuan', '2020-09-15 06:49:42', '2020-09-15 06:49:42'),
(11, 'kenel', 'lenek', NULL, 2, 'pengajuan', '2020-09-15 07:23:41', '2020-09-15 07:23:41'),
(12, 'Cisco', NULL, NULL, 3, 'pengajuan', '2020-09-15 10:12:02', '2020-09-15 10:12:02'),
(13, 'Mobile Programming', NULL, NULL, 3, 'pengajuan', '2020-09-15 10:12:27', '2020-09-15 10:12:27'),
(14, 'Bahasa Pemrograman PHP', NULL, NULL, 3, 'pengajuan', '2020-09-15 10:13:32', '2020-09-15 10:13:32'),
(15, 'Android Studio', NULL, NULL, 3, 'pengajuan', '2020-09-16 23:00:10', '2020-09-16 23:00:10'),
(16, 'Jaringan Dasar', NULL, NULL, 3, 'pengajuan', '2020-09-16 23:07:50', '2020-09-16 23:07:50'),
(17, 'Database', NULL, NULL, 3, 'pengajuan', '2020-09-16 23:10:13', '2020-09-16 23:10:13'),
(18, 'Belajar Vue', 'Vue adalah ...', NULL, 1, 'pengajuan', '2020-09-17 08:34:59', '2020-09-17 08:34:59'),
(19, 'tes', 'tos', NULL, 3, 'pengajuan', '2020-10-05 07:01:01', '2020-10-05 07:01:01'),
(20, 'undefined', 'undefined', 'C:\\xampp\\tmp\\php8D68.tmp', 3, 'pengajuan', '2020-10-05 07:25:23', '2020-10-05 07:25:23'),
(21, 'undefined', 'undefined', 'C:\\xampp\\tmp\\php5D7B.tmp', 3, 'pengajuan', '2020-10-05 07:26:16', '2020-10-05 07:26:16'),
(22, 'undefined', 'undefined', '1601908084.xls', 3, 'pengajuan', '2020-10-05 07:28:04', '2020-10-05 07:28:04'),
(23, 'crot', 'crot', '1601910538.xlsx', 3, 'pengajuan', '2020-10-05 08:08:58', '2020-10-05 08:08:58'),
(24, 'crot', 'crot', '1601910581.xlsx', 3, 'pengajuan', '2020-10-05 08:09:41', '2020-10-05 08:09:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulans`
--

CREATE TABLE `usulans` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `id_file` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_revisi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_dosen`
--

CREATE TABLE `usulan_dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `panduan`
--
ALTER TABLE `panduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `revisi`
--
ALTER TABLE `revisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_catatan`
--
ALTER TABLE `status_catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `usersx`
--
ALTER TABLE `usersx`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `usulan`
--
ALTER TABLE `usulan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulans`
--
ALTER TABLE `usulans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_dosen`
--
ALTER TABLE `usulan_dosen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `panduan`
--
ALTER TABLE `panduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `revisi`
--
ALTER TABLE `revisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_catatan`
--
ALTER TABLE `status_catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `usersx`
--
ALTER TABLE `usersx`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `usulan`
--
ALTER TABLE `usulan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `usulans`
--
ALTER TABLE `usulans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_dosen`
--
ALTER TABLE `usulan_dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
