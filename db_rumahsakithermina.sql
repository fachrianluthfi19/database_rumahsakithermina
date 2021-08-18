-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 04:25 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumahsakithermina`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `keahlian` varchar(25) NOT NULL,
  `tarif` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `tanggal_lahir`, `alamat`, `no_telp`, `keahlian`, `tarif`) VALUES
(1, 'dr. H. Bambang Irwanto, S', '1969-05-10', 'Cipocok Jaya', 812784563, 'Spesialis Kebidanan', 4500000),
(2, 'dr. Novitrian E.P., Sp.OG', '1970-03-04', 'Pipitan ', 812675439, 'Spesialis Kebidanan', 4500000),
(3, 'dr. Oki Fitriani, Sp.A, M', '1971-04-15', 'Sukajaya', 812234785, 'Spesialis Anak', 4500000),
(4, 'dr. Ihat Sugianti, Sp.A', '1970-02-10', 'Penancangan', 812784562, 'Spesialis Anak', 4500000),
(5, 'dr. Cut Zamania Fitria Am', '1972-03-09', 'Curug', 812923411, 'Spesialis Mata', 4500000),
(6, 'dr.Mubarokatul Faikoh, Sp', '1972-06-11', 'Sawah luhur', 812447654, 'Sspesialis Mata', 4500000),
(7, 'dr. Iwan Setiawan, Sp.OT', '1972-10-27', 'Kaligandu', 812117853, 'Spesialis Orthopedi', 4500000),
(8, 'dr. Moch. Fathoni, Sp.OT', '1973-04-15', 'Lopang', 812178645, 'Spesialis Orthopedi', 4500000),
(9, 'dr. Suryadi Firmansyah, S', '1971-05-21', 'Lontar baru', 812098567, 'Spesialis Jantung', 4500000),
(10, 'dr. Nurnajmia Curie P., S', '1975-07-12', 'Pabuaran', 812045378, 'Spesialis Jantung', 4500000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `kegunaan` varchar(100) NOT NULL,
  `harga_obat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `kegunaan`, `harga_obat`) VALUES
(3, 'Vitamin A & Beta  Karoten', 'untuk membantu pertumbuhan tulang bayi.', 2500),
(4, 'Vitamin E', 'Membantu membentuk tubuh dan menggunakan sel darah dan otot.', 2500),
(5, 'Vitamin C', 'Bertinfak sebagai antioksidan yang mampu melindungi jaringan dari kerusakan dan membantu tubuh menye', 2500),
(6, 'Vitamin B1', 'Meningkatkan energi dan mengatur sistem saraf.', 2500),
(7, 'Vitamin B2', 'Mempertahankan energi, penglihatan yang baik, dan kulit sehat.', 2500),
(8, 'OBH Combi Anak', 'Ampuh untuk mengobati gejala influenza seperti batuk, demam, hidung tersumbah, bersin-bersin dan sak', 11900),
(9, 'Bodrexin Flu', 'meredakan flu pada anak yang biasanya disertai demam.', 12000),
(10, 'Panadol Sirup', 'obat sirup yang diperuntukan untuk sakit influenza, untuk anak usia dibawah 6 tahun', 40000),
(11, 'Artificial tears', 'Obat tetes mata yang berisi air mata buatan dapat melembabkan permukaan mata sering digunakan untuk ', 15000),
(12, 'Streoid tetes mata', 'untuk menghambat atau menekan kerja sistem kekebalan tubuh untuk mengurangi peradangan iritasi, nyer', 20000),
(13, 'chloramphenicol', 'Anti biotik mata, mencegah infeksi pada mata akibat bakteri', 10000),
(14, 'Antihistamin', 'Antihistamin digunakan untuk meredakan mata gatal dan berair akibat alergi', 12000),
(15, 'Carbonic anhydrase inhibi', 'Carbonic anhydrase inhibitors digunakan untuk mengobati penyakit glaukoma. obat ini menghambat produ', 35000),
(16, 'Morfin', 'adalah obat pereda nyeri(analgesik), yang disebabkan karena nyeri pada patah tulang yang cukup berat', 15000),
(17, 'meloxicam', 'digunakan untuk meredakan rasa nyeri dan juga obat ini berfungsi meredakan peradangan', 10000),
(18, 'Vitamin D', 'Nutrisi untuk tulang dalam masa penyembuhan, untuk membantu tulang kembali menyambung dan membentuk ', 15000),
(19, 'Antiplatelet', 'adalah jenis obat yang digunakan untuk meredakan serangan jantung', 27000),
(20, 'Antikoagulan', 'adalah golongan obat pengencer darah obat ini mengurangi kemungkinan darah untuk membentuk gumpalan ', 35000),
(21, 'Ace inhibitor', 'adalah obat yang utamanya mengatasi tekanan darah tinggi dan gagal jantung', 50000),
(22, 'Beta Bloker', 'obat ini sebagai standar obat-obat untuk mengatasi serangan jantung', 55000),
(23, 'Diuretik', 'untuk membantu mengatasi serangan jantung diuretik membantu tubuh untuk membuang kelebihan garam dan', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `nama_pasien` varchar(25) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `no_telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `id_dokter`, `nama_pasien`, `tanggal_lahir`, `alamat`, `no_telp`) VALUES
(1, 1, 'Siti', '1991-02-24', 'Kasemen ', 875342164),
(2, 1, 'Fitri', '1991-03-21', 'Penancangan ', 821456834),
(3, 1, 'Aqilla', '1990-01-11', 'Tembong', 812433356),
(4, 1, 'Ayu', '0000-00-00', 'Cipete', 899531354),
(5, 1, 'Nindi', '0000-00-00', 'Cipare', 831452877),
(6, 1, 'Bela', '1992-04-12', 'Taktakan', 865731132),
(7, 1, 'Citra', '1991-11-09', 'Cibendung', 852228127),
(8, 1, 'Devi', '1990-06-12', 'Cimuncang', 821147583),
(9, 1, 'Dela', '1994-07-28', 'Sawah luhur', 843222914),
(10, 1, 'Dhea', '1992-12-08', 'Cipocok', 844421356),
(11, 2, 'Azkia', '1992-09-11', 'Cipocok Jaya', 843122945),
(12, 2, 'Adhisti', '1990-01-22', 'Sawah luhur', 821111764),
(13, 2, 'Athalia', '1991-05-16', 'Sukajaya', 854321998),
(14, 2, 'Asha', '1992-08-01', 'Cipare', 877721645),
(15, 2, 'Bulan ', '1991-02-18', 'Taktakan', 834222918),
(16, 2, 'Danita', '1992-01-12', 'Pabuaran', 812334122),
(17, 2, 'Danti', '1990-07-11', 'Cimuncang', 899312234),
(18, 2, 'Diva', '1992-05-05', 'Sawah luhur', 875642221),
(19, 2, 'Dita', '1990-02-12', 'Cipocok', 812334888),
(20, 2, 'Dhira', '1991-03-12', 'Kasemen', 843355281),
(21, 3, 'Aaron', '2019-04-11', 'Curug', 0),
(22, 3, 'Adrian', '2019-03-12', 'Pipitan ', 0),
(23, 3, 'Agam', '2020-01-01', 'Sukajaya', 0),
(24, 3, 'Adit', '0000-00-00', 'Lopang', 0),
(25, 3, 'Rio', '0000-00-00', 'Lontar baru', 0),
(26, 3, 'Ariel', '2019-09-02', 'Pabuaran', 0),
(27, 3, 'Bagas', '2019-03-09', 'Cimuncang', 0),
(28, 3, 'Bagus', '2020-03-17', 'Sawah luhur', 0),
(29, 3, 'Firman', '2020-07-11', 'Cipocok', 0),
(30, 3, 'Alex', '2019-05-09', 'Kasemen', 0),
(31, 4, 'Elina', '2018-01-12', 'Kasemen', 0),
(32, 4, 'Esti', '2019-04-14', 'Tembong', 0),
(33, 4, 'Freya', '0000-00-00', 'Cipete', 0),
(34, 4, 'Yuniar', '2019-02-08', NULL, 0),
(35, 4, 'Gisell', '2019-02-13', 'Lontar baru', 0),
(36, 4, 'Gita', '2020-04-15', 'Cibendung', 0),
(37, 4, 'David', '2019-07-12', 'Cimuncang', 0),
(38, 4, 'Chris', '2019-03-19', 'Sawah luhur', 0),
(39, 4, 'Carlos', '0000-00-00', 'Cipocok', 0),
(40, 4, 'Aarav', '2019-05-18', 'Kasemen', 0),
(41, 5, 'Abraham', '1987-08-19', 'Cipocok Jaya', 875467922),
(42, 5, 'Adam', '1988-04-03', 'Sawah luhur', 875643111),
(43, 5, 'Buana', '1989-07-05', 'Sukajaya', 877754423),
(44, 5, 'Daffin ', '1999-05-12', 'Penancangan', 857491232),
(45, 5, 'Daniel', '1993-06-17', 'Taktakan', 867594442),
(46, 5, 'Liam', '1999-04-09', 'Pabuaran', 867599875),
(47, 5, 'Luis', '1998-07-06', 'Cimuncang', 865738221),
(48, 5, 'Ilham', '1988-03-09', 'Sawah luhur', 812784546),
(49, 5, 'Aji', '1990-04-15', 'Cipocok', 844421357),
(50, 5, 'Yusuf', '1995-08-04', 'Kasemen', 843355282),
(51, 6, 'Ari', '1998-02-18', 'Cipocok Jaya', 894323134),
(52, 6, 'Mandala', '1999-07-17', 'Pipitan ', 821111762),
(53, 6, 'Sakti', '1997-02-19', 'Cipete', 812234756),
(54, 6, 'Sandi', '1996-07-29', 'Penancangan', 831452866),
(55, 6, 'Abdul ', '1999-08-24', 'Lontar baru', 834222998),
(56, 6, 'Dimas', '1998-05-10', 'Cibendung', 867599845),
(57, 6, 'Erlangga', '1994-07-23', 'Cimuncang', 899312232),
(58, 6, 'Karim', '1997-05-15', 'Sawah luhur', 843222915),
(59, 6, 'Majid', '1990-03-15', 'Cipocok', 812334880),
(60, 6, 'Zulfan', '1995-08-12', 'Kasemen', 843355231),
(61, 7, 'Fatah', '1995-03-13', 'Cipocok Jaya', 812784575),
(62, 7, 'Alfariji', '1970-09-05', 'Pipitan ', 812675435),
(63, 7, 'Amar', '1971-07-13', 'Kaligandu', 812234735),
(64, 7, 'Adib', '1973-04-21', 'Cipare', 831452814),
(65, 7, 'Sidiq', '1971-02-21', '', 812784576),
(66, 7, 'Fajar', '1975-11-12', 'Pabuaran', 852228192),
(67, 7, 'Osama', '1992-01-12', 'Cimuncang', 899312234),
(68, 7, 'Asep', '1994-07-25', 'Sawah luhur', 843222910),
(69, 7, 'Akbar', '1992-12-03', 'Cipocok', 812334882),
(70, 7, 'Satya', '1991-03-14', 'Kasemen', 843355212),
(71, 8, 'Azka', '1980-11-01', 'Curug', 875342179),
(72, 8, 'Kane', '1972-06-04', 'Sawah luhur', 812675433),
(73, 8, 'Sandika', '1991-05-14', 'Kaligandu', 812117852),
(74, 8, 'Dede', '1992-08-05', 'Penancangan', 857491291),
(75, 8, 'Hanif', '1971-05-05', 'Taktakan', 834222912),
(76, 8, 'Mizan', '1975-07-01', 'Pabuaran', 852228101),
(77, 8, 'Mahendra', '1990-06-08', 'Cimuncang', 865738222),
(78, 8, 'Kale', '1992-05-02', 'Sawah luhur', 843222918),
(79, 8, 'Ihsan', '1992-02-16', 'Cipocok', 844421333),
(80, 8, 'Irwan', '1991-06-16', 'Kasemen', 843355292),
(81, 9, 'Zaenal', '1975-02-07', 'Cipocok Jaya', 812784512),
(82, 9, 'Eka', '1990-01-21', 'Tembong', 812433326),
(83, 9, 'Andi', '1971-04-19', 'Sukajaya', 899531357),
(84, 9, 'Rido', '1973-04-12', 'Penancangan', 812784534),
(85, 9, 'Bima', '1971-05-22', 'Taktakan', 834222913),
(86, 9, 'Lion', '1975-07-15', 'Cibendung', 812045391),
(87, 9, 'Kleon', '1990-07-18', 'Cimuncang', 899312231),
(88, 9, 'Yudha', '1992-05-18', 'Sawah luhur', 843222913),
(89, 9, 'Sundus', '1990-02-17', 'Cipocok', 844421338),
(90, 9, 'Alexi', '1991-03-10', 'Kasemen', 843355291),
(91, 10, 'Raden', '1975-02-02', 'Penancangan ', 812923422),
(92, 10, 'Zhea', '1972-06-14', 'Tembong', 812447653),
(93, 10, 'Fany', '1972-10-30', 'Cipete', 812234752),
(94, 10, 'Dafa', '1973-04-13', 'Cipare', 857491231),
(95, 10, 'Nela', '1971-05-29', 'Lontar baru', 812098561),
(96, 10, 'Surya', '1975-07-09', 'Pabuaran', 852228191),
(97, 10, 'Angga', '1998-07-08', 'Cimuncang', 821147587),
(98, 10, 'Abdel', '1997-05-12', 'Sawah luhur', 843222919),
(99, 10, 'Firdaus', '1992-12-10', 'Cipocok', 812334884),
(100, 10, 'Fauzan', '1991-03-15', 'Kasemen', 843355280);

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `nama_pasien` varchar(25) NOT NULL,
  `nama_dokter` varchar(25) NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `harga_obat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`id_resep`, `id_obat`, `id_dokter`, `nama_pasien`, `nama_dokter`, `nama_obat`, `harga_obat`) VALUES
(1, 3, 1, 'SIti', 'dr. H. Bambang Irwanto, S', 'Vitamin A & Beta  Karoten', 2500),
(2, 2, 1, 'Fitri', 'dr. H. Bambang Irwanto, S', 'Vitamin D', 2500),
(3, 5, 1, 'Aqila', 'dr. H. Bambang Irwanto, S', 'Vitamin C', 2500),
(4, 6, 1, 'Ayu', 'dr. H. Bambang Irwanto, S', 'Vitamin B1', 2500),
(5, 4, 1, 'Nindi', 'dr. H. Bambang Irwanto, S', 'Vitamin E', 2500),
(6, 7, 1, 'Bela', 'dr. H. Bambang Irwanto, S', 'Vitamin B2', 2500),
(7, 6, 1, 'Citra', 'dr. H. Bambang Irwanto, S', 'Vitamin B1', 2500),
(8, 3, 1, 'Devi', 'dr. H. Bambang Irwanto, S', 'Vitamin A & Beta Karoken', 2500),
(9, 5, 1, 'Dela', 'dr. H. Bambang Irwanto, S', 'Vitamin C', 2500),
(10, 6, 1, 'Dhea', 'dr. H. Bambang Irwanto, S', 'Vitamin B1', 2500),
(11, 4, 2, 'Azkia', 'dr. Novitrian E.P., Sp.OG', 'Vitamin E', 2500),
(12, 5, 2, 'Adhisti', 'dr. Novitrian E.P., Sp.OG', 'Vitamin C', 2500),
(13, 6, 2, 'Athalia', 'dr. Novitrian E.P., Sp.OG', 'Vitamin B1', 2500),
(14, 7, 2, 'Asha', 'dr. Novitrian E.P., Sp.OG', 'Vitamin B2', 2500),
(15, 3, 2, 'Bulan', 'dr. Novitrian E.P., Sp.OG', 'Vitamin A & Beta  Karoten', 2500),
(16, 4, 2, 'Danita', 'dr. Novitrian E.P., Sp.OG', 'Vitamin E', 2500),
(17, 5, 2, 'Danti', 'dr. Novitrian E.P., Sp.OG', 'Vitamin C', 2500),
(18, 6, 2, 'Diva', 'dr. Novitrian E.P., Sp.OG', 'Vitamin B1', 2500),
(19, 7, 2, 'Dita', 'dr. Novitrian E.P., Sp.OG', 'Vitamin B2', 2500),
(20, 3, 2, 'Dhira', 'dr. Novitrian E.P., Sp.OG', 'Vitamin A & Beta  Karoten', 2500),
(21, 8, 3, 'Aaron', 'dr. Oki Fitriani, Sp.A, M', 'OBH Combi Anak', 11900),
(22, 9, 3, 'Adrian', 'dr. Oki Fitriani, Sp.A, M', 'Bodrexin Flu', 40000),
(23, 8, 3, 'Agam', 'dr. Oki Fitriani, Sp.A, M', 'OBH Combi', 11900),
(24, 9, 3, 'Adit', 'dr. Oki Fitriani, Sp.A, M', 'Bodrexin Flu', 12000),
(25, 10, 3, 'Rio', 'dr. Oki Fitriani, Sp.A, M', 'Panadol sirup', 40000),
(26, 8, 3, 'Ariel', 'dr. Oki Fitriani, Sp.A, M', 'OBH Combi Anak', 11900),
(27, 9, 3, 'Bagas', 'dr. Oki Fitriani, Sp.A, M', 'Bodrexin Flu', 12000),
(28, 10, 3, 'Bagus', 'dr. Oki Fitriani, Sp.A, M', 'Panadol Sirup', 40000),
(29, 8, 3, 'Firman', 'dr. Oki Fitriani, Sp.A, M', 'OBH Combi', 11900),
(30, 9, 3, 'Alex', 'dr. Oki Fitriani, Sp.A, M', 'Bodrexin Flu', 12000),
(31, 8, 4, 'Elina', 'dr. Ihat Sugianti, Sp.A', 'OBH Combi Anak', 11900),
(32, 9, 4, 'Esti', 'dr. Ihat Sugianti, Sp.A', 'Bodrexin Flu', 12000),
(33, 10, 4, 'Freya', 'dr. Ihat Sugianti, Sp.A', 'Panadol Sirup', 40000),
(34, 8, 4, 'Yuniar', 'dr. Ihat Sugianti, Sp.A', 'OBH Combi anak', 11900),
(35, 9, 4, 'Gisell', 'dr. Ihat Sugianti, Sp.A', 'Bodrexin Flu', 12000),
(36, 10, 4, 'Gita', 'dr. Ihat Sugianti, Sp.A', 'Panadol Sirup', 40000),
(37, 8, 4, 'David', 'dr. Ihat Sugianti, Sp.A', 'OBH Combi Anak', 11900),
(38, 9, 4, 'Chris', 'dr. Ihat Sugianti, Sp.A', 'Bodrexin Flu', 12000),
(39, 10, 4, 'Carlos', 'dr. Ihat Sugianti, Sp.A', 'Panadol sirup', 40000),
(40, 8, 4, 'Aarav', 'dr. Ihat Sugianti, Sp.A', 'OBH Combi Anak', 11900),
(41, 11, 5, 'Abraham', 'dr. Cut Zamania Fitria Am', 'Artifical tears', 15000),
(42, 12, 5, 'Adam', 'dr. Cut Zamania Fitria Am', 'Streoid tetes mata', 20000),
(43, 13, 5, 'Buana', 'dr. Cut Zamania Fitria Am', 'Chloramphenicol', 10000),
(44, 14, 5, 'Daffin ', 'dr. Cut Zamania Fitria Am', 'Antihistamin', 12000),
(45, 15, 5, 'Daniel', 'dr. Cut Zamania Fitria Am', 'Carbonic Anhydrase inhibi', 35000),
(46, 15, 5, 'Liam', 'dr. Cut Zamania Fitria Am', 'Carbonic Anhydrase inhibi', 35000),
(47, 14, 5, 'Luis', 'dr. Cut Zamania Fitria Am', 'Antihistamin', 12000),
(48, 13, 5, 'Ilham', 'dr. Cut Zamania Fitria Am', 'Chloramphenicol', 10000),
(49, 12, 5, 'Aji', 'dr. Cut Zamania Fitria Am', 'Stereoid tetes mata', 20000),
(50, 11, 5, 'Yusuf', 'dr. Cut Zamania Fitria Am', 'Artificial tears', 15000),
(51, 15, 6, 'Ari', 'dr.Mubarokatul Faikoh, Sp', 'Carbonic anhydrase inhibi', 35000),
(52, 14, 6, 'Mandala', 'dr.Mubarokatul Faikoh, Sp', 'Antihistamin', 12000),
(53, 11, 6, 'Sakti', 'dr.Mubarokatul Faikoh, Sp', 'Artifical tears', 15000),
(54, 12, 6, 'Sandi', 'dr.Mubarokatul Faikoh, Sp', 'Streoid tetes mata', 20000),
(55, 13, 6, 'Abdul', 'dr.Mubarokatul Faikoh, Sp', 'Chloramphenicol', 10000),
(56, 14, 6, 'Dimas', 'dr.Mubarokatul Faikoh, Sp', 'Antihistamin', 12000),
(57, 15, 6, 'Erlangga', 'dr.Mubarokatul Faikoh, Sp', 'Carbonic Anhydrase inhibi', 35000),
(58, 11, 6, 'Karim', 'dr.Mubarokatul Faikoh, Sp', 'Artificial tears', 15000),
(59, 12, 6, 'Majid', 'dr.Mubarokatul Faikoh, Sp', 'Stereoid tetes mata', 20000),
(60, 13, 6, 'Zulfan', 'dr.Mubarokatul Faikoh, Sp', 'Chloramphenicol', 10000),
(61, 16, 7, 'Fatah', 'dr. Iwan Setiawan, Sp.OT', 'Morfin', 15000),
(62, 17, 7, 'Alfariji', 'dr. Iwan Setiawan, Sp.OT', 'meloxicam', 10000),
(63, 18, 7, 'Amar', 'dr. Iwan Setiawan, Sp.OT', 'Vitamin D', 15000),
(64, 16, 7, 'Adib', 'dr. Iwan Setiawan, Sp.OT', 'morfin', 15000),
(65, 17, 7, 'Sidiq', 'dr. Iwan Setiawan, Sp.OT', 'meloxicam', 10000),
(66, 18, 7, 'Fajar', 'dr. Iwan Setiawan, Sp.OT', 'Vitamin D', 15000),
(67, 16, 7, 'Osama', 'dr. Iwan Setiawan, Sp.OT', 'Morfin', 15000),
(68, 17, 7, 'Asep', 'dr. Iwan Setiawan, Sp.OT', 'Meloxicam', 10000),
(69, 18, 7, 'Akbar', 'dr. Iwan Setiawan, Sp.OT', 'Vitamin D', 15000),
(70, 16, 7, 'Satya', 'dr. Iwan Setiawan, Sp.OT', 'Morfin', 15000),
(71, 16, 8, 'Azka', 'dr. Moch. Fathoni, Sp.OT', 'Morfin', 15000),
(72, 17, 8, 'Kane', 'dr. Moch. Fathoni, Sp.OT', 'meloxicam', 10000),
(73, 18, 8, 'Sandika', 'dr. Moch. Fathoni, Sp.OT', 'Vitamin D', 15000),
(74, 16, 8, 'Dede', 'dr. Moch. Fathoni, Sp.OT', 'morfin', 15000),
(75, 17, 8, 'Hanif', 'dr. Moch. Fathoni, Sp.OT', 'meloxicam', 10000),
(76, 18, 8, 'Mizan', 'dr. Moch. Fathoni, Sp.OT', 'Vitamin D', 15000),
(77, 16, 8, 'Mahendra', 'dr. Moch. Fathoni, Sp.OT', 'Morfin', 15000),
(78, 17, 8, 'Kale', 'dr. Moch. Fathoni, Sp.OT', 'Meloxicam', 10000),
(79, 18, 8, 'Ihsan', 'dr. Moch. Fathoni, Sp.OT', 'Vitamin D', 15000),
(80, 16, 8, 'Irwan', 'dr. Moch. Fathoni, Sp.OT', 'Morfin', 15000),
(81, 19, 9, 'Zaenal', 'dr. Suryadi Firmansyah, S', 'Antiplatelet', 27000),
(82, 20, 9, 'Eka', 'dr. Suryadi Firmansyah, S', 'Antikoagulan', 35000),
(83, 21, 9, 'Andi', 'dr. Suryadi Firmansyah, S', 'Ace inhibitor', 50000),
(84, 22, 9, 'Rido', 'dr. Suryadi Firmansyah, S', 'Beta Bloker', 55000),
(85, 23, 9, 'Bima', 'dr. Suryadi Firmansyah, S', 'Diuretik', 45000),
(86, 19, 9, 'Lion', 'dr. Suryadi Firmansyah, S', 'antiplatelet', 27000),
(87, 20, 9, 'Kleon', 'dr. Suryadi Firmansyah, S', 'Antikoagulan', 35000),
(88, 21, 9, 'Yudha', 'dr. Suryadi Firmansyah, S', 'Ace inhibitor', 50000),
(89, 22, 9, 'Sundus', 'dr. Suryadi Firmansyah, S', 'Beta Bloker', 55000),
(90, 23, 9, 'Alexi', 'dr. Suryadi Firmansyah, S', 'Diuretik', 45000),
(91, 19, 10, 'Raden', ' dr. Nurnajmia Curie P., ', 'Antiplatelet', 27000),
(92, 20, 10, 'Zhea', ' dr. Nurnajmia Curie P., ', 'Antikoagulan', 35000),
(93, 21, 10, 'Fany', ' dr. Nurnajmia Curie P., ', 'Ace inhibitor', 50000),
(94, 22, 10, 'Dafa', ' dr. Nurnajmia Curie P., ', 'Beta Bloker', 55000),
(95, 23, 10, 'Nela', ' dr. Nurnajmia Curie P., ', 'Diuretik', 45000),
(96, 19, 10, 'Surya', ' dr. Nurnajmia Curie P., ', 'antiplatelet', 27000),
(97, 20, 10, 'Angga', ' dr. Nurnajmia Curie P., ', 'Antikoagulan', 35000),
(98, 21, 10, 'Abdel', ' dr. Nurnajmia Curie P., ', 'Ace inhibitor', 50000),
(99, 22, 10, ' Firdaus', ' dr. Nurnajmia Curie P., ', 'Beta Bloker', 55000),
(100, 23, 10, 'Fauzan', ' dr. Nurnajmia Curie P., ', 'Diuretik', 45000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
