-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 12 avr. 2021 à 14:16
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `livre`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_a` int(11) NOT NULL,
  `nom_a` varchar(30) DEFAULT NULL,
  `prenom_a` varchar(30) DEFAULT NULL,
  `date_naissance_a` date DEFAULT NULL,
  `id_p` int(11) NOT NULL,
  PRIMARY KEY (`id_a`),
  KEY `id_p` (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_a`, `nom_a`, `prenom_a`, `date_naissance_a`, `id_p`) VALUES
(81, 'Park', 'Galena', '1985-01-11', 34),
(82, 'Tillman', 'Nathaniel', '1952-12-24', 22),
(83, 'Cline', 'Cassandra', '1990-04-02', 87),
(84, 'Daniel', 'Cameron', '1963-12-02', 35),
(85, 'Wheeler', 'Ciara', '1969-08-25', 63),
(86, 'Mcleod', 'Chadwick', '1959-07-04', 26),
(87, 'Howe', 'Sonia', '1996-03-15', 88),
(88, 'Parrish', 'Ferdinand', '1986-07-26', 17),
(89, 'Wallace', 'Whilemina', '1975-04-07', 93),
(90, 'Cohen', 'Skyler', '1946-09-05', 44),
(91, 'Manning', 'Edward', '1972-11-22', 74),
(92, 'Brown', 'Marny', '1978-04-12', 66),
(93, 'Oliver', 'Yuli', '1999-01-06', 92),
(94, 'Ewing', 'Uriah', '1983-06-16', 46),
(95, 'Watson', 'Ashton', '1994-11-23', 32),
(96, 'Serrano', 'Edward', '1970-06-12', 71),
(97, 'Munoz', 'Richard', '1947-11-05', 9),
(98, 'Kemp', 'Kylee', '1990-11-20', 26),
(99, 'Horne', 'Gray', '1964-10-16', 94),
(100, 'Blanchard', 'May', '1972-08-08', 77);

-- --------------------------------------------------------

--
-- Structure de la table `edition`
--

DROP TABLE IF EXISTS `edition`;
CREATE TABLE IF NOT EXISTS `edition` (
  `id_ed` int(11) NOT NULL,
  `nom_ed` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id_ed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `edition`
--

INSERT INTO `edition` (`id_ed`, `nom_ed`) VALUES
(1, 'Hachette Livre'),
(2, 'Editis'),
(3, 'Flammarion'),
(4, 'France Loisirs'),
(5, 'Atlas'),
(6, 'Gallimard'),
(7, 'Panini'),
(8, 'L\'école des loisirs'),
(9, 'Actes Sud'),
(10, 'Les éditions de minuit'),
(11, 'Belin'),
(12, 'Edilivre'),
(13, 'Larousse'),
(14, 'l\'arche'),
(15, 'Coop Breizh'),
(16, 'Hugo'),
(17, 'Lattès'),
(18, 'Liana Levi'),
(19, 'l\'olivier'),
(20, 'l\'iconoclaste');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
CREATE TABLE IF NOT EXISTS `emprunt` (
  `id_em` int(11) NOT NULL,
  `date_em` date DEFAULT NULL,
  `delais_em` int(11) DEFAULT '0',
  `id_i` int(11) NOT NULL,
  `ref_e` varchar(254) NOT NULL,
  PRIMARY KEY (`id_em`),
  KEY `id_i` (`id_i`),
  KEY `ref_e` (`ref_e`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_em`, `date_em`, `delais_em`, `id_i`, `ref_e`) VALUES
(1, '2013-05-03', 22, 89, '20'),
(2, '2018-02-28', 30, 41, '76'),
(3, '2002-04-27', 46, 52, '36'),
(4, '2020-02-25', 97, 91, '98'),
(5, '2006-11-05', 57, 85, '84'),
(6, '2006-09-01', 77, 85, '49'),
(7, '2003-09-27', 35, 2, '23'),
(8, '2021-10-24', 6, 82, '67'),
(9, '2012-07-26', 82, 47, '91'),
(10, '2016-09-12', 5, 7, '48'),
(11, '2006-10-12', 38, 7, '8'),
(12, '2004-06-09', 42, 34, '47'),
(13, '2013-01-02', 13, 62, '35'),
(14, '2010-09-01', 72, 89, '80'),
(15, '2016-04-25', 7, 56, '16'),
(16, '2004-05-02', 68, 47, '33'),
(17, '2009-05-07', 36, 32, '12'),
(18, '2012-03-24', 97, 45, '72'),
(19, '2016-08-06', 69, 58, '86'),
(20, '2002-08-30', 22, 81, '74'),
(21, '2012-10-10', 41, 64, '54'),
(22, '2020-09-28', 79, 81, '89'),
(23, '2013-07-13', 32, 17, '64'),
(24, '2005-02-18', 94, 63, '71'),
(25, '2021-10-17', 85, 2, '98'),
(26, '2006-04-04', 91, 36, '97'),
(27, '2010-02-10', 17, 43, '80'),
(28, '2002-02-08', 10, 28, '12'),
(29, '2003-09-16', 2, 75, '71'),
(30, '2013-04-17', 61, 8, '99'),
(31, '2004-02-03', 47, 63, '84'),
(32, '2005-09-05', 95, 17, '86'),
(33, '2004-01-24', 3, 57, '45'),
(34, '2019-01-15', 91, 32, '85'),
(35, '2002-03-10', 59, 18, '99'),
(36, '2002-10-09', 85, 47, '22'),
(37, '2006-04-02', 10, 90, '91'),
(38, '2002-11-27', 67, 36, '59'),
(39, '2020-10-29', 21, 33, '11'),
(40, '2006-07-20', 15, 96, '16'),
(41, '2008-07-13', 7, 82, '77'),
(42, '2015-12-16', 23, 79, '91'),
(43, '2001-11-22', 77, 40, '1'),
(44, '2016-03-08', 40, 55, '63'),
(45, '2013-03-28', 32, 55, '62'),
(46, '2001-11-22', 37, 18, '92'),
(47, '2017-07-25', 75, 59, '74'),
(48, '2003-01-09', 38, 91, '27'),
(49, '2020-07-31', 95, 44, '91'),
(50, '2006-04-05', 49, 96, '21'),
(51, '2020-12-21', 19, 87, '27'),
(52, '2008-01-20', 48, 36, '63'),
(53, '2015-05-27', 43, 97, '19'),
(54, '2010-05-10', 8, 22, '80'),
(55, '2016-06-01', 54, 85, '31'),
(56, '2002-10-21', 78, 14, '58'),
(57, '2003-05-18', 66, 47, '10'),
(58, '2002-12-07', 21, 40, '82'),
(59, '2002-12-07', 57, 17, '22'),
(60, '2003-08-13', 74, 13, '35'),
(61, '2001-04-29', 74, 67, '76'),
(62, '2021-08-04', 53, 72, '90'),
(63, '2021-04-05', 66, 22, '43'),
(64, '2009-01-28', 87, 24, '86'),
(65, '2015-06-16', 52, 1, '29'),
(66, '2003-06-04', 87, 57, '85'),
(67, '2005-09-19', 49, 34, '22'),
(68, '2013-09-30', 23, 4, '5'),
(69, '2006-08-22', 72, 56, '24'),
(70, '2017-11-20', 55, 57, '61'),
(71, '2021-02-25', 12, 100, '13'),
(72, '2006-12-04', 44, 45, '75'),
(73, '2008-08-21', 77, 73, '87'),
(74, '2009-04-07', 98, 86, '50'),
(75, '2003-08-24', 89, 2, '74'),
(76, '2008-07-25', 85, 60, '30'),
(77, '2012-10-07', 56, 28, '70'),
(78, '2014-11-21', 53, 79, '73'),
(79, '2020-01-25', 94, 10, '47'),
(80, '2020-01-18', 60, 50, '60'),
(81, '2021-07-31', 81, 92, '52'),
(82, '2009-04-29', 22, 72, '4'),
(83, '2004-03-20', 52, 100, '63'),
(84, '2002-09-08', 40, 20, '53'),
(85, '2019-08-27', 36, 12, '37'),
(86, '2015-05-14', 66, 100, '79'),
(87, '2014-09-28', 75, 44, '3'),
(88, '2014-10-08', 63, 22, '26'),
(89, '2011-10-30', 69, 35, '42'),
(90, '2009-04-23', 92, 35, '19'),
(91, '2016-01-08', 44, 99, '66'),
(92, '2016-01-31', 96, 62, '57'),
(93, '2002-11-01', 45, 38, '53'),
(94, '2006-01-26', 97, 38, '91'),
(95, '2021-10-29', 69, 24, '38'),
(96, '2012-02-07', 23, 11, '28'),
(97, '2016-07-07', 9, 77, '25'),
(98, '2015-01-31', 77, 63, '72'),
(99, '2002-01-07', 28, 78, '95'),
(100, '2005-02-07', 52, 70, '44');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
CREATE TABLE IF NOT EXISTS `exemplaire` (
  `ref_e` varchar(254) NOT NULL,
  `id_ed` int(11) NOT NULL,
  `id_l` int(11) NOT NULL,
  PRIMARY KEY (`ref_e`),
  KEY `id_ed` (`id_ed`),
  KEY `id_l` (`id_l`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`ref_e`, `id_ed`, `id_l`) VALUES
('1', 15, 74),
('2', 19, 67),
('3', 2, 24),
('4', 5, 6),
('5', 2, 40),
('6', 13, 35),
('7', 2, 85),
('8', 9, 49),
('9', 7, 58),
('10', 11, 9),
('11', 16, 83),
('12', 17, 45),
('13', 17, 50),
('14', 6, 43),
('15', 4, 13),
('16', 1, 1),
('17', 13, 85),
('18', 7, 42),
('19', 1, 8),
('20', 14, 79),
('21', 9, 23),
('22', 4, 2),
('23', 17, 16),
('24', 12, 58),
('25', 18, 18),
('26', 11, 26),
('27', 2, 30),
('28', 5, 97),
('29', 17, 6),
('30', 5, 4),
('31', 19, 33),
('32', 5, 65),
('33', 14, 35),
('34', 5, 89),
('35', 4, 79),
('36', 5, 47),
('37', 18, 46),
('38', 8, 47),
('39', 6, 8),
('40', 4, 76),
('41', 3, 3),
('42', 9, 100),
('43', 12, 57),
('44', 7, 48),
('45', 3, 14),
('46', 18, 67),
('47', 8, 47),
('48', 9, 78),
('49', 17, 42),
('50', 15, 20),
('51', 12, 20),
('52', 20, 1),
('53', 11, 23),
('54', 17, 9),
('55', 7, 46),
('56', 11, 31),
('57', 14, 100),
('58', 9, 6),
('59', 1, 4),
('60', 16, 10),
('61', 11, 84),
('62', 8, 82),
('63', 15, 12),
('64', 18, 75),
('65', 18, 93),
('66', 1, 68),
('67', 15, 46),
('68', 15, 65),
('69', 9, 66),
('70', 3, 85),
('71', 13, 70),
('72', 7, 82),
('73', 17, 13),
('74', 20, 58),
('75', 7, 71),
('76', 12, 83),
('77', 1, 12),
('78', 6, 82),
('79', 10, 45),
('80', 11, 38),
('81', 11, 35),
('82', 4, 12),
('83', 17, 41),
('84', 2, 70),
('85', 12, 31),
('86', 6, 9),
('87', 10, 75),
('88', 13, 81),
('89', 16, 75),
('90', 4, 51),
('91', 15, 47),
('92', 11, 40),
('93', 7, 54),
('94', 2, 96),
('95', 12, 88),
('96', 15, 57),
('97', 19, 48),
('98', 5, 89),
('99', 15, 54),
('100', 9, 98);

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
CREATE TABLE IF NOT EXISTS `inscrit` (
  `id_i` int(11) NOT NULL,
  `nom_i` varchar(30) DEFAULT NULL,
  `prenom_i` varchar(30) DEFAULT NULL,
  `date_naissance_i` date DEFAULT NULL,
  `rue_i` varchar(50) DEFAULT NULL,
  `ville_i` varchar(50) DEFAULT NULL,
  `cp_i` varchar(5) DEFAULT NULL,
  `tel_i` varchar(15) DEFAULT NULL,
  `tel_portable_i` varchar(15) DEFAULT NULL,
  `email_i` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_i`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`id_i`, `nom_i`, `prenom_i`, `date_naissance_i`, `rue_i`, `ville_i`, `cp_i`, `tel_i`, `tel_portable_i`, `email_i`) VALUES
(1, 'Ulysses', 'Tucker', '2022-05-21', '2678 Elit Rd.', 'Lockerbie', '13618', NULL, '16150514 9193', 'a.odio@odioa.com'),
(2, 'Elijah', 'Dennis', '2008-08-20', '9328 Mi Street', 'Sokoto', '92670', NULL, '16310220 7416', 'Vestibulum@pellentesquemassalobortis.co.uk'),
(3, 'Matthew', 'Rivas', '2027-03-20', '406-317 Tortor St.', 'Heestert', '82915', NULL, '16580219 4778', 'ultrices.mauris@adipiscingelitCurabitur.com'),
(4, 'Price', 'Singleton', '2003-09-21', 'Ap #364-8489 Dolor Rd.', 'Saint-Rhémy-en-Bosses', '49108', NULL, '16810308 7964', 'odio@enim.net'),
(5, 'Calvin', 'Joseph', '2030-12-20', '7496 Lorem St.', 'Halberstadt', '92310', NULL, '16680905 2944', 'ullamcorper.Duis.cursus@rutrumeuultrices.com'),
(6, 'Kimberly', 'Rowe', '2024-08-21', 'Ap #820-5108 Urna. Street', 'Challand-Saint-Victor', '77905', NULL, '16110218 8859', 'cursus.et.eros@sollicitudincommodoipsum.edu'),
(7, 'Rama', 'Burris', '2003-01-22', '614-2724 Luctus Street', 'Mandasor', '39132', NULL, '16320105 3497', 'enim@commodoauctorvelit.net'),
(8, 'Murphy', 'Parsons', '2002-02-22', '8057 Sem St.', 'Rhisnes', '45265', NULL, '16160418 4380', 'Fusce.aliquam.enim@NullamnislMaecenas.edu'),
(9, 'Colin', 'Yang', '2008-10-20', 'Ap #804-9101 Orci. St.', 'Montresta', '68792', NULL, '16990919 7445', 'tellus@nonleo.com'),
(10, 'Garrett', 'Kinney', '2010-11-21', '137-3026 Sapien, Rd.', 'Camrose', '43230', NULL, '16060305 6748', 'aliquet.odio@tortornibh.co.uk'),
(11, 'Daria', 'Brock', '2023-04-21', '655-2386 Nullam Rd.', 'Limbach-Oberfrohna', '96159', NULL, '16710624 9977', 'elementum@nuncacmattis.com'),
(12, 'Tyler', 'Todd', '2031-05-20', '423-4559 Nunc St.', 'Zoetermeer', '10532', NULL, '16781214 0080', 'ut.ipsum.ac@Sedeunibh.co.uk'),
(13, 'Mannix', 'Cotton', '2008-11-21', 'Ap #960-4395 Aenean Av.', 'Fredericton', '26892', NULL, '16520405 2301', 'Etiam@Integervitaenibh.co.uk'),
(14, 'Ila', 'Vincent', '2023-07-21', '400-1679 Non, Av.', 'Tywyn', '49387', NULL, '16601004 3658', 'Donec.dignissim@natoque.com'),
(15, 'Vance', 'Stuart', '2019-05-21', '830-6402 Velit. Road', 'Hull', '98179', NULL, '16780406 1153', 'risus.quis.diam@orciUtsagittis.net'),
(16, 'Lucas', 'Colon', '2017-09-20', 'Ap #648-363 Eleifend Road', 'Brandon', '05385', NULL, '16280901 5544', 'interdum.Nunc.sollicitudin@mattis.edu'),
(17, 'Chase', 'Vaughn', '2007-12-21', '845-7420 Arcu Ave', 'Quilaco', '50332', NULL, '16310729 2652', 'tellus@blandit.org'),
(18, 'Yetta', 'Warren', '2010-09-21', 'Ap #211-4025 Curabitur Street', 'Hamburg', '64780', NULL, '16031011 0630', 'dictum.sapien@dignissimlacusAliquam.org'),
(19, 'TaShya', 'Vance', '2013-04-20', '122-9405 Interdum. Av.', 'Mottola', '56446', NULL, '16630109 7041', 'fringilla.est@enimnisl.edu'),
(20, 'Cecilia', 'Glass', '2004-11-20', 'P.O. Box 866, 7687 Donec Street', 'Haguenau', '16995', NULL, '16450304 7914', 'lacinia.at.iaculis@famesac.co.uk'),
(21, 'Caryn', 'Hopkins', '2006-07-21', 'P.O. Box 648, 8002 Magna Rd.', 'Legal', '46595', NULL, '16570607 0199', 'mauris@metusIn.org'),
(22, 'Sierra', 'Solomon', '2027-07-21', 'Ap #735-7724 Odio, Road', 'Delft', '66082', NULL, '16750728 5133', 'a.dui.Cras@in.org'),
(23, 'Melvin', 'Maldonado', '2010-12-21', 'Ap #222-9567 Luctus. Av.', 'Stralsund', '64734', NULL, '16550415 7412', 'Nullam.suscipit.est@ataugueid.ca'),
(24, 'Clayton', 'Gonzalez', '2016-06-21', 'P.O. Box 442, 5222 Dui Av.', 'Terzorio', '32226', NULL, '16950602 8308', 'tempor.augue@Nulla.edu'),
(25, 'Ferris', 'Willis', '2012-10-20', 'Ap #173-2821 Integer Street', 'Beervelde', '28683', NULL, '16010902 0289', 'libero@Maecenasmifelis.ca'),
(26, 'Levi', 'Sargent', '2027-02-21', '3019 Nunc St.', 'Felitto', '67536', NULL, '16000511 8385', 'Etiam@quispedeSuspendisse.co.uk'),
(27, 'Shad', 'Flowers', '2011-12-21', '4816 Cras Street', 'March', '60736', NULL, '16071023 0681', 'est@auctorvitaealiquet.co.uk'),
(28, 'Raya', 'Alvarado', '2020-03-20', '675-2874 Non, Road', 'Loksbergen', '52731', NULL, '16791216 2596', 'sociis.natoque.penatibus@convallisest.co.uk'),
(29, 'Julian', 'Cotton', '2009-05-21', 'Ap #438-5493 Molestie Rd.', 'Warspite', '32945', NULL, '16021016 5569', 'nec.diam.Duis@convallisante.net'),
(30, 'Ezekiel', 'Russell', '2025-11-20', 'P.O. Box 679, 1520 Imperdiet Av.', 'Marbais', '54007', NULL, '16600711 5345', 'purus.mauris@idmagna.net'),
(31, 'Ignatius', 'Wilkins', '2004-04-21', 'P.O. Box 936, 7940 Velit. St.', 'Seattle', '60028', NULL, '16490622 5869', 'egestas.Aliquam.nec@euismod.ca'),
(32, 'Cadman', 'Morgan', '2014-05-21', '2964 Scelerisque Street', 'Darwin', '66368', NULL, '16720702 3685', 'Nunc.mauris.elit@sodalesnisimagna.com'),
(33, 'Anastasia', 'Peck', '2001-12-21', '9491 A, St.', 'Serik', '04116', NULL, '16370813 4485', 'nunc@elementumpurus.edu'),
(34, 'Ariana', 'Camacho', '2031-10-20', 'Ap #393-8401 Accumsan Ave', 'Harlow', '28826', NULL, '16101014 0349', 'dapibus.quam@metus.co.uk'),
(35, 'Anthony', 'Wilkinson', '2013-11-21', '961-7326 Ut St.', 'San Luis Potosí', '05604', NULL, '16090207 9599', 'iaculis.enim.sit@odiovel.ca'),
(36, 'Owen', 'Brock', '2016-05-21', 'P.O. Box 899, 3513 Adipiscing Rd.', 'Rohtak', '04333', NULL, '16591224 0099', 'nisl@ligula.net'),
(37, 'Suki', 'Haney', '2014-09-21', '602-5618 Donec Road', 'Scorrano', '15193', NULL, '16490725 4066', 'mauris.rhoncus@pellentesqueSed.org'),
(38, 'Lucian', 'Coleman', '2001-12-21', '356-4214 Lacus. Av.', 'Joondalup', '77894', NULL, '16061128 7640', 'sodales.elit@sem.net'),
(39, 'Howard', 'Page', '2031-01-21', '285-7005 Nec, Road', 'Tufo', '78088', NULL, '16780704 0352', 'In@ipsumSuspendissenon.org'),
(40, 'Kylie', 'Moran', '2023-11-20', 'P.O. Box 590, 8674 Lorem Road', 'Wedel', '20517', NULL, '16380825 0231', 'Ut.semper@sagittisDuisgravida.edu'),
(41, 'Noble', 'Daugherty', '2002-01-21', 'Ap #744-8748 Lacus. Road', 'Bury St. Edmunds', '58305', NULL, '16621028 8764', 'sed@mollisnoncursus.org'),
(42, 'Kyla', 'Hale', '2028-06-21', '5537 Arcu. Street', 'Holman', '61498', NULL, '16420606 0966', 'nulla@Phasellusnulla.ca'),
(43, 'Kato', 'Gilmore', '2019-04-21', 'P.O. Box 358, 7445 Nam Ave', 'Drumheller', '05270', NULL, '16920223 5009', 'mi@sed.ca'),
(44, 'Aubrey', 'Curtis', '2002-05-20', 'P.O. Box 493, 6524 Ipsum. Avenue', 'Limoges', '39972', NULL, '16350704 5130', 'luctus.ipsum@ultricesa.ca'),
(45, 'Daria', 'Armstrong', '2029-07-21', '5162 Sed Street', 'Whitchurch', '63086', NULL, '16820129 2474', 'nascetur@quisarcuvel.edu'),
(46, 'Alexandra', 'Vaughan', '2006-06-21', 'P.O. Box 694, 7815 Ante St.', 'Eigenbrakel', '88843', NULL, '16931126 0617', 'Cras.vehicula.aliquet@fermentumvel.net'),
(47, 'Haviva', 'Conner', '2007-10-20', '645-1070 Nunc Avenue', 'Philadelphia', '72793', NULL, '16350707 9766', 'quis.arcu@torquent.co.uk'),
(48, 'Iona', 'Campbell', '2028-05-20', '5378 Elit, St.', 'Doues', '97519', NULL, '16471008 4668', 'mi.ac.mattis@afeugiat.org'),
(49, 'Chaney', 'Coleman', '2006-02-21', '1344 Eu, Rd.', 'Amlwch', '37507', NULL, '16900518 2036', 'nunc.ac@nondapibusrutrum.co.uk'),
(50, 'Zia', 'Puckett', '2022-09-20', '1522 Lacus. Road', 'Chimbote', '07047', NULL, '16230427 0784', 'nunc.risus.varius@liberoProinsed.org'),
(51, 'Buffy', 'Floyd', '2024-01-21', '4476 Eu, Rd.', 'Rattray', '55248', NULL, '16491105 6549', 'eu@aliquet.net'),
(52, 'Murphy', 'Morris', '2022-02-21', 'Ap #102-9701 Dolor St.', 'Fort William', '29079', NULL, '16350217 9652', 'congue.In@vulputate.ca'),
(53, 'Kareem', 'Franco', '2012-09-20', '848-4296 Ante St.', 'Varna/Vahrn', '97576', NULL, '16590122 7669', 'amet.ultricies@diamSed.net'),
(54, 'Harlan', 'Bryant', '2016-10-21', 'Ap #199-5428 Non Av.', 'Comox', '59471', NULL, '16450213 8797', 'eu@iaculisenimsit.org'),
(55, 'Cameron', 'Vega', '2024-11-20', 'Ap #891-4153 Tempor, St.', 'Garaguso', '59378', NULL, '16790413 5477', 'erat@rutrumlorem.ca'),
(56, 'Cheryl', 'Campbell', '2007-08-21', 'Ap #942-8465 Tortor Street', 'Castel del Giudice', '08552', NULL, '16470902 6274', 'libero@nonegestas.co.uk'),
(57, 'Taylor', 'Fleming', '2028-06-21', '323-5488 Amet Street', 'Kemerovo', '48246', NULL, '16441103 1943', 'tempus@Nullamvitae.net'),
(58, 'MacKenzie', 'Lewis', '2015-11-21', 'P.O. Box 390, 916 Etiam Avenue', 'Stockton-on-Tees', '71200', NULL, '16951026 2190', 'condimentum@molestieorci.com'),
(59, 'Minerva', 'Pierce', '2026-11-20', 'P.O. Box 840, 2884 Vitae Ave', 'Matera', '44135', NULL, '16461001 6166', 'turpis.In.condimentum@Pellentesquetincidunt.co.uk'),
(60, 'Driscoll', 'Brewer', '2017-08-20', 'Ap #217-3385 Ullamcorper St.', 'Malahide', '66141', NULL, '16731026 7930', 'Aliquam.adipiscing@tinciduntcongueturpis.com'),
(61, 'Mason', 'Bond', '2014-01-22', '776-8163 Nisl. Rd.', 'Waiblingen', '43260', NULL, '16230303 4223', 'mi.lacinia@dolornonummyac.ca'),
(62, 'Danielle', 'Wilson', '2028-11-20', 'P.O. Box 559, 1716 Dignissim. Street', 'Minto', '03472', NULL, '16960513 1086', 'eu@parturient.net'),
(63, 'Xandra', 'Frazier', '2014-05-20', 'Ap #940-6248 Quis Av.', 'Paranaguá', '15930', NULL, '16880712 5987', 'tempus.non@ac.net'),
(64, 'Asher', 'Bright', '2011-06-21', '890-3782 Nullam Street', 'Lakewood', '99839', NULL, '16590924 3734', 'urna.suscipit@condimentumeget.org'),
(65, 'Imani', 'Chase', '2013-02-20', 'Ap #878-7036 Nec Road', 'Gualdo Tadino', '96292', NULL, '16140612 1655', 'Nunc@Quisque.com'),
(66, 'Vanna', 'Rowe', '2016-05-21', '1102 Commodo St.', 'Lahore', '70436', NULL, '16070514 5522', 'Integer.sem@luctusut.com'),
(67, 'Nasim', 'Herman', '2009-08-21', '7119 Sodales Av.', 'Dorval', '87878', NULL, '16430617 3933', 'orci@vitae.com'),
(68, 'Lareina', 'Cox', '2028-01-22', 'Ap #812-3329 Fermentum Ave', 'Portsmouth', '16048', NULL, '16780521 0726', 'eget.odio@tristiqueaceleifend.edu'),
(69, 'Adele', 'Merrill', '2011-06-21', 'Ap #727-6101 Blandit Rd.', 'Bad Homburg v. d. Höhe', '10668', NULL, '16020104 8899', 'dictum.augue.malesuada@nullaDonecnon.co.uk'),
(70, 'Quinn', 'Mays', '2024-07-20', '176-8446 Augue Rd.', 'Chancay', '15602', NULL, '16380324 1854', 'nonummy@elit.co.uk'),
(71, 'Olivia', 'Reese', '2002-03-21', '8230 Ac Street', 'Cumnock', '54491', NULL, '16991218 5718', 'Suspendisse.dui.Fusce@semmolestiesodales.org'),
(72, 'Yetta', 'Curry', '2001-10-21', 'Ap #920-849 Sit St.', 'Ganganagar', '24279', NULL, '16220301 7377', 'enim@magnaDuis.org'),
(73, 'Isabelle', 'Rice', '2021-12-20', '461-6649 Curabitur Avenue', 'Koninksem', '87465', NULL, '16810403 8149', 'dolor.nonummy@estNunc.com'),
(74, 'Tatyana', 'Lang', '2022-03-20', 'P.O. Box 579, 9131 Vel Rd.', 'Samara', '42602', NULL, '16081018 0976', 'blandit@massa.com'),
(75, 'Evelyn', 'Rodriquez', '2024-03-21', 'P.O. Box 252, 8557 Commodo St.', 'Zonhoven', '91617', NULL, '16131222 7489', 'enim.Curabitur.massa@aliquetdiamSed.co.uk'),
(76, 'Kane', 'Bryant', '2012-04-20', '1868 Sagittis Road', 'Halesowen', '15446', NULL, '16801225 9712', 'libero@tincidunt.edu'),
(77, 'Reece', 'Craig', '2004-12-20', 'P.O. Box 348, 9271 Blandit Av.', 'Loreto', '31737', NULL, '16331013 6399', 'et.ipsum@varius.edu'),
(78, 'Gwendolyn', 'Snider', '2023-03-20', '842-7274 At Ave', 'Spittal an der Drau', '54029', NULL, '16991205 4955', 'Donec@porttitortellus.ca'),
(79, 'Herrod', 'Mcintyre', '2005-04-21', '2462 Fusce Avenue', 'Colwood', '89898', NULL, '16680825 6157', 'et@quislectusNullam.net'),
(80, 'Tarik', 'Anderson', '2029-10-21', '9246 Mi Avenue', 'Oberpullendorf', '51490', NULL, '16700907 2120', 'ac.arcu@egestasligulaNullam.ca'),
(81, 'Nola', 'Good', '2008-05-20', 'P.O. Box 155, 4466 Volutpat St.', 'Colombes', '76275', NULL, '16371120 4788', 'id.erat.Etiam@cursusluctusipsum.edu'),
(82, 'Hedwig', 'Hinton', '2006-03-21', 'Ap #258-1891 Sed Road', 'Mombaruzzo', '03838', NULL, '16630330 4700', 'Donec.sollicitudin.adipiscing@aliquetlibero.org'),
(83, 'Odette', 'Larsen', '2031-03-20', '246-9554 Nunc Street', 'Spaniard\'s Bay', '05047', NULL, '16140808 2129', 'magna.Praesent.interdum@porttitortellus.co.uk'),
(84, 'Yoshi', 'Eaton', '2011-06-21', 'P.O. Box 140, 6229 Euismod St.', 'Corozal', '52641', NULL, '16040504 2235', 'Sed.et.libero@leo.ca'),
(85, 'Irma', 'Ramsey', '2030-01-21', 'Ap #832-3902 Mauris. Rd.', 'Valle del Guamuez', '01646', NULL, '16321121 6605', 'pharetra.felis.eget@dolorNullasemper.com'),
(86, 'Rachel', 'Simmons', '2029-07-21', 'Ap #920-7329 Turpis. Street', 'Silverton', '11171', NULL, '16380103 0713', 'non@congueIn.edu'),
(87, 'Candice', 'Summers', '2031-05-20', '8552 Fringilla. St.', 'Pietracatella', '07001', NULL, '16680907 1647', 'mollis@leoelementumsem.edu'),
(88, 'Gregory', 'Bean', '2017-10-20', 'Ap #456-6260 Consequat Avenue', 'Gunpo', '23472', NULL, '16721110 5379', 'magna.Nam.ligula@scelerisquesed.net'),
(89, 'Daphne', 'Lowe', '2023-12-21', '250-1665 Adipiscing Ave', 'Caldera', '05378', NULL, '16470405 3661', 'arcu.Morbi.sit@duiin.com'),
(90, 'Wallace', 'Buckner', '2004-02-20', '417-9191 Mauris, Av.', 'Prince George', '88115', NULL, '16231229 9965', 'sit@erat.net'),
(91, 'Lacey', 'Baxter', '2026-07-20', 'Ap #626-4224 Nam St.', 'Dunbar', '50809', NULL, '16510706 8545', 'malesuada.fames.ac@eget.edu'),
(92, 'Gregory', 'Quinn', '2023-04-21', 'Ap #160-3472 Dapibus Rd.', 'Molenbeersel', '87301', NULL, '16940227 0558', 'nulla.vulputate.dui@blanditenimconsequat.edu'),
(93, 'Peter', 'Marsh', '2026-10-20', '293-2712 Sed Ave', 'Creil', '06443', NULL, '16080412 6597', 'tellus.Aenean@Aliquamornarelibero.org'),
(94, 'Barclay', 'Mcdaniel', '2017-12-21', '717-2438 Neque Ave', 'Criciúma', '23586', NULL, '16900223 4053', 'ipsum.Suspendisse@vestibulum.edu'),
(95, 'Talon', 'Howe', '2006-12-20', '5265 Integer St.', 'Troitsk', '13340', NULL, '16750102 5600', 'morbi.tristique@ultrices.net'),
(96, 'Christopher', 'Boyer', '2016-04-21', 'Ap #765-9322 Nam Rd.', 'Drancy', '87953', NULL, '16590216 9381', 'arcu.Vestibulum.ante@maurissapien.org'),
(97, 'Nero', 'Simmons', '2008-02-21', 'Ap #409-3613 Metus Rd.', 'Neyveli', '52182', NULL, '16550518 5016', 'dis.parturient.montes@sedleo.net'),
(98, 'Alisa', 'Hayden', '2015-02-20', '711-1969 Morbi Rd.', 'Huechuraba', '02298', NULL, '16800904 2527', 'erat.nonummy.ultricies@habitantmorbitristique.net'),
(99, 'Carla', 'Kirby', '2015-08-21', 'Ap #981-3205 Vitae St.', 'Beaumont', '38725', NULL, '16401128 0684', 'eu@noncursus.net'),
(100, 'Sean', 'Stuart', '2028-02-21', '368-2440 Aliquam, Avenue', 'Acerra', '27726', NULL, '16570805 0769', 'Curabitur.dictum.Phasellus@tempuseu.com');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `id_l` int(11) NOT NULL,
  `titre_l` varchar(254) DEFAULT NULL,
  `annee_l` varchar(4) DEFAULT NULL,
  `resume_l` text,
  `id_t` int(11) NOT NULL,
  PRIMARY KEY (`id_l`),
  KEY `id_t` (`id_t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_l`, `titre_l`, `annee_l`, `resume_l`, `id_t`) VALUES
(1, 'nisi nibh lacinia', '2011', 'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 7),
(2, 'at arcu. Vestibulum', '2022', 'arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor', 3),
(3, 'non nisi. Aenean', '2007', 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.', 9),
(4, 'vitae purus gravida', '2011', 'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum', 2),
(5, 'sem elit, pharetra', '2005', 'Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,', 10),
(6, 'mattis. Cras eget', '2018', 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 9),
(7, 'at, libero. Morbi', '2020', 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', 12),
(8, 'Integer tincidunt aliquam', '2018', 'id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam', 5),
(9, 'mi felis, adipiscing', '2006', 'dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla,', 3),
(10, 'ullamcorper viverra. Maecenas', '2012', 'Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', 3),
(11, 'Nunc ullamcorper, velit', '2021', 'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 10),
(12, 'Duis volutpat nunc', '2014', 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum,', 10),
(13, 'mauris eu elit.', '2009', 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris', 9),
(14, 'Nulla interdum. Curabitur', '2007', 'ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra', 1),
(15, 'tellus eu augue', '2005', 'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula', 5),
(16, 'enim. Mauris quis', '2005', 'nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus,', 8),
(17, 'luctus ut, pellentesque', '2018', 'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies', 4),
(18, 'tortor. Nunc commodo', '2020', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris', 9),
(19, 'libero. Proin sed', '2012', 'Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede', 13),
(20, 'Quisque ornare tortor', '2021', 'eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', 13),
(21, 'pede, malesuada vel,', '2013', 'id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare', 6),
(22, 'magna. Nam ligula', '2007', 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus', 6),
(23, 'Nunc lectus pede,', '2015', 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante.', 1),
(24, 'Nam ac nulla.', '2019', 'erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat', 3),
(25, 'orci lacus vestibulum', '2018', 'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,', 13),
(26, 'lorem eu metus.', '2007', 'turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit', 5),
(27, 'eros non enim', '2005', 'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 7),
(28, 'mauris. Integer sem', '2020', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque', 7),
(29, 'amet risus. Donec', '2021', 'magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 14),
(30, 'dictum. Proin eget', '2008', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.', 14),
(31, 'Nam nulla magna,', '2011', 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 13),
(32, 'quam. Pellentesque habitant', '2008', 'sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 7),
(33, 'Integer aliquam adipiscing', '2018', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', 13),
(34, 'semper pretium neque.', '2021', 'aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam', 12),
(35, 'mi lorem, vehicula', '2018', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer', 7),
(36, 'mattis semper, dui', '2007', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac', 4),
(37, 'a purus. Duis', '2020', 'dui. Cum sociis natoque penatibus et magnis dis parturient montes,', 3),
(38, 'mauris blandit mattis.', '2010', 'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', 1),
(39, 'egestas. Fusce aliquet', '2008', 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis', 5),
(40, 'risus a ultricies', '2015', 'quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse', 11),
(41, 'odio. Nam interdum', '2021', 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc', 4),
(42, 'auctor. Mauris vel', '2007', 'semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', 11),
(43, 'Cras dolor dolor,', '2018', 'Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis', 3),
(44, 'Duis dignissim tempor', '2013', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 3),
(45, 'ante bibendum ullamcorper.', '2004', 'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 9),
(46, 'et malesuada fames', '2021', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 9),
(47, 'a tortor. Nunc', '2018', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel', 7),
(48, 'Maecenas iaculis aliquet', '2005', 'quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum', 4),
(49, 'eu, ultrices sit', '2007', 'arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed', 1),
(50, 'risus. In mi', '2018', 'eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,', 1),
(51, 'nonummy ac, feugiat', '2020', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis', 3),
(52, 'volutpat nunc sit', '2012', 'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.', 6),
(53, 'Suspendisse eleifend. Cras', '2013', 'augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam', 12),
(54, 'enim. Curabitur massa.', '2005', 'sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla', 4),
(55, 'orci lacus vestibulum', '2005', 'lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin', 8),
(56, 'natoque penatibus et', '2020', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse', 3),
(57, 'ante ipsum primis', '2019', 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,', 7),
(58, 'Donec est mauris,', '2016', 'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 6),
(59, 'rutrum eu, ultrices', '2008', 'fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', 7),
(60, 'varius ultrices, mauris', '2010', 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 12),
(61, 'sagittis. Duis gravida.', '2013', 'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis', 2),
(62, 'lorem, auctor quis,', '2004', 'mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris', 2),
(63, 'aliquet nec, imperdiet', '2013', 'est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu', 11),
(64, 'ac sem ut', '2021', 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', 2),
(65, 'eu, ultrices sit', '2019', 'sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 10),
(66, 'pretium et, rutrum', '2020', 'risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos', 5),
(67, 'sed libero. Proin', '2017', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit', 7),
(68, 'elit, pretium et,', '2015', 'id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam', 4),
(69, 'Donec egestas. Duis', '2015', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at', 8),
(70, 'ultrices, mauris ipsum', '2019', 'aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus', 6),
(71, 'Nam consequat dolor', '2011', 'eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean', 8),
(72, 'fringilla ornare placerat,', '2010', 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula', 13),
(73, 'ornare, facilisis eget,', '2013', 'Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam', 9),
(74, 'Curabitur egestas nunc', '2004', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 4),
(75, 'placerat, augue. Sed', '2008', 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus', 5),
(76, 'fringilla euismod enim.', '2009', 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat.', 7),
(77, 'eu odio tristique', '2016', 'cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut,', 10),
(78, 'gravida sagittis. Duis', '2005', 'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis', 9),
(79, 'nibh sit amet', '2005', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', 8),
(80, 'dictum eu, eleifend', '2015', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', 9),
(81, 'ornare placerat, orci', '2016', 'et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', 8),
(82, 'luctus vulputate, nisi', '2014', 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', 10),
(83, 'augue eu tellus.', '2014', 'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit', 3),
(84, 'Sed pharetra, felis', '2020', 'mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan', 4),
(85, 'parturient montes, nascetur', '2005', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec', 14),
(86, 'Fusce aliquam, enim', '2004', 'sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', 12),
(87, 'lorem fringilla ornare', '2007', 'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 11),
(88, 'elit. Nulla facilisi.', '2012', 'neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 7),
(89, 'Nam porttitor scelerisque', '2013', 'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 13),
(90, 'nunc interdum feugiat.', '2004', 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', 11),
(91, 'blandit. Nam nulla', '2015', 'elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 5),
(92, 'dapibus quam quis', '2008', 'amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan', 8),
(93, 'fringilla mi lacinia', '2005', 'lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,', 8),
(94, 'tristique pellentesque, tellus', '2010', 'sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur', 7),
(95, 'rutrum magna. Cras', '2014', 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent', 1),
(96, 'ornare placerat, orci', '2005', 'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci.', 12),
(97, 'dui. Fusce diam', '2019', 'orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', 9),
(98, 'interdum ligula eu', '2008', 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis', 14),
(99, 'Fusce aliquet magna', '2017', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.', 14),
(100, 'mauris ut mi.', '2010', 'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 4);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id_p` int(11) NOT NULL,
  `nom_p` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id_p`, `nom_p`) VALUES
(0, 'Bahrain'),
(1, 'Saint Helena, Ascension and Tristan da Cunha'),
(2, 'Paraguay'),
(3, 'Panama'),
(4, 'Papua New Guinea'),
(5, 'Macedonia'),
(6, 'Slovakia'),
(7, 'Wallis and Futuna'),
(8, 'Falkland Islands'),
(9, 'Timor-Leste'),
(10, 'Monaco'),
(11, 'Congo, the Democratic Republic of the'),
(12, 'Haiti'),
(13, 'Syria'),
(14, 'Liberia'),
(15, 'Sao Tome and Principe'),
(16, 'Montserrat'),
(17, 'Seychelles'),
(18, 'Oman'),
(19, 'Saint Kitts and Nevis'),
(20, 'Oman'),
(21, 'Czech Republic'),
(22, 'Mayotte'),
(23, 'Tajikistan'),
(24, 'Cyprus'),
(25, 'Sao Tome and Principe'),
(26, 'Estonia'),
(27, 'French Southern Territories'),
(28, 'Sint Maarten'),
(29, 'Guam'),
(30, 'Vanuatu'),
(31, 'Paraguay'),
(32, 'Cameroon'),
(33, 'Cocos (Keeling) Islands'),
(34, 'Guernsey'),
(35, 'New Zealand'),
(36, 'Grenada'),
(37, 'Togo'),
(38, 'Mozambique'),
(39, 'Monaco'),
(40, 'Somalia'),
(41, 'Bulgaria'),
(42, 'Czech Republic'),
(43, 'Australia'),
(44, 'India'),
(45, 'Holy See (Vatican City State)'),
(46, 'Saint Kitts and Nevis'),
(47, 'Moldova'),
(48, 'United States'),
(49, 'Hong Kong'),
(50, 'Indonesia'),
(51, 'Denmark'),
(52, 'Italy'),
(53, 'Equatorial Guinea'),
(54, 'Taiwan'),
(55, 'Russian Federation'),
(56, 'Philippines'),
(57, 'Sao Tome and Principe'),
(58, 'Bosnia and Herzegovina'),
(59, 'Mayotte'),
(60, 'Timor-Leste'),
(61, 'Virgin Islands, United States'),
(62, 'Eritrea'),
(63, 'Canada'),
(64, 'Chile'),
(65, 'Guinea'),
(66, 'Canada'),
(67, 'Dominica'),
(68, 'Armenia'),
(69, 'El Salvador'),
(70, 'Guadeloupe'),
(71, 'Australia'),
(72, 'Isle of Man'),
(73, 'Dominica'),
(74, 'Guyana'),
(75, 'Thailand'),
(76, 'Tokelau'),
(77, 'Azerbaijan'),
(78, 'Eritrea'),
(79, 'Paraguay'),
(80, 'Venezuela'),
(81, 'Afghanistan'),
(82, 'Jamaica'),
(83, 'Kenya'),
(84, 'Turks and Caicos Islands'),
(85, 'Cameroon'),
(86, 'Pakistan'),
(87, 'Cape Verde'),
(88, 'Madagascar'),
(89, 'Venezuela'),
(90, 'British Indian Ocean Territory'),
(91, 'Kyrgyzstan'),
(92, 'Benin'),
(93, 'Luxembourg'),
(94, 'Hong Kong'),
(95, 'Bouvet Island'),
(96, 'Luxembourg'),
(97, 'Saint Lucia'),
(98, 'Jordan'),
(99, 'Swaziland'),
(100, 'Australia');

-- --------------------------------------------------------

--
-- Structure de la table `rediger`
--

DROP TABLE IF EXISTS `rediger`;
CREATE TABLE IF NOT EXISTS `rediger` (
  `id_a` int(11) NOT NULL,
  `id_l` int(11) NOT NULL,
  PRIMARY KEY (`id_a`,`id_l`),
  KEY `id_l` (`id_l`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rediger`
--

INSERT INTO `rediger` (`id_a`, `id_l`) VALUES
(81, 30),
(81, 93),
(81, 99),
(82, 12),
(82, 17),
(82, 48),
(82, 49),
(82, 66),
(83, 9),
(83, 23),
(83, 24),
(83, 44),
(83, 45),
(83, 78),
(83, 93),
(84, 5),
(84, 10),
(84, 14),
(84, 15),
(84, 20),
(84, 36),
(84, 41),
(84, 45),
(84, 100),
(85, 8),
(85, 26),
(85, 28),
(85, 43),
(85, 57),
(85, 58),
(85, 62),
(85, 89),
(86, 22),
(86, 23),
(86, 64),
(86, 72),
(86, 80),
(86, 92),
(87, 46),
(87, 90),
(87, 100),
(88, 3),
(88, 4),
(88, 6),
(88, 16),
(88, 21),
(88, 27),
(88, 38),
(88, 53),
(88, 64),
(88, 77),
(89, 6),
(89, 7),
(89, 10),
(89, 36),
(89, 71),
(89, 79),
(89, 99),
(90, 11),
(90, 26),
(90, 39),
(90, 48),
(90, 63),
(90, 64),
(90, 67),
(90, 85),
(91, 6),
(91, 10),
(91, 58),
(91, 79),
(91, 91),
(91, 95),
(92, 4),
(92, 13),
(92, 43),
(92, 51),
(92, 58),
(92, 62),
(92, 65),
(92, 66),
(92, 67),
(92, 89),
(93, 61),
(93, 72),
(93, 85),
(94, 7),
(94, 20),
(94, 33),
(94, 45),
(94, 52),
(94, 72),
(94, 81),
(94, 88),
(94, 91),
(94, 94),
(94, 100),
(95, 6),
(95, 13),
(95, 16),
(95, 51),
(95, 53),
(95, 58),
(95, 61),
(95, 67),
(95, 99),
(96, 3),
(96, 14),
(96, 42),
(96, 54),
(96, 77),
(97, 17),
(97, 51),
(97, 68),
(97, 74),
(97, 77),
(97, 95),
(97, 99),
(98, 6),
(98, 15),
(98, 16),
(98, 20),
(98, 73),
(98, 74),
(98, 99),
(99, 3),
(99, 8),
(99, 20),
(99, 40),
(99, 72),
(99, 86),
(100, 29),
(100, 48),
(100, 52),
(100, 53),
(100, 56),
(100, 59),
(100, 83),
(100, 96),
(100, 100);

-- --------------------------------------------------------

--
-- Structure de la table `typelivre`
--

DROP TABLE IF EXISTS `typelivre`;
CREATE TABLE IF NOT EXISTS `typelivre` (
  `id_t` int(11) NOT NULL,
  `libelle_t` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typelivre`
--

INSERT INTO `typelivre` (`id_t`, `libelle_t`) VALUES
(1, 'Roman'),
(2, 'Biographie'),
(3, 'Conte'),
(4, 'Science Fiction'),
(5, 'Manga'),
(6, 'Historique'),
(7, 'Poésie'),
(8, 'Essai'),
(9, 'Guide'),
(10, 'Scenario'),
(11, 'Témoignage'),
(12, 'Fantaisie'),
(13, 'Horreur'),
(14, 'Fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_pseudo` varchar(30) NOT NULL,
  `user_mail` varchar(30) NOT NULL,
  `user_pasword` text NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `user_pseudo`, `user_mail`, `user_pasword`) VALUES
(1, 'One', 'onelife.ran@gmail.com', '971'),
(2, 'OneLife', 'onelife.ran@gmail.com', 'a4fc566c789cd0998efce12dbd3513e79eb93bbc'),
(3, 'bg', 'onelife.ran@gmail.com', '80f87c8847da6c872ce2fc9fec0a98a73ebc578d');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
