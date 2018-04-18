-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 09 fév. 2018 à 11:25
-- Version du serveur :  10.1.29-MariaDB
-- Version de PHP :  7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `letraquenard`
--

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
(3, '2017_08_21_172809_create_products_table', 1),
(4, '2017_08_24_091943_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `genre`, `title`, `description`, `price`, `imagePath`, `created_at`, `updated_at`) VALUES
-- Cocktails
(1,'cocktail', 'Mojito', 'Très parfumé, légèrement sucré et avec une pointe d''acidité, ce Cocktail élégant et cosmopolite a fait sa place parmi les grands classiques et c''est aujourd''hui le Cocktail le plus célèbre.', 6.60, 'moj.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(2,'cocktail', 'Cosmopolitan', 'Un grand classique des soirées mondaines souvent appelé par son nom abrégé : "Cosmo" et à tort "Cosmopolitain", comme il n''est pas rare de le trouver en France. Bien que cette recette soit servie dans un verre à martini, ce n''est pas un martini.', 4.50, 'cosmo.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(3,'cocktail', 'Blue Lagoon', 'Appelé aussi le "lagon bleu" par sa traduction. Il fut créé par Andy MacElhone au Harry’s Bar à Paris en 1960.', 5.00, 'blue.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(4,'cocktail', 'Tequila Sunrise', 'La Tequila Sunrise Originale a été mise au point en 1938 par "Gene Sulit", barman passionné du luxueux Hotel Resort & Spa "Biltmore Arizona" à Phoenix en Arizona (USA).', 4.50, 'teq.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(5,'cocktail', 'Punch', 'Certains "habitués" préféreront multiplier les doses du rhum pour une boisson plus virile, mais la recette originale reste celle ci. Vous pouvez, cependant, utiliser d''autres jus de fruits, selon les goûts.', 4.50, 'punch.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(6,'cocktail', 'Bloody Mary', 'Présenté sous la forme d''un remède contre la gueule de bois, le Bloody Mary a été inventé en 1921 au "New York Bar" à Paris par Ferdinand Petiot qui y travaillait avec Harry, l''inventeur du Side Car, White Lady etc...', 6.50, 'blood.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(7,'cocktail', 'Punch exotique', 'Le mot "punch" est anglais. Les dictionnaires le font dériver de l''hindoustani et du sanskrit "panch" qui signifie cinq, nombre des composants du punch classique réputé aux Indes : thé, citron, cannelle, sucre et alcool.', 4.50, 'punche.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(8,'cocktail', 'Cuba libre', 'Créé en 1900.\r\nLe Cuba Libre est né juste après la guerre entre les Etats-Unis et l''Espagne lors de la 2e Guerre d’Indépendance (1895 à 1898).', 6.50, 'cuba.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(9,'cocktail', 'Americano', 'L''Americano a été inventé en Italie en 1861 au bar de Gaspare Campari par lui même, endroit fréquenté par des alcooliques mondains notoires tels que Verdi, Edouard VII ou encore Ernest Hemingway.', 6.50, 'amer.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(10,'cocktail', 'Piña Colada', 'Une boisson que les amateurs de cocktails authentiques dégusteront avec plaisir. Le lait de coco, le jus d''ananas et le rhum constituent un mélange vraiment très savoureux.', 5.00, 'pina.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(11,'cocktail', 'Margarita', 'Une part acide, une part sucrée, une part amère: la formule magique qui a fait surgir beaucoup de dérivés, mais... l''original est toujours là, fidèle au poste et sans une ride, une référence.', 5.00, 'mar.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(12,'cocktail', 'Sex on the beach', 'Vous trouverez des milliers de recettes différentes portant ce même nom car beaucoup de barmen s''approprient le nom attractif de la recette originale afin de faire leur mélange. La recette ici est l''originale.', 5.40, 'sex.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(13,'cocktail', 'Soupe de Champagne', 'Appelée aussi "Soupe champenoise", vous pouvez ajouter quelques glaçons dans le saladier pour rafraîchir la soupe.', 8.00, 'soupe.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(14,'cocktail', 'Caipirinha', 'La Caipirinha (prononcer "caïpirigna") est un délicieux cocktail à la mode Brésilienne à base de cachaça. Vous aimez le Brésil, la Samba, une compagnie agréable... vous aimerez la Caipirinha !!!', 6.50, 'cai.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(15,'cocktail', 'Marquisette', 'Vous pouvez le consommer immédiatement ou le conserver au frais en bouteilles fermées après avoir filtré.', 6.00, 'marq.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(16,'cocktail', 'Daiquiri', 'Appelé aussi à tort "Daikiri", cette recette fût inventée en 1896 par l''ingénieur "Pagliuchi" quand il visita une mine de fer nommée "Daïquirí" à l''est de Cuba, où travaillait "Jennings S. Cox", un ingénieur américain.', 4.50, 'dai.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(17,'cocktail', 'B-52', 'Créé en 1969.\r\nUne recette qui a beaucoup de variantes. L''originale ici publiée à été inventée en 1969 dans le bar du restaurant "Alice" à Malibu (Californie) pendant la guerre du Viêt Nam.', 2.00, 'b52.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(18,'cocktail', 'Soupe Angevine', 'Utilisez de préférence du cointreau et du crémant. Une recette sympathique nous provenant du pays de Loire. Les dosages sont ici en cl, mais traditionnellement on compte en louches : une louche de chaque ingrédient pour une bouteille de crémant.', 5.00, 'ange.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(19,'cocktail', 'Gin Fizz', 'Créé en 1750.\r\nCette recette est une variante de la recette du Gin Tonic.', 5.10, 'ginfizz.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(20,'cocktail', 'Spritz', 'Appelé aussi "Spritz bitter", le spritz est un cocktail largement consommé à Venise, surtout par les étudiants, où il est incontournable à l''heure de l''apéritif.', 4.60, 'sp.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
-- Alcools
(21,'alcool', '1664', '5.5%', 2.70, '1664.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(22,'alcool', 'Aquavit', '41.5%', 37.50, 'aqu.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(23,'alcool', 'Arak', '45%', 27.35, 'arak.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(24,'alcool', 'Arkhi', '45%', 2.50, 'ark.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(25,'alcool', 'Armagnac', '52%', 59.87, 'arm.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(26,'alcool', 'Bourbon', '42.5%', 64, 'bour.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(27,'alcool', 'Calvados', '45%', 42.71, 'cal.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(28,'alcool', 'Cognac', '40%', 60, 'cog.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(29,'alcool', 'Cointreau', '40%', 30.54, 'coi.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(30,'alcool', 'Edelweiss', '5%', 3.57, 'edel.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(31,'alcool', 'Carlsberg', '5%', 3.39, 'carl.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(32,'alcool', 'Desperados', '5.9%', 3.59, 'despe.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(33,'alcool', 'Get 27', '27%', 21.15, 'get.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(34,'alcool', 'Goudale', '7.2%', 4.15, 'goud.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(35,'alcool', 'Gin', '37.5%', 23.2, 'gin.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(36,'alcool', 'Grimbergen', '6.5%', 5.20, 'grim.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(37,'alcool', 'Havana Club', '40%', 55.50, 'hcl.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(38,'alcool', 'Heineken', '5.5%', 3.33, 'hein.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(39,'alcool', 'Jagermeister', '35%', 25.15, 'jager.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(40,'alcool', 'Jack Daniel''s', '40%', 36.15, 'jack.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(41,'alcool', 'Jupiler', '5.2%', 4.33, 'jupi.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(42,'alcool', 'Kirsch', '55%', 46.35, 'kir.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(43,'alcool', 'Kronenbourg', '4.5%', 4.0, 'kron.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(44,'alcool', 'Leffe', '5.5%', 2.4, 'leffe.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(45,'alcool', 'Rhum', '37%', 57.00, 'rhum.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(46,'alcool', 'Skoll', '6%', 4.54, 'skoll.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(47,'alcool', 'Vodka', '37.5%', 22.5, 'vod.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
-- Softs
(48,'soft', 'Coca Cola', '', 1.1, 'coc.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(49,'soft', 'Fanta', '', 1, 'fan.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(50,'soft', 'Grenadine', '', 1.3, 'gre.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(51,'soft', 'Ice tea', '', 1.5, 'ict.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(52,'soft', 'Jus d''ananas', '', 2.5, 'jua.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(53,'soft', 'Jus d''orange', '', 1.75, 'juo.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(54,'soft', 'Jus de pamplemousse', '', 1.8, 'jup.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(55,'soft', 'Limonade', '', 0.75, 'lim.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(56,'soft', 'Perrier', '', 0.65, 'per.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(57,'soft', 'Red Bull', '', 3.5, 'red.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(58,'soft', 'Schweppes Agrumes', '', 1.9, 'sca.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(59,'soft', 'Schweppes Lemon', '', 1.9, 'scl.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(60,'soft', 'Sprite', '', 0.9, 'spr.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54');


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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
