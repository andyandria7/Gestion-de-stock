-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 27 avr. 2025 à 19:17
-- Version du serveur : 8.2.0
-- Version de PHP : 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gest_vente`
--

-- --------------------------------------------------------

--
-- Structure de la table `approvisionnement`
--

DROP TABLE IF EXISTS `approvisionnement`;
CREATE TABLE IF NOT EXISTS `approvisionnement` (
  `idApp` int NOT NULL AUTO_INCREMENT,
  `dateApp` date NOT NULL,
  `idFournisseur` int NOT NULL,
  PRIMARY KEY (`idApp`),
  UNIQUE KEY `idFournisseur` (`idFournisseur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `contact` int NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nom`, `prenom`, `adresse`, `contact`) VALUES
(2, 'aaa', '', 'aze', 123),
(4, 'uuuu', 'test', 'aaaaaa', 0),
(5, 'andy', 'anthony', 'LotIIV', 292091),
(6, 'Client1', 'Client', 'lotVV', 12345),
(7, 'hary', 'Rantossss', 'lotII6323', 218),
(8, 'RANDIA', 'Son', 'LOTOSY', 2345),
(9, 'gorge', 'GG', 'lot123456789', 888888);

-- --------------------------------------------------------

--
-- Structure de la table `detailapp`
--

DROP TABLE IF EXISTS `detailapp`;
CREATE TABLE IF NOT EXISTS `detailapp` (
  `idD` int NOT NULL AUTO_INCREMENT,
  `quantite` int NOT NULL,
  `prixAchat` int NOT NULL,
  `idApp` int NOT NULL,
  `idProd` int NOT NULL,
  PRIMARY KEY (`idD`),
  UNIQUE KEY `idApp` (`idApp`,`idProd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `idF` int NOT NULL AUTO_INCREMENT,
  `quantite` int NOT NULL,
  `montantTotal` int NOT NULL,
  `idProd` int NOT NULL,
  `idClient` int NOT NULL,
  PRIMARY KEY (`idF`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`idF`, `quantite`, `montantTotal`, `idProd`, `idClient`) VALUES
(1, 3, 36000, 0, 0),
(2, 1, 12000, 2, 2),
(3, 1, 12000, 2, 2),
(4, 2, 10000, 12, 4),
(5, 2, 10000, 12, 4),
(6, 3, 66000, 3, 4),
(7, 3, 1500, 13, 6),
(8, 2, 44000, 3, 6),
(9, 1, 12000, 2, 6),
(10, 1, 5000, -1, 5),
(11, 1, 5000, -1, 5),
(12, 0, 0, -1, 5),
(13, 1, 5000, -1, 5),
(14, 1, 5000, -1, 5),
(15, 1, 5000, -1, 2),
(16, 1, 5000, -1, 2),
(17, 10, 5000, -1, 5),
(18, 2, 24000, -1, 6),
(19, 10, 220000, -1, 6),
(20, 3, 36000, 2, 6),
(21, 2, 44000, 3, 6),
(22, 4, 48000, 2, 2),
(23, 5, 2500, 13, 5),
(24, 2, 10000, 12, 5),
(25, 3, 36000, 2, 2),
(26, 1, 22000, 3, 2),
(27, 2, 44000, 3, 5),
(28, 2, 10000, 12, 2),
(29, 2, 24000, 2, 2),
(30, 2, 24000, 2, 2),
(31, 1, 12000, 2, 2),
(32, 2, 24000, 2, 2),
(33, 2, 24000, 2, 2),
(34, 3, 36000, 2, 5),
(35, 2, 24000, 2, 6),
(36, 2, 1000, 13, 6),
(37, 2, 44000, 3, 6),
(38, 3, 34500, 8, 4),
(39, 3, 1500, 13, 4),
(40, 3, 36000, 2, 2),
(41, 5, 2500, 14, 7),
(42, 1, 12000, 5, 7),
(43, 3, 75000, 4, 7),
(44, 2, 200, 15, 8),
(45, 2, 24000, 5, 8),
(46, 1, 12000, 2, 5),
(47, 2, 24000, 2, 5),
(48, 2, 44000, 3, 5),
(49, 2, 32000, 16, 2),
(50, 10, 5000, 14, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `idFournisseur` int NOT NULL AUTO_INCREMENT,
  `nomF` varchar(50) NOT NULL,
  `adresseF` varchar(50) NOT NULL,
  `contactF` int NOT NULL,
  PRIMARY KEY (`idFournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`idFournisseur`, `nomF`, `adresseF`, `contactF`) VALUES
(3, 'dadanlah', 'LotII234567', 11111),
(4, 'rrA', 'yyy', 987654),
(5, 'Ando', 'lot1234', 9828);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `idProd` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `PU` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`idProd`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProd`, `ref`, `designation`, `PU`, `stock`) VALUES
(2, 'L001', 'Lotion', 12000, 58),
(3, 'C001', 'Crème de nuit', 22000, 28),
(4, 'C002', 'Crème anti-tâche', 25000, 47),
(5, 'CF001', 'Crème coifante', 12000, 147),
(6, 'SH001', 'Shampoing Dove', 45000, 120),
(8, 'GD001', 'Gel douche', 11500, 147),
(12, 'A001', 'Savon', 5000, 0),
(13, 'CH001', 'Chips', 500, 0),
(14, 'P001', 'Pomma', 500, 5),
(15, '1', 'paiso', 100, 8),
(16, '05', 'whey protein', 16000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `idV` int NOT NULL AUTO_INCREMENT,
  `dateVente` int NOT NULL,
  `idProd` int NOT NULL,
  `idClient` int NOT NULL,
  PRIMARY KEY (`idV`),
  UNIQUE KEY `idProd` (`idProd`,`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
