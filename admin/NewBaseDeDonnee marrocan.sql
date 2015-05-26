-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 22 Mai 2015 à 17:51
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `marrocan`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE IF NOT EXISTS `appartient` (
`ID_PACK` int(11) NOT NULL,
  `ID_CIRCUIT` int(11) NOT NULL,
  `ORDRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `circuit`
--

CREATE TABLE IF NOT EXISTS `circuit` (
`ID_CIRCUIT` int(11) NOT NULL,
  `NOM` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `correspond`
--

CREATE TABLE IF NOT EXISTS `correspond` (
  `ID_POINT` int(11) NOT NULL,
  `ID_CIRCUIT` int(11) NOT NULL,
  `ORDRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`ID_MEDIA` int(11) NOT NULL,
  `ID_VILLE` int(11) NOT NULL,
  `URL` text,
  `TYPE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `ID_PACK` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `NOTE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pack`
--

CREATE TABLE IF NOT EXISTS `pack` (
  `ID_PACK` int(11) NOT NULL,
  `ID_VILLE` int(11) NOT NULL,
  `NOMPACK` text,
  `IMAGE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `point`
--

CREATE TABLE IF NOT EXISTS `point` (
`ID_POINT` int(11) NOT NULL,
  `LANG` text,
  `ATTITUDE` text,
  `NOM` text,
  `IMAGE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `selection`
--

CREATE TABLE IF NOT EXISTS `selection` (
  `ID_PACK` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`ID_USER` int(11) NOT NULL,
  `NOM` text,
  `PRENOM` text,
  `ADRESSE` text,
  `LOGIN` text,
  `PASSWORD` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`ID_USER`, `NOM`, `PRENOM`, `ADRESSE`, `LOGIN`, `PASSWORD`) VALUES
(1, 'Abida', 'Omar', 'Hay sadri', 'aaaaaa', '123456'),
(2, 'Rhanime', 'Rida', 'Hay falahh', 'bbbbbb', '789067'),
(3, 'Rhnabri', 'Ayoub', 'hay barnoussi', 'cccccc', '342516'),
(4, 'Lbehja', 'Salah', 'Darb Kabir', 'dddddd', '9101819');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
`ID_VILLE` int(11) NOT NULL,
  `NOM` text,
  `HISTORIQUE` longtext
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`ID_VILLE`, `NOM`, `HISTORIQUE`) VALUES
(6, 'Marrakche', ' Marrakech, l''une des quatre villes impériales du Maroc, est réellement une ville fascinante. Elle ne saurait laisser indifférent tout qui passe au-delà des murs d''enceinte de la médina, s''étalant sur une distance approximative de 19 kilomètres et dont l''accès se fait par l''une des 9 portes d''entrées. Cette épaisse muraille, Une avenue bordée de palmiers à Marrakech.ou rempart, est de couleur variable selon l''éclairage du moment. Tantôt elle sera de couleur ocre, voire même rouge ou bien rose. Dès votre sortie de l''aéroport, si vous avez choisi l''avion comme moyen de transport, vous serez assailli de mille odeurs dégagées par les fleurs de toutes sortes garnissant les murs de la ville. Les remparts autour de la ville.Beaucoup de ces murs sont recouverts de bougainvillées aux couleurs mauves, rouges ou bien encore oranges. Les larges avenues qui sillonnent les extérieurs de la ville sont généralement flanquées, de part et d''autre, de hauts palmiers venant surenchérir la majesté des lieux. En 1979, lors de mon périple en voiture à travers le pays, je suis arrivé à Marrakech venant de Casablanca. En me rapprochant progressivement de la ville, j''apercevais au loin la très célèbre palmeraie de Marrakech, contrastant avec les neiges couvrant les cimes des montagnes de l''Atlas. Les 100.000 palmiers, parfois chargés abondamment de dates selon la saison, s''étendent à perte de vue sur plus de 13.000 hectares. Le spectacle est réellement fascinant, l''on croirait entrer au Paradis ! Les quatre couleurs prédominantes de Marrakech sont le bleu du ciel, le rouge de ses habitations, le vert des palmiers et des oliviers et le blanc des neiges du Haut Atlas.'),
(7, 'Casablanca', '<p>&nbsp;</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>'),
(8, 'Agadir', '<p>&nbsp;</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>'),
(9, 'Fes', '<p>&nbsp;</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>'),
(10, 'Rabat', '<p>&nbsp;</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
 ADD PRIMARY KEY (`ID_PACK`,`ID_CIRCUIT`), ADD KEY `FK_APPARTIENT2` (`ID_CIRCUIT`);

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
 ADD PRIMARY KEY (`ID_CIRCUIT`);

--
-- Index pour la table `correspond`
--
ALTER TABLE `correspond`
 ADD PRIMARY KEY (`ID_POINT`,`ID_CIRCUIT`), ADD KEY `FK_CORRESPOND2` (`ID_CIRCUIT`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`ID_MEDIA`), ADD KEY `FK_COMPORT` (`ID_VILLE`);

--
-- Index pour la table `notation`
--
ALTER TABLE `notation`
 ADD PRIMARY KEY (`ID_PACK`,`ID_USER`), ADD KEY `FK_NOTATION2` (`ID_USER`);

--
-- Index pour la table `pack`
--
ALTER TABLE `pack`
 ADD PRIMARY KEY (`ID_PACK`), ADD KEY `FK_CONCERNE` (`ID_VILLE`);

--
-- Index pour la table `point`
--
ALTER TABLE `point`
 ADD PRIMARY KEY (`ID_POINT`);

--
-- Index pour la table `selection`
--
ALTER TABLE `selection`
 ADD PRIMARY KEY (`ID_PACK`,`ID_USER`), ADD KEY `FK_SELECTION2` (`ID_USER`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`ID_USER`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
 ADD PRIMARY KEY (`ID_VILLE`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `appartient`
--
ALTER TABLE `appartient`
MODIFY `ID_PACK` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `circuit`
--
ALTER TABLE `circuit`
MODIFY `ID_CIRCUIT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
MODIFY `ID_MEDIA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `point`
--
ALTER TABLE `point`
MODIFY `ID_POINT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
MODIFY `ID_VILLE` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
