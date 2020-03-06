-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2020 pada 09.25
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
-- Database: `koperasi_sejahtera(sandra marlianti m)`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Id_User` varchar(30) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_keluar`
--

CREATE TABLE `data_anggota_keluar` (
  `Tanggal_Keluar` varchar(15) NOT NULL,
  `Bulan` varchar(30) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` varchar(15) NOT NULL,
  `Jenis_Kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota_masuk`
--

CREATE TABLE `data_anggota_masuk` (
  `Tanggal_Masuk` varchar(15) NOT NULL,
  `Bulan` varchar(30) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` varchar(15) NOT NULL,
  `Jenis_Kelamin` varchar(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penarikan`
--

CREATE TABLE `data_penarikan` (
  `No_Transaksi` varchar(30) NOT NULL,
  `Tanggal_Penarikan` varchar(15) NOT NULL,
  `Bulan` varchar(30) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Jumlah_Penarikan` int(15) NOT NULL,
  `Total_Penarikan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_simpanan`
--

CREATE TABLE `data_simpanan` (
  `No_Transaksi` varchar(30) NOT NULL,
  `Tanggal_Simpanan` varchar(15) NOT NULL,
  `Bulan` varchar(30) NOT NULL,
  `No_Anggota` varchar(30) NOT NULL,
  `Nama_Anggota` varchar(50) NOT NULL,
  `Jumlah_Simpanan` int(15) NOT NULL,
  `Total_Simpanan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_User`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
