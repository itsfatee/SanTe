-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 31 Décembre 2019 à 02:13
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dbsante`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArticle` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `titreArticle` varchar(100) NOT NULL,
  `contenuArticle` longtext NOT NULL,
  `images` varchar(255) NOT NULL,
  `dates` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`idArticle`, `idUser`, `idCategorie`, `titreArticle`, `contenuArticle`, `images`, `dates`) VALUES
(10, 5, 2, 'L\'Alimentation', 'On apprend Ã  lire, Ã  Ã©crire, Ã  compterâ€¦ \r\nPlus tard, on apprend Ã  conduire,on apprend un mÃ©tierâ€¦\r\nMais pourquoi nâ€™apprend-on pas Ã  manger,\r\nalors que câ€™est un des piliers de notre vie ?\r\nNotre alimentation dÃ©termine en effet\r\nnon seulement notre masse corporelle\r\n(ce qui fait que lâ€™on grossit ou maigrit),\r\nmais aussi et surtout, elle a un impact direct sur notre santÃ©,\r\nnotre Ã©tat de forme, nos performances physiques\r\net nos performances mentales. \r\nSeulement, entre les idÃ©es reÃ§ues qui ont la vie dure,\r\ndes sources pas toujours fiables,\r\net les informations multiples et parfois contradictoires \r\nqui circulent, parvenir Ã  une alimentation Ã©quilibrÃ©e\r\npeut souvent sembler compliquÃ© et trÃ¨s contraignant.', 'nutrition1.jpg', '29/12/2019 Ã  18:26:27'),
(16, 5, 2, 'Comprendre la balance Ã©nergÃ©tique', 'Comme une voiture a besoin dâ€™essence p\r\nour rouler notre corps a besoin dâ€™Ã©n\r\nergie pour vivre et effectuer les tÃ¢c\r\nhes du quotidien. Cette Ã©nergie se mesu\r\nre en calories. Comme on les compte par\r\nmilliers, lâ€™unitÃ© utilisÃ©e est la\r\nkilocalorie (1.000 calories), que lâ€™o\r\nn note kcal ou Cal. Par abus de langag\r\ne, on continue dâ€™utiliser le terme ï¿½\r\nï¿½ calories Â» Ã  la place de Â« kilocalo\r\nries Â». Le mÃ©tabolisme de base sâ€™ag\r\nit de lâ€™Ã©nergie minimale dont le cor\r\nps a besoin pour maintenir les fonctions\r\nvitales, un peu comme une voiture Ã  l\r\nâ€™arrÃªt dont le moteur tourne. La som\r\nme du mÃ©tabolisme de base et des autres\r\nbesoins Ã©nergÃ©tiques donne le mÃ©tab\r\nolisme total, qui reprÃ©sente donc lâ€™\r\nÃ©nergie totale que nous dÃ©pensons en\r\nune journÃ©e. Un peu comme la consommati\r\non totale dâ€™une voiture sur une jour\r\nnÃ©e, entre les arrÃªts au feu rouge et\r\nles accÃ©lÃ©rations sur lâ€™autoroute.\r\nPour un homme adulte (de taille et poid\r\ns moyens), le mÃ©tabolisme total moyen\r\nest dâ€™environ 2.500 kcal (dont 1.800\r\nkcal de mÃ©tabolisme de base). Pour un\r\nsportif, il peut monter jusquâ€™Ã  2.80\r\n0 kcal. Pour une femme, il est gÃ©nÃ©ra\r\nlement infÃ©rieur et se situe en moyen\r\nne entre 1.800 et 2.100 kcal. Le mÃ©tab\r\nolisme de base varie Ã©normÃ©ment dâ€™u\r\nn individu Ã  lâ€™autre : il dÃ©pend de\r\nlâ€™Ã¢ge, du sexe, du poids, de lâ€™act\r\nivitÃ© thyroÃ¯dienne, etc. Il peut par\r\nexemple Ãªtre deux fois plus important\r\npour un adolescent en pleine croissance\r\nque pour un adulte ! Il reprÃ©sente gï¿½\r\nï¿½nÃ©ralement entre 60 et 70% du mÃ©tabol\r\nisme total, ce qui est considÃ©rable po\r\nur une dÃ©pense sur laquelle nous nâ€™a\r\nvons que peu dâ€™emprise. Cette Ã©nergi\r\ne, ce sont les aliments qui nous lâ€™app\r\nortent. Ils sont nos pourvoyeurs de ca\r\nlories sous la forme de trois types de\r\nmacronutriments : les protÃ©ines, les\r\nglucides et les lipides.', 'balance.jpg', '29/12/2019 Ã  19:01:27'),
(17, 5, 2, 'Les protÃ©ines', 'Ce sont les briques de lâ€™organisme. Elles constituent \r\nnotre enveloppe : les os, les muscles, les cheveux, \r\nles ongles, la peau, mais aussi nos messagers internes \r\ntels que les hormones, les enzymes ou les anticorps \r\ndu systÃ¨me immunitaire, qui nous dÃ©fendent contre les infections.\r\nLes protÃ©ines sont dites essentielles Ã  lâ€™homme, \r\ncar il ne sait pas les fabriquer Ã  partir dâ€™autres nutriments (contrairement aux glucides par exemple) : elles doivent donc\r\nÃªtre apportÃ©es obligatoirement par lâ€™alimentation.\r\nAu niveau molÃ©culaire, les protÃ©ines sont constituÃ©es\r\n de chaÃ®nes dâ€™acides aminÃ©s plus ou moins longues.\r\n Il existe en tout 20 acides aminÃ©s diffÃ©rents,\r\n qui peuvent composer entre eux des arrangements \r\ncomplexes sans limite, donnant lieu Ã  la formation dâ€™un nombre presque infini de protÃ©ines possibles. Parmi ces 20 acides aminÃ©s :\r\n8 sont dits essentiels (leucine, isoleucine, valine, lysine, \r\nmÃ©thionine, thrÃ©onine, tryptophane et phÃ©nylalanine, \r\nauxquels il faut rajouter histidine et arginine chez lâ€™enfant), \r\net doivent donc impÃ©rativement Ãªtre apportÃ©s par lâ€™alimentation ;\r\n12 sont dits non-essentiels, câ€™est-Ã -dire quâ€™ils peuvent Ãªtre \r\nfabriquÃ©s Ã  partir des acides aminÃ©s essentiels.\r\nLa consÃ©quence de Ã§a, câ€™est quâ€™on peut se retrouver \r\ncarencÃ© Ã  la fois :\r\nSi on ne consomme pas assez de protÃ©ines ;\r\nMais Ã©galement si les protÃ©ines quâ€™on consomme sont\r\n incomplÃ¨tes (câ€™est-Ã -dire si elles ne contiennent pas \r\nlâ€™ensemble des 8 acides aminÃ©s essentiels).\r\nLes rÃ©percussions dâ€™un tel dÃ©ficit peuvent aller\r\n dâ€™une simple fatigue jusquâ€™Ã  des ongles cassants,\r\n une chute des cheveux, une baisse de la vue, \r\ndes ligaments fragilisÃ©s, de lâ€™ostÃ©oporose\r\n ou encore un systÃ¨me immunitaire affaiblit.\r\n\r\n\r\n\r\n', 'proteines.png', '29/12/2019 Ã  19:19:28'),
(18, 5, 2, 'Les lipides ', 'Les lipides sont plus connus sous le terme de graisses.\r\nCe sont les macronutriments les plus Ã©nergÃ©tiques.\r\nCe sont pour certains des nutriments essentiels, \r\ncâ€™est-Ã -dire que notre corps ne sait pas les fabriquer \r\n(comme les protÃ©ines, et Ã  lâ€™inverse des glucides donc), et qui possÃ¨dent de nombreuses fonctions au sein de notre organisme :\r\nIls constituent la structure des membranes de nos cellules, \r\net par lÃ  conditionnent leur bon fonctionnement \r\n(neurones, cerveau, thymus) ;\r\nIls ont un rÃ´le essentiel dans le transport de certaines protÃ©ines\r\net hormones dans le sang ;\r\nIls servent de vÃ©hicules pour les vitamines liposolubles\r\n(vitamines A, D, E et K) ;\r\nIls participent directement Ã  lâ€™Ã©laboration de certaines de nos hormones essentielles, comme les hormones sexuelles.\r\nIl est par consÃ©quent primordial de ne pas les bannir de notre alimentation, mais au contraire de veiller Ã  recevoir \r\nun apport suffisant en graisses, et surtout, en graisses de qualitÃ© ! \r\n\r\n', 'lipides.png', '29/12/2019 Ã  19:24:18'),
(19, 5, 2, 'Les glucides ', 'Les glucides sont le carburant du corps :\r\nils constituent notre principale source dâ€™Ã©nergie.\r\nEn revanche, contrairement aux protÃ©ines et aux lipides,\r\nce ne sont pas des nutriments essentiels, puisque notre corps\r\nsait les fabriquer Ã  partir des autres nutriments.\r\nOn les connaÃ®t Ã©galement sous le nom de sucres, \r\ndont vous avez sans doute dÃ©jÃ  entendu parler\r\nsous les termes de Â« sucres rapides Â» et Â« sucres lents Â».\r\nLorsque le sucre entre dans le sang, il provoque \r\nune Ã©lÃ©vation du taux de sucre sanguin, ou pic de glycÃ©mie. Lâ€™amplitude de ce pic pouvant Ãªtre plus ou moins grande, elle est mesurÃ©e par un indice, que lâ€™on appelle index glycÃ©mique (ou IG) :\r\nPlus lâ€™amplitude du pic gÃ©nÃ©rÃ© sera grande, plus lâ€™index glycÃ©mique sera Ã©levÃ©. La montÃ©e du sucre dans le sang ayant Ã©tÃ© rapide\r\net brutale, le glucide en question est digÃ©rÃ© rapidement pour\r\nrÃ©tablir la glycÃ©mie dâ€™origine : on parle alors de sucre rapide.\r\n Plus lâ€™amplitude du pic gÃ©nÃ©rÃ© sera faible, plus lâ€™index glycÃ©mique\r\nsera bas. La montÃ©e du sucre dans le sang ayant Ã©tÃ© lente et progressive, le glucide est digÃ©rÃ© lentement : on parle alors de sucre lent.\r\nNous venons de voir que quand nous avalons un glucide, \r\nce dernier entre dans le sang, provoquant un pic de glycÃ©mie \r\nplus ou moins grand, et mesurÃ© par lâ€™index glycÃ©mique (IG). \r\nOr, notre corps va rÃ©agir Ã  une telle montÃ©e du sucre sanguin, \r\nen sÃ©crÃ©tant une hormone : lâ€™insuline.\r\nLâ€™insuline a pour rÃ´le de faire pÃ©nÃ©trer le sucre dans nos cellules, \r\nafin de rÃ©duire le taux de sucre dans notre sang.\r\nEn particulier, Ã  chaque augmentation brutale de notre glycÃ©mie,\r\ndes pics dâ€™insuline sont automatiquement gÃ©nÃ©rÃ©s, avec pour but\r\n de rÃ©tablir la glycÃ©mie dâ€™origine. \r\nMalheureusement, ces pics dâ€™insuline possÃ¨dent aussi un certain nombre dâ€™effets dÃ©lÃ©tÃ¨res :\r\nA long terme : Ã  force dâ€™Ãªtre engendrÃ©s, la rÃ©pÃ©tition de ce processus peut contribuer Ã  diminuer la sensibilitÃ© des cellules Ã  lâ€™insuline, premier pas vers le diabÃ¨te de type 2, et Ã  favoriser\r\nles mÃ©canismes de lâ€™inflammation, faisant le lit de maladies chroniques.\r\nA court terme : lâ€™insuline favorisant le stockage des graisses, ces pics contribuent Ã  nous faire grossir.\r\n\r\n\r\n', 'glucides.png', '29/12/2019 Ã  19:30:52'),
(20, 5, 1, 'Quelques bienfaits du sport ', '1.Lâ€™un des principaux bienfait du sport est dâ€™amÃ©liorer \r\nle fonctionnement du systÃ¨me cardio-vasculaire et\r\nainsi optimiser la circulation sanguine de part un effet de\r\nvaso-dilatation des vaisseaux sanguins. \r\nAvec lâ€™entraÃ®nement le cÅ“ur va par consÃ©quent battre \r\nplus lentement au repos et donc moins se fatiguer. \r\nLa diminution des rÃ©sistances lors de la circulation sanguine\r\nva Ã©galement induire une baisse de tension artÃ©rielle.\r\n2.Lâ€™activitÃ© sportive procure une augmentation de la force,\r\nde lâ€™endurance et du volume musculaire, elle participe \r\npar consÃ©quent Ã  la prÃ©vention des blessures et de diverses \r\ndouleurs de hanche, de genoux, ou encore de dos. \r\nDes bienfaits non nÃ©gligeable, pour vieillir en bonne santÃ©.\r\n3.Le fait dâ€™activer lâ€™organisme va stimuler lâ€™action des cellules \r\ndans leur rÃ´le de construction osseuse. \r\nCette rÃ©gÃ©nÃ©ration va solidifier votre ossature et Ã©galement \r\nprÃ©venir lâ€™ostÃ©oporose.\r\n4.Une pratique rÃ©guliÃ¨re de lâ€™activitÃ© sportive favorise\r\nla nutrition et la mobilitÃ© des cartilages et prÃ©vient ainsi \r\nles diverses douleurs articulaires et les problÃ¨mes dâ€™arthrose.\r\n5.En plus dâ€™avoir plus de plaisir Ã  manger, de part un appÃ©tit\r\nmeilleur, la pratique sportive favorise la digestion et propose \r\nainsi un remÃ¨de efficace contre la constipation.\r\n6.La pratique de sports dâ€™endurance comme le vÃ©lo\r\nou la natation va participer Ã  lâ€™augmentation de la capacitÃ©\r\npulmonaire, ce qui permet notamment de lutter contre \r\nles problÃ¨mes dâ€™asthme.\r\n7.Une pratique sportive rÃ©guliÃ¨re va vous permettre de \r\ndÃ©penser des calories et ainsi faciliter la perte de poids. \r\nDans une optique dâ€™amincissement les sports de cardio\r\ncomme la natation, le vÃ©lo, lâ€™elliptique ou la course Ã  pied sont Ã  privilÃ©gier.\r\n8.Un bien-Ãªtre Ã  la fois physique et mental, de part la sÃ©crÃ©tion dâ€™hormones telle lâ€™endorphine qui gÃ©nÃ¨re une vÃ©ritable\r\nsensation de plaisir, parfois mÃªme euphorisante.\r\nIl arrive dâ€™ailleurs souvent quâ€™Ã  force de pratiquer \r\non ne puisse plus se passer dâ€™activitÃ© sportive. \r\nAinsi, un peu comme lâ€™effet dâ€™une drogue, on Ã©prouve\r\nle besoin de retrouver cet Ã©tat de bien-Ãªtre qui sâ€™opÃ¨re\r\nsuite Ã  lâ€™effort physique.\r\n9.Les activitÃ©s sportives de type Â« aÃ©robie Â» (sports dâ€™endurance) permettent une amÃ©lioration du transport de lâ€™oxygÃ¨ne dans lâ€™organisme, et donc de lâ€™oxygÃ©nation du cerveau,ce qui Ã  \r\npour effet dâ€™optimiser lâ€™activitÃ© cÃ©rÃ©brale.\r\n10.La pratique du sport a une action calmante \r\ngrÃ¢ce aux endorphines, substances produites par notre cerveau. \r\nDe plus elle permet de sâ€™aÃ©rer lâ€™esprit et dâ€™oublier les soucis du quotidien.\r\n', 'fitman.jpg', '29/12/2019 Ã  19:58:48'),
(22, 5, 1, 'La corde Ã  sauter, le sport de notre enfance', 'Rappelez-vous comme c\'était amusant d\'en faire à l\'école primaire. Et bien figurez-vous que c\'est un sport devenu très tendance car très efficace.\r\n\r\nExcellent pour votre cardio et pour faire travailler vos mouvements, la corde à sauter vous permettra de perdre environ 700 calories pour une séance d\'une heure.\r\n\r\nLe petit plus : ce sport est accessible à toutes et peu onéreux. Veillez tout de même à choisir la bonne corde à sauter en fonction de votre taille.', 'jumprope.jpg', '30/12/2019 Ã  11:55:12'),
(23, 5, 1, 'La boxe ', 'La boxe est un sport dynamique qui présente des atouts pour la forme et le mental. Ce sport de combat permet à chacun : d’améliorer le cardio vasculaire, l’endurance et la respiration , de développer les réflexes, l’agilité et la coordination,de travailler les muscles et tonifier le corps, d’évacuer le stress et d’améliorer l’estime de soi,d’aller au-delà de ses capacités et de se repousser ses limites.\r\nAu-delà de ses nombreux bienfaits, la boxe reste un sport de combat,frappes, coups, il faut bien évidement s’attendre à frapper, à être frapper et d’essuyer quelques bleus et lésions. \r\nLa boxe est déconseillée si vous souffrez de problèmes cardiaques ou de troubles de la vision,quoi qu’il en soit n’hésitez pas à demander l’avis de votre médecin si vous avez le moindre petit doute.', 'boxing.jpg', '30/12/2019 Ã  11:57:31'),
(25, 3, 1, 'La natation, idÃ©ale pour vous affiner', 'Envie de mincir des jambes et de perdre quelques centimètres de tour de cuisse ? Direction la piscine. En plus, c’est bien plus facile dans l’eau que dans une salle de sport.\r\nLes cuisses sont l\'une des zones sur lesquelles les femmes complexent le plus. Avec un pic inévitable à l’approche de l\'été, quand arrive le moment de ressortir les jupes et les shorts du dressing !\r\nSi vous souhaitez vous affiner les jambes, la natation est le sport idéal, puisqu\'il tonifie tout le corps tout en brûlant un max de calorie.\r\nEt si l\'on ne choisit pas forcément d\'où l\'on mincit, il existe des moyens de cibler une zone particulière, qui va s\'affiner et se muscler grâce à des exercices parfaitement adaptés.\r\nQuelle nage pour sculpter mes cuisses ?\r\nBonne nouvelle : quelle que soit la nage, vos jambes vont travailler dans l\'eau, à vous de choisir celle qui vous tente le plus. Bonus de la brasse : elle a l’avantage de faire travailler également les mollets.\r\nQuant au crawl et au dos crawlé, ils sollicitent aussi bien les muscles des cuisses, des fesses et des mollets. On like forcément !\r\nDébutantes mais ultra motivée pour affiner vos cuisses ? Notre conseil : commencez par la brasse, moins exigeante, et mettez-vous au crawl petit à petit. Et encore une fois, n’hésitez pas à prendre des cours (avec un beau maitre nageur) pour améliorer votre technique de nage et vite éprouver du plaisir dans l’eau.\r\nLes palmes, le bon accessoire pour affiner ses cuisses\r\nSi vous ne deviez opter que pour un accessoire, ce sont les palmes sans hésitation. Pas les palmes géantes de Jean-Marc Barre dans le Grand Bleu. Mais des palmes courtes. Enfilez vos pieds dedans, il ne vous reste plus qu’à travailler les battements.\r\nEn quelques longueurs, vous sentirez très vite les muscles de vos cuisses chauffer, signe qu\'ils travaillent. La nage palmée vous permet de vous muscler beaucoup plus vite. Allez, on repart pour 2 longueurs supplémentaires… C’est pour la bonne cause.', 'swim.jpg', '30/12/2019 Ã  18:46:36'),
(26, 5, 1, 'Le taekwondo ', 'Le taekwondo est un art martial d’origine sud-coréenne, dont le nom peut se traduire par La voie du pied et du poing. De cette définition découle l’idée que le taekwondo est non seulement un art martial mais aussi une manière d’entraîner son esprit et d’atteindre la maîtrise de soi par des mouvements de combat.\r\nLe pratiquant de taekwondo est appelé un taekwondoïste (et ce, même si le terme d’origine est taekwondoin). La salle d’entraînement est appelée un dojang. Il est possible de pratiquer le taekwondo quel que soit son âge. En tant que sport, il fait travailler l’endurance et la souplesse et augmente la force physique.\r\nCet art martial est basé sur des techniques d’attaque où le pratiquant concentre son énergie sur « des surfaces d’impact réduites » telles que le bol du pied ou la tête des phalanges avec lesquelles il vise les points faibles de son adversaire et des techniques de blocage des attaques adverses. Les taekwondoïstes utilisent des techniques de coups de pied spectaculaires, notamment retournés et sautés, dont la fréquence d’usage est caractéristique de la discipline.\r\nL\'enseignement du Taekwondo comprend 5 règles de conduite connues sous le nom des 5 principes  du Taekwondo.\r\nC’est 5 principes sont :\r\n1) Le respect de soi-même et des autres\r\n2)  L’humilité\r\n3)  La persévérance\r\n4)  Le self-control\r\n5)  L’honnêteté.\r\nCes principes ont pour rôle d’idéaliser le comportement des pratiquants dans le Dojang et dans leur vie de tous les jours. ', 'taekwondo.jpg', '30/12/2019 Ã  19:25:17'),
(27, 5, 3, 'AcnÃ© et Ã©tÃ© : comment Ã©viter la poussÃ©e dâ€™acnÃ© post-soleil ? ', 'Avec l’arrivé de l’été, on pense que tous nos petits soucis de peau semblent partir. Plus nette, plus colorée, notre peau peut nous paraître plus saine. Cependant, il ne faut pas croire l’ennemi vaincu avant l’heure. L’exposition au soleil pourrait favoriser l’acné dès le retour des vacances, voire même l’aggraver ! \r\nDes gestes simples et de bonnes habitudes peuvent nous permettre d’éviter le pire.\r\nIl est vrai qu’un bain de soleil estival peut s’avérer bon pour le moral. Cependant, si vous avez une peau à tendance acnéique, le soleil est votre ennemi numéro 1 !\r\nEn effet, l’exposition aux UV dessèche notre peau. La couche superficielle s’épaissit. Les pores se bouchent et le sébum s’accumule créant des comédons et des boutons. L’acné refera alors surface une fois la peau désépaissie, c’est-à-dire dès septembre !\r\nLa première règle à adopter est donc de s’exposer modérément. Optez pour un chapeau et évitez de sortir entre 11 heures et 15 heures.\r\nSi vous avez une peau à tendance acnéique, que vous prenez déjà un traitement ou pas, vous devez vous munir de votre meilleure amie : la crème solaire !\r\nOptez de préférence pour une crème à indice élevé et appliquez en toutes les deux heures. Elle diminue les risques de cicatrices et de coups de soleil.\r\nEn adoptant une hygiène régulière, vous réduisez les risques de poussées d’acné au maximum.\r\nMatin et soir, lavez-vous le visage à l’aide d’une eau micellaire ou d’une crème lavante à PH neutre. Cela permettra d’éliminer les impuretés et le surplus de sébum.\r\nUn gommage doux et un masque sur le visage par semaine permettront d’éliminer les cellules mortes, et ainsi, d’aider les pores à moins s’obstruer. La peau absorbera mieux les crèmes et produits que vous appliquerez.\r\nBuvez, buvez, buvez ! De l’eau bien entendu. L’eau permet d’éliminer les toxines et d’hydrater la peau.\r\nL’alimentation joue beaucoup dans les problèmes de peaux. Manger équilibré, même si les écarts sont tentants durant les beaux jours, reste crucial. Favorisez les légumes, les fruits, et les aliments gorgés d’eau, évitez le gras et les boissons alcoolisées bien trop sucrées.\r\n\r\n', 'acne.jpg', '30/12/2019 Ã  19:40:20'),
(30, 5, 3, 'Astuces pour avoir une belle peau naturellement', 'SELON CLAIRE MARTICHOUX, ESTHÉTICIENNE\r\nUn peeling au talc tout en douceur:\r\n« Le talc contient du magnésium et sa poudre est très fine : il est parfait pour exfolier la peau sans l\'abîmer. Mélangez deux cuillerées à café de talc avec quelques gouttes d\'eau et appliquez la pâte sur le visage en effectuant des mouvements circulaires de bas en haut. Puis rincez avec une lotion. »\r\nL\'huile de noisette pour les peaux sèches:\r\n« On retrouve souvent cet ingrédient dans les produits de Françoise Morice. Et pour cause ! L\'huile de noisette est pleine d\'acides gras essentiels et de vitamine E, elle est donc nourrissante, assouplissante, adoucissante et antioxydante. Et elle convient aussi bien aux peaux en manque d\'eau qu\'à celles en déficit de lipides. »\r\nSELON MARTINE DE RICHEVILLE, MASSEUSE\r\nUn jus de gingembre pour un coup d\'éclat:\r\n« Chaque matin, je recommande de boire à jeun un jus de citron tiède avec du gingembre râpé. En facilitant l\'élimination des toxines, cette potion a l\'effet d\'un coup de fouet détoxifiant pour l\'organisme et d\'un coup d\'éclat immédiat sur la peau. »\r\nUne cure d\'aloe vera très hydratante:\r\n« En hiver, il est souverain de faire une cure d\'un mois d\' aloe vera, à raison de 50 ml à jeun tous les matins. Avec ses vertus extraordinairement hydratantes, cette plante est le remède idéal pour protéger et hydrater la peau agressée par le froid. Elle a même un effet légèrement repulpant. »\r\nSELON CHANTAL LEHMANN, MASSEUSE \r\nUn mélange de beurres pour une hydratation maximale : \r\n« Je suis fan des beurres pour leur texture élastique et leur pouvoir très nourrissant. Mélangez une noisette de beurre de kokum, une noisette de beurre de karité (réparateur, antioxydant et non comédogène) et ajoutez deux gouttes d\'huile essentielle d\'immortelle. Comme cette dernière favorise une bonne circulation sanguine, elle permet une meilleure régénération, oxygénation et nutrition des tissus. J\'applique cette mixture sur le cou et le visage - loin des yeux -, pour une peau plus lumineuse, plus transparente. »', 'derm.jpg', '30/12/2019 Ã  20:46:19'),
(31, 5, 3, 'Coups de soleil : les soulager efficacement', 'Qu’ils soient profonds ou superficiels, les coups de soleil ont des répercussions sur la santé de notre peau et sur notre santé tout court. Il est donc important de se prémunir correctement du soleil en évitant les expositions prolongées et en utilisant une protection solaire adaptée. Mais si le mal est déjà fait, il faut réagir en conséquence. Voici nos conseils pour apaiser les brûlures et régénérer nos cellules au plus vite.\r\nLe « coup de soleil » ou érythème actinique, est une réaction inflammatoire de l’organisme à une exposition trop forte aux rayons UV. Quand le bronzage agit pour protéger naturellement l’épiderme, le coup de soleil, lui, provoque sensations de brûlure et rougeurs. Il apparaît en général quelques heures après l’exposition et s’intensifie sur une durée de 24 heures. Il peut parfois provoquer des cloques, des démangeaisons ou une desquamation. L’intensité d’un coup de soleil varie entre la brûlure du premier degré, du deuxième degré superficiel et du deuxième degré profond. \r\nVoici un remède économique qu’on a presque tous dans notre frigo : le yaourt nature. Riche en vitamines et en ferments lactiques, le yaourt a des vertus anti-inflammatoires et hydratantes. Il va soigner et soulager rapidement un coup de soleil léger. Pour cela, il suffit d’en étaler généreusement sur la peau et de laisser agir un quart d’heure avant de se rincer à l’eau tiède, s’il reste des résidus que la peau n’a pas absorbé. Après le rinçage, il faut seulement se tamponner pour se sécher afin de ne pas irriter la peau à nouveau en frottant. Si on n’a pas de yaourt, on peut également utiliser du lait écrémé de la même façon.\r\nLe vinaigre a des propriétés étonnantes, comme celle de rééquilibrer le PH d’une peau agressée par le soleil, l’assouplir et calmer l’irritation. Pour cela il suffit de mélanger dans un bol du vinaigre cidre dans de l’eau froide (moitié-moitié), puis de tamponner la peau avec ce mélange à l’aide d’une compresse ou d’un linge propre. La sensation de fraîcheur sera immédiate. Il faut laisser poser quelques minutes avant de procéder au rinçage pour éliminer l’odeur du vinaigre. Ce remède fonctionne également avec du vinaigre blanc.\r\nPlante reine des îles méditerranéennes et des milieux désertiques, l’aloe vera fait des miracles contre les coups de soleil. En effet, sa sève est riche en acides aminés capables de régénérer l’épiderme, l’apaiser et le cicatriser. Il existe ainsi deux options pour profiter de ses bienfaits. La première : en cultiver dans son jardin. Dans ce cas il faudra couper une feuille dans le sens de la longueur et récupérer la sève pour l’utiliser immédiatement. La seconde : acheter du gel d’aloe vera déjà prêt en pharmacie ou en boutique bio. Il suffit ensuite de l’appliquer sur la peau sans rincer. \r\nPour un effet fraîcheur, placez votre gel au frigo ! ', 'soleil.jpeg', '30/12/2019 Ã  20:59:40'),
(32, 5, 3, 'Eczema et dermatite atopique : symptÃ´mes, prÃ©vention et traitement', 'L’eczema et la dermatite atopique sont des maladies de peau très répandues mais qui n’en sont pas moins difficile à vivre. Mais quels sont les symptômes ? Quelles sont les causes ? \r\nQuels traitements peuvent être mis en œuvre pour prévenir et traiter les poussées ?\r\nL’eczema est une maladie inflammatoire de la peau. Pour commencer, il faut savoir qu’il existe de nombreuses formes d’eczema : atopique, nummulaire, de contact ou encore dyshidrose… Elles présentent toutes des particularités propres mais ont des symptômes communs et en premier lieu : les démangeaisons.\r\nEn effet, l’eczema provoque chez les personnes atteintes l’envie irrépressible de se gratter. La peau rougit et gonfle, des cloques ou des boutons peuvent apparaitre. Et attention ! Il ne faut pas oublier que les symptômes de l’eczema peuvent concerner une toute petite zone mais aussi le corps entier.\r\nEnfin, si les enfants sont les premiers concernés par l’eczema (environ 1 enfant sur 4 !), rappelons que les adultes aussi peuvent être touchés.\r\nEn deuxième lieu, penchons-nous plus précisément sur la dermatite atopique, aussi appelée « eczéma atopique » ou « dermite du nourrisson ». Comme le souligne son nom médical, il s’agit d’une affection de la peau qui touche principalement les enfants et se manifeste par poussées. Dans 75% des cas, la dermatite atopique disparaît d’elle-même à la fin de l’enfance mais elle peut persister à l’âge adulte.\r\nLes causes de la dermatite atopique peuvent être génétiques mais aussi environnementales ou psychologiques. En effet, un enfant aura plus de risques d’avoir une peau atopique si l’un de ses parents souffre lui-même d’allergies. De même, les crises d’eczema se manifestent plus souvent par temps froid et sec et s’améliorent en été. Enfin, elles peuvent être aggravées par d’autres facteurs irritants comme les produits cosmétiques (par exemple maquillage, lait pour le corps, shampooing…) ou bien les matières textiles synthétiques. Le stress est également un facteur aggravant.\r\nLes symptômes de la dermatite atopique sont facilement identifiables. Comme pour les autres formes d’eczema, on voit clairement des lésions de la peau qui provoquent des démangeaisons sur les joues, les membres, le cuir chevelu ainsi que dans les plis de l’épiderme.\r\nPour prévenir les crises de dermatite atopique ou d’eczema, il est possible d’agir en amont sur différents facteurs de risque.\r\nTout d’abord, il faut réduire l’exposition aux substances irritantes, desséchantes ou allergènes \r\nEffectuer la toilette tous les 2 ou 3 jours pour laisser le temps à la peau de régénérer son film lipidique.\r\nEviter l’exposition au tabac.\r\nNe pas porter de textiles irritants ou synthétique. Préférer les matières naturelles comme le coton et le lin.\r\nEviter absolument la contamination par l’herpès.\r\nEnsuite, il faut favoriser la santé de la peau et éviter son dessèchement :\r\nUtiliser des produits sans savon ou surgras. Lors du séchage, tamponner la peau au lieu de frotter pour éviter l’irritation.\r\nAppliquer chaque jour des émolients sur la peau : huiles végétales (coco, karité…) ou crème à base d’urée (sous surveillance médicale).\r\nEnfin, il faut prendre soin de son état émotionnel, le stress étant cause de poussées eczémateuses. Pour cela, il est possible de :\r\nPratiquer une activité lénifiante (par exemple le yoga ou la méditation).\r\nFaire du sport pour évacuer le trop plein d’émotions.\r\nDormir suffisamment et se coucher à heure fixe en limitant l’exposition aux écrans.\r\n\r\n', 'eczema.jpg', '30/12/2019 Ã  21:09:54'),
(33, 5, 3, 'Allergie cutanÃ©e : symptÃ´mes, causes et traitements', 'Plaques rouges, boutons, démangeaisons : et si c’était une allergie cutanée ?\r\n Dans ce cas, sachez que ce n’est pas la première fois que vous êtes confronté(e) à l’allergène. \r\nEn effet l’étape initiale du processus allergique, dite « phase de sensibilisation », ne déclenche aucun symptôme.\r\n Durant cette période, le système immunitaire identifie une substance étrangère comme une menace à éliminer à tout prix – alors qu’elle est en réalité sans danger pour l’organisme – puis produit des anticorps spécifiquement dirigés contre elle.\r\n Dès lors, ils essaieront de la détruire à chaque fois qu’elle entrera en contact avec votre peau, donnant naissance au passage à différentes manifestations allergiques : on vous explique comment les identifier et les combattre dans notre article !\r\nLes symptômes apparaissent souvent dans les 48 heures suivant l’exposition à l’allergène.\r\n La peau devient rouge, gonflée et se couvre de vésicules suintantes au niveau de la zone de contact. \r\nDe vives démangeaisons font aussi leur apparition : c’est le fameux eczéma de contact allergique, qui entraîne ensuite la formation de petites croûtes.\r\n Rassurez-vous : elles disparaissent en quelques jours sans laisser de cicatrices… \r\nMais il existe aussi des manifestations plus rapides. \r\nAinsi, lorsque l’allergie entraîne une véritable crise d’urticaire, les symptômes apparaissent plutôt dans les 15 à 30 minutes suivant l’exposition. \r\nDes plaques rougeâtres en relief, dites papules, se forment tout d’abord au niveau de la zone de contact mais elles peuvent s’étendre bien plus loin dans certains cas.\r\nFugaces, elles disparaissent en l’espace de quelques minutes à quelques heures et peuvent, tout comme l’eczéma, s’accompagner de démangeaisons intenses.\r\nEn règle générale, les manifestations allergiques cutanées sont sans gravité et peuvent être facilement soulagées avec des crèmes vendues sans ordonnance en pharmacie. \r\nCependant, il est recommandé de consulter un médecin si :\r\nvous ignorez quel est l’allergène en cause , vos plaques s’étendent ,vos symptômes ne connaissent aucune amélioration au bout de 5 jours malgré l’application des crèmes.\r\nPour détecter une hypersensibilité cutanée, l’allergologue effectue souvent un « patch-test », dit aussi test épicutané. En pratique, vous devez garder des patchs sur votre peau pendant 48 à 72 heures, le temps que les allergènes testés pénètrent bien dans l’épiderme et déclenchent une réaction… \r\nDu moins si vous souffrez réellement d’une allergie cutanée ! \r\nGardez à l’esprit que des allergies « par ingestion », comme une allergie alimentaire ou une allergie médicamenteuse par exemple, peuvent aussi provoquer de l’eczéma ou de l’urticaire. Vous pouvez donc être amené(e) à effectuer d’autres tests, jusqu’à l’identification de l’allergène en cause : parfois le diagnostic est très rapide mais dans certains cas, il faut s’armer de patience.', 'allergie.jpg', '30/12/2019 Ã  21:16:46'),
(34, 5, 4, 'Automutilation ', 'En augmentation dans les sociétés occidentales, les comportements auto-mutilateurs sont difficiles à définir, du fait de leurs limites floues avec les gestes suicidaires et le « body art ».\r\nOn retient principalement la définition avancée par le chercheur Stephan Herpertz :\r\nL’automutilation est un « comportement qui consiste à se faire mal de façon délibérée, répétée, de manière directement physique, sans intention consciente de se suicider et qui ne conduit pas à des blessures pouvant menacer le pronostic vital. »\r\nDe fait, l’automutilation ne concerne pas les actes à connotations sexuelles et les tentatives de suicide.\r\nLa définition donnée par le chercheur Lorthiois paraît plus complète :\r\n« L’automutilation comprend toutes les pratiques entraînant des lésions des tissus  ou des organes ; on peut la définir comme une atteinte portée à l’intégrité du  corps ; elle peut consister soit en la blessure ou l’ablation totale ou partielle d’un  organe ou d’un membre, du revêtement cutané ou de ses annexes ; soit enfin dans  des manœuvres (combustion, striction, introduction de corps étrangers) pouvant  compromettre sa vitalité et son bon fonctionnement sans que cependant elle ait été  accomplie dans le but de se donner la mort. »\r\nSelon la littérature scientifique, 17 % de la population expérimenterait au moins une fois dans sa vie l’automutilation. Parmi eux, 75 % ont connu plusieurs épisodes, 36 % affirment que personne n’a jamais été au courant de leurs agissements et seulement 3 % ont consulté un médecin à ce sujet.\r\nCes chiffres sont néanmoins à prendre avec précaution dans la mesure où le recensement d’actes solitaires et dissimulés est difficile.\r\nLa population féminine serait surreprésentée, mais les chiffres sont très variables et se contredisent.\r\nLes automutilations commenceraient dans 60 % des cas vers l’âge de 12-13 ans. \r\nLe Syndrome d’Automutilations Répétées se définit par la répétition d’automutilations impulsives, marquée par l’incapacité de la personne à résister à l’impulsion de s’automutiler. La personne n’a aucune intention de se suicider quand elle se mutile. \r\nIl existerait certains facteurs déclenchants parmi lesquels :\r\nUne forte tension intérieure ;\r\nUne sensation de vide ;\r\nUn sentiment d’échec, de frustration et de rejet ;\r\nLe besoin d’exprimer un sentiment de haine, de se punir.\r\nLe besoin d’obtenir des soins ou l’attention des autres ;\r\nLe besoin de changer d’apparence physique ;\r\nLe besoin d’appartenir à un groupe et de cesser de se sentir seul ;\r\nLe besoin de reprendre contact avec la réalité, de s’empêcher de penser au suicide.', 'Psychologie.png', '30/12/2019 Ã  21:50:15'),
(35, 5, 3, '5 conseils pour avoir plus confiance en soi', '1.Connaître vos forces et vos faiblesses, vos qualités et vos défauts vous permettra d’en tirer le meilleur parti et de mieux vous affirmer.\r\nC’est la première étape vers un gain de confiance en soi.\r\nAinsi, vous serez en mesure de mettre en avant vos atouts dans toutes les situations du quotidien : au bureau, avec les amis ou la famille. \r\nEn déterminant vos points faibles, vous pourrez travailler à les améliorer. \r\nFaire le bilan de votre personnalité, de vos réalisations, vous aidera à vous sentir unique et plein d’assurance. \r\nDe plus, bien vous connaître permettra à votre entourage d’également apprendre à vous connaître et à mieux vous apprécier.\r\n2.Au travail, à la maison, avec les ami(e)s, vous accomplissez quotidiennement une foule de tâches qui peuvent solliciter les compliments de votre entourage. \r\nApprenez à recevoir ces commentaires positifs et à les apprécier. \r\nVous pouvez percevoir ceux-ci comme des encouragements sur lesquels vous pouvez vous baser pour reconnaître vos principales forces. \r\nVous pourrez ainsi en tirer profit pour rehausser votre estime personnelle.\r\n3.La confiance en soi transparaît à travers notre posture et dans notre regard. \r\nTenez votre dos droit, vos épaules relevées, votre tête haute et marchez d’un pas assuré. \r\nSouriez davantage, les gens seront attirés vers vous. \r\nLes personnes ayant une grande confiance en elles adoptent ce genre de comportements non verbaux. Inspirez-vous d’elles. \r\nPour être plus à l’aise, vous pouvez vous observer dans un miroir afin de voir la différence entre vos différentes postures et expressions faciales. \r\n4.La confiance en soi passe par la perception qu’une personne a d’elle-même, mais également par ce qu’elle croit que les autres pensent d’elle. \r\nIl est primordial de s’affirmer auprès des autres quant à ses choix, ses valeurs et ses opinions. \r\nIl ne fait pas accepter les critiques non constructives, les mesquineries et les propos blessants. \r\nSi une personne vous blesse, que ce soit par ses paroles ou ses comportements, vous devez poliment lui faire savoir. \r\nL’estime de soi passe sans contredit par l’affirmation de soi. \r\n5.Pour prendre davantage confiance en vous, sortez de votre zone de confort. \r\nCette zone peut se définir comme étant tout lieu ou moment où vous vous sentez complètement à l’aise, où vous êtes en possession de tous vos moyens. \r\nTout ce qui se trouve en dehors de cette zone s’apparente à de la nouveauté et peut paraître effrayant. \r\nRelever de nouveaux défis, aborder de nouvelles personnes, pratiquer une activité différente sont tous des exemples vous permettant de sortir de votre zone de confort. \r\nVous adapter à un milieu jusqu’ici inconnu pourra vous permettre de développer d’autres compétences et d’en apprendre encore davantage sur vous. \r\nPlus gros seront les pas franchis, plus grande sera la fierté ressentie. \r\n', 'Psychologie.png', '30/12/2019 Ã  22:09:53'),
(36, 5, 4, 'HypersensibilitÃ© Ã©motionnelle', 'Selon la psychologue américaine Elaine Aron, une personne sur cinq serait atteinte d’une hypersensibilité émotionnelle. Le psychanalyste et écrivain Saverio Tomasella a listé les particularités de ce trait de caractère :\r\n\r\nEn décalage. Les hypersensibles se sentiraient en décalage avec les autres jusqu’à se croire anormal ou avoir peur de basculer dans la folie.\r\n\r\nEmotions à vif. Les émotions des hypersensibles sont souvent exacerbées, parfois hors-de-contrôle. Les sensations qu’ils perçoivent les touchent de plein fouet et perturbent leur équilibre : voilà pourquoi leur entourage les trouve « à vif », « à cran » ou encore « à fleur de peau » et peine à suivre leurs changements de comportement imprévisibles.\r\n\r\nSujets aux excès. Les hypersensibles sont de grands anxieux qui fuient leur trop-plein émotionnel en accumulant les excès (drogue, sexe, alcool, comportements compulsifs).\r\n\r\nSensibles au regard des autres. Les hypersensibles auraient un rapport à l’autre bien à eux qui les pousse à se montrer réservés, timides, susceptibles. Ils aimeraient se ressourcer dans le silence, loin des autres et de la foule. Pour autant, cette timidité ne passe pas inaperçu : « Les personnes timides, bien que réservées, peuvent paraître fantasques à leur entourage du fait de goûts, d’habitudes ou de marottes qui surprennent les autres. Ainsi, une très grande sensibilité va souvent de pair avec une forte originalité » déclare le psychanalyste Tomasella.\r\n\r\nEmpathiques à l’extrême. Bien qu’ils apprécient la solitude, les hypersensibles sont généralement des soutiens précieux pour leurs proches. Empathiques et attentifs, ils partagent les joies, comme les souffrances. ', 'hyper.jpg', '30/12/2019 Ã  22:32:22'),
(37, 5, 4, 'Personne introvertie', 'Les termes introversion et extraversion désignent des attitudes face au monde et à soi-même. Ils ont été proposés par Carl Gustave Jung. \r\nEn 1911, il a décrit l’introversion comme "le détachement de la libido des objets du monde extérieur et son reflux vers le monde intérieur du sujet". \r\nPour lui,  c’est la source de leur énergie qui distingue principalement les introvertis des extravertis : les introvertis préfèrent tirer leur énergie de leurs mondes intérieurs, de leurs réflexions, de leurs sentiments et de leurs idées, alors que les extravertis la puisent dans les sphères extérieures, lors d’activités, en relation avec les autres. \r\nPour Carl-Gustav Jung et d’autres psychologues, ces traits de caractère sont biologiques.\r\n Des études semblent confirmer cette hypothèse. \r\nLes introvertis représenteraient 30 à 50% de la population. \r\nLes personnes introverties sont discrètes, ont besoin de calme et de moments de solitude pour recharger leurs batteries. \r\nElles présentent un certain nombre de traits de caractères : elles préfèrent écouter que parler, préfèrent parler de sujets profonds que de sujets futiles, elles réfléchissent beaucoup, sont observatrices. \r\nCe sont aussi des personnes très sensibles. \r\nEn revanche, être introverti ne veut pas forcément dire être timide. \r\nLa personne timide est anxieuse lorsqu’elle est en rapport avec les autres alors que la personne introvertie peut être à l’aise en société. \r\nElle prend juste la parole quand il le faut. \r\nLes personnes introverties ont de véritables qualités liées à leur besoin d’être seul et de réfléchir autrement. Loin d’être des solitaires qui se désintéressent des autres, les introvertis se révèlent être des personnes sur lesquelles on peut compter. \r\nDu fait de leurs qualités d’écoute, d’observation et de réflexion, elles sont des soutiens utiles. Comme ces personnes sont fiables, attentives et fidèles, ce sont de bons amis.\r\nSi les introvertis ne se livrent pas au sein d’un grand groupe ni en général à des inconnus, la plupart aiment en revanche dans l’intimité parler de choses profondes qui les concernent ou concernent leurs proches. Il faut juste gagner leur confiance pour connaître leur for intérieur.', 'intro.jpg', '31/12/2019 Ã  00:44:39');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int(11) NOT NULL,
  `nomCategorie` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nomCategorie`) VALUES
(1, 'Sport'),
(2, 'Nutrition'),
(3, 'Dermatologie'),
(4, 'Psychologie'),
(5, 'Annonce');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCommentaire` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `dateCommentaire` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`idCommentaire`, `idUser`, `idArticle`, `contenu`, `dateCommentaire`) VALUES
(12, 5, 25, 'Je pratique la natation depuis plus de 3 ans maintenant et je peux vous dire que cet article ne dit pas faux !! ', '31/12/2019 Ã  01:01:41'),
(14, 5, 20, 'Je pense que je vais me remettre au sport !! ', '31/12/2019 Ã  01:02:41'),
(17, 6, 37, 'Je suis une personne introvertie dans ce cas lÃ  ! ', '31/12/2019 Ã  02:05:12'),
(19, 6, 37, 'Haha !', '31/12/2019 Ã  02:11:29');

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `idforum` int(20) NOT NULL,
  `titre` int(20) NOT NULL,
  `contenu` text NOT NULL,
  `date` datetime NOT NULL,
  `iduser` int(11) NOT NULL,
  `idcategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `forum_reponses`
--

CREATE TABLE `forum_reponses` (
  `idreponses` int(11) NOT NULL,
  `auteur` varchar(25) NOT NULL,
  `reponse` text NOT NULL,
  `date_reponse` datetime NOT NULL,
  `sujet_liee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `idtopic` int(11) NOT NULL,
  `auteur` varchar(25) NOT NULL,
  `titre` text NOT NULL,
  `date_reponse` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `idreponse` int(11) NOT NULL,
  `idcom` int(11) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `userpro`
--

CREATE TABLE `userpro` (
  `idUserPro` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `telephone` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` longtext NOT NULL,
  `statut` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idUser`, `pseudo`, `email`, `password`, `statut`) VALUES
(2, 'dess', 'dess@gmail.com', '64152d21e5d95c63b92c29b284b7a3e8f0edc7e1', 'simple'),
(3, 'babacar', 'baba@gmail.com', '79d7ded0ead2ff0db5a632b9fb6911420a876676', 'professionnel '),
(4, 'administrateur', 'admin@sante.sn', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrateur'),
(5, 'itsfatee', 'fateemux@gmail.com', 'ad4a3a52b5f9407461123ad88070cc7fabbf8015', 'pro'),
(6, 'michou', 'mich@yahoo.fr', '11b13f83535c942a4dde042230905e8b54dca77d', 'simple');

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `choix` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idCategorie` (`idCategorie`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCommentaire`),
  ADD KEY `fk_idUserC` (`idUser`),
  ADD KEY `fk_idArticleC` (`idArticle`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`idforum`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idcategorie` (`idcategorie`);

--
-- Index pour la table `forum_reponses`
--
ALTER TABLE `forum_reponses`
  ADD PRIMARY KEY (`idreponses`);

--
-- Index pour la table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`idtopic`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`idreponse`),
  ADD KEY `idcom` (`idcom`);

--
-- Index pour la table `userpro`
--
ALTER TABLE `userpro`
  ADD PRIMARY KEY (`idUserPro`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `idCommentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `forum_reponses`
--
ALTER TABLE `forum_reponses`
  MODIFY `idreponses` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `idtopic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `idreponse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_idCategorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`),
  ADD CONSTRAINT `fk_idUserA` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_idArticleC` FOREIGN KEY (`idArticle`) REFERENCES `article` (`idArticle`),
  ADD CONSTRAINT `fk_idUserC` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Contraintes pour la table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `userpro`
--
ALTER TABLE `userpro`
  ADD CONSTRAINT `fk_idUSER` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
