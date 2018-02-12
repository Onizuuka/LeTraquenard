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
(12,'cocktail', 'Sex on the beach', 'Vous trouverez des milliers de recettes différentes portant ce même nom car beaucoup de barmen s''approprient le nom attractif de la recette originale afin de faire leur mélange. La recette ici est l''originale et voici un éclaircissement.', 5.40, 'sex.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(13,'cocktail', 'Soupe de Champagne', 'Appelée aussi "Soupe champenoise", vous pouvez ajouter quelques glaçons dans le saladier pour rafraîchir la soupe.', 8.00, 'soupe.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(14,'cocktail', 'Caipirinha', 'La Caipirinha (prononcer "caïpirigna") est un délicieux cocktail à la mode Brésilienne à base de cachaça. Vous aimez le Brésil, la Samba, une compagnie agréable... vous aimerez la Caipirinha !!!', 6.50, 'cai.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
-- Alcools
(15,'alcool', '1664', 'description', 2.70, '1664.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54'),
(16,'alcool', 'Aquavit', 'description', 37.50, 'aqu.jpg', '2018-02-09 08:55:54', '2018-02-09 08:55:54');


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
