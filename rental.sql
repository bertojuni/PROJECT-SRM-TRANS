-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2019 pada 18.08
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_admin`
--

CREATE TABLE `bb_admin` (
  `id_admin` int(2) NOT NULL,
  `username_admin` varchar(35) NOT NULL,
  `password_admin` text NOT NULL,
  `date_admin` date NOT NULL,
  `time_admin` time NOT NULL,
  `date_time_admin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_admin`
--

INSERT INTO `bb_admin` (`id_admin`, `username_admin`, `password_admin`, `date_admin`, `time_admin`, `date_time_admin`) VALUES
(3, 'suryoragilmandiri', '3ee9b850c745f9c89b0faecc885980ca', '2019-09-24', '99:59:59', '2019-09-24 23:59:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_bank`
--

CREATE TABLE `bb_bank` (
  `id_bank` int(3) NOT NULL,
  `name_bank` varchar(45) NOT NULL,
  `acc_bank` varchar(25) NOT NULL,
  `owner_bank` varchar(45) NOT NULL,
  `logo_bank` varchar(45) NOT NULL,
  `date_bank` date NOT NULL,
  `time_bank` time NOT NULL,
  `date_time_bank` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_bank`
--

INSERT INTO `bb_bank` (`id_bank`, `name_bank`, `acc_bank`, `owner_bank`, `logo_bank`, `date_bank`, `time_bank`, `date_time_bank`) VALUES
(2, 'BAYAR DI TEMPAT', '000', 'HARAP HUBUNGI NO YANG SUDAH TERSEDIA TERLEBIH', 'tg1501154838.png', '2019-10-05', '07:55:14', '2019-10-05 07:55:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_category`
--

CREATE TABLE `bb_category` (
  `id_cat` int(3) NOT NULL,
  `name_cat` varchar(35) NOT NULL,
  `desc_cat` text NOT NULL,
  `slug_cat` text NOT NULL,
  `date_cat` date NOT NULL,
  `time_cat` time NOT NULL,
  `date_time_cat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_category`
--

INSERT INTO `bb_category` (`id_cat`, `name_cat`, `desc_cat`, `slug_cat`, `date_cat`, `time_cat`, `date_time_cat`) VALUES
(1, 'Bus Berkapasitas Besar', 'Bus besar dapat menampung banyak penumpang', 'bus-berkapasitas-besar', '2019-09-02', '18:59:07', '2019-09-02 18:59:07'),
(2, 'Bus Berkapasitas Kecil', 'bus kecil', 'bus-berkapasitas-kecil', '2019-09-22', '10:44:08', '2019-09-22 10:44:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_invoice`
--

CREATE TABLE `bb_invoice` (
  `id_inv` int(3) NOT NULL,
  `id_vh` int(3) NOT NULL,
  `status_inv` int(1) NOT NULL,
  `code_inv` varchar(13) NOT NULL,
  `name_inv` varchar(45) NOT NULL,
  `handphone_inv` varchar(20) NOT NULL,
  `email_inv` varchar(35) NOT NULL,
  `destination_inv` text NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `finish_date` date NOT NULL,
  `long_inv` int(3) NOT NULL,
  `total_inv` varchar(35) NOT NULL,
  `penalty_inv` varchar(45) NOT NULL,
  `img_inv` text NOT NULL,
  `id_bank` int(2) NOT NULL,
  `date_inv` date NOT NULL,
  `date_time_inv` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_invoice`
--

INSERT INTO `bb_invoice` (`id_inv`, `id_vh`, `status_inv`, `code_inv`, `name_inv`, `handphone_inv`, `email_inv`, `destination_inv`, `start_date`, `start_time`, `finish_date`, `long_inv`, `total_inv`, `penalty_inv`, `img_inv`, `id_bank`, `date_inv`, `date_time_inv`) VALUES
(3, 9, 2, '1909255817723', 'aku a', '0', 'hjkhdkjah@gamil.com', 'j', '2019-09-06', '15:00:00', '2019-09-10', 4, '2000000', '', '', 1, '2019-09-25', '2019-09-25 12:58:02'),
(6, 9, 2, '1909261866190', 'a a', '324356789', 'a@gmail.com', 'ddfg', '2019-09-02', '10:00:00', '2019-09-05', 3, '1500000', '', '', 2, '2019-09-26', '2019-09-26 14:18:55'),
(7, 9, 2, '1909262045489', 'berto juni', '0', 'imma.negro@gmail.com', 'u', '2019-09-02', '16:00:00', '2019-09-05', 3, '1500000', '', '', 2, '2019-09-26', '2019-09-26 14:23:48'),
(8, 9, 2, '1909264703646', 'berto juni', '0', 'a@gmail.com', 'u', '2019-09-13', '16:00:00', '2019-09-16', 3, '1500000', '', '', 2, '2019-09-26', '2019-09-26 14:25:02'),
(12, 9, 2, '1909266347537', 'coba sekali', '081228288345', 'cobasekali@gmail.com', 'Semarang', '2019-09-27', '15:00:00', '2019-09-29', 2, '1000000', '', '', 2, '2019-09-26', '2019-09-26 15:49:29'),
(13, 9, 2, '1909274921695', 'berto juni', '0', 'a@gmail.com', 'i', '2019-09-10', '14:00:00', '2019-09-13', 3, '1500000', '', '', 1, '2019-09-27', '2019-09-27 12:16:48'),
(14, 9, 2, '1909298823312', 'berto juni', '0', 'a@gmail.com', 'j', '2019-09-30', '20:00:00', '2019-10-03', 3, '1500000', '', '', 1, '2019-09-29', '2019-09-29 18:21:24'),
(15, 9, 2, '1910022032307', 'berto juni', '0', 'a@gmail.com', 'j', '2019-10-19', '16:00:00', '2019-10-22', 3, '1500000', '', '', 1, '2019-10-02', '2019-10-02 08:40:27'),
(16, 9, 2, '1910026437829', 'berto juni', '0', 'a@gmail.com', 'j', '2019-10-26', '16:00:00', '2019-10-29', 3, '1500000', '', '', 1, '2019-10-02', '2019-10-02 08:42:33'),
(17, 9, 2, '1910023429952', 'berto juni', '0', 'a@gmail.com', 'u', '2019-09-06', '12:00:00', '2019-09-09', 3, '1500000', '', '', 1, '2019-10-02', '2019-10-02 09:56:27'),
(18, 9, 2, '1910023676189', 'berto junu', '0', 'a@gmail.com', 'j', '2019-10-11', '21:00:00', '2019-10-14', 3, '1500000', '', '', 1, '2019-10-02', '2019-10-02 18:08:39'),
(20, 9, 2, '1910039855932', 'berto juni', '0', 'a@gmail.com', 'j', '2019-10-02', '14:00:00', '2019-10-06', 4, '2000000', '', '', 2, '2019-10-03', '2019-10-03 13:20:41'),
(21, 9, 2, '1910034418845', 'berto juni', '0', 'a@gmail.com', 'j', '2019-10-11', '14:00:00', '2019-10-14', 3, '1500000', '', '', 2, '2019-10-03', '2019-10-03 13:23:20'),
(22, 9, 2, '1910037763660', 'j h', '0', 'a@gmail.com', 'kjgf', '2019-10-02', '15:00:00', '2019-10-06', 4, '2000000', '', '', 2, '2019-10-03', '2019-10-03 13:28:31'),
(23, 9, 2, '1910039977022', '56 hg', '0', 'a@gmail.com', 'jl', '2019-09-04', '14:00:00', '2019-09-07', 3, '1500000', '', '', 2, '2019-10-03', '2019-10-03 13:30:19'),
(24, 9, 2, '1910033657379', 'dfgh fghj', '0', 'a@gmail.com', 'ber', '2019-09-04', '14:00:00', '2019-09-12', 8, '4000000', '', '', 2, '2019-10-03', '2019-10-03 13:33:21'),
(25, 9, 2, '1910034932320', 'jk lkj', '0', 'a@gmail.com', 'yukl', '2019-09-06', '17:00:00', '2019-09-09', 3, '1500000', '', '', 2, '2019-10-03', '2019-10-03 13:35:31'),
(26, 9, 2, '1910039901246', 'bertok k', '345', 'a@gmail.com', 'as', '2019-10-04', '15:00:00', '2019-10-08', 4, '2000000', '', '', 2, '2019-10-03', '2019-10-03 13:44:11'),
(28, 9, 2, '1910038906227', 'a a', '345', 'a@gmail.com', 'sdfgh', '2019-10-02', '15:00:00', '2019-10-04', 2, '1000000', '', '', 2, '2019-10-03', '2019-10-03 14:05:00'),
(29, 9, 2, '1910037041450', 'ads aswe', '345', 'a@gmail.com', 'asdf', '2019-10-11', '15:00:00', '2019-10-12', 1, '500000', '', '', 2, '2019-10-03', '2019-10-03 14:12:14'),
(30, 9, 2, '1910039045189', 'a s', '345', 'a@gmail.com', 'sdf', '2019-10-03', '15:00:00', '2019-10-07', 4, '2000000', '', '', 2, '2019-10-03', '2019-10-03 14:18:53'),
(31, 9, 9, '1910051026788', 'berto juni', '0', 'a@gmail.com', 'j', '2019-10-12', '10:00:00', '2019-10-15', 3, '3', '', '', 2, '2019-10-05', '2019-10-05 07:48:20'),
(32, 9, 1, '1910058626749', 'berto juni', '0', 'a@gmail.com', 'j', '2019-09-06', '13:00:00', '2019-09-09', 3, '3', '', '', 2, '2019-10-05', '2019-10-05 15:25:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_menu`
--

CREATE TABLE `bb_menu` (
  `id_menu` int(5) NOT NULL,
  `id_page` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_menu`
--

INSERT INTO `bb_menu` (`id_menu`, `id_page`) VALUES
(35, 4),
(36, 5),
(37, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_meta_category`
--

CREATE TABLE `bb_meta_category` (
  `id_mc` int(3) NOT NULL,
  `id_cat` int(3) NOT NULL,
  `id_vh` int(3) NOT NULL,
  `date_mc` date NOT NULL,
  `time_mc` time NOT NULL,
  `date_time_mc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_meta_category`
--

INSERT INTO `bb_meta_category` (`id_mc`, `id_cat`, `id_vh`, `date_mc`, `time_mc`, `date_time_mc`) VALUES
(2, 1, 2, '2017-07-17', '16:14:58', '2017-07-17 16:14:58'),
(3, 2, 3, '2017-07-17', '16:17:54', '2017-07-17 16:17:54'),
(4, 1, 4, '2017-08-01', '21:31:03', '2017-08-01 21:31:03'),
(5, 1, 5, '2017-08-01', '21:56:27', '2017-08-01 21:56:27'),
(6, 2, 6, '2017-08-01', '22:02:12', '2017-08-01 22:02:12'),
(7, 5, 7, '2017-11-13', '21:25:46', '2017-11-13 21:25:46'),
(8, 0, 8, '2017-12-10', '16:30:36', '2017-12-10 16:30:36'),
(9, 1, 9, '2017-12-10', '16:31:00', '2017-12-10 16:31:00'),
(10, 2, 10, '2019-09-02', '19:02:27', '2019-09-02 19:02:27'),
(11, 0, 11, '2019-09-02', '19:48:55', '2019-09-02 19:48:55'),
(12, 2, 12, '2019-09-02', '19:49:38', '2019-09-02 19:49:38'),
(13, 2, 10, '2019-09-03', '13:00:25', '2019-09-03 13:00:25'),
(14, 1, 10, '2019-09-12', '13:04:28', '2019-09-12 13:04:28'),
(15, 2, 10, '2019-09-19', '10:09:09', '2019-09-19 10:09:09'),
(16, 2, 10, '2019-09-22', '10:37:35', '2019-09-22 10:37:35'),
(17, 1, 11, '2019-09-22', '10:41:58', '2019-09-22 10:41:58'),
(18, 2, 12, '2019-09-22', '10:42:38', '2019-09-22 10:42:38'),
(19, 2, 13, '2019-09-22', '10:45:09', '2019-09-22 10:45:09'),
(20, 1, 14, '2019-09-22', '10:46:08', '2019-09-22 10:46:08'),
(21, 2, 15, '2019-09-22', '10:46:57', '2019-09-22 10:46:57'),
(22, 1, 10, '2019-10-03', '14:41:11', '2019-10-03 14:41:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_meta_seat`
--

CREATE TABLE `bb_meta_seat` (
  `id_ms` int(3) NOT NULL,
  `id_seat` int(3) NOT NULL,
  `id_vh` int(3) NOT NULL,
  `date_ms` date NOT NULL,
  `time_ms` time NOT NULL,
  `date_time_ms` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_meta_seat`
--

INSERT INTO `bb_meta_seat` (`id_ms`, `id_seat`, `id_vh`, `date_ms`, `time_ms`, `date_time_ms`) VALUES
(3, 1, 2, '2017-07-17', '16:14:58', '0000-00-00 00:00:00'),
(4, 2, 2, '2017-07-17', '16:14:58', '0000-00-00 00:00:00'),
(5, 3, 3, '2017-07-17', '16:17:54', '0000-00-00 00:00:00'),
(6, 4, 3, '2017-07-17', '16:17:54', '0000-00-00 00:00:00'),
(7, 1, 4, '2017-08-01', '21:31:03', '0000-00-00 00:00:00'),
(8, 1, 5, '2017-08-01', '21:56:27', '0000-00-00 00:00:00'),
(9, 2, 5, '2017-08-01', '21:56:27', '0000-00-00 00:00:00'),
(10, 1, 6, '2017-08-01', '22:02:12', '0000-00-00 00:00:00'),
(11, 3, 6, '2017-08-01', '22:02:12', '0000-00-00 00:00:00'),
(12, 4, 6, '2017-08-01', '22:02:12', '0000-00-00 00:00:00'),
(13, 1, 7, '2017-11-13', '21:25:46', '0000-00-00 00:00:00'),
(14, 0, 8, '2017-12-10', '16:30:36', '0000-00-00 00:00:00'),
(15, 5, 9, '2017-12-10', '16:31:00', '0000-00-00 00:00:00'),
(16, 0, 10, '2019-09-02', '19:02:27', '0000-00-00 00:00:00'),
(17, 6, 11, '2019-09-02', '19:48:55', '0000-00-00 00:00:00'),
(18, 6, 12, '2019-09-02', '19:49:38', '0000-00-00 00:00:00'),
(19, 6, 10, '2019-09-03', '13:00:25', '0000-00-00 00:00:00'),
(20, 5, 10, '2019-09-12', '13:04:28', '0000-00-00 00:00:00'),
(21, 0, 10, '2019-09-19', '10:09:09', '0000-00-00 00:00:00'),
(22, 6, 10, '2019-09-22', '10:37:35', '0000-00-00 00:00:00'),
(23, 5, 11, '2019-09-22', '10:41:58', '0000-00-00 00:00:00'),
(24, 7, 12, '2019-09-22', '10:42:38', '0000-00-00 00:00:00'),
(25, 5, 13, '2019-09-22', '10:45:09', '0000-00-00 00:00:00'),
(26, 5, 14, '2019-09-22', '10:46:08', '0000-00-00 00:00:00'),
(27, 8, 15, '2019-09-22', '10:46:57', '0000-00-00 00:00:00'),
(28, 5, 10, '2019-10-03', '14:41:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_page`
--

CREATE TABLE `bb_page` (
  `id_page` int(3) NOT NULL,
  `name_page` varchar(45) NOT NULL,
  `desc_page` text NOT NULL,
  `slug_page` text NOT NULL,
  `date_page` date NOT NULL,
  `time_page` time NOT NULL,
  `date_time_page` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_page`
--

INSERT INTO `bb_page` (`id_page`, `name_page`, `desc_page`, `slug_page`, `date_page`, `time_page`, `date_time_page`) VALUES
(4, 'Kontak Kami', '<blockquote><p>Anda bisa menghubungi no.telp yang sudah tersedia atau bisa mengunjungi kami di alamat yang sudah tersedia untuk info lebih lanjut.</p><pre>No.telp : 082220355955</pre><pre>Email   : mailto:imma.negro@gmail.com</pre><pre>Alamat  : Tambak Rt.01 Tamanan Banguntapan Bantul Yogyakarta</pre></blockquote>', 'kontak-kami', '2019-09-02', '18:54:58', '2019-09-02 18:54:58'),
(5, 'Tentang Kami', '<blockquote><p><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves></w:TrackMoves>\r\n  <w:TrackFormatting></w:TrackFormatting>\r\n  <w:PunctuationKerning></w:PunctuationKerning>\r\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\r\n  <w:LidThemeOther>IN</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables></w:BreakWrappedTables>\r\n   <w:SnapToGridInCell></w:SnapToGridInCell>\r\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\r\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\r\n   <w:DontGrowAutofit></w:DontGrowAutofit>\r\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\r\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\r\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\r\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\r\n   <m:brkBin m:val=\"before\"></m:brkBin>\r\n   <m:brkBinSub m:val=\"&#45;-\"></m:brkBinSub>\r\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\r\n   <m:dispDef></m:dispDef>\r\n   <m:lMargin m:val=\"0\"></m:lMargin>\r\n   <m:rMargin m:val=\"0\"></m:rMargin>\r\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\r\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\r\n   <m:intLim m:val=\"subSup\"></m:intLim>\r\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"371\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"></w:LsdException>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"></w:LsdException>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-ansi-language:IN;}\r\n</style>\r\n<![endif]--><font face=\"Comic Sans MS\">\r\n\r\n<br></font></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\"><font face=\"Comic Sans MS\"><span lang=\"IN\">CV.\r\nSuryo Ragil Mandiri merupakan jawaban dari kebutuhan akan kualitas pelayanan\r\nterhadap pelanggan. Berawal dari layanan jual beli material serta usaha dump\r\ntruck dan sampai saat ini berkembang dengan jasa rental alat berat. CV Suryo\r\nRagil Mandiri atau yang sering disebut dengan CV. SRM merupakan salah satu\r\nperusahaan yang bergerak dalam bidang jasa rental / sewa <span style=\"mso-spacerun:yes\">&nbsp;</span>alat – alat berat dan dump truck serta\r\nmenjalankan usaha di bidang supplier uruk dan material bangunan dan juga jasa\r\ntransportasi bus pariwisata. CV. SRM yang beralamatkan di Tambak RT 01 Tamanan\r\nBanguntapan Bantul DIY dengan visi dan misi serta jangkauan layanan yang\r\nbersifat global yang dipersembahkan untuk kepuasan pelanggan.</span></font></p><p>\r\n\r\n<font face=\"Comic Sans MS\"><br></font></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\"><font face=\"Comic Sans MS\"><span lang=\"IN\">Semenjak\r\ndidirikan pada tahun 2013, membuat kami lebih confidence dalam memberikan\r\nlayanan kepada seluruh partner / pelanggan dengan kualitas layanan yang selalu\r\nterbaik. Kecepatan, kualitas mutu layanan, respon time tercepat merupakan modal\r\nutama kami sebagai<span style=\"mso-spacerun:yes\">&nbsp; </span>penyedia jasa rental\r\nalat – alat berat dan supplier uruk dan material bangunan yang terdepan.</span></font></p><p>\r\n\r\n<font face=\"Comic Sans MS\"><br></font></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\"><font face=\"Comic Sans MS\"><span lang=\"IN\">Dan\r\nsejak tanggal 1 Agustus 2019, CV Suryo Ragil Mandiri mengembangkan usahanya\r\ndalam bidang jasa transportasi dengan adanya layanan BUS PARIWISATA yang\r\nbernama “SRM Trans”. Adapun bus pariwisata melayani trip dalam dan luar kota.</span></font></p><p>\r\n\r\n<font face=\"Comic Sans MS\"><br></font></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\"><font face=\"Comic Sans MS\"><span lang=\"IN\">Konsep\r\nbisnis CV. Suryo Ragil Mandiri sebagai Total Solution bussiness partner yang\r\nmemiliki visi dan misi sebagi mitra/ partner strategis yang sanggup memberikan\r\nkepuasan dan kenyamanan bagi personal maupun corporatecostumer.</span></font></p><p>\r\n\r\n<font face=\"Comic Sans MS\"><br></font></p></blockquote>', 'tentang-kami', '2019-09-02', '18:55:37', '2019-09-02 18:55:37');
INSERT INTO `bb_page` (`id_page`, `name_page`, `desc_page`, `slug_page`, `date_page`, `time_page`, `date_time_page`) VALUES
(6, 'Cara Pemesanan', '<blockquote><ol><li><font face=\"Comic Sans MS\">Silahkan arahakan cursor mouse ke arah tulisan <b><u style=\"background-color: rgb(255, 255, 0);\">BUS BERKAPASITAS BESAR</u></b>, lalu klik.</font></li><li><font face=\"Comic Sans MS\">Setelah anda klik maka akan di arah kan ke halaman form pemesanan yang anda harus isi. Setelah anda selesai isi maka pilih dan klik <b><u style=\"background-color: rgb(255, 255, 0);\">KIRIM PESANAN</u></b>.</font></li><li><font face=\"Comic Sans MS\">Setelah anda pilih atau klik maka akan keluar detail pemesanan anda. Di dalam detail pemesanan terdapat batas waktu pembayaran di mana anda di minta untuk melakukan pembayaran sebelum waktu itu habis. Jika waktu itu sudah berakhir maka pemesanan anda di nyatakan di batalkan. di dalam detail pemesanan terdapat tulisan <b><u style=\"background-color: rgb(255, 255, 0);\">MENUNGGU PEMBAYARAN</u></b> jika anda belum melakukan pembayaran. Jika sudah melakukan pembayaran maka tulisan tersebut akan berganti. Untuk pembayaran melalui transfer bisa melakukan pembayaran ke rekening mandiri yang sudah terdapat no.rekening di bawah batas waktu pembayaran.</font></li><li><font face=\"Comic Sans MS\">Jika anda melakukan pembayaran melalui <span style=\"background-color: rgb(255, 255, 0);\"><b><u>BAYAR DI TEMPAT</u></b></span> anda bisa melakukan pembayaran di loket garasi SRM Trans.</font></li><li><font face=\"Comic Sans MS\">Jika anda sudah melakukan pembayaran maka silahkan pilih dan klik <b><u style=\"background-color: rgb(255, 255, 0);\">KONFIRMASI PEMBAYARAN</u></b> yang terdapat di dalam kotak batas waktu pembayaran.</font></li><li><font face=\"Comic Sans MS\">Maka anda akan di arah kan ke dalam halaman lain. Di halaman tersebut maka pilih dan klik KIRIM KONFIRMASI. Jika anda melakukan pembayaran melalui <b><u style=\"background-color: rgb(255, 255, 0);\">TRANSFER</u></b> maka di wajibkan untuk mengirimkan <b><u style=\"background-color: rgb(255, 255, 0);\">BUKTI PEMBAYARAN</u></b> ke dalam <b><u style=\"background-color: rgb(255, 255, 0);\">NO.WHATSAPP</u></b> yang sudah tersedia di dalam halaman kontak kami.</font></li><li><font face=\"Comic Sans MS\">Setelah anda pilih dan klik maka anda akan di kembalikan ke halaman detail pemesanan. Di halaman tersebut terdapat <b><u style=\"background-color: rgb(255, 255, 0);\">ID PEMESANAN</u></b> dan <b><u style=\"background-color: rgb(255, 255, 0);\">NO.WHATSAPP</u></b> yang telah anda masukan. Fungsi dari kedua nya sebagai login untuk cek pemesanan bus anda yang terdapat di halaman cek pemesanan. Untuk bisa masuk ke dalam halaman cek pemesanan maka silahkan hafalkan atau catat <b><u style=\"background-color: rgb(255, 255, 0);\">ID PEMESANAN</u></b> anda dan <u style=\"background-color: rgb(255, 255, 0);\"><b>NO.WHATSAPP</b></u> anda.</font></li><li><font face=\"Comic Sans MS\">Di halaman detail pemesanan di bagian bawah juga terdapat tombol untuk mencetak detail pemesanan anda. Silahkan anda cetak sebagai alat buki bahwa anda sudah memesan bus tersebut dan tunjukan ke pada driver kami atau loket garasi SRM Trans dengan bentuk cetakan lanscape.</font></li><li><font face=\"Comic Sans MS\">Jika anda sudah melakukan pembayaran maka tulisan <b><u style=\"background-color: rgb(255, 255, 0);\">MENUNGGU PEMBAYARAN</u></b> akan berubah menjadi <b><u style=\"background-color: rgb(255, 255, 0);\">PROSES KONFIRMASI</u></b>.</font></li><li><font face=\"Comic Sans MS\">Jika anda akan melakukan pengecekan pemesanan, anda bisa pilih dan klik menu cek pemesanan dan silahkan masukan id pemesanan anda dan nomor yang anda masukan ke dalam form pemesanan.</font></li></ol></blockquote>', 'cara-pemesanan', '2019-09-05', '11:34:23', '2019-09-05 11:34:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_seat`
--

CREATE TABLE `bb_seat` (
  `id_seat` int(3) NOT NULL,
  `total_seat` varchar(3) NOT NULL,
  `date_seat` date NOT NULL,
  `time_seat` time NOT NULL,
  `date_time_seat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_seat`
--

INSERT INTO `bb_seat` (`id_seat`, `total_seat`, `date_seat`, `time_seat`, `date_time_seat`) VALUES
(5, '50', '2017-11-13', '21:32:57', '2017-11-13 21:32:57'),
(8, '30', '2019-09-22', '10:45:38', '2019-09-22 10:45:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_setting`
--

CREATE TABLE `bb_setting` (
  `id_ws` int(11) NOT NULL,
  `img_ws` varchar(100) NOT NULL,
  `name_ws` varchar(45) NOT NULL,
  `slogan_ws` varchar(55) NOT NULL,
  `telp_ws` varchar(19) NOT NULL,
  `email_ws` varchar(45) NOT NULL,
  `address_ws` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_setting`
--

INSERT INTO `bb_setting` (`id_ws`, `img_ws`, `name_ws`, `slogan_ws`, `telp_ws`, `email_ws`, `address_ws`) VALUES
(1, 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\n\n\n\"\"$$6*&&*6>424>LDDL_Z_||§', 'SRM Trans', 'Akomodasi dengan standar kenyamanan yang memuaskan', '082220355955', 'imma.negro@gmail.com', 'Tambak Rt 01 Tamanan Bangutapan Bantul DIY.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bb_vehicle`
--

CREATE TABLE `bb_vehicle` (
  `id_vh` int(3) NOT NULL,
  `name_vh` varchar(35) NOT NULL,
  `desc_vh` text NOT NULL,
  `slug_vh` text NOT NULL,
  `price_vh` varchar(35) NOT NULL,
  `image_vh` text NOT NULL,
  `date_vh` date NOT NULL,
  `time_vh` time NOT NULL,
  `date_time_vh` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bb_vehicle`
--

INSERT INTO `bb_vehicle` (`id_vh`, `name_vh`, `desc_vh`, `slug_vh`, `price_vh`, `image_vh`, `date_vh`, `time_vh`, `date_time_vh`) VALUES
(9, 'Bus Pariwisata', '<ul><li><font face=\"Comic Sans MS\">Free Wifi</font></li><li><font face=\"Comic Sans MS\">Disediakan Selimut dan Bantal</font></li><li><font face=\"Comic Sans MS\">Driver yang berpengalaman dan profesional<br></font><br></li></ul>', 'bus-pariwisata', '1', 'tg1567425471.png', '2019-10-04', '21:23:38', '2019-10-04 21:23:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bb_admin`
--
ALTER TABLE `bb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bb_bank`
--
ALTER TABLE `bb_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `bb_category`
--
ALTER TABLE `bb_category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indeks untuk tabel `bb_invoice`
--
ALTER TABLE `bb_invoice`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indeks untuk tabel `bb_menu`
--
ALTER TABLE `bb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `bb_meta_category`
--
ALTER TABLE `bb_meta_category`
  ADD PRIMARY KEY (`id_mc`);

--
-- Indeks untuk tabel `bb_meta_seat`
--
ALTER TABLE `bb_meta_seat`
  ADD PRIMARY KEY (`id_ms`);

--
-- Indeks untuk tabel `bb_page`
--
ALTER TABLE `bb_page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indeks untuk tabel `bb_seat`
--
ALTER TABLE `bb_seat`
  ADD PRIMARY KEY (`id_seat`);

--
-- Indeks untuk tabel `bb_setting`
--
ALTER TABLE `bb_setting`
  ADD PRIMARY KEY (`id_ws`);

--
-- Indeks untuk tabel `bb_vehicle`
--
ALTER TABLE `bb_vehicle`
  ADD PRIMARY KEY (`id_vh`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bb_admin`
--
ALTER TABLE `bb_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `bb_bank`
--
ALTER TABLE `bb_bank`
  MODIFY `id_bank` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bb_category`
--
ALTER TABLE `bb_category`
  MODIFY `id_cat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bb_invoice`
--
ALTER TABLE `bb_invoice`
  MODIFY `id_inv` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `bb_menu`
--
ALTER TABLE `bb_menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `bb_meta_category`
--
ALTER TABLE `bb_meta_category`
  MODIFY `id_mc` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `bb_meta_seat`
--
ALTER TABLE `bb_meta_seat`
  MODIFY `id_ms` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `bb_page`
--
ALTER TABLE `bb_page`
  MODIFY `id_page` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bb_seat`
--
ALTER TABLE `bb_seat`
  MODIFY `id_seat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `bb_setting`
--
ALTER TABLE `bb_setting`
  MODIFY `id_ws` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bb_vehicle`
--
ALTER TABLE `bb_vehicle`
  MODIFY `id_vh` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
