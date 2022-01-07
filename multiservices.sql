-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 07 jan. 2022 à 07:41
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

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
  `actif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_nom`, `client_site`, `actif`) VALUES
(1, 'Client1', 1, 1),
(2, 'Client2', 1, 1),
(3, 'Client3', 1, 1),
(4, 'Client4 test', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

CREATE TABLE `droits` (
  `id_user` int(11) NOT NULL,
  `lecture_pao` tinyint(1) DEFAULT NULL,
  `ecriture_pao` tinyint(1) DEFAULT NULL,
  `lecture_gmg` tinyint(1) DEFAULT NULL,
  `ecriture_gmg` tinyint(1) DEFAULT NULL,
  `lecture_gestion_stocks` tinyint(1) DEFAULT NULL,
  `ecriture_gestion_stocks` tinyint(1) DEFAULT NULL,
  `lecture_couts_transports` tinyint(1) DEFAULT NULL,
  `ecriture_couts_transports` tinyint(1) DEFAULT NULL,
  `ecriture_message_accueil` tinyint(1) DEFAULT NULL,
  `ecriture_administration_site` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id_user`, `lecture_pao`, `ecriture_pao`, `lecture_gmg`, `ecriture_gmg`, `lecture_gestion_stocks`, `ecriture_gestion_stocks`, `lecture_couts_transports`, `ecriture_couts_transports`, `ecriture_message_accueil`, `ecriture_administration_site`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL),
(11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL),
(23, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `fon_lecture_pao` tinyint(1) NOT NULL,
  `fon_ecriture_pao` tinyint(1) NOT NULL,
  `fon_lecture_gmg` tinyint(1) NOT NULL,
  `fon_ecriture_gmg` tinyint(1) NOT NULL,
  `fon_lecture_gestion_stocks` tinyint(1) NOT NULL,
  `fon_ecriture_gestion_stocks` tinyint(1) NOT NULL,
  `fon_lecture_couts_transports` tinyint(1) NOT NULL,
  `fon_ecriture_couts_transports` tinyint(1) NOT NULL,
  `fon_ecriture_message_accueil` tinyint(1) NOT NULL,
  `fon_ecriture_administration_site` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `nom`, `fon_lecture_pao`, `fon_ecriture_pao`, `fon_lecture_gmg`, `fon_ecriture_gmg`, `fon_lecture_gestion_stocks`, `fon_ecriture_gestion_stocks`, `fon_lecture_couts_transports`, `fon_ecriture_couts_transports`, `fon_ecriture_message_accueil`, `fon_ecriture_administration_site`) VALUES
(1, 'fonction test1', 1, 1, 1, 1, 0, 0, 0, 0, 0, 1),
(2, 'fonction test2', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'fonction ts droits', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lien_techspec_process`
--

CREATE TABLE `lien_techspec_process` (
  `lien_techspec_id` int(11) NOT NULL,
  `lien_process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lien_techspec_process`
--

INSERT INTO `lien_techspec_process` (`lien_techspec_id`, `lien_process_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `logiciels`
--

CREATE TABLE `logiciels` (
  `logiciels_id` int(11) NOT NULL,
  `logiciels_id_techspec` int(11) NOT NULL,
  `logiciels_illustrator` tinyint(1) DEFAULT '0',
  `logiciels_photoshop` tinyint(1) DEFAULT '0',
  `logiciels_indesign` tinyint(1) DEFAULT '0',
  `logiciels_millnet` tinyint(1) DEFAULT '1',
  `logiciels_automation_engine` tinyint(1) DEFAULT '1',
  `logiciels_artpro` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `logiciels`
--

INSERT INTO `logiciels` (`logiciels_id`, `logiciels_id_techspec`, `logiciels_illustrator`, `logiciels_photoshop`, `logiciels_indesign`, `logiciels_millnet`, `logiciels_automation_engine`, `logiciels_artpro`) VALUES
(1, 1, 1, 1, 0, 1, 1, 1),
(2, 2, 1, 0, 0, 1, 1, 0),
(3, 3, 1, 1, 1, 1, 1, 1),
(4, 4, 1, 0, 0, 1, 1, 0),
(5, 3, 1, 1, 1, 1, 1, 1),
(6, 4, 1, 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `process`
--

CREATE TABLE `process` (
  `process_id` int(11) NOT NULL,
  `process_preparation` longtext NOT NULL,
  `process_realisation` longtext NOT NULL,
  `process_controle` longtext NOT NULL,
  `publie` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `process`
--

INSERT INTO `process` (`process_id`, `process_preparation`, `process_realisation`, `process_controle`, `publie`) VALUES
(1, '<p>test 1</p>\r\n<p><strong>blabla fe<span style=\"text-decoration: line-through;\">z fz ef z</span>e<br /></strong></p>', '<p>test 1efzefze z <em>ger</em></p>', '<p>test 1</p>', 1),
(2, '<p>prepa 2</p>', '<p>real 2</p>', '<p>controle 2</p>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_label` varchar(5) NOT NULL,
  `site_ville` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`site_id`, `site_label`, `site_ville`) VALUES
(1, 'FRLI', 'Limoges'),
(2, 'FRSU', 'Avignon');

-- --------------------------------------------------------

--
-- Structure de la table `techspecs`
--

CREATE TABLE `techspecs` (
  `techspec_id` int(11) NOT NULL,
  `techspec_nom` varchar(100) NOT NULL,
  `techspec_client` int(11) NOT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `techspecs`
--

INSERT INTO `techspecs` (`techspec_id`, `techspec_nom`, `techspec_client`, `actif`) VALUES
(1, 'keyfield 1 client 1', 1, 1),
(2, 'keyfield 2 client 1', 1, 1),
(3, 'keyfield 1 client 2', 2, 1),
(4, 'keyfield 2 client 2', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `connect_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tracker`
--

INSERT INTO `tracker` (`id`, `user_id`, `connect_time`, `action`) VALUES
(7770, 2, '2022-01-05 12:30:00', 'Connexion à l\'application'),
(7771, 2, '2022-01-05 12:30:01', 'Chargement de la page d\'accueil PAO'),
(7772, 2, '2022-01-05 12:30:03', 'Chargement de la page d\'accueil PAO'),
(7773, 2, '2022-01-05 12:30:04', 'Chargement de la page d\'accueil PAO'),
(7774, 2, '2022-01-05 12:30:11', 'Chargement de la page d\'accueil PAO'),
(7775, 2, '2022-01-05 12:30:17', 'Déconnexion de l\'application'),
(7776, 2, '2022-01-05 12:30:43', 'Connexion à l\'application'),
(7777, 2, '2022-01-05 12:30:45', 'Chargement de la page d\'accueil PAO'),
(7778, 2, '2022-01-05 12:30:50', 'Chargement de la page d\'accueil PAO'),
(7779, 2, '2022-01-05 12:30:52', 'Chargement de la page d\'accueil PAO'),
(7780, 2, '2022-01-05 12:30:53', 'Chargement de la page d\'accueil PAO'),
(7781, 2, '2022-01-05 12:30:53', 'Chargement de la page d\'accueil PAO'),
(7782, 2, '2022-01-05 12:30:53', 'Chargement de la page d\'accueil PAO'),
(7783, 2, '2022-01-05 12:30:53', 'Chargement de la page d\'accueil PAO'),
(7784, 2, '2022-01-05 12:30:54', 'Chargement de la page d\'accueil PAO'),
(7785, 2, '2022-01-05 12:30:54', 'Chargement de la page d\'accueil PAO'),
(7786, 2, '2022-01-05 12:30:54', 'Chargement de la page d\'accueil PAO'),
(7787, 2, '2022-01-05 12:30:58', 'Déconnexion de l\'application'),
(7788, 2, '2022-01-05 12:32:06', 'Connexion à l\'application'),
(7789, 2, '2022-01-05 12:32:07', 'Chargement de la page d\'accueil PAO'),
(7790, 2, '2022-01-05 12:32:15', 'Déconnexion de l\'application');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `user_site` int(11) NOT NULL DEFAULT '1',
  `user_fonction` int(11) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `nom`, `prenom`, `pseudo`, `user_site`, `user_fonction`, `password`) VALUES
(1, '9', '9', '9', 1, 1, '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(2, 'NomTest', 'PrenomTest', 'TestMan', 1, 1, '1f1925fce08a8999328ccca70cbca12b'),
(11, 'Boulet', 'Bill', 'Boulet', 1, 3, 'dd6c2471c382a4bf55a678a7770edbb4'),
(13, 'testpournom', 'superlong', 'blablabla', 1, 1, 'cda7ee95744644bfdc8dcfc042d1b110'),
(23, '20', '20', '20', 1, 1, '98f13708210194c475687be6106a3b84');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Index pour la table `droits`
--
ALTER TABLE `droits`
  ADD KEY `user_id_droit` (`id_user`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logiciels`
--
ALTER TABLE `logiciels`
  ADD PRIMARY KEY (`logiciels_id`);

--
-- Index pour la table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`process_id`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Index pour la table `techspecs`
--
ALTER TABLE `techspecs`
  ADD PRIMARY KEY (`techspec_id`),
  ADD KEY `keyfield_client` (`techspec_client`);

--
-- Index pour la table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_fonction` (`user_fonction`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `logiciels`
--
ALTER TABLE `logiciels`
  MODIFY `logiciels_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `process`
--
ALTER TABLE `process`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `techspecs`
--
ALTER TABLE `techspecs`
  MODIFY `techspec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7791;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `techspecs`
--
ALTER TABLE `techspecs`
  ADD CONSTRAINT `keyfield_client` FOREIGN KEY (`techspec_client`) REFERENCES `clients` (`client_id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_fonction` FOREIGN KEY (`user_fonction`) REFERENCES `fonction` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
