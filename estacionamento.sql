-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2025 às 19:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `nome_andar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `nome_andar`) VALUES
(1, 50, 'Térreo'),
(2, 40, '1º Andar'),
(3, 35, '2º Andar'),
(4, 30, '3º Andar'),
(5, 45, '4º Andar'),
(6, 25, '5º Andar'),
(7, 20, 'Subsolo 1'),
(8, 30, 'Subsolo 2'),
(9, 15, 'Subsolo 3'),
(10, 10, 'VIP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` date NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('10101010101', '1987-02-28', 'Marcos Pereira'),
('11111111111', '1980-01-01', 'João Silva'),
('22222222222', '1992-05-10', 'Maria Souza'),
('33333333333', '1985-07-21', 'Carlos Martins'),
('44444444444', '1990-03-15', 'Ana Beatriz Lima'),
('55555555555', '1995-09-30', 'Fernanda Costa'),
('66666666666', '1978-11-05', 'Ricardo Gomes'),
('77777777777', '1983-04-12', 'Paula Fernandes'),
('88888888888', '1999-06-18', 'Roberto Oliveira'),
('99999999999', '2001-08-25', 'Juliana Castro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` time NOT NULL,
  `dtEntrada` date NOT NULL,
  `horEntrada` time NOT NULL,
  `dtSaida` date NOT NULL,
  `placa` varchar(7) NOT NULL,
  `codLugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '10:00:00', '2023-09-01', '08:00:00', '2023-09-01', 'AAA-111', 1),
(2, '11:30:00', '2023-09-01', '09:00:00', '2023-09-01', 'BBB-222', 2),
(3, '12:45:00', '2023-09-02', '11:00:00', '2023-09-02', 'CCC-333', 3),
(4, '14:15:00', '2023-09-02', '12:30:00', '2023-09-02', 'DDD-444', 4),
(5, '15:00:00', '2023-09-03', '13:00:00', '2023-09-03', 'EEE-555', 5),
(6, '16:20:00', '2023-09-03', '14:00:00', '2023-09-03', 'FFF-666', 6),
(7, '17:45:00', '2023-09-04', '15:30:00', '2023-09-04', 'GGG-777', 7),
(8, '18:10:00', '2023-09-04', '16:00:00', '2023-09-04', 'HHH-888', 8),
(9, '19:30:00', '2023-09-05', '17:15:00', '2023-09-05', 'III-999', 9),
(10, '20:00:00', '2023-09-05', '18:00:00', '2023-09-05', 'JJJ-101', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Gol'),
(2, 'Civic'),
(3, 'Palio'),
(4, 'Corolla'),
(5, 'Onix'),
(6, 'HB20'),
(7, 'Compass'),
(8, 'Fusca'),
(9, 'Hilux'),
(10, 'Uno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
('AAA-111', 'Preto', '11111111111', 1),
('BBB-222', 'Branco', '22222222222', 2),
('CCC-333', 'Vermelho', '33333333333', 3),
('DDD-444', 'Azul', '44444444444', 4),
('EEE-555', 'Verde', '55555555555', 5),
('FFF-666', 'Cinza', '66666666666', 6),
('GGG-777', 'Amarelo', '77777777777', 7),
('HHH-888', 'Prata', '88888888888', 8),
('III-999', 'Roxo', '99999999999', 9),
('JJJ-101', 'Verde', '10101010101', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
