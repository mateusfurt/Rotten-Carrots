-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01/07/2024 às 11:44
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rottencarrots`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` int DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `cast` text,
  `rating` varchar(10) DEFAULT NULL,
  `score` decimal(3,1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `release_year`, `director`, `genre`, `duration`, `cast`, `rating`, `score`, `created_at`, `updated_at`, `poster`) VALUES
(4, 'Divertidamente 2', '9 anos após dos eventos do primeiro filme, Divertida Mente 2 retorna à mente da adolescente Riley no momento em que a sede está passando por uma demolição repentina para dar lugar a algo totalmente inesperado: novas Emoções! Alegria, Tristeza, Raiva, Medo e Nojinho, que há muito tempo administram uma operação bem-sucedida em todos os sentidos, não têm certeza de como se sentir quando a Ansiedade aparece. E parece que ela não está sozinha.', 2024, 'Kelsey Mann', 'Animação', 120, 'vazio', 'Livre', 5.0, '2024-07-01 11:42:23', '2024-07-01 11:42:23', 'uploads/divertida-mente-2.avif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
