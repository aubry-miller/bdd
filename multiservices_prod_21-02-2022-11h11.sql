-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 21 fév. 2022 à 10:10
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `multiservices`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_nom` varchar(100) NOT NULL,
  `client_site` int(11) NOT NULL DEFAULT '1',
  `actif` tinyint(1) NOT NULL DEFAULT '1',
  `client_commun` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'client commun n''est pas un vrai client mais sert à partager les process entre plusieurs clients'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_nom`, `client_site`, `actif`, `client_commun`) VALUES
(15, 'Commun_limoges', 1, 1, 1),
(16, 'Commun_avignon', 2, 1, 1),
(19, 'ACS', 1, 1, 0),
(20, 'Bernetic', 1, 1, 0),
(21, 'BRJ', 1, 1, 0),
(22, 'Celta', 1, 1, 0),
(23, 'Colorado', 1, 1, 0),
(25, 'CPC Oralu', 1, 1, 0),
(26, 'Deltasacs', 1, 1, 0),
(27, 'Dodyplast', 1, 1, 0),
(28, 'Eliopack', 1, 1, 0),
(29, 'Imprimerie de l\'Eperon', 1, 1, 0),
(30, 'Lysipack', 1, 1, 0),
(31, 'Palamy', 1, 1, 0),
(32, 'Picourt Packaging', 1, 1, 0),
(33, 'Richard Laleu', 1, 1, 0),
(34, 'Schur Flexibles Sac', 1, 1, 0),
(35, 'Société Bretonne d\'Etiquette', 1, 1, 0),
(36, 'Sicad', 1, 1, 0),
(37, 'Tilwel', 1, 1, 0),
(38, 'Sobredim', 1, 1, 0),
(39, 'ABC Line', 1, 1, 0),
(40, 'Technipac', 1, 1, 0),
(41, 'Amcor Flexibles Saint-Maur', 1, 1, 0),
(42, 'Rossmann', 1, 1, 0),
(43, 'Coopérative Agricole Pays de Loire', 1, 1, 0),
(44, 'Smurfit Kappa Saint-Seurin', 1, 1, 0),
(45, 'Smurfit Kappa Uzerche', 1, 1, 0),
(46, 'Smurfit Kappa Cognac', 1, 1, 0),
(47, 'Cartonnage Diné', 1, 1, 0),
(48, 'ID Carton', 1, 1, 0),
(49, 'DS Smith Packaging Sud-Ouest', 1, 1, 0),
(50, 'Argoat Plastiques', 1, 1, 0),
(51, 'Distriplast Flandre', 1, 1, 0),
(52, 'Berry Superfos Bouxwiller', 1, 1, 0),
(53, 'Leducq', 1, 1, 0),
(54, 'Mondi Lembacel', 1, 1, 0),
(55, 'Sofpo', 1, 1, 0),
(56, 'Bregiplast', 1, 1, 0),
(57, 'Smurfit Kappa Distribution', 1, 1, 0),
(58, 'Paccor France', 1, 1, 0),
(59, 'Paragon Identification', 1, 1, 0),
(60, 'Laiteries H. Triballat', 1, 1, 0),
(61, 'Sleever International', 1, 1, 0),
(62, 'Dima Etiquetage', 1, 1, 0),
(63, 'Iconex', 1, 1, 0),
(64, 'Bostik France', 1, 1, 0),
(65, 'CPC Sipse', 1, 1, 0),
(66, 'Lecas Industries', 1, 1, 0),
(67, 'Amcor Flexibles Montreuil-Bellay', 1, 1, 0),
(68, 'Smurfit Kappa Aquitaine Agenais', 1, 1, 0),
(69, 'Jokey France', 1, 1, 0),
(70, 'CCL Label', 1, 1, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
