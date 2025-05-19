-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 14:07
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
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Laticínios'),
(3, 'Embalagens'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônicos'),
(10, 'Congelados'),
(12, 'Frios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em Pó', 25.00, 4, 'OMO', 1, 'un'),
(2, 'Detergente', 3.25, 20, 'Ypê', 1, 'un'),
(3, 'Mussarela', 55.60, 100, 'Presidente', 2, 'kg'),
(4, 'Iogurte natural', 3.29, 200, 'Danone', 2, 'copo 170g'),
(5, 'Papel Aluminio', 7.59, 50, 'Wyda', 3, 'un'),
(6, 'Papel Toalha', 4.24, 75, 'Scala', 3, 'un'),
(7, 'Milho Verde', 4.50, 78, 'Quero', 4, 'lata 340g'),
(8, 'Ervilha', 3.52, 150, 'Quero', 4, 'lata 340g'),
(9, 'Carne Moída', 35.90, 60, 'Friboi', 5, 'kg'),
(10, 'Coxa de Frango', 15.50, 78, 'Sadia', 5, 'kg'),
(11, 'Detergente Ypê', 2.49, 100, 'Ypê', 1, 'un'),
(12, 'Desinfetante Pinho Sol', 6.99, 80, 'Pinho Sol', 1, 'un'),
(13, 'Leite Integral', 4.89, 120, 'Itambé', 2, '1 litro'),
(14, 'Iogurte Natural', 2.75, 90, 'Nestlé', 2, 'copo 170g'),
(15, 'Papel Alumínio', 5.50, 60, 'Wyda', 3, 'un'),
(16, 'Saco para Lixo 50L', 7.30, 70, 'Plasútil', 3, 'un'),
(17, 'Ervilha', 3.52, 150, 'Quero', 4, 'lata 340g'),
(18, 'Milho Verde', 3.10, 140, 'Bonduelle', 4, 'lata 340g'),
(19, 'Carne Moída', 35.90, 60, 'Friboi', 5, 'kg'),
(20, 'Coxa de Frango', 15.50, 78, 'Sadia', 5, 'kg'),
(21, 'Banana Prata', 4.20, 100, 'Fazenda Sul', 6, 'un'),
(22, 'Tomate Italiano', 6.30, 85, 'Orgânicos Vida', 6, 'un'),
(23, 'Shampoo Anticaspa', 14.90, 50, 'Clear', 7, 'un'),
(24, 'Desodorante Spray', 9.80, 65, 'Rexona', 7, 'un'),
(25, 'Refrigerante Cola 2L', 7.50, 200, 'Coca-Cola', 8, 'un'),
(26, 'Suco de Uva Integral', 12.00, 90, 'Aurora', 8, 'un'),
(27, 'Fone de Ouvido', 49.90, 40, 'Multilaser', 9, 'un'),
(28, 'Carregador USB', 29.90, 55, 'Samsung', 9, 'un'),
(29, 'Pizza Calabresa', 18.90, 60, 'Perdigão', 10, 'un'),
(30, 'Lasanha Bolonhesa', 17.50, 50, 'Sadia', 10, 'un'),
(31, 'Presunto Fatiado', 6.80, 100, 'Seara', 12, 'un'),
(32, 'Queijo Prato', 8.90, 80, 'Aurora', 12, 'un');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
