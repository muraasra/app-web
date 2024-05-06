-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 mai 2024 à 05:26
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionassiduite`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `matricule_ens` varchar(20) NOT NULL,
  `nom_ens` varchar(30) DEFAULT NULL,
  `matiere` varchar(30) DEFAULT NULL,
  `cle_ens` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`matricule_ens`, `nom_ens`, `matiere`, `cle_ens`) VALUES
('EN.CMR.A001.1617', 'FREDDY FRANCKY', 'Methode Agile', 'enseignant00');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `matricule_etd` varchar(20) NOT NULL,
  `nom_etd` varchar(30) DEFAULT NULL,
  `classe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`matricule_etd`, `nom_etd`, `classe`) VALUES
('GL.CMR.B004.2223A', 'DZOUA DIBATO', 'niveau2'),
('GL.CMR.B005.2223A', 'ELABA DOUA', 'niveau2'),
('GL.CMR.B007.2223A', 'FOFIE TCHINDA ', 'niveau2'),
('GL.CMR.B008.2223A', 'FOFOU YVES', 'niveau2'),
('GL.CMR.B009.2223', 'GANDZAM FOKA ', 'niveau2'),
('GL.CMR.B009.2223A', 'FOKA NKOUPAJU', 'niveau2'),
('GL.CMR.B010.2223A', 'FOTSING SOH', 'niveau2'),
('GL.CMR.B011.2223', 'KENFACK TONTSA', 'niveau2'),
('GL.CMR.B011.2223A', 'FOTSO YOUMBI', 'niveau2'),
('GL.CMR.B012.2223', 'KOUABENA', 'niveau2'),
('GL.CMR.B012.2223A', 'GHASSI GHASSI', 'niveau2'),
('GL.CMR.B013.2223', 'LEHEM LEHEM', 'niveau2'),
('GL.CMR.B013.2223A', 'KAMDEM WABO', 'niveau2'),
('GL.CMR.B014.2223', 'MATSING TCHOUPE', 'niveau2'),
('GL.CMR.B014.2223A', 'KAMDEM NGUETSE ', 'niveau2'),
('GL.CMR.B015.2223A', 'KENMOGNE KOME', 'niveau2'),
('GL.CMR.B016.2223A', 'KENGNE TALO', 'niveau2'),
('GL.CMR.B017.2223', 'MBOUOMBOUO MAACHE', 'niveau2'),
('GL.CMR.B018.2223', 'NAHOUSSI', 'niveau2'),
('GL.CMR.B018.2223A', 'KOCHELE MOUOKUO', 'niveau2'),
('GL.CMR.B019.2223', 'NDIFORCHAD', 'niveau2'),
('GL.CMR.B020.2223', 'NDOGAM MAGHE', 'niveau2'),
('GL.CMR.B022.2223A', 'MOUAFO NLA', 'niveau2'),
('GL.CMR.B022.2223B', 'SANDIO KONGUE', 'niveau2'),
('GL.CMR.B026.2223A', 'NGANGWA', 'niveau2'),
('GL.CMR.B027.2223A', 'NGUEMO TSOPNANG', 'niveau2'),
('GL.CMR.B027.2223B', 'TAYOU FOM', 'niveau2'),
('GL.CMR.B028.2223B', 'TEGUEMNE KUATE', 'niveau2'),
('GL.CMR.B030.2223B', 'TIDO DONALD', 'niveau2'),
('GL.CMR.B031.2223B', 'TSASSE TATANG', 'niveau2'),
('GL.CMR.B032.2223A', 'NDAM NSOWO', 'niveau2'),
('GL.CMR.B033.2223A', 'TATIAGOUM BRANDON', 'niveau2'),
('GL.CMR.B033.2223B', 'WELMANDAI DOUFERIE', 'niveau2'),
('SR.CMR.B001.2223', 'AKEULIFACK FAPONG', 'niveau2'),
('SR.CMR.B001.2223A', 'BONSO DEMANOU', 'niveau2'),
('SR.CMR.B002.2223', 'ASSON DONFACK', 'niveau2'),
('SR.CMR.B003.2223', 'CHEKEP IDRIC', 'niveau2'),
('SR.CMR.B004.2223', 'DEMNADJOU DIDEROT', 'niveau2'),
('SR.CMR.B005.2223', 'DJITAP PAULIN', 'niveau2'),
('SR.CMR.B006.2223', 'FOPI TATSAA', 'niveau2'),
('SR.CMR.B008.2223', 'FOUTCHOUM GUEFFE', 'niveau2'),
('SR.CMR.B016.2223', 'MBOUMGNI', 'niveau2'),
('SR.CMR.B019.2223A', 'MADJOUPE LIWAIRE', 'niveau2'),
('SR.CMR.B021.2223A', 'MEGAK TATCHUM ', 'niveau2'),
('SR.CMR.B023.2223B', 'SIME KAMDEM', 'niveau2'),
('SR.CMR.B024.2223A', 'NDJEUSSEU NYA', 'niveau2'),
('SR.CMR.B025.2223B', 'TADJO MBOU', 'niveau2'),
('SR.CMR.B028.2223A', 'NGUETSA TSOPNA', 'niveau2'),
('SR.CMR.B029.2223B', 'TCHOUANKAP DJOFANG', 'niveau2');

-- --------------------------------------------------------

--
-- Structure de la table `fiche_abs`
--

CREATE TABLE `fiche_abs` (
  `id_fa` int(10) NOT NULL,
  `matricule_etd` varchar(20) DEFAULT NULL,
  `matricule_ens` varchar(20) DEFAULT NULL,
  `heure_abs` int(10) DEFAULT NULL,
  `date_abs` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fiche_abs`
--

INSERT INTO `fiche_abs` (`id_fa`, `matricule_etd`, `matricule_ens`, `heure_abs`, `date_abs`) VALUES
(5, 'SR.CMR.B001.2223', NULL, 1, '2024-05-02'),
(6, 'SR.CMR.B003.2223', NULL, 1, '2024-05-02'),
(7, 'SR.CMR.B003.2223', NULL, 1, '2024-05-02'),
(8, 'GL.CMR.B010.2223A', NULL, 1, '2024-05-02'),
(9, 'GL.CMR.B016.2223A', NULL, 1, '2024-05-02'),
(10, 'SR.CMR.B001.2223', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(11, 'SR.CMR.B002.2223', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(12, 'SR.CMR.B003.2223', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(13, 'SR.CMR.B004.2223', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(14, 'GL.CMR.B005.2223A', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(15, 'GL.CMR.B010.2223A', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(16, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(17, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(18, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(19, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(20, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(21, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(22, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(23, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(24, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(25, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(26, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(27, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(28, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(29, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(30, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(31, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(32, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(33, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(34, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(35, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(36, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(37, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(38, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(39, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(40, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(41, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(42, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(43, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(44, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(45, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(46, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(47, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(48, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(49, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(50, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(51, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(52, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(53, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(54, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(55, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(56, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(57, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(58, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(59, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(60, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(61, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(62, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(63, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(64, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(65, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(66, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(67, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(68, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(69, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(70, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(71, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(72, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(73, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(74, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(75, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(76, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(77, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(78, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(79, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(80, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(81, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(82, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(83, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(84, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(85, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(86, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(87, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(88, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(89, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(90, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(91, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(92, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(93, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(94, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(95, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(96, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(97, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(98, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(99, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(100, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(101, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(102, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(103, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(104, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(105, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(106, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(107, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(108, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(109, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(110, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(111, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(112, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(113, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(114, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(115, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(116, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(117, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(118, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(119, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(120, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(121, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(122, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(123, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(124, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(125, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(126, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(127, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(128, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(129, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(130, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(131, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(132, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(133, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(134, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(135, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(136, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(137, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(138, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(139, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(140, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(141, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(142, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(143, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(144, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(145, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(146, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(147, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(148, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(149, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(150, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(151, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(152, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(153, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(154, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(155, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(156, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(157, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(158, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(159, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(160, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(161, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(162, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(163, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(164, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(165, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(166, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(167, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(168, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(169, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(170, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(171, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(172, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(173, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(174, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(175, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(176, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(177, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(178, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(179, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(180, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(181, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(182, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(183, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(184, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(185, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(186, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(187, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(188, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(189, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(190, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(191, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(192, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(193, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(194, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(195, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(196, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(197, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(198, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(199, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(200, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(201, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(202, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(203, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(204, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(205, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(206, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(207, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(208, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(209, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(210, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(211, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(212, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(213, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(214, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(215, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(216, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(217, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(218, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(219, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(220, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(221, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(222, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(223, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(224, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(225, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(226, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(227, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(228, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(229, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(230, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(231, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(232, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(233, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(234, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(235, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(236, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(237, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(238, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(239, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(240, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(241, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(242, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(243, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(244, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(245, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(246, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(247, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(248, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(249, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(250, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(251, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(252, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(253, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(254, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(255, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(256, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(257, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(258, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(259, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(260, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(261, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(262, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(263, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(264, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(265, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(266, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(267, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(268, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(269, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(270, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(271, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(272, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(273, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(274, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(275, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(276, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(277, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(278, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(279, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(280, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(281, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(282, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(283, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(284, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(285, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(286, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(287, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(288, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(289, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(290, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(291, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(292, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(293, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(294, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(295, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(296, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(297, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(298, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(299, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(300, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(301, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(302, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(303, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(304, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(305, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(306, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(307, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(308, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(309, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(310, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(311, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(312, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(313, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(314, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(315, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(316, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(317, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(318, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(319, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(320, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(321, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(322, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(323, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(324, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(325, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(326, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(327, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(328, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(329, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(330, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(331, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(332, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(333, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(334, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(335, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(336, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(337, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(338, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(339, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(340, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(341, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(342, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(343, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(344, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(345, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(346, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(347, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(348, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(349, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(350, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(351, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(352, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(353, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(354, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(355, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(356, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(357, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(358, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(359, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(360, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(361, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(362, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(363, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(364, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(365, 'GL.CMR.B031.2223B', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(366, 'SR.CMR.B001.2223A', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(367, 'SR.CMR.B005.2223', 'EN.CMR.A001.1617', 1, '2024-05-02'),
(368, 'SR.CMR.B001.2223', 'EN.CMR.A001.1617', 1, '2024-05-03'),
(369, 'SR.CMR.B024.2223A', 'EN.CMR.A001.1617', 1, '2024-05-03'),
(370, 'GL.CMR.B007.2223A', 'EN.CMR.A001.1617', 1, '2024-05-03'),
(371, 'SR.CMR.B001.2223A', 'EN.CMR.A001.1617', 1, '2024-05-03');

-- --------------------------------------------------------

--
-- Structure de la table `fiche_rtd`
--

CREATE TABLE `fiche_rtd` (
  `id_fr` int(10) NOT NULL,
  `matricule_etd` varchar(20) DEFAULT NULL,
  `matricule_sur` varchar(20) DEFAULT NULL,
  `nbr_rtd` varchar(10) DEFAULT NULL,
  `date_arrivee` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fiche_rtd`
--

INSERT INTO `fiche_rtd` (`id_fr`, `matricule_etd`, `matricule_sur`, `nbr_rtd`, `date_arrivee`) VALUES
(54, 'SR.CMR.B001.2223', NULL, NULL, '24-05-01'),
(55, 'SR.CMR.B002.2223', NULL, NULL, '24-05-01'),
(56, 'SR.CMR.B001.2223A', NULL, NULL, '24-05-01'),
(57, 'SR.CMR.B004.2223', NULL, NULL, '24-05-01'),
(58, 'GL.CMR.B004.2223A', NULL, NULL, '24-05-01'),
(59, 'SR.CMR.B005.2223', NULL, NULL, '24-05-01'),
(60, 'SR.CMR.B003.2223', NULL, NULL, '24-05-01'),
(61, 'GL.CMR.B007.2223A', NULL, '1', '24-05-01'),
(62, 'GL.CMR.B011.2223', NULL, '1', '24-05-01'),
(63, 'GL.CMR.B005.2223A', NULL, '1', '24-04-29'),
(64, 'GL.CMR.B005.2223A', NULL, '1', '24-04-30'),
(65, 'GL.CMR.B005.2223A', NULL, '1', '24-05-01'),
(66, 'GL.CMR.B030.2223B', NULL, '1', '24-05-01'),
(67, 'GL.CMR.B012.2223A', NULL, '1', '24-05-01'),
(68, 'SR.CMR.B001.2223', NULL, '1', '24-05-02'),
(69, 'SR.CMR.B004.2223', NULL, '1', '24-05-02'),
(70, 'GL.CMR.B010.2223A', NULL, '1', '24-05-02'),
(71, 'SR.CMR.B003.2223', NULL, '1', '24-05-02'),
(72, 'SR.CMR.B002.2223', NULL, '1', '24-05-02'),
(73, 'GL.CMR.B016.2223A', NULL, '1', '24-05-02'),
(74, 'GL.CMR.B012.2223A', NULL, '1', '24-05-02'),
(75, 'GL.CMR.B011.2223', NULL, '1', '24-05-02'),
(76, 'GL.CMR.B005.2223A', NULL, '1', '24-05-02'),
(77, 'SR.CMR.B024.2223A', NULL, '1', '24-05-02'),
(78, 'SR.CMR.B001.2223A', NULL, '1', '24-05-02'),
(79, 'SR.CMR.B005.2223', NULL, '1', '24-05-02'),
(80, 'SR.CMR.B001.2223', NULL, '1', '24-05-03'),
(81, 'SR.CMR.B024.2223A', NULL, '1', '24-05-03'),
(82, 'SR.CMR.B001.2223A', NULL, NULL, '24-05-03'),
(83, 'SR.CMR.B005.2223', NULL, NULL, '24-05-03'),
(84, 'GL.CMR.B007.2223A', NULL, NULL, '24-05-03');

-- --------------------------------------------------------

--
-- Structure de la table `surveillant`
--

CREATE TABLE `surveillant` (
  `matricule_sur` varchar(20) NOT NULL,
  `nom_sur` varchar(30) DEFAULT NULL,
  `cle_sur` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `surveillant`
--

INSERT INTO `surveillant` (`matricule_sur`, `nom_sur`, `cle_sur`) VALUES
('SU.CMR.A001.1617', 'FOTSO MARCUS', 'surveillant00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`matricule_ens`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`matricule_etd`);

--
-- Index pour la table `fiche_abs`
--
ALTER TABLE `fiche_abs`
  ADD PRIMARY KEY (`id_fa`),
  ADD KEY `matricule_etd` (`matricule_etd`),
  ADD KEY `matricule_ens` (`matricule_ens`);

--
-- Index pour la table `fiche_rtd`
--
ALTER TABLE `fiche_rtd`
  ADD PRIMARY KEY (`id_fr`),
  ADD KEY `matricule_etd` (`matricule_etd`),
  ADD KEY `matricule_sur` (`matricule_sur`);

--
-- Index pour la table `surveillant`
--
ALTER TABLE `surveillant`
  ADD PRIMARY KEY (`matricule_sur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fiche_abs`
--
ALTER TABLE `fiche_abs`
  MODIFY `id_fa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT pour la table `fiche_rtd`
--
ALTER TABLE `fiche_rtd`
  MODIFY `id_fr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fiche_abs`
--
ALTER TABLE `fiche_abs`
  ADD CONSTRAINT `fiche_abs_ibfk_1` FOREIGN KEY (`matricule_etd`) REFERENCES `etudiant` (`matricule_etd`),
  ADD CONSTRAINT `fiche_abs_ibfk_2` FOREIGN KEY (`matricule_ens`) REFERENCES `enseignant` (`matricule_ens`);

--
-- Contraintes pour la table `fiche_rtd`
--
ALTER TABLE `fiche_rtd`
  ADD CONSTRAINT `fiche_re_ibfk_1` FOREIGN KEY (`matricule_etd`) REFERENCES `etudiant` (`matricule_etd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fiche_re_ibfk_2` FOREIGN KEY (`matricule_sur`) REFERENCES `surveillant` (`matricule_sur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fiche_rtd_ibfk_1` FOREIGN KEY (`matricule_etd`) REFERENCES `etudiant` (`matricule_etd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fiche_rtd_ibfk_2` FOREIGN KEY (`matricule_sur`) REFERENCES `surveillant` (`matricule_sur`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;