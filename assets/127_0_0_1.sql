-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2021 pada 09.15
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--
CREATE DATABASE IF NOT EXISTS `coba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coba`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dessy Adelia', 'dessyadelia@gmail.com', NULL, '$2y$10$RGvaGlH35PFInSzaGSy56OnKWSLpA82f926zudqtlXnzTQ/krrvxG', 0, NULL, '2021-09-21 02:11:57', '2021-09-21 02:21:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `demo_app_surat`
--
CREATE DATABASE IF NOT EXISTS `demo_app_surat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demo_app_surat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_surat`
--

CREATE TABLE `tb_jenis_surat` (
  `jenis_id` int(5) NOT NULL,
  `jenis_surat` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_surat`
--

INSERT INTO `tb_jenis_surat` (`jenis_id`, `jenis_surat`) VALUES
(1, 'khusus'),
(2, 'dinas'),
(4, 'cepat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `surat_id` int(5) NOT NULL,
  `jenis_id` int(5) NOT NULL,
  `no_surat` char(20) NOT NULL,
  `tgl_surat` date NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_surat_keluar`
--

INSERT INTO `tb_surat_keluar` (`surat_id`, `jenis_id`, `no_surat`, `tgl_surat`, `untuk`, `perihal`, `ket`) VALUES
(1, 1, '9000', '2015-07-29', 'iwan', 'hut', 'keterangan'),
(3, 3, '03', '2015-10-28', 'gubernur jabar', 'hut bandung', 'ket bandung'),
(4, 4, '111111', '2015-11-18', 'abi', 'hut ciamis', 'keterangan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_jenis_surat`
--
ALTER TABLE `tb_jenis_surat`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indeks untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`surat_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_jenis_surat`
--
ALTER TABLE `tb_jenis_surat`
  MODIFY `jenis_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `surat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pkl_201753082\",\"table\":\"lampiran\"},{\"db\":\"pkl_201753082\",\"table\":\"surat_masuk\"},{\"db\":\"pkl_201753082\",\"table\":\"surat_keluar\"},{\"db\":\"pkl_201753082\",\"table\":\"instansi\"},{\"db\":\"pkl_201753082\",\"table\":\"pegawai\"},{\"db\":\"pkl_201753082\",\"table\":\"pengguna\"},{\"db\":\"skripsi\",\"table\":\"jurnal_pemasukan_kas\"},{\"db\":\"surat\",\"table\":\"login\"},{\"db\":\"demo_app_surat\",\"table\":\"login\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-01 07:13:47', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pkl_201753082`
--
CREATE DATABASE IF NOT EXISTS `pkl_201753082` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pkl_201753082`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `alamat_instansi` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `nama_instansi`, `alamat_instansi`, `no_telp`) VALUES
(1, 'DINAS TENAGA KERJA PATI', 'Kudus', '08967543354'),
(2, 'DINAS KOMINFO', 'Jln kantor', '08967543789'),
(3, 'DINAS PENDIDIKAN', 'PATI', '08967543398');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lampiran`
--

CREATE TABLE `lampiran` (
  `id_lampiran` int(11) NOT NULL,
  `id_suratmasuk` int(11) NOT NULL,
  `nama_lampiran` text NOT NULL,
  `file_lampiran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lampiran`
--

INSERT INTO `lampiran` (`id_lampiran`, `id_suratmasuk`, `nama_lampiran`, `file_lampiran`) VALUES
(1, 2, 'tugas', '12707-Article_Text-6753-1-10-20190217.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `hakakses` varchar(100) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`, `nama`, `nip`, `jabatan`, `hakakses`, `foto`) VALUES
(2, 'rahajeng', '123', 'Rahajeng wulansari', '1111888775553', 'Kepala Pelaksana', '1', 'ss.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `no_urut` varchar(100) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `sifat_surat` varchar(100) NOT NULL,
  `isi_ringkas` text NOT NULL,
  `catatan` text NOT NULL,
  `no_suratkeluar` varchar(100) NOT NULL,
  `index` varchar(100) NOT NULL,
  `tanggal_teruskan` date NOT NULL,
  `klasifikasi_surat` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_suratkeluar`, `id_instansi`, `no_urut`, `tanggal_surat`, `perihal`, `sifat_surat`, `isi_ringkas`, `catatan`, `no_suratkeluar`, `index`, `tanggal_teruskan`, `klasifikasi_surat`, `status`) VALUES
(1, 1, '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', ''),
(2, 2, '', '2021-09-30', '', '', '', '', '', '', '0000-00-00', '', ''),
(3, 1, '', '2021-09-23', '', '', '', '', '', '', '0000-00-00', '', ''),
(4, 1, '1', '2021-09-30', '', '', '', '', '', '', '0000-00-00', '', ''),
(5, 1, '1', '2021-09-16', '', '', '', '', '', '', '0000-00-00', '', ''),
(6, 1, '1', '2021-09-30', 'Permohonan', 'Penting', '', '', '', '', '0000-00-00', '', ''),
(7, 1, '1', '2021-09-23', 'Permohonan', 'Penting', 'isi', '', '', '', '0000-00-00', '', ''),
(8, 1, '2', '2021-09-30', 'Permohonan', 'Penting', 'isi', 'catatan', '123', 'Layanan', '2021-09-23', '1', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `no_urut` varchar(100) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `sifat_surat` varchar(100) NOT NULL,
  `isi_ringkas` text NOT NULL,
  `catatan` text NOT NULL,
  `no_suratmasuk` varchar(100) NOT NULL,
  `index` varchar(100) NOT NULL,
  `tanggal_teruskan` date NOT NULL,
  `klasifikasi_surat` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_suratmasuk`, `id_instansi`, `no_urut`, `tanggal_surat`, `perihal`, `sifat_surat`, `isi_ringkas`, `catatan`, `no_suratmasuk`, `index`, `tanggal_teruskan`, `klasifikasi_surat`, `status`) VALUES
(1, 1, '', '0000-00-00', '', '', '', '', '', '', '0000-00-00', '', ''),
(2, 3, '12345', '2021-09-30', 'Permohonan', 'Penting', 'isi', 'isi', '12345', 'Layanan', '2021-09-30', 'Umum', '0'),
(3, 1, '', '2021-09-23', '', '', '', '', '', '', '0000-00-00', '', ''),
(4, 1, '1', '2021-09-30', '', '', '', '', '', '', '0000-00-00', '', ''),
(5, 1, '1', '2021-09-16', '', '', '', '', '', '', '0000-00-00', '', ''),
(6, 1, '1', '2021-09-30', 'Permohonan', 'Penting', 'isi', '', '', '', '0000-00-00', '', ''),
(7, 1, '1', '2021-09-23', 'Permohonan', 'Penting', 'isi', '', '', '', '0000-00-00', '', ''),
(8, 1, '2', '2021-09-30', 'Permohonan', 'Penting', 'isi', 'catatan', '123', 'Layanan', '2021-09-23', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `lampiran`
--
ALTER TABLE `lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_suratkeluar`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_suratmasuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lampiran`
--
ALTER TABLE `lampiran`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `skripsi`
--
CREATE DATABASE IF NOT EXISTS `skripsi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `skripsi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `nama_akun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `no_akun`, `nama_akun`) VALUES
(1, 111, 'KAS'),
(2, 112, 'ASURANSI DIBAYAR DI MUKA'),
(3, 113, 'PIUTANG DAGANG'),
(4, 114, 'PERSEDIAAN BARANG DAGANG'),
(5, 115, 'PERLENGKAPAN'),
(26, 116, 'SEWA DI BAYAR DI MUKA'),
(6, 121, 'PERALATAN'),
(7, 122, 'AKUMULASI PENYUSUTAN PERALATAN'),
(8, 211, 'UTANG DAGANG'),
(9, 221, 'UTANG BANK'),
(27, 222, 'UTANG GAJI'),
(10, 311, 'MODAL PEMILIK'),
(11, 312, 'PRIVE'),
(12, 411, 'PENJUALAN'),
(13, 412, 'RETUR PENJUALAN'),
(14, 413, 'POTONGAN PENJUALAN'),
(15, 511, 'PEMBELIAN'),
(16, 512, 'RETUR PEMBELIAN'),
(17, 513, 'POTONGAN PEMBELIAN'),
(22, 514, 'IKHTISAR LABA-RUGI'),
(18, 611, 'BEBAN SEWA'),
(19, 613, 'BEBAN IKLAN'),
(20, 614, 'BEBAN GAJI'),
(21, 620, 'BEBAN MACAM MACAM'),
(23, 621, 'BEBAN PERLENGKAPAN'),
(24, 622, 'BEBAN PENYUSUTAN PERALATAN'),
(25, 623, 'BEBAN ASURANSI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_pembelian`
--

CREATE TABLE `jurnal_pembelian` (
  `id_jb` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `id_utang_dagang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `no_faktur` int(11) NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_pembelian`
--

INSERT INTO `jurnal_pembelian` (`id_jb`, `no_akun`, `id_utang_dagang`, `tanggal`, `debet`, `kredit`, `no_faktur`, `id_syarat`, `no_transaksi`, `id_pengguna`) VALUES
(23, 121, 0, '2021-05-14', 1500000, 0, 123, 0, '1620981071', 1),
(24, 211, 3, '2021-05-14', 0, 1500000, 123, 0, '1620981071', 1),
(25, 511, 0, '2021-05-07', 3200000, 0, 652, 0, '1621007138', 1),
(26, 211, 3, '2021-05-07', 0, 3200000, 652, 0, '1621007138', 1),
(27, 511, 0, '2021-05-14', 2600000, 0, 365, 0, '1621007169', 1),
(28, 211, 2, '2021-05-14', 0, 2600000, 365, 0, '1621007169', 1),
(29, 511, 0, '2021-05-28', 2200000, 0, 369, 0, '1621007191', 1),
(30, 211, 1, '2021-05-28', 0, 2200000, 369, 0, '1621007191', 1),
(31, 115, 0, '2021-06-19', 1000000, 0, 234, 0, '345456547', 1),
(32, 121, 0, '2021-06-19', 500000, 0, 0, 0, '3435346', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_penerimaan_kas`
--

CREATE TABLE `jurnal_penerimaan_kas` (
  `id_jkm` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `id_piutang_dagang` int(11) NOT NULL,
  `id_utang_dagang` int(11) NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_penerimaan_kas`
--

INSERT INTO `jurnal_penerimaan_kas` (`id_jkm`, `no_akun`, `id_piutang_dagang`, `id_utang_dagang`, `id_syarat`, `tanggal`, `debet`, `kredit`, `no_transaksi`, `id_pengguna`) VALUES
(32, 311, 0, 0, 0, '2021-05-01', 0, 10000000, '1620978244', 1),
(33, 111, 0, 0, 0, '2021-05-01', 10000000, 0, '1620978244', 1),
(34, 411, 0, 0, 0, '2021-05-11', 0, 1000000, '1620978369', 1),
(35, 111, 0, 0, 0, '2021-05-11', 1000000, 0, '1620978369', 1),
(36, 113, 2, 0, 0, '2021-05-19', 0, 2800000, '1620978446', 1),
(37, 413, 0, 0, 0, '2021-05-19', 84000, 0, '1620978446', 1),
(38, 111, 0, 0, 0, '2021-05-19', 2716000, 0, '1620978446', 1),
(39, 113, 1, 0, 0, '2021-05-22', 0, 3500000, '1620978510', 1),
(40, 413, 0, 0, 0, '2021-05-22', 105000, 0, '1620978510', 1),
(41, 111, 0, 0, 0, '2021-05-22', 3395000, 0, '1620978510', 1),
(42, 113, 1, 0, 0, '2021-05-23', 0, 3400000, '1620978569', 1),
(43, 413, 0, 0, 0, '2021-05-23', 68000, 0, '1620978569', 1),
(44, 111, 0, 0, 0, '2021-05-23', 3332000, 0, '1620978569', 1),
(45, 411, 0, 0, 0, '2021-05-29', 0, 1700000, '1620978613', 1),
(46, 111, 0, 0, 0, '2021-05-29', 1700000, 0, '1620978613', 1),
(47, 111, 0, 0, 0, '2021-06-19', 10000000, 0, '32443534543', 1),
(48, 112, 0, 0, 0, '2021-06-19', 1200000, 0, '232432435', 1),
(49, 221, 0, 0, 0, '2021-06-19', 0, 5000000, '234365346', 1),
(50, 311, 0, 0, 0, '2021-06-19', 0, 14700000, '35456567', 1),
(51, 312, 0, 0, 0, '2021-06-19', 4500000, 0, '43565675678', 1),
(52, 411, 0, 0, 0, '2021-07-15', 0, 1000000, '1626324809', 3),
(53, 111, 0, 0, 0, '2021-07-15', 1000000, 0, '1626324809', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_pengeluaran_kas`
--

CREATE TABLE `jurnal_pengeluaran_kas` (
  `id_jkk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_akun` int(11) NOT NULL,
  `id_piutang_dagang` int(11) NOT NULL,
  `id_utang_dagang` int(11) NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_pengeluaran_kas`
--

INSERT INTO `jurnal_pengeluaran_kas` (`id_jkk`, `tanggal`, `no_akun`, `id_piutang_dagang`, `id_utang_dagang`, `id_syarat`, `debet`, `kredit`, `no_transaksi`, `id_pengguna`) VALUES
(20, '2021-05-02', 611, 0, 0, 0, 1200000, 0, '1620978976', 1),
(21, '2021-05-02', 111, 0, 0, 0, 0, 1200000, '1620978976', 1),
(22, '2021-05-14', 115, 0, 0, 0, 500000, 0, '1620980015', 1),
(23, '2021-05-14', 111, 0, 0, 0, 0, 500000, '1620980015', 1),
(24, '2021-05-05', 211, 0, 3, 0, 2700000, 0, '1620980047', 1),
(25, '2021-05-05', 111, 0, 0, 0, 0, 2700000, '1620980047', 1),
(26, '2021-05-14', 613, 0, 0, 0, 150000, 0, '1620980081', 1),
(27, '2021-05-14', 111, 0, 0, 0, 0, 150000, '1620980081', 1),
(28, '2021-05-24', 211, 0, 2, 0, 800000, 0, '1620980115', 1),
(29, '2021-05-24', 111, 0, 0, 0, 0, 800000, '1620980115', 1),
(30, '2021-05-14', 211, 0, 1, 0, 2200000, 0, '1620980135', 1),
(31, '2021-05-14', 111, 0, 0, 0, 0, 2200000, '1620980135', 1),
(32, '2021-05-14', 614, 0, 0, 0, 1200000, 0, '1620980176', 1),
(33, '2021-05-14', 111, 0, 0, 0, 0, 1200000, '1620980176', 1),
(34, '2021-05-31', 620, 0, 0, 0, 150000, 0, '1620980212', 1),
(35, '2021-05-31', 111, 0, 0, 0, 0, 150000, '1620980212', 1),
(36, '2021-06-19', 113, 0, 0, 0, 500000, 0, '2343435', 1),
(37, '2021-06-19', 122, 0, 0, 0, 0, 1000000, '12432543654', 1),
(38, '2021-06-19', 211, 0, 0, 0, 0, 2000000, '353465476', 1),
(56, '2021-07-11', 620, 0, 0, 0, 5000, 0, '1626001328', 1),
(57, '2021-07-11', 111, 0, 0, 0, 0, 5000, '1626001328', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_penjualan`
--

CREATE TABLE `jurnal_penjualan` (
  `id_jj` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `id_piutang_dagang` int(11) NOT NULL,
  `no_faktur` int(11) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_penjualan`
--

INSERT INTO `jurnal_penjualan` (`id_jj`, `no_akun`, `id_piutang_dagang`, `no_faktur`, `debet`, `kredit`, `tanggal`, `id_syarat`, `no_transaksi`, `id_pengguna`) VALUES
(1, 411, 0, 251, 0, 2800000, '2021-05-10', 0, '1621007313', 1),
(2, 113, 2, 251, 2800000, 0, '2021-05-10', 0, '1621007313', 1),
(3, 411, 0, 242, 0, 3700000, '2021-05-13', 0, '1621007374', 1),
(4, 113, 1, 242, 3700000, 0, '2021-05-13', 0, '1621007374', 1),
(5, 411, 0, 253, 0, 3400000, '2021-05-14', 0, '1621007389', 1),
(6, 113, 2, 253, 3400000, 0, '2021-05-14', 0, '1621007389', 1),
(7, 411, 0, 254, 0, 2700000, '2021-05-25', 0, '1621007418', 1),
(8, 113, 1, 254, 2700000, 0, '2021-05-25', 0, '1621007418', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_penyesuaian`
--

CREATE TABLE `jurnal_penyesuaian` (
  `id_jps` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_transaksi` int(11) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_penyesuaian`
--

INSERT INTO `jurnal_penyesuaian` (`id_jps`, `no_akun`, `debet`, `kredit`, `tanggal`, `no_transaksi`, `id_pengguna`) VALUES
(1, 514, 5000000, 0, '2021-06-02', 1622615147, 1),
(2, 114, 0, 5000000, '2021-06-02', 1622615147, 1),
(3, 114, 4000000, 0, '2021-06-02', 1622615522, 3),
(4, 514, 0, 4000000, '2021-06-02', 1622615522, 3),
(7, 614, 2000000, 0, '2021-06-02', 1622615653, 1),
(8, 222, 0, 2000000, '2021-06-02', 1622615653, 1),
(17, 621, 500000, 0, '2021-06-02', 1622616009, 1),
(18, 115, 0, 500000, '2021-06-02', 1622616009, 1),
(19, 622, 200000, 0, '2021-06-02', 1622616039, 1),
(20, 122, 0, 200000, '2021-06-02', 1622616039, 1),
(21, 623, 100000, 0, '2021-06-02', 1622616061, 1),
(22, 112, 0, 100000, '2021-06-02', 1622616061, 1),
(25, 116, 1100000, 0, '2021-06-02', 1622616177, 1),
(26, 611, 0, 1100000, '2021-06-02', 1622616177, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_umum`
--

CREATE TABLE `jurnal_umum` (
  `id_ju` int(11) NOT NULL,
  `no_akun` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `id_piutang_dagang` int(11) NOT NULL,
  `id_utang_dagang` int(11) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_umum`
--

INSERT INTO `jurnal_umum` (`id_ju`, `no_akun`, `tanggal`, `debet`, `kredit`, `no_transaksi`, `id_piutang_dagang`, `id_utang_dagang`, `id_pengguna`) VALUES
(1, 211, '2021-05-09', 1000000, 0, '1621007466', 0, 2, 3),
(2, 512, '2021-05-09', 0, 1000000, '1621007466', 0, 0, 3),
(3, 412, '2021-05-16', 200000, 0, '1621007505', 0, 0, 3),
(4, 113, '2021-05-16', 0, 200000, '1621007505', 1, 0, 3),
(5, 114, '2021-06-19', 5000000, 0, '435456765', 0, 0, 1),
(8, 211, '2021-05-15', 321, 0, '1626162896', 0, 1, 3),
(9, 512, '2021-05-15', 0, 321, '1626162896', 0, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hakakses` int(11) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`, `nama`, `hakakses`, `status`) VALUES
(1, 'sholikhudin', 'sholikhudin', 'Muhamad Sholikhudin', 2, 'Aktif'),
(2, 'yudha', 'yudha', 'Yudha Prasetyo', 3, 'Aktif'),
(3, 'yusuf', 'yusuf', 'Yusuf Hidayat', 1, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang_dagang`
--

CREATE TABLE `piutang_dagang` (
  `id_piutang_dagang` int(11) NOT NULL,
  `no_piutang_dagang` varchar(100) NOT NULL,
  `nama_piutang_dagang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `piutang_dagang`
--

INSERT INTO `piutang_dagang` (`id_piutang_dagang`, `no_piutang_dagang`, `nama_piutang_dagang`) VALUES
(0, '0', '0'),
(1, '112.4', 'Toko Sahara1'),
(2, '112.1', 'Toko Abadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat`
--

CREATE TABLE `syarat` (
  `id_syarat` int(11) NOT NULL,
  `syarat` varchar(50) NOT NULL,
  `persen` float(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `syarat`
--

INSERT INTO `syarat` (`id_syarat`, `syarat`, `persen`) VALUES
(0, '0/10, n/30', 0),
(1, '1/10, n/30', 0),
(2, '2/10, n/30', 0),
(3, '3/10, n/30', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `utang_dagang`
--

CREATE TABLE `utang_dagang` (
  `id_utang_dagang` int(11) NOT NULL,
  `no_utang_dagang` varchar(100) NOT NULL,
  `nama_utang_dagang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `utang_dagang`
--

INSERT INTO `utang_dagang` (`id_utang_dagang`, `no_utang_dagang`, `nama_utang_dagang`) VALUES
(0, '0', '0'),
(1, '122.3', 'Toko Sahid'),
(2, '211.1', 'PT. WING INDONESIA'),
(3, '211.2', 'PT. INDOFOOD CBC SUKSES MAKMUR');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`no_akun`);

--
-- Indeks untuk tabel `jurnal_pembelian`
--
ALTER TABLE `jurnal_pembelian`
  ADD PRIMARY KEY (`id_jb`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`),
  ADD KEY `id_utang_dagang` (`id_utang_dagang`);

--
-- Indeks untuk tabel `jurnal_penerimaan_kas`
--
ALTER TABLE `jurnal_penerimaan_kas`
  ADD PRIMARY KEY (`id_jkm`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`),
  ADD KEY `id_piutang_dagang` (`id_piutang_dagang`),
  ADD KEY `id_syarat` (`id_syarat`);

--
-- Indeks untuk tabel `jurnal_pengeluaran_kas`
--
ALTER TABLE `jurnal_pengeluaran_kas`
  ADD PRIMARY KEY (`id_jkk`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`),
  ADD KEY `id_utang_dagang` (`id_utang_dagang`),
  ADD KEY `id_syarat` (`id_syarat`);

--
-- Indeks untuk tabel `jurnal_penjualan`
--
ALTER TABLE `jurnal_penjualan`
  ADD PRIMARY KEY (`id_jj`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`),
  ADD KEY `id_piutang_dagang` (`id_piutang_dagang`),
  ADD KEY `id_syarat` (`id_syarat`);

--
-- Indeks untuk tabel `jurnal_penyesuaian`
--
ALTER TABLE `jurnal_penyesuaian`
  ADD PRIMARY KEY (`id_jps`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`);

--
-- Indeks untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD PRIMARY KEY (`id_ju`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `no_akun` (`no_akun`),
  ADD KEY `id_piutang_dagang` (`id_piutang_dagang`),
  ADD KEY `id_utang_dagang` (`id_utang_dagang`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `piutang_dagang`
--
ALTER TABLE `piutang_dagang`
  ADD PRIMARY KEY (`id_piutang_dagang`);

--
-- Indeks untuk tabel `syarat`
--
ALTER TABLE `syarat`
  ADD PRIMARY KEY (`id_syarat`);

--
-- Indeks untuk tabel `utang_dagang`
--
ALTER TABLE `utang_dagang`
  ADD PRIMARY KEY (`id_utang_dagang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurnal_pembelian`
--
ALTER TABLE `jurnal_pembelian`
  MODIFY `id_jb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `jurnal_penerimaan_kas`
--
ALTER TABLE `jurnal_penerimaan_kas`
  MODIFY `id_jkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `jurnal_pengeluaran_kas`
--
ALTER TABLE `jurnal_pengeluaran_kas`
  MODIFY `id_jkk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `jurnal_penjualan`
--
ALTER TABLE `jurnal_penjualan`
  MODIFY `id_jj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jurnal_penyesuaian`
--
ALTER TABLE `jurnal_penyesuaian`
  MODIFY `id_jps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  MODIFY `id_ju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `piutang_dagang`
--
ALTER TABLE `piutang_dagang`
  MODIFY `id_piutang_dagang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `syarat`
--
ALTER TABLE `syarat`
  MODIFY `id_syarat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `utang_dagang`
--
ALTER TABLE `utang_dagang`
  MODIFY `id_utang_dagang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jurnal_pembelian`
--
ALTER TABLE `jurnal_pembelian`
  ADD CONSTRAINT `jurnal_pembelian_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_pembelian_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`),
  ADD CONSTRAINT `jurnal_pembelian_ibfk_3` FOREIGN KEY (`id_utang_dagang`) REFERENCES `utang_dagang` (`id_utang_dagang`);

--
-- Ketidakleluasaan untuk tabel `jurnal_penerimaan_kas`
--
ALTER TABLE `jurnal_penerimaan_kas`
  ADD CONSTRAINT `jurnal_penerimaan_kas_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_penerimaan_kas_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`),
  ADD CONSTRAINT `jurnal_penerimaan_kas_ibfk_3` FOREIGN KEY (`id_piutang_dagang`) REFERENCES `piutang_dagang` (`id_piutang_dagang`),
  ADD CONSTRAINT `jurnal_penerimaan_kas_ibfk_4` FOREIGN KEY (`id_syarat`) REFERENCES `syarat` (`id_syarat`);

--
-- Ketidakleluasaan untuk tabel `jurnal_pengeluaran_kas`
--
ALTER TABLE `jurnal_pengeluaran_kas`
  ADD CONSTRAINT `jurnal_pengeluaran_kas_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_pengeluaran_kas_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`),
  ADD CONSTRAINT `jurnal_pengeluaran_kas_ibfk_3` FOREIGN KEY (`id_utang_dagang`) REFERENCES `utang_dagang` (`id_utang_dagang`),
  ADD CONSTRAINT `jurnal_pengeluaran_kas_ibfk_4` FOREIGN KEY (`id_syarat`) REFERENCES `syarat` (`id_syarat`);

--
-- Ketidakleluasaan untuk tabel `jurnal_penjualan`
--
ALTER TABLE `jurnal_penjualan`
  ADD CONSTRAINT `jurnal_penjualan_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_penjualan_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`),
  ADD CONSTRAINT `jurnal_penjualan_ibfk_3` FOREIGN KEY (`id_piutang_dagang`) REFERENCES `piutang_dagang` (`id_piutang_dagang`);

--
-- Ketidakleluasaan untuk tabel `jurnal_penyesuaian`
--
ALTER TABLE `jurnal_penyesuaian`
  ADD CONSTRAINT `jurnal_penyesuaian_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_penyesuaian_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`);

--
-- Ketidakleluasaan untuk tabel `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD CONSTRAINT `jurnal_umum_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `jurnal_umum_ibfk_2` FOREIGN KEY (`no_akun`) REFERENCES `akun` (`no_akun`),
  ADD CONSTRAINT `jurnal_umum_ibfk_3` FOREIGN KEY (`id_piutang_dagang`) REFERENCES `piutang_dagang` (`id_piutang_dagang`),
  ADD CONSTRAINT `jurnal_umum_ibfk_4` FOREIGN KEY (`id_utang_dagang`) REFERENCES `utang_dagang` (`id_utang_dagang`);
--
-- Database: `surat`
--
CREATE DATABASE IF NOT EXISTS `surat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `surat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user` text NOT NULL COMMENT 'Username Login Aplikasi',
  `pass` text NOT NULL COMMENT 'Password Login Aplikasi',
  `level` text NOT NULL COMMENT 'Level Login Aplikasi',
  `foto` longblob NOT NULL COMMENT 'Isi Foto',
  `foto_nm` text NOT NULL COMMENT 'Nama Foto',
  `foto_tipe` text NOT NULL COMMENT 'Tipe Foto',
  `foto_ukur` int(50) NOT NULL COMMENT 'Ukuran Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`user`, `pass`, `level`, `foto`, `foto_nm`, `foto_tipe`, `foto_ukur`) VALUES
('Administrator', '123', 'Admin', 0xffd8ffe000104a46494600010101006000600000ffdb0043000302020302020303030304030304050805050404050a070706080c0a0c0c0b0a0b0b0d0e12100d0e110e0b0b1016101113141515150c0f171816141812141514ffdb00430103040405040509050509140d0b0d1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc00011080096009603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f008ee3fd7c9fef1fe751d4971febe4ff0078ff003a8ebf4d5b1f04145145001451450014515e5ff12be3be91e09f32cac76eabac0f94c519cc509ff6d877ff006473f4ac2b57a7878f3d47646b4e94eacb960ae7a8515f156b5f14bc4fe21bc79af756baf29b3fe8f0c8d1443db6a91c7d79ac05f135e34c1a1d46e2294721a299f8fc73c7e75e04b3c827eec1b5ea7ad1cae4d6b23ef4a2be2ff0cfc6ef18785eeb7a6a926a56e4fcd06a2c6553cf62791f81afa27c2bf1efc27e23b4b633dfae957b22fcf6f740808de9e663691e8723e82bbf0d9a50c468df2bf3ff003392b606ad1d52baf23d1e8aada7ea967ab5b8b8b1ba86f20270248240eb9fa8ab35eb26a4ae8e069a766145145310514514005145140125c7faf93fde3fcea3a92e3fd7c9fef1fe751d0b600a28a2800a28ae6fe22f8a8782fc1ba96aa30678a3db029fe291b85fc89c9f606b3a95234a0e72d91508b9c9456ecf32f8f5f17a6d2449e18d01f3a94a3175708d830af52a0f638ea7b0fd3e6bf2b10c924877b6724b36053e6d4259ef25babb91a7b8b87324b239c9249cfebdebb3f84ff06f56f8d1e26fb3da878f4d8587da6e88f957fd91ead8afcd31d8e75a4eb55764bf03edf07837a51a4aed9c8e990dc6acbb20b79266ce024684e7e95dee83fb3ff8cbc51046b6ba79b3473c4aebdbe95f7afc25fd987c3fe11b1482dac95e5006669143337be6bd8adbe1da69e8aa908551df02be4aae69524ff74b43ece8e51429ff001e577e47e65dd7ec4be27f2d5d35175971d0818af3cf881f033c69f08601a86a36ad79a5f479e219f2ff00def4afd6fd43c28abc746c64715c6f89bc3b6baa69f3585fc31cf14ea637475c86edd0d674f32ad16b9f546d572ac3548feef467e5df81fe215f7857538eef4c9ca956dcd193f24838c838ec71d2bec9f04f8cac7c73a0c3a958b707e49623d629300953f98e7d0d7c8df1bfe16c9f097c6923dac6c347bd7768931c464311b7f2e95dcfecc7e28363e2cb9d219c9b7d4a0df1affd344cb0ff00c777fe42bf42c9b1ce352314fdc97e67e779a60dc54b997bd13e9ea28a2bef8f910a28a2800a28a28024b8ff005f27fbc7f9d47525c7faf93fde3fcea3a16c01451450015e31fb516a06dfc23a45a838fb45f6e3cf3858d81ffd0c57b3d783fed6eaabe17d06666da52f1e31ff00024cff00ec82bcbcd2ff00539dbcbf3477607fde237feb43c0b43f0b6a1e37f1558e87a72ee9ee98032632225cf2c6bf517e017c31d33c0de11b3d2f4eb5c242b87908e646fe2627b926be33fd9774f4b3b3d7b5eb6b4fb75fa158218f705c903a67b57d25a3f8d3e2ce976ab369da55bcaf9c9b593604031d179049fa915f8ce3aa3ad3f677b247eb996d254297b54af297e47d67a2d98b5dbf2f2a3ee815d1450adcc79d9b857cbff0e7f682f1dcfaf476de29d02d6cad73b5ca42c8ff0099623fcfe35f4b687f12346d5343374b04892042c63db9381e95c318c53b499d5579da5348a3ac5990ae02edcf18af39f12692245deebf70e41f4aa9f113f6987f0bcd6a6d3c13a86b8970849369200d1e1881904771cf5ef5e67acfed2b7daf4252d7c13ab585c6ec0b5bcb5943b8ee1485da7f3aca549cb589bd2aae9bb491e19fb68683f68f02c576900135add020e33df3fe35f3afc11912c7e29e8054141e6ba63fdf89c0fe75f547c7ed7078d7e036a9a90b49aca7872cd6d7084346e8d9c1c81e9f91af93be16406f7e28f87bc963f34f14b91e8b9623f215f539349a718f5525fa1f2f9e4539b92d9c4fb428a28afd90fcb028a28a0028a28a0092e3fd7c9fef1fe751d4971febe4ff0078ff003a8e85b005145140057877ed65a7fdabc19a44e09cc17fd3b731b7f857b8d175f0ff004cf88fa2ea7a5ea8aa61481a68f24fcafb59411f40c6bc8cda4a181ab296c97ea7a79653956c653a71ddb3cc7f62ed166bef05eacca373adf3301f48d08fe75e8de20b1f885729e2192cb556d2b528210748b5584bc73c81812b2381f2e57701c63246580ac3fd8a217d1ecb54d1ae306e21d4258c9e9bc28550df88515f6743e1fb3ba8c798986ea194735f87d7a96af292573f66c3c7970d1a72bad3a6e789f857c3fe24b6f05c77de2ad4239b549bcc95ecc1593ec7f313121941c3929c31007cd8fc3da3c20b02f845ee195e391940daae702b2fc696f05ada4306d3b778eb5ad6321b5f07dbed8098dbe638ec2b964f9e6e4958ed8c6d4a306efa9e57f1034ff16ea1a05fcde119aced755b789a5b686f2338bb983710eefba9c03f331c64a8e99238bd3b5ef8916f6ba3deeb7058bdd5e5d4893e8d0c789ace10c446cce0b2b311d42b0c7e83e90f0cc106a226da8be596047b1abbaa7866d5712ba2fcbceec63156a6a30e5e54633b2abcce4fd3a1f2b7ed49691dbfc11f104a611134b1a67031cb3aa9fe75f2cfecc7f0e6faeaf17c5573088f4eb3492ded9a43f34b2f2acca3d14311f8d7d6ff00b5c5acb79f0d753d36d53ce9e79218e2881fbede6a951f98ae8345f86317c37fd9ef4bd1e68604beb6816491d40dfe61932c49039cef3f90af7b27c47b1ad4636d6535fa1f3f9b61d56a756727a460fefd59e75451457ee07e3e14514500145145004971febe4ff78ff3a8ea4b8ff5f27fbc7f9d4742d8028a28a002b4342d51b48d41270091d1b1d7159f4abd6b1ad46188a72a5515e2f466b46b4e8548d5a6ed25aa2f69b6369e1df898b79a7c71470ea5189dbc8e1776ee4e3b1c1c7e15f50786f50fb4c2038da147e7c57cadb8457167719dad1c98dd9e8083fd40af5dd37c5f2586930ca4e4803bfe15f8567181fecec5ba29dd74f4feb43f6ccaf14f32c22acd59f5f5feb53abf8a7a8fd81a09d2d24ba8962930a838f3768d818ff083c8c9e2b2ac3e27f88ee3c0f1c7ff000874c6f523572924d1aa93d0a890139ae375cf8dd637535d69d179b713c27f7c554e138cfe3c53b4cf14dca69ab766e2e1a06f9963382b81dc77ed5e429b89f430c34e505657b1ed3f0f6ee29a19678eda5b58a770563994a90768cf07deba0d6a6511804e14fe55e63e19f8a9a4ea5247a79ba105f152cab271bb1d715d2cdac7dab4bcb312c7919f4fad4b95d1e755a4d4eecf30f1b6927c51e2ed32d918aa5acbf6a6f9377dccedfa7cc4727a62b3fe2778cadef6ce0d22ce633ac6079b267393c1393f503f2aa3e36d4a5b3ba95219995e4f919949076f523e84e3f2ae11bad7e97c3b91c64a9e3eb3dbe15fabfd0f80cfb39945cf03497abfd109451457e927e7a14514500145145004971febe4ff0078ff003a8ea4b8ff005f27fbc7f9d4742d8028a28a0028a28a00924845e5ac9016dbbd701bfba7a83f81c1a9fc27e2896f246b09c0f323262619e8c0f355e36da6bccf5d9b53f0ceb977ac598696dbed4ed220edf31cd7e79c5b8684a34eb7dadbf53f40e13c4ce12a94beceff00a1f43dbc3a8e9fa92cda35c2472480078a51947c7a9c1fe55df7fc245e30bab7118b4d3d1766093700f3ed88ebc7fc07f16348d596de47953732f28dd9bd2bd4ec3e2069692f96638551be61306fe2fa57e5fef45d99fa97b476bc75208ed7ed17026d51c5c5d6076c28f503f2156f5af12436964aa1b66d4da17bfb562f88bc79a4e9ab3dd4b2a018f957bb9f615e65ff000945d6b97b24ee862b7311f295baf5519fcb3f9d766070b2c6622146f6e6763ccc7e2561a84eb357e5572c6b57cd7d79248c7249f5cd65d3e46dc6995fd03468c70f4a34a1b4558fc1ab55957a92ab3ddbb8514515b188514514005145140125c7faf93fde3fcea3a92e3fd7c9fef1fe751d0b600a28a2800a28ac0f1578e348f07da99750b9512e094b78f9924f603fa9e2a275234e2e737648a8c6537cb157668ea9a83597d9218504b7d7d731d95a427fe5a4d230551f4c9c9f615d16b1e079347d73c49a4cf1ee486fee21dafdd448c14fe58af0bf843e36bbf197ed15f0faeb50056d135eb3115b29ca463cf4fccf4c9afd13fda5bc0b1697a85bf8aa18b6dadf62def4a8e1660308e7fde031f551dcd7e5bc4589963a17a7f0c7fab9fa470dd38e0eb72d4f8a6bfa47c113fc256bc9647d3ee25b494360f947a73d715bfa27c1bf132d88f3b5bb849327e653d47a815eada5e930dbeb4ccc9be263cb2f515ea674db04d391e225db1c0ea735f07f58a9b5cfd06546945dec781f85be1749a7c7bb569db50b8df94f309276fb8ae8754f0b5ccd06ab716b0977d3f4c9af842a306458b0f228f7f2d5c81dc803bd7a7d8e8f12bb4b2a8073f74f5af46f829e14b7d6b56d7efe48564b6b6b36b31bba33ca3e61f828ff00c7abb72eab53eb94e717aa773cdccfd9fd4ea41ad1a3e3cb5ba8afade2b882412c32a87475e841e86a5af07f87ff00134f82f509744d65c9d284acb1dc60936ed9e4103aa939f719cd7b9dadd43796f1cf6f2a4f048372491b06561ea08eb5fbae0f190c5c2f1dfaa3f11c461e587959eddc968a28aef39028a28a0028a28a0092e3fd7c9fef1fe751d2de4a90bcd248eb1a2962ccc7000cf526bc83c69fb405969b24969a0c2ba85c2fca6e64e2207d8756fd07d6b96be26961a3cd51d8de9519d695a08f59b9ba86ce169ae258e089465a49182a8fa935e77e24f8eda0e91be3d3f7eaf7038fdd7cb103fef1ebf8035e0fae789355f154df68d4ef65b83d42b1c2a67d17a0aa50c0bbb03f1e6be5f119d5496945597e27b94b2d8475a8ee76de22f8cde22f11078629c6996add52d46188f42dd7f2c572b05b89a27791fcd99cf249c935188433804e79e71c56a246b1c7f27ebfcebe7aad6a959dea49b67b14a9c29ab45591d6fc13b84d2fe30f802e180d89aed813cf6fb4257edeeade1db2f15f872f34ad4e213d8df446375ef83d083d883820f62057e0d68faa49a2ebfa76a51fdeb2b88ee571ea8c1c7f2fd6bf79bc1fae5b6bfe1cd36fed64135a5ddb47716f27f7e3750ca7f222a63b599726e324d1f0f78e7e1deaff0009fc54d617aed3419df6d76061678f3c1f623a11d8fb62b56c3c4c7eca23f90a918c8afb1bc71e09d33e206832e9ba846adfc50cc07cf0bf661fd47715f2eeb5e0eb3f06de5c596a0cab3dbb60a0fe2e3208f6239fc6be3730c1bc34b9e1f0bfc0fbbc06611c5c392a2f7d7e3e6735797976b1451db42d35d5db88618f072eec7000fc6beb6f87be0d5f02781ecf4c6daf77b3cebb9547fac998658ff41ec0579afc08f01c3acdf278bef203e4400c5a74722ff174793ff651f8d7b6eb17021d36ea539c471339e3d0135ece538574a9fb69ef2dbd0f0338c67b59fb186d1dfd7fe01f809e2d41fdb17efddee1f3ff007d1a7f863c5dac7836e0be9d78d1c44e4c0ff346feb95e9f8f07deabf8824f32ed5f39f31b71ddefcd5775568ce7871eddfb57b919ca12e68bb33c0945495a4b43dd7c2ff1d34dd4b643ac42da64e78f3972f0b1f5cf55fc723debd2adee22bb852682549a1719592360cac3d411d6be3e690491018c9e9db81fe735b3e13f1ceade0bb82da7dc0689befdaca098dbfe03d8fb8c1afa2c2e7338da35d5d77ea78d5f2e8cb5a4eccfab28af3bf0afc6cd175b548b513fd917678fdf36626fa3e38fc71f5af418278eea149a191668641b9248d832b0f50475afa8a388a58857a72b9e1d4a3528bb4d587d14515d0627cb9f13be246ade32d62f6d04cd6da5a49f25b21da1bddbfbc7ebc570a91ede983deac6a1741b54980e923301f504ff009fc29aacb1a8c74cd7e5f52a4eacb9e6eed9f6d08c69ae58ab22d431975c9cb73532fca0375f6f4fc2aa4337cbf7bbe3da9d24c0fca7e623838acac6a5db59236dc4481b6f1f2e091f5f4cd59572a18eeebd867f0ae6aeacd249048acd1483812236187e3dc53ed6faf64691677492251f2cbd18f2382071f88c54b434cd56bc5662a3ee81ce7a1afdb9fd99fc6107887e07782eee47512368d6b316638eb10de73eceae3f0afc31f3f733607cbea719afd4bfd8ff0049b1f8c3fb1de9fe1fbe2ceb02df6912b2b95383233a8e3a80b2af1ed5b415d344c8f67f89bfb627823c13f6ab1d26ea1f14ebd09dad6d63283146dcfcaf28c8cf07e55c9e39c57ccde2dfdb4bc0be2ad52c47c43f0feb1a6eaa07cd73e1f0b24421ddc2bef6058f5e546457c3be1fd7b53f84fe2cd43489a3fb42d95e49677da7ca76866462adb5b1f2b71f4f51c57d25e15baf87bf16fc3b2a1b24b9962066b9d3e65027b7c606579f954f4ca9e78c118ae5a9cb3f7271ba36a739d17cf0767dcfadfe13fede3f0fbc41adcda243a75de89e12b454b7d3b5c9e3d91310bf32491fde40bfdfe57a93b7193f4578d35eb5b7f871aeeb76b3c773691e9571771cf0386474113306561c1040eb5f8e3abfc07d5b4ff1a697a4f87ccf7f65ac5dc7650177cc96f2c8c142c801e579fbd8e0119f53fa05fb48db7fc33cfec93ad693e1c9556c61d2e3d1e48ae32dbfce2b0bcabc8c390ecde84f515d90f795d1cfcd73f24f529ccdfbc007ca73c0e7ae29824631f6eb9048aaf74040ec33918fad579249248c0691844bc0da706b0342ec3246d26c07a8c9ff003da9f3654e7a1ed9a82d4a450e130138ce0d2cb2676f5c03eb544dc376e9b24f19ce735d3786fc6fad78432fa75d94898867b790078dfea0fb771835ccee5e7e5c0c91dffcf5a59ae36a82a36903a93deb5a72941f345d99128a92b495cfa7fe1bfc468fc7d6d720db0b5bbb6dbe646afbc104751c7a83c515f3af81fc6b71e13d72eae616286483cb65f5f981cfe868afa4a19cf2c146aabbee78d532e5295e0ec8e5b54936cd74fde294b0ff00beaa447dd18c9e1a8a2be619ed925ac87cb3dc03e94f327ee8b73d483f87ff00ae8a2a408cee650eed95cedc03ed9feb4ff30e760e945148a4558a50eec31d0f7afd2fff008258eb92dd7c37f19e90ff0072cb558ae90ffd7587691ff9007e74515b53dc97b1f2e7edf7e17b6f01fed49af5c59aafd9b56860d4a5800c0579176b91ee590b7fc0abc934cb97b1b982f6ca59acaf231ba39ede4d8c8dea08fd4743e94515cb5b491ad3d8fb83fe09eeb2fc58f88b75ae6b6526b9f0cc1955dbf249349f2a4aa3f84850d91d33823a9af54ff82996a9258fecf76d6ebc8bed76de17ff007563964c7e6828a2bba9ff000ce7d99f94d76dba43d72706aa6ef2e42074f4faff00fae8a2b98d192c332ab1600f5c60e2a565dcc4938c514502426e2b9ee074149236e5c8e3fcff00f5e8a2ac666594c5a49cf521b68cfa0a28a2a00fffd9, 'Foto-150.jpg', 'image/jpeg', 5794);
INSERT INTO `login` (`user`, `pass`, `level`, `foto`, `foto_nm`, `foto_tipe`, `foto_ukur`) VALUES
('demo', 'demo', 'User', 0x89504e470d0a1a0a0000000d49484452000000c8000000cd0803000000ca4bcf1f000000097048597300002e2300002e230178a53f7600000a4f6943435050686f746f73686f70204943432070726f66696c65000078da9d53675453e9163df7def4424b8880944b6f5215082052428b801491262a2109104a8821a1d91551c1114545041bc8a088038e8e808c15512c0c8a0ad807e421a28e83a3888acafbe17ba36bd6bcf7e6cdfeb5d73ee7acf39db3cf07c0080c9648335135800ca9421e11e083c7c4c6e1e42e40810a2470001008b3642173fd230100f87e3c3c2b22c007be000178d30b0800c04d9bc0301c87ff0fea42995c01808401c07491384b08801400407a8e42a600404601809d98265300a0040060cb6362e300502d0060277fe6d300809df8997b01005b94211501a09100201365884400683b00accf568a450058300014664bc43900d82d00304957664800b0b700c0ce100bb200080c00305188852900047b0060c8232378008499001446f2573cf12bae10e72a00007899b23cb9243945815b082d710757572e1e28ce49172b14366102619a402ec27999193281340fe0f3cc0000a0911511e083f3fd78ce0eaecece368eb60e5f2deabf06ff226262e3fee5cfab70400000e1747ed1fe2c2fb31a803b06806dfea225ee04685e0ba075f78b66b20f40b500a0e9da57f370f87e3c3c45a190b9d9d9e5e4e4d84ac4425b61ca577dfe67c25fc057fd6cf97e3cfcf7f5e0bee22481325d814704f8e0c2ccf44ca51ccf92098462dce68f47fcb70bfffc1dd322c44962b9582a14e35112718e449a8cf332a52289429229c525d2ff64e2df2cfb033edf3500b06a3e017b912da85d6303f64b27105874c0e2f70000f2bb6fc1d4280803806883e1cf77ffef3ffd47a02500806649927100005e44242e54cab33fc708000044a0812ab0411bf4c1182cc0061cc105dcc10bfc6036844224c4c24210420a64801c726029ac82422886cdb01d2a602fd4401d34c051688693700e2ec255b80e3d700ffa61089ec128bc81090441c808136121da8801628a58238e08179985f821c14804128b2420c9881451224b91354831528a542055481df23d720239875c46ba913bc8003282fc86bc47319481b2513dd40cb543b9a8371a8446a20bd06474319a8f16a09bd072b41a3d8c36a1e7d0ab680fda8f3e43c730c0e8180733c46c302ec6c342b1382c099363cbb122ac0cabc61ab056ac03bb89f563cfb17704128145c0093604774220611e4148584c584ed848a8201c243411da093709038451c2272293a84bb426ba11f9c4186232318758482c23d6128f132f107b8843c437241289433227b9900249b1a454d212d246d26e5223e92ca99b34481a2393c9da646bb20739942c202bc885e49de4c3e433e41be421f25b0a9d624071a4f853e22852ca6a4a19e510e534e5066598324155a39a52dda8a15411358f5a42ada1b652af5187a81334759a39cd8316494ba5ada295d31a681768f769afe874ba11dd951e4e97d057d2cbe947e897e803f4770c0d861583c7886728199b18071867197718af984ca619d38b19c754303731eb98e7990f996f55582ab62a7c1591ca0a954a9526951b2a2f54a9aaa6aadeaa0b55f355cb548fa95e537dae46553353e3a909d496ab55aa9d50eb531b5367a93ba887aa67a86f543fa47e59fd890659c34cc34f43a451a0b15fe3bcc6200b6319b3782c216b0dab86758135c426b1cdd97c762abb98fd1dbb8b3daaa9a13943334a3357b352f394663f07e39871f89c744e09e728a797f37e8ade14ef29e2291ba6344cb931655c6baa96979658ab48ab51ab47ebbd36aeeda79da6bd45bb59fb810e41c74a275c2747678fce059de753d953dda70aa7164d3d3af5ae2eaa6ba51ba1bb4477bf6ea7ee989ebe5e809e4c6fa7de79bde7fa1c7d2ffd54fd6dfaa7f5470c5806b30c2406db0cce183cc535716f3c1d2fc7dbf151435dc34043a561956197e18491b9d13ca3d5468d460f8c69c65ce324e36dc66dc6a326062621264b4dea4dee9a524db9a629a63b4c3b4cc7cdcccda2cdd699359b3d31d732e79be79bd79bdfb7605a785a2cb6a8b6b86549b2e45aa659eeb6bc6e855a3959a558555a5db346ad9dad25d6bbadbba711a7b94e934eab9ed667c3b0f1b6c9b6a9b719b0e5d806dbaeb66db67d6167621767b7c5aec3ee93bd937dba7d8dfd3d070d87d90eab1d5a1d7e73b472143a563ade9ace9cee3f7dc5f496e92f6758cf10cfd833e3b613cb29c4699d539bd347671767b97383f3888b894b82cb2e973e2e9b1bc6ddc8bde44a74f5715de17ad2f59d9bb39bc2eda8dbafee36ee69ee87dc9fcc349f299e593373d0c3c843e051e5d13f0b9f95306bdfac7e4f434f8167b5e7232f632f9157add7b0b7a577aaf761ef173ef63e729fe33ee33c37de32de595fcc37c0b7c8b7cb4fc36f9e5f85df437f23ff64ff7affd100a78025016703898141815b02fbf87a7c21bf8e3f3adb65f6b2d9ed418ca0b94115418f82ad82e5c1ad2168c8ec90ad21f7e798ce91ce690e85507ee8d6d00761e6618bc37e0c2785878557863f8e7088581ad131973577d1dc4373df44fa449644de9b67314f39af2d4a352a3eaa2e6a3cda37ba34ba3fc62e6659ccd5589d58496c4b1c392e2aae366e6cbedffcedf387e29de20be37b17982fc85d7079a1cec2f485a716a92e122c3a96404c884e3894f041102aa8168c25f21377258e0a79c21dc267222fd136d188d8435c2a1e4ef2482a4d7a92ec91bc357924c533a52ce5b98427a990bc4c0d4cdd9b3a9e169a76206d323d3abd31839291907142aa214d93b667ea67e66676cbac6585b2fec56e8bb72f1e9507c96bb390ac05592d0ab642a6e8545a28d72a07b267655766bfcd89ca3996ab9e2bcdedccb3cadb90379cef9fffed12c212e192b6a5864b572d1d58e6bdac6a39b23c7179db0ae315052b865606ac3cb88ab62a6dd54fabed5797ae7ebd267a4d6b815ec1ca82c1b5016beb0b550ae5857debdcd7ed5d4f582f59dfb561fa869d1b3e15898aae14db1797157fd828dc78e51b876fcabf99dc94b4a9abc4b964cf66d266e9e6de2d9e5b0e96aa97e6970e6e0dd9dab40ddf56b4edf5f645db2f97cd28dbbb83b643b9a3bf3cb8bc65a7c9cecd3b3f54a454f454fa5436eed2ddb561d7f86ed1ee1b7bbcf634ecd5db5bbcf7fd3ec9bedb5501554dd566d565fb49fbb3f73fae89aae9f896fb6d5dad4e6d71edc703d203fd07230eb6d7b9d4d51dd23d54528fd62beb470ec71fbefe9def772d0d360d558d9cc6e223704479e4e9f709dff71e0d3ada768c7bace107d31f761d671d2f6a429af29a469b539afb5b625bba4fcc3ed1d6eade7afc47db1f0f9c343c59794af354c969dae982d39367f2cf8c9d959d7d7e2ef9dc60dba2b67be763cedf6a0f6fefba1074e1d245ff8be73bbc3bce5cf2b874f2b2dbe51357b8579aaf3a5f6dea74ea3cfe93d34fc7bb9cbb9aaeb95c6bb9ee7abdb57b66f7e91b9e37ceddf4bd79f116ffd6d59e393dddbdf37a6ff7c5f7f5df16dd7e7227fdcecbbbd97727eeadbc4fbc5ff440ed41d943dd87d53f5bfedcd8efdc7f6ac077a0f3d1dc47f7068583cffe91f58f0f43058f998fcb860d86eb9e383e3939e23f72fde9fca743cf64cf269e17fea2fecbae17162f7ef8d5ebd7ced198d1a197f29793bf6d7ca5fdeac0eb19afdbc6c2c61ebec97833315ef456fbedc177dc771defa3df0f4fe47c207f28ff68f9b1f553d0a7fb93199393ff040398f3fc63332ddb000000206348524d00007a25000080830000f9ff000080e9000075300000ea6000003a980000176f925fc54600000300504c5445ffffffffff00ff00ffff000000ffff00ff000000ff000000ad272a90171bf80818673e40e40818eb1828d218289743496d1828580819480818511828380818a9a6a72808182e1828ebd8e8180818f8e8f8b9b8c8080818181828e8e8f874747ad7d8e89698a85d5f62424548b1b4b7d1d4d7909192d8e8e997aaaae8f8f8081a18182b29778b89b7c9c6485b50649773318a452468314d90598fab93135216081808e8f8e7357f274d883b152b0b81ae58a2cd71364a1c749c4028390896ab6e88b828dfeac9779927b8e84857692c67793ba8d82888a83888a82848591898b838a8d808475908b8e81898b828a8c83e788351a8c828b8d838687928a8c818586810b8d82867781878882e97a94cb8d808677908b8d818778916889838c6ce9ecbe818d1e83288982898a838b8c84ec7d85fa8bb0897a918a8b82898a828b8c838a8b838c7d848d6e84eb3b88cb8c708c8d818b8c818c8d828b8c828c8d838e0ec6fcad17edbe19dc8d808889008383c08363818afb5188c9118d8db08e8eb37ebed53aeb14dc5c66190914867683bf1f48d919258afb16fc8c808797808686808585808d8d818484808c8c618d8d828c8c828282808b8b828686818a8a828d8d838989828585818c8c838b8b838d8d848a8a838787828484818181808989838686828d9d85f78783b52522a282818f2f2b593936ef8f8e6e8e8e77a7818888628c8c648888539e8d818d8c128c9b72fe8d437d8c338d8be17bca526d9c348ebd256cbcac5998427a992327868287c6618bfa238dac1627d6108cca31a99823ab38d1d5848186d53145c4308af914d78653aeece85382808cda2546d532c91622f2818084d3013382818381808a27869581b08481808702a16975e4f902a15dfa295b12c12d22b13c14d3defd1cded2a13e64c39f8e8e6e81808ab3b30c9645bcd7d75d5b4b1f81808d4150bef3429922f29913d37512c2ac6908c900d08b0110cd1302b712d2af80808e80808580808f81818e818184808086f110f380808280808581818481818180808381818281818302f2ff8f8f8181818080808ffffff0b981c760000010074524e53ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0053f7072500004dbd4944415478daecbd79805c5599f7ffbdf756dd5b6b5755772dddb57755f552bd65ebee2c74564212960409016511a3afa08c22e3300ace888ae0283a3a838c22281811d241022a842c2cd9f774d249bad36bf55255bd565775eddb5d7f7f8033a2099be8f0be3f4fff935aeebde793673be739e7394548f87fa391f83bc8df41fe0ef27790bf83fc1de4ff7720f76d7e5790a6ff1b38eecd6adf15e4ca7b3ffa1c5f3d9da1df0de4be8c78c7479de3e960632979f7bb80487991fbc2475c1efb5588174c7ff2aeec4f5ecfaa0775b92f68bff7d135f3598d0eb252bae75d249211ab8cfabcf0d58f2c472e2641571549f8df05844867497022f7e047551ed33224a70eabe647dfcd6b694a7bdcf2b144e2ab1f4d7968ed101439cdd4c4bbba5f36629a9e052b06b77f14c3475c1c7326329aa0b1ef917701a9cbe5e42734a5cc84eac85d1f398e5cc238c1cbdd9ae055b47cdbb67702b90f808c8110239d73c9c8573e5a1c7788b471c2a1764451fe6246774476dfdb8dfb6dc987bb9ad89c1bd1e3ac60a4c4b0cefcc38f12871663f65c5645f67a387b77991ef4c39794c8bdd9ded1e1a064deb051e131345d8ec8c73f3aceeb8e29d1b92abf4a4e8a0ca7ead6c2659fbd744094b206a93822292d58a59ee66c0859c7ee78e22381b135a1d542d1c94518d15ccac6bc89dc5e9de2d23672d43e26e915a3f930b4bb2b0e8e849d2723ba8f844cee3b328831f7b879f1c9e1dca97ebb1e397b159bbd34888eb0635c544c0d3cbd135096f62b57950ba98f80f3fa2a9727613a1b98e5a2c66483fb18093b72cc3b78ad0a3a3b8609498c3b03695c53f2b1e0b9c2f814fdc5fff5d1ee10f4f02c5faaaaef30e46421c91a2147f3d9e43b80106eb381c74c948eb6e0b91de4eb15e1a2c31c99f95f96c983e7dc6344763a7978c1318b452e43dc594ed41bd50ed3a5ddef8a1b7ac5c6f36a1133f327947d0af91224cf6a9132b23ff9df74573137aacf893cda5e27b3329ac5925036b77847057e716989acde294894947511a690355fd6b8e4e0ebae786c4e7994fe5f94c9bd496eac5a2c3662c1dec5b26576d6e90cabcd9a1dd7b50dbc836abd5ed6249d259a622a5b7938345717bb7aa3a85993ca589cb22fffafe9951532c778d7e2ce91ed25a306515ae24bb7463d587050588c55151757adcd1629c45f2e626aa614ac63d439462a9726f0e2f257ae3dc748a1eb6efedfe0d83e1e22f265b373cf64ec43d6a871825ffb1c36a2d3da57ebe86242ee872f0ad2b6180bc5d9b27d8d722eac578e42728db90fdc90a2b984639b8b4895fded678dbb3a5212b2d965dc69561d714b33cd78099b4e2fe20ec03e5b1ab6e3c4e18baa569dc01f3f4c062be59057678ee449a9431a354d3b553ad5e4428e48a58ffdcdcd3c3b15428e5db6575950931efbb8393c4dcb67a03bb27499a48b79447adec56d449a5608b2c169cd48e8185fb13c63268ca230d9dbf95c4ead334d43543c73dfdf96a3aae428539dc92c3ea47c9d53a584e37666aa73436930f37b03714044798128142e0e42988d90644260b6d3cf9d56ae7259f309478d727a65161ab1cd574e282afea629afcd2b82647e66903e044b05604a3818d9629b28ab31d2f4108688029170672e0e62a74894d392585ba9ceaf1d56e75cd5feb0d9e1ee26a71330d055d55247e66f48f23db9cc5c6932bbd75ead1e12eca14479c431415a0fa8a6992c22d0111354eec8252442d3fd447f2aea0cd101f5744917b2ca2eeb4048aceef3cde655b5a572965566fe66c9bb154313289e0906d7bdf0ac1ae363222ba3e574d9a8430d1130d3c9b881a665ce4bc49114575e4e1a438228ee95f70b7bd55debd5a5e552507d7ad43cd2ebd9fa8b4d2e26daf6b7e168f79944369b63d9e78d3ebbcd5e4a311538968a2d758a63a02392794e45e6f8aada472e11475aa60834bee13f6b9010b5548d97742dea58279d2b17c3a8121b739ae15b7eb24f42e4f0df80e3e801bbe2e56b8a3b8556658f52ca19e6f685508d8814314b1226ecaccba51d426ff7fe8b4b648b3a365111f59cde4c51844944597256803636a7851d711526fa0e0c56ffdb17a2d6d235dfabfeab9b79716796fbe5e5834f8fad2a794324b26947ca29a5460de131a34410ae5596cade97c72ea0b0e85243941dad908beac56f04951431d38f816bbaeba7fcb971a216d1d2bc4bc06f9eddbca0cd595ebeebafcbb1caf2c3b989fdab6ab4c9cfca4e8a759389cb2e1cda3dea52f658ad51890cb25ce56b0c8de00eeff72e3efabd5ba1d6e86c2fcd3fd3887d2dc31a49925c64c5a8a2a2b78ded8bcea0493e8afb6925feedb828bfedcaf7d5b1bdef6f36a8568d4994583543166a5f974be9abf2a7597159ff989590c6c855c12e35ad69c4692eabe7b75c1ce45e11d5ba31c79e79dd4d5d9926292289ea9c44653d063d607bd93ee384342eba3bca82d0283ade47df769d73ddf47e46bb624c3754cf3a45859cda73fd8bd272657e5f6d7e588645c797040c7d0a1af348a57ab44bcbc191fdde45552bc467261423b5d34d62a326e5ae8817736ed25ea33d30d99b182f539486760444cb392aae335052fd7b0f289bf5c6dc43ef6336288a3a7859b2f7b46848af89ad668cc2be9abcb00c4bc855a7cf1f534600b263e6e5d145d56af548ec1201d14d482cade233e6d3adce6cc95ab73ae40806fbb517f4489449a2639ec53a9e23a9098097cdbc9780b2f9992adc67ea2c3a7a56fcdbb1af7ef73d0dafcef17600ceee9c363683a1989e7d7adf150392e3e892406cc712a5530eac2db31db7280ef0c44496f8a32ba96ffde15f576c2f2487f89251217d361b9e9c2a3d393d3b561d91bbd3b5526992a93f73d94dbdccbea6518dc00009435db0ee5d7bb5776763d20d960e2ff6288eb0a57b97bdeb1577cd6acac72922afcd6a086da9367ae44aa28e574bd9b8aaa2e8696db7508829c767787db86029ed316b12d75f5422831e979908116352d185da4c173145580e8c7a15952391692a825a7acbe63ed3a87b4a414e90a5cea19d8fbf5baf1ef79884e1585026125de188584af6bc2bc717686b748a20d459ad06a4b499c5fa9f0e773bf71564c3a17d63e49e6be56cca5da115a6049a9d38c70766c72e1e10bf175ad16da246ac6169ecb2b1f5a7a3cb036a5e1724350079ba49e30a108f9dbfdbd96d6ae8ce8b222902b21f5cba4bdf7d52ba5d39ea0fce395025d50dfa8e960ab2f9dd23e4ac41ffb54bab952e44cf3f33ff90ca838905626776eb96a179f162f73cec6fd6cb056dfad0bae76bb3a4e0084dc04efa0eb10adfdefd1795c87dad4f355a8eba0f13845d12ce76a3cb9b7624bb4a0bfaf3a27421339d0800618638171b9d24426328b1975f3ac9fda074e1fb67e398b474d709a0644779c8c8e3936ee7dcd8ae77e2b0b3636dfd9f580da7d4756691e7d12d95bfe7409ddc3b7e54f7f3b1b42adbe9ca4a21890cf1cedce41b25c6142e11d93156ba67cfe2638bd445d971225862193f583cc02d3d2c0fe95e5f5d7fbaff1471026b75ec1c517ed9d8ea55b2d4d858f957aebf44a732d59f325d618295d67a65b342a671d62dceb834ec50c462bf24bb4eb04ace9c6115a1f61cb3adf09fb0b47e8abb367664b829f519a1d756fdc29ec5ac3016063b56969bcc5e6bacaf5ff4c74eeb8f8c1dc8628cb6d9994a842da43839ad1632a92132efa03ca7bdfa8ae38565cf7fb2b66b0145c4cdb1c189b9064d31c7ea5e5c7fd15e5db1dfe7cccd3873dd6553d5e5f011f3fadd0d99b05f2a493b965e9ce3f611bd33cd16b32306a97f9e550ca4fcf627aa92bbf5a76eff8d3477c1fee6436e65772aed888bb4614ccb4ca5e7450c2f3e77a924f695879552c752ec01577e566b6c1a74046bc72299596df6365d5fd9d30ff7fa02ec48dcb77f439a636469a5aa002076d7a317ed1765ce8708abaad29c2e6a64a00ab2e9f2d18543beb02371718e6feb75ca7036cd33eb906a38630849f6e20107efbc87f57f5c7a5a3c438f141579ce53d591d3a5452d03bb783cd1b30e9790c8bd3fe3eceac1457ba8050eda596eefa44bf444d2671baca7b3cf2ce0cedf3568e8cc52b6ee270e1ac439217f2586e52ecdb0fcf5ab2e1acecdb25a3d9123e5324250820bfbe33fac2d4e95f771f3aa2e2a0f52e1192d7a17516507ebd3e27eba4024866a7bcac51fe684dec77987251e71b292c65faa59eab2595d412a9f4a5c413c70a94c63dbc28891242b646afd4b8b60c4f46455e85c5d5e6946ef0afd0f366f7a7cac821c255c904f3cf8dae9f36bf75df37cd9dc8020d9a97fbc58d7ded07060d8de26569f521cbeb10f31cbb17972aea769c5c5befcc4402672b9e9376a89c8cad70412d5615bd8314e140cd6e8bf6e49f3a52728498c948a91ab0fa8d6253939274c5239bb1422c6754f5c5422c7672c1325e1847ddfee55c734c66459b97c175d91c88b6a8bf062c3972e7ba6a69092cac7121af54976b161f78ad77d612623739daf18987391be1d628aaa2269a59a0ce5c6f9a30a5abb63ed01c25071f46226f2c564767eac849a64fdf30d8d87452621a6c8b4e730672c14bfd622275fcc65b513d4dca132af7bfcb06ff2c468861fd227d333aab462fdc52552555e002266e82cdce79ed18b0029c60e5fd65d27ca4e67c70e2affe56c7d2919648a8e309ff8d5d3aa6c1e079a4b7221c96db8edcffae67ca09ad3506bc6d8d14a6ac08b612f08a44294a06a2efcb93ca4b30d0ae87b2b309543845642d0e4aacfc6b4c48c79c9509f5cedc4503eafa11741cee108bb72bfdddea72224421a23c77d5b2ee67e0f2f6227c88972403728fb29f170ac9f4c47a56b858f7bc90b0b5477dc9f345bcdb351141c61a972c12f6a2605254a7765667deed0b93f1b7829be7b335d5a57b7ab6b402c8a24b09274a59cf5fe5a92d3f37f36001864179a4a4a50e1afb2ce4dc59418a60a8160d6c8281c0c4ea442de4a4ff686d265f243a70fa68f681d019b7826e72408a2b63c233b70f16cfcb7a7a30ec9392a29f5d3ea043171f596db6ce97e7fefb21e5e034a4cb69eaf797d753b347004c7171172d5f337aa7fbb348b7c72922c7f7b90578c1a0490f6a00cb05e28a1785204410aa06c2439669f7e3bc723e14ad2fcd217e3034d0b3f69aa3ee00ec3554841ce2decc4a2dd1307affc545f2d43ee929a3b96eca9b50da8f2a223ec0893a8eacc81db70d3c503e226c2a0541d755716bbc952cff465f94f3c3d69f3bfd0365c36e79705cb58db49b2bfbc1b8d992c29d942a1833d1b3ed55fd7a5779972e5f689b70feb93a5a0c88a7e92e5fbf7ce102c372c89523f4108af8ba238fe768eaf84aacd65d8d0373d39f40b8732eca974593aa3727933d1d9d6165d763b99ed3b2391e9b55c96eb74e4fa880c66c2e478311b37e416cff88f5f6a7de4dba72bcc9accccdc4147382c92a2832b2cfef4a306569fc3139f676f7dcca088021049600810515336414b55bf96a51546895cbce98fee6309cb594852a07264e129d34ccba996532d27961df00e790102a57f6c258f0fb8ab46311f03b5c1d97e313f5d81344ba8785c03293ddbf753d05b7ff65968260fd36688a22b4cbafa0051ca8190b7e1d5c6af5d72c5aaa9de92ae682a55f53aac0a074946127b3e67b8756e85aa66397e2ebb6becc53c6d0479fab418cf0c8f87fb8fc6a5d6b89a2959af21668ffcf1de957315e51044c23db86ad633ed0ab4043c31cf819503dea1216a907adb9299e0244df498f3826fe76cc15639bd2e1d5a4fd0576d58464e9fcb57d63d476fc1e77ee10ff6ac5a0011e451127d7585b4c92c2716adc5a1fcd72ebd61a07db79a5d74a6fec2ca17aa231a117091075dc5658e2f7d7e6ea3f6b18e7aea6c9521ee42ba62b883439b54084a6e8e2c91e1b06c1e79e47f1c48d1b67b01940090d42579aa62c21ea6044aa000a1920852b5813f92081a7699b59bd7542b9105b9e2f96515d8ce5d49f77d63db4995e450945ddfd9cbef6dedae430f48e57079bf5985e6e31bf012bb9c9eb3e01d763e3c25e95f821a22c0ad9376a8c9ea20c2c63ae6e4925b74cf9ee05de218d74091fe0b25a607ddcdc7dc3949724c54c9d5b92c29c3d05bf36749992f666b424a56806bd7d523944075d501aed1b40e8048a0a7eeb94fb79ef8c3dceea7d67115209cd06531ef45b284bf36844eccc0a563baea679a43b504250b1e5e2f4791c1098e25543c566a07ce47d7e3e8a65c7764cb251274de90d33a6ce1cfaed78e743443a9c6f39b66465c9119cc313b967db2209acbcf5b5c216fb7c157941f0427afefd656835424e31f1b499e57bf056239e71ba8c7385caf5e2185dce3e041812e58271c23e4c0ea0b8d63342766170e58a7de924881fefcb3c3d6b342a87c9e4c3eb572188fdff082bb84092a004bb8bafccc9c83720389fa638da7d6ea81f41e9af5f802fd067d6540aa25bb1fb928c8830911a457dee9a1a73d932300b3f2c9db73338e3d4c1da9d4cee406554e3e0ca27c9aac39959a6cab0dda313cecac1049a62c5535ace23ff126474ff5800a22d15fcf83025d1e928c478982cd2081029d97d2259490d255869f7970f8cdb96d03217f6d0dcf61e7daf943a240b3045e73081031eaa9eeacd49e6eda7dfda43d1a1f5cab25408ae4e4a42fa6ef47c82190627904b28baf58dd3b4a1b11b18cdbd9c623f6f5472fac7b59be54dbebca32b133c8affdf44b5d11d4906290c44c73282df84947561d2d0bc117a1056dd9736f0e7bca5faf5060a04e004900d025754988b9547d54c98290481142af5f92014e6186782baaf382fae0860407e5d8d290ffce4ff4103244054fb6e145dbfadd4bf7ac19f2c740c76a9fb906e0c23eb19350f094230c717cd58044fc31c81f79ad3946f3c484657c9148f71a279f62fc934bf87d3b6b54d192a6cf37af8d7d3b33456226d62f034c1d528921a41995f44a62b92b940a394bc6d7000034af970d11c45c4829511004e2313aaf03d13f2f40b1006f65e340ad590e1d42e3154500402961d3cab2dabc72ac61e91e6ef61ae79c26b5da68c9644fb8e5bb97be3a84fb1129553a1fdfc86587cb5c9dfc8c3ce40c07c361d21120a8ea4ba44c6f161983617cd51835168de8f343d30cd962af1f49f8cbd24193326fd96c5a35c75131a7539383c505a97280e613b515095ded4ac77eca0600e02d6d7403a564055729455124f715964deaa8353b630200491c2a1128423d6b7b8c868e242500d8531ac5e0c714fa41cff98543da11c31b3d3d2eafa939b77e7d2e7795d673e266f94d00d57f4dfc6857aa7d60acdf76c1316e73d800b8332d471fbe441ca948cac08cabb35cb985982f090303fbd811227b26067835b565fc434918315955018d4ae622c2e268efc4897d8a127d51be5ef9e6ffaf38bd53fd1c385b8a907400d02f744127e12a5002bd95d85b0d172ac74af6342fd425c7510500ced9e2cd9ebec0eaeb32c4e1b2c93ea0c1a4320fea973ff7fcba68fede07b15468f7feb4d797e83627a6d45dd951529dcfd7a8bd4c2472664ee28e4bb9df55e5a50281f9c7d649dd9611474872c8462a69c0e0395afaf91fdff6eb9be967b940052c7a0148e16c5fbd39523aff4235a3e3acbb9db81cc054b44cef0c27266b285d1202c5435639a24bf2051549b374f9304139a7ce92f0f5aeddd3085a9001df6b2ee4377491f34ef4852dc51e75254c69943c1fbf55b8ed5bf7d3cb7eb8ecc99b1f8d044ac9a6dd6655a518cdc235304730fe7ec38e196b730793fdd525e3c877b99034ff0cdd2476994ba4b4451c8593e465fbd64d55c6cbd85b9f891b8b6ce3d0cdcf36e4d08bc986a06bda75caecd014d55a9255ecfc1a80d89073b20225122842406508ce10cdd2679d5052340b8014bb1a66990977004223a92d00ed593fd3f8b8c6969e0d471b2eac00a8842c4fcfedbd79e1e78f19aa028e2f9c78431a9d69ea5b36a2ce235f373d3c07eeae20561ebaeaa595da47f75f3a20fe18bcca24ee580488248e359e522c3e5fd75387de7af3d6e77f1da8291909259b4756ab94d4f6e549524c71b9b99c02a545b9583dd236a10272664c9322863c8e10454150b2d8ba99ade8f62927a0cbb3a0f3b2fe8501c4a46a11706690cfa3bfeef98698d4ef0a9aa58a297dc851766449dbe10e557755282b91ecd2ec2b72032400d2aae0e98d3be43cd88d24b6af439a8d7de79291bdad6ecdabc265c49d4d9f678fc9966a77b5e1d0ba69968e581874d81d31633e8750849c4fd033d6c915aac66dbc1ecebc5246696714b6228b7d9f46b12c3076e5ab153a61c437584912d210dff8ccc787ca6070466c2302d5659f29f39d6a3ee923e0082ad9ca3dcb2ea09461716aaf3f5731ed1df40fb0fff0fd8a7c170452202562cc494ccf643e7358e2a21af126bc744d569b562316b6bca0167d44cb58ea7b9700b9bd0452b1a91bd2bcaaa13bbfaf69bf230b7576ccef3c3df7ac5213ec9dcb8bc468c5f48c4972872171b519d93202c5f9831aa01c093fa61428c6f5222905dcc08844822c2f1afa6a044bc077c24d3b83b6bdde94ef544ba064c427ca0425abcb17047320e629b0330431a12f54bfb169cd27d4c55c340b8449477e743ee1b9e9c1da5f1944dcb47d638a665f8f2a9acac4d44c639fc410f65044f9c4254122468290c6c17b8acd45bd6568f3a39adabd801fcf647efd1b6d988f945230224484d13aee083b5476638a51adee44b4aeb7523540562944c1fe4a3d214a18a00894c50d3090bc948a3777881ec2b1df326388f902804301b13449b3ba64bfd1375492c41893ac36e8ee997bb2a010c8a0831c299f6c18853be8fbfae9f95b834ea872e086d6df7bad63ef5c92e38edac6ad13b04693ae472f017257c44a8014e108cf1496845d63d5100db3cce6473514f9f4a76ee6f01fc6a2f768c35999a5b711fd001c953a1571e581323f1fa124ae226090bb420b433b6b30546b1bc5308085514aca3a4eb59c12ab08ebfe325f4c02d5b36a42922882667579e5ac2de01b37061856d7539c3c618f66d5d9ca602d9781d282e4715fe67e3cf8ada731ec45a0a2db8f313bd06192a2aca830111163b0ece79700f9de908eb08f85ec92e47ead1a20a4f1b6d1c5071a08fdd89717de8d1b9f49278d5dd786b98eb59183b598a9139d8278ed56ff6a596fccd7fecfe27ebf630a5b3e9e9af34a03290914f8c294c177a48e10020b03beb082900a809aa05910b33aa9bf0e3494795612408c1898717071e447f9c09cb32ba7a12c41569b7607a6ff65cb6387b66eb16817eea42a1174216c1b8703224891200810dfbfb4fb0d14c9866efb2c88ba3e5487c54a316aee89d646e78116862d9fa34f0813d9f2e797a27c44a97e61c10256166ec2ba17aa201944c9d46350568ee3f41cd1199600e892bc7d027d75340ba17258067435241a2624f4d44a8e715109655e99144009a438047852b1ca63904fbfc492d793e28bd894435247dcb225fdf21dbf2df5cb3ba7eb2fd4f719d500906f3a0f02f5e2199e6dbf24c8664fa45e243bd6753520e81a4d38c4dea673a8450f1aba17820ae55fbdedf9fd5bd2acc2b2835b935557a4b496f280aa6ea882c18c36c1133639961e22655bd99bd145d54180ac225415140181da7adfd83934418230640dd5c865ac2e2988089729c16aba6bd3da91b657eb07d930722ae45439311fbeee1fce1fee1a52762f3b4d4bd4c4ba73734ed1e39ccb38cad2acb84c09f63837b1ff1d26569b59ac81bbb7722a7f7a41870d8d9088e98320afcf56fd248feb677975a072c4294b2febc5966b97867aafb4e5a31e358654eab8a62850a46490134a6cf9380459d2007ea04e0094ac00483201909c13240b32a716290802912f96a440434962a01a96e3624195d4757a31dcfb0d1d1edb7543e4dc677ae951e7ae2f0c1ec292d74452bc1acadfa89697bcb8113baed98dc5fecbf00e20687feab617377a87a042592c0d8caddce7cfa97208edfff57f7911771e1714e6b0e496c2def33751fbd7d5a5428eaad9f34ad298940080d043412a59f4388b2aa590f78590364818725302ab1af425f5a2ab5fd9ef2c6a41e45154c70d71439cae1f5451c51127268c63f2947631feed6419d7b25b661f5b44dcb9f5e79f1d3e712b09c58bf435a4b803a81adcf0d2865ed8b5e9dfebb6bc23c87dbaf29b6980a5b720b0be876d422f0d2004178847ee0ca3294c038322c8ab5f5e2fb60901b32ea91f748c53322572aa1c2818594952c3d55d42e992ae5131cf1435a235a0e1edbd7a31d5302e50d0254a27d8989635c40dc8aa014c97aa49d1192ab0badee1a4f1d79e61d225ce980089d23f94c4839e4974e0d6edabf1fa55aa1c9e96cfb3a0f5e4f4fa877f8b4b837c6f5cac0d3a3026e56b99ce8686f65284e6242c9f5b7a02d872f3d6cd8fa62ab491d6627ee8783363e3606a9e9d601645b3457912922aa7ca41510045973802f2b00704a54b0282cc364656c882d87ee3b9468102cdd22c3f6a9bd4b2fa84210ee8138638d8d29ae2b4bbcb2029770e47a220a10c2f39585e0ddbabcb6ed8eadfb1f1cbd7bff0f0bd0fbf0cc35952ae14c8ea10e2cd11db2039f7139794c813878c04004718700501519b7500aac145b320a74e5fffd3dbab0791378b48e5cd06e843eb061dec4f3ededaa52fe600550ee60805c0102f96a9f29094a40c3a20afcc03ca3ca04c0210208193e51488ca357183bd9f35c40d713aede029b0e3be1ec7e31114724afe9a17e5d76cdfa4ffe5d0ad9101512d97af3d0438d16196c61dd396b0236c9326e02ca4b75c12e45e61c4137274353a828e30e01887030398b4a08eece6da04d920d41587d6bdcc6ddcb10165c0e2d364d5b03ba9444e955389054a0e7002053d254e5be234005ac5cb2051002008000b024580a5c142a060881b32eaac3aa14f18a62aecd303ab0742c921d0ec2e354bcb9acf9159ee6a6fbf6a77748dd8330d0f20ce14484ebee8b8437087ecfbaab8f1172ebdeff7e189d5b38a99f2065d93a1aac00e55572bd52cb18ea2944c72d1586481d2abae2fdfb0728dd7e198e9533d824aa7d74d28f35041254221e7380e46d009316e891ba066d56c22c325ecb3b37c7696cf6466d94c3aad56ab0d2a16301a0c71435c93d0240cd04b5a3622af23b8178cf442f885d4a60d95e6e656ff15b1fb7763a2a2bba7ce022586c9acc3e6b68ddba609d8c77ca234f79d8cbde6df9e47db7e194fc6af4561e1055e8630d69fd4a6316d896c8488b61f12723190a96bea6a3adfccd48e9a1280123995264209949c030018e2fa2c5122c40d717d96600dd3d06aa380619a7eeb5343dc10070c7140ffa63c32ea845639b43a48c55f9f9dbefe2c2de495201d875fbabb57d9b1a0a7f6849c935f75aae514404fdd746079fb4dd8472a0a45c3c3efe8b556b858d5badd9c1cebb07b5d562b6207bb29415b706ae59a401964f73b12930030e331da2a653219a504725069529c9c7bab9780214ed70762ad635118e274a66ccaa4b175be991f35c60d5980c59bdffac39f1e04558482d66d5c05e85e4661153d64c15d601f2feb3df0696cdfb47dd3f64d43e8c455329e7d7d5ee72a0d3dd4b9e93b43ef0882f6c70d0bfcc8056bb2da34a02d8b95c57240a8e363545def26ddbf968489dc54a524b9a28e7932991280b228500225e7040a868c3aa6cc008421f2a567b5393265881bd9aa04fae774ca48c839565b04cdd219a83918e290abb39c9c833ea14fe8136ca96ea5b9d1cc631c827bac1272f9e79b8e7fa3f6858d2f6281ffa50dc04b1b7a07ab065105ff4bb2a563b2c93f2ddffbd35add9b2e983f079ac5d6744a9b462a95769dd76eb9fe72ed0051c7e2f1d0f95113bdf2f082d3d7b00a96964a52ca7c0e1428b9264ec11037c405864f42f05df5a0b5f59fea2deece22678ed67b254349e960c944992b18a58d511a1ad8bb0c714d5c9fd0c40d7183a44f18a669fcc36b56799e6e0b060f43807ace639be1edbbfe7794dc05f611db261617eafdf0bfb4a1b70a935efd9fed417ebb44b63dd15a776a624d3eec65cf379d6f3adfdcd18c21108e70ded257e74fd58777aded1a67b2f2b6d0e530a688da194199a3e4dc9b7f00bbb077f673d9af8a3f9d1e6e647527f3b3328fed4243bf77889729cf2f38513a74e0cbc79a73b39099d3aab83e013907409f3064ea461472dd95c50db916452cb567fe1b2b475c81aee3c9ed6c1a2fb4e1701b80f34d28dbb7f2784683652fadfa0af5670b786f97c8a0892bf1787261d7b0603b6d0aea87e70dbbec32918418596afed9c2cd2d93c925536eb00a69d775a39ae63e6b2c6dceaa13b5e1845c8d046836df9d363eb12e37ee9d95d2bcccc1661f90b7d84a871adb1bb8a3535fdbf5c4af270e15ee48964e964e5be280e60fb6424a729d1d1b347245364b702799720b629bbff7eccbca55276ed9795524c1ae3d50cbe69cce5e1d6b2ef6b9fafe9ce34f078ddac4fc109c1d96f18a98492201e7c0988e4d514d583be21fe8f3d734c68f24893bffd324456c2569e52222591414054a305b270856227535a4202014f8f9f3e643754476dc3555f4f7369daf21841de6a9d25f9cadef58fced1b27fcc6d7572faf9b2d8bd16531e8b39ab83ea6d41b71204f9ebd6bcbd086aec99aa8317968f9cf6e7df996fc050150a7d5952361c7a80761874038c070a3ace6e13f05797b65e8964ef3f1843bd44ab4152bcb6d15b60a61e64ab64da7191b137ff7ddd5e6ebbab06b638df65131f4da7049823c46f134abe0287999d037599cfec5fa6565860993aee6f2a9070fd5b26c904f8f5a7a6bcf82e789a6c4427643a5fab57b9659cb939315b1eea87db68c8ec190d0c4f5092a23e14904ce859ee0e893c30f3998d468ef3fdca97d50a46b57b10b2a1b2a836a631ecaa00d04191e0b884ed534de1904878ba58e5336763cbfaaf182be8be9639a0e3654d4d767b367566ed8597a56be7a8e72687c3610d6bad272b9bc5f2ea100a8b309aeac6bcc6455ae322dfa82421e0c9d5f642e55d40fe565af313f125b6879cf796347c6f509c5c21fe6fe6d345052792e55daf742240dc4114742cf4a241edf938f98c6c28660e2b6570f10afde9906eda665bfcf2d291c3a726a61ac61debad95b6a1ce318b78f8743c39677512d000f89535243f782222e348a24ca6cfb73be9b1fd74d9826ac7bd768135b6e989e77d421a3c5cca22cb4b54a964fc1102f2908bcf07927d6bcba5233f8d2c47764dfe1876d98ed6733a5e90edc034add9b4a664cafed9de448738f8f57ae08f826b8569712fa04007d251b536ee49bf46913f8d90b6eb2ba7e898445c7bff1c59d6c6ce50f36aa72609147d34f659ea804521936feb966fd7919f8d76902dd0dbf25a757c2ace2b24b2aaab897078ba1e0e962f2d55dcc0fbe3a1fe44c6187e07a0d04d7af940388163339f755359f3bd2fbf13db7fee415cbc8f71fe87a796a477450c11a55021e4038d4559ecf6822d7d985abe6056eb59b661bd53cd9d99f3297e4f4d0031d416cbdb158b17cf514c745e44171f71bcaf6add77e17bfb9e5296b5f7330b1137a288f3c4933839995d9e51169faffe0dd4170df4f384e7da5ca98f9ccf3aaaebec7b2e9ceadfa01c96132c5aff8c9ecbc7cef4be55e8da5734fe3b46e3194c40ce4cd8ac491162d73a3325f65904d1cbe71eb578a69ed54f9281585d754f64f2f73e7b2e941d2c21a87afbb676244ec9ed037eece0c32aafdaf954f661286843eaba44b7f267c228982c7aeaaf1b18a9504626cf7b05bf5ab3bc235b5c6ec9af83821fbf4647ab69e7b657d4e2efb3fd57877d502807f5d7fb8f910cacf5693230099255726b3da006a432e029b6876c7a39bf76d98546fee103357c772316b24feea2b4589e02996e60b8c6a649f6916b4210ed0190be508205b30a25814ca62ca4ca92a1897867aa5639581b6c3e6eb9e9d7f8b810550a22afdd6f92b1ebb73eb6daac4c12afb8c9bdcb865e88c6ee396abc4fea6f3c4f25e297cd9ce366d7aba7a37d6fe49cef7d21201ee8b744dbd1cefeead2647c8624ee56f4ed3e9f11ea5b8bf8fdd7441d8bef1b3d4aa5bc4babd19689244d43aad4f8328d3aa9dea2e81a08aa98e96a4993600ac81b548d3178a0c47c75339818a18595a215265a50e697fb1d677f2f6dacf15afedd26b5960860257aa5d4fbe7a6ba76c993ddf59dcb8a5119bd64daf3f7cca4f36f1c7d944acfbb2031dfaa4ea8a899b0e5e94e32212b95b2108511339b206e7c5953fd91c989fd6bec45ea5ca249fb9d556fe933a7f1273eb77cc5a084d421fdb208fc6202bfed63656f3945370fd4ec6c583b96c4aceb1340094c5004050e594a8ef61e294608c8385c4f7191e691de465ecf8d5471e287a67e962edc2955e6e7005dda1ffeafc3bb39f7ebc4c0aba7c2f2f9f16f14c05e12d3f571b1c768f7a25479848965ea266ed22aa75bb5e700d28b2b9e0f5ec7962e518e077880b1f2d4f9ca28b74161b7257fcd7bfdfbd54d2801469e5bc3e399a639055bf7664cf1d7b674e7656b55b621af6ad3b19e240598437ce12e05592064c1430c4b5b192fd21cb73b71e57edffd26b8dec222b4a75f42d6bf4b2d7b5e60a743ec42ebd53da7953af68e3d8176e92cb5e5e9fb644f0c6ca1175960c1ba325a5a7f6be47d5fa79091b9b51cc129f3c6ebc76a5f6c251dbc6c39df75a0f74b68c29e6cb5775d6b77df39e35839a040423fd22bb40c6265d7052cbc9930b7de7b45b4e50ac951504811505c118659992f41c95d9e7fde4a71d27de9899a569366a486bd2eb97876f7ccedab29193f105b5a421740b2766cb65ded291f0396ecbd643f4dc15e9725367b7f5c6bdc9fcfa67f7e77e77e813bdf93c0987522cc9b4bc578900bfde2f1fb5b7ed5ba96daf7d90fd652493552ab36a73df1c6ad8177800647bf538647a89a3a4366136a55cf89f0fe4593589fe2abb6eeb2841cf3d4d0906efa02b0409ee4ea19ec7f67f824ebce03c76c5cb526991354e6832a5d39d2fa1d8fba922d75c6a974a75ba45ff329d6dd9a71445b2fc93df2f2bb27b97f5cd3d2d45560e482987773b8f92d5fcfecbcf934a38062e5e387cd1f3b53ef9245fba489d1737fe73f84b5fe99a0e28912f3acaf54dcca997fcdf7aae7d536a9cedcb0b7195fa2c3cc2b2b17bbbe41c0bae41b1ef918c96627b9a8b3ac7b1b25f9a4bcb2c795f4d2b1a1f40086463c8a66f23e27c7daa0c6584ccf9655af85258fec8d912d148d030fc80d813b32ce06a1c1d796d0ccaf53af74189b20479c502962f696959add65d7bb079269ee83e87f72e11005724ef2ccafa8b55c1acbaeafcca7d2bc2b16a0d9e51acab99b7f4e8b7ae4a4dc11d76eb20d44d902d3a1a444956a004bcaeb60d4b011d342e7eb44d8b2c745975529755433ba54e0207e1ab4a741440e114169abeb854fe6bccbfbcfbe69845d4e9bea5ffdca3b4c7101f30f75f7116edd7eb7e776b229f3788e7ae3808b22a908f7a89aab04bf50c46cebe3f907b5b0e8e932e11799214d30ef47f31d65bf3223cd7751cac737987fd59655653778157fbac47fd0b085a52f3255129f394492b8df7dde0d40154f1c11f8dfdf01e1dba1aa14d27ed21fafb9b46dd1ef0d8c7280a504bb346db136359e2cabe27aff96c6c1ebe5e8bd2cbba7221960daf1d91782e1ff3e813fac9e38b470051225c63d515f95faa04e72397da007d89a3db36db8fc99cce30499184ab26e0b9421d4b573cd7b2a6e2f5c89a3261c8d33bd4bc387f4c2481b399251229d1ff47888bb51f53165035ef3f1a75401739f84f4771830ec9c62ca6b43f0a51cc7ddbdbb62b95ea1f797524a52a106a6ae3d831bfe658bc1e3490b7429f7f7956c5fdc3a72d0afe50489ef1d4cf403cb5fa50c6e5a8743a82d6cc507e914c77498e4b806c968f4a61197943aeaf4677dae67e3db62cf7e46796949c19d51af21e04f7cddebc909e96e5e0a5889720abafd82428d3259fafab34a593fef437bb7bd1c83943ce90b32b2bfb262f7e3f328f6289ec3d4fdd2366a492a10ca34eab534ceffc83f1dd9999327bab4c915436f5643465badccd8f6dc53d25cd96a241180b0d8737500df9532ff5c80eb9408ec68df56b2e5d567009d5bad77ab05c1c6b82721058a9c50cb3a54a053a0bb24ef4c73d4796908de70b795db61503d937f60ac6ed321e78de6998ffcb275e6bec9239cbd3e872861abb9cf6881c7804b71f6530a3010110055a930200b6e4600463a324738db32ee66275f7afcbc479eb82caefd045dfa054744d14e96eae5a75805eb9ef9a97551ad11126aa03894b97705fca463e9bc92a53a5ab0c692d9cc7ee3a3cd2b12a1824b3d3eb4aa7d44dc2aac09c2925908c9748673599dffcd82a53fec7e7e9ddc5e69e846c1545863ceaecb0479d5567873d8c943488e4c1bd7e5d71613895b14f0b73e80beab821ce96ffb87381e56ce8b25d37552d2454ca2bafbf01e8a9bb80de8f9f390305cb8991ecb219b628568a3baed9bd76afa6ea7c358e8e1f7ebf20c0f770be7608a9b54c9aea6724db1811e6aefcdd7a76bafa779d039c27045d1e2cdd5d92ad91f928a8591e25e77a899ca6b032e40cd9b50f6e5a72d433ec190664aedfa1ed084db49e85a08f774a9f9e4eb180219afbeed5dd3dcdce5f9ebcfb630d04599a8779bcab1ebd173c7db447f6fb3989620459b8546c113af6e0b24944e69f53257e8ef70f02dc2cadce6aa391ea5c9074d105c5f9f959ecbe4a37b6be4a4af8271de4140bc4a898e61ac82841544d2bb7b9f3b978a9459775e2175e501d3f0a913fc257f9e4710854798135c4e9940cd4fcd1b8216e88b382ef07bb6b4bed773d6cb52d9874aa9449819472286afb151f3bfca4d3d29d308d5462c405b92cb3e442c98e95f8b5dbf50d7c2010e0df47ea4742f6d14a845775b9cb864e18d7a28a1bf94497bdae074d13927324c912973b0a3256999749aa478c6421d7ca0f199d72fcae1405c50500a94d3d1a12c8d3860c6764b3595a217100f479f5eecdf3577a15ff39e7322f576952b3e8a91d46f310a11fe2b77b281233b4423f19842dec833471f8366aacc7f4083e20c8bd39f98c8984c386fdc1a6939fd08b5163b6b928337bcece1d8a97ab5d21c13c84b524ed9c8055e6d8247a9854aa4686ceb633babc34f7b41cd9b2980c86a8dc9c2a11de4c9066913722cb1ae2ac90f8d7dc27c4c8898a7f644d2651a79b6585a2b7a3798888e8e3a9574fdcba3b7ad36ba5a559481e11e7164cacff54ff3bd667bdd311a00f0af219cb8591fcc0aece968fcdff3c95ce564efb769066ffd9b980aa187f45908eeffda49c5a31e14b9f36cd7da33e96ca97c4e3853549e4e7143b25216fca6ba839311b19658538e2741c719655c6b325c8d265106ef37d395f57b1e43539bc55fcac142e1687544345c96c8ae5f5ebd1a091b8c689e2a88747a89173fff69d39de1124930f5a52ae8a58c83f57c596978f8da5beeb9b5a5a0dd03d4360bc7403d0661b9289476792f981eddff88a9c4b0a8a6c4c261f2a6deca06114ac91a3dcb290266a00e23468968601061858016c263abb747fc30643aa5d7d6519860222069621e7658a0ca4b37afddceafa8ae6e76e322d5971055d192630967bb78ab9770299d694169db5c3375c6f8c263138915fadba67504f93e8058af08295fa71d675fbcfff7999ed8ede469aaa6f390714b2a7b0afb4f28c512e8f2a8b44338efa58c4019a050bd61037c4d57103c04ae3f215b5d8be67e2d9cfbcae374509a2df7f01cd43c5ba22881affbe61fe649555967b7c722b5d1ac9e7c78550fcde0f0eb265da357afed48d2f217fc8604efd973d621caa0406248999c7a0035272b5e8976e22bf76146b1a442da1a27e9096f21597cfaaa873c68c46a7cc062ebf66991f800106d600c39be9d1ac216e17c09efcb63032a2ab5771572f47145e54a31e435e064c51620117ef3f9d5ac5dfb2067481ca10f010d2f40707c196af5fb6f2727e298e5f77e64cffcd85214ac6136c3581623119570d11f27d003f7536f795d72053901aaa64debe0a55d69b566710e7e24950650776ed1b1005641037c411a7e386b821aece6252205833b7f6d7cb6c416c6e03415987303070014514516440f7df744276562a68cf0c88eb559864d30de775a55bde1944f62e35d9779f5b450ede79d2dadf34e808ca2aa2650a916619468738185c3e0aa14cdbb14cce1a695eb802b5ca585945a7f1cdb320b9323045a6583726c63918e28638cdfe61b92a05b6e950f2d505714dd479f365fa2235b1909ba1b245064c0f536426307e65a72c923d634bef34b2b1d30b4e4f2ebbf0f05f602300f0c8fe6f7c7db45bc6560db60dcc8d77364c15a80910bdc5b84141200ca20ceacc6332132d95dcd839f7ec4d1daba58e71a31c72c0105315d8047a886996c634e27a16716410a5597680cbe88eff2379da78d64808963285d03a04b7db85228a7545a688a2aa8bf22f70385cba32d92bafe234b67cf25d8fc921dec34f12dc219faa148b2b2b76fa4a4498f4552989983580a0392d02254519abb946ac00b7b6bd137e0529973d21a7a14f4030c60d124115b392da750130c40d121286ac7aaa2c6bfde670fe86434f5c3d6fa67fffc7e75eeb00eb08d6ef5ad7257987bc43de2126b4db4a5a44592f7884e7ee7e5af65eeaaedf1d6457c79482208e5d76f4868a6cf988fff0325a4558a75ae8216821cf98bb949cf2b59f17b59f213735f6cea144c85c0f58e8a8210e431c60170e36980359e3201da5594386a3d3c6486e6747799ecc798fdf32e97de593063da1c95859997ca042ce4a405dafff3fe8edcdce603591145e57588aaa39efe9f8a5773f137b7fa8da5dd45aaffb928dd4ce68979750851a6f89fb482418ea266c24b180913effb4bae4f29b3735763592221851363d63374e1b0018b010ea5fb11e22aa60a1469c6019c7799f287fadd7d54c37495de3b35aa691d0b01a3828a25e57a4118b4d964d348ede930b1194ae64dcd5ea603c47eefb70401e26bacf4f9e5ad99d2acfcddc4a3ce9e2b33d946c65ddb38d4529f61d77e404a21926f5e9afb5366afd9c4400a4fba4c8f54bd3745c9f310c0dd3770e526efb388c12906126ceedf9f4cff7cf3be44b38b6dc61bc706ce3dcb0266f601d1d540f720c48b64a26ad6814e515567b86261a173203e1c38ad9551f8a6a010f9dd5116dda67be7601023bb9d094d6118de8ba72af15d04a6c81982efcf6c4cf7cfe6c09419032ea8bdd1a2f7e1e336f8d59e286a8cec2387341b531302967e9b4fde5e2efa3e2ed2ff12dbe7d66df535fbf761f641ac610a7d3768a222c1780fa0357bcb2e0542a33cd48de432d696c37f883a2e1fe0f0904779fb3e6f11bd953e774a5f3672a245dbede2386021a86a89be63324102b35fbe4224d8b3459adfb9772be9e5410ff69945172222536eb75747a2a999f5c74c2fe636eaf2a49b7aabf7157eacebbaf91d60dd6e4ea6234c0966a5ce3e22cea8a430de4eeba93d149c734b2b1e5d3c1c16bf610f8393e2c1000cf3ee2dc704e95addcef379736e42a4b28648b441534d270ce174e11ba696113a701ea03d30fdee0e3b40ad2f94f95eab8f6b5cf787a5df23ebffe6566d2d175b6d7992f1e5e16995bdaf7c65a79f672949a63340c71ad9c7685724542423d6463652f1c68c569b38224e5d28bad82f7bd9de1f15e0fc07f6da57436349bd6bf52bb2fdcc5a04f9026080c0e66c63c72a432c5a912eb0e46a054a374e90dd09a1524c5c818815648b66f9607fbb6cbce27d56c2754f34bbf7af27867e2d82bb6eb2bdc241acd091a8d71da47f788b962512a2230bdebf1fba4e527650bf850919be56ffcdad7dfe35924ef5122a15f351e4e6b1a7fba665e59cc2953857da6800caa3a66482d0a79562d11ae73caab28391d3de744689e262f9b475dbd3066f0f28e3ebf44e47e7e9d4f18f9a6e9c58a2b77ae7871628e12896095f3aa5d5f1eb3001291a5354a532e1037c4455fd278c3d7fa155d0db121536660fc7d9c53f45e55eb8ea46d895dfed0ddb181cbd47c1a82555c4c77ceeb9c37a416912153c628cb84efe356cd256ec03c494ee172974f3b97f085aa7ffc8f544a1930a59e64cfb6bd11a92d967ce317c5fed1dc02fd129369968641728d886a0c794c1896bc43314f370e91264556bddbe040e0e6c5ef19e4bdaad613e3497b78f89a60c57d85a919addc5a304ff73245f4b2f61e4a29d1022c45fff7d79e5840f85f252805ca26f3532bf4de8a868135bdc3d13093c277f1f8e07c4e5353f69ddb0e27371a6aaea8a332340c7182949484b8628418928a43f09ce2e1b6f33ac1da4c4783be5fe24307c1e1d9fdd63db2c1550f8d0cf07121a61ccc94d4f5140a9e2e90949cce226e4ed4ded2ae83f4658ae42e2fc16e724e91994c35aa1b8bd9123cf998f981f9153ba9b365e2bfde5258263ebdbec247cb6188d3d9809c72c90fe054dccb30da73c84f3224d1271b564e13d931fb87af5a6f1519decf58249b5e1a9d271a13b1e678dd11035322032b6458754613678d8a6ce65a9a327d2d32fe555f2aec33441efe149047e563d7d9dbb6fd62e78a94fb64e5818d0de9ca24552666d540965112846b04c1168938e10bc422675b75af54450ad77e77c1a0dcfbb5bf16c8dd4b65d362b689a6fb1b221a5989d5fbb2979ce33a01e4b22c0bc0c88aaffe94332df116ee6c1a1bab9a767ceb7a4a69efd3d831967d5efaf4312116ec2a5e5fe62462b45c13a755449691d3001120cd4e429aec627233dad47424b7381795a53b7efb7ebaf6be4056799bfa56042d2f7ea5bfa2d0305e1ef5fa0f62d5ae461aca242f25d47143dc10615feaf8a7127365532e47f46bec746f6d17054092d47965924d978c584024c9b7e68aea2ca3d000676b8761f049332325bd151d25bbd74e92a2e234bb05f8ab81e0412815150397b7bc28e9a19b3570259cacdafe839ba14b4260b96286065b26cd50c699e8c6fffc8a49125311e4954d27940e7e32c7558ef47bc68c45edb48233c401806624b58c46f9083948b69c7084225a144e9fdaa439e0965e2dfd39fe9a20f88e4409eecf7edc37d1e0270bfaca988b48cd0939a7589aa55941cc1759235b54c50d5165c378412327bcfcb0260fc9e37864d3c4e13a492cc4e837773ed26a641928681d90b487c5a16561ea82185788aaf8a809e513c913f82b8300b86e7c8333c95426fa57a739a5aa51e61ee57b28acd975f50804818d11d6140b8035c237f1dc7786b67d6d08d68985c7c6cb8c9d346b9da6e49c400914e8fa41b50cbaa42e29f4fb796248385bc38ad4797b847d69b67a72edd423f8ab8360b3c54ebb02158e39f75f095a687589afae1e708455b0bfbe66343a5d6d0d12de4e004607579e991634a5b379a533bbc73cfbd6aa354b0b9671a344d3a579655e9914641c9ce3222e14989cb85f2a2553677e8b0fd03ec08f0d59662b782a51d6f294379d562802c1b0f3a0432ac6735db5e1a11aeedff68dca825a9615a2274267c6ab867ff51f453c79e1829bb4e621180596958a6ca77240534325d9c7d8245041caa788f39d9d270aeaf840f9ac22f48138207bff97144a7b6ae56de46957514cb81970ce0b38d582b8a1c43a79f92cf5c6f3f9852aad7a0e885c94e0a6ecb90addf4ba3168a346812f234db270243e63523054489002f72cb8fcd56a8814470919ab8dcc676ef8fd42b6f403717c10d502f05d62d9e22fc9dce3374a59ba310dc4c5852760a5e5244a5ee9e1c7c3368e40d3ecb279bc733ca11fb44e882e0a64dfdef4fcbd8de7c5494f5bec56a112c18ac32d61df849d1c43d9aee201340fc67b22ceb59d8ffc0d41007cd738506974ab92730b28d60726e01eb5aaa4de5ae2e43932283ac2e39c1c965acda8539bd0a2642a5481715b9f448ae4f0f2b0cb11585507d131e00800f59814a8330c4e5b4f54a8a9af5fdb1ec1df16642b1d3157a6e55c4b012a38fa31be9c3be619b6aa0e8d0c10e12592129669623ae40021e7fcbd6b5e0dc1195e131f28f80626e54bc6360416d89444595815b01699a241325f717d443380eb17e303b70f0c827b89991563eedb035254f2ba84e2f4e8caeefa0b2879b14b13f24e5624d0f48bcffee28ef9679eb8a305c08985023580fa1f9e5bc70204e4df4ae3999bb221d45a2772286ac991aee19c76c8fb971c8d2cbd9f663255b5f26f7be719b52e9a3b93534ce4f2eac902c330532b9f0db4b7b707daad7ca0dd1a0804dafdce40a0d5da6e6d0ff0ed686f5fd91ffceaa718a6853d1d3d752a9fcfe5a251bdb95aaafed843cba5bfa0bd0f904a936f6795bba6d5fbc76f8a5e7df44cd613556745e61953808735d06ee5c1f3566bc06ab56e0b04acd68095b76eb35a03d640abb5d56ab5b6b7b75b1b5d0c5330b3dce96c461d55172aa5bfb4bd57105fb5cf67abaa72faf92aefdb9edae2554f164551ac6e057800ad8176decb888ccdca5bf96dfdd640a0aadcea04789e07cff3d6766b7b7bab157c3bcffb5a9882e59479b2385908befd69b58dbebf0e4865b5cfd768abaaaa713ab715bcf57ffc1167614457398ff6f66d68601966a7bf9d65b08d61606d7582633ce04511d58ccb8aae0a17df6ee59d7ebe8bf19ab0cdca6327c78805d65c78dbd3aa6d6e7795afb6a1e1c30671559b6cb6c6c69aaa9a9ad672c1cbd9dffee99b72e0ad7e1e550c53d50a5104ef11abd1caf33b999ded1018b818f87732a61a661bdfce5bf96aa6ea4b4cc0ca5bdbfd28e744f1ed9ac5f1ee6d5555365fa5a9bafa4304a9f7982a7db69db6aaaa9aaad6ca8297e39ef99f0f79dec95be1f7f3ed01abd56a052336f01018582b452fcfb7f33b199f9ff78a2e8f1d7c35c3c3beb39d6fe5798681d5c5601b6f05cff3b0d9dc7f6c76150d703babaa76eef4d97cbeeaaa0f07c4d554596932f976eeacaadae674ab05cecb79275dff8dc1f3bcd56aaf60c4f2f680d56a85c7eee5e160c0db440ebc9faf6276fae1f530cfd4012e06be6d3ccff33ccf70808371f2569417bcdb5a799eb7fe8f33f45aec2edebf6ddbcaaa2a5b95cde633edfccb416c2e53ada9fa4b3e9b6fe7ce6de5d58c97e32c1ce7e5244992a4569e47a3d30ad1855646843560056f6218f81b18abb59269e2f976bf89696ce5edd55ef129f05e063e86b7c2ca6f63980a7b4535cff3102b6c4c25efe779a7ff2d14b14eb03c63afe29de5eec64ff91a7d3e93adf22f0531f9aa7c9ff2f97c8d3e9fafdc24329c85b3709cc7234a929f6fe7fd3b3901ed3cc38017199395af622adb1906fe6d2253290a3cefe77946606aaa985aa7c0f0fe054c959701efe7f92ac656d552073f0f2f53c5fb18b7dfefe7fdbc9397244972d4399eb1707617b6b9ab7c3b6d3b7d36dbcedaaabf08c464abb2edf4f97c3e936981cdcb581c423de76de218ce063fefe7fd1ce3f0f23c44d1cd57da2db05633d50d8c009edfe6f254f1bcdfefe701f03cc00335ad7c8dc7e3e3b7f17c2bc300d5a2876f07c38077d9ab783f6fe5c13bf956a98eabe7584b1d6717aab6eddc69dbe9f3996cb62a5fd55f00e2ab7257b977eef4f94ca6ea467b4b9d5da8e738a1c5c583f7f33cef079c0c039ee71c2e7e1be300cf7b388f077e9ee779b4f2ede0f9769effef08f266f3f3d66d5e8669a86e61b6b5a25af4f11045f07c3bb679aac0f3bc8b79867bc6e110ea39a6729bed533e9fcfe7abb2b91b1bdf05e41dc65a954c9214b58abc4c047ad466480829ed7b5db04e0068bf01ce90cc11a908c037ac2c5a6339cadf05198f25472103c07b5e6b3314117d7355d002010ca4ec04005827d09a4bebd28340cdd8af707f7f553f0067a8229559441d6dd4c6c6f4f428c4b9a9888d4a003a204f8b84488e7cd0b116e7f170dc9776fa16549baaf9da26c1e3aa02781e55de16c60b9e472b5c76177834310ce3e25b792bcf03ad4197971318866144b1208a62412c543c258a8cc8300cc388cf34796cdb00f0e0793f5c8c1522c3f3a83481f7885c0dcf8387dbc3d4739ce0b088b5a64a93c957cbbb44c6ced93ea86a793c9c57acde69aaae6e7055f13c787e1b6f855764aa9c767b3d781e70330cda9d70b782f7f34ed83c1cc3304c85582814445678ea2991111951649f12c41651142b0a2d15c25382c8309ca7dcca5bfd4ed432f58c08bf8f61ac60981a3fd49c0bbc7f5b13c3d8ed2d62556d6da5a9b2715bb5d822da7d1fd8d85d9ebac976be7a4183cbf5a56ddbac6f468d6d02b38d6f1519587997078c17ad7ceb5bfec6c970f5158b0b2d2d2d628bd8b6faa1b6279996420bb3eca12b3ef6cc532d624ba1adedd7ffdac60982a39e13254992783fd058cbf370315570d9eb79be89f1540b402bf81a9fafb2d56daaf5d5563af976e6a916e603db081af3bc250d598a02c1fe000f247ff8edae2569f0a12aa157947c83a819d4966a922167e8ad6aba9a0b2bf7addcf7ebcdd2af1e3bb1f05e514a27bfbce5b1434b19cf356426f9c533574f3dcbb8cf63c7067ced87df3deb1b7df32201ce10ea478bbc1ad5ca930ce61cad1d101bbff980369d7df81e35cf6a633ab9488aa36629fc81b328599502596da78c189742c037edc4379e3f0a0ce6067bf939ae0781fedf3c19fe6608e37fa80a2c3e6ffcfd55dbb0551cba135f4aef8e4dfe9e9d73ebf6430a2e1b09b79e25ff75cbacf571f6e0b5539b3ffb71aa46f7d64514358ee7fb4b1812beaea31e949f6c942bb763138e26718f5d2621adebcb5ef826e98ce83fe80cf1b9fba160a1fba7070ac41020f8bef778762cd4d8e50cf9438ebe25e7f4e38d5d8de8c21fd536ae585d2e7bf5970fa2f6f1cfdcdc9ec7a4f38bdfd7d0c423baa5a6aeec7260180f7eb659242fcc8edf213d5d287bdba10d82ac311fe065a2b2689da8eb26f94624edc93c00087225bef940562d3bffc140aa1fb91b8ac223a9c7ef20f07100d846a0f9d4b7bb00e784a02a360c16fd5d8d6fc300eeae3f335f3674f2b650c52fac3ab9b9e2d08bff5c39e5e25e5997bf20739bc013c49ea55d84d47ce2895fcac7ba4ebf7d4b9c00346acf950751c9e9cf42e6ef72ea4452ec436d5199558ba488e2c807512db3e276850409f77fee5bb8ff3900b8e19bf775dcfb0d4f63a3ce5907269fb5a2b18b7a7ba9a9b1b35ec854df8603439f9033668b72f36355280792a723265191266979600d4c46d369e6b50c2b7ce1d36f7f22453971d2260243334223fcf0d8e3c8f601455184f8000f515ef10124627e53839528e0c1fbc18d0040e5f7bea91bd3698f3682e58764d609fe4f0b66efced158c01ec335cfcd580d282b97071d07544b38e655bd3142ae7a7a735abb7d0d172e9dcdbbba1e7faaa4373bf74fd76b8525277d61c07d01406397e7fbd844012e92c103f703501430f07e416ae286b826031d94d87e0d277feb06d5f691efe14753c39e901fe8fab3badfbbe7155959fec2baacfaf7ae695a924c8edb9f3a8a75bfbce1d59561441b26c61675e4ae189590d666f36c5b49ba77e0cf4b0f5cc3b246f6426332b4249d8592ec01505b44e5181ec19794b33fffd2e0fb53ad1af24d8e24f2856bf0070e3c3856f9cd1f4da9970c3b819e3faf5f6e660ba33b13cd917c343977912a1a331759769cc086c7e8621f48b9c1d5c52cdbaf45a9b614aae58f65f22d97cffcd93d8214dfa95b8209e751ad1a641700f4c93106c5ddb72bf3a5b7ffb872e1fb542daf46e481980e200069f0bffd18293e88072e220d00edbbaf3e25d76bcfa1f18c7fc8681e51f7291d63ea46e3b47a9f599957e6fbcd984f4eea05554093854b26180687574c5c6c67b5e01976869cd03ef0d5e09bdbac7077ae340f40c6034944deb7fbf550321e3fbe5da538ff9ef263df0efadd2323f50c74c1df7cf5a8230cb25c7196c6ca1479d8600bc3c1752f44f7aa18c23a0dd7e1768ece9f8c446c43175d5fb3fdf09e1fe12d0c00d5400e4a00323e095d32f2be419858199f2f7d6f18f87644ac4c7b5e5d9399b4680395e930c2e69ad38b2666e6bc31f3c5896856ac3cdd304c48b9b562f269cf46cbcb058bbd382145f9f7b42e55adc02cb4bc2c16f92001d1cdc47590f5bed7c5c5a94819cff59ef8bad71720c46066bc42962d3d5d6984f5580197e7822ef47b55a2282cef619fbe4dbba3b029fd85a54eb9aa587eff7bba7d136695325e18fe404314ce200cbe570e5894b50426ee7cfcdadac0dcb9c7fa5c3697c89ef7005614a85183ca351b36a18b1cd8d6f72268f2b5c5a5b1c2e3eb73503313efedf6e7cf978217980f34d6ca89fdc3ef3981bcf10d316b6c3d2479fa0787eacf2da07b9d7045e635d6812a5b46dc39e556995d46405e77fed96b8eea70196f9a38dff1d5d51cd4eaf7fafbc3e7077519983f088865f47d64c2e536a8f3c185549af55f4787ce79bc04b032e2c085a4f748ed665aed728841dcd459fc456217f7f1a2d4974fd7fa3e4e6235826fbce767749415551f04a4eb7d705cef70b8661b7cb7f1e2aeee7fb8a18b8874c53410f0fb04777038115ec8f76bca1c7335e76fa1771e91cb77cb37932e3284b6f4270a33b58edbdff3537ae5e487bb18fa67edf64a84c32b3ff57c89fec5f599f3865a63e3c24a874c675dfe75b5619f0be77f8fc9dd695e59387ea476e16a1ebb1e3d4f4d43cc50861400fabd3fa75ffc2b83d0a288e2538f165f8e5c25dcf57d3a9bedee6d342a9af4b73cae5ee88f00d7eb51bd85d9934ee9ca8d1c9ae53bf66bccd2f9d0cc6fa74be1aa7eef22c1e85f17e4ee94288eced96bb3a98c963ac87d6a479da54de23a6e5cb8979e82692de68bc0f53f4945a4c9f095ec327cea738f2adcb15a85cefc85b9e58836e043691f0288c238a3bdf2932f63a1b97ff265740735e111e9b1d326e593278cc6d211f51e408b5d2fc06d4aaf40e75d25784424ff3d619c3287f8a743e6de6cf02303a2719aec7aa4225ecf5aff4337f92a3264cd558d7294b894e5d95988406f1a6d6dfc4ab8663586ffd04d6e88e6efb491e5636e9efdcd8b6c0eb77f5440c2a42bb2e93711e59876cf4b4a2d496bc4eeb6e325e5c860065991041085d28b58294aa79df5e721c25d1c59ac75f23856dbb2b651bdf6a302e238eabeeaea9d3869609f7f68490b8969d2d474b06b9f14ce47489059e065e3cf76b1e71146d0119dbe0b0d0ec8bf336096a2094e6f80f7c3d1ac0fb285e34f5ba454685832726ece0b278670878cdeef506d576ac79b5ffcc74757f78a64c2886ba3eecad84f6d42d11524e38f372ad2d118fe05db119c8b5cc01eeffda84844b5f8fa676a08fed0d6214087114738f0aa05cce4153b22671db0b491d8d9d17ce1c0cb6b65615460b4108bef38d7036053dac58ff5fbcaeaa58f0ac8b4f4f503919c7a2b005c19ab84cbb77053332a8087f2504ef3cbf3ab9bb116bfc510d1011b71e2e9a3e67a00c0fd9332bba770ae8bfea880acb96dceb2235bdf9a7f0b2388ba7f4c89e8a01f82f24c71260c9474d51d2e000f8f5aa6c666d6dd3e1e259b00000fdf931becb55c3ef95101b979e38d9fddfadff9170946dd8508ea891050de666b90620b21752fba12c00b41c0de17583b22dffdd6b7efff8972bcef910f058490f0a1b6074b466be9570d62a37a3380a7cfdac6b91fff4c148fbd793aef23a39172d5419f927a041f76233fec1b86dce7a12289decd00708190cd60cbf1eefedafd008089502bc6afc7d92e7ce441c2e2d1e45646c07f0100e6544b6e05606c7aebd3877d479d2bb4bc6cef870ff261abd67dd986ad157ad3837f78c945ca1df289fcbfffcf176263fa767cf441f060647e61e2c1ff7e79d784a76e44a2efc75fbb7de836e28d0594ffc381c5bec2960ac75f9fe3c397c89f2bdb917fbc1eff2f80fc8d1a89bf83fc1de4ef207f07f9bfa9fd7f030014828b1040b77e1e0000000049454e44ae426082, 'logo.png', 'image/png', 23722);

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_keluar`
--

CREATE TABLE `s_keluar` (
  `no_urut` int(11) NOT NULL,
  `no_agenda` float NOT NULL,
  `no_berkas` text NOT NULL,
  `tgl_suratk` text NOT NULL,
  `srt_no` text NOT NULL,
  `srt_ke` text NOT NULL,
  `srt_perihal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `s_keluar`
--

INSERT INTO `s_keluar` (`no_urut`, `no_agenda`, `no_berkas`, `tgl_suratk`, `srt_no`, `srt_ke`, `srt_perihal`) VALUES
(1, 1, '', '04 Januari 2016', '10/ID', 'Jamsostek', 'Laporan Tahunan Anggaran'),
(2, 2, '', '04 Januari 2016', '11/ID', 'DPRD Kediri', 'Pengajuan Bantuan'),
(5, 3, '', '04 Januari 2016', '20/ID', 'Jamsostek', 'Perencanaan Pembangunan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `s_masuk`
--

CREATE TABLE `s_masuk` (
  `no_urut` int(11) NOT NULL,
  `no_agenda` float NOT NULL,
  `no_berkas` text NOT NULL,
  `tgl_terima` text NOT NULL,
  `isi_disposisi` text NOT NULL,
  `srt_no` text NOT NULL,
  `srt_tgl` text NOT NULL,
  `srt_dari` text NOT NULL,
  `srt_perihal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `s_masuk`
--

INSERT INTO `s_masuk` (`no_urut`, `no_agenda`, `no_berkas`, `tgl_terima`, `isi_disposisi`, `srt_no`, `srt_tgl`, `srt_dari`, `srt_perihal`) VALUES
(1, 102, '', '04 Januari 2016', 'Tolong Selesaikan Secepatnya!', '11/ID', '04 Januari 2016', 'Walikota Kediri', 'Pengajuan Bantuan Dana Sosial '),
(2, 101, '', '04 Januari 2016', 'Secepatnya Diselesaikan!', '13/24/ID/', '02 Januari 2016', 'Kemendagri', 'Laporan Dana Moneter'),
(3, 103, '103', '04 Januari 2016', 'Harus selesai Tanggal 5 Januari 2014', '123', '04 Januari 2016', 'BPJS', 'Audit Dana Anggaran'),
(4, 104, '', '04 Januari 2016', '', '1994/09/24/ID', '03 Januari 2016', 'BPK', 'Laporan Anggaran Bantuan Sosial');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `s_keluar`
--
ALTER TABLE `s_keluar`
  ADD PRIMARY KEY (`no_urut`);

--
-- Indeks untuk tabel `s_masuk`
--
ALTER TABLE `s_masuk`
  ADD PRIMARY KEY (`no_urut`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ukklagi`
--
CREATE DATABASE IF NOT EXISTS `ukklagi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ukklagi`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
