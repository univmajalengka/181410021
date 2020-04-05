-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Apr 2020 pada 15.34
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
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'user', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `total_simpanan` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`no_anggota`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`, `status`, `total_simpanan`) VALUES
(1, 'Sandra', 'Majalengka', '2019-11-01', 'P', 'Heuleut', '089797611492', 'Mahasiswa', 15000),
(2, 'User', 'Majalengka', '2020-04-07', 'L', 'mjlk', '089797612000', 'Mahasiswa', 90000),
(3, 'Marlianti', 'Majalengka', '2019-12-06', 'P', 'Heuleut', '089766544322', 'Menikah', 1000000),
(4, 'Mulyana', 'Subang', '2019-11-08', 'L', 'Weragati', '089766544321', 'Menikah', 400000),
(5, 'Anisah', 'Majalengka', '2019-08-10', 'P', 'Panyingkiran', '089766544123', 'Mahasiswa', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_keluar`
--

CREATE TABLE `data_anggota_keluar` (
  `tanggal_keluar` date NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota_keluar`
--

INSERT INTO `data_anggota_keluar` (`tanggal_keluar`, `no_anggota`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`, `status`) VALUES
('2020-04-30', 12, 'Marlianti', 'Majalengka', '2019-11-08', 'P', 'Weragati', '085322233858', 'Menikah'),
('2020-04-30', 13, 'Agus Mulyana', 'Majalengka', '2019-08-07', 'L', 'Heuleut', '085233123858', 'Menikah'),
('2020-04-30', 14, 'Siti Anisah', 'Heuleut', '2019-07-10', 'P', 'Heuleut', '085323143112', 'Menikah'),
('2020-04-30', 15, 'Tika', 'Majalengka', '2020-02-04', 'P', 'Heuleut', '085797611492', 'Pelajar'),
('2020-04-10', 19, 'ijah', 'Majalengka', '2020-02-04', 'P', 'Palasah', '089797611492', 'Menikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_masuk`
--

CREATE TABLE `data_anggota_masuk` (
  `tanggal_masuk` date NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota_masuk`
--

INSERT INTO `data_anggota_masuk` (`tanggal_masuk`, `no_anggota`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`, `status`) VALUES
('2020-04-01', 1, 'Sandra', 'Majalengka', '2019-11-01', 'P', 'Heuleut', '089797611492', 'Mahasiswa'),
('2020-04-01', 2, 'User', 'Majalengka', '2020-04-07', 'L', 'mjlk', '089797612000', 'Mahasiswa'),
('2020-04-01', 3, 'Marlianti', 'Majalengka', '2019-12-06', 'P', 'Heuleut', '089766544321', 'Menikah'),
('2020-04-01', 4, 'Mulyana', 'Subang', '2019-11-08', 'L', 'Weragati ', '089766544321', 'Menikah'),
('2020-04-01', 5, 'Anisah', 'Majalengka', '2019-08-10', 'P', 'Panyingkiran', '089766544123', 'Mahasiswa'),
('2020-04-02', 12, 'Marlianti', 'Majalengka', '2019-11-08', 'P', 'Weragati', '085322233858', 'Menikah'),
('2020-04-10', 13, 'Agus Mulyana', 'Majalengka', '2019-08-07', 'L', 'Heuleut', '085233123858', 'Menikah'),
('2020-04-24', 14, 'Siti Anisah', 'Majalengka', '2019-07-10', 'P', 'Heuleut', '085323143112', 'Menikah'),
('2020-04-01', 15, 'Tika', 'Majalengka', '2020-02-04', 'P', 'Heuleut', '086797611492', 'Pelajar'),
('2020-04-01', 19, 'Ijah', 'Majalengka', '2020-02-04', 'P', 'Palasah', '089797611492', 'Menikah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penarikan`
--

CREATE TABLE `data_penarikan` (
  `no_transaksi` int(30) NOT NULL,
  `tanggal_penarikan` date NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `jumlah_penarikan` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penarikan`
--

INSERT INTO `data_penarikan` (`no_transaksi`, `tanggal_penarikan`, `no_anggota`, `nama_anggota`, `jumlah_penarikan`) VALUES
(6, '2020-04-01', 1, 'Sandra', 5000),
(7, '2020-04-02', 2, 'User', 10000),
(8, '2020-04-03', 3, 'Marlianti', 200000),
(9, '2020-04-04', 4, 'Mulyana', 100000),
(10, '2020-04-05', 5, 'Anisah', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tabungan`
--

CREATE TABLE `data_tabungan` (
  `no_transaksi` int(30) NOT NULL,
  `tanggal_simpanan` date NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `jumlah_simpanan` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_tabungan`
--

INSERT INTO `data_tabungan` (`no_transaksi`, `tanggal_simpanan`, `no_anggota`, `nama_anggota`, `jumlah_simpanan`) VALUES
(1, '2020-03-11', 1, 'Sandra', 20000),
(2, '2020-03-13', 2, 'User', 100000),
(3, '2020-03-22', 3, 'Marlianti', 1200000),
(4, '2020-03-27', 4, 'Mulyana', 500000),
(5, '2020-03-24', 5, 'Anisah', 1100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `Username` (`username`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indeks untuk tabel `data_anggota_keluar`
--
ALTER TABLE `data_anggota_keluar`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indeks untuk tabel `data_anggota_masuk`
--
ALTER TABLE `data_anggota_masuk`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indeks untuk tabel `data_penarikan`
--
ALTER TABLE `data_penarikan`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indeks untuk tabel `data_tabungan`
--
ALTER TABLE `data_tabungan`
  ADD PRIMARY KEY (`no_anggota`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
