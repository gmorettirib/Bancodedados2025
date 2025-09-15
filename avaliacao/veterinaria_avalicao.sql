-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 14:09
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veterinaria_avalicao`
--
CREATE DATABASE IF NOT EXISTS `veterinaria_avalicao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinaria_avalicao`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal`
--

CREATE TABLE `animal` (
  `CodAnimal` varchar(6) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Tipoanimal` varchar(20) NOT NULL,
  `racaanimal` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animal`
--

INSERT INTO `animal` (`CodAnimal`, `Nome`, `Tipoanimal`, `racaanimal`, `cidade`) VALUES
('ANI123', 'Toto Peri', 'Cachorro', 'Boxer', 'Ribeirao Pires'),
('ANI124', 'Mimi', 'Gato', 'Vira-lata', 'Maua'),
('ANI125', 'Merlin', 'Peixe', 'Tetra', 'Santo Andre');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `Codconsulta` int(11) DEFAULT NULL,
  `CRMV` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL,
  `CodVeterinario` int(11) DEFAULT NULL,
  `CodAnimal` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `CodVeterinario` int(11) NOT NULL,
  `CRMV` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veterinario`
--

INSERT INTO `veterinario` (`CodVeterinario`, `CRMV`, `nome`, `telefone`, `rg`, `email`) VALUES
(1, 13219, 'Maria Fernanda', '5555-9999', '22.765.987-x', NULL),
(2, 28765, 'Pedro Henrique', '7777-8888', '11.123.123-x', NULL),
(3, 35432, 'Joelma Assis', '9999-4444', '33.456.456-x', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`CodAnimal`);

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD KEY `CodVeterinario` (`CodVeterinario`),
  ADD KEY `CodAnimal` (`CodAnimal`);

--
-- Índices de tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`CodVeterinario`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`CodVeterinario`) REFERENCES `veterinario` (`CodVeterinario`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`CodAnimal`) REFERENCES `animal` (`CodAnimal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
