-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 fév. 2023 à 14:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rpg`
--

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

CREATE TABLE `arme` (
  `idArme` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `levelMin` int(11) NOT NULL,
  `degat` int(11) NOT NULL,
  `idTypeArme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `arme`
--

INSERT INTO `arme` (`idArme`, `nom`, `levelMin`, `degat`, `idTypeArme`) VALUES
(1, 'HacheDuLyon', 1, 10, 1),
(2, 'HacheDeFeu', 3, 20, 1),
(3, 'HachedeGlace', 7, 35, 1),
(4, 'Arc en bois', 1, 5, 2),
(5, 'Arc en bois debene', 5, 15, 2),
(6, 'Arc des anges', 9, 30, 2),
(7, 'Excalibur', 10, 65, 3),
(8, 'Arbalete givrante', 4, 15, 4),
(9, 'Dague de voleur', 2, 7, 6),
(10, 'Dage de contrebandier', 6, 14, 6);

-- --------------------------------------------------------

--
-- Structure de la table `attaque`
--

CREATE TABLE `attaque` (
  `idAttaque` int(11) NOT NULL,
  `nom` varchar(60) DEFAULT NULL,
  `baseDegat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `attaque`
--

INSERT INTO `attaque` (`idAttaque`, `nom`, `baseDegat`) VALUES
(1, 'attaque1', 10),
(2, 'attaque2', 50),
(3, 'attaque3', 50),
(5, 'Coup de pied', 40),
(6, 'Coup de poing', 35),
(7, 'Balayette', 5);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `idClasse` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `baseForce` int(11) NOT NULL,
  `baseAgi` int(11) NOT NULL,
  `baseIntel` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`idClasse`, `nom`, `baseForce`, `baseAgi`, `baseIntel`, `description`) VALUES
(1, 'Guerrier', 6, 2, 2, 'Classe de CaC, avec une bonne résistance et maniant pratiquement tous les types d\'armes'),
(2, 'Archer', 3, 5, 3, 'Classe à distance maniant les épées et les armes à distance'),
(3, 'Voleur', 4, 4, 4, 'Classe furtive, équilibrée mais ne maniant que les dagues');

-- --------------------------------------------------------

--
-- Structure de la table `dispose`
--

CREATE TABLE `dispose` (
  `idPersonnage` int(11) NOT NULL,
  `idArme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `dispose`
--

INSERT INTO `dispose` (`idPersonnage`, `idArme`) VALUES
(4, 4),
(4, 5),
(6, 4),
(6, 8),
(7, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `idPersonnage` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `surnom` varchar(60) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `idArmeUtilise` int(11) NOT NULL,
  `idClasse` int(11) NOT NULL,
  `dateNaissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`idPersonnage`, `nom`, `surnom`, `level`, `idArmeUtilise`, `idClasse`, `dateNaissance`) VALUES
(4, 'headhunter', 'HH', 10, 6, 2, '2003-06-01'),
(6, 'lartificier', 'lartificier', 7, 8, 2, '2007-02-01'),
(7, 'roguiBalbao', 'elBoxor', 10, 10, 3, '2003-05-01');

-- --------------------------------------------------------

--
-- Structure de la table `typearme`
--

CREATE TABLE `typearme` (
  `idTypeArme` int(11) NOT NULL,
  `libelle` varchar(60) NOT NULL,
  `estDistance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `typearme`
--

INSERT INTO `typearme` (`idTypeArme`, `libelle`, `estDistance`) VALUES
(1, 'Hache', 0),
(2, 'Arc', 1),
(3, 'Epee', 0),
(4, 'Arbalete', 1),
(5, 'Masse', 0),
(6, 'Dague', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilise`
--

CREATE TABLE `utilise` (
  `idAttaque` int(11) NOT NULL,
  `idPersonnage` int(11) NOT NULL,
  `levelAttaque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilise`
--

INSERT INTO `utilise` (`idAttaque`, `idPersonnage`, `levelAttaque`) VALUES
(1, 4, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`idArme`),
  ADD KEY `FK_TYPE_ARME` (`idTypeArme`);

--
-- Index pour la table `attaque`
--
ALTER TABLE `attaque`
  ADD PRIMARY KEY (`idAttaque`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`idClasse`);

--
-- Index pour la table `dispose`
--
ALTER TABLE `dispose`
  ADD PRIMARY KEY (`idPersonnage`,`idArme`),
  ADD KEY `FK_ARME` (`idArme`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`idPersonnage`),
  ADD KEY `FK_CLASSE` (`idClasse`),
  ADD KEY `FK_ARME_UTILISE` (`idArmeUtilise`);

--
-- Index pour la table `typearme`
--
ALTER TABLE `typearme`
  ADD PRIMARY KEY (`idTypeArme`);

--
-- Index pour la table `utilise`
--
ALTER TABLE `utilise`
  ADD PRIMARY KEY (`idAttaque`,`idPersonnage`),
  ADD KEY `FK_PERSONNAGE_UTILISE` (`idPersonnage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arme`
--
ALTER TABLE `arme`
  MODIFY `idArme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `attaque`
--
ALTER TABLE `attaque`
  MODIFY `idAttaque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `idClasse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `idPersonnage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `typearme`
--
ALTER TABLE `typearme`
  MODIFY `idTypeArme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `arme`
--
ALTER TABLE `arme`
  ADD CONSTRAINT `FK_TYPE_ARME` FOREIGN KEY (`idTypeArme`) REFERENCES `typearme` (`idTypeArme`);

--
-- Contraintes pour la table `dispose`
--
ALTER TABLE `dispose`
  ADD CONSTRAINT `FK_ARME` FOREIGN KEY (`idArme`) REFERENCES `arme` (`idArme`),
  ADD CONSTRAINT `FK_PERSONNAGE` FOREIGN KEY (`idPersonnage`) REFERENCES `personnage` (`idPersonnage`) ON DELETE CASCADE;

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `FK_ARME_UTILISE` FOREIGN KEY (`idArmeUtilise`) REFERENCES `arme` (`idArme`),
  ADD CONSTRAINT `FK_CLASSE` FOREIGN KEY (`idClasse`) REFERENCES `classe` (`idClasse`);

--
-- Contraintes pour la table `utilise`
--
ALTER TABLE `utilise`
  ADD CONSTRAINT `FK_ATTAQUE_UTILISE` FOREIGN KEY (`idAttaque`) REFERENCES `attaque` (`idAttaque`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PERSONNAGE_UTILISE` FOREIGN KEY (`idPersonnage`) REFERENCES `personnage` (`idPersonnage`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
