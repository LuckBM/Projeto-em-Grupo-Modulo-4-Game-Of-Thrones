-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2023 às 13:26
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `game_of_thrones`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `characters`
--

CREATE TABLE `characters` (
  `character_actor` varchar(34) NOT NULL,
  `actor` varchar(27) NOT NULL,
  `episodes_appeared` int(11) NOT NULL,
  `first_appearance` int(11) NOT NULL,
  `last_appearance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `episodes`
--

CREATE TABLE `episodes` (
  `season` int(11) NOT NULL,
  `episode` int(11) DEFAULT NULL,
  `title` varchar(37) DEFAULT NULL,
  `release_date` varchar(9) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `votes` decimal(7,3) DEFAULT NULL,
  `summary` varchar(238) DEFAULT NULL,
  `writer_1` varchar(18) DEFAULT NULL,
  `writer_2` varchar(13) DEFAULT NULL,
  `star_1` varchar(21) DEFAULT NULL,
  `star_2` varchar(21) DEFAULT NULL,
  `star_3` varchar(21) DEFAULT NULL,
  `users_reviews` int(11) DEFAULT NULL,
  `critics_reviews` int(11) DEFAULT NULL,
  `us_viewers` decimal(5,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `director` varchar(18) DEFAULT NULL,
  `budget_estimate` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `houses`
--

CREATE TABLE `houses` (
  `house_name` varchar(33) NOT NULL,
  `region` varchar(41) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_actor`);

--
-- Índices para tabela `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`season`);

--
-- Índices para tabela `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`house_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
