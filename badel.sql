-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 27 juin 2021 à 03:51
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `badel`
--

-- --------------------------------------------------------

--
-- Structure de la table `loginadmin`
--

DROP TABLE IF EXISTS `loginadmin`;
CREATE TABLE IF NOT EXISTS `loginadmin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Sexe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Role` int(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `loginadmin`
--

INSERT INTO `loginadmin` (`Id`, `prenom`, `nom`, `Sexe`, `pseudo`, `password`, `Role`) VALUES
(1, 'Bara', 'WADE', 'Mr', 'bara', 'ok', 1),
(2, 'Médoune Siby Georges', 'Baldé', 'M', 'MSGB', '123456', 1);

-- --------------------------------------------------------

--
-- Structure de la table `p1demandeurcollectif`
--

DROP TABLE IF EXISTS `p1demandeurcollectif`;
CREATE TABLE IF NOT EXISTS `p1demandeurcollectif` (
  `idDC` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sexe_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `adresse_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact1_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact2_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nat_juridique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `denomination` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `reconnaisance_juridique` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lieu_Collectif` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pays_exterieur` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `region_exterieure` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `departement_exterieur` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `commune_exterieure` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Qtr_Village_exterieur` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `region_interieure` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `departement_interieur` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `commune_interieure` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Qtr_Village_interieur` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `total_membre` int(255) NOT NULL,
  `total_homme` int(255) NOT NULL,
  `total_femme` int(255) NOT NULL,
  `inscritPar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDC`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `p1demandeurindividuel`
--

DROP TABLE IF EXISTS `p1demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p1demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `inscritPar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tel1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tel2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `commune_rattach` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_rattach` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `commune_actuelle` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_actuel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tranche_age` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `etude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `niveau_etude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `formation_prof` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sejour` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pays_sejourne` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `motif_sejour` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `experience_prof` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `domaine_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `duree_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `statut_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `region_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_exp_prof` longtext CHARACTER SET utf8 NOT NULL,
  `autre_region_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hors_senegal` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `soutien_immediat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titre_accompagnement` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `supp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p1demandeurindividuel`
--

INSERT INTO `p1demandeurindividuel` (`idDI`, `inscritPar`, `formulaire_id`, `prenom`, `nom`, `tel1`, `tel2`, `commune_rattach`, `quartier_rattach`, `commune_actuelle`, `quartier_actuel`, `sexe`, `tranche_age`, `etude`, `niveau_etude`, `formation_prof`, `sejour`, `pays_sejourne`, `motif_sejour`, `experience_prof`, `domaine_exp_prof`, `duree_exp_prof`, `statut_exp_prof`, `region_exp_prof`, `departement_exp_prof`, `commune_exp_prof`, `quartier_exp_prof`, `autre_region_exp_prof`, `hors_senegal`, `situation_prof`, `soutien_immediat`, `titre_accompagnement`, `supp`) VALUES
(3, '2', 'Form1624757722082', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'masculin', '15-25 ans', 'Ecole_Francaise', 'Francais Universitaire', 'OUI', 'OUI', 'Guinée Bisseau', 'Visite', 'OUI', 'Prestations_Intellectuelles', '+1an-3ans', 'Salarie', 'Dakar', 'Dakar', 'Dakar Plateau', 'test', 'test', 'test', 'Elève - Etudiant', 'financier', 'Personnel', 0),
(4, '2', 'Form1624757872871', 'test1', 'test2', 'test3', 'test4', 'test5', 'test6', 'test7', 'test8', 'masculin', '15-25 ans', 'Ecole_Francaise', 'Francais Primaire', 'OUI', 'OUI', 'Guinée Bisseau', 'Visite', 'OUI', 'Prestations_Intellectuelles', '+1an-3ans', 'Salarie', 'Dakar', 'Dakar', 'Dakar Plateau', 'test9', 'test10', 'test11', 'Elève - Etudiant', 'financier', 'Personnel', 0);

-- --------------------------------------------------------

--
-- Structure de la table `p2demandeurcollectif`
--

DROP TABLE IF EXISTS `p2demandeurcollectif`;
CREATE TABLE IF NOT EXISTS `p2demandeurcollectif` (
  `idDC` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activ_equip_primaire` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_commune` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_depart` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_region` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_autre_region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_hors_senegal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_secondaire` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `a_activ_equip_localite1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `a_activ_equip_localite2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_economique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mont_cap_social` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nbre_empl_perman` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nbre_empl_tempor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mont_eparg_mob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mont_endettement` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mont_sub_recu` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fonctionnalite` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `prise_decision` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `charte_relationnelle` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `plan_developpement` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `manuel_procedure` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `part_princ_technique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `part_princ_financier` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `app_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nature_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `localite_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `departement_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nat_intern_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDC`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `p2demandeurindividuel`
--

DROP TABLE IF EXISTS `p2demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p2demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sous_categories` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parcours` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marqueurs` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDI`),
  KEY `idDI` (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p2demandeurindividuel`
--

INSERT INTO `p2demandeurindividuel` (`idDI`, `formulaire_id`, `categories`, `sous_categories`, `parcours`, `marqueurs`) VALUES
(26, 'Form1624757872871', 'Insertion_emploi', 'Qualifié_à_la_recherche_d\'un_emploi', 'accomp_distant_et_parcours1_2_3_4', 'Accompagnement_de_Groupe');

-- --------------------------------------------------------

--
-- Structure de la table `p3demandeurindividuel`
--

DROP TABLE IF EXISTS `p3demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p3demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regi_commerce` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_regi_comm` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ninea` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_ninea` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_reference_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compte_bancaire_sfd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_banque_sfd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte_banque_sfd` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soutien_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDI`),
  KEY `idDI` (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p3demandeurindividuel`
--

INSERT INTO `p3demandeurindividuel` (`idDI`, `formulaire_id`, `regi_commerce`, `numero_regi_comm`, `ninea`, `numero_ninea`, `reference_prof`, `numero_reference_prof`, `compte_bancaire_sfd`, `nom_banque_sfd`, `numero_compte_banque_sfd`, `soutien_partenaire`, `ville_partenaire`, `pays_partenaire`) VALUES
(3, 'Form1624757872871', 'OUI', '31344422', 'OUI', '12121212', 'licence', 'DQDQSQS', 'oui_banque', 'bHS', '21231312', 'OUI', 'DAKAR', 'SENEGAL');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
