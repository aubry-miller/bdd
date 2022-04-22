-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 22 avr. 2022 à 09:39
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
-- Base de données : `kairos`
--
CREATE DATABASE IF NOT EXISTS `kairos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kairos`;

-- --------------------------------------------------------

--
-- Structure de la table `consumption`
--

CREATE TABLE `consumption` (
  `cn_id` int(11) NOT NULL,
  `cn_piece_id` varchar(30) NOT NULL,
  `cn_consumption_type` varchar(100) NOT NULL,
  `cn_product_id` int(11) NOT NULL,
  `cn_quantity` decimal(10,0) NOT NULL,
  `cn_operator_id` int(11) NOT NULL,
  `cn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customer_stock`
--

CREATE TABLE `customer_stock` (
  `cs_id` int(11) NOT NULL,
  `cs_customer_number` int(11) NOT NULL,
  `cs_customer_name` varchar(100) NOT NULL,
  `cs_stock_type` varchar(50) NOT NULL,
  `cs_minimal_stock` int(11) NOT NULL,
  `cs_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `default_machine_operator_link`
--

CREATE TABLE `default_machine_operator_link` (
  `dmol_operator_id` int(11) NOT NULL,
  `dmol_machine_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exceptional_machine_operator_link`
--

CREATE TABLE `exceptional_machine_operator_link` (
  `emol_operator_id` int(11) NOT NULL,
  `emol_machine_id` int(11) NOT NULL,
  `emom_start_hour_date` datetime NOT NULL,
  `emom_end_hour_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fiber`
--

CREATE TABLE `fiber` (
  `fb_id` int(11) NOT NULL,
  `fb_label` varchar(50) NOT NULL,
  `fb_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiber`
--

INSERT INTO `fiber` (`fb_id`, `fb_label`, `fb_status`) VALUES
(1, 'standard', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `fiber_reference`
--

CREATE TABLE `fiber_reference` (
  `fr_id` int(11) NOT NULL,
  `fr_code` int(11) NOT NULL,
  `fr_mandrel_diameter` decimal(10,0) NOT NULL COMMENT '(mm)',
  `fr_overall_lenght` decimal(10,0) NOT NULL COMMENT '(mm)',
  `fr_fiber_type_id` int(11) NOT NULL,
  `fr_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flow`
--

CREATE TABLE `flow` (
  `fl_id` int(11) NOT NULL,
  `fl_label` varchar(100) NOT NULL,
  `fl_explain` text NOT NULL,
  `fl_step_1` int(11) DEFAULT NULL,
  `fl_step_2` int(11) DEFAULT NULL,
  `fl_step_3` int(11) DEFAULT NULL,
  `fl_step_4` int(11) DEFAULT NULL,
  `fl_step_5` int(11) DEFAULT NULL,
  `fl_step_6` int(11) DEFAULT NULL,
  `fl_step_7` int(11) DEFAULT NULL,
  `fl_step_8` int(11) DEFAULT NULL,
  `fl_step_9` int(11) DEFAULT NULL,
  `fl_step_10` int(11) DEFAULT NULL,
  `fl_step_11` int(11) DEFAULT NULL,
  `fl_step_12` int(11) DEFAULT NULL,
  `fl_step_13` int(11) DEFAULT NULL,
  `fl_step_14` int(11) DEFAULT NULL,
  `fl_step_15` int(11) DEFAULT NULL,
  `fl_step_16` int(11) DEFAULT NULL,
  `fl_step_17` int(11) DEFAULT NULL,
  `fl_step_18` int(11) DEFAULT NULL,
  `fl_step_19` int(11) DEFAULT NULL,
  `fl_step_20` int(11) DEFAULT NULL,
  `fl_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `flow`
--

INSERT INTO `flow` (`fl_id`, `fl_label`, `fl_explain`, `fl_step_1`, `fl_step_2`, `fl_step_3`, `fl_step_4`, `fl_step_5`, `fl_step_6`, `fl_step_7`, `fl_step_8`, `fl_step_9`, `fl_step_10`, `fl_step_11`, `fl_step_12`, `fl_step_13`, `fl_step_14`, `fl_step_15`, `fl_step_16`, `fl_step_17`, `fl_step_18`, `fl_step_19`, `fl_step_20`, `fl_status`) VALUES
(1, 'engraving sleeves', 'test', 1, 2, 3, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `function`
--

CREATE TABLE `function` (
  `fc_id` int(11) NOT NULL,
  `fc_label` varchar(100) NOT NULL,
  `fc_access_rights_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `homepage`
--

CREATE TABLE `homepage` (
  `hp_id` int(11) NOT NULL,
  `hp_label` varchar(50) NOT NULL,
  `hp_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE `language` (
  `ln_id` int(11) NOT NULL,
  `ln_label_short` varchar(4) NOT NULL,
  `ln_label_long` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `language`
--

INSERT INTO `language` (`ln_id`, `ln_label_short`, `ln_label_long`) VALUES
(1, 'en', 'English'),
(2, 'fr', 'French');

-- --------------------------------------------------------

--
-- Structure de la table `link_customer_stock_pieces`
--

CREATE TABLE `link_customer_stock_pieces` (
  `lcsp_stock_id` int(11) NOT NULL,
  `lcsp_piece_id` int(11) NOT NULL,
  `lcsp_entry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `link_product_flow`
--

CREATE TABLE `link_product_flow` (
  `lpf_flow_id` int(11) NOT NULL,
  `lpf_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `link_product_flow`
--

INSERT INTO `link_product_flow` (`lpf_flow_id`, `lpf_product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `mc_id` int(11) NOT NULL,
  `mc_label` varchar(100) NOT NULL,
  `mc_sector_id` int(11) NOT NULL,
  `mc_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `machine_stop`
--

CREATE TABLE `machine_stop` (
  `ms_machine_id` int(11) NOT NULL,
  `ms_start_hour_date` datetime NOT NULL,
  `ms_end_hour_date` datetime NOT NULL,
  `ms_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mandrel`
--

CREATE TABLE `mandrel` (
  `mn_id` int(11) NOT NULL,
  `mn_diameter` decimal(10,0) NOT NULL,
  `mn_lenght` decimal(10,0) NOT NULL,
  `mn_form` enum('conic','parallel') NOT NULL,
  `mn_sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mandrel`
--

INSERT INTO `mandrel` (`mn_id`, `mn_diameter`, `mn_lenght`, `mn_form`, `mn_sector_id`) VALUES
(1, '78', '1900', 'parallel', 3),
(2, '78', '1900', 'parallel', 3);

-- --------------------------------------------------------

--
-- Structure de la table `minimum_time`
--

CREATE TABLE `minimum_time` (
  `mt_id` int(11) NOT NULL,
  `mt_rubber_id` int(11) NOT NULL,
  `mt_flow_id` int(11) NOT NULL,
  `mt_time` decimal(10,0) NOT NULL COMMENT 'days'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `minimum_time`
--

INSERT INTO `minimum_time` (`mt_id`, `mt_rubber_id`, `mt_flow_id`, `mt_time`) VALUES
(1, 1, 1, '6');

-- --------------------------------------------------------

--
-- Structure de la table `notch`
--

CREATE TABLE `notch` (
  `nt_id` int(11) NOT NULL,
  `nt_label` varchar(20) NOT NULL,
  `nt_link` varchar(100) NOT NULL COMMENT 'picture link'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notch`
--

INSERT INTO `notch` (`nt_id`, `nt_label`, `nt_link`) VALUES
(20, '20', '/images/notch/20.png');

-- --------------------------------------------------------

--
-- Structure de la table `operator_absences`
--

CREATE TABLE `operator_absences` (
  `oa_operator_id` int(11) NOT NULL,
  `oa_start_hour_date` datetime NOT NULL,
  `oa_end_hour_date` datetime NOT NULL,
  `oa_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `od_millnet_id` varchar(16) NOT NULL,
  `od_customer_number` int(11) NOT NULL,
  `od_customer_name` varchar(100) NOT NULL,
  `od_csr_name` varchar(100) NOT NULL,
  `od_pieces_number` int(11) NOT NULL,
  `od_deadline` date NOT NULL,
  `od_status` varchar(30) NOT NULL,
  `od_saving_date` datetime NOT NULL,
  `od_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`od_millnet_id`, `od_customer_number`, `od_customer_name`, `od_csr_name`, `od_pieces_number`, `od_deadline`, `od_status`, `od_saving_date`, `od_update_date`) VALUES
('00569491-001-000', 11111, 'customerTest', 'Olivier Pouzeau', 2, '2022-06-21', 'awaiting validation', '2022-04-21 07:43:21', '2022-04-21 07:43:21');

-- --------------------------------------------------------

--
-- Structure de la table `overtime_operator`
--

CREATE TABLE `overtime_operator` (
  `oo_operator_id` int(11) NOT NULL,
  `oo_start_hour_date` datetime NOT NULL,
  `oo_end_hour_date` datetime NOT NULL,
  `oo_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE `piece` (
  `pc_id` varchar(20) NOT NULL,
  `pc_order_id` varchar(16) DEFAULT NULL,
  `pc_product_type_id` int(11) NOT NULL,
  `pc_rubber_id` int(11) NOT NULL,
  `pc_sleeve_lenght` decimal(10,0) NOT NULL,
  `pc_table_lenght` decimal(10,0) NOT NULL,
  `pc_sleeve_offset` decimal(10,0) DEFAULT NULL,
  `pc_mandrel_diameter` decimal(10,0) NOT NULL,
  `pc_mandrel_form` enum('parallel','conic') NOT NULL,
  `pc_notch_id` int(11) DEFAULT NULL,
  `pc_notch_position` varchar(30) DEFAULT NULL,
  `pc_developement` decimal(10,0) NOT NULL,
  `pc_fiber_id` int(11) NOT NULL,
  `pc_fiber_thickness` decimal(10,0) NOT NULL,
  `pc_chip` tinyint(1) DEFAULT NULL,
  `pc_cutback` varchar(30) DEFAULT NULL,
  `pc_cutback_diameter` decimal(10,0) DEFAULT NULL,
  `pc_flow_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `piece`
--

INSERT INTO `piece` (`pc_id`, `pc_order_id`, `pc_product_type_id`, `pc_rubber_id`, `pc_sleeve_lenght`, `pc_table_lenght`, `pc_sleeve_offset`, `pc_mandrel_diameter`, `pc_mandrel_form`, `pc_notch_id`, `pc_notch_position`, `pc_developement`, `pc_fiber_id`, `pc_fiber_thickness`, `pc_chip`, `pc_cutback`, `pc_cutback_diameter`, `pc_flow_id`) VALUES
('00569491-001-000_001', '00569491-001-000', 1, 1, '1100', '1000', '0', '78', 'parallel', 20, 'Left', '254', 1, '1', 0, '0', '0', 1),
('00569491-001-000_002', '00569491-001-000', 1, 1, '1100', '1000', '0', '78', 'parallel', 20, 'Left', '254', 1, '1', 0, '0', '0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `planning_task`
--

CREATE TABLE `planning_task` (
  `pt_id` int(11) NOT NULL,
  `pt_piece_id` varchar(30) NOT NULL,
  `pt_step_id` int(11) NOT NULL,
  `pt_expected_duration` time NOT NULL,
  `pt_planned_start_date` datetime NOT NULL,
  `pt_planned_end_date` datetime NOT NULL,
  `pt_real_start_date` datetime NOT NULL,
  `pt_real_end_date` datetime NOT NULL,
  `pt_real_time` time NOT NULL,
  `pt_machine_id` int(11) NOT NULL,
  `pt_operator_id` int(11) NOT NULL,
  `pt_mandrel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `planning_task`
--

INSERT INTO `planning_task` (`pt_id`, `pt_piece_id`, `pt_step_id`, `pt_expected_duration`, `pt_planned_start_date`, `pt_planned_end_date`, `pt_real_start_date`, `pt_real_end_date`, `pt_real_time`, `pt_machine_id`, `pt_operator_id`, `pt_mandrel_id`) VALUES
(1, '00569491-001-000_001', 4, '00:00:01', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '00:00:00', 1, 1, 1),
(2, '00569491-001-000_002', 4, '00:00:01', '2022-04-22 07:43:49', '2022-04-22 07:43:49', '2022-04-22 07:43:49', '2022-04-22 07:43:49', '00:00:00', 1, 1, 1),
(3, '00569491-001-000_001', 4, '00:00:01', '2022-04-25 07:43:49', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '00:00:00', 1, 1, 1),
(4, '00569491-001-000_001', 2, '00:00:01', '2022-04-26 07:43:49', '2022-04-26 07:43:49', '2022-04-21 07:43:49', '2022-04-21 07:43:49', '00:00:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_type`
--

CREATE TABLE `product_type` (
  `pt_id` int(11) NOT NULL,
  `pt_label` varchar(100) NOT NULL,
  `pt_explain` text NOT NULL,
  `pt_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_label`, `pt_explain`, `pt_status`) VALUES
(1, 'engraving sleeves', 'test', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `rubber`
--

CREATE TABLE `rubber` (
  `rb_id` int(11) NOT NULL,
  `rb_label` varchar(50) NOT NULL,
  `rb_type` varchar(30) NOT NULL,
  `rb_lining_type` varchar(20) NOT NULL,
  `rb_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rubber`
--

INSERT INTO `rubber` (`rb_id`, `rb_label`, `rb_type`, `rb_lining_type`, `rb_status`) VALUES
(1, '166014K', 'monogomme', 'manuel', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `sector`
--

CREATE TABLE `sector` (
  `sc_id` int(11) NOT NULL,
  `sc_label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sector`
--

INSERT INTO `sector` (`sc_id`, `sc_label`) VALUES
(2, 'garnissage'),
(3, 'rectif');

-- --------------------------------------------------------

--
-- Structure de la table `step`
--

CREATE TABLE `step` (
  `stp_id` int(11) NOT NULL,
  `stp_label` varchar(50) NOT NULL,
  `stp_sector_id` int(11) NOT NULL,
  `stp_needs_mandrel` tinyint(1) NOT NULL,
  `stp_minimum_time` decimal(10,0) DEFAULT NULL COMMENT 'days',
  `stp_comment` text NOT NULL,
  `stp_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `step`
--

INSERT INTO `step` (`stp_id`, `stp_label`, `stp_sector_id`, `stp_needs_mandrel`, `stp_minimum_time`, `stp_comment`, `stp_status`) VALUES
(1, 'fibre', 1, 1, '1', '', 'enabled'),
(2, 'garnissage manuel', 2, 1, '4', '', 'enabled'),
(3, 'ebauche', 2, 1, '0', '', 'enabled'),
(4, 'rectification', 3, 1, '1', '', 'enabled'),
(5, 'stock laser', 4, 0, '0', '', 'enabled');

-- --------------------------------------------------------

--
-- Structure de la table `stock_customer`
--

CREATE TABLE `stock_customer` (
  `stc_customer_id` int(11) NOT NULL,
  `stc_piece_id` int(11) NOT NULL,
  `stc_entry_date` datetime NOT NULL,
  `stc_removal_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `temp_order`
--

CREATE TABLE `temp_order` (
  `temp_id` int(11) NOT NULL,
  `temp_millnet_id` varchar(20) NOT NULL,
  `temp_millnet_part_id` varchar(20) NOT NULL,
  `temp_customer_number` varchar(8) NOT NULL,
  `temp_customer_name` varchar(50) NOT NULL,
  `temp_csr_name` varchar(100) NOT NULL,
  `temp_pieces_number` varchar(3) NOT NULL,
  `temp_deadline` varchar(10) NOT NULL,
  `temp_saving_date` varchar(20) NOT NULL,
  `temp_product_type` varchar(100) NOT NULL,
  `temp_rubber` varchar(50) NOT NULL,
  `temp_sleeve_lenght` varchar(10) NOT NULL,
  `temp_table_lenght` varchar(10) NOT NULL,
  `temp_sleeve_offset` varchar(10) NOT NULL,
  `temp_mandrel_diameter` varchar(10) NOT NULL,
  `temp_mandrel_form` varchar(30) NOT NULL,
  `temp_notch` varchar(20) NOT NULL,
  `temp_notch_position` varchar(20) NOT NULL,
  `temp_developement` varchar(10) NOT NULL,
  `temp_fiber` varchar(50) NOT NULL,
  `temp_fiber_thickness` varchar(10) NOT NULL,
  `temp_chip` varchar(10) NOT NULL,
  `temp_cutback` varchar(50) NOT NULL,
  `temp_cutback_diameter` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `trad`
--

CREATE TABLE `trad` (
  `trad_key` varchar(200) NOT NULL,
  `fr` text NOT NULL,
  `en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `trad`
--

INSERT INTO `trad` (`trad_key`, `fr`, `en`) VALUES
('login', 'connexion', 'login');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `us_id` int(11) NOT NULL,
  `us_firstname` varchar(50) NOT NULL,
  `us_name` varchar(50) NOT NULL,
  `us_login` varchar(5) NOT NULL,
  `us_password` varchar(200) NOT NULL COMMENT 'encrypted',
  `us_language_id` int(11) NOT NULL DEFAULT '2',
  `us_function_id` int(11) NOT NULL,
  `us_homepage_id` int(11) NOT NULL,
  `us_status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`us_id`, `us_firstname`, `us_name`, `us_login`, `us_password`, `us_language_id`, `us_function_id`, `us_homepage_id`, `us_status`) VALUES
(1, 'Aubry', 'Debord', 'ade', 'a562cfa07c2b1213b3a5c99b756fc206', 2, 1, 1, 'enabled');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consumption`
--
ALTER TABLE `consumption`
  ADD PRIMARY KEY (`cn_id`);

--
-- Index pour la table `customer_stock`
--
ALTER TABLE `customer_stock`
  ADD PRIMARY KEY (`cs_id`);

--
-- Index pour la table `fiber`
--
ALTER TABLE `fiber`
  ADD PRIMARY KEY (`fb_id`);

--
-- Index pour la table `fiber_reference`
--
ALTER TABLE `fiber_reference`
  ADD PRIMARY KEY (`fr_id`);

--
-- Index pour la table `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`fl_id`);

--
-- Index pour la table `function`
--
ALTER TABLE `function`
  ADD PRIMARY KEY (`fc_id`);

--
-- Index pour la table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`hp_id`);

--
-- Index pour la table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`ln_id`);

--
-- Index pour la table `link_customer_stock_pieces`
--
ALTER TABLE `link_customer_stock_pieces`
  ADD UNIQUE KEY `lcsp_piece_id` (`lcsp_piece_id`);

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`mc_id`);

--
-- Index pour la table `mandrel`
--
ALTER TABLE `mandrel`
  ADD PRIMARY KEY (`mn_id`);

--
-- Index pour la table `minimum_time`
--
ALTER TABLE `minimum_time`
  ADD PRIMARY KEY (`mt_id`);

--
-- Index pour la table `notch`
--
ALTER TABLE `notch`
  ADD PRIMARY KEY (`nt_id`);

--
-- Index pour la table `planning_task`
--
ALTER TABLE `planning_task`
  ADD PRIMARY KEY (`pt_id`);

--
-- Index pour la table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Index pour la table `rubber`
--
ALTER TABLE `rubber`
  ADD PRIMARY KEY (`rb_id`);

--
-- Index pour la table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sc_id`);

--
-- Index pour la table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`stp_id`);

--
-- Index pour la table `temp_order`
--
ALTER TABLE `temp_order`
  ADD PRIMARY KEY (`temp_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consumption`
--
ALTER TABLE `consumption`
  MODIFY `cn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_stock`
--
ALTER TABLE `customer_stock`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fiber`
--
ALTER TABLE `fiber`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `fiber_reference`
--
ALTER TABLE `fiber_reference`
  MODIFY `fr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `flow`
--
ALTER TABLE `flow`
  MODIFY `fl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `function`
--
ALTER TABLE `function`
  MODIFY `fc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `hp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `language`
--
ALTER TABLE `language`
  MODIFY `ln_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mandrel`
--
ALTER TABLE `mandrel`
  MODIFY `mn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `minimum_time`
--
ALTER TABLE `minimum_time`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `notch`
--
ALTER TABLE `notch`
  MODIFY `nt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `planning_task`
--
ALTER TABLE `planning_task`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rubber`
--
ALTER TABLE `rubber`
  MODIFY `rb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sector`
--
ALTER TABLE `sector`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `step`
--
ALTER TABLE `step`
  MODIFY `stp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `temp_order`
--
ALTER TABLE `temp_order`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
