-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 21 mai 2018 à 18:28
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pidevfinal`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

CREATE TABLE `abonnements` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idAssociation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `abonnements`
--

INSERT INTO `abonnements` (`id`, `idUser`, `idAssociation`) VALUES
(1, 9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_concours` int(11) DEFAULT NULL,
  `id_publication` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pts` int(11) NOT NULL DEFAULT '0',
  `race` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `couleur` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_yeux` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `id_user`, `id_concours`, `id_publication`, `type`, `age`, `nom`, `sexe`, `img`, `pts`, `race`, `couleur`, `couleur_yeux`) VALUES
(6, 3, 2, NULL, 'horse1', 2, 'horse', 'f', '15eba9b7835ed19a9dab42b596427d8a.jpeg', 4, 'Horse mel brima', 'Black', 'Black'),
(7, 3, 4, NULL, 'baki', 1, 'baki', 'f', '79a8388462a81607898a6d03c2e5f778.jpeg', 0, 'baki infini', 'white', 'white'),
(10, 3, NULL, 1, 'Dog', 1, 'ga', 'm', 'C:\\xampp\\tmp\\php9847.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(11, 9, NULL, 2, 'Dog', 1, 'jazz', 'm', 'C:\\xampp\\tmp\\php4F3C.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(12, 9, NULL, 3, 'Dog', 1, 'a', 'm', 'C:\\xampp\\tmp\\php8FA2.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(13, 3, NULL, 4, 'Dog', 1, 'g', 'm', 'C:\\xampp\\tmp\\php44DA.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(14, 3, NULL, 5, 'Dog', 1, 'hjk', 'm', 'C:\\xampp\\tmp\\phpB17E.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(15, 9, NULL, 6, 'Dog', 1, 'minou', 'm', 'C:\\xampp\\tmp\\phpFD86.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(16, 9, 4, NULL, 'h', 1, 'h', 'h', '753e97685ea05e89001285e631c59c16.jpeg', 0, 'h', 'h', 'h'),
(17, 9, 2, NULL, 'hj', 1, 'h', 'h', '7fd4bc4f1fda1482f03bbb62db6e3b13.jpeg', 1, 'h', 'h', 'h'),
(18, 3, NULL, 7, 'Dog', 1, 'Jazz', 'm', 'C:\\xampp\\tmp\\php365.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(19, 3, NULL, 8, 'Dog', 1, 'jazz', 'm', 'C:\\xampp\\tmp\\phpB473.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(20, 9, NULL, 9, 'Dog', 1, 'ahah', 'm', 'C:\\xampp\\tmp\\php6515.tmp', 0, 'Labrador retriever', 'Brown', 'Brown'),
(21, 3, NULL, 10, 'Dog', 123, 'jazz', 'Male', NULL, 0, 'Labrador retriever', 'Brown', 'Brown'),
(22, 3, NULL, 11, 'Dog', 123, 'jazz', 'Male', NULL, 0, 'Labrador retriever', 'Brown', 'Brown'),
(23, 3, NULL, 12, 'Dog', 123, 'jazz', 'Male', NULL, 0, 'Labrador retriever', 'Brown', 'Brown'),
(24, 18, NULL, 15, 'Dog', 123, 'jazz', 'male', 'File:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg', 0, 'Labrador retriever', 'black ', 'Brown');

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE `association` (
  `id` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `info` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` date NOT NULL,
  `tel` int(11) NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `association`
--

INSERT INTO `association` (`id`, `id_responsable`, `info`, `adresse`, `nom`, `date_creation`, `tel`, `url`) VALUES
(2, 11, 'info', 'adresse', 'association 1', '2013-01-01', 22222222, 'afe1fbff7de318388452a99842008408.jpeg'),
(3, 18, 'dfghjkl', 'ennaser', 'abcd', '2018-05-23', 23377288, 'file:/C:/Users/Malek Fenina/Pictures/31895371_473864349713067_7831967830277881856_n.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_evt` int(11) DEFAULT NULL,
  `id_publication` int(11) DEFAULT NULL,
  `contenu` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime NOT NULL,
  `url_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_user`, `id_evt`, `id_publication`, `contenu`, `Date`, `url_image`) VALUES
(2, 3, NULL, 8, 'ffffff', '2018-04-12 11:29:08', '6592f073054c98a890760d943402e05b.png'),
(3, 3, NULL, 5, 'first comment', '2018-05-01 16:15:29', ''),
(4, 18, NULL, 11, 'hello', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\31895371_473864349713067_7831967830277881856_n.jpg'),
(5, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(6, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(7, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(8, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(9, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(10, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg'),
(11, 18, NULL, 11, 'ya malek kalbi', '2018-05-21 00:00:00', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commentairer`
--

CREATE TABLE `commentairer` (
  `id` int(11) NOT NULL,
  `id_publication` int(11) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `objet` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentairer`
--

INSERT INTO `commentairer` (`id`, `id_publication`, `iduser`, `date`, `objet`) VALUES
(27, 3, 0, '2018-05-02 10:50:43', 'hello');

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `id` int(11) NOT NULL,
  `info` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `cloture` int(11) DEFAULT NULL,
  `place` int(11) DEFAULT '0',
  `Url_img` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `concours`
--

INSERT INTO `concours` (`id`, `info`, `date`, `cloture`, `place`, `Url_img`) VALUES
(1, 'dog', '2018-01-01', 1, 0, 'https://i.ytimg.com/vi/SfLV8hD7zX4/maxresdefault.jpg'),
(2, 'horse', '2021-01-12', 1, 2, 'https://thehorse.com/wp-content/uploads/2017/09/brown-horse-rearing-in-snow-1280x640.jpg'),
(3, 'cat', '2018-04-16', 1, 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg'),
(4, 'birds', '2023-01-01', 1, 1, 'https://upload.wikimedia.org/wikipedia/commons/3/32/House_sparrow04.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `id_association` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `information` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signale` tinyint(1) DEFAULT NULL,
  `cloture` tinyint(1) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `id_association`, `date_debut`, `date_fin`, `information`, `signale`, `cloture`, `url`, `location`, `titre`) VALUES
(4, 2, '2019-01-01', '2019-01-02', 'info', 0, 0, '3a55e75727f51d7338711a711169053f.jpeg', 'location', 'event'),
(5, 2, '2019-05-21', '2019-01-03', 'info', 0, 0, 'be625cb5c13dd1981ebb1b61e9821adc.jpeg', 'loca', 'event2'),
(6, 2, '2019-01-01', '2019-01-02', 'inf', 0, 0, '382b4691eb4edde85c67713e4203726d.jpeg', 'rer', 'eventvalid'),
(9, 2, '2018-05-21', '2018-05-22', 'infoo', 0, 0, 'file:/D:/Nouveau dossier/Pidev_Zanimaux/src/Images/9-sidestanding.jpg', 'ariana', 'info'),
(10, 3, '2018-04-30', '2018-05-23', 'ghjk', 0, 0, 'file:/C:/Users/Malek Fenina/Pictures/31895371_473864349713067_7831967830277881856_n.jpg', 'tunis', 'abcdf');

-- --------------------------------------------------------

--
-- Structure de la table `joinedevents`
--

CREATE TABLE `joinedevents` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idEvent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `joinedevents`
--

INSERT INTO `joinedevents` (`id`, `idUser`, `idEvent`) VALUES
(3, 3, 4),
(4, 3, 5),
(7, 1, 9);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `thread_id`, `sender_id`, `body`, `created_at`) VALUES
(1, 1, 3, 'aaa', '2018-04-12 02:39:03'),
(2, 1, 3, 'yo', '2018-04-12 02:46:35'),
(3, 2, 9, 'Hello , this is a message sent automatically . The admin of Zanimaux think i have posted about \r\n                            a found animal that seems to look like your lost animal that responds to the name of g. Please \r\n                            contact me as soon as possible', '2018-04-12 03:02:01'),
(4, 3, 3, 'Hello , this is a message sent automatically . The admin of Zanimaux think i have posted about \r\n                            a found animal that seems to look like your lost animal that responds to the name of minou. Please \r\n                            contact me as soon as possible', '2018-04-12 10:33:54'),
(5, 4, 3, 'Hello , this is a message sent automatically . The admin of Zanimaux think i have posted about \r\n                            a found animal that seems to look like your lost animal that responds to the name of ahah. Please \r\n                            contact me as soon as possible', '2018-04-12 11:32:15'),
(6, 5, 3, 'Hello , this is a message sent automatically . The admin of Zanimaux think i have posted about \r\n                            a found animal that seems to look like your lost animal that responds to the name of ahah. Please \r\n                            contact me as soon as possible', '2018-04-12 11:32:15');

-- --------------------------------------------------------

--
-- Structure de la table `message_metadata`
--

CREATE TABLE `message_metadata` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `message_metadata`
--

INSERT INTO `message_metadata` (`id`, `message_id`, `participant_id`, `is_read`) VALUES
(1, 1, 3, 1),
(2, 2, 3, 1),
(3, 3, 9, 0),
(4, 3, 3, 1),
(5, 4, 3, 0),
(6, 4, 9, 1),
(7, 5, 3, 0),
(8, 5, 9, 1),
(9, 6, 3, 0),
(10, 6, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_rdv` int(11) DEFAULT NULL,
  `id_reponse` int(11) DEFAULT NULL,
  `id_commentaire` int(11) DEFAULT NULL,
  `id_publication` int(11) DEFAULT NULL,
  `id_evt` int(11) DEFAULT NULL,
  `contenu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `participation_concours`
--

CREATE TABLE `participation_concours` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_concours` int(11) DEFAULT NULL,
  `date_participation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `participation_concours`
--

INSERT INTO `participation_concours` (`id`, `id_user`, `id_concours`, `date_participation`) VALUES
(6, 3, 2, '2018-04-11 23:02:33'),
(7, 3, 4, '2018-04-11 23:04:44'),
(10, 9, 4, '2018-04-12 10:56:14'),
(11, 9, 2, '2018-04-12 10:58:28'),
(12, 1, 4, '2018-05-21 04:19:00');

-- --------------------------------------------------------

--
-- Structure de la table `participation_evt`
--

CREATE TABLE `participation_evt` (
  `id` int(11) NOT NULL,
  `id_evt` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `date_post` datetime DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbreports` int(11) DEFAULT NULL,
  `moyenne` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `id_user`, `date_creation`, `date_post`, `adresse`, `prix`, `information`, `url`, `titre`, `nbreports`, `moyenne`) VALUES
(2, 1, '2013-01-01', '2018-04-10 13:45:43', 'ariana', 17, 'this is a goood product fellas bhefezsfes', '6eb6f0e8f4d12dd2ca08cc49e4aaeb3a.jpeg', 'amir', NULL, 10),
(3, 1, '2013-01-01', '2018-04-10 13:45:43', 'ariana', 17, 'this is a goood product fellas bhefezsfes', '6eb6f0e8f4d12dd2ca08cc49e4aaeb3a.jpeg', 'amir', NULL, 5),
(4, 1, '2013-01-01', '2018-04-10 13:45:43', 'ariana', 17, 'this is a goood product fellas bhefezsfes', '6eb6f0e8f4d12dd2ca08cc49e4aaeb3a.jpeg', 'amir', NULL, 8),
(5, 1, '2013-01-01', '2018-04-10 13:45:43', 'ariana', 17, 'this is a goood product fellas bhefezsfes', '6eb6f0e8f4d12dd2ca08cc49e4aaeb3a.jpeg', 'amir', NULL, 3),
(6, 1, '2018-05-01', '2018-05-01 17:48:09', 'adresse', 1777, 'infooo', 'null', 'titre', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produitfavorite`
--

CREATE TABLE `produitfavorite` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `produitfavorite`
--

INSERT INTO `produitfavorite` (`id`, `id_produit`, `id_user`) VALUES
(1, 2, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `objet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `signale` tinyint(1) DEFAULT NULL,
  `cloture` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `nbVues` int(11) DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nbReports` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `publication`
--

INSERT INTO `publication` (`id`, `id_user`, `type`, `contenu`, `objet`, `signale`, `cloture`, `date`, `nbVues`, `nom`, `url_image`, `nbReports`) VALUES
(5, 3, 'Found Animal', 'g', '', 1, 1, '2018-04-12 07:25:43', 8, 'ab', '1f93f00084b53a0737e48d4df6c1ba5a.jpeg', 1),
(8, 3, 'Found Animal', 'validation', '', 0, 1, '2018-04-12 11:27:07', 4, 'aziz', 'ed2910e316ccd8777691b866e15195c6.png', 0),
(9, 9, 'Lost Animal', 'ehazeahz', '', 0, 0, '2018-04-12 11:32:14', 1, 'animal perdu', 'c7e07013012689430d7ebc4a7fdfc57f.jpeg', 0),
(10, 3, 'Found Animal', 'le post fhdfd hfdizkf', '', 0, 0, '2018-05-01 16:18:39', 0, 'post chez malek', '', 0),
(11, 3, 'Found Animal', 'le post fhdfd hfdizkf', '', 0, 0, '2018-05-01 16:20:29', 0, 'post chez malek', '', 0),
(12, 3, 'Found Animal', 'le post fhdfd hfdizkf', '', 0, 0, '2018-05-01 16:20:54', 0, 'post chez malek', '', 0),
(13, 18, 'animal_perdu', 'contenu', 'l objet', NULL, NULL, '2018-05-21 00:00:00', NULL, 'premier post integration', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg', NULL),
(14, 18, 'animal_perdu', 'contenu', 'l objet', NULL, NULL, '2018-05-21 00:00:00', NULL, 'premier post integration', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg', NULL),
(15, 18, 'animal_perdu', 'contenu', 'l objet', NULL, NULL, '2018-05-21 00:00:00', NULL, 'premier post integration', 'file:C:\\Users\\Malek Fenina\\Pictures\\095c13074b7d06a05d1fb6b1b8264d2cab5e.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cloture` tinyint(1) NOT NULL,
  `signale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `id_user`, `date`, `contenu`, `cloture`, `signale`) VALUES
(1, 1, '2018-02-21 00:00:00', 'How to recognize an animal sex', 0, 0),
(2, 1, '2018-02-21 00:00:00', 'How to recognize an animal likes you or not', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `rateproduit`
--

CREATE TABLE `rateproduit` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rateproduit`
--

INSERT INTO `rateproduit` (`id`, `id_produit`, `id_user`, `note`) VALUES
(1, 3, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `idE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rating`
--

INSERT INTO `rating` (`id`, `rating`, `idE`) VALUES
(14, 2, 6),
(15, 2, 6),
(16, 2, 8),
(17, 3, 7),
(18, 2, 8),
(19, 3, 8),
(20, 2, 8),
(21, 3, 7),
(22, 5, 6),
(23, 5, 6),
(24, 0, 6),
(25, 0, 7),
(26, 0, 6),
(27, 0, 6),
(28, 0, 7),
(29, 0, 7),
(30, 0, 6),
(31, 0, 6),
(32, 0, 7),
(33, 0, 6),
(34, 0, 7),
(35, 0, 6),
(36, 0, 7),
(37, 0, 7),
(38, 0, 7),
(39, 0, 7),
(40, 0, 7),
(41, 0, 6),
(42, 0, 6),
(43, 0, 6),
(44, 0, 6),
(45, 0, 6),
(46, 0, 6),
(47, 0, 15),
(48, 0, 6),
(49, 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `idr` int(11) NOT NULL,
  `id_membre` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `date_rdv` datetime NOT NULL,
  `type_consultation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix_consultation` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`idr`, `id_membre`, `id_fournisseur`, `date_rdv`, `type_consultation`, `prix_consultation`) VALUES
(7, 3, 6, '2018-04-07 19:44:31', 'chirurgies spécialisées', 30),
(9, 9, 6, '2018-04-14 00:00:00', 'ghegfe', 80),
(10, 10, 7, '2018-04-13 22:18:49', 'chirurgies spécialisées', 30),
(11, 9, 6, '2018-03-28 02:38:39', 'Radiographie numérique', 40),
(12, 3, 7, '2018-04-10 04:51:06', 'Échographies abdominales exploratoires', 70),
(13, 3, 8, '2018-04-26 08:10:17', 'effectuer une promenade hygiénique', 25),
(19, 1, 1, '2018-05-01 11:16:47', 'prélèvements écho-guidés', 60),
(28, 1, 1, '2018-05-02 11:30:00', 'prélèvements écho-guidés', 60),
(29, 1, 1, '2018-05-02 10:50:00', 'chirurgies spécialisées', 47),
(30, 1, 1, '2018-05-02 11:00:00', 'Radiographie numérique', 30),
(31, 1, 1, '2018-05-02 09:20:00', 'Échographies abdominales exploratoires', 80),
(32, 1, 1, '2018-05-02 09:50:00', 'Radiographie numérique', 30),
(33, 1, 1, '2018-05-02 12:20:00', 'Échographies abdominales exploratoires', 80),
(34, 1, 1, '2018-05-02 10:45:00', 'Radiographie numérique', 30),
(35, 18, 15, '2018-04-07 19:44:31', 'chirurgies exploratoires', 48),
(36, 18, 15, '2018-04-07 19:44:31', 'chirurgies exploratoires', 48);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `objet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `id_user`, `objet`, `contenu`, `etat`, `date`) VALUES
(67, 1, 'api', 'aa', 0, '2018-05-02 03:15:09'),
(68, 1, 'api', 'api', 0, '2018-05-02 10:30:23'),
(69, 1, 'api', 'api', 0, '2018-05-02 10:32:16'),
(70, 1, 'api2', 'ddd', 0, '2018-05-02 10:32:30'),
(71, 1, 'gfjy', 'gtfthf', 0, '2018-05-02 11:35:56'),
(72, 18, 'aziz aziz', 'aziz has a big dick', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id`, `id_user`, `id_question`, `date`, `contenu`, `signale`) VALUES
(1, 1, 1, '2018-04-24 00:00:00', 'we cannot recognize the same way as all animals*', 0),
(2, 1, 2, '2018-04-24 00:00:00', 'we cannot recognize the same way as all animals*', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reponsec`
--

CREATE TABLE `reponsec` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_commentaire` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `report__settings`
--

CREATE TABLE `report__settings` (
  `id` int(11) NOT NULL,
  `nbPostReports` int(11) NOT NULL,
  `nbUserReports` int(11) NOT NULL,
  `nbBanDays` int(11) NOT NULL,
  `activated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `report__settings`
--

INSERT INTO `report__settings` (`id`, `nbPostReports`, `nbUserReports`, `nbBanDays`, `activated`) VALUES
(1, 2, 3, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique_sanitaire`
--

CREATE TABLE `rubrique_sanitaire` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brochure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbcommentaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rubrique_sanitaire`
--

INSERT INTO `rubrique_sanitaire` (`id`, `date`, `contenu`, `brochure`, `image`, `titre`, `nbcommentaire`) VALUES
(3, '2018-05-02', 'sysysysy', '396823254ce78906ce4c780b3a41de72.pdf', 'chat1.jpg', 'hedi', 2),
(4, '2018-08-01', 'mlp', '', 'file://C:/Users/MALEKF~1/AppData/Local/Temp/temp3542360731280770981s..jpg', 'jhjh', 0),
(5, '2018-06-01', 'mplp', '', 'null', 'jkjkj', 0),
(6, '2018-05-31', 'hahahah', '', 'null', 'ballkisss', 0);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `signalement`
--

CREATE TABLE `signalement` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_commentaire` int(11) DEFAULT NULL,
  `motif` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `signalement`
--

INSERT INTO `signalement` (`id`, `id_user`, `id_post`, `id_commentaire`, `motif`) VALUES
(1, 3, 5, NULL, ''),
(2, 18, 5, NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_spam` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `thread`
--

INSERT INTO `thread` (`id`, `created_by_id`, `subject`, `created_at`, `is_spam`) VALUES
(1, 3, 'first message in this laptop', '2018-04-12 02:39:03', 0),
(2, 9, 'Found Animal', '2018-04-12 03:02:01', 0),
(3, 3, 'Found Animal', '2018-04-12 10:33:54', 0),
(4, 3, 'Found Animal', '2018-04-12 11:32:15', 0),
(5, 3, 'Found Animal', '2018-04-12 11:32:15', 0);

-- --------------------------------------------------------

--
-- Structure de la table `thread_metadata`
--

CREATE TABLE `thread_metadata` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `last_participant_message_date` datetime DEFAULT NULL,
  `last_message_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `thread_metadata`
--

INSERT INTO `thread_metadata` (`id`, `thread_id`, `participant_id`, `is_deleted`, `last_participant_message_date`, `last_message_date`) VALUES
(1, 1, 3, 0, '2018-04-12 02:46:35', NULL),
(2, 2, 9, 0, '2018-04-12 03:02:01', NULL),
(3, 2, 3, 0, NULL, '2018-04-12 03:02:01'),
(4, 3, 3, 0, '2018-04-12 10:33:54', NULL),
(5, 3, 9, 0, NULL, '2018-04-12 10:33:54'),
(6, 4, 3, 0, '2018-04-12 11:32:15', NULL),
(7, 4, 9, 0, NULL, '2018-04-12 11:32:15'),
(8, 5, 3, 0, '2018-04-12 11:32:15', NULL),
(9, 5, 9, 0, NULL, '2018-04-12 11:32:15');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_association` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci DEFAULT '',
  `enabled` tinyint(1) DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connected` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_reports` int(11) DEFAULT NULL,
  `rating` float DEFAULT '0',
  `en_attente` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_post` int(11) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT NULL,
  `date_ban` date DEFAULT NULL,
  `EnAttente` tinyint(1) DEFAULT '0',
  `fonction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_compte` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'm',
  `confirmationCode` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `id_association`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `nom`, `prenom`, `date_naissance`, `adresse`, `tel`, `information`, `ville`, `url_image`, `type_service`, `connected`, `number_reports`, `rating`, `en_attente`, `date_creation`, `lat`, `lng`, `avatar_url`, `nb_post`, `banned`, `date_ban`, `EnAttente`, `fonction`, `type_compte`, `confirmationCode`) VALUES
(1, NULL, 'user', 'user', 'user@user.tn', 'user@user.tn', 1, NULL, '$2y$13$Tl7DZhSik7qy.ce0YgJRgeWu2qh22xjgjob67t0w.eO9KFFUe2DJ2', '2018-05-21 04:43:31', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_MEMBRE\";}', 'user', 'user', '2013-01-01', 'ariana', 777777, NULL, 'kalla kobra sousse', 'dfdb3329a0662865c86e752496c3462c.jpeg', '', NULL, 0, 0, NULL, '2018-04-10', 0, 0, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(3, NULL, 'fnmalek', 'fnmalek', 'fnmalek@hotmail.fr', 'fnmalek@hotmail.fr', 1, NULL, '$2y$13$CvR/gjozkx3utfRmlly2.eAcXEUFqo/MymxbTb6ACtdWgbzMluFo6', '2018-04-12 11:33:32', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_MEMBRE\";}', 'malek', 'fenina', '2013-01-01', 'sousse', 24166608, NULL, '123', 'images/ui-sherman.jpg', '', NULL, 47, 0, NULL, '2018-04-10', NULL, NULL, NULL, 0, 1, '0000-00-00', 0, NULL, 'm', NULL),
(4, NULL, 'aziz', 'aziz', 'aziz@gmail.com', 'aziz@gmail.com', 1, NULL, '$2y$13$.dsSppoonXYLPSn5gGZyvOeYPHpyr0RjcCHrx6Hhsa9hU1lU7vfUK', '2018-05-21 01:47:42', NULL, NULL, 'a:1:{i:1;s:10:\"ROLE_ADMIN\";}', 'aziz', 'bahri', '2013-01-01', '123', 123456789, NULL, '123', '234a5bf2a2b28e2c5882b882d51ce2be.jpeg', '', NULL, 0, 0, NULL, '2018-04-10', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(5, NULL, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$24uRC0jBeMADIbYndIvs0.9xV34bWxnFOEcx0uxKNXGcp98lBLeZC', '2018-04-11 18:20:59', NULL, NULL, 'a:2:{i:0;s:11:\"ROLE_MEMBRE\";i:1;s:10:\"ROLE_ADMIN\";}', 'admin', 'admin', '2013-01-01', '', 777777777, NULL, 'tunis', '03dd5e2ff1c8df01acca429748f6b38e.jpeg', '', NULL, 0, 0, NULL, '2018-04-11', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(6, NULL, 'molka', 'molka', 'molka.jerbi@esprit.tn', 'molka.jerbi@esprit.tn', 1, NULL, '$2y$13$IxjyWFR/78zjiXMD/6YgreSw3uQ3RwcjxtLNx6rxRyWZ5ectp9ofK', '2018-04-12 04:59:45', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'jerbi', 'molka', '2013-03-17', 'Beja', 21064516, 'je suis Veterinaire a sousse', 'kalaa kobra', 'ui-divya.jpg', 'Veterinaire', NULL, 0, 0.736842, NULL, '2018-04-11', 35.8214, 10.6344, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(7, NULL, 'ahmed', 'ahmed', 'ahmed.jerbi@esprit.tn', 'ahmed.jerbi@esprit.tn', 1, NULL, '$2y$13$qo3kYQWCC9CEFI5H1C9MIOG/wdZbxf9sbsIAAFLxHYKEfv.m.voR6', '2018-04-11 23:19:48', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'jerbi', 'ahmed', '2013-09-17', 'Beja', 20586174, 'je suis veterinaire a tunis', 'ariana', 'ui-zac.jpg', 'Veterinaire', NULL, 0, 0.5, NULL, '2018-04-11', 36.8, 10.183333, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(8, NULL, 'bechir', 'bechir', 'bechir@esprit.tn', 'bechir@esprit.tn', 1, NULL, '$2y$13$rVBnqRi7rBCCT65umXBqju.T.EQlIqvBOlQHCnrXyIiFxcsfxEiOC', '2018-04-11 20:14:28', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'bechir', 'sehli', '2013-01-01', 'sousse', 54064517, 'je suis un animal_sitting a sousse', 'kalla soghra', 'ui-sherman.jpg', 'Animal_sitting', NULL, 0, 2.33333, NULL, '2018-04-11', 35.8214, 10.6344, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(9, NULL, 'selim', 'selim', 'selim@gmail.com', 'selim@gmail.com', 1, NULL, '$2y$13$/zvtUrfqLiFKqjq2COFyKeLzqttqrY2mBwdFWo5Ig4uOObcIeUXQm', '2018-04-12 11:31:41', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_MEMBRE\";}', 'selim', 'selim', '2013-01-01', '123', 1234555, NULL, '123', 'b3327749e2d7550c96431578ca6963d4.jpeg', '', NULL, 1, 0, NULL, '2018-04-11', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(10, NULL, 'jj', 'jj', 'jj@hotmail.fr', 'jj@hotmail.fr', 1, NULL, '$2y$13$0/W9xZRFiS2DKXT5PfP13OvEG1TmgClWEUB3OIGTu4pdKAmSFXOBC', '2018-04-12 04:59:26', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_MEMBRE\";}', 'jj', 'jj', '2013-01-01', 'jj', 1233444, NULL, NULL, 'images/ui-sherman.jpg', '', NULL, 0, 0, NULL, '2018-04-11', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(11, 2, 'hedi', 'hedi', 'hedi@gmail.com', 'hedi@gmail.com', 1, NULL, '$2y$13$UpY64yP2S3nstzjKSAgvSuP/bWsjuEAkwHSWG.vvSCVV.QmXufjna', '2018-05-21 01:50:05', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_RESPONSABLE\";}', 'hedi', 'hedi', '2013-01-01', 'hedi', 1223333, NULL, 'hedi', '8c728d53d5aff92723e78795c5013604.jpeg', '', NULL, 0, 0, NULL, '2018-04-12', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(12, NULL, 'fenina', 'fenina', 'fenina@fenina.hotmalil.fr', 'fenina@fenina.hotmalil.fr', 1, NULL, '$2y$13$Vq1pcBt0rhvbPk7G8.KpdeK2Vcq2C6cXSEzvRT8BNvUlJaTa9AQN.', '2018-04-12 10:16:36', NULL, NULL, 'a:1:{i:0;s:11:\"ROLE_MEMBRE\";}', 'fenina', 'fenina', '2013-01-01', '123', 12355, NULL, '123', '809ab2dd782cb6c3ce97fff5db50b55f.png', 'Veterinaire', NULL, 0, 0, NULL, '2018-04-12', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(13, NULL, 'dop1943', 'dop1943', '', 'mohamedaziz.bahri@esprit.tn', 0, NULL, 'lala', NULL, NULL, NULL, 'a:0:{}', 'aziz', 'bahr', '2018-05-01', 'Ennaser', 26953083, NULL, 'Ariana', NULL, '', NULL, 0, 0, NULL, '2018-05-01', NULL, NULL, NULL, 0, 0, '0000-00-00', 0, NULL, 'm', NULL),
(15, NULL, 'blo9', 'blo9', 'balkis@esprit.tn', 'balkis@esprit.tn', 0, NULL, 'blo9', '2018-05-20 00:00:00', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'balkiss', 'jerbi', '2018-05-07', 'Beja', 21064516, 'Veterinaire', 'Beja', '809ab2dd782cb6c3ce97fff5db50b55f.png', 'Veterinaire', NULL, NULL, 0, NULL, '2018-05-02', 35.8214, 10.6344, NULL, NULL, 1, '0000-00-00', 0, NULL, 'f', NULL),
(16, NULL, 'dop7456', 'dop7456', 'aaaa@esprit.com', 'aaaa@esprit.com', 0, NULL, 'casser01', NULL, NULL, NULL, 'a:0:{}', 'azoz', 'ahri', '2018-05-21', 'ennaser', 7852, NULL, 'ennaser', NULL, NULL, NULL, 0, NULL, NULL, '2018-05-21', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 'm', NULL),
(17, NULL, 'aziz12', 'aziz12', 'bbb@ee.com', 'bbb@ee.com', 0, NULL, 'cass', NULL, NULL, NULL, 'a:0:{}', 'aziz', 'azuz', '2018-05-21', 'ennaser', 57656776, NULL, 'ariana', NULL, NULL, '1', 0, NULL, NULL, '2018-05-21', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 'm', NULL),
(18, NULL, 'dopdop', 'dopdop', 'momo@esprit.tn', 'momo@esprit.tn', 1, 'ok61ji.07ti0JI52/bXaXKEtpdI/UXSjbnXBalLAfP4', 'casser01{ok61ji.07ti0JI52/bXaXKEtpdI/UXSjbnXBalLAfP4}', '2018-05-21 15:12:33', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'aziz', 'bahri', '2013-01-01', 'ennaser', 26953333, NULL, 'eennaser', '', 'Veterinaire', '0', 0, NULL, NULL, '2018-05-21', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 'f', NULL),
(19, NULL, 'ak47', '', '', '', NULL, NULL, 'casser01', NULL, NULL, NULL, NULL, 'bahri', 'aziz', '2018-05-01', 'ennn', 26953083, '', 'bn', NULL, NULL, '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'f', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_concours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `voters`
--

INSERT INTO `voters` (`id`, `id_user`, `id_concours`) VALUES
(4, 9, 2),
(8, 18, 2);

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_forum`
--

CREATE TABLE `workingforum_forum` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workingforum_forum`
--

INSERT INTO `workingforum_forum` (`id`, `name`, `slug`) VALUES
(1, 'informatique', 'informatique'),
(2, 'malek', 'malek');

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_post`
--

CREATE TABLE `workingforum_post` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `cdate` datetime NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moderateReason` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workingforum_post`
--

INSERT INTO `workingforum_post` (`id`, `thread_id`, `user_id`, `content`, `published`, `cdate`, `ip`, `moderateReason`) VALUES
(1, 1, 1, 'fefsfse', 1, '2018-04-10 14:59:08', '::1', NULL),
(3, 1, 3, 'selimmm', 1, '2018-04-12 11:38:45', '::1', NULL),
(4, 1, 3, 'selimmm', 1, '2018-04-12 11:38:46', '::1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_post_report`
--

CREATE TABLE `workingforum_post_report` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cdate` datetime NOT NULL,
  `processed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_setting`
--

CREATE TABLE `workingforum_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_subforum`
--

CREATE TABLE `workingforum_subforum` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_thread` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_post` int(11) DEFAULT NULL,
  `last_reply_date` datetime DEFAULT NULL,
  `allowed_roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `lastReplyUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workingforum_subforum`
--

INSERT INTO `workingforum_subforum` (`id`, `forum_id`, `description`, `name`, `nb_thread`, `slug`, `nb_post`, `last_reply_date`, `allowed_roles`, `lastReplyUser`) VALUES
(1, 1, NULL, 'mobile', 1, 'mobile', 4, '2018-04-12 11:38:46', 'a:1:{i:0;s:0:\"\";}', 3),
(2, 2, NULL, 'blabla', NULL, 'blabla', NULL, NULL, 'a:1:{i:0;s:0:\"\";}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workingforum_thread`
--

CREATE TABLE `workingforum_thread` (
  `id` int(11) NOT NULL,
  `subforum_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `cdate` datetime NOT NULL,
  `nbReplies` int(11) NOT NULL,
  `lastReplyDate` datetime NOT NULL,
  `resolved` tinyint(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sublabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` tinyint(1) DEFAULT NULL,
  `lastReplyUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `workingforum_thread`
--

INSERT INTO `workingforum_thread` (`id`, `subforum_id`, `author_id`, `cdate`, `nbReplies`, `lastReplyDate`, `resolved`, `locked`, `label`, `sublabel`, `slug`, `pin`, `lastReplyUser`) VALUES
(1, 1, 1, '2018-04-10 14:59:08', 4, '2018-04-12 11:38:46', NULL, NULL, 'opeth', 'mppppp', '1-opeth', 0, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `id_question` (`id_question`);

--
-- Index pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4788B767FE6E88D7` (`idUser`),
  ADD KEY `IDX_4788B767BDD8DEB4` (`idAssociation`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6AAB231F6B3CA4B` (`id_user`),
  ADD KEY `IDX_6AAB231F1F75BD03` (`id_concours`);

--
-- Index pour la table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_responsable` (`id_responsable`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_publication` (`id_publication`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_evt` (`id_evt`);

--
-- Index pour la table `commentairer`
--
ALTER TABLE `commentairer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AEB9F052B72EAA8E` (`id_publication`);

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_association` (`id_association`);

--
-- Index pour la table `joinedevents`
--
ALTER TABLE `joinedevents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C67865B4FE6E88D7` (`idUser`),
  ADD KEY `IDX_C67865B42C6A49BA` (`idEvent`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307FE2904019` (`thread_id`),
  ADD KEY `IDX_B6BD307FF624B39D` (`sender_id`);

--
-- Index pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4632F005537A1329` (`message_id`),
  ADD KEY `IDX_4632F0059D1C3019` (`participant_id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_rdv` (`id_rdv`),
  ADD UNIQUE KEY `id_reponse` (`id_reponse`),
  ADD UNIQUE KEY `id_commentaire` (`id_commentaire`),
  ADD UNIQUE KEY `id_publication` (`id_publication`),
  ADD UNIQUE KEY `id_evt` (`id_evt`);

--
-- Index pour la table `participation_concours`
--
ALTER TABLE `participation_concours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_concours` (`id_concours`,`id_user`),
  ADD KEY `IDX_A386DD011F75BD03` (`id_concours`);

--
-- Index pour la table `participation_evt`
--
ALTER TABLE `participation_evt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_evt` (`id_evt`,`id_user`),
  ADD KEY `IDX_3DE23DA21F453D6` (`id_evt`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produitfavorite`
--
ALTER TABLE `produitfavorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA76E4DDF7384557` (`id_produit`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `rateproduit`
--
ALTER TABLE `rateproduit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idE` (`idE`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`idr`),
  ADD KEY `id_fournisseur` (`id_fournisseur`),
  ADD KEY `id_membre` (`id_membre`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_question` (`id_question`);

--
-- Index pour la table `reponsec`
--
ALTER TABLE `reponsec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_commentaire` (`id_commentaire`);

--
-- Index pour la table `report__settings`
--
ALTER TABLE `report__settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rubrique_sanitaire`
--
ALTER TABLE `rubrique_sanitaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Index pour la table `signalement`
--
ALTER TABLE `signalement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_commentaire` (`id_commentaire`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31204C83B03A8386` (`created_by_id`);

--
-- Index pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_40A577C8E2904019` (`thread_id`),
  ADD KEY `IDX_40A577C89D1C3019` (`participant_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`),
  ADD KEY `IDX_8D93D649E597EC3B` (`id_association`);

--
-- Index pour la table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_99FAA116B3CA4B` (`id_user`),
  ADD KEY `IDX_99FAA111F75BD03` (`id_concours`);

--
-- Index pour la table `workingforum_forum`
--
ALTER TABLE `workingforum_forum`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `workingforum_post`
--
ALTER TABLE `workingforum_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1C563EF6E2904019` (`thread_id`),
  ADD KEY `IDX_1C563EF6A76ED395` (`user_id`);

--
-- Index pour la table `workingforum_post_report`
--
ALTER TABLE `workingforum_post_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A95E2B754B89032C` (`post_id`),
  ADD KEY `IDX_A95E2B75A76ED395` (`user_id`);

--
-- Index pour la table `workingforum_setting`
--
ALTER TABLE `workingforum_setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `workingforum_subforum`
--
ALTER TABLE `workingforum_subforum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9EACE2E229CCBAD0` (`forum_id`),
  ADD KEY `IDX_9EACE2E21F7EE8A0` (`lastReplyUser`);

--
-- Index pour la table `workingforum_thread`
--
ALTER TABLE `workingforum_thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_788E9ABA225C0759` (`subforum_id`),
  ADD KEY `IDX_788E9ABAF675F31B` (`author_id`),
  ADD KEY `IDX_788E9ABA1F7EE8A0` (`lastReplyUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `association`
--
ALTER TABLE `association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commentairer`
--
ALTER TABLE `commentairer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `joinedevents`
--
ALTER TABLE `joinedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `participation_concours`
--
ALTER TABLE `participation_concours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `participation_evt`
--
ALTER TABLE `participation_evt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produitfavorite`
--
ALTER TABLE `produitfavorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rateproduit`
--
ALTER TABLE `rateproduit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `idr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reponsec`
--
ALTER TABLE `reponsec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `report__settings`
--
ALTER TABLE `report__settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rubrique_sanitaire`
--
ALTER TABLE `rubrique_sanitaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `signalement`
--
ALTER TABLE `signalement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `workingforum_forum`
--
ALTER TABLE `workingforum_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `workingforum_post`
--
ALTER TABLE `workingforum_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `workingforum_post_report`
--
ALTER TABLE `workingforum_post_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workingforum_setting`
--
ALTER TABLE `workingforum_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workingforum_subforum`
--
ALTER TABLE `workingforum_subforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `workingforum_thread`
--
ALTER TABLE `workingforum_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `FK_351268BB6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_351268BBE62CA5DB` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `FK_4788B767BDD8DEB4` FOREIGN KEY (`idAssociation`) REFERENCES `association` (`id`),
  ADD CONSTRAINT `FK_4788B767FE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `FK_6AAB231F1F75BD03` FOREIGN KEY (`id_concours`) REFERENCES `concours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6AAB231F6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC1F453D6` FOREIGN KEY (`id_evt`) REFERENCES `evenement` (`id`),
  ADD CONSTRAINT `FK_67F068BC6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_67F068BCB72EAA8E` FOREIGN KEY (`id_publication`) REFERENCES `publication` (`id`);

--
-- Contraintes pour la table `commentairer`
--
ALTER TABLE `commentairer`
  ADD CONSTRAINT `FK_AEB9F052B72EAA8E` FOREIGN KEY (`id_publication`) REFERENCES `rubrique_sanitaire` (`id`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `FK_B26681EE597EC3B` FOREIGN KEY (`id_association`) REFERENCES `association` (`id`);

--
-- Contraintes pour la table `joinedevents`
--
ALTER TABLE `joinedevents`
  ADD CONSTRAINT `FK_C67865B42C6A49BA` FOREIGN KEY (`idEvent`) REFERENCES `evenement` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C67865B4FE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307FE2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`),
  ADD CONSTRAINT `FK_B6BD307FF624B39D` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  ADD CONSTRAINT `FK_4632F005537A1329` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  ADD CONSTRAINT `FK_4632F0059D1C3019` FOREIGN KEY (`participant_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FK_BF5476CA1F453D6` FOREIGN KEY (`id_evt`) REFERENCES `evenement` (`id`),
  ADD CONSTRAINT `FK_BF5476CA6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_BF5476CA7FE2A54B` FOREIGN KEY (`id_commentaire`) REFERENCES `commentaire` (`id`),
  ADD CONSTRAINT `FK_BF5476CA812B77B7` FOREIGN KEY (`id_reponse`) REFERENCES `reponse` (`id`),
  ADD CONSTRAINT `FK_BF5476CA8E67F7DC` FOREIGN KEY (`id_rdv`) REFERENCES `rdv` (`idr`),
  ADD CONSTRAINT `FK_BF5476CAB72EAA8E` FOREIGN KEY (`id_publication`) REFERENCES `publication` (`id`);

--
-- Contraintes pour la table `participation_concours`
--
ALTER TABLE `participation_concours`
  ADD CONSTRAINT `FK_A386DD011F75BD03` FOREIGN KEY (`id_concours`) REFERENCES `concours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A386DD016B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `participation_evt`
--
ALTER TABLE `participation_evt`
  ADD CONSTRAINT `FK_3DE23DA21F453D6` FOREIGN KEY (`id_evt`) REFERENCES `evenement` (`id`),
  ADD CONSTRAINT `FK_3DE23DA26B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `produitfavorite`
--
ALTER TABLE `produitfavorite`
  ADD CONSTRAINT `FK_DA76E4DDF7384557` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `FK_AF3C67796B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494E6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`idE`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `FK_10C31F862E8C07C5` FOREIGN KEY (`id_fournisseur`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_10C31F86D0834EC4` FOREIGN KEY (`id_membre`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_CE6064046B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `FK_5FB6DEC76B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5FB6DEC7E62CA5DB` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `reponsec`
--
ALTER TABLE `reponsec`
  ADD CONSTRAINT `FK_3E63EA26B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `reponsec_ibfk_1` FOREIGN KEY (`id_commentaire`) REFERENCES `commentairer` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_E19D9AD26B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `signalement`
--
ALTER TABLE `signalement`
  ADD CONSTRAINT `FK_F4B551146B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_F4B551147FE2A54B` FOREIGN KEY (`id_commentaire`) REFERENCES `commentaire` (`id`),
  ADD CONSTRAINT `FK_F4B55114D1AA708F` FOREIGN KEY (`id_post`) REFERENCES `publication` (`id`);

--
-- Contraintes pour la table `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `FK_31204C83B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  ADD CONSTRAINT `FK_40A577C89D1C3019` FOREIGN KEY (`participant_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_40A577C8E2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649E597EC3B` FOREIGN KEY (`id_association`) REFERENCES `association` (`id`);

--
-- Contraintes pour la table `voters`
--
ALTER TABLE `voters`
  ADD CONSTRAINT `FK_99FAA111F75BD03` FOREIGN KEY (`id_concours`) REFERENCES `concours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_99FAA116B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `workingforum_post`
--
ALTER TABLE `workingforum_post`
  ADD CONSTRAINT `FK_1C563EF6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1C563EF6E2904019` FOREIGN KEY (`thread_id`) REFERENCES `workingforum_thread` (`id`);

--
-- Contraintes pour la table `workingforum_post_report`
--
ALTER TABLE `workingforum_post_report`
  ADD CONSTRAINT `FK_A95E2B754B89032C` FOREIGN KEY (`post_id`) REFERENCES `workingforum_post` (`id`),
  ADD CONSTRAINT `FK_A95E2B75A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `workingforum_subforum`
--
ALTER TABLE `workingforum_subforum`
  ADD CONSTRAINT `FK_9EACE2E21F7EE8A0` FOREIGN KEY (`lastReplyUser`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9EACE2E229CCBAD0` FOREIGN KEY (`forum_id`) REFERENCES `workingforum_forum` (`id`);

--
-- Contraintes pour la table `workingforum_thread`
--
ALTER TABLE `workingforum_thread`
  ADD CONSTRAINT `FK_788E9ABA1F7EE8A0` FOREIGN KEY (`lastReplyUser`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_788E9ABA225C0759` FOREIGN KEY (`subforum_id`) REFERENCES `workingforum_subforum` (`id`),
  ADD CONSTRAINT `FK_788E9ABAF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
