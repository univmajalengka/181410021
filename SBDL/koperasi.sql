-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2020 pada 05.48
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Id_User` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Id_User`, `Username`, `Password`) VALUES
('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Total_Simpanan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`No_Anggota`, `Nama_Anggota`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `No_Telepon`, `Status`, `Total_Simpanan`) VALUES
('110', 'Hikayat', 'Subang', '13 Juli 1998', 'L', 'Pataking', '085122344566', 'Menikah', '1.000.000'),
('111', 'Safif', 'Majalengka', '28 Des 1998', 'L', 'Rajagaluh', '089766564234', 'Menikah', '1.500.000'),
('112', 'Nonoy', 'Majalengka', '28 Mei 2000', 'P', 'Palasah', '987655433122', 'Pelajar', '2.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_keluar`
--

CREATE TABLE `data_anggota_keluar` (
  `Tanggal_Keluar` varchar(15) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` varchar(15) NOT NULL,
  `Jenis_Kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota_keluar`
--

INSERT INTO `data_anggota_keluar` (`Tanggal_Keluar`, `No_Anggota`, `Nama_Anggota`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `No_Telepon`, `Status`) VALUES
('20 Januari 2020', '110', 'Hikayat ', 'Subang', '13 Juli 1998', 'L', 'Pataking', '085122344566', 'Menikah'),
('12 Maret 2020', '111', 'Safif', 'Majalengka', '28 Des 1998', 'L', 'Rajagaluh', '089766564234', 'Menikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_masuk`
--

CREATE TABLE `data_anggota_masuk` (
  `Tanggal_Masuk` varchar(15) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` varchar(15) NOT NULL,
  `Jenis_Kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota_masuk`
--

INSERT INTO `data_anggota_masuk` (`Tanggal_Masuk`, `No_Anggota`, `Nama_Anggota`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `No_Telepon`, `Status`) VALUES
('23 Januari 2019', '110', 'Hikayat', 'Subang', '13 Juli 1998', 'L', 'Pataking', '085122344566', 'Menikah'),
('9 Maret 2018', '111', 'Safif', 'Majalengka', '28 Des 1998', 'L', 'Majalengka', '089766564234', 'Menikah'),
('20 Des 2019', '112', 'Nonoy', 'Majalengka', '28 Mei 2000', 'P', 'Palasah', '087655433122', 'Pelajar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penarikan`
--

CREATE TABLE `data_penarikan` (
  `No_Transaksi` varchar(30) NOT NULL,
  `Tanggal_Penarikan` varchar(15) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Jumlah_Penarikan` int(15) NOT NULL,
  `Total_Penarikan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penarikan`
--

INSERT INTO `data_penarikan` (`No_Transaksi`, `Tanggal_Penarikan`, `No_Anggota`, `Nama_Anggota`, `Jumlah_Penarikan`, `Total_Penarikan`) VALUES
('1', '10 Mei 2019', '110', 'Hikayat', 200000, 200000),
('2', '2 Januari 2020', '112', 'Nonoy', 500000, 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_simpanan`
--

CREATE TABLE `data_simpanan` (
  `No_Transaksi` varchar(30) NOT NULL,
  `Tanggal_Simpanan` varchar(15) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Jumlah_Simpanan` int(15) NOT NULL,
  `Total_Simpanan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_simpanan`
--

INSERT INTO `data_simpanan` (`No_Transaksi`, `Tanggal_Simpanan`, `No_Anggota`, `Nama_Anggota`, `Jumlah_Simpanan`, `Total_Simpanan`) VALUES
('3', '1 April 2019', '110', 'Hikayat', 1000000, 1000000),
('4', '1 Des 2019', '111', 'Safif', 1500000, 1500000),
('5', '20 Maret 2020', '112', 'Nonoy', 2000000, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_User`),
  ADD KEY `Username` (`Username`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`No_Anggota`);

--
-- Indeks untuk tabel `data_anggota_keluar`
--
ALTER TABLE `data_anggota_keluar`
  ADD PRIMARY KEY (`No_Anggota`);

--
-- Indeks untuk tabel `data_anggota_masuk`
--
ALTER TABLE `data_anggota_masuk`
  ADD PRIMARY KEY (`No_Anggota`);

--
-- Indeks untuk tabel `data_penarikan`
--
ALTER TABLE `data_penarikan`
  ADD PRIMARY KEY (`No_Transaksi`);

--
-- Indeks untuk tabel `data_simpanan`
--
ALTER TABLE `data_simpanan`
  ADD PRIMARY KEY (`No_Transaksi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_anggota_masuk`
--
ALTER TABLE `data_anggota_masuk`
  ADD CONSTRAINT `data_anggota_masuk_ibfk_1` FOREIGN KEY (`No_Anggota`) REFERENCES `data_anggota` (`No_Anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
