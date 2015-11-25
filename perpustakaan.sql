-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 01:36 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `Kode Anggota` varchar(10) NOT NULL,
  `Nama Anggota` varchar(20) NOT NULL,
  `Jenis Kelamin` tinyint(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Telephone` int(12) NOT NULL,
  `Kelas` varchar(5) NOT NULL,
  `Tanggal Daftar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `Kode Buku` varchar(10) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Tahun Terbit` varchar(10) NOT NULL,
  `Bahasa` varchar(50) NOT NULL,
  `Edisi` varchar(10) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penertbit`
--

CREATE TABLE IF NOT EXISTS `penertbit` (
  `Kode Penerbit` varchar(10) NOT NULL,
  `Nama Penerbit` varchar(30) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telphone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `Kode Petugas` varchar(10) NOT NULL,
  `Nama Petugas` varchar(20) NOT NULL,
  `Jenis Kelamin` tinyint(1) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `User` varchar(20) NOT NULL,
  `Pass` varchar(15) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`Kode Anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`Kode Buku`);

--
-- Indexes for table `penertbit`
--
ALTER TABLE `penertbit`
 ADD PRIMARY KEY (`Kode Penerbit`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
 ADD PRIMARY KEY (`Kode Petugas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
