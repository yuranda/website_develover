-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2018 pada 19.00
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `short_descriptions` tinytext,
  `descriptions` mediumtext,
  `slug` varchar(200) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `uploaded` varchar(40) DEFAULT NULL,
  `hits` int(1) DEFAULT NULL,
  `kategori` int(1) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `slider` enum('yes','no') DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `title`, `short_descriptions`, `descriptions`, `slug`, `foto`, `dates`, `uploaded`, `hits`, `kategori`, `tags`, `slider`, `status`) VALUES
(7, 'Teknologi Masa Kini', 'Teknologi Masa Kini', '<p>Teknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa Kini<br></p>', 'teknologi-masa-kini', '20181024013616.jpg', '2018-10-24 01:36:16', 'admin', 9, 8, '10', 'yes', 'show'),
(8, 'Android', 'adasdasdasdasd', '<p>Teknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa KiniTeknologi Masa Kini<br></p>', 'android', '20181024013645.jpg', '2018-10-24 01:36:45', 'admin', 17, 9, '10', 'yes', 'show');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(2) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `descriptions` longtext,
  `data_file` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `uploaded` varchar(100) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(5) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembangunan`
--

CREATE TABLE `data_pembangunan` (
  `id` bigint(5) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `sasaran` varchar(200) NOT NULL,
  `volume` varchar(200) NOT NULL,
  `dana` varchar(200) NOT NULL,
  `sumber` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `pola_pelaksanaan` varchar(200) NOT NULL,
  `penanggung_jawab` varchar(200) NOT NULL,
  `uploaded` varchar(50) NOT NULL,
  `dates` datetime NOT NULL,
  `status` enum('show','hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id` int(5) NOT NULL,
  `nama_data` varchar(255) DEFAULT NULL,
  `data_file` varchar(200) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `dates_d` datetime DEFAULT NULL,
  `uploaded` varchar(50) DEFAULT NULL,
  `hits_download` int(3) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `download_kategori`
--

CREATE TABLE `download_kategori` (
  `id` int(2) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `uploaded` varchar(100) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `short_descriptions` tinytext,
  `descriptions` mediumtext,
  `slug` varchar(200) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tgl_events` date NOT NULL,
  `dates` datetime DEFAULT NULL,
  `uploaded` varchar(40) DEFAULT NULL,
  `hits` int(1) DEFAULT NULL,
  `kategori` int(1) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kat` int(1) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `slug_kat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kat`, `nama`, `slug_kat`) VALUES
(8, 'Android', 'android'),
(9, 'Web Devloper', 'web-devloper');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan_desa`
--

CREATE TABLE `kelurahan_desa` (
  `id` int(1) NOT NULL,
  `nama_desa` varchar(100) DEFAULT NULL,
  `nama_kades` varchar(100) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `pangkat` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `tmp_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `hobbi` varchar(200) DEFAULT NULL,
  `motto_hidup` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `foto_kantor` varchar(200) DEFAULT NULL,
  `alamat_kantor` varchar(200) DEFAULT NULL,
  `alamat_website` varchar(200) DEFAULT NULL,
  `email_desa` varchar(100) DEFAULT NULL,
  `luas_wilayah` varchar(100) DEFAULT NULL,
  `jmlh_rt` int(2) DEFAULT NULL,
  `jmlh_rw` int(2) DEFAULT NULL,
  `jmlh_penduduk` int(2) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `uploaded` varchar(50) DEFAULT NULL,
  `descriptions` longtext,
  `status` enum('show','hide') DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `hits` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_berita`
--

CREATE TABLE `komentar_berita` (
  `id` int(1) NOT NULL,
  `id_berita` int(1) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `komentar` text,
  `dates` datetime DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_masuk`
--

CREATE TABLE `kontak_masuk` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `dates` datetime DEFAULT NULL,
  `status` enum('read','unread') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_agama`
--

CREATE TABLE `master_agama` (
  `id` int(1) NOT NULL,
  `agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_desa`
--

CREATE TABLE `master_desa` (
  `id` int(2) NOT NULL,
  `kelurahan_desa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_sosial`
--

CREATE TABLE `media_sosial` (
  `id` int(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` enum('show','hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media_sosial`
--

INSERT INTO `media_sosial` (`id`, `title`, `icon`, `class`, `link`, `status`) VALUES
(1, 'Facebook', 'fa-facebook', 'facebook', '#', 'show'),
(2, 'Twitter ', 'fa-twitter ', 'twitter ', '#', 'show'),
(3, 'Google Plus', 'fa-google-plus', 'google', '#', 'show'),
(4, 'Instagram', 'fa-instagram', 'instgram ', 'https://www.instagram.com/kec.simpangkatis', 'show');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `id` int(1) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `uploaded` varchar(200) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`id`, `title`, `img`, `link`, `uploaded`, `dates`, `status`) VALUES
(2, 'Siapa siapa saja', '20181024014536.jpg', 'http://banner', 'admin', '2018-10-24 01:45:36', 'show');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int(1) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `foto` mediumtext,
  `uploaded` varchar(40) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi_kemasyarakatan`
--

CREATE TABLE `organisasi_kemasyarakatan` (
  `id` int(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `descriptions` longtext NOT NULL,
  `slug` varchar(200) NOT NULL,
  `uploaded` varchar(40) NOT NULL,
  `dates` datetime NOT NULL,
  `hits` int(5) NOT NULL,
  `status` enum('show','hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat_kelurahan_desa`
--

CREATE TABLE `perangkat_kelurahan_desa` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pangkat` varchar(40) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `uploaded` varchar(40) NOT NULL,
  `dates` datetime NOT NULL,
  `status` enum('show','hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'alamat', 'Jln. Raya Sungailiat Selindung Baru Pangkalpinang'),
(3, 'email', 'jms@gmail.com'),
(4, 'telepon', '082377228970'),
(5, 'logo-header', 'logo-header.png'),
(6, 'logo-footer', 'logo-footer.png'),
(7, 'kode-kecamatan', '-'),
(8, 'nama-website', 'Web Resmi JMS'),
(9, 'motto', '-'),
(10, 'janji-pelayanan', 'Tiada Hari Tanpa Melayani, Kepuasan Anda Adalah Komitmen Kami'),
(11, 'kode-pos', '-'),
(12, 'kabupaten', '-'),
(13, 'provinsi', '-'),
(14, 'fax', '-'),
(15, 'pilihan-gaya', 'show'),
(16, 'logo-favicon', 'small-logo.png'),
(17, 'nama-kecamatan', '-'),
(18, 'jam-kerja', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(1) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `uploaded` varchar(50) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `title`, `short_description`, `img`, `link`, `uploaded`, `dates`, `status`) VALUES
(1, 'banner', 'asdasdas', 'slider-20181024004355.jpg', 'http://banner', 'admin', '2018-10-24 00:43:55', 'show'),
(2, 'banner', 'sajfhdahkfakfhlaf', 'slider-20181024024126.jpg', 'http://banner', 'admin', '2018-10-24 02:41:26', 'show');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(1) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `nama`, `slug`) VALUES
(10, 'Teknologi Masa Kini', 'teknologi-masa-kini');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_administrator`
--

CREATE TABLE `tb_administrator` (
  `ID` int(5) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('yes','no') DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL,
  `hak_akses` enum('admin','operator','khusus_pembangunan') DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat` text,
  `uploaded` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_administrator`
--

INSERT INTO `tb_administrator` (`ID`, `username`, `password`, `email`, `status`, `photo`, `tgl_daftar`, `hak_akses`, `nama_lengkap`, `no_hp`, `alamat`, `uploaded`) VALUES
(8, 'admin', '$2y$10$NnlzWpiWHyOFcZ74Eu8e8OIPamjzVYPnHn/Yol8g2ucyLTboL9NSG', 'muhamadzakky45@gmail.com', 'yes', NULL, '2017-07-05 02:05:30', 'admin', 'Muhamad Zakky', '082180057770', 'Desa Mabat', 'Muhamad'),
(18, 'pembangunan', '$2y$10$iyHja7QurOQfk4jDyOrPV.3UI1R7GBSMR6CLYz3h9nBvS99P.b7pG', 'pembangunan@gmail.com', 'yes', 'admin_20170706034429.jpg', '2017-07-06 03:34:53', 'khusus_pembangunan', 'Khusus Pembangunan', '082180057770', 'Nangka', 'pembangunan'),
(19, 'operator', '$2y$10$.GRHCnWrNhg6tl0GLAWF6.ycKAoyIjGtMDCfTlzbUDFGKPxr5IM2i', 'operator@gmail.com', 'yes', NULL, '2017-07-07 05:03:41', 'operator', 'Operator', '-', '-', 'zakkysaja'),
(20, 'estamozt', '$2y$10$X9sd0th1PWR6KtZJUrIbfOvNHKD4fmFl3BIVJGP9UZwAyi484gwae', 'estamozt@gmail.com', 'yes', NULL, '2018-02-01 09:18:36', 'admin', 'Mauludin', '085268211665', 'Jl.Mardeka No.2 Katis', 'Muhamad'),
(21, 'andi', '$2y$10$khMgcJVtdXMttfbKMv9bNO5UfPIizF7AZ00e7D8O96IUwx12wybRq', 'andirahmat34@ymail.com', 'yes', NULL, '2018-02-01 09:26:07', 'admin', 'Andi Rahmat', '085268566034', 'Jl.Mardeka No.2 Katis', 'estamozt'),
(22, 'aaron', '$2y$10$ZcwfvI3eO3m.6FLTffOoiOq9cDQdNRwGuuklNGOaMTjgEOJJfOUUW', 'tomykwok26@gmail.com', 'yes', NULL, '2018-02-01 09:43:37', 'admin', 'Tomy Arianto', '+6282281129995', 'Pangkalpinang', 'Muhamad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_album_galeri`
--

CREATE TABLE `tb_album_galeri` (
  `id` int(1) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cover` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `uploaded` varchar(50) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL,
  `hits` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_album_galeri`
--

INSERT INTO `tb_album_galeri` (`id`, `title`, `cover`, `slug`, `uploaded`, `dates`, `status`, `hits`) VALUES
(3, 'Web Devloper', '20181024003158.jpg', 'web-devloper', 'admin', '2018-10-24 00:31:58', 'show', NULL),
(4, 'Teknologi Masa Kini', '20181024003204.jpg', 'teknologi-masa-kini', 'admin', '2018-10-24 00:32:04', 'show', NULL),
(5, 'Android', '20181024004211.jpg', 'android', 'admin', '2018-10-24 00:42:11', 'show', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_aparatur`
--

CREATE TABLE `tb_aparatur` (
  `id_camat` int(1) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `pangkat` varchar(40) DEFAULT NULL,
  `tmp_lahir` varchar(40) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `hobbi` varchar(200) DEFAULT NULL,
  `motto_hidup` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `uploaded` varchar(40) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(1) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL,
  `facebook` varchar(255) NOT NULL,
  `gplus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_camat`
--

CREATE TABLE `tb_camat` (
  `id_camat` int(1) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `pangkat` varchar(40) DEFAULT NULL,
  `tmp_lahir` varchar(40) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `hobbi` varchar(200) DEFAULT NULL,
  `motto_hidup` varchar(200) DEFAULT NULL,
  `sambutan` text,
  `foto` varchar(200) DEFAULT NULL,
  `periode` varchar(200) DEFAULT NULL,
  `uploaded` varchar(40) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(1) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL,
  `facebook` varchar(255) NOT NULL,
  `gplus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(5) NOT NULL,
  `id_album_galeri` int(5) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `uploaded` varchar(50) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sosial_aparatur`
--

CREATE TABLE `tb_sosial_aparatur` (
  `id_sosial_pegawai` int(2) NOT NULL,
  `id_camat_sosial` int(1) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `gplus` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sosial_camat`
--

CREATE TABLE `tb_sosial_camat` (
  `id_sosial_pegawai` int(2) NOT NULL,
  `id_camat_sosial` varchar(5) NOT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `gplus` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentangkami`
--

CREATE TABLE `tentangkami` (
  `id` int(2) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `descriptions` longtext,
  `slug` varchar(200) DEFAULT NULL,
  `uploaded` varchar(100) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(5) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentangkami`
--

INSERT INTO `tentangkami` (`id`, `title`, `descriptions`, `slug`, `uploaded`, `dates`, `hits`, `status`) VALUES
(4, 'Tentang Kami', '<div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p><div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p><div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p><div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p><div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p><div class=\"icon-service\" style=\"color: rgb(102, 102, 102); font-family: arial, sans-serif; text-align: center;\"><h1 style=\"margin-top: 0px; margin-bottom: 0px; font-size: 24px; font-family: arial, sans-serif; font-weight: 600; line-height: 30px; color: rgb(68, 68, 68);\">Web Development</h1></div><p style=\"margin-bottom: 0px; color: rgb(102, 102, 102); font-family: arial, sans-serif; line-height: 22px; text-align: center;\">Mengembangkan aplikasi berbasis web dengan modern</p>', 'tentang-kami', 'admin', '2018-10-24 01:46:43', 19, 'show');

-- --------------------------------------------------------

--
-- Struktur dari tabel `widget_organisasi`
--

CREATE TABLE `widget_organisasi` (
  `id` int(1) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `descriptions` text,
  `icon` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pembangunan`
--
ALTER TABLE `data_pembangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `download_kategori`
--
ALTER TABLE `download_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `kelurahan_desa`
--
ALTER TABLE `kelurahan_desa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indeks untuk tabel `komentar_berita`
--
ALTER TABLE `komentar_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indeks untuk tabel `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_agama`
--
ALTER TABLE `master_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_desa`
--
ALTER TABLE `master_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media_sosial`
--
ALTER TABLE `media_sosial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organisasi_kemasyarakatan`
--
ALTER TABLE `organisasi_kemasyarakatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perangkat_kelurahan_desa`
--
ALTER TABLE `perangkat_kelurahan_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_administrator`
--
ALTER TABLE `tb_administrator`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tb_album_galeri`
--
ALTER TABLE `tb_album_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_aparatur`
--
ALTER TABLE `tb_aparatur`
  ADD PRIMARY KEY (`id_camat`);

--
-- Indeks untuk tabel `tb_camat`
--
ALTER TABLE `tb_camat`
  ADD PRIMARY KEY (`id_camat`);

--
-- Indeks untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sosial_aparatur`
--
ALTER TABLE `tb_sosial_aparatur`
  ADD PRIMARY KEY (`id_sosial_pegawai`);

--
-- Indeks untuk tabel `tb_sosial_camat`
--
ALTER TABLE `tb_sosial_camat`
  ADD PRIMARY KEY (`id_sosial_pegawai`);

--
-- Indeks untuk tabel `tentangkami`
--
ALTER TABLE `tentangkami`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `widget_organisasi`
--
ALTER TABLE `widget_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_pembangunan`
--
ALTER TABLE `data_pembangunan`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `download_kategori`
--
ALTER TABLE `download_kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kat` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelurahan_desa`
--
ALTER TABLE `kelurahan_desa`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komentar_berita`
--
ALTER TABLE `komentar_berita`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_agama`
--
ALTER TABLE `master_agama`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_desa`
--
ALTER TABLE `master_desa`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media_sosial`
--
ALTER TABLE `media_sosial`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `organisasi_kemasyarakatan`
--
ALTER TABLE `organisasi_kemasyarakatan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perangkat_kelurahan_desa`
--
ALTER TABLE `perangkat_kelurahan_desa`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_administrator`
--
ALTER TABLE `tb_administrator`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_album_galeri`
--
ALTER TABLE `tb_album_galeri`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_aparatur`
--
ALTER TABLE `tb_aparatur`
  MODIFY `id_camat` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_camat`
--
ALTER TABLE `tb_camat`
  MODIFY `id_camat` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_sosial_aparatur`
--
ALTER TABLE `tb_sosial_aparatur`
  MODIFY `id_sosial_pegawai` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_sosial_camat`
--
ALTER TABLE `tb_sosial_camat`
  MODIFY `id_sosial_pegawai` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tentangkami`
--
ALTER TABLE `tentangkami`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `widget_organisasi`
--
ALTER TABLE `widget_organisasi`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
