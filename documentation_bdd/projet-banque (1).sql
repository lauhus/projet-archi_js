-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 10 déc. 2021 à 15:49
-- Version du serveur :  8.0.27-0ubuntu0.21.04.1
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet-banque`
--

-- --------------------------------------------------------

--
-- Structure de la table `Accounts`
--

CREATE TABLE `Accounts` (
  `id` int NOT NULL,
  `solde` float DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Accounts`
--

INSERT INTO `Accounts` (`id`, `solde`, `accountNumber`, `customerId`, `createdAt`, `updatedAt`) VALUES
(1, 5000, '1', 1, '2021-12-10 13:44:50', '2021-12-10 13:44:50');

-- --------------------------------------------------------

--
-- Structure de la table `Customers`
--

CREATE TABLE `Customers` (
  `id` int NOT NULL,
  `customerNumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Customers`
--

INSERT INTO `Customers` (`id`, `customerNumber`, `address`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(2, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(3, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(4, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(5, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(6, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(7, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(8, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(9, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(10, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(11, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(12, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(13, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(14, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(15, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(16, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(17, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(18, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(19, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(20, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(21, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(22, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(23, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(24, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(25, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(26, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(27, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(28, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50'),
(29, NULL, NULL, 'Nouveau nom', '2021-12-10 13:44:50', '2021-12-10 13:44:50');

-- --------------------------------------------------------

--
-- Structure de la table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('0customer.js'),
('20211209150429-account.js'),
('20211210074446-create-customer.js'),
('20211210074628-create-customer.js'),
('20211210074739-create-account.js');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Accounts`
--
ALTER TABLE `Accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
