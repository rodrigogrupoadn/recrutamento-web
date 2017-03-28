-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Mar-2017 às 06:36
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_socio_torcedor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clube`
--

CREATE TABLE `tb_clube` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_exclusao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_rel_socio_clube`
--

CREATE TABLE `tb_rel_socio_clube` (
  `id` int(11) NOT NULL,
  `id_socio` int(11) NOT NULL,
  `id_clube` int(11) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_exclusao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_socio`
--

CREATE TABLE `tb_socio` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_exclusao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_clube`
--
ALTER TABLE `tb_clube`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rel_socio_clube`
--
ALTER TABLE `tb_rel_socio_clube`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_socio`
--
ALTER TABLE `tb_socio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clube`
--
ALTER TABLE `tb_clube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_rel_socio_clube`
--
ALTER TABLE `tb_rel_socio_clube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_socio`
--
ALTER TABLE `tb_socio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
