-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 04 déc. 2022 à 18:22
-- Version du serveur : 5.7.35-0ubuntu0.18.04.2
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `watson`
--

-- --------------------------------------------------------

--
-- Structure de la table `tl_liens`
--

CREATE TABLE `tl_liens` (
  `lien_id` int(11) NOT NULL,
  `lien_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_liens`
--

INSERT INTO `tl_liens` (`lien_id`, `lien_url`, `lien_titre`, `lien_desc`, `user_id`) VALUES
(1, 'https://cvtic.unilim.fr/', 'Campus Virtuel TIC', 'Site internet du CvTIC.', 1),
(2, 'https://duckduckgo.com/', 'Duck Duck Go', 'Le moteur de recherche qui ne trace pas ses utilisateurs.', 1),
(3, 'https://framasoft.org/', 'Framasoft', 'Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.', 1),
(4, 'https://www.google.fr', 'Google', 'Moteur de recherche', 1),
(5, 'http://www.test.com', 'Test', 'Test test', 1),
(6, 'http://www.test.com', 'Test', 'Test test', 1),
(7, 'http://www.test.com', 'Test', 'Test test', 1),
(8, 'http://www.test.com', 'Test', 'Test test', 1),
(9, 'http://www.test.com', 'Test', 'Test test', 1),
(10, 'http://www.test.com', 'Test', 'Test test', 1),
(11, 'http://www.test.com', 'Test', 'Test test', 1),
(12, 'http://www.test.com', 'Test', 'Test test', 1),
(13, 'http://www.test.com', 'Test', 'Test test', 1),
(14, 'http://www.test.com', 'Test', 'Test test', 1),
(15, 'http://www.test.com', 'Test', 'Test test', 1),
(16, 'http://www.test.com', 'Test', 'Test test', 1),
(17, 'http://www.test.com', 'Test', 'Test test', 1),
(18, 'http://www.test.com', 'Test', 'Test test', 1),
(19, 'http://www.test.com', 'Test', 'Test test', 1),
(20, 'http://www.test.com', 'Test', 'Test test', 1),
(21, 'http://www.test.com', 'Test', 'Test test', 1),
(22, 'http://www.test.com', 'Test', 'Test test', 1),
(23, 'http://www.test.com', 'Test', 'Test test', 1),
(24, 'http://www.test.com', 'Test', 'Test test', 1),
(25, 'http://www.test.com', 'Test', 'Test test', 1),
(26, 'http://www.test.com', 'Test', 'Test test', 1),
(27, 'http://www.test.com', 'Test', 'Test test', 1),
(28, 'http://www.test.com', 'Test', 'Test test', 1),
(29, 'http://www.test.com', 'Test', 'Test test', 1),
(30, 'http://www.test.com', 'Test', 'Test test', 1),
(31, 'http://www.test.com', 'Test', 'Test test', 1),
(32, 'http://www.test.com', 'Test', 'Test test', 1),
(33, 'http://www.test.com', 'Test', 'Test test', 1),
(34, 'https://eidson.info', 'Eidson', 'Eidson', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags`
--

CREATE TABLE `tl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags`
--

INSERT INTO `tl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'fac'),
(2, 'vieprivee'),
(3, 'opensource'),
(4, 'apprendre'),
(5, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags_liens`
--

CREATE TABLE `tl_tags_liens` (
  `tag_id` int(11) NOT NULL,
  `lien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags_liens`
--

INSERT INTO `tl_tags_liens` (`tag_id`, `lien_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(5, 35),
(5, 36),
(5, 37),
(5, 38);

-- --------------------------------------------------------

--
-- Structure de la table `tl_users`
--

CREATE TABLE `tl_users` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_users`
--

INSERT INTO `tl_users` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'admin', 'LsJKppRTEPz4uKrkhScOE6HBSvHuaIcFbAX9FWC7h/f5HffX4TBcFt7p8M0hqvGzFXL+JV8TzEYePoimaosfMQ==', '>=28!7NLw!S37zLjs7Uu[nC', 'ROLE_ADMIN'),
(2, 'test', 'K0AL3PYFRc9vYE347ct0A30UnVpNCJ2y4LQRpEjqr7Gx3QlYlLBH+TjO9AKGXpUFsihLpvAXjZt59M4JS4uQlw==', '639455d50a5a454baecd1de', 'ROLE_ADMIN'),
(3, 'test1', 'FAc6keFVcRoxNFeWB7xwsBSc0RT/VARK9k4F9eGUJF9qcYVk5rFFh+aLIHFVCHY3QfWJyWiROa0YBCaNqu/m6g==', 'a8daa8559367cdc34d31f57', 'ROLE_ADMIN'),
(4, 'test3', 'W5ZcExSVdp6Xfqc8tw5sV+TBtODw4Q/w2PztkI/fg4kHxq93xFDRF1l7VUHtl0HjSEQ7fRCoZCCpg5jALpl25Q==', '43c09d6547203c80090fec1', 'ROLE_ADMIN'),
(5, 'test4', 'EUEycW/vfotUPU3Ud5pPd8uRyn45/Our2DMWlVSnANM92hNhh8GVMpzdj6dD30wTqdTI1AKwynvR2IHAwbUsuQ==', 'c1b288a510936b8dc2cb01a', 'ROLE_ADMIN'),
(6, 'test5', 'zNM358elWE+l7z7sG/JT19SIBcynHuPSPdR8H8PDYI28m1mIBR9Y37ONSPhj7NOd6GdoTvYZI/HqRDVbUymmyA==', '1e91f5c715405d12d0fb2f4', 'ROLE_ADMIN'),
(7, 'test6', 'sdSZb0tKjDM5V8h5TutPt9pPcxcYQgICV2TV8ifpkiF0iQxN0CkhIYu+e5xysOR3v5Md0JYMlaZKTEprzotvHw==', '5e7a844fe244529e4c550de', 'ROLE_ADMIN'),
(8, 'test7', 'C34DBY0gTVMPWCKGvTdtmopgMx2kfgdAzmAUE6Gotn+8ISn2g0NTTUTYyh7sH27hZm2YeR80kZO79e9cQ8AxNA==', '4db11cd4ba8bd4262b0d381', 'ROLE_ADMIN'),
(9, 'test8', 'Z5DkvTg7wFUpbZ6b33BmT5WNB7eBMP0Xant+U+MimqLXaugK7+TBusYQBOZoSUeFb2i3OzHsq2vZWObPGBPHSA==', '1d97388b3d196df64428f5a', 'ROLE_ADMIN'),
(10, 'test9', '0A0AXywvFRUWcytAtZST3KIFaSAIyp3/nwKSkcbZ3ZRSz7qwJa9IJzX8LDCdpMvArDz2ke3uXEvgsM5cgOos7Q==', '55e442edc8790ab3e33055f', 'ROLE_ADMIN'),
(11, 'test10', '4YxYvWiEjWUb5gxOk/ZGnKqqVc5QdTrN8v1DGWnhYHhPBZAdbGsgm9fm+bY/tGraxYJpcZ8oVUE8GZZNq50Vbw==', '8d5beb8f234284a9f67b714', 'ROLE_ADMIN'),
(12, 'test11', 'HgohbHvoO7z8/q0YfAlRgJrYY618Yt6kiYt+hmDW9O4hckebM/ZuxWIrcGYo3AmwmZ59KEhqEyhDsZ/iTiiKtg==', 'e716c8c5db25fa4b2990d84', 'ROLE_ADMIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- Index pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tl_users`
--
ALTER TABLE `tl_users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tl_users`
--
ALTER TABLE `tl_users`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
