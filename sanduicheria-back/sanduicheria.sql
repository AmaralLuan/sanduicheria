-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Set-2021 às 04:27
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sanduicheria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` tinyint(20) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` varchar(500) DEFAULT NULL,
  `product_price` varchar(8) DEFAULT NULL,
  `product_category` tinyint(1) DEFAULT NULL,
  `product_img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`, `product_category`, `product_img`) VALUES
(1, 'COCA-COLA LATA', 'COCA-COLA LATA 350 ML', '4.99', 2, 'https://images.unsplash.com/photo-1514178255089-603d3a35b24a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'),
(3, 'FANTA LATA', 'FANTA LATA 350 ML', '4.59', 2, 'https://images.unsplash.com/photo-1624517452488-04869289c4ca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=434&q=80'),
(4, 'GUARANA LATA', 'FANTA LATA 350 ML', '4.59', 2, 'https://tezeio.vteximg.com.br/arquivos/ids/272342-1000-1000/7891991000826_1_1.jpg?v=637629956126870000'),
(5, 'X-FRANGO', 'DELICIOSO SANDUICHE COM HAMBURGUER DE FRANGO, QUEIJO, SALADA E BACON', '14.99', 1, 'https://images.unsplash.com/photo-1525426996102-52becb48ee14?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1474&q=80');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` tinyint(20) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`) VALUES
(5, 'luan@luan.com', '12345', NULL),
(8, 'teste@luan.com', 'aaa123', NULL),
(12, 'teste2@teste.com', 'aaa123', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
