-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 16 Novembre 2018 à 21:12
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `samaprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `id` int(11) NOT NULL,
  `codeAgence_UC` varchar(255) NOT NULL,
  `libelleAgence` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`id`, `codeAgence_UC`, `libelleAgence`) VALUES
(131, '500', 'ROUME-ENTREPRISES'),
(132, '700', 'SENEGALAIS DE L\'EXTERIEUR'),
(133, '800', 'AGENCE CARTE SALAIRE'),
(134, '900', 'AGENCE DES HLM6'),
(135, '1000', 'DAKAR-SIEGE'),
(136, '1100', 'YOFF'),
(137, '1200', 'PIKINE'),
(138, '1300', 'OUAKAM'),
(139, '1400', 'MALICK SY'),
(140, '1500', 'ZONE INDUSTRIELLE'),
(141, '1600', 'POMPIDOU'),
(142, '1700', 'POINT-E'),
(143, '1800', 'CENTENAIRE'),
(144, '1900', 'RUFISQUE'),
(145, '2000', 'LAMINE GUEYE'),
(146, '2200', 'CAMBERENE'),
(147, '2500', 'TRANSFERT MONETAIRE'),
(148, '2900', 'ROUME PARTICULIERS'),
(149, '3000', 'KAOLACK'),
(150, '3200', 'SALY PORTUDAL'),
(151, '3500', 'TAMBACOUNDA'),
(152, '4000', 'ZIGUINCHOR'),
(153, '4600', 'KOLDA'),
(154, '6000', 'THIES'),
(155, '6100', 'SAINT LOUIS'),
(156, '6200', 'TOUBA'),
(157, '6400', 'MBOUR'),
(158, '10700', 'BUREAU DE REPRESENTATION PARIS'),
(159, '11100', 'LIBERTE V'),
(160, '11200', 'THIAROYE'),
(161, '11300', 'ALMADIES'),
(162, '11500', 'HANN MARISTE'),
(163, '11600', 'LAT DIOR'),
(164, '11700', 'SICAP BAOBABS'),
(165, '11800', 'BOURGUIBA CASTORS'),
(166, '11900', 'KEUR MASSAR'),
(167, '12000', 'PETERSEN'),
(168, '16000', 'TIVAOUANE'),
(169, '16100', 'LOUGA'),
(170, '20700', 'DJILY MBAYE'),
(171, '21100', 'GRAND YOFF'),
(172, '21200', 'PIKINE ICOTAF'),
(173, '21300', 'STELE MERMOZ'),
(174, '21600', 'CARNOT'),
(175, '21800', 'DERKLE-KHAR YALLA'),
(176, '22000', 'AUTOPORT'),
(177, '22200', 'PATTE D\'OIE BUILDERS'),
(178, '23000', 'AGENCE DU GOLF'),
(179, '26000', 'THIES RANDOULENE'),
(180, '26200', 'DIOURBEL'),
(181, '31300', 'SACRE COEUR'),
(182, '31800', 'NIARY TALLY'),
(183, '32000', 'SGBS QUATRE C'),
(184, '41100', 'GRAND MEDINE'),
(185, '41200', 'GUEDIAWAYE'),
(186, '76000', 'C.S.M  RESSOURCES HUMAINES'),
(187, '77000', 'C.S.M  MONETIQUE'),
(188, '78000', 'CSM EXPLOTATION-MAINTENANCE'),
(189, '79000', 'DCPE Equipe Audit SGBS'),
(190, '79100', 'DCPE Frais Region AFS'),
(191, '90100', 'MANKO PIKINE'),
(192, '90200', 'MANKO GRAND YOFF'),
(193, '90300', 'MANKO HLM'),
(194, '90400', 'MANKO KEUR MASSAR'),
(195, '99500', 'ANCIEN SC SGBS');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `idCLIENTS` int(11) NOT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Nom_Prenom` varchar(45) DEFAULT NULL,
  `Adresse` varchar(45) DEFAULT NULL,
  `Numero_Compte` varchar(45) DEFAULT NULL,
  `Employer` varchar(45) DEFAULT NULL,
  `Niveau_Revenu` varchar(45) DEFAULT NULL,
  `Type_Conctrat` varchar(45) DEFAULT NULL,
  `Nom_Agence` varchar(45) DEFAULT NULL,
  `Obs_Colombe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_com` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_listeProspet` int(11) NOT NULL,
  `desc_com` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `id_agence` int(11) NOT NULL,
  `heure` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire`
--

CREATE TABLE `gestionnaire` (
  `idGestionnaire` int(11) NOT NULL,
  `Matricule` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `gestionnaire`
--

INSERT INTO `gestionnaire` (`idGestionnaire`, `Matricule`, `Telephone`, `Email`) VALUES
(1, 'A32', '23456789', 'mendy@gmail.com'),
(2, 'A34', '345678', 'mendy@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `prospect`
--

CREATE TABLE `prospect` (
  `idp` int(11) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `comptcourant` varchar(20) DEFAULT NULL,
  `comptepargne` varchar(10) DEFAULT NULL,
  `compteprofessionnel` varchar(11) DEFAULT NULL,
  `pret` varchar(10) DEFAULT NULL,
  `rachat` varchar(100) DEFAULT NULL,
  `fonction` varchar(100) DEFAULT NULL,
  `employeur` varchar(100) DEFAULT NULL,
  `niveauderevenue` varchar(100) DEFAULT NULL,
  `typecontrat` varchar(10) DEFAULT NULL,
  `banque` varchar(100) DEFAULT NULL,
  `agencedepot` varchar(100) DEFAULT NULL,
  `observation` varchar(500) DEFAULT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prospect`
--

INSERT INTO `prospect` (`idp`, `date`, `nom`, `adresse`, `telephone`, `comptcourant`, `comptepargne`, `compteprofessionnel`, `pret`, `rachat`, `fonction`, `employeur`, `niveauderevenue`, `typecontrat`, `banque`, `agencedepot`, `observation`, `statut`) VALUES
(1, '2017-07-10', 'Mamadou Lamine Diamban', 'Medina plateau', '77 536 03 07', '1', '', '', '', '', '', 'Socomaf', '90000', 'CDD', '', 'Keur Massar', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(2, '2017-07-10', 'Ibrahima Fall', 'Parcelles U 26', '77 453 00 99', '1', '', '', '', '', '', 'Entracom', '185000', 'CDI', '', 'Camberene', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(3, '2017-07-26', 'Ibrahima Ndiaye ', 'Thies', '77 125 07 16', '1', '', '', '', '', '', '', '', '', '', 'Castors', 'Injoignable', 0),
(4, '2017-07-24', 'Boubacar Diallo', 'Ben Tally', '77 679 62 64', '1', '', '', '', '', '', 'Total', '', '', '', 'Castors', 'Prt pour ouverture compte', 0),
(5, '2017-07-24', 'Aminata Dieye', 'Rufisque Hllm', '77 541 73 00', '1', '', '', '', '', '', 'Salama Assurance', '', '', '', 'Castors', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(6, '2017-07-24', 'Waly Diodio Ndiaye', 'Waly Diodio Ndiaye', '77 636 00 99', '', '', '1', '', '', '', '', '', '', '', 'Castors', 'Interessê pour l\'ouverture de compte Professionnel', 0),
(7, '2017-07-24', 'Abdourahmane Mbaye', 'Camberene 1', '77 855 30 30', '1', '', '', '', '', '', '', '', '', '', 'Castors', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(8, '2017-06-23', 'Souleymane Mohamadou Ly', 'Thiaroye Gare ', '779135752', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye ', 'Injoignable', 0),
(9, '2017-06-28', 'Coumba Ndoffene Diouf', 'Sicap Mbao', '772245186', '1', '', '', '', '', '', 'Sagef', '', '', '', 'Rufisque', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(10, '2017-07-24', 'Cheikh A T Gueye', 'Ouakam', '774098952', '1', '', '', '', '', '', 'Impot & Domaine', '', '', '', 'Ouakam', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(11, '2017-07-14', 'Malick Ndiaye ', 'Parcelles U 14 villa 198', '776551514', '1', '', '', '', '', '', 'Sodial SA', '115000', '', 'Banque Islamique', 'Parcelles ', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(12, '2017-07-12', 'Moustapha Dianê', 'Ben Tally', '771985373', '1', '', '', '', '', '', 'Ets Fall & Freres', '120000', '', '', 'Niarry Tally', 'Se Rapprochera de la banque dans la semaine ', 0),
(13, '2017-07-24', 'Ibrahima Ndiaye', 'Grand Dakar', '777881358', '1', '', '', '', '', '', '', '', '', '', 'Centenaire', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(14, '2017-07-26', 'Mamadou Jean Diarra', 'Cambêrêne', '777175082', '1', '', '', '', '', '', '', '', '', '', ' Zone  Industrielle', 'Ira ˆ la banque demain', 0),
(15, '2017-07-24', 'Babacar Sanê', 'Yarakh', '775274727', '1', '', '', '', '', '', 'Satrec', '', '', '', 'Zone  Industrielle', 'Se Rapprochera de la banque une fois les documents prt', 0),
(16, '2017-07-26', 'Abdou Thiandoum', 'Thiaroye sur Mer', '776950733', '1', '', '', '', '', '', 'CMA / Plateforme Port', '', '', '', 'Zone  Industrielle', 'Se Rapprochera de la banque  la fin de ce mois', 0),
(17, '2017-07-26', 'Ahmadou Lamine Fofana', 'Pikine', '779120385', '1', '', '', '', '', '', 'CMA / Kan- Logistique', '', '', '', 'Zone  Industrielle', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(18, '2017-07-25', 'Jean Baptiste Dione', 'Grand Yoff', '775410181', '1', '', '', '', '', '', '', '', '', '', 'Zone  Industrielle', 'Prt ˆ l\'ouverture d\'un compte', 0),
(19, '2017-07-17', 'Bob Ndeye Fatou NDiaye', 'Hlm grand yoff', '77 674 34 24', '1', '', '', '', '', '', '', '', '', '', 'Hlm grand yoff', 'Erreur Numero', 0),
(20, '2017-07-07', 'Mor Sylla', 'Thies', '7 7455 38 10', '', '1', '', '', '', '', 'LMDB', '200000', 'CDI', '', 'Thies', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(21, '2017-07-05', 'Mamadou Saliou  Diallo', 'Thiaroye', '77 056 16 64', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', 'Sollicite une compte Courant', 0),
(22, '2017-07-01', 'Mouhamed Ndaw', 'Zac Mbao', '77 197 26 28', '1', '', '', '', '', 'Agent de Sêcuritê', 'A S  P I', 'Plus de 80000', 'CDD', '', 'Thiaroye', 'Se rapproche de la Banque', 0),
(23, '2017-07-05', 'Serigne Faye', 'Thiarogne', '77 147 68 84', '', '', '1', '', '', '', 'FDE', '', '', '', 'Thiarogne', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(24, '2017-07-05', 'Aliou Dione', 'Thiaroye', '77 125 44 39', '', '', '1', '', '', '', '', '', '', '', 'Thiaroye', 'Eurreur de Numêro', 0),
(25, '2017-07-06', 'Diomaye Diouf', 'Niarry Tally', '77 910 17 27', '1', '', '', '', '', '', '', '', '', '', 'Niarry Tally', 'A rappeler', 0),
(26, '2017-06-23', 'Seydina Issa Diop', 'Thiaroye', '77 093 94 04', '', '', '1', '', '', '', '', '', '', '', 'Thiaroye', 'Sollicite un compte Epargne', 0),
(27, '2017-07-06', 'Cheikh Gaye', 'Rufisque', '77 126 77 06', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', 'Aucune Rêponse', 0),
(28, '2017-07-07', 'Oumou Diop', 'Thiaroye', '77 435 52 92', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', 'Aucune Rêponse', 0),
(29, '2017-07-01', 'Yancoba Dioum', 'Keur Massar', '77 647 47 60', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', 'Bv', 0),
(30, '2017-07-03', 'Ibra Ndiaye', 'Diacksao', '78 289 02 18', '1', '', '', '', '', '', 'Touba Gaz', '95000', '', '', 'Diacksao', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(31, '2017-07-04', 'Pierre Joseph Sahad Diokh', 'Sicap Mbao', '77 972 28 12', '', '1', '', '', '', '', 'Total', '', '', '', 'Rufisque', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(32, '2017-07-04', 'Charles Sarr', 'Keur Massar', '77 420 19 70 ', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', 'injoignable', 0),
(33, '2017-07-03', 'Aboul Aziz Mbaye', 'Keur Massar', '77 884 41 26', '1', '', '', '', '', '', 'Patisen', '126925', '', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(34, '2017-07-13', 'Ousmane Diouf', 'Keur Massar', '77 305 50 18', '1', '', '', '', '', '', 'Ila Touba', '170000', '', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(35, '2017-07-18', 'Landing Bodian', 'Tivaoune peulh', '77 531 60 99', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', 'Dêjˆ detenteur de compte ˆ St Louis', 0),
(36, '2017-07-18', 'Mor Talla Ndiaye', 'Diamaguene', '77 724 66 28', '1', '', '', '', '', '', 'Cse', '³80000', 'CDD', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(37, '2017-07-18', 'Babary Tamba', 'Keur Massar', '77 501 06 28', '1', '', '', '', '', '', 'EFPS', '³100000', 'CDI', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(38, '2017-07-18', 'Ndouloume Gueye', 'Sicap Mbao', '77 838 04 16', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', 'Numêro Erronê', 0),
(39, '2017-07-19', 'El hadji Yancoba Sonko', 'Sicap Mbao', '77 909 82 04', '1', '', '', '', '', '', 'Aspriland', '', '', '', 'Centenaire', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(40, '2017-07-27', 'Lissa Ndiaye', 'Hlm Patte d\'oie', '77 801 46 34', '1', '', '', '', '', '', 'Intelcia', '150000', '', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(41, '2017-07-04', 'Abdoulaye Ndiaye', 'Keur Massar', '77 054 34 75', '', '', '1', '', '', '', '', '', '', '', 'Keur Massar', 'Sollicite une compte Epargne', 0),
(42, '2017-07-05', 'Boubacar Sow', 'Keur Massar', '77 555 01 90', '', '1', '', '', '', '', 'Modou Gueye S,A', '', '', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(43, '2017-07-06', 'Abdou Ndiaye ', 'Keur Massar', '78 151 01 22', '', '1', '', '', '', '', 'Commrant', '', '', '', 'Keur Massar', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(44, '2017-07-01', 'Abdoulaye Mbaye', 'Touba Almadi n¡2/39', '77 639 28 14', '1', '', '', '', '', '', '', '', '', '', 'Touba Almadi', 'Sollicite', 0),
(45, '2017-07-18', 'Assane Faye', 'Mariste', '77 959 54 75', '1', '', '', '', '', '', 'Afrique Land', '125000', '', '', 'Mariste', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(46, '2017-07-18', 'Abdoulaye Sarr', 'Libertê 5', '77 486 54 89', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', 'Erreur Numero', 0),
(47, '2017-07-03', 'Abdoulaye Diop', 'Dieuppeul', '77 411 64 04', '1', '', '', '', '', '', '', '', '', '', 'Dieuppel', 'Erreur Numero', 0),
(48, '2017-07-10', 'Aliou Sagna ', 'Citê Gadaye', '77 942 90 31', '1', '', '', '', '', '', 'CSTT', '135000', 'CDI', '', 'Guediawaye', 'Se Rapprochera de la banque pour finaliser l\'ouverture', 0),
(49, '2017-07-10', 'Abdou Diene ', 'citê Parc Davis', '77 453 36 99', '1', '', '', '', '', '', 'Soeco', '400000', 'CDI', '', 'Rufisque', 'Veut finaliser le Mercredi', 0),
(50, '2017-07-14', 'Iba Der Diallo', 'Khar Yalla ', '77 965 62 60', '1', '', '', '', '', '', 'Sagam', '100000', 'CDI', '', 'Khar Yalla', 'Finalise Mardi prochaine', 0),
(51, '2017-07-13', 'Adama Sêne', '', '77 567 27 15', '1', '', '', '', '', '', 'Nokoda', '', 'CDD', '', '', 'Finalise Samedi', 0),
(52, '10/07//201', 'Fodê Diouf', 'Fadia', '7750859 56', '1', '', '', '', '', '', 'CSTDAO', '150000', 'CDD', '', 'Parcelle case bi', 'Finalise le Samedi 12/08/2017', 0),
(53, '2017-07-14', 'Moussa Banore', 'Parcelles (case bi)', '77 368 47 50', '1', '', '', '', '', '', 'C3ss', '120000', 'CDD', '', 'Parcelle case bi', 'Rv fixer le Lundi prochaine', 0),
(54, '2017-07-11', '', 'Camberene', '77 374 74 49', '1', '', '', '', '', '', 'Transport AMA', '150000', 'CDI', 'BOA', 'Camberene', 'Il est prêt pour finaliser l\'ouverture', 0),
(55, '2017-07-11', 'Pape Abdoulaye Gueye', 'Parcelles ', '76 645 48 43', '1', '', '', '', '', '', 'CSE', '125000', 'CDI', '', 'Parcelles', 'Non Disponible', 0),
(56, '2017-07-14', 'Moussa Coulibaly', 'Parcelles', '77 908 40 97', '1', '', '', '', '', '', '', '', '', '', 'Parcelles', 'En Voyage Semaine Prochaine', 0),
(57, '2017-07-24', 'Madieye Mbaye', 'Parcelles U 18', '77 425 32 71', '1', '', '', '', '', '', '', '', '', '', 'Camberene 1', 'Veut Finaliser  avec la Banque', 0),
(58, '2017-07-24', 'Oumou Sow', 'Sud Foire', '77 845 45 40', '1', '', '', '', '', '', 'CSE', '125000', 'CDD', '', 'Parcelle case bi', 'Va finaliser Mardi', 0),
(59, '2017-07-07', 'Falilou Diallo', 'Grand Dakar', '77 643 48 46', '1', '', '', '', '', '', 'EPI', '200000', 'CDI', '', 'Baobab/  Yoff', 'En Voyage Semaine Prochaine', 0),
(60, '2017-07-05', 'Mamadou Diedhiou', 'Thiaroye', '77 323 00 58', '', '1', '', '', '', '', 'Senelec', '130000', 'CDI', '', 'Thiaroye', 'Il va en voyage ds la semaine il finalise a son retour', 0),
(61, '2017-07-06', 'Khadim Gaye', 'Thiaroye', ' 77 879 80 00', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', 'injoignable', 0),
(62, '2017-07-03', 'Mamadou Tidiane Ba', 'Medina Thiaroye Kao', '77 276 22 67', '1', '', '', '', '', '', 'Touba- Gaz', '150000', 'CDD', '', 'Thiaroye', 'Semaine Prochaine', 0),
(63, '2017-07-05', 'Ousseynou Timera', 'Thiaroye', '77 506 16 22', '', '1', '', '', '', '', 'Modou Gueye SA', '150000', 'CDD', '', 'Thiaroye', 'Il va finaliser samedi prochaine', 0),
(64, '2017-07-03', 'Oumar Diop', 'Thiaroye', ' 77 534 61 12', '1', '', '', '', '', '', 'LAS', '100000', 'CDD', '', 'Thiaroye', 'Mi semaine il va finaliser', 0),
(65, '2017-07-07', 'Maguette Diop', 'Thiaroye', '77 713 33 12', '1', '', '', '', '', '', 'SEN-BUS', '80000', 'CDD', '', 'Thiaroye', 'Mardi le 08/08/2017', 0),
(66, '2017-07-03', 'Thierno Aguibou Dia', 'Yeumbeul', '78 393 46 41', '1', '', '', '', '', '', 'Sapeur Pompier', 'Plus de100000', 'CDI', '', 'Yeumbeul', '', 0),
(67, '2017-07-03', 'Gabriel Tendeng', 'Ouakam', '77 710 57 36', '1', '', '', '', '', '', '', '', '', '', 'Ouakam', 'Ds la semaine mq de temps', 0),
(68, '2017-07-01', 'Djibril Gueye', 'Ouakam', '77 761 01 68', '1', '', '', '', '', '', '', '', '', '', 'Ouakam', 'Bv', 0),
(69, '2017-07-21', 'Seydina Alioune Sene ', 'Ouakam', '77 872 39 89', '1', '', '', '', '', '', '', '', '', '', 'Ouakam', 'Bv', 0),
(70, '2017-07-28', 'Mouhamadou Moustapha Diagne', 'Citê Avion', '77 524 21 10', '', '', '1', '', '', '', 'Entrepreneur', '', '', '', 'Ouakam', 'Il veut finaliser le Mardi ', 0),
(71, '2017-07-10', 'Mapenda Sall', 'Yoff', '77 989 53 12', '1', '', '', '', '', '', '', '', '', '', 'Yoff', 'Injoignable', 0),
(72, '2017-06-23', 'Abdoulaye Diop', 'Colobane', '77 921 31 24', '1', '', '', '', '', '', 'HAWATRAS', 'Plus de 160000', 'CDD', '', 'Colobane', 'Tardivement appeler finalement Bancariser a la BOA', 0),
(73, '2017-07-05', 'Abdou dione ', 'Hlm', '77 721 95 49', '1', '', '', '', '', '', 'SGI', 'Plus de 80000', 'CDI', 'CMS', 'Hlm', 'Veut finaliser Samedi', 0),
(74, '2017-07-20', 'Pape Thiam', 'Hlm 5', '78 27973 09  ', '1', '', '', '', '', '', 'CCS', 'Plus de 90000', 'CDI', '', 'Hlm', 'Veut finaliser le lundi', 0),
(75, '2017-07-04', 'Macoumba Diop', 'Hlm 5', '77 648 31 24', '1', '', '', '', '', '', 'DIPROM', 'Plus de 80000', 'CDI', 'CMS', 'Hlm', 'Lundi il va finaliser', 0),
(76, '2017-07-13', 'Cheikh Mbackê', 'Castors', '77 448 41 60', '1', '', '', '', '', '', 'CCFN', 'Plus de 90000', 'CDI', '', 'Castor', 'Prt a finaliser Lundi vers 10h 11h', 0),
(77, '2017-06-30', 'Lamine Diassy', 'Diamaguene Darou Salam', '78 317 78 79', '1', '', '', '', '', '', '', '', '', '', 'Diamaguene', 'Injoignable', 0),
(78, '2017-07-13', 'Fallou Diop', 'Castors', '70 707 41 24', '1', '', '', '', '', '', 'CCFN', 'Plus de 130000', 'CDD', '', 'Castors', 'Veut finaliser le lundi', 0),
(79, '2017-07-18', 'Ousseynou Diop', 'Usine Niarry Tally', '77 783 47 15', '1', '', '', '', '', '', 'CCTAO', 'plus de 80000', 'CDD', 'Bicis', 'Castors', 'Lundi il va finaliser', 0),
(80, '2017-07-24', 'Cheikh Ka ', 'Camberene', '77 540 99 27', '1', '', '', '', '', '', 'Rappeler', '', '', '', 'Castors', 'A rappeler', 0),
(81, '2017-07-17', 'Ousseynou Vilane', 'Sips', '77 519 84 59', '1', '', '', '', '', '', 'Tansport Sadi', 'Plus de 150000', 'CDI', '', 'Thiaroye', 'Semaine prochaine en voyage', 0),
(82, '2017-07-14', 'Moustapha Kamel Diagne', '', '77 556 85 43', '1', '', '', '', '', '', 'GMD/grand moulin de dakar', 'Plus de 100000', 'CDI', '', '', 'Ds la semaine:Rv samedi', 0),
(83, '2017-07-28', 'Abdou Diokhanê', 'Pikine', '77 352 57 70', '1', '', '', '', '', '', 'CSE', 'Plus de 170000', 'CDD', '', 'Pikine', 'Veut finaliser Mardi', 0),
(84, '2017-08-14', 'Ousmane Sall', 'Pikine', '77 536 63 53', '1', '', '', '', '', '', 'SCDT', 'Plus de 150000', 'CDI', 'Diamond Banque', 'pikine', 'Rv fixer Mercredi', 0),
(85, '', 'Pape Sadio Diop', 'Pikine', '77 432 48 53', '1', '', '', '', '', '', '', '', '', '', 'Pikine', 'Numêro Suspendu', 0),
(86, '2017-07-20', 'Idrissa Mbodj', 'Pikine', '77 446 20 39', '1', '', '', '', '', '', '', '', '', '', 'Pikine', 'Eurreur de Numêro', 0),
(87, '2017-07-24', 'Mamadou Falilou Diop', 'Pikine', '77 547 84 69', '1', '', '', '', '', '', 'SHAEL GAZ', 'Plus de 150000', 'CDI', 'CBAO', 'Pikine', 'Ds la semaine pour finaliser', 0),
(88, '2017-07-27', 'Toumany Bodian', 'Diamaguene Sicap Mbao', '77 556 30 08', '', '1', '', '', '', '', 'LCS', 'Plus de 100000', 'CDD', '', 'Rufisque', 'Semaine Prochaine', 0),
(89, '2017-07-28', 'Abdoulaye Ndiaye', 'Thiaroye', '77 734 65 15', '1', '', '', '', '', '', 'F N I E', 'Plus de 100000', 'CDD', 'BOA', 'Thiaroye', 'Veut finaliser le lundi', 0),
(90, '2017-07-21', 'Ismaila Diouf', 'Pikine', '77 204 18 50', '1', '', '', '', '', '', '', '', '', '', 'Pikine', 'injoignable', 0),
(91, '2017-07-12', 'Gora Seck', 'Lamsar', '77 241 59 59', '1', '', '', '', '', '', 'Modou Gueye SA', 'Plus de 150000', 'CDI', 'CBAO', 'Pikine', 'Ds la semeine', 0),
(92, '2017-07-12', 'Sherif Ibrahima Djiba', 'Sicap Mbao', '77 425 36 34', '1', '', '', '', '', '', 'Modou Gueye SA', 'Plud de 183000', 'CDI', 'CBAO', 'Rufisque', 'il va finaliser le Mardi Prochain', 0),
(93, '2017-07-11', 'Serigne Sylla', 'Thiaroye', '77 722 02 15', '1', '', '', '', '', '', 'CCST', 'Plus de 100000', 'CDD', '', 'Thiaroye/Z I', 'Rv le Lundi', 0),
(94, '2016-07-10', 'Ma”ssa Diop', 'Pikine', '77 326 87 29', '1', '', '', '', '', '', 'NOHINE MAR SA', 'Plus de 100000', 'CDI', '', 'Pikine', 'Se rapproche de la Banque', 0),
(95, '2017-07-11', 'Pape Samba Diop', 'Keur Massar', '77 843 98 40', '1', '', '', '', '', '', 'ESKIMO', 'Plus de 150000', '', '', 'Keur Massar', '', 0),
(96, '2017-07-27', 'Samba Kêbê', 'Guediawaye', '77 212 98 25', '1', '', '', '', '', 'Agent de Sêcuritê', 'SABS', 'Plus de 90000', 'CDD', '', 'Golf', 'Se rapprocher de la Banque', 0),
(97, '2017-07-12', 'Seydina Diouf', 'Parcelles Assainies U 7', '77 404 51 51', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(98, '2017-07-10', 'Mamadou Mactar Dieng', 'Rufisque', '77 403 65 12', '1', '', '', '', '', '', '', '130000', 'CDD', '', 'Rufisque', 'Veut même finaliser avec la Banque pour faire l\' ouverture', 0),
(99, '2017-07-25', 'El Hadji Mamady Diallo', ' Libertê 5', '78 390 71 44', '1', '', '', '', '', 'Chauffeur', 'Delgas', 'Plus de 150000', 'CDD ', '', ' Zone  Industrielle', 'Se raproche de la Banque', 0),
(100, '2017-07-25', 'Abdou  Sanê', 'Fass Mbao', '77 891 69 00', '1', '', '', '', '', '', 'CIF', '', '', '', ' Zone  Industrielle', '', 0),
(101, '2017-07-25', 'Babacar Ndaw', 'Keur Massar', '77 534 52 97', '1', '', '', '', '', 'Mecanicien', 'Maritalia', 'Plus de 120000', 'CDD', '', ' Zone  Industrielle', 'Va finaliser ds la semaine prochaine', 0),
(102, '2017-07-25', 'Oumar Sanê', 'Diacksao', '78 110 06 85 / 70 88', '1', '', '', '1', '', '', 'CIF', '', '', '', ' Zone  Industrielle', '', 0),
(103, '2017-06-25', 'Moustapha Ndoye', 'Libertê 6', '77 678 03 02', '1', '', '', '', '', 'Transporteur', 'Ndoye et Frêre', 'Plus de 160000', 'CDI', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(104, '2017-07-25', 'Mouhamadou Moustapha Sow', 'Keur Massar', '77 915 51 60', '1', '', '', '', '', 'Saudronnier', 'lasspit SA', 'Plus de 160000', 'CDI', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(105, '2017-07-25', 'Omar Seck', 'Petit Mbao', '77 914 80 35', '1', '', '', '', '', 'Magazinier', 'CIF', 'Plus de 150000', 'CDD', '', ' Zone  Industrielle', 'Se rapproche de la Banque pour finaliser', 0),
(106, '2017-07-25', 'Mamadou Ndao', 'Pikine', '77 521 39 13', '1', '', '', '', '', 'Chauffeur', 'STG', 'Plus de 150000', 'CDI', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(107, '2017-07-25', 'Alioune BadaraSakho', 'Hlm 5 ', '77 084 91 52', '1', '', '', '', '', '', 'CIF', '', '', '', ' Zone  Industrielle', '', 0),
(108, '2017-07-25', 'Dib Ndour', 'Hlm Grand Yoff', '78 216 20 21', '1', '', '', '', '', 'Saudronnier', 'Lasspit SA', 'Plus de 100000', 'CDD', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(109, '2017-07-25', 'El Hadji Bathie Khouilê', 'Pikine Nord', '77 571 91 94', '1', '', '', '', '', '', 'CIF', 'Plus de 200000', '', '', ' Zone  Industrielle', '', 0),
(110, '2017-07-26', 'Moussa Sega Ndoye', '405/B Citê Avion Ouakam', '76 533 83 86', '1', '', '', '1', '', '', 'SOCAS', '169 600', 'CDI', '', ' Zone  Industrielle', 'Prêt pour ouvrir le Compte', 0),
(111, '2017-07-26', 'Marie Catherine Fatima Ndiaye', 'Parcelles Assanies U 11 N¡268', '77 055 24 65', '1', '', '', '1', '1', 'Assistante Relation Clientel', 'Air Liquide', '196 700', 'CDI', '', ' Zone  Industrielle', 'Demande une ouverture trs urgent,Elle est prête', 0),
(112, '2017-07-26', 'Daouda Diop', 'Mêdina ', '77 509 57 91', '1', '', '', '', '', 'Mecanicien', 'Tuboplast', '150000', 'CDD', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(113, '2017-07-26', 'Sara Ba', 'Guêdiawaye', '77 42413 79', '1', '', '', '', '', '', 'Uniparco', 'Plus de 150000', 'CDI', '', ' Zone  Industrielle', 'Veut Domicilier son Salaire', 0),
(114, '2017-07-26', 'Aboubackr Boukeri Diack', 'Thiaroye', '77 755 30 61', '1', '', '', '', '', '', '', '', '', '', ' Zone  Industrielle', '', 0),
(115, '2017-07-26', 'Zakaria Diop', 'Guediawaye', '77 303 03 62', '1', '', '', '', '', '', 'Uniparco', '', '', '', ' Zone  Industrielle', '', 0),
(116, '2017-07-26', 'Khalipha Ababacar Sy', 'Hamo 6', '77 162 72 05', '1', '', '', '', '', 'Soudeur Mêtalique', 'Lasspit SA', '', 'CDD', '', ' Zone  Industrielle', 'Dêcide de finaliser ds la semaine prochaine', 0),
(117, '2017-07-27', 'Ousmane Ndiaye Sy', 'Hamo Plage', '77 480 23 67', '1', '', '', '', '', 'Prêparateur Commande', 'City Dia Diagonal', 'Plus de 104000', 'CDD', '', ' Zone  Industrielle', 'Prt a finaliser Lundi ou Mardi Prochain', 0),
(118, '2017-07-27', 'Allê Samba Mboup', 'Hanne Mariste', '77 908 19 56', '1', '', '', '', '', 'Prêparateur Commande', 'City Dia Diagonal', '90 000', 'CDD', '', ' Zone  Industrielle', 'Veut Domicilier son Salaire', 0),
(119, '2017-07-28', 'Moustapha Diallo', 'Dialêgne Kaolack', '77 358 58 37', '1', '', '', '', '', 'Chauffeur', 'Patisen', 'Plus de 140000', 'CDD', '', ' Zone  Industrielle', 'Peut être ds la semaine', 0),
(120, '2017-07-19', 'Serigne Khadim Ba', 'Colobane', '77 014 28 25', '1', '', '', '', '', 'Menusier   ', 'Afriland', '130000', '', '', ' Zone  Industrielle', '', 0),
(121, '2017-07-20', 'Serigne Mbackê Sall', 'Pikine', '78 111 52 21', '1', '', '', '', '', 'Saudronier', 'C T S', 'Plus de 150000', 'CDI', '', ' Zone  Industrielle', 'Se rapproche de la Banque pour Finaliser l\'ouverture', 0),
(122, '2017-07-24', 'Mamadou Lamine Sanê', 'Grand Yoff', '77 523 97 27', '1', '', '', '', '', 'ManÏuvre', 'Sahel Gaz', 'Plus de 100000', 'CDD', '', ' Zone  Industrielle', 'Se rapproche de la Banque', 0),
(123, '2017-07-20', 'Assane Thiao', 'Dalifort Forail', '78 211 44 15', '1', '', '', '', '', 'Saudronier', 'C T S', 'Plus de 150000', 'CDI', '', ' Zone  Industrielle', 'Il veut domicilier son Salaire au niveau de la banque SGBS', 0),
(124, '2017-07-21', 'Idrissa Sêne', 'Ouakam', '77 255 76 95', '1', '', '', '', '', 'Agent Commercial', 'Casino Dakar City', 'Plus de 100000', 'CDD', '', 'Guêdiawaye', 'Veut Finaliser avec la Banque', 0),
(125, '2017-07-06', 'Mayacine Ndiaye', 'Guêdiawaye', '77 528 17 88', '1', '', '', '', '', 'Pompiste', 'Total Rte de Rufisque', 'Plus de 80000', 'CDD', '', ' Guêdiawaye Golf', 'Veut finaliser avec la Banque', 0),
(126, '2017-07-07', 'Fallilou Diallo', 'Grand Dakar', '77 643 48 46', '1', '', '', '', '', '', 'SEPI', 'Plus de 200000', 'CDI', '', 'Yoff ', 'Prêt pour faire l\'ouverture', 0),
(127, '2017-07-14', 'Cheikh Sall', 'Guediawaye', '77 576 06 23', '1', '', '', '', '', '', 'SCD Transport', '', '', '', 'Guêdiawaye', '', 0),
(128, '2017-07-17', 'Clêment Sêbastien Niane', 'Guêdiawaye', '77 924 71 68', '1', '', '', '', '', '', 'SOBOA', '', '', '', 'Guêdiawaye', '', 0),
(129, '2017-07-21', 'Nicole Diouf', 'Hamo 5 Guêdiawaye', '77 574 65 63', '1', '', '', '', '', '', 'Casino  ', '', '', '', 'Guediawaye Marchê Ndiarême', '', 0),
(130, '2017-07-04', 'Khadim Diouf', 'Guêdiawaye', '77 516 79 40', '1', '', '', '', '', 'Pompiste', 'Total', 'Plus de 80000', 'CDD', '', 'Agence Marchê Ndiarême', 'Se rapproche de la Banque pour faire le nêccessaire', 0),
(131, '2017-07-17', 'Saliou Seck', 'Dalifort', '777144132', '1', '', '', '', '', 'Agent QHSE', 'EIFFAGE+FNR', '450000 a 750000', 'CDI', '', 'Mariste', 'Se rapproche de la Banque', 0),
(132, '2017-07-27', 'Samba  Kêbê', 'Guêdiawaye', '772129825', '1', '', '', '', '', 'Agent de Sêcuritê', 'SABS', 'Plus de 90000', 'CDD', '', 'Cambêrene', 'Attend que la Banque le convoque pour Finaliser', 0),
(133, '2017-07-25', 'Alioune Badara Sakho', 'Hlm 5', '77 084 91 52', '1', '', '', '', '', 'Conducteur Machine', 'C I F', 'Plus de 150000', ' CDI', '', 'Zone Industrielle', 'Veut ouvrir le compte trs rapidement', 0),
(134, '2017-07-25', 'Abdou Sanê', 'Fass Mbao', '77 891 69 00', '1', '', '', '', '', 'Conducteur Machine', 'C I F', 'Plus de 150000', 'CDI', '', 'Zone Industrielle', 'Veut ouvrir le compte trs rapidement', 0),
(135, '2017-07-25', 'Oumar Sêne', 'Diacksao', '78 110 06 85', '1', '', '', '', '', 'Tayeur', 'C I F', 'Plus de 100000', 'CDD', '', 'Zone Industrielle', 'Se rapproche de la Banque', 0),
(136, '2017-07-17', 'Clêment Sêbastien Niane', 'Guêdiawaye', '77 924 71 68', '1', '', '', '', '', 'Ouvrier', 'SOBOA', '', 'CDD', '', 'Zone Industrielle', 'veut finaliser avec la sur l\'ouverture de son Compte', 0),
(137, '2017-07-14', 'Cheikh Sall', 'Guêdiawaye', '77 576 06 23', '1', '', '', '', '', '', '', '', '', '', '', '', 0),
(138, '2017-07-25', 'El hadji Bathie Khoulê', 'Pikine', '77 571 91 94', '1', '', '', '', '', '', '', '', '', '', 'Pikine Tally Bou Makk', 'Veut Domicilier son Salaire', 0),
(139, '2017-07-26', 'Aboubackry Boukeri Diack', 'Thiaroye', ' 77 559 30 61 ', '1', '', '', '', '', '', 'Uniparco', 'Plus de 105000', 'CDD', '', 'Zone Industrielle', 'Veut Domicilier son Salaire', 0),
(140, '2017-07-26', 'Zakaria Diop', 'Guêdiawaye', '77 303 03 62', '1', '', '', '', '', '', 'Uniparco', 'Plus de 105000', 'CDD', '', 'Zone Industrielle', 'Se rapprocheras de la Banque', 0),
(141, '2017-07-21', 'Nicole Diouf', 'Hamo 5 Guêdiawaye', '77 574 65 63', '1', '', '', '', '', 'Responsable Caisse', 'CASINO', 'Plus de 105000', 'CDD', '', 'Guêdiawaye', 'Prête pour venir', 0),
(142, '2017-07-01', 'Jean Claude Correa', 'Rufisque', '77 838 70 94', '1', '', '', '', '', 'Agent de Sêcuritê', 'SAHABAS', '60000', 'CDD', '', 'Rufisque', 'Veut un compte a la SBGS:Certe Niveau Salaire trop Bas par rapport a la Frouchette Demandêe', 0),
(143, '2017-07-07', 'Alseyni  Diallo', 'Rufisque', '77 621 57 90', '1', '', '', '', '', 'Mecanicien', 'SEN-BUS', '90000', 'CDD', '', 'Rufisque', 'Prête pour venir faire l\'ouverture', 0),
(144, '2017-07-07', 'Demba  Kane', 'Rufisque', '77 643 90 61', '1', '', '', '', '1', 'Cariste', 'SIMPA', '157000', 'CDI', '', 'Rufisque', 'Attend que la Banque lui Convoque pour faire l\'ouverture', 0),
(145, '2017-07-04', 'Seydou Baldê', 'Rufisque', '77 702 81 69', '1', '', '', '', '', 'Magazinier', 'TOUBA OIL', '200000', 'CDI', '', 'Rufisque', 'Se rapprocheras de la Banque', 0),
(146, '2017-07-01', 'Mouhamed  Sambe', 'Rufisque', '77 546 37 37', '1', '', '', '', '', 'Topographe', 'G D C S', '300000', 'CDI', '', 'Rufisque', 'Prêt pour finaliser l\'ouverture', 0),
(147, '2017-07-03', 'Ibrahima  Kane', 'Rufisque', '77 388 98 32', '1', '', '', '', '', 'Ouvrier', 'Patisen', '90000', 'CDD', '', 'Rufisque', 'Veut ouvrir un compte a la SGBS', 0),
(148, '2017-07-05', 'Abdou Konatê', 'Rufisque', '77 250 00 29', '1', '', '', '', '', 'Conducteur  Engin', 'Mamadou Gueye S,A', '150000', 'CDI', '', 'Rufisque', 'Se rapprocheras de la Banque', 0),
(149, '2017-07-05', 'Cheikh Faye', 'Rufisque', '77 544 54 03', '1', '', '', '', '', 'Vulganiseur', 'Mamadou Gueye S,A', '130000', 'CDI', '', 'Rufisque', 'Se rapprocheras de la Banque', 0),
(150, '2017-07-17', 'Khadim Wade', 'Thiaroye Gare ', '77 873 05 64', '1', '', '', '', '', '', 'T A D', 'Plus de 105000', 'CDD', '', 'Thiaroye', 'Se rapprocheras de la Banque', 0),
(151, '2017-07-25', 'Mouhamadou Mamoune Mbaye', 'Yeumbeul', '77 549 11 99', '1', '', '', '', '', 'Chauffeur', 'S T C', 'Plus de 130000', 'CDI', '', 'Thiaroye', 'Se rapprocheras de la Banque', 0),
(152, '2017-07-27', 'Mouhamed Diassê', 'Thiaroye', '77 931 46 00', '1', '', '', '1', '', 'Prêparateur Commande', 'Citidia Diagonal', 'Plus de 125000', 'CDI', '', 'Thiaroye', 'Prêt ouvrir son Compte', 0),
(153, '2017-07-24', 'Mamadou Ba', 'Yeumbeul', '77 537 78 69', '1', '', '', '', '', 'Conducteur Engin', 'C S E', 'Plus de 200000', 'CDI', '', 'Thiaroye', 'Se rapprocheras de la Banque', 0),
(154, '2017-07-17', 'Khadime Ndiaye', 'Yeumbeul', '782 448 265', '1', '', '', '', '', 'Chauffeur', 'Transport Sady', 'Plus de 150000', 'CDI', '', 'Thiaroye', 'Veut un virement de salaire/Domiciliation', 0),
(155, '2017-07-17', 'Assane Dieng', 'Sicap Mba', '77 665 08 95', '1', '', '', '', '', 'Chauffeur', 'S C D Transport', 'Plus de 150000', 'CDI', '', 'Thiaroye', 'Se rapprocheras de la Banque', 0),
(156, '2017-07-17', 'Mame Souleymane Diop', 'Thairoye/ Mer', '77 193 88 96', '1', '', '', '', '', 'Chauffeur', 'D D D', 'Plus de 180000', ' CDI', '', 'Thiaroye', 'Prês pour Domicilê son Salaire', 0),
(157, '2017-07-13', 'Modou Sêne', 'Almadies Rte de Ngor', '77 663 92 98', '1', '', '', '', '', 'Comptable/Responsables des Achats', 'Comet Afrique Têlêcoms', 'De 250000 a 375000', 'CDI', 'Banque Atlantique', 'Almadies Rte de Ngor', 'Se rapprocheras de la Banque', 0),
(158, '2017-07-20', 'Khady Sanê', 'Hlm 4', '77 431 55 09', '1', '', '', '', '', '', '', '', '', '', 'Castors', 'BV', 0),
(159, '2017-07-20', 'Ndeye Fatou Diouf', 'Hlm 4', '77 909 03 17', '1', '', '', '', '', '', 'Ecole Sokhna Diarra Bousso', 'Plus de 100000', '', '', 'Castors', 'Ds la semaine', 0),
(160, '2017-07-24', 'Cheikh Diouf', 'Grand Yoff', '77 575 80 36', '1', '', '', '', '', '', 'Senelec', 'Plus de 105000', 'CDD', '', 'Castors', 'Rv  il veut finaliser lundi ', 0),
(161, '2017-07-27', 'Ibrahima Ndiaye', 'Ecole Police', '77 185 26 10', '1', '', '', '', '', '', 'E N P', 'Plus de 100000', 'CDI', '', 'Castors', 'Ils se sont dêtachê vers Thies sollicite qu\'ils soit a SGBS de Thies ', 0),
(162, '2017-07-24', 'Ibrahima Bêye', 'Ecole Police', '77 265 20 65', '1', '', '', '', '', '', '', '', '', '', 'Castors', 'BV', 0),
(163, '2017-07-24', 'Mamadou Thiandoum', 'Niarry Tally', '77 949 19 67', '1', '', '', '', '', '', 'Maitre Tailleur', 'Pas de revenu', 'Pas de con', '', 'Castors', 'Veut uouvrir une compte d\'êpargne', 0),
(164, '2017-07-24', 'Abdou Diouf', 'Dalifort', '77 105 03 46', '1', '', '', '', '', '', 'Bureau D\'assistance', 'Plus de 100000', 'CDD', '', 'Caamberene', 'Bcp attendu dêjˆ parti a la  sgbs de Mariste c ok', 0),
(165, '2017-07-04', 'Moustapha Malick Sow', 'Keur Massar', '77 209 96 86', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', 'Eurreur sur le numêro', 0),
(166, '2017-07-04', 'Abou Niang', 'Keur Massar', '77 444 64 69', '1', '', '', '', '', '', 'LMDB', 'Plus de 250000', 'CDI', 'Bicis', 'Keur Massar', 'Rv  il veut finaliser Mardi', 0),
(167, '2017-07-10', 'Omar Diouf', 'Dakar', '77 373 53 70', '', '', '1', '', '', '', '', '', '', '', 'Roumes', 'Rv lundi il veut finaliser', 0),
(168, '2017-07-06', 'Pape Djibril Samb', 'Dakar', '77 084 50 54', '', '', '1', '', '', '', '', '', '', '', 'Roumes', 'Rv lundi il veut finaliser', 0),
(169, ' ', 'Abdoul Sy', 'Dakar', '77 565 50 87', '', '', '1', '', '', '', '', '', '', '', 'Roumes', 'Rv lundi il veut finaliser', 0),
(170, '2017-07-10', 'Falilou Diaw', 'Dakar', '77 030 83 83', '1', '', '', '', '', '', 'Commercant', '', '', '', 'Roumes', 'Rv lundi il veut finaliser', 0),
(171, '2017-07-01', 'Pathê Diouf', 'Angle Mousse', '77 614 24 60', '', '', '1', '', '', '', 'Commercant', '', '', '', 'Roumes', 'Rv lundi il veut finaliser', 0),
(172, '2017-07-01', 'Mansour Mbengue', 'Wakhinane', '77 716 00 27', '1', '', '', '', '', '', 'Commercant', '', '', '', 'Guediawaye', 'Rv lundi il veut finaliser', 0),
(173, '2017-07-29', 'Abdou Ndiaye', 'Yeumbeul route de Boune', '78 146 88 28', '1', '', '', '', '', '', 'CSE', 'Plus de 130000', 'CDD', '', 'Keur Massar', 'il va passê le Vendredi', 0),
(174, '2017-07-26', 'Abdou Faye', 'Grand Yoff', '78 488 87 84', '1', '', '', '', '', '', 'OWATRAS', 'Plus de 130000', 'CDI', 'Pamecas', 'Grand Yoff', 'Mercredi/ Rv', 0),
(175, '2017-07-25', 'Abdallah Ahmed Sa”d', 'Mariste', '78 557 20 17', '1', '', '', '', '', '', '', '', '', '', 'Mariste', 'Injoignable', 0),
(176, '2017-07-24', 'Assane Fall', 'Ouakam', '78 277 01 60', '1', '', '', '', '', '', 'Total', 'Plus de 100000', 'CDI', '', 'Ouakam', 'Il se peut au\'il le lundi pour finaliser', 0),
(177, '2017-07-24', 'Adama Diop', 'Keur Massar', '77 845 90 54', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', 'BV', 0),
(178, '2017-07-24', 'Bakary Ndong', 'Ecole Police', '77 966 01 68', '1', '', '', '', '', '', 'E N P', 'Plus de 100000', 'CDI', '', 'Castors', 'Affectês a Thies sollicite de Thies', 0),
(179, '2017-07-26', 'Mamadou Lamine Ndir', 'Sicap Dieuppel 2', '77 334 78 12', '1', '', '', '', '', '', 'TOM', 'Plus de 100000', 'CDI', '', 'Castors', 'Mercredi/ Rv', 0),
(180, '2017-07-26', 'Boubacar Doumbya', 'Grand Dakar', '77 431 57 89', '1', '', '', '', '', '', 'Bolorê', 'Plus de 100000', ' CDD', '', 'Castors', 'Semaine prochaine pour finaliser', 0),
(181, '2017-07-24', 'Ibrahima Bêye', 'Ecole Police', '77 265 20 65', '1', '', '', '', '', '', 'E N P', 'Plus de 100000', 'CDI', '', 'Castors', 'Affectês a Thies sollicite de Thies', 0),
(182, '2017-07-29', 'Boubacar Diallo', 'Keur Massar', '77 468 16 08', '1', '', '', '', '', '', 'CSE', 'Plus de 150000', 'CDI', 'CBAO', 'Keur Massar', 'Ds la semaine vers samedi', 0),
(183, '2017-07-27', 'Samba Sêne', 'Keur Massar', '77 736 78 33', '1', '', '', '', '', '', 'CDE', 'Plus de 80000', 'CDD', '', 'Keur Massar', 'Ds la semaine', 0),
(184, '2017-07-27', 'Badara Mbaye ', 'Sicap Mbao', '77 421 38 58', '1', '', '', '', '', '', 'Mairie Sicap Mbao', 'Plus de 100000', '', '', 'Keur Massar', 'Peut être lundi il va passer il a un manque de temps', 0),
(185, '2017-07-18', 'Ababacar Dia', 'Keur Massar', '77 547 58 70', '1', '', '', '', '', '', 'SATREC', 'Plus de 300000', 'CDI', 'BOA', 'Keur Massar', 'il veut passer le Mardi pour finaliser', 0),
(186, '2017-07-26', 'Dame Thiam', 'Thiaroye', '77 913 11 76', '1', '', '', '', '', '', 'OWATRAS', 'Plus de 150000', 'CDI', 'MECTRANS', 'Thiaroye', 'Veut finaliser  jeudi', 0),
(187, '2017-07-19', 'Mor Talla Dieng', 'Keur Massar', '77 724 16 02', '1', '', '', '', '', '', 'Mairie Ville de Pikine', 'Plus de 150000', 'CDI', 'CMS', 'Keur Massar', 'Mardi le 08/08/2017', 0),
(188, '2017-07-19', 'Babacar Traorê', 'Pikine Icotaf ', '77 657 43 11', '1', '', '', '', '', '', 'Sotrapal', 'Plus de 800000', 'CDI', 'Bicis', 'Pikine/Keur Massar', 'Attend que la banque SGBS lui fixe un Rv pour finaliser', 0),
(189, '2017-07-24', 'Abdou Khadim Diop', 'Malika sur Mer', '77 431 39 69', '1', '', '', '', '', '', 'Simpa/CDE', 'Plus de 80000', 'CDD', 'Pamecas', 'Keur Massar', 'Ds la semaine vendredi ou Samedi', 0),
(190, '2017-07-20', 'Mouhamadou Dione', 'Boune Comico', '77 419 26 44', '1', '', '', '', '', '', 'CDE', 'Plus de 100000', 'CDI', '', 'Keur Massar', 'Rv samedi', 0),
(191, '2017-07-20', 'El hadji Mamadou Samakê', 'Yeumbeul Nord', '77 782 88 83', '1', '', '', '', '', '', 'SIMPA ', 'Plus de 100000', 'CDI', 'Crêdit Agricol', 'Keur Massar', 'Vers Mardi', 0),
(192, '2017-07-18', 'Jamale Ba', 'Thiaroye sur Mer', '77 519 80 81', '1', '', '', '', '', '', 'Satrapal', 'Plus de 150000', 'CDI', 'Bicis', 'Thiaroye', 'Ds la semeine', 0),
(193, '2017-07-17', 'Malal Ndiaye', 'Keur Massar', '77 969 55 50', '1', '', '', '', '', '', 'GMD/grand moulin de dakar', 'Plus de 80000', 'CDD', '', 'Keur Massar', 'Rv Vendredi', 0),
(194, '2017-07-27', 'Ibrahima Sonko', 'Keur Massar', '77 500 48 33', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', 'BV', 0),
(195, '2017-07-27', 'Ibrahima Diop', 'Keur Massar', '77 661 57 59', '1', '', '', '', '', '', 'SIMPA', ' Plus de 100 00', 'CDI', '', 'Keur Massar', 'Finalise le vendredi', 0),
(196, '2017-07-27', 'Aliou Demba Diallo', 'Boune U 16', '77 669 47 08', '1', '', '', '', '', '', 'CDE', 'Plusde 150 000', 'CDD', '', 'Keur Massar', 'Veut finaliser le Mardi', 0),
(197, '2017-07-18', 'Mady Diagne', 'Yeumbeul', '77 300 51 61', '1', '', '', '', '', '', 'SATREC', 'Retisant', 'CDI', 'BOA', 'Keur Massar', 'Il veut passer le samedi pour finaliser', 0),
(198, '2017-07-18', 'Mbaye Diallo', 'Fass Mbao', '77 614 00 78', '1', '', '', '', '', '', 'Sotrapal', '650 000', 'CDI', 'BSIC', 'Keur Massar', 'Prt pour rejoindre SGBS', 0),
(199, '2017-07-19', 'Samuel Diatta', 'Keur Massar', '77 410 16 71', '1', '', '', '', '', '', 'SATREC', 'Retisant', 'CDI', 'BOA', 'Keur Massar', 'Veut finaliser le Mardi', 0),
(200, '2017-07-25', 'Didier Kaly ', 'Diamaguene', '77 541 62 47', '1', '', '', '', '', '', 'CNQP', 'Plus de 150 000', 'Contrat', 'CBAO', 'Thiaroye', 'Mi semaine il va finaliser', 0),
(201, '2017-07-26', 'Amadou Camara ', 'Parcelles U 17', '77 524 42 54', '1', '', '', '', '', '', 'Transit', 'Plus de 100 000', 'Contrat', 'BOA', 'Parcelles case bi', 'Prt pour venir le Mardi', 0),
(202, '2017-07-25', 'Mara Leye', 'Parcelles U 8', '77 463 00 12', '1', '', '', '', '', '', 'TAL', 'Plus de 180 000', 'CDI', 'CBAO', 'Parcelles case bi', 'Lundi  ou Mardi il va finaliser', 0),
(203, '2017-07-24', 'Yely Konatê', 'Parcelles U 26', '77 771 49 63', '1', '', '', '', '', '', '', '', '', '', 'Parcelles Dior', 'Aucune reponse', 0),
(204, '2017-07-26', 'Mouhamed Diaby', 'Libertê 6 extension', '78 168 02 55', '1', '', '', '', '', '', 'SSTT', 'Plus de 180 000', 'CDI', 'BOA', 'Libertê 5', 'Vers Mercredi', 0),
(205, '2017-07-24', 'Omar Ndaw', 'Libertê 6 ', '70 670 91 29', '1', '', '', '', '', '', 'Technosol ingênieur', 'Plus de 250 000', 'CDI', '', 'Libertê 5', '', 0),
(206, '2017-07-29', 'Alioune Badara Diene', 'Grand Yoff', '77 513 67 60', '1', '', '', '', '', '', 'Commercant', '', '', '', 'Grand Yoff', 'Mercredi/ Rv aprs midi pour finaliser', 0),
(207, '2017-07-24', 'Mamadou Ndiaye', 'Pikine ', '76 395 34 64   77 16', '1', '', '', '', '', '', '', '', '', '', 'Pikine', 'Numêro incomplet', 0),
(208, '2017-07-27', 'Papa Latyr Diagne', 'Pikine', '77 585 87 89', '1', '', '', '', '', '', 'CDE', 'Plus de 105 000', 'CDI', '', 'Pikine', 'Ds la semaine', 0),
(209, '2017-07-27', 'Nfally Sagna', 'Pikine', '77 072 83 01', '1', '', '', '', '', '', 'CDE', 'Plus de 90 000', 'CDD', 'Microcred', 'Pikine', 'Ds la semaine vers Samedi', 0),
(210, '2017-07-28', 'Cheikh Diop', 'Pikine', '78 220 94 17', '1', '', '', '', '', '', 'GCMI', 'Plus de 80 000', 'CDD', '', 'Pikine', 'Veut Finaliser', 0),
(211, '2017-07-24', 'Senny Mbodj', 'Patte d\'Oie', '78 108 83 54', '1', '', '', '', '', '', 'Baobab', 'Plus de 170 000', 'CDI', 'Banque Islamique', 'Grand Yoff', 'Veut finaliser ds la semaine', 0),
(212, '2017-07-21', 'Daouda Ndong', 'Grand Yoff', '77 618 61 51', '1', '', '', '', '', '', '', '', '', '', 'Grand Yoff', 'Injoignable', 0),
(213, '2017-07-21', 'Malick Fall', 'Grand Yoff', '77 992 97 12', '1', '', '', '', '', '', '', '', '', '', 'Grand Yoff', 'Aucune Reponse sa sonne ds le vide', 0),
(214, '2017-07-24', 'Baye Mouame Diop', 'Hlm Grand Yoff', '77 238 62 31', '1', '', '', '', '', '', 'CSE', 'Plus de 100 000', 'CDI', '', 'Grand Yoff//Case Bi ', 'Prêt pour Domicilliê', 0),
(215, '2017-07-21', 'Ousmane Biteye', 'Grand Yoff', '77 339 26 05', '1', '', '', '', '', '', 'PK', 'Plus de 80 000', 'CDI', '', 'Grand Yoff', 'Rester a l\'êcoute pour Finaliser l\'ouverture', 0),
(216, '2017-07-31', 'Ibrahima Cissakho', 'Kounoune', '77 337 87 90', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(217, '2017-07-31', 'El Hadji Diop', 'Rufisque', '77 248 87 51', '1', '', '', '', '', 'Saudronier', 'N E G S', 'Plus de 180000', 'CDI', 'Bicis', 'Rufisque', 'Veut Domicilier son Salaire', 0),
(218, '2017-07-18', 'Amadou Diallo', 'Diamniadio', '77 169 98 28', '1', '', '', '1', '1', 'Agent Sêcuritê', 'SATREC', 'Plus de 90000', 'CDD', 'BOA', 'Rufisque', 'Prêt pour ouvrir le Compte', 0),
(219, '2017-07-31', 'Maurice Ndour', 'Fass Mbao', '77 368 83 94', '1', '', '', '1', '', 'Chauffeur', 'SOCOCIM', 'Plus de 150000', 'CDI', '', 'Rufisque', 'Se rapproche de la Banque', 0),
(220, '2017-07-31', 'Rêmy Dogue', 'Rufisque', '77 444 20 89', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(221, '2017-07-31', 'Aliou Ndiaye', 'Rufisque', '78 106 03 59', '1', '', '', '1', '1', 'Conducteur Machine', 'SIMPA', 'Plus de 200000', 'CDI', 'Ecobank', 'Yoff', 'Prêt a faire l\'ouverture', 0),
(222, '31/06/2017', 'El Hadji Sawi Gueye', 'Rufisque', '77 060 28 70', '1', '', '', '', '', 'Prestataire', 'SOCOCIM', 'Plus de 90000', 'CDD', '', 'Rufisque', 'Prêt a ouvrir le compte', 0),
(223, '2017-07-31', 'Amaddou Lamine Ndiaye', 'Rufisque', '77 776 53 89', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(224, '2017-07-31', 'El Hadji Sall', 'Rufisque', '77 578 93 00', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(225, '2017-07-31', 'Alassane Diama Sêne', 'Rufisque', '77 449 23 51', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(226, '2017-07-31', 'Assane Gning', 'Rufisque', '77 691 77 14', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(227, '2017-07-31', 'Ngounda Diop', 'Rufisque', '70 651 98 08', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(228, '2017-07-31', 'Malamine Camara', 'Rufisque', '77 050 94 54', '1', '', '', '', '', 'Entretient', 'TOP INTER/SOCOCIM', '', '', '', 'Rufisque', '', 0),
(229, '2017-07-31', 'Boubacar Sow', 'Pikine Icotaf', '70 480 21 40', '1', '', '', '', '1', 'Maintenacier ', 'TOP INTER/SOCOCIM', '', '', '', 'Rufisque', 'Il va finaliser avec la Banque d\'ici 03 jrs', 0),
(230, '2017-07-31', 'Alioune Badara Coundoul', 'Keur Massar', '77 445 23 36', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(231, '2017-07-31', 'Cheikh Ahmed Bamba Ndiaye', 'Keur Massar', '77 459 30 01 ', '1', '', '', '', '', 'Electricien', 'SOCOCIM', '160000', 'CDI', '', 'Rufisque', 'Veut ouvrir le compte trs rapidement', 0),
(232, '2017-07-28', 'Alla Fall', 'Diamaguene', '77 051 70 47 /77059 ', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(233, '2017-07-24', 'Gorgui Ndoye Samb', 'Bargny', '77 905 53 51', '1', '', '', '', '', 'Gêotechnicien', 'Technosol', 'Plus de 200000', 'CDI', '', 'Rufisque', 'Semaine prochaine pour finaliser', 0),
(234, '2017-07-28', 'Ibrahima Diop', 'Sam Sam 3', '77 046 37 26', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(235, '2017-07-24', 'Babacar Diagne', 'Mêdina ', '77 418 63 65', '1', '', '', '1', '1', 'Livreur', 'SODIDA', 'Plus de 100000', 'CDD', 'BOA', ' Malick Sy', 'Prêt pour ouvrir le Compte', 0),
(236, '2017-07-25', 'Moctar Fall', 'Dakar Plateau', '77 458 65 94', '1', '', '', '', '', '', '', '', '', '', ' Malick Sy', '', 0),
(237, '2017-07-27', 'Youssou Ndiaye', 'Mêdina ', '77 907 02 36', '1', '', '', '1', '', 'ManÏuvre', 'C D E', 'Plus de 150000', 'CDI', 'Pamecas', 'Centenaire', 'Se rapproche de la Banque', 0),
(238, '2017-07-20', 'Aliou Ndiaye', 'Parcelles Assainies U26', '76 337 10 20', '1', '', '', '', '', 'Chauffeur', 'SOCOCIM', 'Plus de 130000', 'CDI', 'La POSTE', 'Rufisque', 'Se rapproche de la Banque', 0),
(239, '2017-07-29', 'Saib Pouye', 'Parcelles Assainies U26', '77 451 12 11', '1', '', '', '', '', 'Agent de Sêcuritê', 'Brioche D\'orêe', 'Plus de 100000', 'CDD', '', 'Cambêrêne', 'Se raprochede la Banque  pour finaliser', 0),
(240, '2017-07-28', 'Babacar Ndiaye', 'Hlm Grand Yoff', '77 111 10 66', '1', '', '', '', '', '', '', '', '', '', 'Cambêrêne', '', 0),
(241, '2017-07-29', 'Ismaila Baldê', 'Keur Massar', '77 715 22 78', '1', '', '', '', '', '', '', '', '', '', 'Camberene', '', 0),
(242, '2017-07-29', 'Mamadou Sow', 'Patte D\'Oie', '77 508 33 66', '1', '', '', '', '', 'Topographe', 'C S E', 'Plus de 150000', 'CDI', '', 'Grand Yoff', 'Finalise l\'ouverture ds qqls semaines', 0),
(243, '2017-07-29', 'Fataou Kassim', 'Grand Yoff', '76 724 32 07', '1', '', '', '', '', '', 'C S E', 'Plus de 100000', 'CDD', '', 'Grand Yoff', 'Elle est prête a ouvrir le compte', 0),
(244, '2017-07-27', 'Assane Fall', 'Hlm Grand Yoff', '77 027 10 86', '1', '', '', '', '', 'Technicien', 'SIMPA', 'Plus de 140000', 'CDI', '', 'Grand Yoff', 'Il reste a l\'êcoute', 0),
(245, '2017-07-29', 'Aldiouma Ka', 'Grand Yoff', '77 445 65 86', '1', '', '', '', '', '', '', '', '', '', 'Grand Yoff', '', 0),
(246, '2017-07-29', 'Charles Gatien Gomis', 'Grand Yoff', '77 705 42 48', '1', '', '', '', '', 'Topographe', 'C S E', 'Plus de 130000', 'CDI ', '', 'Grand Yoff', 'Se rapproche de la Banque', 0),
(247, '2017-07-26', 'Mouhamed Diagne', 'Fass Mbao', '77 552 29 32', '1', '', '', '', '1', 'Gendarme', 'Gendarmerie National', 'Plus de 300000', 'CDI', 'Ecobank', 'Zone Industrielle', 'Prêt pour ouvrir le Compte', 0),
(248, '2017-07-26', 'Moussa Faye', 'Mbao', '77 951 68 80', '1', '', '', '', '', 'Gendarme', 'Gendarmerie National', 'Plus de 300000', 'CDI', 'BHS', 'Zone Industrielle', 'Se rapproche de la banque', 0),
(249, '2017-07-25', 'El Hadji Malick Mbaye', 'SIPS', '77 487 71 90', '1', '', '', '1', '', 'Chauffeur', 'OWATRANS', '130000', 'CDI', 'MECTRANS', 'Zone Industrielle', 'Prêt pour finaliser avec la banque SGBS', 0),
(250, '2017-07-26', 'Saliou Wade', 'Yeumbeul Ben Brack', '77 675 50 21', '1', '', '', '', '', 'Chauffeur', 'OWATRANS', '130000', 'CDI', 'MECTRANS', 'Zone Industrielle', 'Prêt pour Finaliser', 0),
(251, '2017-07-26', 'Ndiouma Kor Diouf', 'Guêdiawaye', '77 279 26 80', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(252, '2017-07-26', 'Ibahima Seck', 'Yarakh', '77 585 09 50', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(253, '2017-07-25', 'Aly Coly', 'Gueul Tapêe', '77 219 29 45', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(254, '2017-07-25', 'Seydou Saer Sall', 'Keur Massar', '77 917 38 25', '1', '', '', '', '', 'Ouvrier', 'C N Q P', 'Plus de 120000', 'CDD', 'Crêdit Agricol', 'Zone Industrielle', 'Veut venir a la SGBS', 0),
(255, '2017-07-27', 'Djibril Ngom', 'Guêdiawaye', '77 727 39 35', '1', '', '', '', '', 'Chauffeur', 'SIMPA', 'Plus de 100000', 'CDD', '', 'Guediawaye', 'Trop Intêrêssê même', 0),
(256, '2017-07-19', 'Souleymane Diop', 'Guêdiawaye', '77 673 02 83', '1', '', '', '1', '', 'Agent de Sêcuritê', 'A S P', 'Plus de 80000', 'CDD', 'UBA', 'Guediawaye', 'Pr2t pour ouvrir le Compte', 0),
(257, '2017-07-29', 'Cheikh Kassê', 'Guêdiawaye', '77 172 00 47', '1', '', '', '', '1', 'Agent de Police', 'CAMP ABDOU DAISSE', 'Plus de 250000', 'CDI', 'BHS', 'Guediawaye', 'Prêt a faire l\'ouverture dês que la  Banque rêagie', 0),
(258, '2017-07-19', 'Abdoulaye Fall', 'Guêdiawaye Hamo 6', '77 524 87 66', '1', '', '', '1', '1', 'Conducteur Dêgestion', 'SATREC', 'Plus de 300000', 'CDI', 'BOA', 'Guediawaye', 'Prêt pour ouvrir le Compte', 0),
(259, '2017-07-17', 'Bassirou Bakhoum', 'Guêdiawaye', '77 047 57 34', '1', '', '', '', '', 'Agent de Q H S E', 'EIFFAGE', 'Plus de 125000', 'CDI', '', 'Guediawaye', 'Il est prêt pour faire l\'ouverture', 0),
(260, '2017-07-20', 'Daouda Boye', 'Nimzath Kawssara', '77 615 16 02', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(261, '2017-07-01', 'Mamadou Nguirane Mbaye', 'Wakhinane', '77 970 50 71', '', '1', '', '', '', 'Menuisier', 'Propre Structure', 'Pas de salaire', 'Pas de Con', '', 'Guediawaye', 'Veut un compte êpargne a la SBG', 0),
(262, '2017-07-05', 'Ibrahima Lo', 'Angle Mousse', '77 969 58 85', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(263, '2017-07-10', 'Papa Abdoulaye Fall', ' Guêdiawaye', '77 326 04 27', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de salaire', 'Pas de Con', '', 'Guediawaye', 'Veut ouvrir un compte Pro', 0),
(264, '2017-07-05', 'Nelson Mendy', 'Wakhinane', '78 440 86 98', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(265, '2017-07-06', 'Samba Diop', 'Guediawaye', '78 474 04 98', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(266, '2017-07-03', 'El Hadji Omar Dramê', 'Wakhinane', '77 074 28 04', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(267, '2017-07-05', 'Omar Sanê', 'Wakhinane', '77 439 81 83', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(268, '2017-07-06', 'Saliou Waly Ngom', 'Guediawaye', '77 671 21 25', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un Compte Pro', 0),
(269, '2017-07-05', 'Alla Gueye', 'Wakhinane', '77 955 53 61', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(270, '2017-07-04', 'Saliou Gningue', 'Hamo 4', '77 991 44 36', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(271, '2017-07-06', 'Cheikh Gueye', 'Guediawaye', '77 226 07 08', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire ', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(272, '2017-07-06', 'Gora Mbaye', 'Guediawaye', '77 103 69 60', '', '1', '', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire ', 'Pas de Con', '', 'Guediawaye', 'Se rapproche de la banque', 0),
(273, '2017-07-05', 'Cheikh Abdou Khadre Dieylani Diop', '548 Angle Mousse Guediawaye', '77 618 03 79', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire ', 'Pas de Con', '', 'Guediawaye', 'Sollicite un compte Pro', 0),
(274, '2017-07-30', 'Mamadou Douf', 'Wakhinane Guêdiawaye', '77 98943 35', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(275, '2017-07-27', 'Djibril Ngom', 'Guêdiawaye', '77 727 39 35', '1', '', '', '', '', 'Chauffeur', 'SIMPA', '', '', '', 'Guediawaye', '', 0),
(276, '2017-07-26', 'Ndiouma Kor Diouf', 'Guêdiawaye', '77 279 26 80', '1', '', '', '1', '', 'Chauffeur', 'OWATRANS', 'Plus de 125000', 'CDI', 'MECTRANS', 'Zone Industrielle', 'Prêt pour procêder a l\'ouverture', 0),
(277, '2017-07-29', 'Adiouma Ka', 'Grand Yoff', '77 445 65 86', '1', '', '', '', '', '', 'C S E', '', '', '', 'Grand Yoff', 'Se rapproche de la Banque', 0),
(278, '2017-07-31', 'Alioune Badara Coundoul', 'Keur Massar', '77 445 23 36', '1', '', '', '', '', 'Technicien ', 'SOCOCIM', 'Plus de 150000', 'CDI', '', 'Rufisque', 'Se rapproche de la Banque pour Finaliser l\'ouverture', 0),
(279, '2017-07-25', 'Moctar Fall', 'Dakar Plateau', '77 458 65 94', '1', '', '', '1', '1', 'Secrêtaire Administratif', 'CAMP DIAL DIOP', 'Plus de 300000', ' CDI', 'CBAO', 'Malick Sy', 'Prêt a faire l\'ouverture', 0),
(280, '2017-07-31', 'Dogue Remy', 'Rufisque', '77 444 20 89', '1', '', '', '1', '1', 'Magazinier', 'SOCOCIM', 'Plus de 120000', ' CDD', 'CBAO', 'Rufisque', 'Prêt a faire l\'ouverture', 0),
(281, '2017-07-31', 'Amadou Lamine Ndiaye', 'Rufisque', '77 776 53 89', '1', '', '', '', '', 'Entretient', 'SOCOCIM', 'Plus de 120000', 'CDD  ', '', 'Rufisque', 'Ds qqls jour il rêgle qqls doc', 0),
(282, '2017-07-31', 'Elhadji Sall', 'Rufisque', '77 578 93 00', '1', '', '', '', '', '', 'SOCOCIM', 'Plus de 100000', 'CDD', '', 'Rufisque', 'Veut Finaliser l\'ouverture', 0);
INSERT INTO `prospect` (`idp`, `date`, `nom`, `adresse`, `telephone`, `comptcourant`, `comptepargne`, `compteprofessionnel`, `pret`, `rachat`, `fonction`, `employeur`, `niveauderevenue`, `typecontrat`, `banque`, `agencedepot`, `observation`, `statut`) VALUES
(283, '2017-07-31', 'Assane Nging', 'Rufisque', '77 691 77 14', '1', '', '', '1', '', 'ManÏuvre', 'SOCOCIM', 'Plus de 130000', 'CDD', 'Pamecas', 'Rufisque', 'Prêt a faire l\'ouverture', 0),
(284, '2017-07-31', 'Ngouda  Diop', 'Rufisque', '70 651 98 08', '1', '', '', '', '', 'Mecanicien', 'SOCOCIM', 'Plus de 225000', 'CDI', '', 'Rufisque', 'Prêt a ouvrir le compte', 0),
(285, '2017-07-31', 'Ibrahima Cissoko', 'Kounoune', '77 337 87 90', '1', '', '', '', '', 'Soudeur', 'SOCOCIM', 'Plus de 150000', 'CDI', 'Bicis', 'Rufisque', 'Veut bien ouvrir le compte', 0),
(286, '2017-07-26', 'Ibrahima Seck', 'Yarakh', '77 585 09 50', '1', '', '', '', '', 'Entretient', 'TOM SA', 'Plus de 145000', ' CDI', 'BOA', 'Zone Industrielle', 'Prêt a venir a la banque SGBS', 0),
(287, '2017-07-29', 'Ismaila  Baldê', 'Keur Massar', '77 715 22 78', '1', '', '', '', '', '', 'C S E', 'Plus de 130000', 'CDD', '', 'Cambêrene', 'Prêt pour faire l\'ouverture', 0),
(288, '2017-07-04', 'Saliou Nging', 'Guêdiawaye', '77 991 44 36', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de Salaire', 'Pas de Con', '', 'Guêdiawaye', 'Sollicite un compte Pro', 0),
(289, '2017-07-06', 'Samba Ndiaye', 'Guêdiawaye', '78 474 04 98', '', '1', '', '', '', 'Commercant', 'Commerce ', 'Pas de Salaire ', 'Pas de Con', '', 'Guêdiawaye', 'Sollicite un compte  Epargne', 0),
(290, '2017-07-28', 'Adama Samb', 'Guêdiawye', '77 074 36 46', '1', '', '', '', '', 'Chauffeur', 'S A B', 'Plus de 125000', 'CDD', '', 'Guêdiawaye', 'Se rapproche de la Banque pour finaliser', 0),
(291, '2017-07-29', 'Abdoulaye Gueye', 'Guêdiawaye', '77 035 37 59', '', '', '1', '', '', 'Commercant', 'Commerce', 'Pas de Salaire', 'Pas de Con', '', 'Guêdiawaye', 'Veut un compte  Pro', 0),
(292, '2017-07-29', 'Mouhamadou Lamine Diaitê', 'Guêdiawaye', '76 874 99 28', '', '1', '', '', '', 'Mêcanicien', '', 'Pas de salaire', 'Pas de Con', '', 'Guêdiawaye', 'Veut un compte Epargne', 0),
(293, '2017-07-18', 'Nicolas Kamony', 'Thiaroye Gare ', '77473 98 50', '1', '', '', '1', '', 'Agent de Production', 'SOTRAPAL', 'Plus de 150000', 'CDI', 'BSIC', 'Thiaroye', 'Veut ouvrir son Compte', 0),
(294, '2017-07-18', 'Serigne Bassirou Sakho', 'Thiaroye /Mer', '77  691 74 61', '1', '', '', '1', '', 'Pointeur', 'SOTRAPAL', 'Plus de 150000', 'CDI', '', 'Thiaroye', 'Se rapproche de la Banque', 0),
(296, '2017-06-28', 'Serigne Cherif Assane Fall', 'Yeumbeul', '77 647 20 44', '', '1', '', '', '', '', 'Commercant', 'Pas de revenu', 'Pas de con', '', 'Yeumbeul', 'Il veut venir finaliser le Lundi', 0),
(297, '2017-07-13', 'Mambodji Gueye ', 'Yeumbeul', '78 019 76 64', '1', '', '', '', '', '', 'SAKANAL', 'Plus de 100 000', 'CDD', '', 'Thiaroye', 'Aprs avoir son contrat de travail il va venir passer a l\'ouverture', 0),
(298, '2017-06-28', 'Massamba Diop', 'Thiaroye', '77 366 15 25', '1', '', '', '', '', '', 'LMDB', 'Plus de 100 000', 'CDD', '', 'Thiaroye', 'Veut passer le Mercredi', 0),
(299, '2017-07-03', 'Ablaye Mbaye', 'Thiaroye Minam', '77 552 14 39', '', '1', '', '', '', '', 'THAKAMOUL FOOD', 'Retisant', 'CDI', 'Banque Atlantique', 'Thiaroye', 'Prêt pour passer Lundi ou Mardi', 0),
(300, '2017-07-06', 'Abba Tourê', 'Thiaroye', '77 265 64 66', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', 'Le numêro n\'existe pas', 0),
(301, '2017-06-28', 'Samba Ka', 'Yeumbeul', '77 651 30 13', '1', '', '', '', '', '', '', '', '', '', 'Yeumbeul', '', 0),
(302, '2017-06-29', 'Adama Ndiaye', 'Yeumbeul', '', '', '1', '', '', '', '', 'Boulanger', 'P as de revenu', 'Pas de con', 'Microcred', 'Yeumbeul', 'Veut passer ds la semaine', 0),
(303, '2017-06-29', 'El hadji Diop', 'Yeumbeul', '77 020 81 00', '', '1', '', '', '', '', 'SAD', 'Plus de 100 000', 'CDD', '', 'Yeumbeul', 'En voyage,,Il va finaliser  dês qu\'il revient', 0),
(304, '2017-07-05', 'Omar Ciss', 'Diamaguene', '77 524 51 38', '', '1', '', '', '', '', 'Commercant', 'Pas de revenu', 'Pas de con', '', 'Diamaguene', 'Vers Jeudi pour Finaliser', 0),
(305, '2017-07-06', 'Ibrahima Faye', 'Grand Mbao', '77 034 45 35', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', 'Aucune Reponse', 0),
(306, '2017-07-07', 'Ibrahima Diop', 'Diamaguene', '77 296 51 18', '1', '', '', '', '', '', 'MDS', 'Journalier', 'Pas de con', '', 'Diamaguene', 'Attend qu\'on lui convoque pour finaliser', 0),
(307, '2017-06-30', 'Badara Ndiaye', 'Diamaguene', '77 031 37 15', '', '1', '', '', '', '', 'Tapisier', 'Pas de revenu', 'Pas de con', '', 'Diamaguene', 'Il veut venir finaliser le Vendredi', 0),
(308, '2017-07-24', 'Birame Ndiaye', 'Guediawaye', '775274223 - 7656479 ', '1', '', '', '', '', '', 'Oilybiya', 'Plus de 100 000', 'CDD', '', 'Guediawaye', 'Le client êtait parti pour procêder a l\'ouverture d\'1 compte courant a ma grande surprise il ma appêlê en disant que le chef d\'agence Mr Ndoye lui demande 10000f pour frais d\'ouverture  et que nous nous l\'avions dit que c\'est gratuit l\'ouverture,', 0),
(309, '2017-07-25', 'Insa Kêbê', 'Guêdiawaye', '776325058', '1', '', '', '', '', 'Electricitê Solaire Batiment', 'Commerce Gênêral BTP Prestation', 'Plus de 1500000', 'CDI', '', 'Guêdiawaye', 'se rapproche de la banque', 0),
(310, '2017-07-25', 'Abdou Diakhatê', 'Guêdiawaye', '774923322', '1', '', '', '', '1', '', 'SOBOA', '116 505', 'CDD', 'CMS', 'Zone Industielle', '', 0),
(311, '2017-07-26', 'Ousmane Ndiaye', '8 Hlm 1', '776396645', '1', '', '', '', '', 'Commercial /Livreur', 'DAMCO', 'Plus de 100 000', 'CDD', '', 'Zone Industielle', 'Se rapproche de la banque', 0),
(312, '2017-07-26', 'Cheikh Oumar Nourou', '29 Zone A2', '774442793', '1', '', '', '', '', '', 'Uniparco', '', '', '', 'Zone Industielle', '', 0),
(313, '2017-07-26', 'Fatou Bintou Ngom', 'Safco 2 Thiaroye Azur', '774445888', '1', '', '', '', '', '', 'Uniparco', '', '', '', 'Zone Industielle', '', 0),
(314, '2017-07-26', 'Moussa Diêdhiou', 'Grand Yoff', '782118268', '1', '', '', '', '', 'Agent de Sêcuritê', 'PSG Securitê', 'Plus de 800000', 'CDD', '', 'Zone Industielle', 'Se rapproche de la banque', 0),
(315, '2017-07-26', 'Magnick Fall', 'Hlm', '773734169', '1', '', '', '', '', '', 'Uniparco', '', '', '', 'Zone Industielle', '', 0),
(316, '2017-07-15', 'Massamba Fall', 'DVF Bambey Yarakh', '783735419', '1', '', '', '', '', 'Chauffeur', 'Transport Gazal', 'Plus de 100000', 'CDI', '', 'Zone Industielle', 'Se rapproche de la banque', 0),
(317, '2017-07-26', 'Malang Fatê', 'Hlm', '762518435', '1', '', '', '', '', 'Commercial /Livreur', 'Hamtech/ Hisense', 'Plus de 100000', 'CDD', '', 'Zone Industielle', 'Se rapproche de la banque', 0),
(318, '2017-07-25', 'Yêro Aliou Diop', 'Caserne Malick Sy', '774941489', '1', '', '', '', '1', 'Fonctionnaire', 'SOBOA', 'Plus de 100000', 'CDI', 'CBAO', 'Zone Industielle', 'Prêt pour Finaliser', 0),
(319, '2017-07-31', 'Assane Sêne ', 'Rufisque', '708846513', '1', '', '', '', '', '', 'LMDB', 'Plus de 100000', 'CDD', '', ' Rufisque', 'Se rapproche de la banque', 0),
(320, '2017-07-31', 'Cheikh Ahmadou Bamba Diaw', 'Rufisque', '777023031', '1', '', '', '', '', '', 'SOCOCIM', 'Plus de 120000', 'CDD', '', ' Rufisque', 'Se rapproche de la banque', 0),
(321, '2017-07-28', 'Charles Gorgui Sêne', 'LGI Mbao Citê Mamel', '771447203', '1', '', '', '', '', 'Agent de Sêcuritê', 'SAGAM SAR', 'Plus de 80000', 'CDD', '', ' Rufisque', 'se rapproche de la banque', 0),
(322, '2017-07-31', 'Ibrahima Diallo', 'Rufisque', '781707924', '1', '', '', '', '', 'Sodronier', 'SOCOCIM', 'Plus de 100000', 'CDI', '', ' Rufisque', '', 0),
(323, '2017-07-31', 'Ibrahima Sêck', 'Rufisque', '783744540', '1', '', '', '', '', '', 'SOCOCIM', '', '', '', ' Rufisque', '', 0),
(324, '2017-07-31', 'Cheikhou Cissê', 'Castors', '770710868', '1', '', '', '', '', 'Chauffeur', 'SOCOCIM', 'Plus de 150000', 'CDI', '', ' Bourguiba Castors', 'se rapproche de la banque', 0),
(325, '2017-07-31', 'Yaya Ba', 'Colobane', '775188998', '1', '', '', '', '', 'Mêcanicien', 'SOCOCIM', 'Plus de 100000', 'CDD', '', 'Rufisque', 'se rapproche de la banque', 0),
(326, '2017-07-27', 'Ismaela Badji', 'Yarakh Citê des Forces Armêes', '704985190', '1', '', '', '', '', '', 'SIMPA', '', '', '', 'Rufisque', '', 0),
(327, '2017-07-24', 'Mamadou Coly', 'Fass Mbao', '781509927', '1', '', '', '', '', 'Pompiste', 'Station Zen Oil', 'Plus de 800000', 'CDD', '', 'Rufisque', 'Se rapproche de la banque', 0),
(328, '2017-07-26', 'Saliou Ndoye', 'Grand Mbao', '709572797', '1', '', '', '', '1', 'Agent de Sêcuritê', 'Vicassistance', 'Plus de 800000', '', 'Pamecas', 'Rufisque', 'Se rapproche de la banque', 0),
(329, '2017-07-25', 'Cheikh Tidiane Fofana', 'Sicap Mbao', '778155102', '1', '', '', '', '', 'Chauffeur', 'Mol 8 Cimar', '150000', 'CDI', '', 'Rufisque', 'se rapproche de la banque', 0),
(330, '2017-07-18', 'Alassane Gueye', 'Rufisque', '774118311', '1', '', '', '', '', 'Commercial ', 'Sotrapal', 'Plus de 100000', 'CDD', '', 'Rufisque', '', 0),
(331, '2017-07-18', 'Daouda Sambe', 'Pikine', '774014856', '1', '', '', '', '1', 'ManÏuvre', 'Sotrapal', '165 000', 'CDI', 'Bicis', 'Rufisque', 'Se rapproche de la banque', 0),
(332, '2017-07-15', 'Sêmou Diouf', 'Fass Mbao', '775554583', '1', '', '', '', '', 'Frigoriste', 'Sotrapal', 'Plus de 100000', 'CDD', 'Bicis', 'Rufisque', 'Prêt pour passer  a la Banque', 0),
(333, '2017-07-20', 'Daouda Diallo', 'Fass Mbao Citê Mandêla', '784239746', '1', '', '', '', '', '', 'Nina', '', '', '', 'Rufisque', '', 0),
(334, '2017-07-15', 'Omar Ndiaye', 'Mêdina ', '773587343', '1', '', '', '', '', 'Frigoriste', 'Sotrapal', 'Plus de 100000', 'CDD', 'Ecobank', 'Rufisque', 'Se rapproche de la banque', 0),
(335, '2017-07-31', 'Djibril Sembêne', 'Bargny', '770119519', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(336, '2017-07-27', 'Thierno Ba', 'Yoff Thongor', '784803511', '1', '', '', '', '', 'Technicien en Froid', 'FBSARL', 'Plus de 100000', 'CDD', '', 'Yoff', 'Prt pour Finaliser  avec la Banque', 0),
(337, '', 'Daouda Maria', 'Keur Massar', '777953483', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(338, '', 'Madiop Diouf', 'Citê Fadia', '771466470', '1', '', '', '', '', '', '', '', '', '', 'Case Bi', '', 0),
(339, '', 'Mamadou Gueye', 'Yeumbeul', '780197664', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(340, '', 'Abdou Kader Badiane', 'Keur Mssar', '777305221', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(341, '', 'Ndiack  Sow', 'Golf', '783067566', '1', '', '', '', '', '', '', '', '', '', 'Zone Indistrielle', '', 0),
(342, '', 'Pape Mang Gueye', 'Thiomby Nbambara', '767500646', '1', '', '', '', '', '', '', '', '', '', 'Hann Mariste', '', 0),
(343, '', 'Moussa  Senghor', 'Bel Air', '773491170', '', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(344, '', 'Papa Amadou Fall', 'Mariste ', '7746702555', '1', '', '', '', '', '', '', '', '', '', 'Mariste', '', 0),
(345, '', 'Moustapha Niang', 'Pikine', '777870496', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(346, '', 'Cheikh Ndiaye', 'Keur Moussê', '770923970', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(347, '', 'Meissa Beye', 'Guêdiawaye', '777072572', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(348, '', 'Amadou   Dia', 'Lamsar', '779000864', '', '1', '', '', '', 'Commercant', 'Commerce', 'Pas de revenu Salarial', 'Pas de Con', '', 'Rufisque', 'Veut un  Compte Epargne', 0),
(349, '', 'Ibrahima Diop', 'Diamaguêne', '772965118', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(350, '', 'Ousmane Djodj', 'Keur Mbaye Fall', '773853536', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(351, '', 'Zakaria Nguet', 'Keur Massar', '776653755', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(352, '', 'Ibrahima Faye', 'Diacksao', '770344535', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(353, '', 'Aliou Diao', 'Diamaguene', '775084201', '1', '', '', '', '', '', '', '', '', '', 'Cambêrene', '', 0),
(354, '', 'Adama Gaye', 'Mbabeye', '771410762', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(355, '', 'Abba Tourê', 'Thiaroye', '782656466', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(356, '', 'Elhadji Bop', 'Pikine', '782102807', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(357, '', 'Oumar Ciss', 'Diamaguene', '775245838', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(358, '', 'Abdou Guirane', '385 Citê Djily Mbaye', '775393185', '', '1', '', '', '', '', '', '', '', '', 'Centenaire', '', 0),
(359, '', 'Malick Faye', 'Diass', '775578656', '', '1', '', '', '', 'Mêcanicien', '', 'Pas de revenu', '', '', 'Rufisque', 'Sollicite un Compte Epargne', 0),
(360, '', 'Bassirou Dione', 'Diack Sao 2', '778723300', '', '1', '', '', '', 'Injection', 'M D S', 'Revenu trs bas', '', '', 'Thiaroye', 'Sollicite un Compte Epargne', 0),
(361, '', 'Abdoulaye Sanê', 'Malika', '779659709', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(362, '', 'Ibrahima Diouf', 'Pikine', '770740252', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(363, '', 'Baidy Ba', 'Petit Mbao', '775651368', '1', '', '', '', '', 'Technicien Mecanique', 'Takamoul Food', 'Plus de 125000', 'CDD', 'CBAO', 'Rufisque', 'se rapproche de la banque', 0),
(364, '', 'Mmadou Coly', 'Fass Mbao', '781509927', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(365, '', 'Papa Moussa Tourê', 'Fass Mbao', '778249130', '1', '', '', '', '', '', '', '', '', '', 'Centenaire', '', 0),
(366, '', 'Cheikh Tourê', 'Yeumbeul ', '776300403', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(367, '', 'Ablaye Mbaye', 'Thiaroye Minam', '775521439', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(368, '', 'Ousmane Dial', 'Facss Mbao', '777915200', '1', '', '', '', '', '', '', '', '', '', 'Parcelle Case Bi', '', 0),
(369, '', 'Aya Diop', 'Wkhinane 3', '776599860', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(370, '', 'Modou Fall', 'Guêdiawaye', '771024838', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(371, '', 'Birama Diop', 'Pikine', '771645778', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(372, '', 'Birame Ndiaye', 'Guêdiawaye', '765647976', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(373, '', 'Aleya Faye', 'Guêdiawaye', '782311556', '', '1', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(374, '', 'Abdoulaye Ba', 'Mêdina', '706461586', '', '1', '', '', '', '', '', '', '', '', 'Malick Sy', '', 0),
(375, '', 'Mmadou Lamine Massaly', 'Pikine', '700149837', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(376, '', 'Aissatou Sambou', 'Sicap Mbao', '777821730', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(377, '', 'Amy Amar', 'Keur Massar', '775992385', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(378, '', 'Badara Ndiaye', 'Diamaguêne ', '770313715', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(379, '', 'Diakhon Niang', 'Diamalaye ', '775607252', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(380, '', 'Alphousseynou Diatta', 'P Assainies', '770327605', '1', '', '', '', '', '', '', '', '', '', 'Case bi', '', 0),
(381, '', 'Souleymane Biaye', 'Parcelle', '776576182', '1', '', '', '', '', '', '', '', '', '', 'Cambêrene', '', 0),
(382, '', 'Cherif Sane', 'Citê Aliou Sow', '770854785', '1', '', '', '', '', '', '', '', '', '', 'Cambêrene', '', 0),
(383, '', 'Serigne Chêrif Assane Fall Ndiaye', 'Keur Mbaye Fall', '776472044', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(384, '', 'Mamadou Moustapha Sarr', 'Pikine Guinaw Rail', '776355028', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(385, '', 'Samba Yero Souwarê', 'Hlm5', '779085054', '1', '', '', '', '', '', '', '', '', '', 'Hlm 5', '', 0),
(386, '', 'Hdji Rahya RasiSane', 'Golf', '771633860', '', '1', '', '', '', '', '', '', '', '', 'Golf', '', 0),
(387, '', 'Idrissa Djiba', 'Keur Mbaye Fall', '777694379', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(388, '', 'Madickê Diop', 'Yeumbeul', '705545464', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(389, '', 'Allessane Thiongane', 'Guêdiawaye', '775980702', '', '1', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(390, '', 'Mba Diakhatê', 'Diamaguene', '782901105', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(391, '', 'Hadji Rahya Rasi Sanê', 'Golf ', '771633860', '', '1', '', '', '', '', '', '', '', '', 'Golf', '', 0),
(392, '', 'Mamadou Moustapha Sarr', 'Pikine Guinaw Rail', '776355028', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(393, '', 'Djiba Idrissa', 'Diamalaye Keur Mbaye Fall', '777694379', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(394, '', 'Tenda Fall', 'Golf Sud', '776362557', '1', '', '', '', '', '', '', '', '', '', 'Golf', '', 0),
(395, '', 'Mariême Niane', 'Yeumbeul', '770314274', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(396, '2017-07-27', 'Ismaela Badji', 'Yarakh citê Forces Armêes', '704985190', '1', '', '', '1', '', 'Qualiticien', 'Simpa', 'Plus de 100000', 'CDD', '', 'Rufisque', 'se rapproche de la banque', 0),
(397, '2017-07-18', 'Allassane Gueye', '', '77 411 83 11', '1', '', '', '', '', 'Commercial ', 'Sotropal', 'Plus de 100000', 'CDD', '', 'Rufisque', 'se rapproche de la banque', 0),
(398, '', 'Bathia Ndao', 'Citê Madiabel Zac Mbao', '77 656 46 84', '1', '', '', '', '', 'Chef de Service', 'Takamoulfood', 'Plus de 200000', 'CDI', '', 'Rufisque', 'Veut ouvrir ce compte trs Rapidement si possible', 0),
(399, '2017-07-27', 'Mouhamadou Maguette Mbengue', 'Yeumbeul', '77 675 82 53 ', '1', '', '', '', '', 'ManÏuvre ', 'C D E', 'Plus de 120000', 'CDD', '', 'Thiaroye', 'se rapproche de la banque', 0),
(400, '2017-07-25', 'Boubacar Ciss', 'Yeumbeul', '77 547 07 43', '1', '', '', '', '', 'Assureur', 'Bureau Fass de Lorm', 'Plus de 100000', 'CDD', '', 'Thiaroye', 'se rapproche de la banque', 0),
(401, '2017-07-31', 'Cheikh Nar Gueye', 'Sicap Mbao', '77 325 70 94', '1', '', '', '', '', '', 'L M D B', 'Plus de 130000', 'CDI', '', 'Thiaroye', 'se rapproche de la banque', 0),
(402, '2017-07-31', 'Serigne Saliou Lo', 'Sicap Mbao', '77665 93 70', '1', '', '', '', '', '', 'L M D B', 'Plus de 130000', 'CDI', '', 'Thiaroye', 'Veut ouvrir ce compte trs Rapidement si possible', 0),
(403, '2017-07-14', 'Ndênê Sow', 'Poste Thiaroye', '77 406 96 65', '1', '', '', '', '', 'Transporteur', 'S C D Transport et Logistic', 'Plus 130000', 'CDI', '', 'Thiaroye', 'se rapproche de la banque', 0),
(404, '2017-07-25', 'Adama Sanê', 'Fass Mbao', '77 301 79 79', '1', '', '', '', '', '', 'SEN BUS', 'Plus de 100000', 'CDI', '', 'Thiaroye', 'se rapproche de la banque', 0),
(405, '2017-07-24', 'Daouda Gano', 'Yeumbeul', '77 365 00 56', '', '1', '', '', '', 'Ecole Police', 'Multiservices', 'Pas de Revenu', 'Pas de Con', '', 'Thiaroye', 'Veut un  Compte Epargne', 0),
(406, '2017-07-18', 'Assoumana Arfang Sonko', 'Yarakh', '77 088 83 77', '1', '', '', '', '', 'Agent de Sêcurite', 'SOTRAPAL', 'Plus de 80000', 'CDD', '', 'Thiaroye', 'se rapproche de la banque', 0),
(407, '2017-07-18', 'Khassou Diatta', 'Thiaroye Sam Sam 2', '77 274 40 28', '1', '', '', '', '', 'Agent de production', 'SOTRAPAL', 'Plus de 100000', 'CDI', '', 'Thiaroye', 'Veut ouvrir Son Compte', 0),
(408, '2017-07-20', 'Amadou Makhtar Ndiaye', 'Fass Mbao', '77 497 67 13', '1', '', '', '', '', 'Magazinier ', 'SEN BUS', 'Plus de 120000', 'CDD', '', 'Thiaroye', 'se rapproche de la banque', 0),
(409, '2017-07-18', 'Pape Demba Diop', 'Yoff', '77 216 80 71', '1', '', '', '', '', '', 'SATREC', 'Plus de 700 000', 'CDI', 'BOA', 'Yoff', 'Il va finaliser Samedi il est prêsentement en voyage', 0),
(410, '2017-07-24', 'Lamine Diawara', 'Parcelles U 25', '77 316 20 50', '1', '', '', '', '', '', 'FOIRE INTERNATIONAL', 'Plus de 80 000', 'CDD', '', 'Yoff', 'Se rapprochera de la banque le Mercredi prochain', 0),
(411, '2017-07-26', 'Mbagnick Ndong', 'Yoff', '77 912 82 69', '1', '', '', '', '', '', 'SPS', 'Plus de 80 000', 'CDI', '', 'Yoff', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(412, '2017-07-04', 'Moussa Diop', 'Keur Massar ', '77 889 83 99', '1', '', '', '', '', '', 'ETS   DIA', 'Plus de 100 000', '', '', 'Keur Massar', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(413, '2017-07-25', 'Alioune Dia', 'Keur Massar ', '70 983 30 61', '1', '', '', '', '', '', 'SIMAR', 'Plus de 95 000', 'CDD', 'BHS', 'Keur Massar', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(414, '2017-07-25', 'Amadou Mbagnick', 'Sicap Mbao', '77536 56 23', '1', '', '', '', '', '', 'S A N', 'Plus de 150 000', 'CDI', 'CBAO', 'Thiaroye', 'A rappeler pour fixer un RV', 0),
(415, '2017-07-11', 'Abdoul Latif Ndiaye ', 'Yarakh', '77 478 55 92', '1', '', '', '', '', '', 'SOCOGEM', 'Plus de 100 000', 'CDD', '', 'Mariste', 'Se rapprochera de la banque pour finaliser l\'ouverture', 0),
(416, '2017-07-24', 'Tafsir Diop', 'Niarry Tally', '77 650 73 82', '1', '', '', '', '', '', 'SOCETIM', 'Plus de 150 000', 'CDI', 'Bicis', 'Libertê 5', 'IL sera ˆ la banque d\'ici la semaine prochaine', 0),
(417, '2017-07-19', 'Pape Modou Kane', 'Medina Rue 29 x 28', '77 932 16 21', '1', '', '', '', '', '', '', '', '', '', 'Centenaire', 'Injoignable', 0),
(418, '2017-07-14', 'Lamine Diedhiou', 'Yeumbeul Benn Barack', '782853015', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(419, '2017-07-18', 'Abdou Mbaye', 'Sicap Mbao', '771391489', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(420, '2017-07-25', 'Mouhamed  Fall', 'Fass Mbao', '774989208', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(421, '2017-07-15', 'Aliou Marone', 'Poeste Thiaroye', '777929728', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(422, '2017-07-15', 'Ady Sylla', 'Dieupeul', '773243655', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(423, '2017-07-06', 'Serigne Tine', 'Thiaroye', '770384892', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(424, '2017-07-18', 'Ndiassê Diakhatê', 'Yeumbeul', '773915610', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(425, '2017-07-04', 'Idrissa Dême', 'Nimzath Guêdiawaye', '774114059', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(426, '2017-07-11', 'Samba Gueye', 'Parcelle Unitê 26', '766847606', '1', '', '', '', '', '', '', '', '', '', 'Parcelles', 'Lundi ou Mardi il passer a la banque finaliser', 0),
(427, '2017-07-12', 'Mamadou yaya Souarê', 'Keur Mbaye Fall', '777136778', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(428, '2017-07-15', 'Djibril Fall', 'Pikine', '784180332', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(429, '2017-07-26', 'Moustapha Ndiaye', 'Parcelle Unitê 15', '775355991', '1', '', '', '', '', '', '', '', '', '', 'Parcelles', '', 0),
(430, '2017-07-14', 'Mamadou  Thiam', 'Pikine', '779420220', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(431, '2017-07-19', 'Pathê Gueye', 'Diacsao', '703571531', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(432, '2017-07-18', 'Ousmane Samb', 'Diamaguene', '773284455', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(433, '2017-07-31', 'Lahat Diouf', 'Yarakh', '774740361', '1', '', '', '', '', '', '', '', '', '', 'Mariste', '', 0),
(434, '2017-07-31', 'Abdou Latif Ndiaye', 'Yarakh', '774785592', '1', '', '', '', '', '', '', '', '', '', 'Mariste', '', 0),
(435, '2017-07-24', 'Thierno Tafsir Diallo', 'Gueul Tapêe', '771853116', '1', '', '', '', '', '', '', '', '', '', 'Malick Sy', '', 0),
(436, '2017-07-27', 'Assane Diouf', 'Hlm4', '775782902', '1', '', '', '', '', '', '', '', '', '', 'Bourguiba Castor', '', 0),
(437, '2017-07-27', 'Mamadou Moustapha Dabo', 'Hlm4', '775609220', '1', '', '', '', '', '', '', '', '', '', 'Bourguiba Castor', '', 0),
(438, '2017-07-23', 'Cheikh Bounama Ndiaye', 'Pikine', '777149063', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(439, '2017-07-28', 'Ass Malick Ndiaye', 'Niarry Taly', '773768073', '1', '', '', '', '', '', '', '', '', '', 'Bourguiba Castor', '', 0),
(440, '2017-07-21', 'Baye Dame Dieng', 'Sonepi', '775766587', '1', '', '', '', '', '', '', '', '', '', '', '', 0),
(441, '2017-07-26', 'Cheikh Diagne', 'Parcelle Assainies', '775789053', '1', '', '', '', '', '', '', '', '', '', 'Parcelles', '', 0),
(442, '2017-07-19', 'Serigne Beye', 'Boune', '772500592', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(443, '2017-07-20', 'Amath Amadou Ndiaye', 'Petit Mbao', '771705001', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(444, '2017-07-18', 'Djiby Seydi', 'Yeumbeul', '783493390', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(445, '2017-07-19', 'Jean Sautana Henriquez', 'Sacrê CÏur', '775551598', '1', '', '', '', '', '', '', '', '', '', 'Sacrê CÏur', '', 0),
(446, '2017-07-25', 'Amadou  Ly', 'Fass Mbao', '779466463', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(447, '2017-07-24', 'Serigne Saliou Mbackê Ndong', 'Guêdiawaye', '771910268', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(448, '2017-07-24', 'Pape Modou Kane', 'Medina Rue 29x28', '779321621', '1', '', '', '', '', '', '', '', '', '', 'Malick Sy', '', 0),
(449, '2017-07-28', 'Moussa Sagnan', 'Zac Mbao', '773775143', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(450, '2017-07-21', 'Idrissa Dême', 'Nimzath Guêdiawaye', '78 411 40 59', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(451, '2017-07-15', 'Mapenda Der', 'Guêdiawaye Mbode 6', '77 372 31 64', '1', '', '', '', '', 'Soudeur', 'Satrec Vitalait', 'Plus de 150000', 'CDI', '', 'Guediawaye', 'Se rapproche de la banque', 0),
(452, '2017-07-26', 'Malang Coly', 'Thiaroye Azur', '77 187 51 82', '1', '', '', '', '', '', 'Port', '', '', 'BOA', 'Thiaroye', '', 0),
(453, '2017-07-31', 'Mamadou Gueye', 'Rufisque', '77 446 26 44', '1', '', '', '', '', 'Tourneur', 'EGETCOR', 'Plus de 100000', 'CDD', 'Bicis', 'Rufisque', 'Pret pour finaliser l\'ouverture avec la banque', 0),
(454, '2017-07-31', 'Ousmane Dieng', 'Rufisque', '77 443 75 69', '1', '', '', '', '', 'Peusseur', 'TOP INTER', 'Plus de 130000', 'CDI', '', 'Rufisque', 'Se rapproche de la banque ', 0),
(455, '2017-07-31', 'Boubacar Dia', 'Rufisque', '77 436 92 62 ', '1', '', '', '', '', '', 'TOP INTER', 'Plus de 100000', 'CDD', '', 'Rufisque', 'Prêt pour finaliser avec la banque SGBS', 0),
(456, '2017-07-31', 'Ousmane Mbaye', 'Rufisque', '77 714 22 17', '1', '', '', '', '', '', '', '', '', 'BOA', 'Rufisque', '', 0),
(457, '2017-07-31', 'Mambery Diop', 'Pikine', '77 952 84 20', '1', '', '', '', '', 'Controleur', 'AFTU', 'Plus de 80000', 'CDD', 'MECTRANS', 'Pikine', 'Se rapproche de la banque', 0),
(458, '2307/2017', 'Amadou Tidiane Sarr', 'Rufisque', '77 369 36 98', '1', '', '', '', '', '', 'JAPPO', '', '', 'Pamecas', 'Rufisque', '', 0),
(459, '2017-07-31', 'El Hadji Khadim Ndoye', 'Rufisque', '77 618 47 62', '1', '', '', '', '', 'Chauffeur', 'Manuservice', 'Plus de 100000', 'CDD', '', 'Rufisque', 'S e rapproche de la banque', 0),
(460, '2017-07-31', 'Makhtar Ndiaye', 'Thiaroye Gar', '77 920 13 42', '1', '', '', '', '', 'Mecanicien', 'TOP INTER', 'Plus de 150000', 'CDD', 'Pamecas', 'Rufisque', 'Se rapproche de la banque', 0),
(461, '2017-07-31', 'Khaly Niang', 'Rufisque', '70 490 14 66', '1', '', '', '', '', 'Soudeur', 'TOP INTER', 'Plus de 120000', ' CDD', '', 'Rufisque', 'Veut finaliser avec la banque', 0),
(462, '2017-07-31', 'Mamadou Diagne', 'Citê Icotaf 2', '77 232 45 66', '1', '', '', '', '', 'Agent D\'entretient', 'TOP INTER', '150000', 'CDI', 'CBAO', 'Pikine', 'Se rapproche de la banque', 0),
(463, '2017-07-31', 'Magueye Der', 'Rufisque', '77 181 81 18', '1', '', '', '', '', 'Agent de la SOCOCIM', 'TOP INTER', '150000', '', 'Pamecas', 'Rufisque', 'Se rapproche de la banque', 0),
(464, '2017-07-26', 'Adiouma Thiam', 'Santhiaba Cherif', '77 503 32 96', '1', '', '', '', '1', 'Mêcanicien', 'SOCOCIM', '1500000', '', 'BICIS', 'Rufisque', 'Se rapproche de la banque pour Finaliser', 0),
(465, '2017-07-31', 'El Hadji Babacar Faye', 'Rufisque', '77 038 84 56', '1', '', '', '', '', '', 'RP Service', '', '', 'CBAO', 'Rufisque', '', 0),
(466, '2017-07-31', 'Samba Laobê Ndiaye', 'Rufisque', '77 419 89 41', '1', '', '', '', '', 'Electricien', 'NEGS', 'Plus de 150000', 'CDI', 'Bicis', 'Rufisque', 'Se rapprocher de la Banque', 0),
(467, '2017-07-31', 'Matar Diall', 'Rufisque', '76 680 23 08', '1', '', '', '', '', 'Soudeur', 'NEGS', 'Plus de 130000', 'CDI', 'Bicis', 'Rufisque', 'Se Rapproche de la banque', 0),
(468, '2017-07-31', 'Moustaph Ba', 'Rufisque', '77 069 12 11', '1', '', '', '', '', '', 'RP Service', '', '', 'CBAO', 'Rufisque', '', 0),
(469, '2017-07-31', 'Khassam Diagne', 'Pikine', '77 967 88 22', '1', '', '', '', '', 'Mêcanicien', 'TOP INTER', 'Plus de 100000', '', 'Pamecas', 'Pikine', 'Se rapproche de la banque', 0),
(470, '2017-07-14', 'Babacar Ndao', 'Keur Mbaye Fall', '77 617 02 41', '1', '', '', '1', '', 'Mêcanicien', 'SCD Transport', 'Plus de 150000', 'CDI', '', 'Keur Massar', 'Se rapproche de la banque pour finaliser l\'ouverture', 0),
(471, '2017-07-31', 'Samba Katy Diop', 'Rufisque', '77 531 46 95', '1', '', '', '', '', 'Electricien', 'SOCOCIM', 'Plus de 150000', 'CDI   ', 'CBAO', 'Rufisque', 'Veut finaliser avec la banque', 0),
(472, '2017-07-20', 'Babacar Toumbou', 'Rufisque', '77 315 71 81', '1', '', '', '', '', '', 'CDE', 'Plus de 80000', 'CDD', '', 'Rufisque', 'Se rapproche de la Banque', 0),
(473, '2017-07-19', 'Monsa Sagna', 'Zac Mbao', '77 377 51 43', '1', '', '', '1', '1', 'Responsable Espace Vert', 'Satrec  ', 'Plus de 100000', 'CDD', 'BOA', 'Thiaroye', 'Attend que la banque pour procêder a l\'ouverture du Compte', 0),
(474, '2017-07-18', 'Abibou Cissê', 'Fass Mbao', '77 617 98 19', '1', '', '', '1', '', 'Chef  Mecanicien', 'Satrec  ', 'Plus 150000', 'CDI', 'BOA', 'Thiaroye', 'Prêt pour finaliser avec la banque SGBS', 0),
(475, '2017-07-18', 'Mamadou Ndiaye', 'Keur Mbaye Fall', '77 532 06 31', '1', '', '', '1', '', 'Chauffeur', 'Satrec  ', 'Plus de 150000', 'CDI', 'BOA', 'Keur Massar', 'Pret pour finaliser l\'ouverture avec la banque', 0),
(476, '2017-07-15', 'Assane Faye', 'Yenetode', '78 350 52 99', '1', '', '', '1', '', 'Technicien Industrielle', 'GERIA', 'Plus de 160000', '', '', 'Rufisque', 'Veut finaliser avec la banque', 0),
(477, '2017-07-15', 'Souleymane Ndiaye', 'Petit Mbao', '77 576 76 65', '1', '', '', '1', '', 'Chauffeur', 'Satrec Vitalait', 'Plus de 150000', 'CDI', 'BOA', 'Rufisque', 'Se rapproche de la Banque', 0),
(478, '2017-07-24', 'Moussa Diop', 'Rufisque', '77 800 26 90', '1', '', '', '', '', 'Agent de Police', 'Ecole Police', '120000', 'CDI', '', 'Rufisque', 'Se rapproche de la banque pour plus d\'info', 0),
(479, '2017-07-12', 'Mamadou Yaya Souarê', 'Keur Mbaye Fall', '77 713 67 78', '1', '', '', '', '', '', 'Ecole Police', '', '', '', 'Keur Massar', '', 0),
(480, '2017-07-27', 'Amath Cissê', 'Guediawaye', '77 615 37 22', '1', '', '', '1', '1', 'Chauffeur', 'Touba Gaz', 'Plus de 180000', 'CDI', 'CBAO', 'Guediawaye', 'Attend que la banque pour procêder a l\'ouverture du Compte', 0),
(481, '2017-07-27', 'El Hadji Ibrahima  Sakho Mbaye', 'Rufisque', '77 687 19 52', '1', '', '', '', '', '', 'Marie Sicap Mbao', '', '', 'CMS', 'Rufisque', '', 0),
(482, '2017-07-27', 'Birame Faye', 'Hlm Dakar', '77 515 15 21', '1', '', '', '', '', 'Chauffeur', 'Petro Service', 'Plus de 125000', 'CDI', 'Banque Islamique', 'Bourguiba Castor', 'Prêt pour finaliser avec la banque SGBS', 0),
(483, '2017-07-27', 'Ibrahima Sow', 'Zac Mbao', '77 430 83 07', '1', '', '', '1', '1', 'Enseignant', 'Ecole  Cheikh Abdou Khadre Cissokho', 'Plus de 100000', 'CDD', 'Pamecas', 'Rufisque', 'Se rapproche de la Banque', 0),
(484, '2017-07-27', 'Abdoulaye Faye', 'Mbour', '77 962 16 49', '1', '', '', '', '', 'Peintre', 'C D E', '100000', 'CDD', '', 'Mbour', 'Veut finaliser avec la banque', 0),
(485, '2017-07-26', 'Cheikh Dione', 'Mêdina ', '77 974 62 18', '1', '', '', '', '', 'Chauffeur', 'TAL', 'Plus de 130000', 'CDI', 'Bicis', 'Centenaire', 'Se rapproche de la banque', 0),
(486, '2017-07-27', 'Aly Sarr', 'Rue 41x18Mêdina', '77 387 88 55', '1', '', '', '', '', '', 'CARE MEDICAL', '', '', 'CBAO', 'Malick Sy', '', 0),
(487, '2017-07-26', 'Serigne Diabong', 'Fass ', '76 589 08 49', '1', '', '', '', '', 'Agent de Sêcuritê', 'Port Axesssecuritê', 'Plus de 90000', 'CDD', 'BOA', 'Zone Industrielle', 'Se rapproche de la banque', 0),
(488, '2017-07-23', 'souleymane Ndiaye', 'Libertê 3', '77 207 54 47', '1', '', '', '', '', '', 'CNQP', '', '', 'Microcred', 'Sicap Baobab', '', 0),
(489, '2017-07-25', 'Alassane Diarra', 'Sicap Mbao', '77 617 47 47', '1', '', '', '', '', 'Superviseur', 'Necotrans', 'Plus de 130000', 'CDI', 'CMS', 'Thiaroye', 'Prêt pour rejoindre la SGBS', 0),
(490, '2017-07-28', 'Jean Paul Mamadou Faye', 'Hlm Dakar', '77 986 55 03', '1', '', '', '', '', 'Agent de Sêcuritê', '', 'Plus de 80000', '', 'CMS', 'Zone Industrielle', 'Veut finaliser avec la banque', 0),
(491, '2017-07-26', 'Ndiaga Faye', 'Thiaroye sur Mer', '77 051 94 12', '1', '', '', '', '1', 'Chauffeur', 'TAL', 'Plus de 130000', 'CDI', 'Diamond Bank', 'Thiaroye', 'Veut finaliser avec la banque', 0),
(492, '2017-07-21', 'Abdou Aziz Tall', 'Guêdiawaye  ', '77 592 25 61', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(493, '2017-07-15', 'Hamad Niane', 'Mêdina Gounasse Guêdiawaye', '77 669 30 62', '1', '', '', '1', '', 'Chauffeur', 'Satrec Vitalait', 'Plus de 150000', 'CDI', '', 'Guediawaye', 'Se rapproche de la Banque', 0),
(494, '2017-07-01', 'Mouhamed Seye', 'Kaolack ', '77 629 76 45', '', '1', '', '', '', 'Commercant', 'Commerce', 'Pas de revenu', 'Pas de con', '', 'Kaolack', 'Veut un compte Epargne', 0),
(495, '2017-07-27', 'Aly  Fall', 'Rue 41x18Mêdina', '77 387 88 55', '1', '', '', '', '', '', 'CARE  MEDICALE', 'Plus de 160000', 'CDI', 'CBAO', 'Centenaire', 'Se rapproche de la banque', 0),
(496, '2017-07-12', 'Idrissa  Dême', 'Nimzath Guêdiawaye', '78411 40 59', '1', '', '', '', '', 'Agent de Sêcuritê', 'PHONIX', 'Plus de 80000', 'CDD', '', 'Guediawaye', 'Se rapproche de la Banque', 0),
(497, '2017-07-31', 'Oumar Mbaye', 'Rufisque', '77 714 22 17', '1', '', '', '1', '', 'Arrumeur', 'Afrique Mênagêrie', 'Plus de 120000', 'CDD', 'BOA', 'Rufisque', 'Se rapproche de la banque', 0),
(498, '2017-07-31', 'El hadji Babacar Faye', 'Rusfisque', '77 038 84 56', '1', '', '', '', '', 'Conducteur Chargeur', 'RP/ Service', 'Plus de 150000', 'CDI', 'CBAO', 'Rufisque', 'Se rapproche de la banque', 0),
(499, '2017-07-26', 'Malang Coly', 'Thiaroye Azur', '77 187 51 82', '1', '', '', '', '', 'Manutensionnaire', 'PORT', 'Plus de 150000', 'CDI', 'BOA', 'Rufisque', 'Se rapproche de la banque', 0),
(500, '2017-07-31', 'Ahmadou Tidiane Sarr', 'Rusfisque', '77 369 36 98', '1', '', '', '', '', 'Chauffeur', 'Jappo', 'Plus de 150000', 'CDI', 'Pamecas', 'Rufisque', 'Se rapproche de la Banque', 0),
(501, '2017-07-31', 'Moustapha Ba', 'Rusfisque', '77 069 12 11', '1', '', '', '', '', 'Chauffeur', 'RP/ Service', 'Plus de 150000', ' CDI', 'CBAO', 'Rufisque', 'Se rapproche de la Banque', 0),
(502, '2017-07-24', 'Abdou Aziz Tall', 'Guêdiawaye', '77 592 25 61', '1', '', '', '', '', 'Agent de la ploice', '', 'Plus de 100000', 'CDI', '', 'Guediawaye', 'Se rapproche de la Banque', 0),
(503, '2017-07-12', 'Mmamdou Yaya Souarê', 'Keur Mbaye Fall', '77 713 67 78', '1', '', '', '', '', 'Commercial /Livreur', 'SODAGEM', 'Plus de 150000', 'CDI', '', 'Rufisque', 'Veut finaliser avec la banque', 0),
(504, '2017-07-27', 'El Hdji Ibrahima Sakho Mbaye', 'Rufisque', '77 687 19 52', '1', '', '', '1', '1', 'Commi', 'Mairie Sicap Mbao', 'Plus de 100000', 'CDD', '', 'Rufisque', 'Veut finaliser avec la banque', 0),
(505, '2017-07-25', 'Diabe Kêbê', 'Libertê 3', '77 207 54 47', '1', '', '', '', '', 'Agent de sêcuritê', 'C N Q P', 'Plus de 80000', 'CDD', 'Microcred', 'Zone Industrielle', 'Se rapproche de la Banque', 0),
(506, '2017-07-01', 'Mame Ndella Sy', 'Petit Mbao', '78 133 41 51 ', '1', '', '', '', '', 'Commerciale', 'Olibya', 'Plus de 100000', 'CDD', '', 'Rufisque', 'Veut finaliser avec la banque SGBS', 0),
(507, '2017-07-01', 'Mor Diabêle Mbengue', 'Km 15 Rte de Rufisque', '77 619 37 43', '1', '', '', '', '', 'Chauffeur', 'N M A', 'Plus de 150000', 'CDI', '', 'Rufisque', 'Se rapproche de la Banque', 0),
(508, '', 'Doua Cissê', 'Nimzath 1 Quartier Mbaye Fall', '77 545 82 05', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye Ndiarême', '', 0),
(509, '2017-07-17', 'Mama Kamara', 'Nimzath 1 Quartier Mbaye Fall', '77 591 86 84', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye Ndiarême', '', 0),
(510, '2017-07-18', 'Boury Gueye', 'Guêdiawaye Citê Sones', '77 101 53 28', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye Ndiarême', '', 0),
(511, '2017-07-14', 'Bassirou Coulibaly', 'Guêdiawaye Citê Sofraco', '77 540 54 97', '1', '', '', '', '', 'Agent Minicipal', 'Mairie de Guêdiawaye/ CEDEPS', 'Plus de 100000', 'CDD', 'BOA', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(512, '2017-07-01', 'Medoune Ndiaye', 'Guêdiawaye Citê Sones', '77 636 06 27', '1', '', '', '', '', '', 'son propre Compte', '', '', 'BOA', 'Guediawaye  Ndiarême', '', 0),
(513, '2017-07-18', 'Waly Sêne', 'Hamo 6 Guediawaye', '77 544 63 79', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye  Ndiarême', '', 0),
(514, '2017-07-17', 'Aliou Bêye', 'Guediawaye quartier Cheikh Ibra Fall', '77 526 81 84', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye  Ndiarême', '', 0),
(515, '2017-07-19', 'Alassane Diop', 'Petit Mbao', '77 319 83 91', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(516, '2017-07-14', 'Madiodio Ndiaye', 'Marchê Ndiarême Guêdiawaye', '77 262 58 03', '1', '', '', '', '', 'Enseignant', '', '', '', '', 'Guediawaye  Ndiarême', '', 0),
(517, '2017-07-07', 'Ousmane Faye', 'Citê Senelec Guediawaye', '77 936 79 91', '1', '', '', '', '', 'Enseignant', 'Groupe Scolaire Dabakh Malick', 'Plus de 100000', 'CDD', 'Bicis', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(518, '2017-07-07', 'Donale Preira', 'Marchê Bou Bess Guediawaye', '77 567 55 85', '1', '', '', '', '', 'Enseignante', 'Groupe Scolaire Dabakh Malick', 'Plus de 100000', 'CDD', 'Pamecas', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(519, '2017-07-05', 'Adama Ndiaye', 'Fass delorme 336', '70 724 91 19', '1', '', '', '', '', 'Enseignante', 'Groupe Scolaire Dabakh Malick', '', '', 'Pamecas', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(520, '2017-07-05', 'El Hadji Diêmê', 'Citê Senelec Guediawaye', '77 283 52 88', '1', '', '', '', '', '', 'DDM', '', '', '', 'Guediawaye  Ndiarême', '', 0),
(521, '2017-07-05', 'Mariama Ba', 'Kounoune', '77 434 25 01', '1', '', '', '', '', '', 'Groupe Scolaire Dabakh Malick', '', '', 'Pamecas', 'Guediawaye  Ndiarême', '', 0),
(522, '2017-07-07', 'Gora Diagne', 'Serigne Assane Guedawaye', '78 465 30 48', '1', '', '', '', '', 'Enseignant', 'Groupe Scolaire Dabakh Malick', 'Plus de 100000', 'CDD', '', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(523, '2017-07-03', 'Matar Gueye', 'Citê Trêsors Guediawaye', '77 679 17 86', '1', '', '', '', '', 'Fêrailleur', 'CAPEX', 'Plus 90000', 'CDD', 'Pamecas', 'Guediawaye  Ndiarême', 'Veut un compte a la banque SGBS', 0),
(524, '2017-07-14', 'Saliou Sarry', 'Nimzath Tapito Guediawaye', '77 422 18 44', '1', '', '', '', '', 'Sêcuritê', ' Mairie Guediawaye', '', '', 'Bicis', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(525, '2017-07-03', 'Adanan Kassê', 'Darou Khane Guediawaye', '77 374 89 49', '1', '', '', '', '', '', 'ELEBAC', '', '', '', 'Guediawaye  Ndiarême', '', 0),
(526, '2017-07-03', 'El Hadji Abdoulaye Ngom', 'Quartier Alminko Guêdiawaye', '77 549 33 30', '1', '', '', '', '', 'Enseignant', 'Groupe Scolaire Dabakh Malick', '', '', 'Pamecas', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(527, '2017-07-07', 'Sabine Sagna', 'Citê Sones Guediawaye', '77 379 82 91', '1', '', '', '', '', 'Enseignante', 'Groupe Scolaire Dabakh Malick', 'Plus de 100000', 'CDD', 'Ecobank', 'Guediawaye  Ndiarême', 'Se rapproche de la Banque', 0),
(528, '2017-07-04', 'Odile Anna Mendy', 'Serigne Assane Guedawaye', '78 317 10 28', '1', '', '', '', '', 'Cuissiêre', 'Boulangerie Maodo Gueye', 'Plus de 80000', 'CDD', '', 'Guediawaye  Ndiarême', 'Veut un compte a la banque SGBS', 0),
(529, '2017-07-05', 'Khardiata Diol', 'Darou Rahmane 2 Guediawaye', '77 672 33 34', '1', '', '', '', '', '', 'Groupe Scolaire Dabakh Malick', '', '', 'Bicis', 'Guediawaye  Ndiarême', '', 0),
(530, '2017-07-03', 'Fatou Ndiaye', 'Citê Sones Guediawaye', '70 336 30 95', '', '', '1', '', '', 'Commercante', 'Grande Commercante', 'Pas de revenu', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Pro', 0),
(531, '2017-07-07', 'Abdoulaye Sidibê', 'Citê Asecna Guediawaye', '70 496 21 32', '', '', '1', '', '', 'Tailleur', 'son propre Compte', 'Pas de revenu', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Epargne', 0),
(532, '2017-07-07', 'Aida Diop', 'Citê Asecna Guediawaye', '70 726 90 06', '', '', '1', '', '', 'Commercante', 'Commerce', 'Pas de Salaire', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Pro', 0),
(533, '2017-07-03', 'Fatou Faye', 'Citê Senelec Guediawaye', '77 632 36 01', '', '1', '', '', '', '', 'Boulangerie Maodo Gueye', 'Pas de revenu', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Epargne', 0),
(534, '2017-07-05', 'Faty Fall', 'Citê Senelec Guediawaye', '77 252 44 52', '', '', '1', '', '', 'Commercante', 'Grande Commerce', 'Pas de revenu ', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Pro', 0),
(535, '2017-07-04', 'Mamadou Dieng', 'Citê Trêsors Guediawaye', '77 038 95 25', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Psa de Salaire', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Pro', 0),
(536, '2017-07-07', 'Aissatou Diop', 'Citê Sones Guediawaye', '77 885 50 72', '', '', '1', '', '', 'Commercante', 'Commerce', 'Pas de revenu', 'Pas de con', '', 'Guediawaye  Ndiarême', 'Sollicite un compte Pro', 0),
(537, '2017-07-03', 'Thierno Toure', 'Darou Khane Guediawaye', '78 131 69 09', '', '', '1', '', '', '', '', '', '', 'Pamecas', 'Guediawaye  Ndiarême', '', 0),
(538, '2017-07-17', 'Aliou Bêye', 'Guêdiawaye Cheikh Wade', ' 77 5286 81 84', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(539, '2017-07-19', 'Alassane Diop', 'Petit Mbao', '77  319 83 91', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(540, '2017-07-18', 'Bacry Gueye', 'Guêdiawaye', '77101 53 28', '1', '', '', '', '', '', '', '', '', '', 'Guediawaye', '', 0),
(541, '2017-07-03', 'Adnan  Kassê', 'Guêdiawaye', '77 374 89 49 ', '1', '', '', '', '', 'Technicien Batiment', 'ELEBAC', 'Plus de 150000', 'CDD', '', 'Guêdiawaye', 'Se rapproche de la Banque', 0),
(542, '2017-07-03', 'Thierno Tourê', 'Guêdiawaye', '77 131 69 09', '', '', '1', '', '', 'Commercant', 'Commerce', 'Pas de reveu', 'Pas de con', '', 'Guêdiawaye', 'Sollicite un compte Pro', 0),
(543, '2017-07-05', 'Elhadji Diêmê', 'Guêdiawaye', '77 283 52 88', '1', '', '', '', '', 'Sêcretaire', 'DDM', 'Plus de 90000', 'CDD', '', 'Guêdiawaye', 'Se rapproche de la Banque', 0),
(544, '2017-07-01', 'Mêdoune Ndiaye', 'Guêdiawaye', '77 636 06 27', '', '', '1', '', '', 'Commercant', 'Grand Commercant', 'Pas de reveu', 'Pas de con', '', 'Guêdiawaye', 'Dossier Complet/Sollicite un compte Pro', 0),
(545, '2017-07-07', 'Mamadou Diop', 'Guêdiawaye', '70 714 44 66', '', '1', '', '', '', 'Mêcanicien', 'Son propre Compte', 'Pas de reveu', 'Pas de con', '', 'Guêdiawaye', 'Sollicite un compte Epargne', 0),
(546, '2017-07-07', 'Mor Diop', 'Kounoune', '70 406 79 08', '', '1', '', '', '', 'Macon', 'Son propre Compte', 'Pas de reveu', 'Pas de con', '', 'Rufisque', 'Veut un compte epargne', 0),
(547, '', 'Lamine Seck', 'PA unitê20', '775342445', '', '1', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(548, '', 'Ablaye Cissê', 'Tableau Tivaoune', '775365009', '', '1', '', '', '', '', '', '', '', '', 'Pikine Taly Bou mack', '', 0),
(549, '', 'Barack Thiaw', 'Malika', '781529986', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(550, '', 'Mame Yero Seck', 'Pêtit Mbao', '771538183', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(551, '', 'Vezio Babacar Diallo', 'HLM 1', '776158926', '1', '', '', '', '', '', '', '', '', '', 'Sacrê CÏur 2', '', 0),
(552, '', 'Saleck Gaye', 'PA unitê 11', '774175794', '1', '', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(553, '', 'Mor Kandji', 'Thiaroye', '772275458', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(554, '', 'Menty Diawarra', '33x28 Medina', '771083007', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(555, '', 'Awa Diedhiou', 'Keur Massar', '772210904', '1', '', '', '', '', '', '', '', '', '', 'keur Massar', '', 0),
(556, '', 'Aly Ndiaye', 'Yeumbeul', '765259015', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(557, '', 'Maniang Sarr', 'Thiaroye Minam', '776179225', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(558, '', 'Abdoulaye Beye', 'Bagdad', '76818958', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(559, '', 'Seynabou Diouf', 'Rufisque', '776515014', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(560, '', 'Moustapha Mbaye', '33x28 Medina', '773874869', '', '1', '', '', '', '', '', '', '', '', 'Malick Sy', '', 0),
(561, '', 'Saleck Gaye', 'PA unitê11 ', '774177594', '', '1', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(562, '', 'Alima Ndiaye', 'Thiaroye', '773107463', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(563, '', 'Adama k Diedhiou', 'Fass Mbao', '775348473', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(564, '', 'Mbaye Gaye', 'Diamaguêne', '775680323', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(565, '', 'Adama Gueye', 'Darou Salam', '708366291', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(566, '', 'Abdoulaye Sow', 'Tableau Tivaoune', '777323488', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(567, '', 'Saliou Mbow', 'Fass Mbao', '775524083', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(568, '', 'Moussa Sall', 'Pikine', '776320663', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(569, '', 'Ibrahima Sow', 'Thiaroye', '774749677', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(570, '', 'Amadou A Ba', 'Thiaroye', '775265110', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(571, '', 'Baye Dame Diop', 'Diamaguêne', '766353044', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(572, '', 'Thierno Sao', 'Fadia', '774372040', '1', '', '', '', '', '', '', '', '', '', 'Parcelle', '', 0),
(573, '', 'Asane Ba', 'Cambêrene', '779953595', '1', '', '', '', '', '', '', '', '', '', 'Parcelle', '', 0),
(574, '', 'Thierno Samb', 'Pikine', '784729535', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(575, '', 'Mamadou Biteye', 'Pikine', '777005608', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(576, '', 'Lêmou Diop', 'Rufisque', '704751043', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(577, '', 'Bathia Ndao', '56 Citê Mdiabel Zac Mbao', '776564684', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(578, '', 'Ndiawar Hann', 'Petit Mbao', '779238565', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(579, '', 'Alioune Diagne', 'Petit Mbao', '775313880', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(580, '', 'Sirifo Badji', 'Grand Yoff', '707985170', '', '1', '', '', '', '', '', '', '', '', 'HLM5', '', 0),
(581, '', 'Ibrahima Sow', 'Fass Mbao', '773464979', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(582, '', 'Ahmadou Lamine Tall', 'Petit Mbao', '777110000', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(583, '', 'Mmame Coumba Kane', 'Fass Mbao', '761234603', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(584, '', 'Abdoulaye Diao', 'Keur Mbaye Fall', '782130865', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(585, '', 'Samba Kaloga', 'Grand Yoff', '772943561', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(586, '', 'Mamadou Ndour', 'Diamaguene', '771228602', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(587, '', 'Francois Bernard Bassêne', 'Diamaguene', '772163230', '1', '', '', '', '', '', '', '', '', '', 'Sacrê CÏur', '', 0),
(588, '', 'Alfali Niamana', 'Sicap Mbao', '780131466', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(589, '', 'Ndiaw Gueye', 'Thiaroye', '781953955', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(590, '', 'Cheikh Tourê', 'Diamaguene', '773759372', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(591, '', 'Ablaye Diouf', 'Diamaguene', '770293615', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(592, '', 'Assine Jean Baptiste', 'Guêdiawaye', '779522438', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(593, '', 'Cheikh Ndiaye', 'Mêdina', '774359626', '1', '', '', '', '', '', '', '', '', '', 'Malick Sy', '', 0),
(594, '', 'Mohamadou Abib Diouf', 'Guêdiawaye', '783556453', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(595, '', 'Aliou Sêmou Diouf', 'Dalifort', '775618909', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(596, '', 'Mmady  Ciss', 'Guinaw Rail', '773649213', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(597, '', 'Daouda Ngom', 'Diamaguene', '768690500', '', '1', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(598, '', 'Badara Ba', 'Diacksao', '776865588', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(599, '', 'Souleymane Seck', 'Pikine', '763248402', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(600, '', 'Diacko Seny', 'Sam Sam 3', '778384653', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(601, '', 'Aliou Diacko', 'Sicap Mbao', '766552505', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0);
INSERT INTO `prospect` (`idp`, `date`, `nom`, `adresse`, `telephone`, `comptcourant`, `comptepargne`, `compteprofessionnel`, `pret`, `rachat`, `fonction`, `employeur`, `niveauderevenue`, `typecontrat`, `banque`, `agencedepot`, `observation`, `statut`) VALUES
(602, '', 'Abou Kontê', 'Guediawaye', '774062078', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(603, '', 'Mamadou Tourê', 'Guediawaye', '771203637', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(604, '', 'Ibrahima Cissê', 'Yarak', '771033589', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(605, '', 'Abdoulaye Samb', 'Zac Mbao', '775400398', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(606, '', 'Al ousseynou Diba', 'Yeumbeul', '772426262', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(607, '', 'Saliou Seck', 'Pikine', '775423267', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(608, '2017-07-28', 'Mansour Diop', 'Guêdiawaye', '77 409 21 03', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(609, '2017-07-14', 'Abou Kontê', 'Guêdiawaye', '77 406 20 78', '1', '', '', '', '', 'Agent de Securitê', 'Grand Moulin de Dakar', '', '', '', 'Guêdiawaye', '', 0),
(610, '2017-07-14', 'Mamadou Tourê', 'Guêdiawaye', '77 120 36 37', '1', '', '', '', '', 'Agent de Securitê', 'Grand Moulin de Dakar', '', '', '', 'Guêdiawaye', '', 0),
(611, '2017-07-25', 'Rokhaya Ndiaye', 'Guêdiawaye', '77 151 98 29', '1', '', '', '', '', '', 'LGMD', '', '', '', 'Guêdiawaye', '', 0),
(612, '2017-07-25', 'Amade Diouf', 'Guêdiawaye', '78 396 22 34', '1', '', '', '', '', '', 'LGMD', '', '', '', 'Guêdiawaye', '', 0),
(613, '2017-07-25', 'Nogaye Ndiaye', 'Guêdiawaye', '77 907 11 51', '1', '', '', '', '', '', 'LGMD', '', '', '', 'Guêdiawaye', '', 0),
(614, '2017-07-25', 'Khady Mbengue', 'Guêdiawaye', '70 857 73 28', '1', '1', '', '', '', '', 'LGMD', '', '', '', 'Guêdiawaye', '', 0),
(615, '2017-07-06', 'Mohamadou Abib Diouf', 'Guêdiawaye', '78 355 64 53', '1', '', '', '', '', '', 'MDS', '', '', '', 'Guêdiawaye', '', 0),
(616, '2017-07-06', 'Jean Baptiste Assine', 'Guêdiawaye', '77 952 24 38', '1', '', '', '', '', '', 'MDS', '', '', '', 'Guêdiawaye', '', 0),
(617, '2017-07-18', 'Bassirou Coulibaly', 'Guêdiawaye', '77 786 25 83', '1', '', '', '', '', 'Transitaire', 'SNTT', '', '', '', 'Guêdiawaye', '', 0),
(618, '2017-07-26', 'Cheikh Tidiane Diêdhiou', 'Ouest Foire', '77 316 88 12', '1', '', '', '', '', 'Policier', '', '', '', '', 'Camberene', '', 0),
(619, '2017-07-19', 'Alassane Ndoye', 'Grand Mbao', '77 441 21 34', '1', '', '', '', '', 'Chauffeur ', 'Sotrapal', '', '', '', 'Camberene', '', 0),
(620, '2017-07-15', 'Mamadou Lamine Sadio', 'Keur Mbaye Fall', '77 646 44 86', '1', '', '', '', '', 'Technicien en Telecommunication', 'Nouvelle Vision Presta NVP', '', '', '', 'Rufisque', '', 0),
(621, '2017-07-15', 'Papa Ousmane Ba', 'Fass Mbao', '77 557 84 12', '1', '', '', '', '', 'Agent de Securitê', 'Sotrapa satrec', '', '', '', 'Rufisque', '', 0),
(622, '2017-07-20', 'Babacar Ndiaye', 'Rufisque', '77 069 15 46', '1', '', '', '', '', 'Technicien  ', 'Froid Climatisation Industrielle', '', '', '', 'Rufisque', '', 0),
(623, '2017-07-19', 'Abdou Khadre Sêne', 'Rufisque', '78 123 82 94', '1', '', '', '', '', 'Ouvier Niveau 2', 'LMDB S.A', '', '', '', 'Rufisque', '', 0),
(624, '2017-07-26', 'Youga Dieng', 'Thiaroye', '70 799 29 17', '1', '', '', '', '', 'Manutentionnaire', 'Soprema', '', '', '', 'Zone Industrielle', '', 0),
(625, '2017-07-18', 'Serigne Abdoulaye Niang', 'Rufisque', '77 116 03 53', '1', '', '', '', '', 'Agent de Securitê', 'Satrec', '', '', '', 'Rufisque', '', 0),
(626, '2017-07-18', 'Maurice Thiao', 'Rufisque', '77 244 72 65', '1', '', '', '', '', 'Maon', 'Soptrapal', '', '', '', 'Rufisque', '', 0),
(627, '2017-07-15', 'Christine Gomis', 'Rufisque', '77 968 70 48', '1', '', '', '', '', 'Femme de Menage', 'Sotrapal', '', '', '', 'Rufisque', '', 0),
(628, '2017-07-14', 'Abdoulaye Samb', 'Zack Mbao', '77 454 03 98', '1', '', '', '', '', 'Agent de Securitê', 'LGMD', '', '', '', 'Rufisque', '', 0),
(629, '2017-07-27', 'Marieme Sy', 'Rufisque', '78 282 80 44', '1', '', '', '', '', 'Secretaire', 'Canal', '', '', '', 'Rufisque', '', 0),
(630, '2017-07-27', 'Mamadou Sêne', 'Rufisque', '77 541 37 04', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(631, '2017-07-27', 'Madickê Wane', 'Sicap Mbao', '77 051 61 54', '1', '', '', '', '', 'Chauffeur ', 'Petro Service', '', '', '', 'Rufisque', '', 0),
(632, '2017-07-31', 'Mamadou Sêne', 'Rufisque', '77 154 73 55', '1', '', '', '', '', 'Technicien de surface', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(633, '2017-07-31', 'Abdoulaye Gueye', 'Rufisque', '77 430 15 71', '1', '', '', '', '', 'Manutentionnaire', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(634, '2017-07-31', 'Alioune Badara Sao', 'Rufisque', '77 716 52 88', '1', '', '', '', '', 'Chauffeur ', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(635, '2017-07-31', 'Ousmane Mamadou Ka ', 'Keur Massar', '77 895 76 16', '1', '', '', '', '', 'Chauffeur ', 'Sococim ', '', '', '', 'keur Massar', '', 0),
(636, '2017-07-31', 'Abdou Seck Gueye', 'Diamniadio Sud', '77 033 21 98', '1', '', '', '', '', 'Mecanicien Caterpillar', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(637, '2017-07-31', 'Mamadou Ndiaye', 'Rufisque', '77 452 68 17', '1', '', '', '', '', 'Mecanicien  ', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(638, '2017-07-31', 'Ndongo Gueye', 'Parcelles Assainies', '77 388 54 39', '1', '', '', '', '', 'Electricien', 'Sococim ', '', '', '', 'Keur Massar', '', 0),
(639, '2017-07-31', 'Malick  Ba Ndour', 'Rufisque', '77 410 28 38', '1', '', '', '', '', 'Electricien', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(640, '2017-07-31', 'Waly Sow', 'Rufisque', '77 426 89 09', '1', '', '', '', '', 'Responsable des Fuis', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(641, '2017-07-31', 'Pape Mandiaye Diop', 'Rufisque', '77 027 38 49', '1', '', '', '', '', 'Entretien des Machines', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(642, '2017-07-31', 'Ousmane Diop', 'Castors', '77 520 99 19', '1', '', '', '', '', 'Chauffeur ', 'Sococim ', '', '', '', 'Rufisque', '', 0),
(643, '2017-07-19', 'Maimouna Baldê', 'Petit Mbao', '77 201 97 60', '1', '', '', '', '', 'Commerante', '', '', '', '', 'Rufisque', '', 0),
(644, '', 'Awa Mbaye', 'PA Unitê 20', '783496668', '1', '', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(645, '', 'Mamor Dramê', 'PA unitê 11', '774336905', '1', '', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(646, '', 'Adjaratou Khadidiatou Beye', 'PA unitê 14', '779112821', '1', '', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(647, '', 'Babacar  Sadji', 'PA unitê21', '779504778', '', '1', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(648, '', 'Lahine Seck', 'PA unitê20', '775342445', '', '1', '', '', '', '', '', '', '', '', 'Parcelle Dior', '', 0),
(649, '', 'Khalifa Ndiaye', 'Guêdiawaye', '779414822', '', '1', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(650, '', 'Anta Ane', 'Cambêrene', '776190680', '', '1', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(651, '', 'Ibrahima Niang', 'Dalifort', '774388417', '1', '', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(652, '', 'Aliou Cissê', 'PA golf', '770727845', '1', '', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(653, '', 'Ibrahima Ndiaye', 'Yeumbeul', '773352572', '1', '', '', '', '', '', '', '', '', '', 'Cambêrne', '', 0),
(654, '', 'Aliou        Diop', 'Touba Thiaroye', '775062276', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(655, '', 'Pape Gallo   Diop', 'Rufisque Colobane 1', '773672081', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(656, '', 'Adama     Ba', 'Yeumbeul Qrt Mame Diarra', '776325738', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(657, '', 'Aliou      Coulibaly', 'Guinaw Rail', '772009186', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(658, '', 'Cheikh Mouhamed Bam Ndiaye', 'Thiaroye Sicap Mbao', '777312874', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(659, '', 'Guilane Sow', 'Citê Hilal Mariste', '775441980', '1', '', '', '', '', '', '', '', '', '', 'Roum', '', 0),
(660, '', 'Alpha Sokhna Seck', '13 Citê Nosoco Castor', '779060714', '1', '', '', '', '', '', '', '', '', '', 'Castor', '', 0),
(661, '', 'Thierno Ka', 'Diamaguene Sicap Mbao', '783161854', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(662, '', 'Cheikh Oumar Sagna', 'Tivaoune Peulh', '770403519', '1', '', '', '', '', '', '', '', '', '', 'Keur Masar', '', 0),
(663, '', 'Alioune Ndiaye', 'Camberene 2', '783302691', '1', '', '', '', '', '', '', '', '', '', 'Parcelle Case bI', '', 0),
(664, '', 'Sadio Baldê', 'Parcelle ', '772872625', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(665, '', 'Adama Manga', 'Hlm Montagne', '782443499', '1', '', '', '', '', '', '', '', '', '', 'Parcelle  Assainies', '', 0),
(666, '', 'Gaspar Mendy', 'Parcelle unitê 19', '775488468', '1', '', '', '', '', '', '', '', '', '', 'Guêdiawaye', '', 0),
(667, '', 'Moustapha Bessane', 'Wakhinane 1', '781091168', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(668, '', 'Cheikh Mouham Bamba Lam', 'Fass Mbao  Rte Boune', '771616678', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(669, '', 'Malamine Badji', 'Tally Bou Bess', '779702322', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(670, '', 'Ousmane Boubacar Diang', '120 Mka 1 Grand Yoff', '784405563', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(671, '', 'Sêrignne Fallou Niang', 'Yumbeul Nord', '778403431', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(672, '', 'Jean Paul Seck', '1346 Usine Ben Tally', '772149732', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(673, '', 'Abdoulaye Bêye', 'Foyou Thies', '777395948', '1', '', '', '', '', '', '', '', '', '', 'Thies', '', 0),
(674, '', 'Ibrahima Diop', '79 Sicap Mbao', '775469985', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(675, '', 'Arfang Faye', 'Angle Mousse Colobane', '772935715', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(676, '', 'Elimane Sakho', 'Boune 70', '705633693', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(677, '', 'Makhtar Ndao', 'Parcelle Assaines Unitê 14', '775253799', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(678, '', 'Oumar Gueye fall', 'Yarakh Kapa', '773056600', '1', '', '', '', '', '', '', '', '', '', 'Zone Industrielle', '', 0),
(679, '', 'Abdou Lahat Lo', 'Niêthie Mbar', '770702471', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(680, '', 'Fatou Seck', 'Lêona Grand Yoff', '763997141', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(681, '', 'Mouhamadou Bachir Fall', 'Yeumbeul Darou Salam 5', '776126276', '1', '', '', '', '', '', '', '', '', '', 'Malic Sy', '', 0),
(682, '', 'Oureye Sêne', 'Fass Dêlorm', '777563409', '1', '', '', '', '', '', '', '', '', '', 'Malic Sy', '', 0),
(683, '', 'Pape Abdoulaye Badji', 'Unitê 20', '774077837', '1', '', '', '', '', '', '', '', '', '', 'PA', '', 0),
(684, '', 'Amadou Anne', 'Mêdina', '774309438', '1', '', '', '', '', '', '', '', '', '', 'Centenaire', '', 0),
(685, '2017-07-20', 'Adama Diop', 'Santhiaba Rufisque', '77 542 19 30', '1', '', '', '', '', '', 'CTS', '', '', '', ' Rufisque', '', 0),
(686, '2017-07-24', 'Samba Sow', 'Sêbikotane', '77 714 26 04', '1', '', '', '', '', 'Conducteur', '', '', '', '', ' Rufisque', '', 0),
(687, '2017-07-18', 'Ousseynou Traorê', 'Thiaroye Sur Mer', '77 436 92 55', '', '1', '', '', '', '', 'Multelec', '', '', '', ' Rufisque', '', 0),
(688, '2017-07-17', 'Ousseynou Diouf', 'Ndiaga Samb Bargny', '77 739 97 76', '1', '', '', '', '', '', 'Mapathê Ndiouck', '', '', '', ' Rufisque', '', 0),
(689, '2017-07-15', 'Ousmane Gaye', 'Sêbikotane', '77 633 01 37', '1', '', '', '', '', '', 'Touba Gaz', '', '', '', ' Rufisque', '', 0),
(690, '2017-07-15', 'Youssoupha Larry Sy', 'Guêdal 3 Rufisque', '77 212 39 58', '1', '', '', '', '', 'Chaudrenier / Contre Maitre', 'GERIA', '', '', '', ' Rufisque', '', 0),
(691, '2017-07-15', 'Massamba Ndiaye', 'Rufisque', '77 425 76 77 ', '1', '', '', '', '', 'Chauffeur', 'Sotrapal', '', '', '', ' Rufisque', '', 0),
(692, '2017-07-10', 'Pape Gallo Diop', 'Colobane 1Rufisque', '77 367 20 81', '1', '', '', '', '', 'Chauffeur', 'Translogistics ', '', '', '', ' Rufisque', '', 0),
(693, '2017-07-27', 'Abdoulaye Sall', 'Rufisque', '77 498 92 27', '', '1', '', '', '', 'Technicien Batiment', 'EERI', '', '', '', ' Rufisque', '', 0),
(694, '2017-07-27', 'Amadou Baldê', 'Rufisque', '77 289 19 49', '', '1', '', '', '', 'Pompiste', 'Total Sênêgal', '', '', '', ' Rufisque', '', 0),
(695, '2017-07-20', 'Alassane Sylla', '8148 Pikine Daroukhoudosse', '77 431 57 57', '1', '', '', '', '', '', 'IAT', '', '', '', 'Zone  Industrielle', '', 0),
(696, '2017-07-26', 'Salam Seydi', 'Ouagou Niaye', '77 378 49 23', '1', '', '', '', '', '', 'Grand Moulin de Dakar', '', '', '', 'Zone  Industrielle', '', 0),
(697, '2017-07-25', 'Youssouph Sonko', 'Niarry Tally N¡1418', '77 544 75 82', '', '1', '', '', '', 'Mecanicien ', 'Dakar Terminal', '', '', '', 'Zone  Industrielle', '', 0),
(698, '2017-07-24', 'Sackor Ka', 'Dalifort', '76 331 39 33', '', '1', '', '', '', 'Coffreur', 'CSE', '', '', '', 'Zone  Industrielle', '', 0),
(699, '2017-07-29', 'Luc Diêmê', 'Parcelles Assainies', '77 249 88 55', '1', '', '', '', '', '', 'LCS', '', '', '', 'Camberene', '', 0),
(700, '2017-07-29', 'Ndiogou Badiane', 'N¡449 Parcelle Assainies U7 ', '77 429 77 84', '1', '', '', '', '', 'Chauffeur', 'Cabinet D\'Assistance  et de Formation', '', '', '', 'Camberene', '', 0),
(701, ' 11/07/201', 'Gaspard Mendy', 'Parcelles Assainies U19 N¡ 306', '77 548 84 68', '1', '', '', '', '', '', 'AXESS', '', '', '', 'Guediawaye Ndiareme', '', 0),
(702, '2017-07-28', 'Amadou Sy', '78 Citê des Enseignants Guêdiawaye', '77 207 65 34', '', '1', '', '', '', '', 'CSE', '', '', '', 'Guediawaye Ndiareme', '', 0),
(703, '2017-07-20', 'Mamadou Diallo', 'Quartier Pathê  Thiam Yeumbeul', '77 534 40 24', '1', '', '', '', '', '', 'CTS', '', '', '', 'Guediawaye Ndiareme', '', 0),
(704, '2017-07-20', 'Moustapha Alpha Ba', '44 Guêdiawaye', '77 246 98 55', '1', '', '', '', '', 'Chaudronier', 'CTS', '', '', '', 'Guediawaye Ndiareme', '', 0),
(705, '2017-07-20', 'Mame Demba Gueye', 'Guêdiawaye', '77 929 44 75', '1', '', '', '', '', '', 'CTS', '', '', '', 'Guêdiawaye', '', 0),
(706, '2017-07-28', 'Ndênê Ndao', 'Thiaroye Sur Mer', '77 944 71 24', '1', '', '', '', '', '', 'CSE', '', '', '', 'Grand Yoff', '', 0),
(707, '2017-07-25', 'Djiby Samb', 'Baba Garage', '78 377 66 09', '1', '', '', '', '', 'Pompiste ', 'Total Senegal', '', '', '', ' Malick Sy', '', 0),
(708, '2017-07-26', 'Assane Lo', 'Fass 4 Thiaroye Gar', '77 655 69 80', '1', '', '', '', '', 'Chauffeur Livreur', 'La Mêdine', '', '', '', ' Malick Sy', '', 0),
(709, '2017-07-26', 'Abdoulaye Ndiaye', 'Mêdina', '77 523 56 65', '1', '', '', '', '', '', '', '', '', '', ' Malick Sy', '', 0),
(710, '2017-07-25', 'Ibra Ngom', 'Parcelles Assainies U8 N¡241', '77 363 83 11', '1', '', '', '', '', 'Chauffeur', 'RTS', '', '', '', ' Malick Sy', '', 0),
(711, '2017-07-25', 'Ibrahima Traorê', 'Parcelles Assainies', '77 444 46 46', '1', '', '', '', '', 'Pompiste', 'Total Senegal', '', '', '', ' Malick Sy', '', 0),
(712, '2017-07-26', 'Mamadou Mbaye', 'Hlm', '77 613 35 66', '1', '', '', '', '', 'Pompiste', 'OILIBYA', '', '', '', ' Malick Sy', '', 0),
(713, '2017-07-25', 'Alioune Sock', 'Mêdina Rue 29*18', '77 030 58 27', '1', '', '', '', '', 'Chauffeur Mecanicien', 'AGS Dêmênagement', '', '', '', ' Malick Sy', '', 0),
(714, '2017-07-25', 'Bachir Badji', 'Yeumbeul', '77 720 97 09', '1', '', '', '', '', 'Frigoriste', 'Boulangerie Patiserie de Mêdina', '', '', '', ' Malick Sy', '', 0),
(715, '25/072017', 'Pierre Sêga', 'Thiaroye Gar', '76 688 55 95', '1', '', '', '', '', 'Chauffeur', 'Boulangerie Patiserie de Mêdina', '', '', '', ' Malick Sy', '', 0),
(716, '2017-07-15', 'Mouhamadou Bamba Fall', 'Guêdiawaye Citê Comico 2', '77 541 65 12', '1', '', '', '', '', '', 'COSELEC', '', '', '', ' Zone  Industrielle', '', 0),
(717, '2017-07-27', 'Malick Diop', 'Guêdiawaye Guele Tapêe 2', '77 694 95 97', '1', '', '', '', '', 'Technicien Batiment', 'AGD', '', '', '', ' Guêdiawaye Golf', '', 0),
(718, '2017-07-31', 'Mouhamed Gueye', 'Parcelles Assainies', '77 777 09 98', '1', '', '', '', '', '', 'AFTU', '', '', '', ' Guêdiawaye Golf', '', 0),
(719, '2017-07-29', 'Rodrigue Kaly', 'Parcelles Assainies U 9 N¡93', '77 387 19 44', '1', '', '', '', '', 'Magasinier', 'DHL', '', '', '', 'Camberene', '', 0),
(720, '', 'Alimou Diallo', 'Fass Mbao', '777232107', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(721, '', 'Fatou Diatta', 'Yeumbeul', '779792535', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(722, '', 'Adama Sarr', 'Keur Massar', '781358092', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(723, '', 'Modou Mbaye', 'Yeumbeul', '772689550', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(724, '', 'Bernard Fanou', 'Cetenaire', '77', '', '1', '', '', '', '', '', '', '', '', 'Centenaire', '', 0),
(725, '', 'Rokhaya Sene', 'Yeumbeul', '77', '1', '', '', '', '', '', '', '', '', '', 'Yeumbeul', '', 0),
(726, '', 'Aliou Sankhê', 'Pikine', '770190372', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(727, '', 'Diry Diongue', 'Fass Mbao', '773347059', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(728, '', 'Ibrahima Khouma', 'Rufisque', '782934814', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(729, '', 'Galass Fall', 'Pikine', '776040643', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(730, '', 'Samba Seck', 'Tableau Tivaoune', '775449849', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(731, '', 'Adama  Ba', 'Fass Mbao', '767554341', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(732, '', 'Binê Ndiaye', 'Keur Mbaye Fall', '775830295', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(733, '', 'Abdou Aziz Diop', 'Libertê 6', '776317074', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(734, '', 'Abdoulaye Gueye', 'Pikine', '773178687', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(735, '', 'Mamdou Lamine faye', 'Yarak', '779508420', '1', '', '', '', '', '', '', '', '', '', 'Km 4', '', 0),
(736, '', 'Mor Sall', 'Thiaroye', '775266557', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(737, '', 'Moussa Sonko', 'Sicap Mbao', '777061867', '', '1', '', '', '', '', '', '', '', '', 'Mbour', '', 0),
(738, '', 'Cheikh Yade', 'Fass Mbao', '777002340', '1', '', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(739, '', 'Amadou Mbow', 'Zac Mbao', '774451063', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(740, '', 'Talla Diongue', 'Yeumbeul Nord', '774108752', '', '1', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(741, '', 'Abdou Diawara', 'Fass Mbao', '701329584', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(742, '', 'Mamour Kêbê', 'Petit Mbao', '775741547', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(743, '', 'Lamine Sanê', 'Fass Mbao', '770758379', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(744, '', 'Astou Diouf', 'Poste Thiaroye', '780117767', '1', '', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(745, '', 'Ismaila Kolly', 'Fass Mbao', '774116888', '', '1', '', '', '', '', '', '', '', '', 'Rufisque', '', 0),
(746, '', 'Alassane Ba', 'Diacksao', '778871523', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(747, '', 'Mmadou Wally Ndom', 'Diacksao', '786303816', '1', '', '', '', '', '', '', '', '', '', 'Plikine', '', 0),
(748, '', 'Issaka Dramê', 'Thiaroye Azur', '772605976', '', '1', '', '', '', '', '', '', '', '', 'Plikine', '', 0),
(749, '', 'Abass Diaw', 'Diacksao', '778869553', '', '1', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(750, '', 'Fafa Mbaye', 'Sicap Mbao', '775165581', '', '1', '', '', '', '', '', '', '', '', 'Keur Massar', '', 0),
(751, '', 'Mamdou Barry', 'Diacksao', '775197404', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(752, '', 'Massamba Hann', 'Diacksao', '776621457', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0),
(753, '', 'Ibrahima Ndiaye', 'Diacksao', '776054235', '1', '', '', '', '', '', '', '', '', '', 'Libertê 5', '', 0),
(754, '', 'Amadou Ba', 'Diacksao', '772512877', '1', '', '', '', '', '', '', '', '', '', 'Pikine', '', 0),
(755, '', 'Famara Sanê', 'Diacksao', '781648873', '1', '', '', '', '', '', '', '', '', '', 'Thiaroye', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_r` int(11) NOT NULL,
  `libelle_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id_r`, `libelle_role`) VALUES
(1, 'admin'),
(2, 'gestionnaire');

-- --------------------------------------------------------

--
-- Structure de la table `table 9`
--

CREATE TABLE `table 9` (
  `COL 1` varchar(1111) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `table 9`
--

INSERT INTO `table 9` (`COL 1`) VALUES
('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'),
('<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types"><Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/><Default Extension="xml" ContentType="application/xml"/><Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/><Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/><Override PartName="/xl/theme/theme1.xml" ContentType="application/vnd.openxmlformats-officedocument.theme+xml"/><Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/><Override PartName="/xl/sharedStrings.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"/><Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml"/><Override PartName="/docProps/app.xml" ContentType="application/vnd.openxmlformats-officedocument.extended-properties+xml"/></Types>');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `idTraitement` int(11) NOT NULL,
  `Statut` tinyint(1) DEFAULT NULL,
  `commentaire` text NOT NULL,
  `idp` int(11) NOT NULL,
  `idgest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idU` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `idrole` int(11) NOT NULL,
  `id_agence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idU`, `nom`, `email`, `password`, `idrole`, `id_agence`) VALUES
(1, 'florence', 'flo@gmail.com', 'passer', 1, NULL),
(2, 'oulimata', 'ouly@gmail.com', 'passer', 2, 131),
(3, 'nael', 'nael@gmail.com', 'passer', 2, 131),
(4, 'bande', 'bande@gmail.com', 'passer', 2, 132);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idCLIENTS`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_users_2` (`id_users`),
  ADD KEY `id_agence` (`id_agence`),
  ADD KEY `id_erreur` (`id_listeProspet`);

--
-- Index pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  ADD PRIMARY KEY (`idGestionnaire`);

--
-- Index pour la table `prospect`
--
ALTER TABLE `prospect`
  ADD PRIMARY KEY (`idp`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_r`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD PRIMARY KEY (`idTraitement`),
  ADD KEY `idp` (`idp`),
  ADD KEY `idgest` (`idgest`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idU`),
  ADD KEY `idrole` (`idrole`),
  ADD KEY `id_agence` (`id_agence`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  MODIFY `idGestionnaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `prospect`
--
ALTER TABLE `prospect`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `traitement`
--
ALTER TABLE `traitement`
  MODIFY `idTraitement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`idU`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaire_ibfk_3` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaire_ibfk_4` FOREIGN KEY (`id_listeProspet`) REFERENCES `prospect` (`idp`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `Traitement_ibfk_2` FOREIGN KEY (`idgest`) REFERENCES `gestionnaire` (`idGestionnaire`),
  ADD CONSTRAINT `traitement_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `prospect` (`idp`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idrole`) REFERENCES `role` (`id_r`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
