-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 07:19 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhandphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `harga_barang` int(50) NOT NULL,
  `type_barang` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `harga_barang`, `type_barang`, `merk`) VALUES
('A001', 5000000, 'Galaxy note 4', 'Samsung'),
('B002', 4000000, 'NEO 3', 'Oppo'),
('C003', 3000000, 'Z3', 'Sony'),
('D004', 2000000, 'Lumia 620', 'Nokia'),
('E005', 1000000, 'Bold 9900', 'Blackberry'),
('F006', 2500000, 'GALAXY S7', 'Samsung'),
('G007', 5000000, 'NOKIA 920', 'Nokia'),
('H008', 1500000, 'GALAXY J2', 'Samsung'),
('I009', 3500000, 'NEO 9', 'Oppo'),
('J0010', 6500000, 'M4 AQUA', 'Sony');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(20) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_transaksi` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat`, `id_transaksi`) VALUES
('A1', 'Rian', 'Bandung', 1),
('A10', 'Sunny', 'Jakarta', 10),
('A2', 'Bebby', 'Semarang', 2),
('A3', 'Putra', 'Solo', 3),
('A4', 'Andi', 'Yogya', 4),
('A5', 'Lolly', 'Jakarta', 5),
('A6', 'Chaca', 'Semarang', 6),
('A7', 'Agus', 'Jakarata', 7),
('A8', 'Sinta', 'Bali', 8),
('A9', 'Bian', 'Solo', 9);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `id_barang` varchar(30) NOT NULL,
  `harga_barang` int(30) NOT NULL,
  `jml_barang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `harga_barang`, `jml_barang`) VALUES
(1, 'A004', 2000000, 1),
(2, 'A001', 5000000, 1),
(3, 'A002', 4000000, 1),
(4, 'A005', 1000000, 1),
(5, 'A003', 3000000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
