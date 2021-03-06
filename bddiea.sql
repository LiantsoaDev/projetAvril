-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 11 avr. 2018 à 13:47
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `bddiea`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `IDADMIN` int(11) NOT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `afa`
--

CREATE TABLE `afa` (
  `IDAFA` int(11) NOT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL,
  `STATE` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `apl`
--

CREATE TABLE `apl` (
  `IDAPL` int(11) NOT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `LATITUDE` varchar(250) DEFAULT NULL,
  `LONGITUDE` varchar(250) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `DATECRETION` date DEFAULT NULL,
  `CONTRATURL` varchar(250) DEFAULT NULL,
  `ETATCONTRAT` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `comments_id` int(11) DEFAULT NULL,
  `tag` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nblecture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `titre`, `contenu`, `users_id`, `comments_id`, `tag`, `created_at`, `updated_at`, `nblecture`, `statut`) VALUES
(1, 'Nos conseils pour mettre en valeur sa maison pour mieux la vendre', 'Vendre une maison n’est pas une mince à faire, surtout si vous ne souhaitez pas avoir recours aux services d’une agence immobilière. Il faut assurer le respect de certaines normes de construction. Les inspecteurs sont particulièrement exigeants quant à la performance des immeubles de nos jours.\r\n\r\nNéanmoins, pour les particuliers en quête d’un nouvel investissement, l’aménagement est le meilleur moyen de les convaincre. Les visites sont une partie importante de la transaction.\r\n\r\nPour vous, qui pour une raison ou une autre, doit trouver un acheteur rapidement pour votre résidence, voici quelques conseils pour mettre en valeur la maison afin de mieux la vendre : rapidement et à bon prix.\r\nUne maison, par définition, doit être confort et pratique. On dit souvent que votre décoration doit être à l’image de votre personnalité. D’ailleurs, sur internet, vous avez plusieurs astuces pour ce faire.\r\n\r\nDifférents styles sont disponibles, allant du vintage au plus moderne. Néanmoins, pour une vente, opter pour un aménagement neutre est de mise.', NULL, NULL, 'Appartement,Grenier,Villa,Maison', '2017-11-06 19:00:00', '2018-03-13 09:59:55', '22', 0),
(2, 'Quel est le premier investissement immobilier idéal pour un jeune couple ?', '<p>Que ce soit pour y vivre, ou pour en faire un complément de revenu, investir dans l’immobilier reste une valeur sûre. Pour un jeune couple, le premier investissement immobilier idéal est, incontestablement, l’achat de la résidence principale.\r\n\r\nL’acquisition de la première résidence apportera au couple un sentiment de sécurité et leur est bénéfique sur le plan financier. En effet, la différence de prix entre la location et l’achat immobilier est minime, surtout avec les taux de crédit favorisant les primo-accédants. De plus, opter pour un investissement immobilier c’est aussi se construire un patrimoine pour la génération future.\r\n\r\nNéanmoins, cet investissement est loin d’être sans risques. Sans préparation, l’achat de votre premier appartement peut vite tourner au cauchemar et même gâcher vos projets d’avenir. Pour vous aider, voici quelques astuces pour effectuer votre premier investissement.</p>\r\n<p>Premier investissement immobilier : être primo-accédant</p>\r\n<p>Le terme « primo-accédant » est un terme utilisé dans le domaine de l’immobilier pour désigner un particulier se lançant dans son premier achat immobilier. En général, un primo-accédant n’est pas encore propriétaire d’un bien immobilier. Ce sont, en général, des jeunes couples dont la plupart sont dans une classe d’âge de 25 à 34 ans.\r\n\r\nPlus de 80% des primo-accédants sont des couples à la recherche de leur premier foyer dont les 58% ont au moins un enfant. Les plus prisés par ces jeunes parents sont les maisons de ville ou les pavillons. Plus précisément, le terme « primo-accédant » ne s’applique pas forcement à une personne encore nouvelle dans le monde de l’investissement immobilier.\r\n\r\nEn effet, celui-ci peut être un ancien propriétaire mais pour une raison ou une autre ne l’est plus depuis plus de deux ans avant son prochain achat. Enfin, une personne possédant plusieurs biens immobiliers peut très bien être juridiquement un primo-accédant si elle n’est pas propriétaire de sa résidence principale.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-06 19:00:00', NULL, '', 0),
(4, 'Nos conseils pour mettre en valeur sa maison pour mieux la vendre', 'Vendre une maison n’est pas une mince à faire, surtout si vous ne souhaitez pas avoir recours aux services d’une agence immobilière. Il faut assurer le respect de certaines normes de construction. Les inspecteurs sont particulièrement exigeants quant à la performance des immeubles de nos jours.\r\n\r\nNéanmoins, pour les particuliers en quête d’un nouvel investissement, l’aménagement est le meilleur moyen de les convaincre. Les visites sont une partie importante de la transaction.\r\n\r\nPour vous, qui pour une raison ou une autre, doit trouver un acheteur rapidement pour votre résidence, voici quelques conseils pour mettre en valeur la maison afin de mieux la vendre : rapidement et à bon prix.\r\nUne maison, par définition, doit être confort et pratique. On dit souvent que votre décoration doit être à l’image de votre personnalité. D’ailleurs, sur internet, vous avez plusieurs astuces pour ce faire.\r\n\r\nDifférents styles sont disponibles, allant du vintage au plus moderne. Néanmoins, pour une vente, opter pour un aménagement neutre est de mise.', NULL, NULL, 'Appartement,Grenier,Villa,Maison', '2017-11-07 19:00:00', '2018-03-01 10:38:19', '', 0),
(5, 'Construire pour revendre : ce qu’il faut savoir', '<p>L’immobilier est et sera toujours une valeur sûre. Surtout que depuis peu, les crédits immobiliers sont plus accessibles pour tous les ménages. Mais pour rentabiliser au maximum son placement, il reste encore à bien choisir ses investissements. Entre les SCPI, les achats clés en main et l’alternative de faire construire son bien : on n’a aujourd’hui que l’embarras du choix.\r\n\r\nEt il semble que la dernière option soit plus avantageuse que les autres. En outre, les possibilités de rentabilisations sont encore plus nombreuses. Les propriétaires peuvent faire une location, proposer des baux commerciaux, ou simplement revendre leur bien. Depuis quelques années, le dispositif fiscal en matière d’investissement immobilier ne cesse d’augmenter.\r\n\r\nOn peut voir que trouver un logement décent sans payer le prix fort est assez difficile. De plus en plus de ménages optent désormais pour la construction dans le but d’une revente, pour le bonheur des entrepreneurs. Le point.</p>\r\n<p>Les frais de construction d’une maison reviennent moins chers que d’acheter une maison clé en main. Certes, acquérir une maison peut être plus rapide, mais la première option revêt des avantages plus intéressants.</p>\r\n<p>Le prix moyen pour un terrain constructible est de 140€ le m2, alors que le prix moyen pour une maison est de 1 850€ le m2 et 3 300€ pour un appartement.</p>\r\n<p>Tout dépend des régions dans lesquels vous investissez. Dans les villes comme Paris, Nantes, Bordeaux, Lyon et toute la côte méditerranéenne entre Monaco et Montpellier le prix moyen est de 3 700€ le m2 pour une maison alors que pour le reste de la France, il sera de 1 800€ le m2.</p>\r\n<p>Tout dépend des régions dans lesquels vous investissez. Dans les villes comme Paris, Nantes, Bordeaux, Lyon et toute la côte méditerranéenne entre Monaco et Montpellier le prix moyen est de 3 700€ le m2 pour une maison alors que pour le reste de la France, il sera de 1 800€ le m2.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 19:00:00', '2017-11-22 08:07:02', '', 0),
(6, 'Zoom sur le métier de promoteur immobilier', '<p> L’immobilier est un secteur très vaste et pris en charge par de nombreuses personnes qui présentent des fonctions différentes à des responsabilités toutes aussi différentes. Avec une influence grandissante sur l’économie à l’échelle mondiale, l’immobilier est un des grands piliers de la mise en marche d’une économie très importante.</p>\r\n<p>Bien que de nombreuses personnes travaillent dans l’immobilier, et cela aussi bien en tant que professionnel que particulier, il est nécessaire d’avoir des compétences bien définies. Un des métiers les plus courants dans le domaine est le métier de « promoteur immobilier ».</p>\r\n<p>Mais que peut bien faire un promoteur immobilier ?</p>\r\n<p>Un promoteur immobilier est celui qui vend des espaces construits ou à construire. Auparavant, on le connaissait comme étant un monteur d’affaire immobilière. En effet des dizaines d’années plus tôt, avec une intense construction de logements, les spéculations immobilières forgèrent petit à petit le personnage du promoteur immobilier jusqu’à lui attribué une fonction officielle.</p>\r\n<p>Et dans son acception, le promoteur immobilier est celui qui est à la charge du processus de l’offre sur le marché. C’est-à-dire qu’il prend en compte les demandes, les aspects réglementaires, le foncier et les moyens de financement dans un projet immobilier tout en prenant compte les risques.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 19:00:00', '2017-11-22 08:07:10', '', 0),
(7, 'Tout savoir sur l’assurance pour un prêt immobilier', '<p>Lorsque vous prenez un crédit immobilier, votre banquier vous parlera surement de l’assurance prêt immobilier. Votre banquier peut vous le réclamer pour un prêt à taux zéro, pour un prêt relais ou pour tout autre type de prêt immobilier. Vous pouvez entendre et lire que cette assurance est obligatoire, ce qui n’est pas le cas. Nous allons vous apporter dans ce dossier plusieurs informations par rapport à ce sujet et vous présenter si elle est vraiment indispensable pour votre prêt.</p>\r\n<p>Lorsqu’on contracte un crédit immobilier et qu’on évoque l’assurance prêt immobilier ou l’assurance emprunteur correspondante, on se demande si elle est obligatoire. Nous tenons à souligner que contrairement à l’assurance auto ou l’assurance habitation, elle n’est pas légalement obligatoire, mais certains établissements bancaires et établissements financiers peuvent vous l’exiger.</p>\r\n<p>Depuis 2010 avec l’entrée en vigueur de la loi Lagarde, vous n’êtes pas obligé de prendre l’offre d’assurance proposée par votre prêteur, ce qui vous offre un libre choix de l’assurance-crédit qui vous convient, et ce, auprès d’un autre établissement. Dans certains cas, notamment ceux qui ont un patrimoine important, il est possible de contourner cette obligation de l’assurance prêt immobilier en mettant en garantie vos biens</p>\r\n<p>A quoi sert-elle ?</p>\r\n<p>Si certains établissements bancaires ou institutions financières exigent l’assurance crédit immobilier, c’est pour se protéger de toute défaillance de remboursement de son client. Il faut noter que cette assurance ne protège pas que l’organisme prêteur, car il couvre également le souscripteur de crédit.</p>', NULL, NULL, 'Appartement, Grenier, Villa, Maison', '2017-11-07 19:00:00', '2017-11-22 08:13:27', '', 0),
(8, 'Assurances : quels sont les points à vérifier avant de déménager', '<p>Vous avez trouvé un nouveau logement et allez quitter l’ancien ? En plus de devoir gérer votre déménagement, préoccupez-vous de vos contrats d’assurance. Nous vous expliquons comment faire.</p>\r\n<p>Si vous optez pour  un déménageur professionnel</p>\r\n<p>Ce dernier vous fait profiter de son assurance responsabilité civile, qui jouera s’il abime l’un des objets transporté pour votre compte. Attention, vous ne pourrez pas faire jouer sa responsabilité si les meubles ou objets sont endommagés avant le déménagement, si vous avez mal emballé vos biens personnels ou si vos cartons de déménagement sont volés durant le voyage.</p>\r\n<p>Astuce : lisez avec application le contrat que vous fera signer le transporteur, il précise les garanties dont vous bénéficierez en cas de sinistre, et notamment le plafond de remboursement. Si vous avez des biens de valeurs (meubles design, objets de collection,…), n’hésitez pas à faire augmenter ce montant, pour être bien remboursé en cas de problème.</p>\r\n<p>Si vous effectuez vous même votre déménagement</p>\r\n<p>Dans ce cas, vous pourrez faire jouer la responsabilité civile du proche qui vous aide à déménager et qui a abimé l’un des biens transportés. A condition qu’il ait un contrat d’habitation, ou une carte bancaire, qui couvre sa responsabilité civile. Là aussi soyez vigilant en examinant à la loupe le montant des garanties. A noter : le contrat d’assurance habitation de votre ancien logement peut parfois prendre en charge une partie de votre déménagement, voire vous offrir des garanties spécifiques.</p>\r\n<p>Que faire de vos autres contrats ?</p>\r\n<p>Outre que vous devrez souscrire un contrat multirisques habitation avant de vous installer dans votre nouveau domicile, il faut aussi indiquer votre nouvelle adresse à tous vos assureurs. Même si vous conservez votre contrat, la tarification peut varier. Car les assureurs prennent en compte différents paramètres pour fixer le montant de leurs primes. Si vous déménagez dans une région où les cambriolages sont plus nombreux, le prix de votre assurance habitation augmentera en conséquence. Si votre nouvel appartement compte un garage, alors qu’auparavant votre véhicule stationnait dans la rue, votre prime d’assurance voiture diminuera. Enfin, si vous partez vous installer sur la Côte d’Azur ou en région parisienne où les dépassements d’honoraires sont monnaie courante, vous paierez plus cher la même couverture santé. Déménager peut donc être le bon moment pour résilier votre assurance.</p>', NULL, NULL, 'Maison, contrat, immeuble', '2017-11-22 03:54:52', '2017-11-23 23:33:58', '', 0),
(12, 'Fait le point sur les droits de mutation', 'Plus de 90 départements français ont décidé de relever le taux des droits de mutation à 4,5%, mais Paris fait partie de ceux qui ont décidé de les laisser à 3,8 %. Vous ne verrez donc aucune différence de prix entre le 31 mars et le 1er avril dans votre agence immobilière de Paris 9e!<div><br></div>', NULL, NULL, 'mutation,droit', '2018-03-06 12:17:37', '2018-03-06 12:17:37', NULL, 1),
(20, 'Vers une baisse des transactions dans l’ancien', ' <p>Pour plus d\'information, veuillez suivre le lien <a href=http://www.lemonde.fr/argent/article/2018/01/31/immobilier-les-taux-d-interet-devraient-rester-attractifs-en-2018_5249643_1657007.html>\'Vers une baisse des transactions dans l’ancien\'</a></p><br><p>Le Crédit foncier prévoit, en outre, une baisse des indicateurs de marché, qui resteront toutefois à des niveaux élevés : le volume de crédits immobiliers distribués par les banques aux particuliers reculerait de 6 %, à 167 milliards d’euros, et les transactions dans l’ancien, de 7 %, à 900 000 ventes, un niveau néanmoins supérieur de 30 % à la moyenne de la décennie.\r\n\r\nLa filiale de BPCE attend enfin un recul de 5 % des constructions de logements neufs et une hausse des prix dans l’ancien au plan national, à un rythme moindre que l’an dernier, de 2,5 %. Selon le dernier baromètre Crédit foncier-CSA, 80 % des professionnels de l’immobilier se déclarent optimistes pour 2018.</p> ', NULL, NULL, 'immobilier,maison', '2018-03-07 09:36:58', '2018-03-07 09:36:58', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `IDCOMMENTAIRE` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `encours_dachat`
--

CREATE TABLE `encours_dachat` (
  `ID` int(11) NOT NULL,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `LOGIN` varchar(1500) DEFAULT NULL,
  `AGENCE` varchar(1500) DEFAULT NULL,
  `DATEACHAT` date DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etatpossessionproduit`
--

CREATE TABLE `etatpossessionproduit` (
  `IDETATPOSSESSIONPRODUIT` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `IDFACTURE` int(11) NOT NULL,
  `IDTYPEFACTURE` int(11) NOT NULL,
  `REFERENCE` varchar(250) DEFAULT NULL,
  `DATECREATIONFACTURE` date DEFAULT NULL,
  `IDPAYEUR` int(11) DEFAULT NULL,
  `IDPAYE` int(11) DEFAULT NULL,
  `TYPEPAYEUR` varchar(250) DEFAULT NULL,
  `TYPEPAYE` varchar(250) DEFAULT NULL,
  `URLFICHIERFACTURE` varchar(250) DEFAULT NULL,
  `DATEPAIEMENTFACTURE` date DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `IDFAVORIS` int(11) NOT NULL,
  `IDPRODUIT` char(10) NOT NULL,
  `LOGIN` varchar(1500) NOT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`IDFAVORIS`, `IDPRODUIT`, `LOGIN`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'ID_REF010', 'Twist', '2018-01-16 00:48:38', '2018-01-16 00:48:39'),
(2, 'ID_REF002', 'Twist', '2018-01-16 00:59:04', '2018-01-16 00:59:06'),
(3, 'ID_REF014', 'Twist', '2018-01-16 01:06:50', '2018-01-16 01:06:51'),
(4, 'ID_REF009', 'Twist', '2018-01-22 16:56:42', NULL),
(5, 'ID_REF015', 'Twist', '2018-01-23 12:24:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `urlimage1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlimage2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlimage3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `urlimage1`, `urlimage2`, `urlimage3`, `type`, `blog_id`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Surfers_Paradise.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(2, 'Melbourne-Appartement.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(3, 'benowa-waters.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(4, 'Valla-beach-australie-a-1.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(5, 'Redland-Bay.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(6, 'Mount-Barker-australie-2.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(7, 'Tugun-terrain.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(8, 'Bridgewater-Terrain.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(9, 'Bangholme-Bureau-commercial.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(10, 'Australie-Entrepôt.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(11, 'Newport-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(12, 'Beenleigh-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(13, 'Normanby-Bureau.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(14, 'Melbourne_AUSTRALIE_Appartement.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(15, 'Melbourne-appartement-loft-vendre.jpg', 'caroussel-image-1.jpg', 'caroussel-image-2.jpg', NULL, NULL, NULL, '2017-11-06 19:00:00', NULL),
(16, 'louer-abordable.jpg', '', '', 'Blog', 1, NULL, '2017-11-06 19:00:00', NULL),
(17, 'engagement-immobilier.jpg', NULL, NULL, 'Blog', 2, NULL, '2017-11-07 19:00:00', NULL),
(18, 'investir-bien-immo.jpg', NULL, NULL, 'Blog', 3, NULL, '2017-11-07 19:00:00', NULL),
(19, '1521219325.jpg', NULL, NULL, NULL, 4, NULL, '2017-11-07 19:00:00', '2018-03-16 13:55:26'),
(20, 'construire-pour-revendre.jpg', NULL, NULL, 'Blog', 5, NULL, '2017-11-07 19:00:00', NULL),
(21, 'promotteur-immo.jpg', NULL, NULL, 'Blog', 6, NULL, '2017-11-07 19:00:00', NULL),
(22, 'tout-savoir-contrat.jpg', NULL, NULL, NULL, 7, NULL, '2017-11-07 19:00:00', NULL),
(34, '1521284915.jpg', NULL, NULL, 'pub', NULL, 'publicite coca-cola ;...;800;450', '2018-03-17 08:08:35', '2018-03-17 15:07:04'),
(35, '1521289903.png', NULL, NULL, 'pub', NULL, 'Envie de vacance en Australie;...;800;451', '2018-03-17 09:31:43', '2018-03-17 15:11:08'),
(36, '1521308910.jpg', NULL, NULL, 'pub', NULL, 'nouvelle gamme Peugeot;...;800;451', '2018-03-17 14:48:30', '2018-03-19 09:38:56'),
(37, '1522680792.JPG', NULL, NULL, 'pub', NULL, 'Publicite arriere de bus;...;800;450', '2018-04-02 11:53:12', '2018-04-02 11:54:24');

-- --------------------------------------------------------

--
-- Structure de la table `infocompte`
--

CREATE TABLE `infocompte` (
  `IDINFOCOMPTE` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `ETATINSCRIPTION` tinyint(1) DEFAULT NULL,
  `DROITINSCRIPTION` float DEFAULT NULL,
  `CPCPOURCENTAGE` float DEFAULT NULL,
  `CCVMINPOURCENTAGE` float DEFAULT NULL,
  `CCVMAJPOURCENTAGE` float DEFAULT NULL,
  `CCVSEUIL` float DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscriptionannule`
--

CREATE TABLE `inscriptionannule` (
  `IDINSCRIPTIONANNULE` int(11) NOT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `DATEINSCRIPTION` date DEFAULT NULL,
  `TYPEINSCRIPTION` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `listutilisateur`
--

CREATE TABLE `listutilisateur` (
  `IDUTILISATEUR` int(11) NOT NULL,
  `IDPERSONNEPHYSIQUE` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `DROIT` varchar(250) DEFAULT NULL,
  `DATECREATION` date DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `localisations`
--

CREATE TABLE `localisations` (
  `IDLOCALISATION` int(11) NOT NULL,
  `ADRESSE` varchar(250) DEFAULT NULL,
  `PAYS` varchar(250) DEFAULT NULL,
  `ETAT` varchar(250) DEFAULT NULL,
  `CITE` varchar(250) DEFAULT NULL,
  `CODEPOSTAL` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `localisations`
--

INSERT INTO `localisations` (`IDLOCALISATION`, `ADRESSE`, `PAYS`, `ETAT`, `CITE`, `CODEPOSTAL`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, '9 Hamilton Ave, Surfers Paradise QLD 4217, Australie', 'Australie', 'Queensland', 'Surfers Paradise', '4217', NULL, '2017-11-06 00:00:00'),
(2, 'Melbourne Victoria 3000, Australie', 'Australie', 'Victoria', 'Melbourne', '3000', NULL, '2017-11-06 00:00:00'),
(3, '30 Edinburgh Road Benowa Waters', 'Queensland', 'Gold coast', 'Benowa Waters', '4217', NULL, '2017-11-06 00:00:00'),
(4, 'Valla Beach, Nouvelle-Galles du Sud 2448, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Valla Beach', '2448', NULL, '2017-11-06 00:00:00'),
(5, 'MacLeay Island, Queensland 4184, Australie', 'Australie', 'Queensland', 'MacLeay Island', '4184', NULL, '2017-11-06 00:00:00'),
(6, 'Mount Barker, Australie-Méridionale 5251, Australie', 'Australie', 'Australie-Méridionale ', 'Mount Barker', '5251', NULL, '2017-11-04 00:00:00'),
(7, 'Piggabeen, Nouvelle-Galles du Sud 2486, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Piggabeen', '2486', NULL, '2017-11-03 00:00:00'),
(8, 'Bridgewater, Tasmanie 7030, Australie', 'Australie', 'Tasmanie', 'Bridgewater', '7030', NULL, '2017-11-05 00:00:00'),
(9, 'Dandenong South, Victoria 3175, Australie', 'Australie', 'Victoria', 'Dandenong South', '3175', NULL, '2017-11-02 00:00:00'),
(10, 'Yarrawonga, Palmerston Territoire du Nord 0830, Australie', 'Australie', 'Palmerston Territoire du Nord', 'Yarrawonga', '0830', NULL, '2017-11-01 00:00:00'),
(11, 'Newport 2106, Newport Nouvelle-Galles du Sud, Australie', 'Australie', 'Nouvelle-Galles du Sud', 'Newport', '2106', NULL, '2017-11-02 00:00:00'),
(12, 'Loganholme, Queensland 4129, Australie\r\n', 'Australie', 'Queensland', 'Loganholme', '4129', NULL, '2017-11-06 00:00:00'),
(13, 'Spring Hill, Queensland 4000, Australie', 'Australie', 'Queensland', 'Spring Hill', '4000', NULL, '2017-11-03 00:00:00'),
(16, 'ig 67 ha', 'Antarctique', 'alefa', 'tana', '101', '2018-01-22 21:48:35', '2018-01-22 21:48:35'),
(17, 'Ambohimangakely', 'Madagascar', 'Madagascar', 'Antananarivo', '101', '2018-02-12 08:56:29', '2018-02-12 08:56:29'),
(18, 'Ambohimangakely', 'Madagascar', 'Madagascar', 'Antananarivo', '101', '2018-02-12 08:57:15', '2018-02-12 08:57:15'),
(19, 'Ambohimangakely', 'Madagascar', 'Madagascar', 'Antananarivo', '101', '2018-02-12 09:16:43', '2018-02-12 09:16:43'),
(20, 'logt 23', 'Madagascar', 'Madagascar', 'Antananarivo', '101', '2018-02-12 09:33:12', '2018-02-12 09:33:12'),
(21, 'Lot 23 tana', 'Madagascar', '', 'Antananarivo', '101', '2018-02-14 14:20:47', '2018-02-14 14:20:47'),
(22, 'Lot 23 tana', 'Madagascar', '', 'Antananarivo', '101', '2018-02-14 14:25:01', '2018-02-14 14:25:01'),
(23, 'Lot 23 tana', 'Madagascar', '', 'Antananarivo', '101', '2018-02-14 14:26:04', '2018-02-14 14:26:04'),
(24, NULL, 'Madagascar', NULL, NULL, NULL, '2018-03-21 15:19:59', '2018-03-21 15:19:59');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `IDMEMBRE` int(11) NOT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `ETATNEWSLETTER` tinyint(1) DEFAULT NULL,
  `ETATPARTAGEDONNEE` tinyint(1) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`IDMEMBRE`, `IDPERSONNEMORALE`, `IDPERSONNEPHYSIQUE`, `STATUTCOMPTE`, `ETATNEWSLETTER`, `ETATPARTAGEDONNEE`, `UPDATED_AT`, `CREATED_AT`, `NUMINSCRIPTION`) VALUES
(1, NULL, 2, 0, 1, 1, '2018-01-22 18:06:48', '2018-01-22 18:06:48', ''),
(2, NULL, 3, 0, 1, 1, '2018-01-22 20:18:46', '2018-01-22 20:18:46', ''),
(3, NULL, 4, 0, 1, 1, '2018-01-22 21:48:35', '2018-01-22 21:48:35', ''),
(4, NULL, 5, 0, 1, 0, '2018-02-12 08:57:15', '2018-02-12 08:57:15', ''),
(5, NULL, 6, 0, 1, 0, '2018-02-12 09:16:43', '2018-02-12 09:16:43', ''),
(6, NULL, 7, 1, 1, 1, '2018-02-12 09:33:33', '2018-02-12 09:33:12', 'CLI-s9b2a1'),
(7, NULL, 8, 0, 1, 1, '2018-02-14 14:20:47', '2018-02-14 14:20:47', ''),
(8, NULL, 9, 0, 1, 1, '2018-02-14 14:25:01', '2018-02-14 14:25:01', ''),
(9, NULL, 10, 0, 1, 1, '2018-02-14 14:26:04', '2018-02-14 14:26:04', ''),
(10, NULL, 11, 0, 1, 1, '2018-03-21 15:19:59', '2018-03-21 15:19:59', '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_26_180241_create_table_publicite', 2),
(4, '2018_03_09_125357_add_some_columns_to_users_table', 3),
(5, '2018_03_09_142602_add_column_to_users_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `optionproduits`
--

CREATE TABLE `optionproduits` (
  `idoptionproduit` int(11) NOT NULL,
  `produit_id` varchar(190) NOT NULL,
  `ch` int(11) DEFAULT NULL,
  `sdb` int(11) DEFAULT NULL,
  `garage` int(11) DEFAULT NULL,
  `typepropriete` varchar(190) DEFAULT NULL,
  `Autres` text,
  `Parking` tinyint(1) NOT NULL,
  `piscine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `optionproduits`
--

INSERT INTO `optionproduits` (`idoptionproduit`, `produit_id`, `ch`, `sdb`, `garage`, `typepropriete`, `Autres`, `Parking`, `piscine`) VALUES
(1, 'ID_REF001', 3, 2, NULL, 'Appartement', NULL, 0, 1),
(2, 'ID_REF002', 2, 2, NULL, 'Résidentiel', NULL, 1, NULL),
(3, 'ID_REF003', 5, 4, 2, 'Résidentiel', NULL, 1, NULL),
(4, 'ID_REF004', 5, 2, 1, 'Résidentiel', NULL, 0, 2),
(5, 'ID_REF005', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
(6, 'ID_REF006', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
(7, 'ID_REF007', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
(8, 'ID_REF008', NULL, NULL, NULL, 'Terrain', NULL, 0, NULL),
(9, 'ID_REF009', NULL, NULL, NULL, 'Bureau & Local commercial', 'Catégorie: Entreprise', 1, NULL),
(10, 'ID_REF010', NULL, NULL, NULL, 'Entrepôt & Local d\'activité', NULL, 1, NULL),
(11, 'ID_REF011', NULL, NULL, NULL, 'Bureau & Local commercial', 'terrain de tennis, cafeteria,salle de sport', 1, NULL),
(12, 'ID_REF014', 1, 1, NULL, 'Résidentiel', 'Catégorie: Appartement et loft', 1, NULL),
(13, 'ID_REF015', 2, 1, 1, 'Résidentiel', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parametres` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `libelle`, `lien`, `parametres`, `created_at`, `updated_at`) VALUES
(1, 'Page d\'accueil', '/', 'accueil', NULL, NULL),
(2, 'Page d\'inscription Membre', '/membre', 'membre', NULL, NULL),
(3, 'Page d\'inscription Vendeur', '/seller', 'vendeur', NULL, NULL),
(4, 'Page d\'inscription AFA', '/agence-francophone-australien', 'afa', NULL, NULL),
(5, 'Page d\'inscription APL', '/agence-partenaire-local', 'apl', NULL, NULL),
(6, 'Page Services', '/services', 'services', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('value=tsorakoto@gmail.com', '$2y$10$qEuY9zHX/N5h0CpZC8xtK.L7ryNlZO3MgIyZZEOh5L.gCvQYIF.J6', '2018-03-09 12:13:35'),
('value=\'tsorakoto@gmail.com\'', '$2y$10$2p7aAuvsNgxhvkDNRdv9CO0n2naY0DTRHifwBdxbFFJvb3uYhtIUC', '2018-03-12 11:41:59');

-- --------------------------------------------------------

--
-- Structure de la table `personnemoral`
--

CREATE TABLE `personnemoral` (
  `IDPERSONNEMORALE` int(11) NOT NULL,
  `IDLOCALISATION` int(11) NOT NULL,
  `NOM` varchar(250) DEFAULT NULL,
  `ETATCOMPTE` tinyint(1) DEFAULT NULL,
  `URLSITEWEB` varchar(250) DEFAULT NULL,
  `LOGO` varchar(250) DEFAULT NULL,
  `PRESENTATION` text,
  `TELEPHONE` varchar(250) DEFAULT NULL,
  `EMAIL` varchar(250) DEFAULT NULL,
  `ETATPAIEMENTCOMPTE` tinyint(1) DEFAULT NULL,
  `OBSERVATION` text,
  `OPERABILITE` float DEFAULT NULL,
  `LANGUAGE` varchar(250) DEFAULT NULL,
  `CRM_PROVIDER_NAME` varchar(250) DEFAULT NULL,
  `CRM_PROVIDER_EMAIL` varchar(250) DEFAULT NULL,
  `COMPTEPAYPAL` varchar(250) DEFAULT NULL,
  `REFBANCAIRE` varchar(250) DEFAULT NULL,
  `LOGIN` varchar(1500) DEFAULT NULL,
  `MOTDEPASSE` varchar(1500) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `TYPENATURE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnemoral`
--

INSERT INTO `personnemoral` (`IDPERSONNEMORALE`, `IDLOCALISATION`, `NOM`, `ETATCOMPTE`, `URLSITEWEB`, `LOGO`, `PRESENTATION`, `TELEPHONE`, `EMAIL`, `ETATPAIEMENTCOMPTE`, `OBSERVATION`, `OPERABILITE`, `LANGUAGE`, `CRM_PROVIDER_NAME`, `CRM_PROVIDER_EMAIL`, `COMPTEPAYPAL`, `REFBANCAIRE`, `LOGIN`, `MOTDEPASSE`, `UPDATED_AT`, `CREATED_AT`, `TYPENATURE`) VALUES
(2, 1, 'Stephane', 1, 'koko.com', 'assets/images/1516061484.jpg', NULL, '0332450050', 'twistmac@hotmail.fr', 0, NULL, 0, 'Français', NULL, NULL, NULL, NULL, 'Octobone', '0000', '2018-01-15 14:46:19', '2018-01-15 14:46:21', 2);

-- --------------------------------------------------------

--
-- Structure de la table `personnephysique`
--

CREATE TABLE `personnephysique` (
  `IDPERSONNEPHYSIQUE` int(11) NOT NULL,
  `IDLOCALISATION` int(11) NOT NULL,
  `NOM` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `PRENOM` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `LOGIN` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `MOTDEPASSE` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `GENRE` tinyint(1) DEFAULT NULL,
  `DATENAISSANCE` date DEFAULT NULL,
  `EMAIL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TELEPHONE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `FAX` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `REFBANCAIRE` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `COMPTEPAYPAL` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `OBSERVATION` mediumtext CHARACTER SET utf8,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `AVATAR` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `TYPENATURE` int(11) DEFAULT NULL,
  `LANGUAGE` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `personnephysique`
--

INSERT INTO `personnephysique` (`IDPERSONNEPHYSIQUE`, `IDLOCALISATION`, `NOM`, `PRENOM`, `LOGIN`, `MOTDEPASSE`, `GENRE`, `DATENAISSANCE`, `EMAIL`, `TELEPHONE`, `FAX`, `REFBANCAIRE`, `COMPTEPAYPAL`, `OBSERVATION`, `UPDATED_AT`, `CREATED_AT`, `AVATAR`, `TYPENATURE`, `LANGUAGE`) VALUES
(1, 6, 'Twist gfgg', 'Stephane', 'Twist', '1111', 0, '2018-01-19', 'test@yahoo.fr', '0348431881', '216335210', '1210', '95623063206130', 'test', '2018-01-19 12:07:41', '2018-01-19 12:07:43', 'assets/images/1516536559.jpg', 0, 'Francais'),
(4, 16, 'liantsoa', 'lints', '', '', 1, '2018-01-18', 'bg@yahoo.fr', 'AFG  +93 7536000', '', '4444444444444444', '', '', '2018-01-22 21:48:35', '2018-01-22 21:48:35', 'membreParticulier/kWV9L4v2y5hRrqPdSS35EyDIFINGLVmnVR4Vae6p.jpeg', 0, 'fr'),
(5, 18, 'RAKOTARINIA', 'Liantsoa', '', '', 1, '1994-05-25', 'tsorakoto@gmail.com', 'MDG  +261 346840379', '', '5555 5555 5555 5555', '', '', '2018-02-12 08:57:15', '2018-02-12 08:57:15', 'membreParticulier/d2wQO7oBoWFl4Cy2VxD0rj9sFjztz3OKPFPduJcu.jpeg', 0, 'fr'),
(6, 19, 'RAKOTARINIA', 'Liantsoa', '', '', 1, '1994-05-25', 'tsorakoto@gmail.com', 'MDG  +261 346840379', '', '5555 5555 5555 5555', '', '', '2018-02-12 09:16:43', '2018-02-12 09:16:43', 'membreParticulier/tBCiAhJ9mbVddgBrCnBzLXdrXWUrSECmaE6wZemM.jpeg', 0, 'fr'),
(7, 20, 'pepeta', 'piso', '', '', 1, '2014-01-10', 'tsorakoto@gmail.com', 'MDG  +261 3498734', '', '324234242342342342', '', '', '2018-02-12 09:33:12', '2018-02-12 09:33:12', 'membreParticulier/xlMe8scx0pWbujQ41oeE69GWIM24gCJABYMOtyCN.jpeg', 0, 'fr'),
(8, 21, 'Rakoto', 'keli', '', '', 1, '1994-02-15', 'tsorakoto@gmail.com', 'MDG  +261 32 23 232 32', '', '111111111111111', '', '', '2018-02-14 14:20:47', '2018-02-14 14:20:47', 'membreParticulier/FOSlcGCiFPrFFQLnELG9BdNW3QB6KYCWOpAJfi3i.jpeg', 0, 'fr'),
(9, 22, 'Rakoto', 'keli', '', '', 1, '1994-02-15', 'tsorakoto@gmail.com', 'MDG  +261 34 32 323 32', '', '444 444 44444 4444', '', '', '2018-02-14 14:25:01', '2018-02-14 14:25:01', 'membreParticulier/hIUwuHDK3fQrMsQWEpTvkIEk2ymhK7XyXHb6zRBG.jpeg', 0, 'fr'),
(10, 23, 'Rakoto', 'keli', '', '', 1, '1994-02-15', 'tsorakoto@gmail.com', 'MDG  +261 34 32 323 32', '', '444 444 44444 4444', '', '', '2018-02-14 14:26:04', '2018-02-14 14:26:04', 'membreParticulier/TAABqfXNjHSvSKpFkhPVq3KXPyDipK4NeE9lJHnK.jpeg', 0, 'fr'),
(11, 24, 'Lints', 'Rakoto', '', '', NULL, NULL, 'tsorakoto@gmail.com', ' ', '', NULL, '', '', '2018-03-21 15:19:59', '2018-03-21 15:19:59', 'membreParticulier/279KZTeTCb9pIPyi9TIrY91Fudr7Ech9nudjunn6.jpeg', 0, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `possessionproduit`
--

CREATE TABLE `possessionproduit` (
  `IDPOSSESSIONPRODUIT` int(11) NOT NULL,
  `IDETATPOSSESSIONPRODUIT` int(11) DEFAULT NULL,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `IDVENDEUR` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `idproduit` char(10) NOT NULL,
  `localisation_id` int(11) NOT NULL,
  `typeproduit_id` int(11) NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `description` text,
  `surface` varchar(250) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `images_id` int(10) NOT NULL,
  `tauxmisenavant` float DEFAULT NULL,
  `etatproduit` tinyint(1) DEFAULT NULL,
  `iframe` text,
  `slug` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`idproduit`, `localisation_id`, `typeproduit_id`, `nom`, `description`, `surface`, `prix`, `images_id`, `tauxmisenavant`, `etatproduit`, `iframe`, `slug`) VALUES
('ID_REF001', 1, 1, 'Surfers Paradise - Appartement', '\r\nSurfers Paradise - Appartement & loft à vendre\r\nAustralie> Queensland> Surfers Paradise\r\n1 500 000 EUR\r\nAppartement & Loft (Vente)\r\n3 ch 2 sdb 265 m²\r\nCet appartement de 3 chambres de taille généreuse bénéficie d\'une impression de sol de 265m2. Une suite parentale de taille presque égale à celle du salon et couplée à une robe de chambre connectée à la salle de bain garantit à ceux qui le désirent un bon goût de vie en appartement. Pour le plat principal, le côté nord de la Gold Coast vous permettra de profiter d\'une vue alléchante sur la magnifique Broadwater, de superbes toits de la ville animés par la vie et de vues sereines ininterrompues sur l\'océan depuis le salon! Entièrement équipée avec cuisinière à gaz et table de pique-nique, la vue sur l\'océan encapsulant de la cuisine fait pour une expérience culinaire merveilleuse pour les amis, la famille ou les invités! Plus de fonctionnalités comprennent une salle d\'eau, une buanderie séparée, une climatisation entièrement canalisée, une salle multimédia et 2 parkings. Un investissement incroyable ou incroyable en live! Caractéristiques et installations du bâtiment Q1: Concierge / Tour Booking Desk. Club des résidents, salles de réception et installations de conférence. Cinéma / cinéma interne. Deux piscines extérieures / lagunes. Une piscine intérieure chauffée. Spa intérieur. Salles de vapeur intérieures et saunas. Gymnase entièrement équipé. Salle de jeux. Célèbre Longboards Café et Pool Bar. Gestion sur site. Sécurité totale. Animaux acceptés. Zone de vente au détail avec dépanneur. Minutes à pied de la plage de baignade. Minutes à pied de Surfers Paradise avec des boutiques, des restaurants et plus', '265', 2265000, 1, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56365.45787293253!2d153.422381!3d-27.998757!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b910fe19fd1c2b7%3A0x502a35af3dea680!2sSurfers+Paradise+Queensland+4217%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962436469\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF002', 2, 1, 'Melbourne - Appartement', '\r\nC\'est un superbe appartement de 2 chambres situé à Melbourne en Australie.\r\nL\'appartement pourrait être utilisé comme une maison de vacances ou comme une résidence permanente.\r\nIl y a une salle de réception incluse avec la propriété.\r\nEn outre, la propriété est également entièrement meublée.\r\nAvec la propriété il y a une piscine communale incluse.\r\nAvec la piscine communale il y a aussi un jardin privé.\r\nLa taille de la parcelle est mesurée à 75 mètres carrés.\r\navec la surface couverte étant 75m2.\r\nParking disponible inclus avec la propriété serait hors stationnement dans la rue.', '789', 500000, 2, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1610340.110288804!2d145.053135!3d-37.972566!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad646b5d2ba4df7%3A0x4045675218ccd90!2sMelbourne+Victoria%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962391364\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF003', 3, 1, 'Edinburgh - Appartement', 'Découvrez le charme classique de cette maison de bord de mer intemporelle de deux étages dans la belle Benowa Waters. Bénéficiant d\'un aspect nord-est enviable et d\'une vue imprenable sur l\'eau et la ville, cette maison surdimensionnée de 5 chambres comprend 4 salles de bains, une cuisine gastronomique et un espace en plein air avec piscine, le tout sur 831m2.', '831', 450000, 3, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3522.2244453997932!2d153.38991371586621!3d-28.017615082664427!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9104d5529d9f05%3A0xef9d933ccbaa8a55!2s30+Edinburgh+Rd%2C+Benowa+QLD+4217%2C+Australie!5e0!3m2!1sfr!2smg!4v1509962511836\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF004', 4, 1, 'Australie - Maison', '\r\n5 chambres (ou 4 plus étude), 2 salles de bains, salon ouvert, cuisine et salle à manger. Plafonds cathédrale et planchers de gomme tachetée polie dans toute la maison. Garage 3 voitures avec accès à la maison du garage via le garde-manger! La cuisine a une cuisinière à gaz et four électrique, lave-vaisselle et des plans de travail en granit. Le garde-manger est de la taille d\'une petite chambre à coucher afin que vous puissiez stocker ces achats spéciaux. C\'est l\'une des maisons les plus spacieuses dans lesquelles vous marcherez. Il est accueillant et chaleureux tout en ayant beaucoup d\'espaces privés pour ceux qui le veulent. La suite principale est fabuleuse, avec des robes de chambre et une salle de bains que vous voulez juste rester et profiter de l\'espace, la lumière et l\'ambiance. La salle de bains familiale est également spéciale, avec baignoire, douche séparée et vanité.', '650', 451260, 4, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d54955.02438080491!2d153.006723!3d-30.586323!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9c24d0bf2d0c2d%3A0x40609b490439ac0!2sValla+Beach+Nouvelle-Galles+du+Sud+2448%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962163576\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF005', 5, 1, 'Redland Bay - Terrain', '\r\nCe bloc résidentiel de 658 m2 est merveilleusement positionné, pratique pour le club de golf, les boutiques locales et la jetée de Macleay Island et le centre d\'affaires principal. Le bloc est complètement dégagé, pentes doucement de la route pavée, n\'a pas de problèmes de drainage, est clôturé sur 2 côtés et a actuellement des vues sur le terrain de golf à l\'arrière. Macleay Island offre un style de vie unique, avec une atmosphère de village convivial, un environnement de parc marin pittoresque et avec les magasins, clubs et services essentiels ici sur l\'île prêt pour que vous appréciiez', '658', 25000, 5, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d113140.72433937206!2d153.360607!3d-27.604452!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9165c75e7c96d1%3A0x502a35af3de8fa0!2sMacLeay+Island+Queensland+4184%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962053466\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF006', 6, 2, 'Mount Barker - Terrain', '\r\nC\'est une offre unique de terrains vacants. Idéalement situé dans une magnifique rue bordée d\'arbres, ce lotissement de près de 350 m² est situé à quelques pas des magasins, cabinets médicaux, banques, écoles et transports. Actuellement zoné «Résidentiel». Le conseil envisagera une utilisation à la maison ou au bureau. Il est presque impossible d\'obtenir une allocation centrale comme celle-ci au Mont Barker aujourd\'hui, alors ne tardez pas!\r\n', '350', 270000, 6, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d104479.9766268339!2d138.86599!3d-35.081751!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ab731cc551573a1%3A0x5033654628eb9a0!2sMount+Barker+Australie-M%C3%A9ridionale+5251%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962129253\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF007', 7, 2, 'Tugun - Terrain', '\r\nOffert à la vente, un terrain de 20 acres situé à proximité de tout le Tweed a à offrir. Pittoresque avec la façade de l\'eau à Piggabeen Creek, la propriété a un potentiel incroyable pour le développement futur. * 20 acres * Emplacement idéal et endroit où vivre * Derrière / Ouest de l\'aéroport de Coolangatta (pas sous aucune trajectoire de vol) * 10-15 minutes de l\'aéroport de Coolangatta et des plages. * 400 mètres de front de mer de marée \"Piggabeen Creek\" Utilisation du terrain: * Tourisme écologique, cheval, terrain de golf, etc .. * Développement futur \"Potentiel incroyable\"', '80 937', 1121100, 7, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56260.41230776478!2d153.435239!3d-28.198933!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b90fd07d398c869%3A0x50609b490443010!2sPiggabeen+Nouvelle-Galles+du+Sud+2486%2C+Australie!5e0!3m2!1sfr!2sus!4v1509961914092\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF008', 8, 3, 'Bridgewater - Terrain', '\r\nCe bloc de construction serait l\'un des meilleurs blocs à gauche dans la région. Prendre des vues sensationnelles du pont Bridgewater et au-delà dans une direction et des vues du mont Wellington et au-delà dans l\'autre sens. Avec une superficie approximative de 762 m2, ce terrain est assez grand pour construire la maison de vos rêves ou construire plusieurs unités (STCA). Il y a une réserve du Conseil à la droite de la propriété et elle aura des vues qui ne seront jamais perdues. Les bus ne sont qu\'à quelques pas. Il y a des écoles et de nombreux magasins, y compris les grands supermarchés à seulement quelques minutes. Si vous cherchez un bloc avec des vues incroyables, alors c\'est ici', '762', 32280, 8, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d93786.20888913731!2d147.225355!3d-42.728721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xaa6e12655e20d655%3A0x503c94dd0de1400!2sBridgewater+Tasmanie+7030%2C+Australie!5e0!3m2!1sfr!2sus!4v1509962922249\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF009', 9, 3, 'Bangholme - Bureau', '\r\nUne chance rare de posséder cette usine / entrepôt, il conviendra à une variété d\'occupants / affaires. Situation centrale accès facile à toutes les principales artères et autoroutes, un grand parking à l\'arrière et large route excellente pour l\'accès des gros camions. Caractéristiques du bâtiment comprennent: -3 bureaux-cuisine / salle à manger, toilettes -Hauteur volet roulant -Grande puissance -Parking à l\'arrière -Area de 484m2 env.', '484', 447967, 9, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d100566.7099988183!2d145.217749!3d-38.030547!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad613d180ac6a05%3A0x5045675218ce070!2sDandenong+South+Victoria+3175%2C+Australie!5e0!3m2!1sfr!2sus!4v1509963450333\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF010', 10, 4, 'Australie - Entrepôt', 'Cette propriété est située juste en face de la route d\'où le nouveau magasin Bunnings est proposé d\'être construit. L\'entrepôt a une grande porte de rouleau de 6x6m pour la facilité d\'accès. Il y a suffisamment de place à l\'intérieur avec une hauteur centrale de 8m et une hauteur d\'avant-toit de 6m, la remise est claire. Un grand parking est disponible. Il y a aussi une abondance de puissance disponible avec 240 volts et 3 phases. * La superficie totale est de 242m2.', '242', 16811, 10, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15582.56164867177!2d130.988063!3d-12.473651!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2cc0bd3abddd4c65%3A0x50217a82a248270!2sYarrawonga+Territoire+du+Nord+0830%2C+Australie!5e0!3m2!1sfr!2sus!4v1509965916473\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF011', 11, 4, 'Newport - Bureau', 'C\'est une opportunité à ne pas manquer. Travaillez au bord de la mer ... Cette suite bureau au bord de l\'eau donnant sur les magnifiques voies navigables de Pittwater est située dans la banlieue très prisée de Newport. Situé dans un lotissement résidentiel sécurisé, la suite bénéficie d\'une excellente lumière naturelle tout au long de la journée depuis les grandes baies vitrées qui donnent sur une vue dont vous ne serez jamais fatigué! Caractéristiques de la propriété: - Bureau de 41m² + Cour extérieure exclusive de 21m² - Bureau au bord de l\'eau - Suite magnifiquement présentable donnant sur Pittwater - Planchers de bois à l\'entrée - Système de climatisation indépendant - Développement sécurisé avec accès par ascenseur - Système d\'intercom et câblé - Parking unique sécurisé - & kitchen En plus, il y a une opportunité d\'acquérir 9 Moorings pour une entreprise marine si nécessaire - 7 x situé à Winji Jimmi Bay, 1 x situé à Northern End of Scotland Island, 1 x situé à America\'s Bay', '400', 303036, 11, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d53136.48527748038!2d151.314345!3d-33.656376!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b0d53455c28b9f3%3A0x1c017d6b3fba90d0!2sNewport+Nouvelle-Galles+du+Sud+2106%2C+Australie!5e0!3m2!1sfr!2sus!4v1509966870452\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF012', 12, 4, 'Beenleigh - Bureau', '\r\n* Accès facile aux véhicules de la Pacific Highway et à proximité de l\'autoroute Logan * Ascenseur sécurisé à partir du parking / stockage fermé souterrain * Meilleur bureau à l\'extérieur de Brisbane CBD. * 1 kilomètre du centre commercial régional *', '400', 4270200, 12, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56529.75114252778!2d153.185977!3d-27.683012000000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b9141e67f8e2637%3A0x1c02a35e27d73ad0!2sLoganholme+Queensland+4129%2C+Australie!5e0!3m2!1sfr!2sus!4v1509967406814\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF013', 13, 3, 'Normanby - Bureau', 'Fantastic opportunity to occupy a bit size office/medical suite situated along Wickham Terrace\'s business & medical strip. The property is located only 100m from Brisbane CBD & 200m from Central Train Station. * 48m2 ground floor suite * Great natural light * 1 car park included * Fitout includes: waiting area, reception, consultation room, kitchenette & storage.', '500', 131755, 13, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d28322.692382182307!2d153.023042!3d-27.45878!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b915a07e4550d17%3A0x502a35af3de98e0!2sSpring+Hill+Queensland+4000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509967898804\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF014', 2, 1, 'Melbourne - Appartement', '\r\nCe développement résidentiel exclusif à Melbourne CBD atteste de l\'engagement et du pedigree d\'UEM Sunrise pour offrir des espaces de vie de qualité qui résonnent avec la riche culture de Melbourne, ainsi que son statut de ville la plus vivable au monde. À seulement quelques pas d\'une sélection d\'universités, de boutiques, de lieux culturels et de restaurants réputés dans le monde entier, qui offre le dynamisme de la ville et une vaste gamme d\'options de transport, de connectivité et de tranquillité des jardins. Les établissements d\'enseignement réputés de Melbourne, tels que l\'université Royal Melbourne Institute of Technology (RMIT), se trouvent à environ 3 minutes à pied et l\'université de Melbourne se trouve à environ 15 minutes à pied du développement. Caractéristiques: Services de conciergerie Lap Pool & Sun Deck Gynasium & Yoga Zone Sauna et hammam Cinéma privé Simulateur de golf Private & Social Jacuzzi Royal Banquet Room Rooftop Skypods Fosse BBQ avec terrasse et terrasse de divertissement', '450', 296448, 14, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25216.75376367357!2d144.963151!3d-37.811262!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+Victoria+3000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509968709627\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
('ID_REF015', 2, 4, 'Melbourne - Grand Appartement', 'Le bâtiment de 31 niveaux situé à proximité des jardins historiques de Carlton et le meilleur de cbd a à offrir un design intérieur attrayant bâtiment contemporain. Bâtiment de style Resort. Les caractéristiques comprennent une salle de gym ciel, piscine de 25m, salon en plein air, les jardins sur le toit doivent voir des vues panoramiques. Doit voir design moderne Appartement dispose de 2 chambres de bonne taille égale avec BIR, 1 salle de bain et 1 espace de voiture. Comme vous entrez à votre gauche, cuisine gastronomique européenne avec des appareils Euro, banc de granit, Grande salle de bain combinaison de blanchisserie. Balcon confortable avec de belles vues sur la ville, salon / repas ouvert. La sécurité est importante pour la résidence. Les installations comprennent une piscine chauffée de 25 mètres, un spa et une salle de sport bien équipée pour rester en forme. Confortable style de vie de villégiature, terrasse sur le toit. Venez entrer dans ce hall élégant et inspecter cet appartement aujourd\'hui', '455', 368914, 15, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25216.75376367357!2d144.963151!3d-37.811262!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+Victoria+3000%2C+Australie!5e0!3m2!1sfr!2sus!4v1509969581144\" width=\"700\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `publicites`
--

CREATE TABLE `publicites` (
  `id` int(10) UNSIGNED NOT NULL,
  `nompage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publicites` tinyint(1) DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `illustrationimg` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `publicites`
--

INSERT INTO `publicites` (`id`, `nompage`, `lien`, `publicites`, `description`, `illustrationimg`, `created_at`, `updated_at`) VALUES
(1, 'accueil', 'accueil', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-accueil.jpg', NULL, NULL),
(2, 'residentiel', 'immobilier.residentiel', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-residentiel.jpg', NULL, NULL),
(3, 'foncier', 'immobilier.foncier', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-foncier.jpg', NULL, NULL),
(4, 'industriel', 'business.industriel', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-industriel.jpg', NULL, NULL),
(5, 'commercial', 'business.commercial', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-commercial.jpg', NULL, NULL),
(6, 'services', 'front.services', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-services.jpg', NULL, NULL),
(7, 'blog', 'blog', 1, 'Lorem ipsum dolor sit amet consectetuer Nunc porta Maecenas lorem semper. Mauris risus justo egest Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Cras sit amet nibh libero, in gravida nulla. Lorem ipsum dolor....', 'page-img-blog.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `recherche_sauvegardees`
--

CREATE TABLE `recherche_sauvegardees` (
  `IDRECHERCHE` int(11) NOT NULL,
  `IDPRODUIT` char(10) NOT NULL,
  `LOGIN` varchar(1500) NOT NULL,
  `DATE_SAUVEGARDE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MOTCLE` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recherche_sauvegardees`
--

INSERT INTO `recherche_sauvegardees` (`IDRECHERCHE`, `IDPRODUIT`, `LOGIN`, `DATE_SAUVEGARDE`, `MOTCLE`) VALUES
(5, 'ID_REF014', 'Twist', '2018-01-22 13:37:30', NULL),
(6, 'ID_REF007', 'Twist', '2018-01-22 15:24:49', NULL),
(7, 'ID_REF015', 'Twist', '2018-01-23 12:25:31', NULL),
(8, 'ID_REF009', 'Twist', '2018-01-24 13:58:38', NULL),
(9, 'ID_REF009', 'Twist', '2018-01-24 14:17:06', NULL),
(10, 'ID_REF004', 'Twist', '2018-03-22 17:14:54', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typefacture`
--

CREATE TABLE `typefacture` (
  `IDTYPEFACTURE` int(11) NOT NULL,
  `LIBELLE` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typeproduits`
--

CREATE TABLE `typeproduits` (
  `idtypeproduit` int(11) NOT NULL,
  `libelle` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typeproduits`
--

INSERT INTO `typeproduits` (`idtypeproduit`, `libelle`) VALUES
(1, 'Résidentiel'),
(2, 'Foncier'),
(3, 'industriel'),
(4, 'commercial');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `firstname`, `genre`, `telephone`, `urlimage`) VALUES
(1, 'Buteri de Preville', 'admin@investirenaustralie.com', '$2y$10$fXXV8VpFxYdVUV64X4qS3.7JFpN9vmLznR7QERnddJhh5056votYq', 'lN7fomecHbVEFHTizl8A5fzQ3tj4TpSVcvRfAt66e0c63UkT445xPzFGiWdb', '2018-03-08 09:58:27', '2018-03-21 03:28:17', 'Philippe', NULL, '+ 33 333 333 33', 'administrateur-1520608223.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE `vendeur` (
  `IDVENDEUR` int(11) NOT NULL,
  `IDPERSONNEPHYSIQUE` int(11) DEFAULT NULL,
  `IDAFA` int(11) DEFAULT NULL,
  `IDPERSONNEMORALE` int(11) DEFAULT NULL,
  `STATUTCOMPTE` tinyint(1) DEFAULT NULL,
  `LIBELLETYPEVENDEUR` varchar(250) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `NUMINSCRIPTION` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `IDVENTE` int(11) NOT NULL,
  `IDVENDEUR` int(11) DEFAULT NULL,
  `IDMEMBRE` int(11) DEFAULT NULL,
  `IDPRODUIT` int(11) DEFAULT NULL,
  `DATEDEBUTTRANSACTION` date DEFAULT NULL,
  `DATEFINTRANSACTION` date DEFAULT NULL,
  `VALEURCCV` float DEFAULT NULL,
  `ETATPAIEMENTCCV` tinyint(1) DEFAULT NULL,
  `DATEPAIEMENTCCV` date DEFAULT NULL,
  `VALEURCPC` float DEFAULT NULL,
  `ETATPAIEMENTCPC` tinyint(1) DEFAULT NULL,
  `DATEPAIEMENTCPC` date DEFAULT NULL,
  `ETATTRANSACTION` tinyint(1) DEFAULT NULL,
  `DERNIERETAPETRANSACTION` varchar(250) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`IDADMIN`),
  ADD KEY `FK_ASSOCIATION_27` (`IDPERSONNEPHYSIQUE`);

--
-- Index pour la table `afa`
--
ALTER TABLE `afa`
  ADD PRIMARY KEY (`IDAFA`),
  ADD KEY `FK_ASSOCIATION_2` (`IDPERSONNEMORALE`),
  ADD KEY `FK_ASSOCIATION_26` (`IDPERSONNEPHYSIQUE`);

--
-- Index pour la table `apl`
--
ALTER TABLE `apl`
  ADD PRIMARY KEY (`IDAPL`),
  ADD KEY `FK_ASSOCIATION_7` (`IDPERSONNEMORALE`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`IDCOMMENTAIRE`);

--
-- Index pour la table `encours_dachat`
--
ALTER TABLE `encours_dachat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ASSOCIATION_32` (`IDPRODUIT`);

--
-- Index pour la table `etatpossessionproduit`
--
ALTER TABLE `etatpossessionproduit`
  ADD PRIMARY KEY (`IDETATPOSSESSIONPRODUIT`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`IDFACTURE`),
  ADD KEY `FK_ASSOCIATION_24` (`IDTYPEFACTURE`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`IDFAVORIS`),
  ADD KEY `FK_favoris_produits` (`IDPRODUIT`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infocompte`
--
ALTER TABLE `infocompte`
  ADD PRIMARY KEY (`IDINFOCOMPTE`);

--
-- Index pour la table `inscriptionannule`
--
ALTER TABLE `inscriptionannule`
  ADD PRIMARY KEY (`IDINSCRIPTIONANNULE`),
  ADD KEY `FK_ASSOCIATION_19` (`IDPERSONNEMORALE`),
  ADD KEY `FK_ASSOCIATION_20` (`IDPERSONNEPHYSIQUE`);

--
-- Index pour la table `listutilisateur`
--
ALTER TABLE `listutilisateur`
  ADD PRIMARY KEY (`IDUTILISATEUR`),
  ADD KEY `FK_ASSOCIATION_10` (`IDPERSONNEPHYSIQUE`);

--
-- Index pour la table `localisations`
--
ALTER TABLE `localisations`
  ADD PRIMARY KEY (`IDLOCALISATION`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`IDMEMBRE`),
  ADD KEY `FK_ASSOCIATION_14` (`IDPERSONNEMORALE`),
  ADD KEY `FK_ASSOCIATION_15` (`IDPERSONNEPHYSIQUE`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `optionproduits`
--
ALTER TABLE `optionproduits`
  ADD PRIMARY KEY (`idoptionproduit`),
  ADD KEY `produit_id` (`produit_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personnemoral`
--
ALTER TABLE `personnemoral`
  ADD PRIMARY KEY (`IDPERSONNEMORALE`),
  ADD KEY `FK_ASSOCIATION_9` (`IDLOCALISATION`);

--
-- Index pour la table `personnephysique`
--
ALTER TABLE `personnephysique`
  ADD PRIMARY KEY (`IDPERSONNEPHYSIQUE`),
  ADD KEY `FK_ASSOCIATION_8` (`IDLOCALISATION`);

--
-- Index pour la table `possessionproduit`
--
ALTER TABLE `possessionproduit`
  ADD PRIMARY KEY (`IDPOSSESSIONPRODUIT`),
  ADD KEY `FK_ASSOCIATION_21` (`IDETATPOSSESSIONPRODUIT`),
  ADD KEY `FK_ASSOCIATION_22` (`IDPRODUIT`),
  ADD KEY `FK_ASSOCIATION_23` (`IDVENDEUR`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`idproduit`),
  ADD KEY `FK_ASSOCIATION_12` (`localisation_id`),
  ADD KEY `FK_ASSOCIATION_13` (`typeproduit_id`),
  ADD KEY `FK_produits_images` (`images_id`);

--
-- Index pour la table `publicites`
--
ALTER TABLE `publicites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recherche_sauvegardees`
--
ALTER TABLE `recherche_sauvegardees`
  ADD PRIMARY KEY (`IDRECHERCHE`),
  ADD KEY `FK_ASSOCIATION_34` (`IDPRODUIT`);

--
-- Index pour la table `typefacture`
--
ALTER TABLE `typefacture`
  ADD PRIMARY KEY (`IDTYPEFACTURE`);

--
-- Index pour la table `typeproduits`
--
ALTER TABLE `typeproduits`
  ADD PRIMARY KEY (`idtypeproduit`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD PRIMARY KEY (`IDVENDEUR`),
  ADD KEY `FK_ASSOCIATION_25` (`IDPERSONNEPHYSIQUE`),
  ADD KEY `FK_ASSOCIATION_5` (`IDAFA`),
  ADD KEY `FK_ASSOCIATION_6` (`IDPERSONNEMORALE`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`IDVENTE`),
  ADD KEY `FK_ASSOCIATION_16` (`IDMEMBRE`),
  ADD KEY `FK_ASSOCIATION_17` (`IDVENDEUR`),
  ADD KEY `FK_ASSOCIATION_18` (`IDPRODUIT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `IDADMIN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `afa`
--
ALTER TABLE `afa`
  MODIFY `IDAFA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `apl`
--
ALTER TABLE `apl`
  MODIFY `IDAPL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `IDCOMMENTAIRE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `encours_dachat`
--
ALTER TABLE `encours_dachat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etatpossessionproduit`
--
ALTER TABLE `etatpossessionproduit`
  MODIFY `IDETATPOSSESSIONPRODUIT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `IDFACTURE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `IDFAVORIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `infocompte`
--
ALTER TABLE `infocompte`
  MODIFY `IDINFOCOMPTE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `inscriptionannule`
--
ALTER TABLE `inscriptionannule`
  MODIFY `IDINSCRIPTIONANNULE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `listutilisateur`
--
ALTER TABLE `listutilisateur`
  MODIFY `IDUTILISATEUR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `localisations`
--
ALTER TABLE `localisations`
  MODIFY `IDLOCALISATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `IDMEMBRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `optionproduits`
--
ALTER TABLE `optionproduits`
  MODIFY `idoptionproduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `personnemoral`
--
ALTER TABLE `personnemoral`
  MODIFY `IDPERSONNEMORALE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `personnephysique`
--
ALTER TABLE `personnephysique`
  MODIFY `IDPERSONNEPHYSIQUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `possessionproduit`
--
ALTER TABLE `possessionproduit`
  MODIFY `IDPOSSESSIONPRODUIT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `publicites`
--
ALTER TABLE `publicites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `recherche_sauvegardees`
--
ALTER TABLE `recherche_sauvegardees`
  MODIFY `IDRECHERCHE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `typefacture`
--
ALTER TABLE `typefacture`
  MODIFY `IDTYPEFACTURE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `typeproduits`
--
ALTER TABLE `typeproduits`
  MODIFY `idtypeproduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `vendeur`
--
ALTER TABLE `vendeur`
  MODIFY `IDVENDEUR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `IDVENTE` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `FK_favoris_produits` FOREIGN KEY (`IDPRODUIT`) REFERENCES `produits` (`idproduit`);

--
-- Contraintes pour la table `personnemoral`
--
ALTER TABLE `personnemoral`
  ADD CONSTRAINT `FK_personnemoral_localisations` FOREIGN KEY (`IDLOCALISATION`) REFERENCES `localisations` (`IDLOCALISATION`);

--
-- Contraintes pour la table `personnephysique`
--
ALTER TABLE `personnephysique`
  ADD CONSTRAINT `FK_personnephysique_localisations` FOREIGN KEY (`IDLOCALISATION`) REFERENCES `localisations` (`IDLOCALISATION`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_produits_images` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`);

--
-- Contraintes pour la table `recherche_sauvegardees`
--
ALTER TABLE `recherche_sauvegardees`
  ADD CONSTRAINT `FK_recherche_sauvegardees_produits` FOREIGN KEY (`IDPRODUIT`) REFERENCES `produits` (`idproduit`);
