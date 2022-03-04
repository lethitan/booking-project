-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 03:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sem_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `acccount_res`
--

CREATE TABLE `acccount_res` (
  `res_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acccount_res`
--

INSERT INTO `acccount_res` (`res_id`, `username`) VALUES
(1, 'test'),
(2, 'test2'),
(3, 'test'),
(4, 'test2'),
(5, 'test'),
(6, 'test2'),
(7, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `phone`, `status`) VALUES
('abc', '$2a$10$2Q8x0LsIL0lx165Bj7DTHOOEae7rK.TEmjy7U/8ukVYvlR2FM65WK', 'Tan ne', '12314256', 0),
('acc1', '$2a$10$3DdmUIVOSiZ1uCwIukFjLOJ2Bgnfcd4dtmmTr6E.Q90.Dp/h8Gxx2', 'Tan le ne', '12314256', 1),
('admin', '$2a$10$r9imIJZbAIznDMzZGb6me.2bFz2osHhYWkqZ6khhTrD321TENGJvK', 'Tan le ne', '1231425', 0),
('hihi', '$2a$10$ucFsGbcGi9.EJviwB/ouk.WXwIvaGilm8iMpJCkErJR7dMOi6Teli', 'hihi', '12314256', 0),
('restau', '$2a$10$vfNRo4QfnaP/imitvL08Z.JZLDSNxb.b1USb3k7aZec0sZ1fQQx56', 'Tan ne', '12314256', 0),
('sonbd', '$2a$10$cZQmG9wKBBOn8LPPr/.aoeBxAXtBvRTMpW/ZRAO7Foocfnsfv6cZe', 'hi', '12314256', 0),
('test', '$2a$10$8VznVe.irnEsqbdTgC5YLOHU1sdRPXJMKTRdw6upRhVZCpr4bgHbe', 'hi', '12314256', 1),
('test2', '123', 'hihi', '1231425', 2),
('test3', '123', 'hi', '0978945613', 2),
('test4', '123', 'ha', '12455', 2),
('test5', '123', 'ha', '12455', 2),
('test6', '123', 'ha', '12455', 2),
('test7', '123', 'ha', '12455', 2),
('Thitan', '$2a$10$1nZTIl7CWPpO8lUv2R7bguEyOXORnK2G4UmnINT20rdO3FjbnIr.a', 'hihi', '1231425', 0),
('user1', '123', 'hi', '0978945613', 1),
('user2', '123', 'ha', '12455', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_role`
--

CREATE TABLE `account_role` (
  `username` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_role`
--

INSERT INTO `account_role` (`username`, `role_id`) VALUES
('abc', 2),
('admin', 1),
('admin', 3),
('admin', 4),
('hihi', 1),
('restau', 2),
('test', 2),
('test', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `res_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `res_id`) VALUES
(1, 'Soup', 1),
(2, 'Rice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `res_id` int(11) NOT NULL,
  `money` double NOT NULL,
  `from_money` double NOT NULL,
  `description` varchar(250) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `res_id`, `name`, `price`, `category_id`, `description`, `status`) VALUES
(1, 2, 'mon 1', 35, 1, 'hhhh', 1),
(2, 2, 'haha', 0, 1, 'kkkkk', 1),
(3, 2, 'mon 1', 35, 1, 'hhhh', 1),
(4, 2, 'haha', 12, 1, 'kkkkk', 1),
(5, 1, 'Banh cuon  lenigrad', 14, 1, 'This is a popular dish in the land of Aries. The dish is simply minced meat and waves rolled in a shell from pureed barley.\r\n     Although it does not require a change of regime, the taste of Leningrad rolls is very delicious, popular with locals, and often eaten as a light meal.', 1),
(6, 1, 'Soup red tomato', 32, 1, 'Traveling to Russia, you should taste the famous specialty dish - Borscht Soup red radish once to better understand the local cuisine. This dish is cooked from ingredients such as red radish, beef, dill, bay leaf, and sour cream sauce.\r\n     Red radish soup is served cold in summer and hot in winter, it can be said that it is a suitable dish to eat all year round.', 1),
(7, 1, 'black bread', 15, 1, 'For the Russian people, bread has a deep meaning and they use bread to serve their special jobs. \r\n    This action implies that the host and the customer are willing to share the joys and sorrows. \r\n    Besides the familiar breads, black bread is also the kind that the locals often use. \r\n    Black bread is often served with pork, beef or jam and butter.', 1),
(8, 1, 'Salmon roe', 24, 1, 'Traveling to Russia without eating salmon and caviar, you will surely regret it. \r\n   This traditional dish is often used to receive distinguished guests, those who have enjoyed salmon and caviar are also considered upper-class people.\r\n   At parties, caviar is more expensive than fatty meat and It is usually put into small boxes.\r\n    Common red caviar is salmon roe, cheaper than black caviar. After being removed from the fish\'s belly, the caviar will be carefully preserved, salted, and carefully sorted.\r\n   People are based on their fatness and shape to classify them. Caviar can be used to make many different dishes.', 1),
(9, 1, 'Shashilk grilled meat', 35, 1, 'Shashlik barbecue is the oldest traditional dish in the country of birch.\r\n Before grilling, the meat will be cut into bite-sized pieces and marinated with spices for about 15-60 minutes.\r\n Each chef has a unique marinade recipe, so no two Shashilik dishes are the same, but they all have a unique flavor and indescribable attraction. \r\nAfter marinating, the meat will be strung on each skewer and then placed on the charcoal, smokeless stove to cook evenly. \r\nThis dish is delicious hot or cold. When used, people often drink Russian wine.', 1),
(10, 1, 'Pelmeni cake', 10, 1, 'Not only loved by locals, but many tourists to Russia also love this famous Pelmeni cake.\r\n The cake is shaped like a dumpling but must be put in the refrigerator before enjoying, the new flavor of the dish will be correct.\r\n Traditional pelmeni is made from a typical Russian dough with onions, pork, salt, and garlic.', 1),
(11, 1, ' Kasha porridge', 12, 1, 'Porridge is one of the favorite dishes of Russians and Kasha porridge is the most popular.\r\n   Delicious kasha is usually cooked with milk, meat, grains, or vegetables in a copper or earthen pot. \r\n   This dish is suitable for daily meals, breakfast, lunch, or dinner.', 1),
(12, 1, 'Salo', 20, 1, 'Salo is a traditional Russian, Belarusian and Ukrainian dish, made from pork belly fat, \r\nwith or without skin. Fatty meat is cut into 15 x 20 cm pieces and then marinated with salt or paprika, black pepper,\r\nminced garlic. If fatty meat has skin, the skin will be placed underneath, in wooden crates or boxes, \r\neach piece of fatty meat will be sprinkled with a layer of salt 1 cm thick, stored in a dark and cold place, \r\ncan be kept for 1 year or more. than. The worst thing to do when making this dish is to leave it for too long or expose it to light, \r\ncausing the fat to oxidize on the surface of the meat, making the meat yellow and bitter.', 1),
(13, 1, 'Tom Yum Goong ', 24, 1, 'Tom Yum Goong is Thai spicy and sour soup, a famous Thai dish that combines many quintessence of Thai cuisine and has become famous around the world.\r\n It is a combination of fresh shrimp and straw mushrooms along with lemongrass, chili, galangal, lime leaves, chives, lemon juice and fish sauce to form this special dish.', 1),
(14, 3, 'Som tum', 35, 1, 'Originating from the northeast of Thailand, Som Tam is a spicy Thai salad prepared quite simply with the main ingredient being green papaya combined with dried shrimp,\r\n tomatoes, beans, and a combination of other ingredients.\r\n accompanying spices such as lemon, chili, garlic, roasted peanuts. It is a popular dish in Thailand that is full of flavors in Thai cuisine such as the spicy taste of chili,\r\n the sour taste of lemon, the sweetness of jaggery, and the salty taste of the fish sauce.', 1),
(15, 3, 'Tom Kha Kai', 46, 1, 'Tom Kha Kai or Tom Kha Gai is a dish of chicken cooked with galangal, in the top 10 of the most delicious Thai dishes with a typical spicy and sweet flavor in Thai cuisine.\r\n This dish has a more pronounced sweetness but is also no less spicy because it is cooked with coconut milk, galangal, lemongrass, chili, coriander, straw mushrooms, and chicken. \r\nCoconut milk makes Tom Kha Kai more fragrant and sweeter than copper. \r\nFresh lemon leaves will help the dish add an ethereal but delicate flavor and are often used as a soup in Thai meals.', 1),
(16, 3, 'Gaeng Daeng', 15, 1, 'Belonging to the top 10 famous Thai dishes made with ingredients including meat, red curry powder, coconut milk,\r\n and some finely chopped lemon leaves to create a delicious curry with a characteristic spicy taste. The sweetness of coconut milk, the spiciness of curry powder, the softness of the meat, \r\nand the delicate decoration of this dish are likened to a beautiful woman, sweet but no less tender.', 1),
(17, 3, 'Pad Thai', 24, 1, 'Considered one of the famous Thai dishes, you can easily find this dish from Cape Town to Khao San Road. \r\n  With small noodles prepared on a hot pan, then add some bean sprouts, eggs, and onions and mix for a while before serving.\r\n   Is a dish that awakens the taste buds of diners with a combination of 4 spices including chili powder, fish sauce, sugar, and peanuts.', 0),
(18, 3, 'Khao Pad', 22, 1, 'At a glance, it is quite similar to the dish in Vietnam, which is prepared quite simply including fried rice, eggs, onions, and some spices. \r\n  However, Thai people also use more shrimp, crab, or chicken to pack, basil and vegetables, turning this dish from poor to more attractive in Thai cuisine.\r\n It is a popular dish in Thailand that is served with a few pieces of cucumber.', 1),
(19, 3, 'Pad Krapow Moo Saap', 32, 2, 'As one of the extremely popular Thai dishes for lunch and dinner in Thailand, it is prepared in a hot pan with ingredients including pork, basil, green beans, fresh, soy sauce. \r\n  and a little sugar. One of the extremely popular Thai dishes for lunch and dinner in Thailand,\r\n it is prepared in a hot pan with ingredients including pork, basil, and beans. greens, fresh seeds, soy sauce, and a little sugar.', 1),
(20, 1, 'Gaeng Keow Wan Kai', 13, 2, 'Considered one of the most delicious dishes in Thailand, the main ingredients include chopped fresh chicken, bamboo shoots, eggplant, coriander, \r\nand basil that make up this special dish. To get the wonderful green color of the dish, \r\nThais have to combine a tablespoon of green curry with hot coconut milk and often serve it with steamed rice cooked from Thai fragrant rice.', 1),
(21, 4, 'Yam Nua', 16, 2, 'Yam Nua is a specialty dish in Thailand with a blend of sweet potato, onion, coriander, mint, lime, dried and beef strips. \r\nIt is considered the most complete and delicious salad in Thailand that diners cannot be famous for.', 1),
(22, 4, 'Kai Med Ma Muang', 21, 2, 'As one of the easiest Thai dishes to make, it consists of ingredients: stir-fried chicken with roasted seeds, carrots, sweet soy sauce, chili, pepper, onion and mushrooms. \r\n  The most important thing about this dish is that it is simple to prepare but delicious,\r\n sometimes Thai people also add a little honey to add sweetness to the dish.', 1),
(23, 4, 'Bibimbap', 10, 2, 'Bibimbap catches the eye from the colors mixed with the materials. A Korean mixing bowl will have at least 6 dishes or more. It is indispensable that this very data is\r\n\r\nSoft cooked white rice\r\nA fresh yellow paste egg\r\nA little bit of red kimchi\r\nGreen vegetables served with cool\r\n', 1),
(24, 4, 'Tokbokki', 11, 2, 'Korean food Tokbokki is a famous street food here. It is available at almost every hawker cart outside the streets of Seoul.\r\n Simply made from play dough into long sticks and then cooked with seed flour, but it creates a flavor you can\'t forget a little bit when you try it.\r\nThe spicy taste of chili powder, the aroma of rice cakes, sometimes cooked with fish cakes, eggs, .. make the special appeal of this dish.', 1),
(25, 4, 'Kim Chi', 17, 2, 'Referring to Korean cuisine, people will immediately think of the world-famous Kim Chi dish. This is truly the culinary soul of Korea, \r\nso this country is also known as \"the land of Kim Chi\". You can find this dish in every corner even in Vietnam, from convenience stores to supermarkets to restaurants. \r\nHowever, even though you have tried a lot in Vietnam, if you have the opportunity to visit Korea, do not forget to try this dish because nowhere can it be as delicious as where it was born.\r\n', 1),
(26, 4, 'Bulgogi', 15, 2, 'The special feature of this dish is not only from the main ingredients, which are delicious pieces of fresh beef, but also from the marinated spices. \r\n Specialty soy sauce and sugar are the factors that make beef more delicious. \r\n This dish is often present in restaurants and eateries that are extremely loved by Korean people. \r\n Bulgogi is served with herbs such as lettuce, sesame leaves, .. to make the dish better.', 1),
(27, 4, 'Japchae', 21, 2, 'The ingredients of the main dish are similar, naturally here are different from Vietnam. The cables are made from sweet potato which makes the difference in taste.\r\n    It is mixed with seasonal vegetables accompanied by beef or pork with a little sesame oil. Japchae has a cool taste that is very suitable for Vietnamese tastes.\r\n\r\n', 1),
(28, 4, 'Yangnyeom Tongdak', 20, 2, 'Korean cuisine is famous for fried chicken that is prepared in many different ways. Each processing method brings a different delicious flavor.\r\n Yangnyeom Tongdak is famous for its combination of sweet and sour taste that makes you irresistible.', 1),
(29, 4, 'Seolleongtang\r\n', 46, 2, 'A famous Korean dish that perhaps few Vietnamese people know about. At first glance, it looks similar to beef noodle soup in Vietnam but has a completely different taste. This is a Korean royal dish favored by kings.\r\nA famous Korean dish that perhaps few Vietnamese people know about. At first glance, it looks similar to beef noodle soup in Vietnam but has a completely different taste. This is a Korean royal dish favored by kings.\r\n', 1),
(30, 4, 'DakJuk', 16, 2, 'A famous Korean dish that perhaps few Vietnamese people know about. At first glance, it looks similar to beef noodle soup in Vietnam but has a completely different taste. This is a Korean royal dish favored by kings.\r\nA famous Korean dish that perhaps few Vietnamese people know about. At first glance, it looks similar to beef noodle soup in Vietnam but has a completely different taste. This is a Korean royal dish favored by kings.\r\n', 1),
(31, 4, 'Soondubu Jjigae', 42, 2, 'Also known as braised tofu soup, is a spicy Korean stew. Because it is a country with a cold climate almost all year round,\r\n Korean cuisine is quite spicy. The dishes here are almost all added chili powder, such as this braised tofu soup.\r\n', 1),
(32, 4, 'Naengmyeon', 16, 2, 'Korea is famous for many dishes made from noodles, especially the instant package of this country is also very famous.\r\n Cold noodles with a cool taste are often popular on hot summer days. In winter, the air conditioner is mixed with spicy powder, which is very suitable for cold days.\r\n', 1),
(33, 4, 'Jajangmyeon', 23, 2, 'Korea is famous for many dishes made from noodles, especially the instant package of this country is also very famous. \r\nCold noodles with a cool taste are often popular on hot summer days.\r\n In winter, the air conditioner is mixed with spicy powder, which is very suitable for cold days.\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `res_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `username`, `res_id`, `date`, `total`) VALUES
(1, 'abc', 1, '2022-01-28', 13.5),
(2, 'acc1', 1, '2022-01-28', 5.7);

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_menu`
--

INSERT INTO `order_menu` (`id`, `order_id`, `menu_id`, `quantity`) VALUES
(1, 1, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `order_id`, `table_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `name`, `table_id`, `menu_id`) VALUES
(1, 'm1.jpg', NULL, 1),
(2, 'm2.png', NULL, 2),
(3, 'm3.jpg', NULL, 3),
(4, 'm4.png', NULL, 4),
(5, 'm5.png', NULL, 5),
(6, 'm6.jpg', NULL, 6),
(7, 'm7.png', NULL, 7),
(8, 'm8.png', NULL, 8),
(9, 'm9.png', NULL, 9),
(10, 'm10.png', NULL, 10),
(11, 'm11.jpg', NULL, 11),
(12, 'm12.png', NULL, 12),
(13, 'm13.png', NULL, 13),
(14, 'm14.png', NULL, 14),
(15, 'm15.png', NULL, 15),
(16, 'm16.png', NULL, 16),
(17, 'm17.png', NULL, 17),
(18, 'm18.jpg', NULL, 18),
(19, 'm19.jpg', NULL, 19),
(20, 'm20.jpg', NULL, 20),
(21, 'm21.jpg', NULL, 21),
(22, 'm22.jpg', NULL, 22),
(23, 'm23.jpg', NULL, 23),
(24, 'm24.jpg', NULL, 24),
(25, 'm25.jpg', NULL, 25),
(26, 'm26.jpg', NULL, 26),
(27, 'm27.jpg', NULL, 27),
(28, 'm28.jpg', NULL, 28),
(29, 'm29.jpg', NULL, 29),
(30, 'm30.jpg', NULL, 30),
(31, 'm31.jpg', NULL, 31);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `fullname`, `address`, `email`, `phone`, `photo`, `description`, `status`) VALUES
(1, 'Mercure Danang French Village', 'Located in French village, in Ba Na Hills campus', 'hihi@gmail.com', '0978945613', 'n1.jpg', 'The hotel has Gothic architecture, inspired by ancient villages in romantic France. Staying here, visitors seem to be lost in the French space right in Vietnam amidst the pleasant weather, unique 4 seasons in a day of Ba Na peak.', 1),
(2, 'La Crique & Café Postal', 'An Son village, Hoa Ninh commune, Hoa Vang district, Da Nang.', 'haha@gmail.com', '012346789', 'n2.jpg', 'La Crique Restaurant & Café Postal specializes in Vietnamese and Asian dishes, offering hundreds of choices for diners. In particular, sandwiches, pizzas, hamburgers and Spanish dishes are prepared very carefully, meticulously and deliciously. From rustic Vietnamese dishes such as pancakes, grilled chicken to pizza, bibimbap, etc., all are prepared by professional chefs. There are also soups and cakes that are also great.', 1),
(3, 'La Lavande', ' Behind the church of Saint Denis, in the French Village.', 'hi', '0978945613', 'n3.jpg', 'Specializing in serving diverse Asian and European cuisines, offering many attractive choices. Cold cuts, fried dishes, baked goods, hot cakes, salads, etc. are cooked deliciously and beautifully.', 1),
(4, 'Cao Vung Tau', '179 Thuy Van, Ward 8, Vung Tau City, Ba Ria - Vung Tau', 'hhkkk', '0978945613', 'n4.jpg\r\n', 'Cao Vung Tau Hotel has a system of 17 floors and 150 rooms, all rooms have large balconies and views overlooking Back Beach. Rooms are fully equipped with basic standard amenities. The hotel currently offers a variety of room types such as: Cozy Superior City View, Premium Ocean View, Spacious Deluxe Mountain View, Premier Executive Ocean View, Classy Suite Ocean View, Royal Family Suite Mountain.', 1),
(5, 'Nieu Viet Restaurant', '182 Hamlet 6, Tra Co, Tan Phu, Dong Nai', 'kkk', '851221122', 'n5.jpg', 'It is not too difficult to locate the location of this culinary space because the restaurant has a specialty of rice pot.', 0),
(6, 'Suoi Mo Park Resort', '9 Tra Co, Tan Phu, Dong Nai', 'hhhh', '0978945613', 'n7.jpg', 'Located in the area of ​​Nam Cat Tien National Forest, Nam Cat Tien, is a famous choice for tourists.\r\nOnly 24.8 km from the city center,\r\nThe hotels beautiful location ensures that guests can visit tourist attractions quickly and easily.', 0),
(7, 'Hon Ru Ri Restaurant', '1 Tran Phu, Ward 1, Vung Tau City, Ba Ria - Vung Tau', 'kkk', '12455', 'n6.jpg', 'The fresh seafood restaurant area will be designed into a bridge extending to the sea. At night, the lights are shimmering very beautiful and fanciful. This area is where visitors can enjoy countless seafood. Vung Tau is fresh and delicious. Here, visitors will directly board the raft and choose seafood, then the chef will process it into dishes according to your requirements. There are many kinds of fresh and new seafood for you to choose from such as: white pomfret, grouper, sea eel, black tiger shrimp, shrimp jam, ..', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_RESTAURANT'),
(3, 'ROLE_ADMIN'),
(4, 'ROLE_SUPERADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `amount` int(11) NOT NULL,
  `floor` varchar(250) NOT NULL,
  `res_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price_plus` double NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `amount`, `floor`, `res_id`, `category_id`, `price_plus`, `description`) VALUES
(1, 'alone', 1, '1', 1, 2, 20, 'hi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acccount_res`
--
ALTER TABLE `acccount_res`
  ADD PRIMARY KEY (`res_id`,`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`username`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_id` (`res_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_id` (`res_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_id` (`res_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_id` (`res_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `tab` (`table_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_id` (`res_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_menu`
--
ALTER TABLE `order_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acccount_res`
--
ALTER TABLE `acccount_res`
  ADD CONSTRAINT `acccount_res_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`),
  ADD CONSTRAINT `acccount_res_ibfk_2` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `account_role`
--
ALTER TABLE `account_role`
  ADD CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD CONSTRAINT `order_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `order_menu_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_table_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `photo_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `tables_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
