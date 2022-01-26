-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 26 jan. 2022 à 09:46
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
(1, 'Client1', 1, 1, 0),
(2, 'Client2', 1, 0, 0),
(3, 'Client3', 1, 1, 0),
(4, 'Client4', 2, 1, 0),
(5, 'Client5', 1, 1, 0),
(6, 'Client6', 1, 1, 0),
(7, 'Client7', 1, 1, 0),
(11, 'Client8', 1, 0, 0),
(13, 'Client9', 2, 1, 0),
(15, 'Commun_limoges', 1, 1, 1),
(16, 'Commun_avignon', 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `conges`
--

CREATE TABLE `conges` (
  `conges_id` int(11) NOT NULL,
  `conges_user` int(11) NOT NULL,
  `conges_type` varchar(50) NOT NULL,
  `conges_compte` varchar(50) NOT NULL,
  `conges_first_start` varchar(20) DEFAULT NULL,
  `conges_first_end` varchar(20) DEFAULT NULL,
  `conges_number_of_days` int(11) DEFAULT NULL,
  `conges_first_one_day` varchar(20) DEFAULT NULL,
  `conges_second_one_day` varchar(20) DEFAULT NULL,
  `conges_number_of_days_first_line` int(11) DEFAULT NULL,
  `conges_third_one_day` varchar(20) DEFAULT NULL,
  `conges_fourth_one_day` varchar(20) DEFAULT NULL,
  `conges_number_of_days_second_line` int(11) DEFAULT NULL,
  `conges_hours_day` varchar(20) DEFAULT NULL,
  `conges_hours_start` varchar(20) DEFAULT NULL,
  `conges_hours_end` varchar(20) DEFAULT NULL,
  `conges_observation` text NOT NULL,
  `conges_request_date` date NOT NULL,
  `conges_status` varchar(20) NOT NULL,
  `conges_date_decision_superieur` varchar(30) DEFAULT NULL,
  `conges_id_superieur` int(11) DEFAULT NULL,
  `conges_traitee_rh` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `conges`
--

INSERT INTO `conges` (`conges_id`, `conges_user`, `conges_type`, `conges_compte`, `conges_first_start`, `conges_first_end`, `conges_number_of_days`, `conges_first_one_day`, `conges_second_one_day`, `conges_number_of_days_first_line`, `conges_third_one_day`, `conges_fourth_one_day`, `conges_number_of_days_second_line`, `conges_hours_day`, `conges_hours_start`, `conges_hours_end`, `conges_observation`, `conges_request_date`, `conges_status`, `conges_date_decision_superieur`, `conges_id_superieur`, `conges_traitee_rh`) VALUES
(5, 33, 'conges', 'Mes droits normaux', '2022-01-17', '2022-01-19', 2, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-17', 'accordée', '2022-01-18', 33, 0),
(7, 37, 'conges', 'Mes droits normaux', '2022-01-24', '2022-01-26', 3, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-18', 'accordée', '2022-01-18', 33, 0),
(8, 37, 'conges', 'Mes droits normaux', '2022-01-31', '2022-02-01', 2, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-18', 'refusée', '2022-01-18', 33, 0),
(10, 38, 'absence', 'RTT (5jours de récupération 35h50)', '', '', 0, '', '', 0, '', '', 0, '2022-01-28', '12:00', '16:00', ' ', '2022-01-18', 'accordée', '2022-01-19', 33, 0),
(11, 38, 'conges', 'Mes droits normaux', '2022-01-19', '2022-01-20', 2, '2022-01-29', '', 1, '', '', 0, '', '', '', ' ', '2022-01-18', 'accordée', '2022-01-19', 33, 0),
(12, 38, 'conges', 'Mes droits normaux', '', '', 0, '2022-01-12', '', 1, '', '', 0, '', '', '', ' ', '2022-01-18', 'refusée', '2022-01-19', 33, 0),
(13, 39, 'absence', 'Mes droits normaux', '', '', 0, '2022-01-25', '2022-01-27', 2, '', '', 0, '', '', '', ' ', '2022-01-19', 'accordée', '2022-01-19', 33, 0),
(14, 33, 'conges', 'Mes droits normaux', '2022-01-26', '2022-01-28', 3, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-19', 'refusée', '2022-01-19', 33, 0),
(15, 33, 'conges', 'Mes droits normaux', '', '', 0, '2022-01-07', '', 1, '', '', 0, '', '', '', ' ', '2022-01-19', 'accordée', '2022-01-19', 33, 0),
(16, 39, 'absence', 'Mes droits normaux', '', '', 0, '2022-01-04', '', 0, '', '', 0, '', '', '', ' ', '2022-01-19', 'accordée', '2022-01-19', 33, 0),
(17, 33, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-04', '', 1, '', '', 0, '', '', '', ' ', '2022-01-24', 'accordée', '2022-01-24', 33, 0),
(18, 33, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-02', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'refusée', '2022-01-24', 33, 0),
(19, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(20, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(21, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(22, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(23, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(24, 33, 'conges', 'Mes droits normaux', '', '', 0, '', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(29, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-01-25', '', 1, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(30, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(31, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(32, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(33, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(34, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(35, 39, 'conges', 'Mes droits normaux', '', '', 0, '2022-02-06', '', 0, '', '', 0, '', '', '', ' ', '2022-01-24', 'demandée', NULL, NULL, 0),
(36, 33, 'conges', 'Mes droits normaux', '2022-01-18', '2022-01-19', 2, '2022-02-04', '', 1, '', '', 0, '', '', '', ' ', '2022-01-25', 'demandée', NULL, NULL, 0);

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
  `ecriture_administration_site` tinyint(1) DEFAULT NULL,
  `responsable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id_user`, `lecture_pao`, `ecriture_pao`, `lecture_gmg`, `ecriture_gmg`, `lecture_gestion_stocks`, `ecriture_gestion_stocks`, `lecture_couts_transports`, `ecriture_couts_transports`, `ecriture_message_accueil`, `ecriture_administration_site`, `responsable`) VALUES
(2, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0),
(33, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(34, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1),
(37, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(38, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0),
(39, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `id` int(11) NOT NULL,
  `fon_nom` varchar(100) NOT NULL,
  `fon_id_responsable_service` int(11) NOT NULL,
  `fon_lecture_pao` tinyint(1) NOT NULL,
  `fon_ecriture_pao` tinyint(1) NOT NULL,
  `fon_lecture_gmg` tinyint(1) NOT NULL,
  `fon_ecriture_gmg` tinyint(1) NOT NULL,
  `fon_lecture_gestion_stocks` tinyint(1) NOT NULL,
  `fon_ecriture_gestion_stocks` tinyint(1) NOT NULL,
  `fon_lecture_couts_transports` tinyint(1) NOT NULL,
  `fon_ecriture_couts_transports` tinyint(1) NOT NULL,
  `fon_ecriture_message_accueil` tinyint(1) NOT NULL,
  `fon_responsable` tinyint(1) NOT NULL,
  `fon_ecriture_administration_site` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `fon_nom`, `fon_id_responsable_service`, `fon_lecture_pao`, `fon_ecriture_pao`, `fon_lecture_gmg`, `fon_ecriture_gmg`, `fon_lecture_gestion_stocks`, `fon_ecriture_gestion_stocks`, `fon_lecture_couts_transports`, `fon_ecriture_couts_transports`, `fon_ecriture_message_accueil`, `fon_responsable`, `fon_ecriture_administration_site`) VALUES
(1, 'administration du site', 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, 'PAO', 11, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Contrôle', 11, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1),
(4, 'service technique', 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'CSR', 33, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0),
(6, 'Encadrement', 33, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 'Administratif', 33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(8, 'Expédition', 34, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0),
(9, 'Laser', 34, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(10, 'Maintenance', 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `heures_sup`
--

CREATE TABLE `heures_sup` (
  `hsup_id` int(11) NOT NULL,
  `hsup_user_id` int(11) NOT NULL,
  `hsup_date_declaration` date NOT NULL,
  `hsup_semaine` int(11) NOT NULL,
  `hsup_mois` varchar(20) NOT NULL,
  `hsup_annee` int(11) NOT NULL,
  `hsup_lundi` int(11) NOT NULL,
  `hsup_mardi` int(11) NOT NULL,
  `hsup_mercredi` int(11) NOT NULL,
  `hsup_jeudi` int(11) NOT NULL,
  `hsup_vendredi` int(11) NOT NULL,
  `hsup_samedi` int(11) NOT NULL,
  `hsup_lundi_autre` varchar(5) NOT NULL,
  `hsup_mardi_autre` varchar(5) NOT NULL,
  `hsup_mercredi_autre` varchar(5) NOT NULL,
  `hsup_jeudi_autre` varchar(5) NOT NULL,
  `hsup_vendredi_autre` varchar(5) NOT NULL,
  `hsup_samedi_autre` varchar(5) NOT NULL,
  `hsup_total_hebdo` varchar(5) NOT NULL,
  `hsup_solde` varchar(40) NOT NULL,
  `hsup_observation` text NOT NULL,
  `hsup_statut` varchar(30) NOT NULL,
  `hsup_date_validation` date DEFAULT NULL,
  `hsup_id_superieur` int(11) DEFAULT NULL,
  `hsup_traitee` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `heures_sup`
--

INSERT INTO `heures_sup` (`hsup_id`, `hsup_user_id`, `hsup_date_declaration`, `hsup_semaine`, `hsup_mois`, `hsup_annee`, `hsup_lundi`, `hsup_mardi`, `hsup_mercredi`, `hsup_jeudi`, `hsup_vendredi`, `hsup_samedi`, `hsup_lundi_autre`, `hsup_mardi_autre`, `hsup_mercredi_autre`, `hsup_jeudi_autre`, `hsup_vendredi_autre`, `hsup_samedi_autre`, `hsup_total_hebdo`, `hsup_solde`, `hsup_observation`, `hsup_statut`, `hsup_date_validation`, `hsup_id_superieur`, `hsup_traitee`) VALUES
(1, 33, '2022-01-20', 2, 'Mars', 2021, 30, 60, 90, 120, 150, 180, '', '', '', '', '', '', '10h30', 'en compte', 'sans type autre', 'validées', '2022-01-24', 33, 0),
(2, 33, '2022-01-20', 3, 'Février', 2021, 30, 60, 0, 120, 150, 0, '00:00', '00:00', '00:00', '00:00', '00:00', '21:01', '27h01', 'en compte', ' blabla', 'validées', '2022-01-24', 33, 0),
(3, 33, '2022-01-20', 1, 'Janvier', 2021, 0, 0, 0, 0, 0, 0, '12:08', '00:00', '00:00', '00:00', '00:00', '00:00', '12h08', 'payer', ' ', 'déclarées', NULL, NULL, 0),
(4, 33, '2022-01-20', 1, 'Janvier', 2021, 0, 0, 0, 0, 0, 0, '12:01', '00:00', '00:00', '00:00', '00:00', '00:00', '12h01', 'payer', ' ', 'déclarées', NULL, NULL, 0),
(5, 33, '2022-01-20', 1, 'Janvier', 2021, 0, 0, 0, 0, 0, 0, '00:00', '00:00', '13:01', '00:00', '00:00', '00:00', '13h01', 'payer', ' ', 'déclarées', NULL, NULL, 0),
(6, 33, '2022-01-24', 4, 'Janvier', 2021, 30, 0, 0, 30, 0, 0, '00:00', '00:00', '00:00', '00:00', '00:00', '00:00', '1h00', 'en compte', ' ', 'refusées', '2022-01-24', 33, 0),
(7, 39, '2022-01-24', 3, 'Janvier', 2021, 0, 120, 0, 0, 0, 0, '00:00', '00:00', '00:00', '00:00', '00:00', '00:00', '2h00', 'en compte', ' ', 'validées', '2022-01-24', 33, 0);

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
(10, 11),
(6, 8),
(14, 12),
(8, 10),
(5, 9),
(4, 13),
(11, 25),
(3, 2),
(12, 15);

-- --------------------------------------------------------

--
-- Structure de la table `logiciels`
--

CREATE TABLE `logiciels` (
  `logiciels_id` int(11) NOT NULL,
  `logiciels_id_process` int(11) NOT NULL,
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

INSERT INTO `logiciels` (`logiciels_id`, `logiciels_id_process`, `logiciels_illustrator`, `logiciels_photoshop`, `logiciels_indesign`, `logiciels_millnet`, `logiciels_automation_engine`, `logiciels_artpro`) VALUES
(1, 1, 1, 1, 0, 1, 1, 1),
(2, 2, 1, 0, 0, 1, 1, 1),
(3, 8, 1, 0, 0, 1, 1, 0),
(4, 9, 1, 1, 1, 1, 1, 1),
(5, 10, 1, 0, 0, 1, 1, 0),
(7, 11, 1, 0, 1, 1, 1, 0),
(8, 12, 0, 0, 0, 1, 1, 1),
(10, 13, 0, 0, 0, 1, 1, 1),
(11, 14, 0, 0, 0, 1, 1, 1),
(12, 15, 1, 1, 0, 1, 1, 0),
(15, 20, 0, 0, 0, 1, 1, 1),
(16, 21, 0, 0, 0, 1, 1, 0),
(17, 22, 0, 0, 0, 1, 1, 0),
(18, 2, 1, 0, 0, 1, 1, 1),
(19, 25, 0, 0, 1, 1, 1, 0),
(20, 26, 0, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `polyvalence`
--

CREATE TABLE `polyvalence` (
  `poly_id` int(11) NOT NULL,
  `poly_user_id` int(11) NOT NULL,
  `poly_date_declaration` date NOT NULL,
  `poly_poste_1` int(11) NOT NULL,
  `poly_date_1` varchar(11) NOT NULL,
  `poly_debut_1` varchar(5) NOT NULL,
  `poly_fin_1` varchar(5) NOT NULL,
  `poly_poste_2` int(11) NOT NULL,
  `poly_date_2` varchar(11) NOT NULL,
  `poly_debut_2` varchar(5) NOT NULL,
  `poly_fin_2` varchar(5) NOT NULL,
  `poly_poste_3` int(11) NOT NULL,
  `poly_date_3` varchar(11) NOT NULL,
  `poly_debut_3` varchar(5) NOT NULL,
  `poly_fin_3` varchar(5) NOT NULL,
  `poly_poste_4` int(11) NOT NULL,
  `poly_date_4` varchar(11) NOT NULL,
  `poly_debut_4` varchar(5) NOT NULL,
  `poly_fin_4` varchar(5) NOT NULL,
  `poly_poste_5` int(11) NOT NULL,
  `poly_date_5` varchar(11) NOT NULL,
  `poly_debut_5` varchar(5) NOT NULL,
  `poly_fin_5` varchar(5) NOT NULL,
  `poly_poste_6` int(11) NOT NULL,
  `poly_date_6` varchar(11) NOT NULL,
  `poly_debut_6` varchar(5) NOT NULL,
  `poly_fin_6` varchar(5) NOT NULL,
  `poly_poste_7` int(11) NOT NULL,
  `poly_date_7` varchar(11) NOT NULL,
  `poly_debut_7` varchar(5) NOT NULL,
  `poly_fin_7` varchar(5) NOT NULL,
  `poly_poste_8` int(11) NOT NULL,
  `poly_date_8` varchar(11) NOT NULL,
  `poly_debut_8` varchar(5) NOT NULL,
  `poly_fin_8` varchar(5) NOT NULL,
  `poly_poste_9` int(11) NOT NULL,
  `poly_date_9` varchar(11) NOT NULL,
  `poly_debut_9` varchar(5) NOT NULL,
  `poly_fin_9` varchar(5) NOT NULL,
  `poly_poste_10` int(11) NOT NULL,
  `poly_date_10` varchar(11) NOT NULL,
  `poly_debut_10` varchar(5) NOT NULL,
  `poly_fin_10` varchar(5) NOT NULL,
  `poly_temps_total` varchar(5) NOT NULL,
  `poly_statut` varchar(40) NOT NULL,
  `poly_date_validation` date DEFAULT NULL,
  `poly_id_superieur` int(11) DEFAULT NULL,
  `poly_traitee` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `polyvalence`
--

INSERT INTO `polyvalence` (`poly_id`, `poly_user_id`, `poly_date_declaration`, `poly_poste_1`, `poly_date_1`, `poly_debut_1`, `poly_fin_1`, `poly_poste_2`, `poly_date_2`, `poly_debut_2`, `poly_fin_2`, `poly_poste_3`, `poly_date_3`, `poly_debut_3`, `poly_fin_3`, `poly_poste_4`, `poly_date_4`, `poly_debut_4`, `poly_fin_4`, `poly_poste_5`, `poly_date_5`, `poly_debut_5`, `poly_fin_5`, `poly_poste_6`, `poly_date_6`, `poly_debut_6`, `poly_fin_6`, `poly_poste_7`, `poly_date_7`, `poly_debut_7`, `poly_fin_7`, `poly_poste_8`, `poly_date_8`, `poly_debut_8`, `poly_fin_8`, `poly_poste_9`, `poly_date_9`, `poly_debut_9`, `poly_fin_9`, `poly_poste_10`, `poly_date_10`, `poly_debut_10`, `poly_fin_10`, `poly_temps_total`, `poly_statut`, `poly_date_validation`, `poly_id_superieur`, `poly_traitee`) VALUES
(1, 33, '2022-01-25', 2, '2022-01-18', '12:05', '12:30', 1, '2022-01-18', '14:00', '14:30', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', '0h55', 'validées', '2022-01-25', 33, 0),
(2, 33, '2022-01-25', 1, '2022-01-19', '15:00', '16:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', 0, '', '00:00', '00:00', '1h00', 'refusées', '2022-01-25', 33, 0);

-- --------------------------------------------------------

--
-- Structure de la table `poste_polyvalence`
--

CREATE TABLE `poste_polyvalence` (
  `poste_id` int(11) NOT NULL,
  `poste_label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `poste_polyvalence`
--

INSERT INTO `poste_polyvalence` (`poste_id`, `poste_label`) VALUES
(1, 'Photopolymère'),
(2, 'Montage plat'),
(3, 'Fibre de verre'),
(4, 'Dégarnissage caoutchouc'),
(5, 'Garnissage caoutchouc'),
(6, 'Rectification'),
(7, 'Laser'),
(8, 'Expédition'),
(9, 'Livraison'),
(10, 'Entretien'),
(11, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `process`
--

CREATE TABLE `process` (
  `process_id` int(11) NOT NULL,
  `process_nom` varchar(100) NOT NULL,
  `process_client` int(11) NOT NULL,
  `process_preparation` longtext NOT NULL,
  `process_realisation` longtext NOT NULL,
  `process_controle` longtext NOT NULL,
  `publie` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `process`
--

INSERT INTO `process` (`process_id`, `process_nom`, `process_client`, `process_preparation`, `process_realisation`, `process_controle`, `publie`) VALUES
(1, 'process 1-c1', 1, '<p>test 1 on voit</p>\r\n<p><strong>blabla fe<span style=\"text-decoration: line-through;\">z fz ef z</span>e<br /></strong></p>', '<p>test 1efzefze z <em>gerqscqscq</em></p>\r\n<p><em>on voit`</em></p>', '<p>test 1sqcsc</p>\r\n<p>on voit</p>', 1),
(2, 'process 2-c2', 2, '<div id=\"lipsum\">\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor at mauris non dignissim. In semper nunc quis lorem pretium commodo. Mauris quis velit ornare, blandit mi sed, dictum enim. Donec velit tellus, luctus in aliquam sed, ornare ut orci. Vivamus tempor eros nisl, ut gravida lorem rutrum eget. Ut luctus aliquam nisi sit amet laoreet. In fringilla tempus fermentum. Aliquam tincidunt bibendum diam quis malesuada. Sed ultricies congue nulla, nec congue urna venenatis id. Mauris euismod diam sed leo suscipit, at eleifend turpis auctor. Sed nec dolor tempor, pharetra purus vel, aliquet magna. Praesent ullamcorper turpis sit amet libero commodo mattis. Proin dapibus dui quis sollicitudin lobortis. Quisque aliquam leo et tortor aliquam, in tempor metus commodo. Nullam purus elit, fringilla nec efficitur ut, fermentum lacinia quam.</li>\r\n<li>Sed pretium mauris eget ex posuere, nec malesuada nunc vehicula. Pellentesque faucibus lacinia rutrum. Integer semper nunc congue tortor dapibus porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin maximus mollis elit, ac volutpat lectus consequat ac. Pellentesque sollicitudin orci a tortor fermentum, feugiat bibendum lectus gravida. Ut tempor sodales nunc eget imperdiet.</li>\r\n<li>Aenean bibendum vel tellus id posuere. Morbi mollis ante ut eros imperdiet, sit amet ultrices eros pretium. Etiam fermentum nulla in gravida consectetur. Etiam at nulla metus. In quis turpis tempor, vulputate risus eget, efficitur ex. Suspendisse vitae tincidunt dolor. Nunc nisi velit, posuere fermentum mattis eget, tristique vitae ligula. Donec et maximus enim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla imperdiet vulputate justo ac rhoncus. Maecenas fermentum vel sem quis scelerisque.</li>\r\n<li>Ut ac lorem a metus scelerisque efficitur. In vitae est ultricies, vestibulum mauris a, viverra magna. Nunc mi velit, euismod eu sem vel, mollis gravida ex. Donec non pretium ex, quis scelerisque magna. Nulla ac leo sit amet lectus consequat molestie. Quisque quis nulla at felis pulvinar lobortis. In commodo turpis vel dui finibus varius.</li>\r\n<li>Fusce finibus tristique lobortis. Nunc cursus mi at ligula porttitor faucibus. Maecenas tempor enim quis massa ullamcorper, id dapibus purus cursus. Integer fringilla ac ipsum convallis scelerisque. Nulla placerat dui enim, et commodo leo vestibulum vel. Sed pharetra lacinia leo quis molestie. Proin venenatis felis eu dui iaculis faucibus.</li>\r\n<li>Sed eleifend orci quis mi ultrices accumsan nec vitae libero. Praesent pretium neque mauris, dapibus consectetur justo varius non. Fusce maximus nisl at bibendum semper. Nam mattis facilisis ante vitae commodo. Maecenas nec porta est. Nulla vitae nunc in enim tempus pretium. Nunc in accumsan tellus. Maecenas sagittis tellus et vestibulum pretium. Etiam commodo, velit in semper tincidunt, nunc magna vulputate nibh, eu bibendum lectus libero iaculis libero. Ut rhoncus arcu nisi, ut porttitor augue lobortis vehicula.</li>\r\n<li>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam fringilla gravida mattis. Cras eu volutpat turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus neque ex, bibendum eu hendrerit eu, congue eget enim. Suspendisse potenti. Nullam vehicula metus quis purus faucibus, at sollicitudin eros pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur velit elit, consequat quis consequat vel, dignissim id dolor.</li>\r\n<li>Nullam accumsan accumsan bibendum. Duis interdum metus dui, sed dignissim turpis gravida in. Sed quis mi mattis, varius tortor eget, lacinia lacus. Donec at nisl non nulla interdum egestas eget id ligula. Suspendisse fringilla commodo semper. Pellentesque consequat, magna vitae rutrum eleifend, magna justo fermentum eros, eu elementum nibh risus ac nunc. Donec elit neque, bibendum nec gravida non, aliquam condimentum sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras in efficitur tellus, sed bibendum mauris.</li>\r\n</ol>\r\n</div>', '<div id=\"lipsum\">\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor at mauris non dignissim. In semper nunc quis lorem pretium commodo. Mauris quis velit ornare, blandit mi sed, dictum enim. Donec velit tellus, luctus in aliquam sed, ornare ut orci. Vivamus tempor eros nisl, ut gravida lorem rutrum eget. Ut luctus aliquam nisi sit amet laoreet. In fringilla tempus fermentum. Aliquam tincidunt bibendum diam quis malesuada. Sed ultricies congue nulla, nec congue urna venenatis id. Mauris euismod diam sed leo suscipit, at eleifend turpis auctor. Sed nec dolor tempor, pharetra purus vel, aliquet magna. Praesent ullamcorper turpis sit amet libero commodo mattis. Proin dapibus dui quis sollicitudin lobortis. Quisque aliquam leo et tortor aliquam, in tempor metus commodo. Nullam purus elit, fringilla nec efficitur ut, fermentum lacinia quam.</li>\r\n<li>Sed pretium mauris eget ex posuere, nec malesuada nunc vehicula. Pellentesque faucibus lacinia rutrum. Integer semper nunc congue tortor dapibus porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin maximus mollis elit, ac volutpat lectus consequat ac. Pellentesque sollicitudin orci a tortor fermentum, feugiat bibendum lectus gravida. Ut tempor sodales nunc eget imperdiet.</li>\r\n<li>Aenean bibendum vel tellus id posuere. Morbi mollis ante ut eros imperdiet, sit amet ultrices eros pretium. Etiam fermentum nulla in gravida consectetur. Etiam at nulla metus. In quis turpis tempor, vulputate risus eget, efficitur ex. Suspendisse vitae tincidunt dolor. Nunc nisi velit, posuere fermentum mattis eget, tristique vitae ligula. Donec et maximus enim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla imperdiet vulputate justo ac rhoncus. Maecenas fermentum vel sem quis scelerisque.</li>\r\n<li>Ut ac lorem a metus scelerisque efficitur. In vitae est ultricies, vestibulum mauris a, viverra magna. Nunc mi velit, euismod eu sem vel, mollis gravida ex. Donec non pretium ex, quis scelerisque magna. Nulla ac leo sit amet lectus consequat molestie. Quisque quis nulla at felis pulvinar lobortis. In commodo turpis vel dui finibus varius.</li>\r\n<li>Fusce finibus tristique lobortis. Nunc cursus mi at ligula porttitor faucibus. Maecenas tempor enim quis massa ullamcorper, id dapibus purus cursus. Integer fringilla ac ipsum convallis scelerisque. Nulla placerat dui enim, et commodo leo vestibulum vel. Sed pharetra lacinia leo quis molestie. Proin venenatis felis eu dui iaculis faucibus.</li>\r\n<li>Sed eleifend orci quis mi ultrices accumsan nec vitae libero. Praesent pretium neque mauris, dapibus consectetur justo varius non. Fusce maximus nisl at bibendum semper. Nam mattis facilisis ante vitae commodo. Maecenas nec porta est. Nulla vitae nunc in enim tempus pretium. Nunc in accumsan tellus. Maecenas sagittis tellus et vestibulum pretium. Etiam commodo, velit in semper tincidunt, nunc magna vulputate nibh, eu bibendum lectus libero iaculis libero. Ut rhoncus arcu nisi, ut porttitor augue lobortis vehicula.</li>\r\n<li>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam fringilla gravida mattis. Cras eu volutpat turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus neque ex, bibendum eu hendrerit eu, congue eget enim. Suspendisse potenti. Nullam vehicula metus quis purus faucibus, at sollicitudin eros pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur velit elit, consequat quis consequat vel, dignissim id dolor.</li>\r\n<li>Nullam accumsan accumsan bibendum. Duis interdum metus dui, sed dignissim turpis gravida in. Sed quis mi mattis, varius tortor eget, lacinia lacus. Donec at nisl non nulla interdum egestas eget id ligula. Suspendisse fringilla commodo semper. Pellentesque consequat, magna vitae rutrum eleifend, magna justo fermentum eros, eu elementum nibh risus ac nunc. Donec elit neque, bibendum nec gravida non, aliquam condimentum sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras in efficitur tellus, sed bibendum mauris.</li>\r\n</ol>\r\n</div>', '<div id=\"lipsum\">\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor at mauris non dignissim. In semper nunc quis lorem pretium commodo. Mauris quis velit ornare, blandit mi sed, dictum enim. Donec velit tellus, luctus in aliquam sed, ornare ut orci. Vivamus tempor eros nisl, ut gravida lorem rutrum eget. Ut luctus aliquam nisi sit amet laoreet. In fringilla tempus fermentum. Aliquam tincidunt bibendum diam quis malesuada. Sed ultricies congue nulla, nec congue urna venenatis id. Mauris euismod diam sed leo suscipit, at eleifend turpis auctor. Sed nec dolor tempor, pharetra purus vel, aliquet magna. Praesent ullamcorper turpis sit amet libero commodo mattis. Proin dapibus dui quis sollicitudin lobortis. Quisque aliquam leo et tortor aliquam, in tempor metus commodo. Nullam purus elit, fringilla nec efficitur ut, fermentum lacinia quam.</li>\r\n<li>Sed pretium mauris eget ex posuere, nec malesuada nunc vehicula. Pellentesque faucibus lacinia rutrum. Integer semper nunc congue tortor dapibus porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin maximus mollis elit, ac volutpat lectus consequat ac. Pellentesque sollicitudin orci a tortor fermentum, feugiat bibendum lectus gravida. Ut tempor sodales nunc eget imperdiet.</li>\r\n<li>Aenean bibendum vel tellus id posuere. Morbi mollis ante ut eros imperdiet, sit amet ultrices eros pretium. Etiam fermentum nulla in gravida consectetur. Etiam at nulla metus. In quis turpis tempor, vulputate risus eget, efficitur ex. Suspendisse vitae tincidunt dolor. Nunc nisi velit, posuere fermentum mattis eget, tristique vitae ligula. Donec et maximus enim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla imperdiet vulputate justo ac rhoncus. Maecenas fermentum vel sem quis scelerisque.</li>\r\n<li>Ut ac lorem a metus scelerisque efficitur. In vitae est ultricies, vestibulum mauris a, viverra magna. Nunc mi velit, euismod eu sem vel, mollis gravida ex. Donec non pretium ex, quis scelerisque magna. Nulla ac leo sit amet lectus consequat molestie. Quisque quis nulla at felis pulvinar lobortis. In commodo turpis vel dui finibus varius.</li>\r\n<li>Fusce finibus tristique lobortis. Nunc cursus mi at ligula porttitor faucibus. Maecenas tempor enim quis massa ullamcorper, id dapibus purus cursus. Integer fringilla ac ipsum convallis scelerisque. Nulla placerat dui enim, et commodo leo vestibulum vel. Sed pharetra lacinia leo quis molestie. Proin venenatis felis eu dui iaculis faucibus.</li>\r\n<li>Sed eleifend orci quis mi ultrices accumsan nec vitae libero. Praesent pretium neque mauris, dapibus consectetur justo varius non. Fusce maximus nisl at bibendum semper. Nam mattis facilisis ante vitae commodo. Maecenas nec porta est. Nulla vitae nunc in enim tempus pretium. Nunc in accumsan tellus. Maecenas sagittis tellus et vestibulum pretium. Etiam commodo, velit in semper tincidunt, nunc magna vulputate nibh, eu bibendum lectus libero iaculis libero. Ut rhoncus arcu nisi, ut porttitor augue lobortis vehicula.</li>\r\n<li>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam fringilla gravida mattis. Cras eu volutpat turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus neque ex, bibendum eu hendrerit eu, congue eget enim. Suspendisse potenti. Nullam vehicula metus quis purus faucibus, at sollicitudin eros pharetra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur velit elit, consequat quis consequat vel, dignissim id dolor.</li>\r\n<li>Nullam accumsan accumsan bibendum. Duis interdum metus dui, sed dignissim turpis gravida in. Sed quis mi mattis, varius tortor eget, lacinia lacus. Donec at nisl non nulla interdum egestas eget id ligula. Suspendisse fringilla commodo semper. Pellentesque consequat, magna vitae rutrum eleifend, magna justo fermentum eros, eu elementum nibh risus ac nunc. Donec elit neque, bibendum nec gravida non, aliquam condimentum sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras in efficitur tellus, sed bibendum mauris.</li>\r\n</ol>\r\n</div>', 1),
(8, 'process 8-c3', 3, '<p>test insert total</p>', '<p>test insert total</p>', '<p>test insert total</p>', 1),
(9, 'process  9-c3', 3, '<p>second test insert complet</p>', '<p>second test insert complet</p>', '<p>second test insert complet</p>', 1),
(10, 'process 10-c3', 3, '<p>troisi&egrave;me test insert complet</p>', '<p>troisi&egrave;me test insert complet</p>', '<p>troisi&egrave;me test insert complet</p>', 1),
(11, 'process 11-c3', 3, '<p>blabla</p>', '<p>blabla</p>', '<p>blabla</p>', 0),
(12, 'process 12-c5', 5, '<p>test</p>', '<p>test</p>', '<p>test</p>', 1),
(13, 'test_crea', 2, '<p>test_crea</p>', '<p>test_crea</p>', '<p>test_crea</p>', 1),
(14, 'test', 2, '', '', '', 1),
(15, 'process_commun_1', 15, 'process_commun_1', 'process_commun_1', 'process_commun_1', 1),
(20, 'process_commun_2', 15, '<p>process_commun_2</p>', '<p>process_commun_2</p>', '<p>process_commun_2</p>', 1),
(21, 'process_commun_3', 15, '<p>process_commun_3</p>', '<p>process_commun_3</p>', '<p>process_commun_3</p>', 1),
(22, 'process_commun_4', 15, '<p>4</p>', '<p>4</p>', '<p>4</p>', 1),
(26, 'process 11-c32', 15, '<p>process 11-c3</p>', '<p>process 11-c3</p>', '<p>process 11-c3</p>', 1);

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
(1, 'techspec 1 client 1', 1, 1),
(2, 'techspec 2 client 1', 1, 1),
(3, 'techspec 1 client 2', 2, 1),
(4, 'techspec 2 client 2', 2, 1),
(5, 'test_crea_techspec', 3, 1),
(6, 'test_crea_techspec2', 3, 1),
(8, 'test_crea_techspec4', 3, 1),
(10, 'test_crea_techspec3', 3, 1),
(11, 'test_crea_techspec1', 3, 1),
(12, 'test_crea_techspec1', 1, 1),
(13, 'test_crea_techspec5', 3, 1),
(14, 'test_client5', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `connect_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tracker`
--

INSERT INTO `tracker` (`id`, `user_id`, `connect_time`, `action`) VALUES
(7896, 39, '2022-01-26 09:46:11', 'Chargement de la page de suivie de déclaration d\'heures sup.'),
(7897, 39, '2022-01-26 09:46:13', 'Chargement de la page de demande de congés'),
(7898, 39, '2022-01-26 09:46:14', 'Chargement de la page d\'accueil PAO');

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
(2, 'NomTest', 'PrenomTest', 'TestMan', 1, 2, '1f1925fce08a8999328ccca70cbca12b'),
(11, 'Boulet', 'Bill', 'Boulet', 1, 3, 'dd6c2471c382a4bf55a678a7770edbb4'),
(13, 'testpournom', 'superlong', 'blablabla', 1, 4, 'cda7ee95744644bfdc8dcfc042d1b110'),
(33, '9', '9', '9', 1, 6, '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(34, '8', '8', '8', 1, 1, 'c9f0f895fb98ab9159f51fd0297e236d'),
(37, '7', '7', '7', 1, 6, '8f14e45fceea167a5a36dedd4bea2543'),
(38, '5', '5', '5', 1, 5, 'e4da3b7fbbce2345d7772b0674a318d5'),
(39, 'louis', 'XIV', 'louisXIV', 1, 5, 'aab3238922bcc25a6f606eb525ffdc56');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Index pour la table `conges`
--
ALTER TABLE `conges`
  ADD PRIMARY KEY (`conges_id`);

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
-- Index pour la table `heures_sup`
--
ALTER TABLE `heures_sup`
  ADD PRIMARY KEY (`hsup_id`);

--
-- Index pour la table `logiciels`
--
ALTER TABLE `logiciels`
  ADD PRIMARY KEY (`logiciels_id`);

--
-- Index pour la table `polyvalence`
--
ALTER TABLE `polyvalence`
  ADD PRIMARY KEY (`poly_id`);

--
-- Index pour la table `poste_polyvalence`
--
ALTER TABLE `poste_polyvalence`
  ADD PRIMARY KEY (`poste_id`);

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
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `conges`
--
ALTER TABLE `conges`
  MODIFY `conges_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `heures_sup`
--
ALTER TABLE `heures_sup`
  MODIFY `hsup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `logiciels`
--
ALTER TABLE `logiciels`
  MODIFY `logiciels_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `polyvalence`
--
ALTER TABLE `polyvalence`
  MODIFY `poly_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `poste_polyvalence`
--
ALTER TABLE `poste_polyvalence`
  MODIFY `poste_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `process`
--
ALTER TABLE `process`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `techspecs`
--
ALTER TABLE `techspecs`
  MODIFY `techspec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7899;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
