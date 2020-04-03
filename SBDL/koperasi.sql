-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Apr 2020 pada 10.47
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
-- Database: `koperasi_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `pekerjaan` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `no_hp` char(20) NOT NULL,
  `tabungan` varchar(16) NOT NULL,
  `pinjaman` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`username`, `password`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `pekerjaan`, `alamat`, `email`, `no_hp`, `tabungan`, `pinjaman`) VALUES
('aldi', '202cb962ac59075b964b07152d234b70', 'Aldi Ardiansyah', 321111099876, '2000-04-02', 'L', 'Mahasiswa', 'Heuleut', 'aldi@gmail', '085155113198', '90000', '150000'),
('hikayat', '202cb962ac59075b964b07152d234b70', 'Muhamad Hikayat', 321433566432, '1998-07-13', 'L', 'Mahasiswa', 'Pataking', 'hikayat@gmail', '08112384732', '900000', '800000'),
('irna', '9fc3d7152ba9336a670e36d0ed79bc43', 'Irna Sri Nulingga', 321010100011, '2000-10-22', 'P', 'Mahasiswa', 'Weragati', 'irna@gmail.com', '089766566789', '400000', '400000'),
('rizki', '202cb962ac59075b964b07152d234b70', 'Rizki Alam', 321345654001, '1999-01-01', 'L', 'Mahasiswa', 'Panyingkiran', 'rizki@gmail', '089766566789', '5000000', '500000'),
('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 321010100012, '1993-04-16', 'L', 'Mahasiswa', 'mjlk', 'user@gmail.com', '08112384200', '400000', '300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembayaran`
--

CREATE TABLE `data_pembayaran` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml_bayar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembayaran`
--

INSERT INTO `data_pembayaran` (`username`, `nama`, `tgl_bayar`, `jml_bayar`) VALUES
('member01', 'Ahmed ahmed', '2015-01-01', 50000),
('sandra', 'sandra', '2020-01-01', 500000),
('user', 'User', '2015-01-01', 200000),
('rizki', 'Rizki Alam', '2020-02-20', 500000),
('irna', 'Irna Sri Nulingga', '2020-05-10', 100000),
('hikayat', 'Muhamad Hikayat', '2020-04-01', 200000),
('aldi', 'Aldi Ardiansyah', '2020-05-01', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penarikan`
--

CREATE TABLE `data_penarikan` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `jml_ambil` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penarikan`
--

INSERT INTO `data_penarikan` (`username`, `nama`, `tgl_ambil`, `jml_ambil`) VALUES
('member01', 'Ahmed ahmed', '2015-01-01', 100000),
('sandra', 'sandra', '2020-01-01', 200000),
('sandra', 'sandra', '2020-12-01', 300000),
('irna', 'Irna Sri Nulingga', '2020-02-01', 200000),
('hikayat', 'Muhamad Hikayat', '2020-05-19', 50000),
('afif', 'Afif Surya R', '2020-06-18', 200000),
('afif', 'Afif Surya R', '2015-01-01', 200000),
('user', 'User', '2020-02-01', 100000),
('rizki', 'Rizki Alam', '2020-03-01', 5000000),
('irna', 'Irna Sri Nulingga', '2020-05-01', 100000),
('hikayat', 'Muhamad Hikayat', '2020-04-15', 100000),
('aldi', 'Aldi Ardiansyah', '2020-07-19', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pinjaman`
--

CREATE TABLE `data_pinjaman` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jml_transaksi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pinjaman`
--

INSERT INTO `data_pinjaman` (`username`, `nama`, `tgl_transaksi`, `jml_transaksi`) VALUES
('member01', 'Ahmed ahmed', '2015-01-01', 225000),
('member01', 'Ahmed ahmed', '2015-01-01', 75000),
('sandra', 'sandra', '2019-01-01', 1000000),
('sandra', 'sandra', '2019-01-01', 40000),
('irna', 'Irna Sri Nulingga', '2015-01-01', 100000),
('hikayat', 'Muhamad Hikayat', '2020-05-01', 200000),
('afif', 'Afif Surya R', '2020-06-01', 100000),
('user', 'User', '2015-01-01', 1000000),
('rizki', 'Rizki Alam', '2020-01-10', 1000000),
('irna', 'Irna Sri Nulingga', '2020-01-20', 500000),
('hikayat', 'Muhamad Hikayat', '2020-02-21', 1000000),
('aldi', 'Aldi Ardiansyah', '2020-03-01', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tabungan`
--

CREATE TABLE `data_tabungan` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_tabungan` date NOT NULL,
  `jml_tabungan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_tabungan`
--

INSERT INTO `data_tabungan` (`username`, `nama`, `tgl_tabungan`, `jml_tabungan`) VALUES
('member01', 'Ahmed ahmed', '2015-01-01', 500000),
('member01', 'Ahmed ahmed', '2015-01-01', 250000),
('sandra', 'sandra', '2015-01-01', 500000),
('sandra', 'sandra', '2020-05-01', 5000000),
('sandra', 'sandra', '2020-06-17', 5000000),
('user', 'User', '2020-01-01', 500000),
('rizki', 'Rizki Alam', '2020-01-20', 5000000),
('rizki', 'Rizki Alam', '2020-01-20', 5000000),
('irna', 'Irna Sri Nulingga', '2020-04-15', 500000),
('hikayat', 'Muhamad Hikayat', '2020-03-01', 1000000),
('aldi', 'Aldi Ardiansyah', '2020-01-20', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `nama`, `password`, `hak_akses`) VALUES
('admin01', 'Admin', '202cb962ac59075b964b07152d234b70', 'Admin'),
('aldi', 'Aldi Ardiansyah', '202cb962ac59075b964b07152d234b70', 'Member'),
('hikayat', 'Muhamad Hikayat', '202cb962ac59075b964b07152d234b70', 'Member'),
('irna', 'Irna Sri Nulingga', '9fc3d7152ba9336a670e36d0ed79bc43', 'Member'),
('rizki', 'Rizki Alam', '202cb962ac59075b964b07152d234b70', 'Member'),
('user', 'User', 'ee11cbb19052e40b07aac0ca060c23ee', 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
