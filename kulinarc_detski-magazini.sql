-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2024 at 07:41 PM
-- Server version: 10.6.12-MariaDB
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kulinarc_detski-magazini`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `master_id` int(11) DEFAULT 0,
  `category_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `master_id`, `category_url`) VALUES
(6, 'Детски играчки', 0, ''),
(7, 'Бебешки стоки', 0, ''),
(8, 'Детски превозни средства', 0, ''),
(9, 'Книги', 0, ''),
(10, 'За ученика', 0, ''),
(11, 'Козметика и аксесоари', 0, ''),
(12, 'Дрехи', 0, ''),
(13, 'Детски оръжия', 6, ''),
(14, 'Дъски, маси и чинове', 6, ''),
(15, 'Интерактивни играчки', 6, ''),
(16, 'Компютри/таблети', 6, ''),
(17, 'Кухни/домакински обзавеждане', 6, ''),
(18, 'На открито', 6, ''),
(19, 'Направи си сам', 6, ''),
(20, 'наука', 6, ''),
(21, 'Професии', 6, ''),
(22, 'Спортни играчки', 6, ''),
(23, 'Транспортни играчки', 6, ''),
(24, 'Костюми  и артикули', 6, ''),
(25, 'LEGO', 6, ''),
(26, 'Обзавеждане на детска стая', 6, ''),
(27, 'Играчки  за предучилищна възраст', 6, ''),
(28, 'Конструктори и мозайки', 6, ''),
(29, 'Кукли', 6, ''),
(30, 'Музикални инструменти', 6, ''),
(31, 'Надуваеми артикули', 6, ''),
(32, 'Игри', 6, ''),
(33, 'Плюшени играчки', 6, ''),
(34, 'Пъзели', 6, ''),
(35, 'Сезонни', 6, ''),
(36, 'Фигурки и роботи', 6, ''),
(37, 'Батерии', 6, ''),
(38, 'Бебешки колички', 7, ''),
(39, 'Столчета за кола', 7, ''),
(40, 'Хранене и кърмене', 7, ''),
(41, 'Продукти за баня и хигиена', 7, ''),
(42, 'Кенгура и раници', 7, ''),
(43, 'шезлонги', 7, ''),
(44, 'Обзавеждане за бебшка стая', 7, ''),
(45, 'Столчета за хранене', 7, ''),
(46, 'Уреди', 7, ''),
(47, 'Бебешки играчки', 7, ''),
(48, 'за прохождане', 7, ''),
(49, 'Люлки', 7, ''),
(50, 'Акумилаторни коли и мотори', 8, ''),
(51, 'Коли мотори с педали', 8, ''),
(52, 'Тротинетки-скутери', 8, ''),
(53, 'Шейни', 8, ''),
(54, 'Велосипеди', 8, ''),
(55, 'Триколки', 8, ''),
(56, 'Ride-on', 8, ''),
(57, 'Колела за баланс', 8, ''),
(58, 'Детски енциклопедии', 9, ''),
(59, 'Книги за майката и бебето', 9, ''),
(60, 'Книжки с игри и стикери', 9, ''),
(61, 'Детски книги', 9, ''),
(62, 'Занимателни книги', 9, ''),
(63, 'Книжки за оцветяване', 9, ''),
(64, 'Образувателни книиги', 9, ''),
(65, 'Ученически аксесоари', 10, ''),
(66, 'Метериали за рисуване и моделиране', 10, ''),
(67, 'Ученически пособия', 10, ''),
(68, 'Раници, чанти и несесери', 10, ''),
(69, 'Слънчеви очила', 11, ''),
(70, 'Козметични аксесоари', 11, ''),
(71, 'Тениски и блузи', 12, ''),
(72, 'Ризи', 12, ''),
(73, 'Дънки, клинове и панталони', 12, ''),
(74, 'Бельо и чорапи', 12, ''),
(75, 'Комплекти за изписване', 12, ''),
(76, 'Пуловери и жилетки', 12, ''),
(77, 'Рокли и поли', 12, ''),
(78, 'Якета и палта', 12, ''),
(79, 'Бански', 12, ''),
(80, 'Спално бельо и комплекти', 12, ''),
(81, 'Активни гимнастики и постелки', 7, ''),
(82, 'Кукли консумативи', 6, ''),
(83, 'Играчки за бебешка количка, кошара', 7, ''),
(84, 'Оцветяване и рисуване', 6, ''),
(85, 'Аксесоари за кошара и количка', 7, ''),
(86, 'Играчки', 6, ''),
(87, 'Разни бебешки', 7, ''),
(88, 'Колички аксеоари', 7, ''),
(89, 'Кошари', 7, ''),
(90, 'Матраци', 7, ''),
(92, 'Залъгалки', 7, ''),
(93, 'Бебешки аксесоари', 7, ''),
(94, 'Бебешки други', 7, ''),
(95, 'Бебефони', 7, ''),
(96, 'Моделиране', 6, ''),
(97, 'Космонавти и гащеризони', 7, ''),
(98, 'Настолни игри', 6, ''),
(99, 'Бодита и ританки', 12, ''),
(100, 'Ролеви игри', 6, ''),
(101, 'Катерушки', 6, ''),
(102, 'Суитчъри', 12, ''),
(103, 'Шапки , ръкавици, шалове', 12, ''),
(104, 'Одеала и спално бельо', 7, ''),
(105, 'Пижами', 7, ''),
(106, 'Бебешко бельо', 7, ''),
(107, 'Бельо', 12, ''),
(108, 'Играчки за момичета', 6, ''),
(109, 'Скейтборди, ролери', 6, ''),
(110, 'Аксесоари за ученика', 10, ''),
(111, 'детски Други', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `checked_products`
--

CREATE TABLE `checked_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `count` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checked_products`
--

INSERT INTO `checked_products` (`id`, `product_id`, `count`) VALUES
(1, '126', '5'),
(2, '5970', '1'),
(3, '935', '1'),
(4, '21192', '1'),
(5, '18920', '1'),
(6, '18586', '1'),
(7, '5529', '1'),
(8, '9389', '1'),
(9, '21430', '1'),
(10, '9381', '3'),
(11, '18319', '1'),
(12, '17065', '1'),
(13, '11813', '1'),
(14, '21891', '1'),
(15, '8748', '1'),
(16, '14354', '1'),
(17, '18930', '1'),
(18, '19878', '1'),
(19, '6052', '1'),
(20, '1', '2'),
(21, '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `script` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `logo`, `url`, `script`) VALUES
(1, 'Хиполенд', 'https://www.hippoland.net/static/version1698646967/frontend/Stenik/blank/bg_BG/images/hippoland-logo.svg', 'https://www.hippoland.net/', 'HippolandDownload'),
(2, 'Комсет', 'https://comsed.net/image/catalog/Logo-and-backgrounds/logo.svg?lastmtime=1612185411', 'https://comsed.net', ''),
(4, 'Toyzz shop', 'https://toyzzshop.bg/static/version1698321081/frontend/Magento/noriel/bg_BG/images/toyzz-logo.svg', 'https://toyzzshop.bg', ''),
(5, 'Вега тойс', 'https://vegatoys.com/media/logo/logo_s.png', 'https://vegatoys.com/', ''),
(6, 'Бонами', 'https://2.bonami.cz/_next/static/media/logo.5869c1cb.svg', 'https://www.bonami.bg/', ''),
(7, 'Toysi', 'https://toysi.bg/userfiles/logo/detski-igracki-atlas081.jpg', 'https://toysi.bg/', ''),
(8, 'Raya toys', 'https://rayatoys.com/static/version1698735707/frontend/Stenik/blank/bg_BG/images/rayatoys.svg', 'https://rayatoys.com/', ''),
(9, 'Kidso', 'https://kidso.bg/img/kidsobg-logo-16201137323.svg', 'https://kidso.bg/', ''),
(10, 'BG хлапета', 'https://bghlapeta.com/image/catalog/logo/logo.png', 'https://bghlapeta.com/', ''),
(11, 'Охо бохо', 'https://ohoboho.com/ohoboho-logo2.svg', 'https://ohoboho.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `client_categories`
--

CREATE TABLE `client_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `client_master_id` int(11) DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `latin_title` text NOT NULL,
  `mapped` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_categories`
--

INSERT INTO `client_categories` (`id`, `client_id`, `title`, `client_master_id`, `master_id`, `link`, `latin_title`, `mapped`) VALUES
(2, 1, 'Nachalo ', NULL, NULL, NULL, 'Nachalo ', 0),
(3, 1, 'Bebeshki stoki', 2, 87, 'https://www.hippoland.net/produkti/bebeshki', 'Bebeshki stoki ', 0),
(4, 1, 'Obzavejdane za detska staia', 3, 26, NULL, 'Obzavejdane za detska staia ', 0),
(5, 1, 'Dyrveni legla', 4, 44, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-krevatcheta-i-koshari/darveni-legla-i-skrinove', 'Dyrveni legla ', 0),
(6, 1, 'Xranene i kyrmene', 3, 40, NULL, 'Xranene i kyrmene ', 0),
(7, 1, 'Aksesoari za kyrmene', 6, 40, 'https://www.hippoland.net/produkti/bebeshki/hranene-i-karmene/aksesoari-karmene', 'Aksesoari za kyrmene ', 0),
(8, 1, 'Stolcheta za kola', 3, 39, NULL, 'Stolcheta za kola ', 0),
(9, 1, 'I - SIZE', 8, 39, 'https://www.hippoland.net/produkti/bebeshki/stolcheta-za-kola/i-size', 'I - SIZE ', 0),
(10, 1, 'Spalno belьo i komplekti', 4, 80, NULL, 'Spalno belьo i komplekti ', 0),
(11, 1, 'Spalni chuvali', 10, 80, NULL, 'Spalni chuvali ', 0),
(12, 1, 'Bebeshki igrachki', 3, 47, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-igrachki', 'Bebeshki igrachki ', 0),
(13, 1, 'Pliusheni igrachki za bebeta', 12, 33, NULL, 'Pliusheni igrachki za bebeta ', 0),
(14, 1, 'Detski igrachki', 2, 86, 'https://www.hippoland.net/produkti/detski-igrachki', 'Detski igrachki ', 0),
(15, 1, 'Konstruktori i mozaiki za deca', 14, 28, 'https://www.hippoland.net/produkti/detski-igrachki/konstruktori-i-mozayki', 'Konstruktori i mozaiki za deca ', 0),
(16, 1, 'Konstruktori', 15, 28, 'https://www.hippoland.net/produkti/detski-igrachki/konstruktori-i-mozayki/konstruktori', 'Konstruktori ', 0),
(17, 1, 'Nauka', 14, 20, NULL, 'Nauka ', 0),
(18, 1, 'Nauchni komplekti', 17, 20, NULL, 'Nauchni komplekti ', 0),
(19, 1, 'Detski drehi ', 2, NULL, 'https://www.hippoland.net/produkti/obleklo', 'Detski drehi ', 0),
(20, 1, 'IAketa i palta', 19, 78, 'https://www.hippoland.net/produkti/obleklo/yaketa-i-palta', 'IAketa i palta ', 0),
(21, 1, 'Dynki, klinove i pantaloni', 19, 73, 'https://www.hippoland.net/produkti/obleklo/danki-klinove-i-pantaloni', 'Dynki, klinove i pantaloni ', 0),
(22, 1, 'Puloveri i jiletki', 19, 76, NULL, 'Puloveri i jiletki ', 0),
(23, 1, 'Teniski i bluzi', 19, 71, NULL, 'Teniski i bluzi ', 0),
(24, 1, 'Interaktivni igrachki', 14, 15, 'https://www.hippoland.net/produkti/detski-igrachki/interaktivni-igrachki', 'Interaktivni igrachki ', 0),
(25, 1, 'Transportni igrachki', 14, 23, NULL, 'Transportni igrachki ', 0),
(26, 1, 'Autobani, pisti i garaji', 25, 23, 'https://www.hippoland.net/produkti/detski-igrachki/transportni-igrachki/autobani-pisti-i-garazhi', 'Autobani, pisti i garaji ', 0),
(27, 1, 'Rokli i poli', 19, 77, NULL, 'Rokli i poli ', 0),
(28, 1, 'R/C Letiashti/Vlakove/Vodni', 25, 23, NULL, 'R/C Letiashti/Vlakove/Vodni ', 0),
(29, 1, 'Figuri i igri', 14, 36, 'https://www.hippoland.net/produkti/detski-igrachki/figuri-i-igri', 'Figuri i igri ', 0),
(30, 1, 'Ekshyn figuri', 29, 36, 'https://www.hippoland.net/produkti/detski-igrachki/figuri-i-igri/ekshan-figuri', 'Ekshyn figuri ', 0),
(31, 1, 'Odeiala', 10, 80, NULL, 'Odeiala ', 0),
(32, 1, 'Aktivni gimnastiki i postelki', 12, 81, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-igrachki/aktivni-gimnastiki-i-postelki', 'Aktivni gimnastiki i postelki ', 0),
(33, 1, 'Kukli', 14, 29, 'https://www.hippoland.net/produkti/detski-igrachki/kukli', 'Kukli ', 0),
(34, 1, 'Kyshti i obzavejdane za kukli', 33, 82, 'https://www.hippoland.net/produkti/detski-igrachki/kukli/kashti-i-obzavezhdane-za-kukli', 'Kyshti i obzavejdane za kukli ', 0),
(35, 1, 'Za prohojdane', 3, 48, NULL, 'Za prohojdane ', 0),
(36, 1, 'Igrachki za prohojdane', 35, 48, 'https://www.hippoland.net/produkti/bebeshki/shezlongi-prohodilki-bandzhita-i-lyulki', 'Igrachki za prohojdane ', 0),
(37, 1, 'Jivotni', 29, 36, 'https://www.hippoland.net/produkti/detski-igrachki/figuri-i-igri/zhivotni', 'Jivotni ', 0),
(38, 1, 'Setove', 10, 36, NULL, 'Setove ', 0),
(39, 1, 'Pribori za hranene', 6, 40, NULL, 'Pribori za hranene ', 0),
(40, 1, 'Aksesoari', 8, 93, NULL, 'Aksesoari ', 0),
(41, 1, 'Stolcheta za hranene', 3, 45, NULL, 'Stolcheta za hranene ', 0),
(42, 1, 'Produkti za bania i higiena', 3, 41, NULL, 'Produkti za bania i higiena ', 0),
(43, 1, 'Vani i stoiki', 42, 41, NULL, 'Vani i stoiki ', 0),
(44, 1, 'Bebeshki kolichki', 3, 38, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki', 'Bebeshki kolichki ', 0),
(45, 1, 'Kombinirani kolichki', 44, 38, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/kombinirani-kolichki', 'Kombinirani kolichki ', 0),
(46, 1, 'Sistemi 2 v 1', 45, 38, NULL, 'Sistemi 2 v 1 ', 0),
(47, 1, 'Kukli sys specialni funkcii', 33, 29, 'https://www.hippoland.net/produkti/detski-igrachki/kukli/kukli-sas-spetsialni-finktsii', 'Kukli sys specialni funkcii ', 0),
(48, 1, 'Gyrneta i aksesoari za bania', 42, 41, 'https://www.hippoland.net/produkti/bebeshki/produkti-za-banya-i-higiena/garneta-i-aksesoari-za-banya', 'Gyrneta i aksesoari za bania ', 0),
(49, 1, 'Modni kukli', 33, 29, NULL, 'Modni kukli ', 0),
(50, 1, 'Uredi', 3, 94, NULL, 'Uredi ', 0),
(51, 1, 'Bebefoni', 50, 95, 'https://www.hippoland.net/produkti/bebeshki/uredi/bebefoni', 'Bebefoni ', 0),
(52, 1, 'Igrachki za bebeshka kolichka, kola, koshara', 12, 83, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-igrachki/igrachki-za-bebeshka-kolichka-kola-koshara', 'Igrachki za bebeshka kolichka, kola, koshara ', 0),
(53, 1, 'Detski prevozni sredstva', 2, 57, 'https://www.hippoland.net/produkti/detski-prevozni-sredstva', 'Detski prevozni sredstva ', 0),
(54, 1, 'Trikolki', 53, 55, NULL, 'Trikolki ', 0),
(55, 1, 'Profesii', 14, 21, NULL, 'Profesii ', 0),
(56, 1, 'Dyski, masi i chinove', 14, 14, 'https://www.hippoland.net/produkti/detski-igrachki/daski-za-pisane-i-magnitni-masi-i-chinove', 'Dyski, masi i chinove ', 0),
(57, 1, 'Napravi si sam', 14, 19, NULL, 'Napravi si sam ', 0),
(58, 1, 'Komplekti za ocvetiavane i risuvane', 57, 84, 'https://www.hippoland.net/produkti/detski-igrachki/napravi-si-sam/komplekti-za-otsvetyavane-i-risuvane', 'Komplekti za ocvetiavane i risuvane ', 0),
(59, 1, 'Igri', 14, 32, 'https://www.hippoland.net/produkti/detski-igrachki/igri', 'Igri ', 0),
(60, 1, 'Obrazovatelni igri', 59, 32, NULL, 'Obrazovatelni igri ', 0),
(61, 1, 'Aksesoari za koshari', 4, 85, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-krevatcheta-i-koshari/aksesoari-za-koshari', 'Aksesoari za koshari ', 0),
(62, 1, 'Butalki i igrachki za dyrpane', 12, 47, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-igrachki/butalki-i-igrachki-za-darpane', 'Butalki i igrachki za dyrpane ', 0),
(63, 1, 'Pliusheni igrachki', 14, 33, NULL, 'Pliusheni igrachki ', 0),
(64, 1, 'Licenzirani', 63, 33, 'https://www.hippoland.net/produkti/detski-igrachki/plyusheni-igrachki/litsenzirani', 'Licenzirani ', 0),
(65, 1, 'Detski oryjiia', 14, 13, 'https://www.hippoland.net/produkti/detski-igrachki/detski-orazhiya', 'Detski oryjiia ', 0),
(66, 1, 'Pushki, pistoleti i avtomati', 65, 13, NULL, 'Pushki, pistoleti i avtomati ', 0),
(67, 1, 'Uredi za prigotviane na hrana', 50, 40, NULL, 'Uredi za prigotviane na hrana ', 0),
(68, 1, 'Komplekti za modelirane', 57, 96, 'https://www.hippoland.net/produkti/detski-igrachki/napravi-si-sam/komplekti-za-modelirane', 'Komplekti za modelirane ', 0),
(69, 1, 'Sterilizatori', 50, 40, NULL, 'Sterilizatori ', 0),
(70, 1, 'Sezonni', 14, 86, NULL, 'Sezonni ', 0),
(71, 1, 'Sapuneni baloni', 70, 86, NULL, 'Sapuneni baloni ', 0),
(72, 1, 'Kolichki s transformirasht se kosh', 45, 38, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/kombinirani-kolichki/kolichki-s-transformirasht-se-kosh', 'Kolichki s transformirasht se kosh ', 0),
(73, 1, 'Liulki', 3, 49, NULL, 'Liulki ', 0),
(74, 1, 'Grupa 2/3 (15-36 kg.) sedalki', 8, 39, 'https://www.hippoland.net/produkti/bebeshki/stolcheta-za-kola/grupa-2-3-15-35-sedalki', 'Grupa 2/3 (15-36 kg.) sedalki ', 0),
(75, 1, 'B/O Transportni igrachki', 25, 23, 'https://www.hippoland.net/produkti/detski-igrachki/transportni-igrachki/b-o-transportni-igrachki', 'B/O Transportni igrachki ', 0),
(76, 1, 'Plastmasovi igrachki', 12, 86, NULL, 'Plastmasovi igrachki ', 0),
(77, 1, 'Kozmetichni komplekti i aksesoari', 2, 70, NULL, 'Kozmetichni komplekti i aksesoari ', 0),
(78, 1, 'Za uchenika', 2, 65, NULL, 'Za uchenika ', 0),
(79, 1, 'Materiali za risuvane i modelirane', 78, 66, NULL, 'Materiali za risuvane i modelirane ', 0),
(80, 1, 'Ranici, chanti i neseseri', 78, 68, NULL, 'Ranici, chanti i neseseri ', 0),
(81, 1, 'Knigi', 2, 61, 'https://www.hippoland.net/produkti/knigi', 'Knigi ', 0),
(82, 1, 'Knijki za ocvetiavane', 81, 63, 'https://www.hippoland.net/produkti/knigi/knizhki-za-otsvetyavane', 'Knijki za ocvetiavane ', 0),
(83, 1, 'Zanimatelni i systezatelni igri', 59, 32, NULL, 'Zanimatelni i systezatelni igri ', 0),
(84, 1, 'LEGO', 14, 25, 'https://www.hippoland.net/lego', 'LEGO ', 0),
(85, 1, 'Pyzeli', 14, 34, NULL, 'Pyzeli ', 0),
(86, 1, 'Prohodilki', 35, 48, NULL, 'Prohodilki ', 0),
(87, 1, 'R/C Koli/Djipove/Motori', 25, 23, NULL, 'R/C Koli/Djipove/Motori ', 0),
(88, 1, 'Kengura i ranici', 3, 42, 'https://www.hippoland.net/produkti/bebeshki/prisposobleniya-za-nosene-na-bebe', 'Kengura i ranici ', 0),
(89, 1, 'SHezlongi', 3, 43, NULL, 'SHezlongi ', 0),
(90, 1, 'Aksesoari za kolichki', 44, 88, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/aksesoari-za-kolichki', 'Aksesoari za kolichki ', 0),
(91, 1, 'CHuvalcheta za kolichki', 90, 88, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/aksesoari-za-kolichki/chuvalcheta-za-kolichki', 'CHuvalcheta za kolichki ', 0),
(92, 1, 'SHisheta', 6, 40, NULL, 'SHisheta ', 0),
(93, 1, 'Xigienni produkti', 6, 41, NULL, 'Xigienni produkti ', 0),
(94, 1, 'Pompi za kyrma', 6, 40, NULL, 'Pompi za kyrma ', 0),
(95, 1, 'Xigienni aksesoari', 42, 41, NULL, 'Xigienni aksesoari ', 0),
(96, 1, 'Koshari', 4, 89, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-krevatcheta-i-koshari/koshari', 'Koshari ', 0),
(97, 1, 'Mini koshari', 96, 89, NULL, 'Mini koshari ', 0),
(98, 1, 'Dve niva', 96, 89, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-krevatcheta-i-koshari/koshari/dve-niva', 'Dve niva ', 0),
(99, 1, 'Matraci', 4, 90, NULL, 'Matraci ', 0),
(100, 1, '60 x 120', 99, 90, NULL, '60 x 120 ', 0),
(101, 1, 'Muzikalni igrachki', 12, 30, NULL, 'Muzikalni igrachki ', 0),
(102, 1, 'Novo ', 2, NULL, NULL, 'Novo ', 0),
(103, 1, 'Dyjdobrani i mreji protiv komari', 90, 85, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/aksesoari-za-kolichki/dazhdobrani-i-mrezhi-protiv-komari', 'Dyjdobrani i mreji protiv komari ', 0),
(104, 1, 'CHanti', 90, 68, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-kolichki/aksesoari-za-kolichki/chanti', 'CHanti ', 0),
(105, 1, 'Akumulatorni koli i motori', 53, 50, 'https://www.hippoland.net/produkti/detski-prevozni-sredstva/akumulatorni-koli-i-motori', 'Akumulatorni koli i motori ', 0),
(106, 1, 'Igrachki za preduchilishtna vyzrast', 14, 27, 'https://www.hippoland.net/produkti/detski-igrachki/igrachki-za-detsa-preduchilistna-vazrast', 'Igrachki za preduchilishtna vyzrast ', 0),
(107, 1, 'Zalygalki', 6, 92, NULL, 'Zalygalki ', 0),
(108, 1, NULL, 6, 40, 'https://www.hippoland.net/produkti/bebeshki/hranene-i-karmene/chashi', 'CHashi ', 0),
(109, 1, NULL, 12, 47, 'https://www.hippoland.net/produkti/bebeshki/bebeshki-igrachki/drankalki', 'Drynkalki ', 0),
(110, 1, NULL, 57, 19, 'https://www.hippoland.net/produkti/detski-igrachki/napravi-si-sam/bizhuta-i-aksesoari', 'Bijuta i aksesoari ', 0),
(111, 5, NULL, 14, 18, NULL, 'Naduvaemi artikuli ', 0),
(112, 5, NULL, 57, 28, NULL, 'Komplekti za sglobiavane ', 0),
(113, 5, NULL, 29, 36, NULL, 'Komplekti ', 0),
(114, 5, NULL, 59, 98, NULL, 'Igri s karti ', 0),
(115, 5, NULL, 33, 82, NULL, 'Kolichki za kukli ', 0),
(116, 5, NULL, 45, 38, NULL, 'Modulni kolichki i shasita ', 0),
(117, 5, NULL, 19, 74, NULL, 'Belьo i chorapi ', 0),
(118, 5, NULL, 90, 85, NULL, 'Komplekti i podlojki za kolichki ', 0),
(119, 5, NULL, 53, 52, NULL, 'Trotinetki - skuteri ', 0),
(120, 5, NULL, 53, 57, NULL, 'Kolela za balans ', 0),
(121, 5, NULL, 14, 18, NULL, 'Na otkrito ', 0),
(122, 5, NULL, 121, 18, NULL, 'Batuti ', 0),
(123, 5, NULL, 15, 28, NULL, 'Mozaiki ', 0),
(124, 5, NULL, 85, 34, NULL, 'Pyzeli do 500 chasti ', 0),
(125, 5, NULL, 33, 82, NULL, 'Aksesoari za kukli ', 0),
(126, 5, NULL, 12, 41, NULL, 'Igrachki za bania ', 0),
(127, 5, NULL, 25, 23, NULL, 'Transportni igrachki bez baterii ', 0),
(128, 5, NULL, 29, 36, NULL, 'Roboti/Transformyri ', 0),
(129, 5, NULL, 4, 26, NULL, 'Masi i stolcheta ', 0),
(130, 5, NULL, 14, 22, NULL, 'Sportni igrachki ', 0),
(131, 5, NULL, 130, 22, NULL, 'Sportni komplekti i aksesoari ', 0),
(132, 5, NULL, 45, 38, NULL, 'Sistemi 3 v 1 ', 0),
(133, 5, NULL, 53, 56, NULL, 'Ride-on ', 0),
(134, 5, NULL, 25, 23, NULL, 'Die cast ', 0),
(135, 5, NULL, 19, 72, NULL, 'Rizi ', 0),
(136, 5, NULL, 14, 24, NULL, 'Karnavalni kostiumi i artikuli ', 0),
(137, 5, NULL, 85, 34, NULL, 'Pyzeli nad 500 chasti ', 0),
(138, 5, NULL, 14, 17, NULL, 'Kuhni i domakinsko obzavejdane ', 0),
(139, 5, NULL, 138, 17, NULL, 'Detski domakinski uredi ', 0),
(140, 5, NULL, 59, 32, NULL, 'Fokusi ', 0),
(141, 5, NULL, 8, 39, NULL, 'Grupa 0 (0-13 kg.) ', 0),
(142, 5, NULL, 44, 38, NULL, 'Letni kolichki ', 0),
(143, 5, NULL, 8, 39, NULL, 'Grupa 1/2/3 (9-36 kg.) ', 0),
(144, 5, NULL, 4, 26, NULL, 'Vyzglavnici ', 0),
(145, 5, NULL, 8, 39, NULL, 'Grupa 0+/1/2/3 (0-36 kg.) ', 0),
(146, 5, NULL, 4, 26, NULL, 'Etajerki i organaizeri ', 0),
(147, 5, NULL, 4, 26, NULL, 'Skrinove i garderobi ', 0),
(148, 5, NULL, 80, 68, NULL, 'Ranici i chanti ', 0),
(149, 5, NULL, 78, 67, NULL, 'Uchenicheski posobiia ', 0),
(150, 5, NULL, 14, 27, NULL, 'Kompiutri / Tableti ', 0),
(151, 5, NULL, 4, 26, NULL, 'Koshari za igra ', 0),
(152, 5, NULL, 80, 68, NULL, 'Neseseri ', 0),
(153, 5, NULL, 33, 29, NULL, 'Mini kukli ', 0),
(154, 5, NULL, 81, 62, NULL, 'Zanimatelni knigi ', 0),
(155, 5, NULL, 81, 60, NULL, 'Knijki s igri i stikeri ', 0),
(156, 5, NULL, 81, 58, NULL, 'Detski enciklopedii ', 0),
(157, 5, NULL, 6, 40, NULL, 'Ligavnici ', 0),
(158, 5, NULL, 14, 30, NULL, 'Muzikalni instrumenti ', 0),
(159, 5, NULL, 130, 22, NULL, 'Roleri i kynki ', 0),
(160, 5, NULL, 53, 54, NULL, 'Velosipedi ', 0),
(161, 5, NULL, 63, 33, NULL, 'Standartni ', 0),
(162, 5, NULL, 50, 46, NULL, 'Uredi za bezopasnost na bebeto ', 0),
(163, 5, NULL, 12, 92, NULL, 'Grizalki i chesalki ', 0),
(164, 5, NULL, 130, 22, NULL, 'Topki ', 0),
(165, 5, NULL, 96, 89, NULL, 'Edno nivo ', 0),
(166, 5, NULL, 6, 40, NULL, 'Biberoni ', 0),
(167, 5, NULL, 70, 18, NULL, 'Kofichki i aksesoari za plaj ', 0),
(168, 5, NULL, 15, 28, NULL, 'Konstruktori za nai-malkite ', 0),
(169, 5, NULL, 8, 39, NULL, 'Grupa 0/1/2 (0-25 kg.) ', 0),
(170, 5, NULL, 121, 18, NULL, 'Drugi ', 0),
(171, 5, NULL, 85, 34, NULL, '3D pyzeli ', 0),
(172, 1, NULL, 2, NULL, NULL, 'Meniu produkti ', 0),
(173, 5, NULL, 12, 47, NULL, 'Dyrveni igrachki ', 0),
(174, 5, NULL, 8, 39, NULL, 'S izofiks (ISOFIX) ', 0),
(175, 5, NULL, 44, 38, NULL, 'Kolichki za bliznaci ', 0),
(176, 5, NULL, 35, 48, NULL, 'Kolani za prohojdane ', 0),
(177, 5, NULL, 65, 13, NULL, 'Vodni oryjiia ', 0),
(178, 5, NULL, 42, 41, NULL, 'Podlojki ', 0),
(179, 5, NULL, 130, 22, NULL, 'Skeitbord ', 0),
(180, 5, NULL, 85, 34, NULL, 'Pyzeli i kubcheta za deca 1-3g. ', 0),
(181, 5, NULL, 111, 18, NULL, 'Poiasi/Jiletki/Rykaveli ', 0),
(182, 5, NULL, 111, 18, NULL, 'Lodki ', 0),
(183, 5, NULL, 121, 18, NULL, 'Kyshti ', 0),
(184, 1, NULL, 138, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/kuhni-i-domakinsko-obzavejdane', 'Kuhni i kuhnensko obzavejdane ', 0),
(185, 1, NULL, 14, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/detski-stolcheta-i-masichki', 'Detski stolcheta i masichki ', 0),
(186, 1, NULL, 35, NULL, NULL, 'Byndjita ', 0),
(187, 1, NULL, 42, NULL, 'https://www.hippoland.net/produkti/bebeshki/produkti-za-banya-i-higiena/kozmetichni-produkti', 'Kozmetichni i sezonni produkti ', 0),
(188, 1, NULL, 4, NULL, NULL, 'Protektori ', 0),
(189, 1, NULL, 81, NULL, 'https://www.hippoland.net/produkti/knigi/knigi-za-maykata-i-bebeto', 'Knigi za maikata i bebeto ', 0),
(190, 1, NULL, 81, NULL, NULL, 'Obrazovatelni knigi ', 0),
(191, 1, NULL, 50, NULL, NULL, 'Termometri ', 0),
(192, 1, NULL, 111, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/naduvaemi-artikuli/dyushetsi', 'Diusheci ', 0),
(193, 1, NULL, 85, NULL, NULL, 'Meki pyzeli ', 0),
(194, 1, NULL, 81, NULL, 'https://www.hippoland.net/produkti/knigi/hudozhestvena-literatura', 'Detski knigi ', 0),
(195, 1, NULL, 50, NULL, NULL, 'Ovlajnitel za vyzduh ', 0),
(196, 1, NULL, 53, NULL, 'https://www.hippoland.net/produkti/detski-prevozni-sredstva/koli-i-motori-s-pedali', 'Koli i motori s pedali ', 0),
(197, 1, NULL, 121, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/na-otkrito-lulki-parzalni-kasti/detski-tsentrove', 'Detski centrove ', 0),
(198, 1, NULL, 65, NULL, NULL, 'SHpionsko oborudvane ', 0),
(199, 1, NULL, 111, NULL, NULL, 'Pompi ', 0),
(200, 1, NULL, 99, NULL, NULL, '70 x 140 ', 0),
(201, 1, NULL, 15, NULL, NULL, 'Metalni konstruktori ', 0),
(202, 1, NULL, 15, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/konstruktori-i-mozayki/darveni-konstruktori', 'Dyrveni konstruktori ', 0),
(203, 1, NULL, 121, NULL, NULL, 'Pyrzalki ', 0),
(204, 1, NULL, 77, NULL, NULL, 'Slynchevi ochila ', 0),
(205, 1, NULL, 19, NULL, 'https://www.hippoland.net/produkti/obleklo/komplekti-za-izpisvane', 'Komplekti za izpisvane ', 0),
(206, 7, NULL, 14, 36, NULL, 'DETSKI ROBOTI', 0),
(207, 7, NULL, 14, 23, NULL, 'DETSKI KOLI', 0),
(208, 7, NULL, 207, 23, NULL, 'AVTOMOBILI, DJIPOVE, KAMIONI, MOTOCIKLETI', 0),
(209, 7, NULL, 14, 15, NULL, 'ZANIMATELNI IGRACHKI', 0),
(210, 7, NULL, 14, 29, NULL, 'KUKLI I AKSESOARI', 0),
(211, 7, NULL, 210, 108, NULL, 'DETSKI GRIMOVE', 0),
(212, 7, NULL, 14, 0, NULL, 'OBRAZOVATELNI IGRACHKI', 0),
(213, 7, NULL, 14, NULL, NULL, 'IGRACHKI NA BYLGARSKI EZIK', 0),
(214, 7, NULL, 2, NULL, NULL, 'PROMOCIIA', 0),
(215, 7, NULL, 14, 66, NULL, 'KOMPLEKTI ZA RISUVANE', 0),
(216, 7, NULL, 207, 23, NULL, 'METALNI KOLICHKI', 0),
(217, 7, NULL, 14, 36, NULL, 'FIGURKI I DETSKI GEROI', 0),
(218, 7, NULL, 2, NULL, NULL, 'DETSKI IGRI', 0),
(219, 7, NULL, 207, 23, NULL, 'KOLICHKI S DISTANCIONNO', 0),
(220, 7, NULL, 218, 98, NULL, 'NASTOLNI IGRI', 0),
(221, 7, NULL, 207, 23, NULL, 'PARKINGI I GARAJI', 0),
(222, 7, NULL, 2, 18, NULL, 'IGRACHKI NA OTKRITO', 0),
(223, 7, NULL, 222, 57, NULL, 'BALANS KOLELA', 0),
(224, 7, NULL, 2, 36, NULL, 'GEROI', 0),
(225, 7, NULL, 224, 36, NULL, 'Trolls', 0),
(226, 7, NULL, 224, NULL, NULL, 'Super Wings', 0),
(227, 7, NULL, 2, NULL, NULL, 'ZA DETETO  ', 0),
(228, 7, NULL, 227, 69, NULL, 'DETSKI SLYNCHEVI OCHILA', 0),
(229, 7, NULL, 224, NULL, NULL, 'PAW Patrol', 0),
(230, 7, NULL, 224, NULL, NULL, 'Peppa Pig', 0),
(231, 1, NULL, 14, NULL, 'https://www.hippoland.net/produkti/detski-igrachki/baterii', 'Baterii ', 0),
(232, 7, NULL, 224, NULL, NULL, 'Soy Luna', 0),
(233, 7, NULL, 222, 109, NULL, 'ROLERI', 0),
(234, 7, NULL, 224, NULL, NULL, 'Miraculous', 0),
(235, 7, NULL, 14, 18, NULL, 'DETSKI POIASI', 0),
(236, 1, NULL, 111, NULL, NULL, 'Naduvaemi igralni centrove ', 0),
(237, 7, NULL, 218, 18, NULL, 'IGRI SPORTNI ', 0),
(238, 1, NULL, 121, NULL, NULL, 'Piasychnici ', 0),
(239, 5, NULL, 2, NULL, NULL, 'Produkti', 0),
(240, 5, NULL, 239, 23, NULL, 'Komplekti za momcheta', 0),
(241, 5, NULL, 239, 108, NULL, 'Komplekti detski igrachki za momicheta', 0),
(242, 5, NULL, 239, 68, NULL, 'Detski ranici i chanti', 0),
(243, 5, NULL, 239, 23, NULL, 'Avtomobili, motori, djipove,  kamioni', 0),
(244, 5, NULL, 239, 24, NULL, 'Teatralni kostiumi', 0),
(245, 5, NULL, 239, 109, NULL, 'Skeitbordove, roleri, hovyrbordi', 0),
(246, 5, NULL, 239, 23, NULL, 'Radioupravliaemi igrachki', 0),
(247, 5, NULL, 239, 18, NULL, 'Plajni artikuli', 0),
(248, 5, NULL, 239, 47, NULL, 'Bebeshki artikuli', 0),
(249, 5, NULL, 239, 23, NULL, 'Vlakove i lokomotivi', 0),
(250, 5, NULL, 239, 52, NULL, 'Trotinetki', 0),
(251, 5, NULL, 239, 110, NULL, 'Torbichki za podaryk, podarychni hartii', 0),
(252, 5, NULL, 239, 23, NULL, 'Stroitelni i zemedelski mashini', 0),
(253, 5, NULL, 239, 23, NULL, 'Samoleti i helikopteri', 0),
(254, 5, NULL, 239, 13, NULL, 'Oryjiia', 0),
(255, 5, NULL, 239, 15, NULL, 'Logicheski igri', 0),
(256, 5, NULL, 239, 50, NULL, 'Krakomobili, krakomotori, akumulatorni koli i motori', 0),
(257, 5, NULL, 239, 26, NULL, 'Detski masi, stolcheta i taburetki', 0),
(258, 5, NULL, 239, 54, NULL, 'Detski kolela', 0),
(259, 5, NULL, 239, 110, NULL, 'Pozdravitelni kartichki', 0),
(260, 260, NULL, 14, 50, NULL, 'Geroi ot filmi', 0),
(261, 2, 'Zabavni igrachki', 14, 86, NULL, 'Zabavni igrachki', 0),
(262, 5, NULL, 239, 15, NULL, 'Risuvatelni igri', 0),
(263, 2, 'Strategicheski igri', 14, 15, NULL, 'Strategicheski igri', 0),
(264, 2, 'Aksesoari za momicheta', 14, 108, NULL, 'Aksesoari za momicheta', 0),
(265, 2, 'Kukli filmovi geroi', 14, 29, NULL, 'Kukli filmovi geroi', 0),
(266, 2, 'Rolevi igri', 14, 47, NULL, 'Rolevi igri', 0),
(267, 2, 'Kuhnia, domakinstvo', 14, 17, NULL, 'Kuhnia, domakinstvo', 0),
(268, 2, 'Za iazdene i butane', 14, 56, NULL, 'Za iazdene i butane', 0),
(269, 2, 'Katerushki i dr. za dvora', NULL, 18, NULL, 'Katerushki i dr. za dvora', 0),
(270, 2, 'Palatki', 269, 18, NULL, 'Palatki', 0),
(271, 2, 'Za sglobiavane', 14, 28, NULL, 'Za sglobiavane', 0),
(272, 2, 'Risuvane i ocvetiavane', 14, 66, NULL, 'Risuvane i ocvetiavane', 0),
(273, 2, 'Tatuirovki', 14, 66, NULL, 'Tatuirovki', 0),
(274, 2, 'Zabavni igri', 14, 98, NULL, 'Zabavni igri', 0),
(275, 2, 'Detski pyzeli', 14, 34, NULL, 'Detski pyzeli', 0),
(276, 2, 'Memori', 14, 98, NULL, 'Memori', 0),
(277, 2, 'Modelirane', 14, 66, NULL, 'Modelirane', 0),
(278, 2, 'Aplikacii', 14, 66, NULL, 'Aplikacii', 0),
(279, 2, 'Kukli bebeta', 14, 29, NULL, 'Kukli bebeta', 0),
(280, 2, 'Posobiia', 78, NULL, NULL, 'Posobiia', 0),
(281, 2, 'Koli, kamioni, komplekti', 14, 23, NULL, 'Koli, kamioni, komplekti', 0),
(282, 2, 'Vlakcheta', 14, 23, NULL, 'Vlakcheta', 0),
(283, 5, NULL, 239, 18, NULL, 'Sportni igri', 0),
(284, 2, 'Detski drehi i obuvki', NULL, 0, NULL, 'Detski drehi i obuvki', 0),
(285, 2, 'Pantaloni i klinove', 284, 73, NULL, 'Pantaloni i klinove', 0),
(286, 2, 'Teniski', 284, 71, NULL, 'Teniski', 0),
(287, 2, 'IAketa', 284, 78, NULL, 'IAketa', 0),
(288, 2, 'Bluzi', 284, 71, NULL, 'Bluzi', 0),
(289, 2, 'Rokli', 284, 77, NULL, 'Rokli', 0),
(290, 2, 'Suitshyrti', 284, 102, NULL, 'Suitshyrti', 0),
(291, 2, 'Dynki', 284, 73, NULL, 'Dynki', 0),
(292, 2, 'Puloveri', 284, 76, NULL, 'Puloveri', 0),
(293, 2, 'Poli', 284, 77, NULL, 'Poli', 0),
(294, 2, 'SHapki, rykavici i shalove', 284, 103, NULL, 'SHapki, rykavici i shalove', 0),
(295, 2, 'Elecheta', 284, 76, NULL, 'Elecheta', 0),
(296, 2, 'Jiletki', 284, 76, NULL, 'Jiletki', 0),
(297, 2, 'Palta', 284, 78, NULL, 'Palta', 0),
(298, 2, 'Za bebeto i maikata', NULL, NULL, NULL, 'Za bebeto i maikata', 0),
(299, 2, 'Ligavnici i kyrpi', 298, 40, NULL, 'Ligavnici i kyrpi', 0),
(300, 2, 'Detski odeiala', 298, 104, NULL, 'Detski odeiala', 0),
(301, 2, 'Ritanki', 284, 99, NULL, 'Ritanki', 0),
(302, 2, 'Bodita', 284, 99, NULL, 'Bodita', 0),
(303, 2, 'Gashterizoni', 284, 97, NULL, 'Gashterizoni', 0),
(304, 2, 'Pijami', 284, 105, NULL, 'Pijami', 0),
(305, 2, 'Eskimosi', 284, 97, NULL, 'Eskimosi', 0),
(306, 2, 'CHorapi', 284, 107, NULL, 'CHorapi', 0),
(307, 2, 'Peleni', 298, 106, NULL, 'Peleni', 0),
(308, 2, 'CHorapogashtnici', 284, 107, NULL, 'CHorapogashtnici', 0),
(309, 5, NULL, 239, 36, NULL, 'Transformeri i roboti', 0),
(310, 2, 'Nakiti', 14, 108, NULL, 'Nakiti', 0),
(311, 2, 'Koli s RU', 14, 23, NULL, 'Koli s RU', 0),
(312, 2, 'Mynista i mozaiki', 14, 66, NULL, 'Mynista i mozaiki', 0),
(313, 2, 'SHah, tabla, domino', 14, 98, NULL, 'SHah, tabla, domino', 0),
(314, 2, 'Samoleti, dronove i dr.', 14, 23, NULL, 'Samoleti, dronove i dr.', 0),
(315, 2, 'Roboti s RU', 14, 23, NULL, 'Roboti s RU', 0),
(316, 2, 'Drugi s RU', 14, 23, NULL, 'Drugi s RU', 0),
(317, 2, 'Xelikopteri s RU', 14, 23, NULL, 'Xelikopteri s RU', 0),
(318, 2, 'Kengura i slingove', 298, 42, NULL, 'Kengura i slingove', 0),
(319, 2, 'Legla i koshari', 298, 89, NULL, 'Legla i koshari', 0),
(320, 2, 'Drugi aksesoari', 298, 26, NULL, 'Drugi aksesoari', 0),
(321, 2, 'Stolcheta gr. 0+ (0 - 13kg)', 298, 39, NULL, 'Stolcheta gr. 0+ (0 - 13kg)', 0),
(322, 2, 'Stolcheta gr. 0/1/2 (0 - 25kg)', 298, 39, NULL, 'Stolcheta gr. 0/1/2 (0 - 25kg)', 0),
(323, 2, 'Vyzglavnici za kyrmene', 298, 40, NULL, 'Vyzglavnici za kyrmene', 0),
(324, 2, 'Stolcheta gr. 0/1/2/3 (0 - 36kg)', 298, 39, NULL, 'Stolcheta gr. 0/1/2/3 (0 - 36kg)', 0),
(325, 2, 'Liulki i shezlongi', 298, 43, NULL, 'Liulki i shezlongi', 0),
(326, 2, 'Stolcheta gr. 2/3 (15 - 36kg)', 298, 39, NULL, 'Stolcheta gr. 2/3 (15 - 36kg)', 0),
(327, 2, 'Spalni komplekti', 298, 104, NULL, 'Spalni komplekti', 0),
(328, 2, 'CHadyri i sennici', 298, NULL, NULL, 'CHadyri i sennici', 0),
(329, 2, 'Stolcheta gr. 1/2/3 (9 - 36kg)', 298, 39, NULL, 'Stolcheta gr. 1/2/3 (9 - 36kg)', 0),
(330, 2, 'Aksesoari za stolcheta', 298, 39, NULL, 'Aksesoari za stolcheta', 0),
(331, 2, 'Bebeshki vani i stoiki', 298, 41, NULL, 'Bebeshki vani i stoiki', 0),
(332, 2, 'Dyjdobrani i komarnici', 298, 85, NULL, 'Dyjdobrani i komarnici', 0),
(333, 2, 'Reduktori za toaletna', 298, 41, NULL, 'Reduktori za toaletna', 0),
(334, 2, 'Meki igrachki', 12, 47, NULL, 'Meki igrachki', 0),
(335, 2, 'Drynkalki i chesalki', 12, 92, NULL, 'Drynkalki i chesalki', 0),
(336, 2, 'Igrachki za kolichka', 12, 85, NULL, 'Igrachki za kolichka', 0),
(337, 2, 'Blasteri, nyrfove', 14, 13, NULL, 'Blasteri, nyrfove', 0),
(338, 2, 'Maski na geroi', 14, 24, NULL, 'Maski na geroi', 0),
(339, 2, 'Aksesoari za bania', 298, 41, NULL, 'Aksesoari za bania', 0),
(340, 2, 'Podlojki za kypane', 298, 41, NULL, 'Podlojki za kypane', 0),
(341, 2, 'Gyrneta', 298, 41, NULL, 'Gyrneta', 0),
(342, 2, 'Podlojki za povivane', 298, 41, NULL, 'Podlojki za povivane', 0),
(343, 2, 'Aktivni gimnastiki i kilimcheta', 12, 81, NULL, 'Aktivni gimnastiki i kilimcheta', 0),
(344, 2, 'Detski trikolki', 298, 55, NULL, 'Detski trikolki', 0),
(345, 2, 'Pompi za kyrma i aksesoari', 298, 40, NULL, 'Pompi za kyrma i aksesoari', 0),
(346, 2, 'Predpazni aksesoari', 298, 85, NULL, 'Predpazni aksesoari', 0),
(347, 2, 'Matracheta', 298, 90, NULL, 'Matracheta', 0),
(348, 2, 'CHarshafi i kalyfki', 298, 104, NULL, 'CHarshafi i kalyfki', 0),
(349, 2, 'Neseseri i portmoneta', 78, 65, NULL, 'Neseseri i portmoneta', 0),
(350, 2, 'Kyshti, masichki i stolcheta', 269, 26, NULL, 'Kyshti, masichki i stolcheta', 0),
(351, 2, 'Igri s karti i zarove', 14, 98, NULL, 'Igri s karti i zarove', 0),
(352, 2, 'Zalygalki i grizalki', 12, 92, NULL, 'Zalygalki i grizalki', 0),
(353, 2, 'SHiene, pletene, brodirane', 14, 66, NULL, 'SHiene, pletene, brodirane', 0),
(354, 2, 'Razkazi', NULL, 61, NULL, 'Razkazi', 0),
(355, 2, 'Prikazki i legendi', NULL, 61, NULL, 'Prikazki i legendi', 0),
(356, 2, 'Romani za deca', NULL, 61, NULL, 'Romani za deca', 0),
(357, 2, 'Za igra s piasyk', 14, 18, NULL, 'Za igra s piasyk', 0),
(358, 2, 'Voleibolni topki', NULL, 18, NULL, 'Voleibolni topki', 0),
(359, 2, 'Futbolni topki', NULL, 18, NULL, 'Futbolni topki', 0),
(360, 2, 'Zabavni topki', NULL, 18, NULL, 'Zabavni topki', 0),
(361, 2, 'Buiki', 284, 29, NULL, 'Buiki', 0),
(362, 2, 'Bebeshki havlii', 298, 104, NULL, 'Bebeshki havlii', 0),
(363, 2, 'Vyzglavnichki', 298, 104, NULL, 'Vyzglavnichki', 0),
(364, 2, 'Detski velosipedi', NULL, 54, NULL, 'Detski velosipedi', 0),
(365, 2, 'CHanti za prinadlejnosti', 298, 85, NULL, 'CHanti za prinadlejnosti', 0),
(366, 2, 'Za karane s akumulator', 14, 50, NULL, 'Za karane s akumulator', 0),
(367, 2, 'Centrove za igra', 14, 31, NULL, 'Centrove za igra', 0),
(368, 2, 'Otlivki i otpechatyci', 14, 96, NULL, 'Otlivki i otpechatyci', 0),
(369, 2, 'Mashini za lakomstva', 14, 96, NULL, 'Mashini za lakomstva', 0),
(370, 1, NULL, 8, NULL, 'https://www.hippoland.net/produkti/bebeshki/stolcheta-za-kola/grupa-0-1-0-18kg', 'Grupa 0+/1 (0-18kg.) ', 0),
(371, 2, 'Stolcheta gr. 0/1 (0 - 18kg)', 298, 39, NULL, 'Stolcheta gr. 0/1 (0 - 18kg)', 0),
(372, 2, 'Kupichki i chinii', 298, 40, NULL, 'Kupichki i chinii', 0),
(373, 2, 'Drugi uredi i aksesoari', 298, 46, NULL, 'Drugi uredi i aksesoari', 0),
(374, 2, 'Predpazni sredstva', 14, 54, NULL, 'Predpazni sredstva', 0),
(375, 2, 'Lodki za sport', NULL, 23, NULL, 'Lodki za sport', 0),
(376, 2, 'Naduvaemi mebeli', NULL, 31, NULL, 'Naduvaemi mebeli', 0),
(377, 2, 'Pompi za naduvaemi', 376, 31, NULL, 'Pompi za naduvaemi', 0),
(378, 2, 'Taburetki, fotьoili i divani', 376, 44, NULL, 'Taburetki, fotьoili i divani', 0),
(379, 2, 'Naduvaemi legla i matraci', 376, 31, NULL, 'Naduvaemi legla i matraci', 0),
(380, 2, 'Plajni diusheci', NULL, 31, NULL, 'Plajni diusheci', 0),
(381, 2, 'Baseini i djakuzita', NULL, 18, NULL, 'Baseini i djakuzita', 0),
(382, 2, 'Naduvaemi baseini', 381, 31, NULL, 'Naduvaemi baseini', 0),
(383, 2, 'Naduvaemi ostrovi', NULL, 31, NULL, 'Naduvaemi ostrovi', 0),
(384, 2, 'Naduvaemi ramenki i jiletki', NULL, 31, NULL, 'Naduvaemi ramenki i jiletki', 0),
(385, 2, 'Naduvaemi poiasi', NULL, 31, NULL, 'Naduvaemi poiasi', 0),
(386, 2, 'SHnorheli, maski i plavnici', NULL, 18, NULL, 'SHnorheli, maski i plavnici', 0),
(387, 2, 'Za karane s pedali', 14, 55, NULL, 'Za karane s pedali', 0),
(388, 2, 'Katerushki i pyrzalki', 269, 18, NULL, 'Katerushki i pyrzalki', 0),
(389, 1, NULL, 85, NULL, NULL, 'Sveteshti pyzeli ', 0),
(390, 1, NULL, 8, NULL, 'https://www.hippoland.net/produkti/bebeshki/stolcheta-za-kola/grupa-9-36-kg', 'Grupa 1 (9-18 kg.) ', 0),
(391, 1, NULL, 50, NULL, 'https://www.hippoland.net/produkti/bebeshki/uredi/kantarcheta', 'Kantarcheta ', 0),
(392, 2, 'Kategoriia:', NULL, NULL, NULL, 'Kategoriia:', 0),
(393, 2, 'Vid:', 392, NULL, NULL, 'Vid:', 0),
(394, 5, '</i> <a href=\"https://vegatoys.com/bg/index.html\" rel=\"home\">Nachalo', NULL, NULL, NULL, '</i> <a href=\"https://vegatoys.com/bg/index.html\" rel=\"home\">Nachalo', 0),
(395, 5, '<span class=\"seria-all\">Dyrveni igrachki', 239, NULL, NULL, '<span class=\"seria-all\">Dyrveni igrachki', 0),
(396, 5, '<span class=\"seria-all\">Vlakove i lokomotivi', 239, NULL, NULL, '<span class=\"seria-all\">Vlakove i lokomotivi', 0),
(397, 7, 'PROMOCII', 2, NULL, NULL, 'PROMOCII', 0),
(398, 5, '<span class=\"seria-all\">Trotinetki', 239, NULL, NULL, '<span class=\"seria-all\">Trotinetki', 0),
(399, 5, '<span class=\"seria-all\">Torbichki za podaryk, podarychni hartii', 239, NULL, NULL, '<span class=\"seria-all\">Torbichki za podaryk, podarychni hartii', 0),
(400, 5, '<span class=\"seria-all\">Stroitelni i zemedelski mashini', 239, NULL, NULL, '<span class=\"seria-all\">Stroitelni i zemedelski mashini', 0),
(401, 5, '<span class=\"seria-all\">Samoleti i helikopteri', 239, NULL, NULL, '<span class=\"seria-all\">Samoleti i helikopteri', 0),
(402, 5, '<span class=\"seria-all\">Pyzeli', 239, NULL, NULL, '<span class=\"seria-all\">Pyzeli', 0),
(403, 5, '<span class=\"seria-all\">Oryjiia', 239, NULL, NULL, '<span class=\"seria-all\">Oryjiia', 0),
(404, 5, '<span class=\"seria-all\">Logicheski igri', 239, NULL, NULL, '<span class=\"seria-all\">Logicheski igri', 0),
(405, 5, '<span class=\"seria-all\">Krakomobili, krakomotori, akumulatorni koli i motori', 239, NULL, NULL, '<span class=\"seria-all\">Krakomobili, krakomotori, akumulatorni koli i motori', 0),
(406, 5, '<span class=\"seria-all\">Detski masi, stolcheta i taburetki', 239, NULL, NULL, '<span class=\"seria-all\">Detski masi, stolcheta i taburetki', 0),
(407, 5, '<span class=\"seria-all\">Teatralni kostiumi', 239, NULL, NULL, '<span class=\"seria-all\">Teatralni kostiumi', 0),
(408, 5, '<span class=\"seria-all\">Bebeshki artikuli', 239, NULL, NULL, '<span class=\"seria-all\">Bebeshki artikuli', 0),
(409, 5, '<span class=\"seria-all\">Detski kolela', 239, NULL, NULL, '<span class=\"seria-all\">Detski kolela', 0),
(410, 5, '<span class=\"seria-all\">Komplekti detski igrachki za momicheta', 239, NULL, NULL, '<span class=\"seria-all\">Komplekti detski igrachki za momicheta', 0),
(411, 5, '<span class=\"seria-all\">Konstruktori', 239, NULL, NULL, '<span class=\"seria-all\">Konstruktori', 0),
(412, 5, '<span class=\"seria-all\">Muzikalni igrachki', 239, NULL, NULL, '<span class=\"seria-all\">Muzikalni igrachki', 0),
(413, 5, '<span class=\"seria-all\">Plajni artikuli', 239, NULL, NULL, '<span class=\"seria-all\">Plajni artikuli', 0),
(414, 5, '<span class=\"seria-all\">Avtomobili, motori, djipove,  kamioni', 239, NULL, NULL, '<span class=\"seria-all\">Avtomobili, motori, djipove,  kamioni', 0),
(415, 5, '<span class=\"seria-all\">Radioupravliaemi igrachki', 239, NULL, NULL, '<span class=\"seria-all\">Radioupravliaemi igrachki', 0),
(416, 5, '<span class=\"seria-all\">Skeitbordove, roleri, hovyrbordi', 239, NULL, NULL, '<span class=\"seria-all\">Skeitbordove, roleri, hovyrbordi', 0),
(417, 5, '<span class=\"seria-all\">Drugi', 239, NULL, NULL, '<span class=\"seria-all\">Drugi', 0),
(418, 5, '<span class=\"seria-all\">Detski ranici i chanti', 239, NULL, NULL, '<span class=\"seria-all\">Detski ranici i chanti', 0),
(419, 5, '<span class=\"seria-all\">Jivotni', 239, NULL, NULL, '<span class=\"seria-all\">Jivotni', 0),
(420, 5, '<span class=\"seria-all\">Komplekti za momcheta', 239, NULL, NULL, '<span class=\"seria-all\">Komplekti za momcheta', 0),
(421, 5, '<span class=\"seria-all\">Kukli', 239, NULL, NULL, '<span class=\"seria-all\">Kukli', 0),
(422, 5, '<span class=\"seria-all\">Muzikalni instrumenti', 239, NULL, NULL, '<span class=\"seria-all\">Muzikalni instrumenti', 0),
(423, 5, '<span class=\"seria-all\">Pozdravitelni kartichki', 239, NULL, NULL, '<span class=\"seria-all\">Pozdravitelni kartichki', 0),
(424, 5, '<span class=\"seria-all\">Risuvatelni igri', 239, NULL, NULL, '<span class=\"seria-all\">Risuvatelni igri', 0),
(425, 5, '<span class=\"seria-all\">Sportni igri', 239, NULL, NULL, '<span class=\"seria-all\">Sportni igri', 0),
(426, 8, 'Detski magazin', NULL, NULL, NULL, 'Detski magazin', 0),
(427, 8, 'Promo bebeshki stoki', 426, NULL, NULL, 'Promo bebeshki stoki', 0),
(428, 8, 'Promo Bebeshki kolichki', 427, NULL, NULL, 'Promo Bebeshki kolichki', 0),
(429, 8, 'Aksesoari za bebeshki kolichki', 3, NULL, NULL, 'Aksesoari za bebeshki kolichki', 0),
(430, 8, 'Prigotvi se za maichinstvo', 3, NULL, NULL, 'Prigotvi se za maichinstvo', 0),
(431, 8, 'Xranene', 3, NULL, NULL, 'Xranene', 0),
(432, 5, '<span class=\"seria-all\">Transformeri i roboti', 239, NULL, NULL, '<span class=\"seria-all\">Transformeri i roboti', 0),
(433, 5, '<span class=\"seria-all\">Baterii', 239, NULL, NULL, '<span class=\"seria-all\">Baterii', 0),
(434, 8, 'Promo Stolcheta za kola', 427, NULL, NULL, 'Promo Stolcheta za kola', 0),
(435, 8, 'Mebeli za detska staia', 3, NULL, NULL, 'Mebeli za detska staia', 0),
(436, 8, 'Igrachki za nai-malkite', 14, NULL, NULL, 'Igrachki za nai-malkite', 0),
(437, 8, 'Prilojni izkustva', 14, NULL, NULL, 'Prilojni izkustva', 0),
(438, 8, 'Aksesoari za deca', 14, NULL, NULL, 'Aksesoari za deca', 0),
(439, 8, 'Konstruktori za deca', 14, NULL, NULL, 'Konstruktori za deca', 0),
(440, 8, 'Figuri, geroi i jivotni', 14, NULL, NULL, 'Figuri, geroi i jivotni', 0),
(441, 8, 'Detski kukli', 14, NULL, NULL, 'Detski kukli', 0),
(442, 8, 'Obrazovatelni igri i igrachki', 14, NULL, NULL, 'Obrazovatelni igri i igrachki', 0),
(443, 8, 'Promo Detski igrachki', 426, NULL, NULL, 'Promo Detski igrachki', 0),
(444, 8, 'Promo CHinove i stativi', 443, NULL, NULL, 'Promo CHinove i stativi', 0),
(445, 8, 'Detski podaryci za Koleda', 14, NULL, NULL, 'Detski podaryci za Koleda', 0),
(446, 8, 'Prevozni sredstva', 14, NULL, NULL, 'Prevozni sredstva', 0),
(447, 8, 'Promo Detski drehi', 426, NULL, NULL, 'Promo Detski drehi', 0),
(448, 8, 'Promo Obuvki', 447, NULL, NULL, 'Promo Obuvki', 0),
(449, 8, 'Detski knijki', 78, NULL, NULL, 'Detski knijki', 0),
(450, 8, 'Ranici za uchilishte', 78, NULL, NULL, 'Ranici za uchilishte', 0),
(451, 8, 'Detski portmoneta', 78, NULL, NULL, 'Detski portmoneta', 0),
(452, 8, 'Igrachki za navyn', 14, NULL, NULL, 'Igrachki za navyn', 0),
(453, 2, 'Termochuvalcheta', 298, NULL, NULL, 'Termochuvalcheta', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_links`
--

CREATE TABLE `failed_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `type_fail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_links`
--

INSERT INTO `failed_links` (`id`, `link`, `type_fail`) VALUES
(1, 'https://comsed.net/всички/lorelli-въртящо-се-детско-столче-за-кола-lynx-isofix-0-36-кг-асортимент?category_id=5216', 'no price'),
(2, 'https://comsed.net/всички/lorelli-бебешко-термочувалче-за-количка-95-48-см-асортимент?category_id=5216', 'no price'),
(3, 'https://www.hippoland.net/canpol-netechascha-chasha-s-dr-zhki-250-ml', 'empty description');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_24_164139_shops', 1),
(7, '2023_10_24_164143_categories', 1),
(8, '2023_10_24_164151_clientcategories', 1),
(9, '2023_10_24_164156_failed_links', 1),
(10, '2023_10_24_164156_product_images', 1),
(12, '2023_10_27_094257_clients', 1),
(13, '2023_10_27_094257_checked_products', 2),
(14, '2014_10_12_000000_parsed_log', 3),
(15, '2023_11_17_173514_create_jobs_table', 3),
(16, '2023_10_24_164156_products', 4);

-- --------------------------------------------------------

--
-- Table structure for table `parsed_log`
--

CREATE TABLE `parsed_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parsed_log`
--

INSERT INTO `parsed_log` (`id`, `url`, `created_at`, `updated_at`, `client_id`) VALUES
(1, 'https://www.hippoland.net/tiny-love-statsionaren-tsentar-za-igra-5v1-here-i-grow-blackandwhite-decor', '2024-05-07 13:09:45', NULL, 0),
(3, 'https://www.hippoland.net/lorelli-classic-komarnik-za-kolichka-v-kutiya-cheren', '2024-05-07 13:11:36', NULL, 1),
(4, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-viola-black', '2024-05-07 13:11:36', NULL, 1),
(5, 'https://www.hippoland.net/kikka-boo-kombinirana-kolichka-2v1-tiffany-army-green-1', '2024-05-07 13:11:37', NULL, 1),
(6, 'https://www.hippoland.net/kikka-boo-kombinirana-kolichka-2v1-tiffany-beige-1', '2024-05-07 13:11:38', NULL, 1),
(7, 'https://www.hippoland.net/kikka-boo-kombinirana-kolichka-2v1-tiffany-light-grey-1', '2024-05-07 13:11:39', NULL, 1),
(8, 'https://www.hippoland.net/kikka-boo-kombinirana-kolichka-2v1-tiffany-dark-grey-2024', '2024-05-07 13:11:40', NULL, 1),
(9, 'https://www.hippoland.net/lorelli-classic-dopalnitelen-sennik-za-kolichka-black', '2024-05-07 13:11:41', NULL, 1),
(10, 'https://www.hippoland.net/lorelli-classic-dopalnitelen-sennik-za-kolichka-artichoke-green', '2024-05-07 13:11:42', NULL, 1),
(11, 'https://www.hippoland.net/lorelli-classic-kolichka-fresh-green', '2024-05-07 13:11:43', NULL, 1),
(12, 'https://www.hippoland.net/lorelli-classic-kolichka-fresh-black-jasper-1', '2024-05-07 13:11:44', NULL, 1),
(13, 'https://www.hippoland.net/lorelli-classic-kolichka-fresh-black-jasper', '2024-05-07 13:11:46', NULL, 1),
(14, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-black', '2024-05-07 13:11:47', NULL, 1),
(15, 'https://www.hippoland.net/moni-kombinirana-kolichka-rio-cherna', '2024-05-07 13:11:48', NULL, 1),
(16, 'https://www.hippoland.net/moni-kombinirana-kolichka-rio-rozova', '2024-05-07 13:11:48', NULL, 1),
(17, 'https://www.hippoland.net/moni-kombinirana-kolichka-rio-kaki', '2024-05-07 13:11:49', NULL, 1),
(18, 'https://www.hippoland.net/moni-kombinirana-kolichka-rio-zelena', '2024-05-07 13:11:50', NULL, 1),
(19, 'https://www.hippoland.net/moni-kombinirana-kolichka-kali-cherna', '2024-05-07 13:11:51', NULL, 1),
(20, 'https://www.hippoland.net/moni-kombinirana-kolichka-kali-siva', '2024-05-07 13:11:52', NULL, 1),
(21, 'https://www.hippoland.net/moni-kombinirana-kolichka-kali-maslinovo-zelena', '2024-05-07 13:11:54', NULL, 1),
(22, 'https://www.hippoland.net/moni-kombinirana-kolichka-kali-kaki', '2024-05-07 13:11:55', NULL, 1),
(23, 'https://www.hippoland.net/moni-kombinirana-kolichka-tokyo-cherna', '2024-05-07 13:11:56', NULL, 1),
(24, 'https://www.hippoland.net/moni-kombinirana-kolichka-tokyo-siva', '2024-05-07 13:11:57', NULL, 1),
(25, 'https://www.hippoland.net/moni-kombinirana-kolichka-tokyo-zelen', '2024-05-07 13:11:58', NULL, 1),
(26, 'https://www.hippoland.net/moni-kombinirana-kolichka-tokyo-bezhova', '2024-05-07 13:11:59', NULL, 1),
(27, 'https://www.hippoland.net/lorelli-premium-kombinirana-kolichka-2v1-glory-pearl-beige', '2024-05-07 13:12:00', NULL, 1),
(28, 'https://www.hippoland.net/chipolino-podlozhka-za-kolichka-bezhova-zvezdi', '2024-05-07 13:12:01', NULL, 1),
(29, 'https://www.hippoland.net/chipolino-podlozhka-za-kolichka-menta-zvezdi', '2024-05-07 13:12:02', NULL, 1),
(30, 'https://www.hippoland.net/chipolino-podlozhka-za-kolichka-siva-sivi-zvezdi', '2024-05-07 13:12:02', NULL, 1),
(31, 'https://www.hippoland.net/chipolino-podlozhka-za-kolichka-rozova-rozovi-zvezdi', '2024-05-07 13:12:03', NULL, 1),
(32, 'https://www.hippoland.net/chipolino-podlozhka-za-kolichka-sinya-sini-zvezdi', '2024-05-07 13:12:04', NULL, 1),
(33, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-infiniti-flamingo', '2024-05-07 13:12:06', NULL, 1),
(34, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-infiniti-pastelno-zeleno', '2024-05-07 13:12:07', NULL, 1),
(35, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-infiniti-makadamiya', '2024-05-07 13:12:08', NULL, 1),
(36, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-infiniti-granit', '2024-05-07 13:12:09', NULL, 1),
(37, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-infiniti-obsidian', '2024-05-07 13:12:10', NULL, 1),
(38, 'https://www.hippoland.net/chicco-kombinirana-kolichka-2v1-one4ever-green', '2024-05-07 13:12:11', NULL, 1),
(39, 'https://www.hippoland.net/chicco-kombinirana-kolichka-2v1-mysa-black-satin', '2024-05-07 13:12:12', NULL, 1),
(40, 'https://www.hippoland.net/chicco-kolichka-trolley-me-0-m-calypso', '2024-05-07 13:12:13', NULL, 1),
(41, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-light-mint', '2024-05-07 13:12:14', NULL, 1),
(42, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-pink', '2024-05-07 13:12:15', NULL, 1),
(43, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-dark-mint', '2024-05-07 13:12:16', NULL, 1),
(44, 'https://www.hippoland.net/lorelli-premium-kombinirana-kolichka-viola-black-diamonds', '2024-05-07 13:12:17', NULL, 1),
(45, 'https://www.hippoland.net/lorelli-premium-kombinirana-kolichka-viola-beige', '2024-05-07 13:12:18', NULL, 1),
(46, 'https://www.hippoland.net/lorelli-premium-kombinirana-kolichka-viola-grey', '2024-05-07 13:12:19', NULL, 1),
(47, 'https://www.hippoland.net/cybex-kolichka-beezy-blk-candy-pink', '2024-05-07 13:12:20', NULL, 1),
(48, 'https://www.hippoland.net/cybex-kolichka-beezy-blk-stormy-blue', '2024-05-07 13:12:21', NULL, 1),
(49, 'https://www.hippoland.net/cybex-kolichka-beezy-blk-dark-blue', '2024-05-07 13:12:22', NULL, 1),
(50, 'https://www.hippoland.net/moni-kombinirana-kolichka-alma-zelena', '2024-05-07 13:12:24', NULL, 1),
(51, 'https://www.hippoland.net/lorelli-classic-leten-set-za-detska-kolichka-ranfors-rozovo-meche-balerina', '2024-05-07 13:12:24', NULL, 1),
(52, 'https://www.hippoland.net/lorelli-classic-leten-set-za-detska-kolichka-ranfors-priyateli', '2024-05-07 13:12:25', NULL, 1),
(53, 'https://www.hippoland.net/lorelli-classic-leten-set-za-detska-kolichka-ranfors-meche-s-vazglavnichka', '2024-05-07 13:12:25', NULL, 1),
(54, 'https://www.hippoland.net/lorelli-classic-leten-set-za-detska-kolichka-ranfors-sinyo-vlakche', '2024-05-07 13:12:26', NULL, 1),
(55, 'https://www.hippoland.net/lorelli-classic-leten-set-za-detska-kolichka-ranfors-sivo-vlakche', '2024-05-07 13:12:26', NULL, 1),
(56, 'https://www.hippoland.net/kikka-boo-kolichka-joy-grey', '2024-05-07 13:12:27', NULL, 1),
(57, 'https://www.hippoland.net/lorelli-classic-d-zhdobran-happy-rain-2002011', '2024-05-07 13:12:28', NULL, 1),
(58, 'https://www.hippoland.net/kikka-boo-kolichka-sarah-pink', '2024-05-07 13:12:29', NULL, 1),
(59, 'https://www.hippoland.net/kikka-boo-kolichka-sarah-beige', '2024-05-07 13:12:31', NULL, 1),
(60, 'https://www.hippoland.net/kikka-boo-kolichka-sarah-grey', '2024-05-07 13:12:32', NULL, 1),
(61, 'https://www.hippoland.net/kikka-boo-kolichka-sarah-black', '2024-05-07 13:12:32', NULL, 1),
(62, 'https://www.hippoland.net/lorelli-premium-kolichka-minori-opal-green', '2024-05-07 13:12:34', NULL, 1),
(63, 'https://www.hippoland.net/lorelli-premium-kolichka-minori-lemon-curry', '2024-05-07 13:12:35', NULL, 1),
(64, 'https://www.hippoland.net/lorelli-premium-kolichka-minori-grey-jasper', '2024-05-07 13:12:36', NULL, 1),
(65, 'https://www.hippoland.net/lorelli-premium-kolichka-minori-magic-flowers', '2024-05-07 13:12:37', NULL, 1),
(66, 'https://www.hippoland.net/cybex-kolichka-orfeo-tpe-almond-beige', '2024-05-07 13:12:37', NULL, 1),
(67, 'https://www.hippoland.net/cybex-kolichka-orfeo-tpe-stormy-blue', '2024-05-07 13:12:38', NULL, 1),
(68, 'https://www.hippoland.net/cybex-kolichka-orfeo-blk-magic-black', '2024-05-07 13:12:39', NULL, 1),
(69, 'https://www.hippoland.net/cybex-kolichka-orfeo-blk-candy-pink', '2024-05-07 13:12:40', NULL, 1),
(70, 'https://www.hippoland.net/maxi-cosi-kolichka-oxford-select-grey', '2024-05-07 13:12:41', NULL, 1),
(71, 'https://www.hippoland.net/maxi-cosi-kolichka-oxford-essential-graphite', '2024-05-07 13:12:42', NULL, 1),
(72, 'https://www.hippoland.net/maxi-cosi-kolichka-oxford-essential-black', '2024-05-07 13:12:43', NULL, 1),
(73, 'https://www.hippoland.net/cangaroo-kombinirana-kolichka-3v1-empire-svetlo-siva', '2024-05-07 13:12:44', NULL, 1),
(74, 'https://www.hippoland.net/cangaroo-kombinirana-kolichka-3v1-empire-tamno-siva', '2024-05-07 13:12:45', NULL, 1),
(75, 'https://www.hippoland.net/cangaroo-kombinirana-kolichka-3v1-empire-cherna', '2024-05-07 13:12:46', NULL, 1),
(76, 'https://www.hippoland.net/cangaroo-kombinirana-kolichka-3v1-empire-bezhova', '2024-05-07 13:12:46', NULL, 1),
(77, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-top-stars-makadamiya', '2024-05-07 13:12:47', NULL, 1),
(78, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-top-stars-obsidian', '2024-05-07 13:12:48', NULL, 1),
(79, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-printsesa', '2024-05-07 13:12:50', NULL, 1),
(80, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-tigarche', '2024-05-07 13:12:51', NULL, 1),
(81, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-koala', '2024-05-07 13:12:52', NULL, 1),
(82, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-sinyo-zelena', '2024-05-07 13:12:52', NULL, 1),
(83, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-granit', '2024-05-07 13:12:53', NULL, 1),
(84, 'https://www.hippoland.net/chipolino-lyatna-kolichka-mayli-obsidian', '2024-05-07 13:12:54', NULL, 1),
(85, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-flamingo', '2024-05-07 13:12:56', NULL, 1),
(86, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-bezhova', '2024-05-07 13:12:57', NULL, 1),
(87, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-siva', '2024-05-07 13:12:58', NULL, 1),
(88, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-lista', '2024-05-07 13:12:59', NULL, 1),
(89, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-srebro', '2024-05-07 13:13:00', NULL, 1),
(90, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-havana-obsidian', '2024-05-07 13:13:01', NULL, 1),
(91, 'https://www.hippoland.net/chipolino-kolichka-twister-360-pastelno-zeleno', '2024-05-07 13:13:02', NULL, 1),
(92, 'https://www.hippoland.net/chipolino-kolichka-twister-360-makadamiya', '2024-05-07 13:13:03', NULL, 1),
(93, 'https://www.hippoland.net/chipolino-kolichka-twister-360-granit', '2024-05-07 13:13:04', NULL, 1),
(94, 'https://www.hippoland.net/chipolino-kolichka-twister-360-art', '2024-05-07 13:13:05', NULL, 1),
(95, 'https://www.hippoland.net/chipolino-lyatna-kolichka-move-on-pastelno-zeleno', '2024-05-07 13:13:06', NULL, 1),
(96, 'https://www.hippoland.net/chipolino-lyatna-kolichka-move-on-makadamiya', '2024-05-07 13:13:07', NULL, 1),
(97, 'https://www.hippoland.net/chipolino-lyatna-kolichka-move-on-granit', '2024-05-07 13:13:07', NULL, 1),
(98, 'https://www.hippoland.net/chipolino-lyatna-kolichka-move-on-art', '2024-05-07 13:13:08', NULL, 1),
(99, 'https://www.hippoland.net/chipolino-kolichka-pixie-flamingo', '2024-05-07 13:13:10', NULL, 1),
(100, 'https://www.hippoland.net/chipolino-kolichka-pixie-pastelno-zeleno', '2024-05-07 13:13:11', NULL, 1),
(101, 'https://www.hippoland.net/chipolino-kolichka-pixie-makadamiya', '2024-05-07 13:13:12', NULL, 1),
(102, 'https://www.hippoland.net/chipolino-kolichka-pixie-pepelno-sivo', '2024-05-07 13:13:13', NULL, 1),
(103, 'https://www.hippoland.net/chipolino-kolichka-pixie-obsidian', '2024-05-07 13:13:14', NULL, 1),
(104, 'https://www.hippoland.net/chipolino-kolichka-bizhu-flamingo', '2024-05-07 13:13:15', NULL, 1),
(105, 'https://www.hippoland.net/chipolino-kolichka-bizhu-pastelno-zeleno', '2024-05-07 13:13:16', NULL, 1),
(106, 'https://www.hippoland.net/chipolino-kolichka-bizhu-makadamiya', '2024-05-07 13:13:17', NULL, 1),
(107, 'https://www.hippoland.net/chipolino-kolichka-bizhu-pepelno-sivo', '2024-05-07 13:13:18', NULL, 1),
(108, 'https://www.hippoland.net/chipolino-kolichka-bizhu-obsidian', '2024-05-07 13:13:19', NULL, 1),
(109, 'https://www.hippoland.net/chipolino-kolichka-ambar-flamingo', '2024-05-07 13:13:20', NULL, 1),
(110, 'https://www.hippoland.net/chipolino-kolichka-ambar-pastelno-zeleno', '2024-05-07 13:13:21', NULL, 1),
(111, 'https://www.hippoland.net/chipolino-kolichka-ambar-makadamiya', '2024-05-07 13:13:22', NULL, 1),
(112, 'https://www.hippoland.net/chipolino-kolichka-ambar-grafit', '2024-05-07 13:13:23', NULL, 1),
(113, 'https://www.hippoland.net/chipolino-kolichka-ambar-obsidian', '2024-05-07 13:13:24', NULL, 1),
(114, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-elit-pastelno-zeleno', '2024-05-07 13:13:25', NULL, 1),
(115, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-elit-makadamiya', '2024-05-07 13:13:26', NULL, 1),
(116, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-elit-granit', '2024-05-07 13:13:27', NULL, 1),
(117, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-3v1-elit-mastilen-art', '2024-05-07 13:13:28', NULL, 1),
(118, 'https://www.hippoland.net/kikka-boo-kolichka-jess-mint', '2024-05-07 13:13:29', NULL, 1),
(119, 'https://www.hippoland.net/kikka-boo-kolichka-jess-light-grey', '2024-05-07 13:13:30', NULL, 1),
(120, 'https://www.hippoland.net/kikka-boo-kolichka-jess-dark-grey', '2024-05-07 13:13:31', NULL, 1),
(121, 'https://www.hippoland.net/kikka-boo-kolichka-jess-black', '2024-05-07 13:13:32', NULL, 1),
(122, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-aura-flamingo', '2024-05-07 13:13:33', NULL, 1),
(123, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-aura-sinyo-zelena', '2024-05-07 13:13:33', NULL, 1),
(124, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-aura-makadamiya', '2024-05-07 13:13:34', NULL, 1),
(125, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-aura-siva', '2024-05-07 13:13:36', NULL, 1),
(126, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-aura-obsidian', '2024-05-07 13:13:37', NULL, 1),
(127, 'https://www.hippoland.net/chipolino-kolichka-combo-flamingo', '2024-05-07 13:13:38', NULL, 1),
(128, 'https://www.hippoland.net/chipolino-kolichka-combo-sinyo-zelena', '2024-05-07 13:13:39', NULL, 1),
(129, 'https://www.hippoland.net/chipolino-kolichka-combo-bezhova', '2024-05-07 13:13:40', NULL, 1),
(130, 'https://www.hippoland.net/chipolino-kolichka-combo-siva', '2024-05-07 13:13:41', NULL, 1),
(131, 'https://www.hippoland.net/chipolino-kolichka-combo-obsidian', '2024-05-07 13:13:42', NULL, 1),
(132, 'https://www.hippoland.net/moni-kombinirana-kolichka-raffaello-cherna', '2024-05-07 13:13:43', NULL, 1),
(133, 'https://www.hippoland.net/moni-kombinirana-kolichka-raffaello-siva', '2024-05-07 13:13:44', NULL, 1),
(134, 'https://www.hippoland.net/moni-kombinirana-kolichka-raffaello-zelena', '2024-05-07 13:13:45', NULL, 1),
(135, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-amore-flamingo', '2024-05-07 13:13:46', NULL, 1),
(136, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-amore-dzhungla', '2024-05-07 13:13:48', NULL, 1),
(137, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-amore-makadamiya', '2024-05-07 13:13:48', NULL, 1),
(138, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-amore-sivo', '2024-05-07 13:13:49', NULL, 1),
(139, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-amore-obsidian', '2024-05-07 13:13:51', NULL, 1),
(140, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-duo-smart-flamingo', '2024-05-07 13:13:52', NULL, 1),
(141, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-duo-smart-obsidian-lista', '2024-05-07 13:13:53', NULL, 1),
(142, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-duo-smart-bezhovo', '2024-05-07 13:13:54', NULL, 1),
(143, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-duo-smart-srebarno-sivo', '2024-05-07 13:13:55', NULL, 1),
(144, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-za-bliznatsi-duo-smart-obsidian', '2024-05-07 13:13:56', NULL, 1),
(145, 'https://www.hippoland.net/kikka-boo-kolichka-ciela-grey', '2024-05-07 13:13:57', NULL, 1),
(146, 'https://www.hippoland.net/kikka-boo-kolichka-ciela-beige', '2024-05-07 13:13:58', NULL, 1),
(147, 'https://www.hippoland.net/kikka-boo-kolichka-ciela-pink', '2024-05-07 13:13:59', NULL, 1),
(148, 'https://www.hippoland.net/kikka-boo-kolichka-ciela-black', '2024-05-07 13:14:00', NULL, 1),
(149, 'https://www.hippoland.net/kikka-boo-chanta-za-aksesoari-maxi-dark-grey', '2024-05-07 13:14:01', NULL, 1),
(150, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-zoe-dark-grey', '2024-05-07 13:14:02', NULL, 1),
(151, 'https://www.hippoland.net/chipolino-matrak-za-kolichka-humus-bezhovi-zvezdi', '2024-05-07 13:14:03', NULL, 1),
(152, 'https://www.hippoland.net/sevibaby-vazglavnitsa-za-kolichka-i-stol-za-kola-i-hranene-lista', '2024-05-07 13:14:04', NULL, 1),
(153, 'https://www.hippoland.net/sevibaby-vazglavnitsa-za-kolichka-i-stol-za-kola-i-hranene-pera', '2024-05-07 13:14:05', NULL, 1),
(154, 'https://www.hippoland.net/sevibaby-vazglavnitsa-za-kolichka-i-stol-za-kola-i-hranene-gluharcheta', '2024-05-07 13:14:05', NULL, 1),
(155, 'https://www.hippoland.net/sevibaby-vazglavnitsa-za-kolichka-i-stol-za-kola-i-hranene-sivi-zvezdi', '2024-05-07 13:14:06', NULL, 1),
(156, 'https://www.hippoland.net/sevibaby-vazglavnitsa-za-kolichka-i-stol-za-kola-i-hranene-rozova', '2024-05-07 13:14:07', NULL, 1),
(157, 'https://www.hippoland.net/sevi-baby-universalna-podlozhka-za-kolichka-i-stol-za-kola-bumerang', '2024-05-07 13:14:08', NULL, 1),
(158, 'https://www.hippoland.net/sevi-baby-universalna-podlozhka-za-kolichka-i-stol-za-kola-zeleni-lista-1', '2024-05-07 13:14:10', NULL, 1),
(159, 'https://www.hippoland.net/sevi-baby-universalna-podlozhka-za-kolichka-i-stol-za-kola-zeleni-lista', '2024-05-07 13:14:11', NULL, 1),
(160, 'https://www.hippoland.net/sevi-baby-universalna-podlozhka-za-kolichka-i-stol-za-kola-rozova-1', '2024-05-07 13:14:12', NULL, 1),
(161, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-flamingo', '2024-05-07 13:14:13', NULL, 1),
(162, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-dzhungla', '2024-05-07 13:14:14', NULL, 1),
(163, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-pastelno-zeleno', '2024-05-07 13:14:15', NULL, 1),
(164, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-makadamiya', '2024-05-07 13:14:16', NULL, 1),
(165, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-pepelno-sivo', '2024-05-07 13:14:17', NULL, 1),
(166, 'https://www.hippoland.net/chipolino-kombinirana-kolichka-eypril-obsidian', '2024-05-07 13:14:18', NULL, 1),
(167, 'https://www.hippoland.net/chipolino-kolichka-amaya-leopard', '2024-05-07 13:14:19', NULL, 1),
(168, 'https://www.hippoland.net/chipolino-kolichka-amaya-love', '2024-05-07 13:14:20', NULL, 1),
(169, 'https://www.hippoland.net/chipolino-kolichka-amaya-dzhungla', '2024-05-07 13:14:21', NULL, 1),
(170, 'https://www.hippoland.net/chipolino-kolichka-amaya-siv-len', '2024-05-07 13:14:22', NULL, 1),
(171, 'https://www.hippoland.net/chipolino-kolichka-amaya-obsidian', '2024-05-07 13:14:23', NULL, 1),
(172, 'https://www.hippoland.net/moni-lyatna-kolichka-colibri-tyurkoaz', '2024-05-07 13:14:24', NULL, 1),
(173, 'https://www.hippoland.net/moni-lyatna-kolichka-colibri-siva', '2024-05-07 13:14:25', NULL, 1),
(174, 'https://www.hippoland.net/moni-lyatna-kolichka-capri-siv', '2024-05-07 13:14:26', NULL, 1),
(175, 'https://www.hippoland.net/moni-lyatna-kolichka-capri-rozov', '2024-05-07 13:14:27', NULL, 1),
(176, 'https://www.hippoland.net/moni-lyatna-kolichka-capri-zhalt', '2024-05-07 13:14:28', NULL, 1),
(177, 'https://www.hippoland.net/moni-universalen-chadar-za-kolichka-siv', '2024-05-07 13:14:29', NULL, 1),
(178, 'https://www.hippoland.net/kikka-boo-lyatna-kolichka-beetle-black', '2024-05-07 13:14:30', NULL, 1),
(179, 'https://www.hippoland.net/kikka-boo-kolichka-joy-black', '2024-05-07 13:14:31', NULL, 1),
(180, 'https://www.hippoland.net/kikka-boo-lyatna-kolichka-lauren-black', '2024-05-07 13:14:32', NULL, 1),
(181, 'https://www.hippoland.net/kikka-boo-lyatna-kolichka-lauren-light-grey', '2024-05-07 13:14:33', NULL, 1),
(182, 'https://www.hippoland.net/kikka-boo-lyatna-kolichka-lauren-rose', '2024-05-07 13:14:34', NULL, 1),
(183, 'https://www.hippoland.net/lorelli-meka-podlozhka-za-kolichka-cosy-travel-memory-sivi-zvezdi', '2024-05-07 13:14:35', NULL, 1),
(184, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-cherna', '2024-05-07 13:14:36', NULL, 1),
(185, 'https://www.hippoland.net/lorelli-classic-vatiran-set-za-detska-kolichka-ranfors-priyateli', '2024-05-07 13:14:37', NULL, 1),
(186, 'https://www.hippoland.net/cangaroo-kombinirana-kolichka-2v1-macan-zelena', '2024-05-07 13:14:37', NULL, 1),
(187, 'https://www.hippoland.net/lorelli-classic-set-za-detska-kolichka-s-protektor-ranfors-rozovo-meche', '2024-05-07 13:14:38', NULL, 1),
(188, 'https://www.hippoland.net/mutsy-termochuvalche-za-kolichka-evo-stone-grey', '2024-05-07 13:17:42', NULL, 1),
(189, 'https://www.hippoland.net/mutsy-termochuvalche-za-kolichka-evo-pebble-grey', '2024-05-07 13:17:43', NULL, 1),
(190, 'https://www.hippoland.net/mutsy-termochuvalche-za-kolichka-evo-infinite-sand', '2024-05-07 13:17:44', NULL, 1),
(191, 'https://www.hippoland.net/mutsy-termochuvalche-nio-shade', '2024-05-07 13:17:45', NULL, 1),
(192, 'https://www.hippoland.net/mutsy-termochuvalche-nio-sea-green', '2024-05-07 13:17:46', NULL, 1),
(193, 'https://www.hippoland.net/mutsy-termochuvalche-nio-pine-green', '2024-05-07 13:17:47', NULL, 1),
(194, 'https://www.hippoland.net/mutsy-termochuvalche-nio-cosmic-sand', '2024-05-07 13:17:48', NULL, 1),
(195, 'https://www.hippoland.net/kikka-boo-chuvalche-za-kolichka-fur-melange-grey-31108040103', '2024-05-07 13:17:49', NULL, 1),
(196, 'https://www.hippoland.net/kikka-boo-chuvalche-za-kolichka-fur-melange-black-31108040101', '2024-05-07 13:17:50', NULL, 1),
(197, 'https://www.hippoland.net/kikka-boo-chuvalche-za-kolichka-shiny-nylon-snow-braids-31108040099', '2024-05-07 13:17:51', NULL, 1),
(198, 'https://www.hippoland.net/kikka-boo-chuvalche-za-kolichka-lux-fur-dots-beige-31108040095', '2024-05-07 13:17:52', NULL, 1),
(199, 'https://www.hippoland.net/kikka-boo-chuvalche-za-kolichka-lux-fur-dots-grey-31108040094', '2024-05-07 13:17:53', NULL, 1),
(200, 'https://www.hippoland.net/cangaroo-termochuvalche-za-kolichka-luxe-cheren-109337', '2024-05-07 13:17:54', NULL, 1),
(201, 'https://www.hippoland.net/cangaroo-termochuvalche-za-kolichka-luxe-siv-109336', '2024-05-07 13:17:55', NULL, 1),
(202, 'https://www.hippoland.net/kikkaboo-chuvalche-za-kolichka-shiny-nylon-snow-flakes-siv-31108040052', '2024-05-07 13:17:56', NULL, 1),
(203, 'https://www.hippoland.net/cangaroo-termochuvalche-za-kolichka-cuddle-denim', '2024-05-07 13:17:56', NULL, 1),
(204, 'https://www.hippoland.net/cangaroo-termochuvalche-za-kolichka-fluffy-kafyav', '2024-05-07 13:17:57', NULL, 1),
(205, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-viola-black', '2024-05-07 13:18:09', NULL, 1),
(206, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-black', '2024-05-07 13:18:09', NULL, 1),
(207, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-light-mint', '2024-05-07 13:18:10', NULL, 1),
(208, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-pink', '2024-05-07 13:18:10', NULL, 1),
(209, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-dark-mint', '2024-05-07 13:18:11', NULL, 1),
(210, 'https://www.hippoland.net/kikka-boo-chanta-za-aksesoari-maxi-dark-grey', '2024-05-07 13:18:11', NULL, 1),
(211, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-zoe-dark-grey', '2024-05-07 13:18:11', NULL, 1),
(212, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-cherna', '2024-05-07 13:18:11', NULL, 1),
(213, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-moss-green-melange', '2024-05-07 13:18:12', NULL, 1),
(214, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-navy', '2024-05-07 13:18:13', NULL, 1),
(215, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-anthrazit', '2024-05-07 13:18:14', NULL, 1),
(216, 'https://www.hippoland.net/moon-chanta-za-aksesoari-navy', '2024-05-07 13:18:15', NULL, 1),
(217, 'https://www.hippoland.net/moon-chanta-za-aksesoari-anthrazit', '2024-05-07 13:18:16', NULL, 1),
(218, 'https://www.hippoland.net/moon-chanta-za-aksesoari-mud-melange', '2024-05-07 13:18:17', NULL, 1),
(219, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-stone-grey', '2024-05-07 13:18:19', NULL, 1),
(220, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-pebble-grey', '2024-05-07 13:18:20', NULL, 1),
(221, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-concrete-melange', '2024-05-07 13:18:21', NULL, 1),
(222, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-infinite-sand', '2024-05-07 13:18:21', NULL, 1),
(223, 'https://www.hippoland.net/mutsy-chanta-nio-shade', '2024-05-07 13:18:22', NULL, 1),
(224, 'https://www.hippoland.net/mutsy-chanta-nio-sea-green', '2024-05-07 13:18:23', NULL, 1),
(225, 'https://www.hippoland.net/mutsy-chanta-nio-pine-green', '2024-05-07 13:18:24', NULL, 1),
(226, 'https://www.hippoland.net/mutsy-chanta-nio-north-black', '2024-05-07 13:18:25', NULL, 1),
(227, 'https://www.hippoland.net/mutsy-chanta-nio-cosmic-sand', '2024-05-07 13:18:26', NULL, 1),
(228, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-aria-black', '2024-05-07 13:18:27', NULL, 1),
(229, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-aria-grey', '2024-05-07 13:18:28', NULL, 1),
(230, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-black-1004020-2305', '2024-05-07 13:18:29', NULL, 1),
(231, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-grey-1004020-2302', '2024-05-07 13:18:30', NULL, 1),
(232, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-mint-31108020072', '2024-05-07 13:18:31', NULL, 1),
(233, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-black-31108020073', '2024-05-07 13:18:31', NULL, 1),
(234, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-beige-31108020074', '2024-05-07 13:18:32', NULL, 1),
(235, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-pink-31108020071', '2024-05-07 13:18:33', NULL, 1),
(236, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-keily-cherna-109990', '2024-05-07 13:18:34', NULL, 1),
(237, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-keily-siva-109991', '2024-05-07 13:18:35', NULL, 1),
(238, 'https://www.hippoland.net/baby-monsters-chanta-kosh-za-pazaruvane-za-easy-twin-cherna-monbshbagbmt4sb', '2024-05-07 13:18:36', NULL, 1),
(239, 'https://www.hippoland.net/baby-monsters-chanta-za-bagazh-za-kolichka-easy-twin-kozha-cherna-monbmbm70001l', '2024-05-07 13:18:37', NULL, 1),
(240, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-pyasak-chraf02303sa', '2024-05-07 13:18:38', NULL, 1),
(241, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-grafit-chraf02302gt', '2024-05-07 13:18:39', NULL, 1),
(242, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-abanos-chraf02301eb', '2024-05-07 13:18:40', NULL, 1),
(243, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-ella-beige-31108020077', '2024-05-07 13:18:41', NULL, 1),
(244, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-ella-grey-31108020076', '2024-05-07 13:18:42', NULL, 1),
(245, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-beige-31108020070', '2024-05-07 13:18:43', NULL, 1),
(246, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-grey-31108020069', '2024-05-07 13:18:44', NULL, 1),
(247, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-black-31108020068', '2024-05-07 13:18:45', NULL, 1),
(248, 'https://www.hippoland.net/kikka-boo-chanta-za-aksesoari-maxi-mint-31108020066', '2024-05-07 13:18:46', NULL, 1),
(249, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-zoe-mint-31108020081', '2024-05-07 13:18:47', NULL, 1),
(250, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-chelsea-dots-grey-31108020078', '2024-05-07 13:18:48', NULL, 1),
(251, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-sinya-108363', '2024-05-07 13:18:49', NULL, 1),
(252, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-rozova-108361', '2024-05-07 13:18:50', NULL, 1),
(253, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-bezhova-108360', '2024-05-07 13:18:51', NULL, 1),
(254, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-candy-pink-1004020-2189', '2024-05-07 13:18:52', NULL, 1),
(255, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-jeans-blue-1004020-2188', '2024-05-07 13:18:53', NULL, 1),
(256, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-platina-chraf02107pl', '2024-05-07 13:18:54', NULL, 1),
(257, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-sinya-108359', '2024-05-07 13:18:54', NULL, 1),
(258, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-rozova-108357', '2024-05-07 13:18:55', NULL, 1),
(259, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-bezh-108356', '2024-05-07 13:18:56', NULL, 1),
(260, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-dark-grey-31108020060', '2024-05-07 13:18:56', NULL, 1),
(261, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-black-31108020059', '2024-05-07 13:18:57', NULL, 1),
(262, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-black-31108020056', '2024-05-07 13:18:59', NULL, 1),
(263, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-blue-grey-1004026-0008', '2024-05-07 13:19:00', NULL, 1),
(264, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-pink-grey-1004026-0007', '2024-05-07 13:19:01', NULL, 1),
(265, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-pink-31108020044', '2024-05-07 13:19:02', NULL, 1),
(266, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-mint-31108020046', '2024-05-07 13:19:02', NULL, 1),
(267, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-grey-31108020045', '2024-05-07 13:19:03', NULL, 1),
(268, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-blue-grey-1004008-0008', '2024-05-07 13:19:04', NULL, 1),
(269, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-pink-grey-1004008-0007', '2024-05-07 13:19:05', NULL, 1),
(270, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-beige-1004008-0006', '2024-05-07 13:19:06', NULL, 1),
(271, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-cherna-kozha-chraf02105bl', '2024-05-07 13:19:07', NULL, 1),
(272, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-viola-grey-1004028-0001', '2024-05-07 13:19:08', NULL, 1),
(273, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-kristin-black-1004027-0002', '2024-05-07 13:19:09', NULL, 1),
(274, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-kristin-grey-1004027-0001', '2024-05-07 13:19:10', NULL, 1),
(275, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-black-1004026-0002', '2024-05-07 13:19:11', NULL, 1),
(276, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-grey-1004026-0001', '2024-05-07 13:19:12', NULL, 1),
(277, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-maya-beige-1004025-0003', '2024-05-07 13:19:13', NULL, 1),
(278, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-maya-grey-1004025-0001', '2024-05-07 13:19:14', NULL, 1),
(279, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-laura-black-1004024-0002', '2024-05-07 13:19:15', NULL, 1),
(280, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-laura-grey-1004024-0001', '2024-05-07 13:19:16', NULL, 1),
(281, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-black-silver-31108020034', '2024-05-07 13:19:17', NULL, 1),
(282, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-black-gold-31108020020', '2024-05-07 13:19:18', NULL, 1),
(283, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-siva-108358', '2024-05-07 13:19:19', NULL, 1),
(284, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-siva-108363', '2024-05-07 13:19:20', NULL, 1),
(285, 'https://www.hippoland.net/kikkaboo-organayzer-za-chanta-maxi-beige-31108020048', '2024-05-07 13:19:21', NULL, 1),
(286, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-black-31108020041', '2024-05-07 13:19:22', NULL, 1),
(287, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-beige-31108020040', '2024-05-07 13:19:23', NULL, 1),
(288, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-grey-31108020039', '2024-05-07 13:19:24', NULL, 1),
(289, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-cheren', '2024-05-07 13:19:25', NULL, 1),
(290, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-bezhov', '2024-05-07 13:19:26', NULL, 1),
(291, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-denim', '2024-05-07 13:19:27', NULL, 1),
(292, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-cherna-107961', '2024-05-07 13:19:27', NULL, 1),
(293, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-siva-107960', '2024-05-07 13:19:28', NULL, 1),
(294, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-bezhova-107959', '2024-05-07 13:19:30', NULL, 1),
(295, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-cherna-107585', '2024-05-07 13:19:30', NULL, 1),
(296, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-tamno-siv-107584', '2024-05-07 13:19:31', NULL, 1),
(297, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-sandra-black-grey-1004022-0005', '2024-05-07 13:19:32', NULL, 1),
(298, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-sandra-light-dark-grey-1004022-0004', '2024-05-07 13:19:33', NULL, 1),
(299, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-sinya', '2024-05-07 13:19:34', NULL, 1),
(300, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-kafyava', '2024-05-07 13:19:35', NULL, 1),
(301, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-rozova', '2024-05-07 13:19:35', NULL, 1),
(302, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-light-grey-31108020026', '2024-05-07 13:19:36', NULL, 1),
(303, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-dark-grey-31108020028', '2024-05-07 13:19:37', NULL, 1),
(304, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-light-grey-31108020031', '2024-05-07 13:19:38', NULL, 1),
(305, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-blue-31108020033', '2024-05-07 13:19:39', NULL, 1),
(306, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-beige-31108020032', '2024-05-07 13:19:40', NULL, 1),
(307, 'https://www.hippoland.net/mountain-buggy-dvoyna-chanta-cherna-0240', '2024-05-07 13:19:41', NULL, 1),
(308, 'https://www.hippoland.net/canpol-ranitsa-za-kolichka-lady-mum-chervena-50-101', '2024-05-07 13:19:42', NULL, 1),
(309, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-capacity-camel-1004017-0003', '2024-05-07 13:19:43', NULL, 1),
(310, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-tote-camel-1004014-0003', '2024-05-07 13:19:44', NULL, 1),
(311, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termodzhob-basic-black-1004013-0002', '2024-05-07 13:19:45', NULL, 1),
(312, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-fashion-black-1004011-0002', '2024-05-07 13:19:46', NULL, 1),
(313, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-bezhov', '2024-05-07 13:19:47', NULL, 1),
(314, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-beige-31108020025', '2024-05-07 13:19:48', NULL, 1),
(315, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-navy-31108020024', '2024-05-07 13:19:49', NULL, 1),
(316, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-light-blue-31108020022', '2024-05-07 13:19:50', NULL, 1),
(317, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-brown-31108020022', '2024-05-07 13:19:51', NULL, 1),
(318, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-grey-31108020021', '2024-05-07 13:19:52', NULL, 1),
(319, 'https://www.hippoland.net/mountain-buggy-universalni-halki-za-prikrepyane-na-chanta-za-kolichka-0247', '2024-05-07 13:19:53', NULL, 1),
(320, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-uni-beige-melange-31108020015', '2024-05-07 13:19:54', NULL, 1),
(321, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-bella-106936', '2024-05-07 13:19:55', NULL, 1),
(322, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-frape-denim-chra01804df', '2024-05-07 13:19:56', NULL, 1),
(323, 'https://www.hippoland.net/babyhome-termoanta', '2024-05-07 13:19:56', NULL, 1),
(324, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-special-bezhov', '2024-05-07 13:19:57', NULL, 1),
(325, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-miranda-cheren-beli-tochki', '2024-05-07 13:19:58', NULL, 1),
(326, 'https://www.hippoland.net/maclaren-chanta-za-kolichka-denim-flag', '2024-05-07 13:19:58', NULL, 1),
(327, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-blue-1004008-1646', '2024-05-07 13:19:59', NULL, 1),
(328, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-maraya-bezhov-106899', '2024-05-07 13:20:00', NULL, 1),
(329, 'https://www.hippoland.net/maclaren-chanta-za-kolichka-universal-pannier', '2024-05-07 13:20:01', NULL, 1),
(330, 'https://www.hippoland.net/moni-akumulatorno-bagi-typhoon-cherven', '2024-05-07 13:21:11', NULL, 1),
(331, 'https://www.hippoland.net/moni-akumulatorno-bagi-typhoon-sinyo', '2024-05-07 13:21:12', NULL, 1),
(332, 'https://www.hippoland.net/moni-akumulatorno-bagi-typhoon-rozov', '2024-05-07 13:21:13', NULL, 1),
(333, 'https://www.hippoland.net/moni-akumulatorno-bagi-typhoon-oranzhevo', '2024-05-07 13:21:14', NULL, 1),
(334, 'https://www.hippoland.net/chipolino-akumulatorna-kola-ednorog-rozov', '2024-05-07 13:21:15', NULL, 1),
(335, 'https://www.hippoland.net/chipolino-akumulatorna-kola-politsiya-cherna', '2024-05-07 13:21:16', NULL, 1),
(336, 'https://www.hippoland.net/pinghu-akumulatorno-atv-sr-sport-12v-cherno', '2024-05-07 13:21:17', NULL, 1),
(337, 'https://www.hippoland.net/pinghu-akumulatorno-atv-sr-sport-12v-cherveno', '2024-05-07 13:21:18', NULL, 1),
(338, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-veneno-s-roditelski-kontrol-12v-zelena', '2024-05-07 13:21:19', NULL, 1),
(339, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-veneno-s-roditelski-kontrol-12v-chervena', '2024-05-07 13:21:20', NULL, 1),
(340, 'https://www.hippoland.net/pinghu-akumulatoren-dzhip-mercedes-benz-s-roditelski-kontrol-12v-cheren', '2024-05-07 13:21:21', NULL, 1),
(341, 'https://www.hippoland.net/pinghu-akumulatoren-dzhip-mercedes-benz-s-roditelski-kontrol-12v-byal', '2024-05-07 13:21:22', NULL, 1),
(342, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-vision-gt-s-kozhena-sedalka-i-roditelski-kontrol-12v-zelena', '2024-05-07 13:21:23', NULL, 1),
(343, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-vision-gt-s-kozhena-sedalka-i-roditelski-kontrol-12v-oranzheva', '2024-05-07 13:21:24', NULL, 1),
(344, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-vision-gt-s-kozhena-sedalka-i-roditelski-kontrol-12v-cherno', '2024-05-07 13:21:24', NULL, 1),
(345, 'https://www.hippoland.net/pinghu-akumulatoren-motor-12v-zelen', '2024-05-07 13:21:25', NULL, 1),
(346, 'https://www.hippoland.net/pinghu-akumulatoren-motor-12v-cherven', '2024-05-07 13:21:26', NULL, 1),
(347, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-huracan-s-roditelski-kontrol-12v-zelena', '2024-05-07 13:21:27', NULL, 1),
(348, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-huracan-s-roditelski-kontrol-12v-oranzheva', '2024-05-07 13:21:28', NULL, 1),
(349, 'https://www.hippoland.net/pinghu-akumulatorna-kola-lamborghini-huracan-s-roditelski-kontrol-12v-chervena', '2024-05-07 13:21:29', NULL, 1),
(350, 'https://www.hippoland.net/ocie-akumulatoren-motor-12v-speed-zhalt', '2024-05-07 13:21:29', NULL, 1),
(351, 'https://www.hippoland.net/ocie-akumulatoren-motor-12v-speed-zelen', '2024-05-07 13:21:30', NULL, 1),
(352, 'https://www.hippoland.net/ocie-akumulatorno-atv-12v-fast-super-sport-rozovo', '2024-05-07 13:21:31', NULL, 1),
(353, 'https://www.hippoland.net/ocie-akumulatorno-atv-12v-fast-super-sport-sinyo', '2024-05-07 13:21:31', NULL, 1),
(354, 'https://www.hippoland.net/ocie-akumulatorno-atv-12v-fast-super-sport-zeleno', '2024-05-07 13:21:32', NULL, 1),
(355, 'https://www.hippoland.net/akumulatoren-dzhip-mercedes-eqg-black', '2024-05-07 13:21:33', NULL, 1),
(356, 'https://www.hippoland.net/akumulatorno-bagi-can-am-maverick-green', '2024-05-07 13:21:34', NULL, 1),
(357, 'https://www.hippoland.net/akumulatoren-motor-vespa-sprint-white', '2024-05-07 13:21:35', NULL, 1),
(358, 'https://www.hippoland.net/akumulatoren-motor-vespa-px150-pink-big', '2024-05-07 13:21:36', NULL, 1),
(359, 'https://www.hippoland.net/akumulatoren-motor-aprilia-tuono-v4-black-grey', '2024-05-07 13:21:37', NULL, 1),
(360, 'https://www.hippoland.net/akumulatoren-dzhip-traveller-black', '2024-05-07 13:21:39', NULL, 1),
(361, 'https://www.hippoland.net/akumulatorna-kola-bentley-bacalar-black', '2024-05-07 13:21:40', NULL, 1),
(362, 'https://www.hippoland.net/akumulatoren-dzhip-toyota-land-cruiser-siv', '2024-05-07 13:21:41', NULL, 1),
(363, 'https://www.hippoland.net/akumulatoren-dzhip-toyota-land-cruiser-rozov', '2024-05-07 13:21:41', NULL, 1),
(364, 'https://www.hippoland.net/akumulatoren-dzhip-toyota-land-cruiser-cherven', '2024-05-07 13:21:42', NULL, 1),
(365, 'https://www.hippoland.net/akumulatoren-dzhip-toyota-land-cruiser-cheren', '2024-05-07 13:21:43', NULL, 1),
(366, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-chevrolet-dvumesten-cheren', '2024-05-07 13:21:44', NULL, 1),
(367, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-chevrolet-dvumesten-siv', '2024-05-07 13:21:45', NULL, 1),
(368, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-chevrolet-dvumesten-cherven', '2024-05-07 13:21:46', NULL, 1),
(369, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-audi-rs-etron-gt-s-kozhena-sedalka-i-roditelski-kontrol-byala', '2024-05-07 13:21:47', NULL, 1),
(370, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-audi-rs-etron-gt-s-kozhena-sedalka-i-roditelski-kontrol-sinya', '2024-05-07 13:21:48', NULL, 1),
(371, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-audi-rs-etron-gt-s-kozhena-sedalka-i-roditelski-kontrol-chervena', '2024-05-07 13:21:48', NULL, 1),
(372, 'https://www.hippoland.net/chipolino-akumulatoren-dzhip-za-dve-detsa-police-byal', '2024-05-07 13:21:50', NULL, 1),
(373, 'https://www.hippoland.net/ocie-traktor-akumulatoren-12v-s-roditelski-kontrol-cherven', '2024-05-07 13:21:50', NULL, 1),
(374, 'https://www.hippoland.net/ocie-traktor-akumulatoren-s-remarke-12v-s-roditelski-kontrol-zelen', '2024-05-07 13:21:51', NULL, 1),
(375, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-bmw-s-roditelski-kontrol-cherna', '2024-05-07 13:21:52', NULL, 1),
(376, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-bmw-s-roditelski-kontrol-byala', '2024-05-07 13:21:53', NULL, 1),
(377, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-bmw-s-roditelski-kontrol-chervena', '2024-05-07 13:21:54', NULL, 1),
(378, 'https://www.hippoland.net/chipolino-akumulatoren-motor-2-mesta-duo-tron-cherven', '2024-05-07 13:21:55', NULL, 1),
(379, 'https://www.hippoland.net/akumulatoren-motor-vespa-gts-super-sport-cherven-110343', '2024-05-07 13:21:56', NULL, 1),
(380, 'https://www.hippoland.net/akumulatoren-motor-vespa-gts-super-sport-rozov-110342', '2024-05-07 13:21:57', NULL, 1),
(381, 'https://www.hippoland.net/chipolino-akumulatoren-dzhip-patrul-cherven-eljppl0233r', '2024-05-07 13:21:58', NULL, 1),
(382, 'https://www.hippoland.net/chipolino-akumulatoren-dzhip-patrul-cheren-eljppl0232b', '2024-05-07 13:21:59', NULL, 1),
(383, 'https://www.hippoland.net/chipolino-akumulatoren-dzhip-patrul-byal-eljppl0231w', '2024-05-07 13:22:00', NULL, 1),
(384, 'https://www.hippoland.net/chipolino-akumulatoren-motor-lumix-byal-elmlu0232wh', '2024-05-07 13:22:01', NULL, 1),
(385, 'https://www.hippoland.net/chipolino-akumulatoren-motor-lumix-cherven-elmlu0231re', '2024-05-07 13:22:02', NULL, 1),
(386, 'https://www.hippoland.net/akumulatorna-kola-fiat-500-byala-elkfiat23wh', '2024-05-07 13:22:03', NULL, 1),
(387, 'https://www.hippoland.net/akumulatorna-kola-fiat-500-chervena-elkfiat23re', '2024-05-07 13:22:04', NULL, 1),
(388, 'https://www.hippoland.net/akumulatorna-kola-fiat-500-rozova-elkfiat23pi', '2024-05-07 13:22:51', NULL, 1),
(389, 'https://www.hippoland.net/akumulatorna-kola-fiat-500-sinya-elkfiat23bl', '2024-05-07 13:22:52', NULL, 1),
(390, 'https://www.hippoland.net/akumulatoren-samosval-cat-zhalt-elcatdt0231y', '2024-05-07 13:22:53', NULL, 1),
(391, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-heat-super-s-roditelski-kontrol-byal-2270009-4r-w', '2024-05-07 13:22:54', NULL, 1),
(392, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-heat-super-spider-s-roditelski-kontrol-cherven-2270009-4r-r', '2024-05-07 13:22:55', NULL, 1),
(393, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-heat-graffiti-s-roditelski-kontrol-2270009-4r-g', '2024-05-07 13:22:56', NULL, 1),
(394, 'https://www.hippoland.net/ocie-motor-akumulatoren-6v-ducati-scrambler-byal-8892', '2024-05-07 13:22:56', NULL, 1),
(395, 'https://www.hippoland.net/chipolino-akumulatoren-motor-2-mesta-duo-tron-cheren-elmdt02302bk', '2024-05-07 13:22:57', NULL, 1),
(396, 'https://www.hippoland.net/chipolino-akumulatoren-motor-2-mesta-duo-tron-byal-elmdt02301wh', '2024-05-07 13:22:58', NULL, 1),
(397, 'https://www.hippoland.net/akumulatoren-motor-vespa-gts-super-sport-zelen-110010', '2024-05-07 13:22:59', NULL, 1),
(398, 'https://www.hippoland.net/akumulatoren-motor-vespa-gts-super-sport-byal-110009', '2024-05-07 13:23:00', NULL, 1),
(399, 'https://www.hippoland.net/akumulatoren-dzhip-mercedes-benz-g63-amg-cheren-eljg63mb23b', '2024-05-07 13:23:01', NULL, 1),
(400, 'https://www.hippoland.net/akumulatoren-dzhip-mercedes-benz-g63-amg-cherven-eljg63mb22r', '2024-05-07 13:23:02', NULL, 1),
(401, 'https://www.hippoland.net/akumulatoren-dzhip-mercedes-benz-g63-amg-byal-eljg63mb21w', '2024-05-07 13:23:03', NULL, 1),
(402, 'https://www.hippoland.net/akumulatoren-dzhip-mercedes-maybach-g650-cheren-eeljmag6501b', '2024-05-07 13:23:04', NULL, 1),
(403, 'https://www.hippoland.net/akumulatorna-kola-mercedes-benz-gla45-chervena-elkmbgla22r', '2024-05-07 13:23:04', NULL, 1),
(404, 'https://www.hippoland.net/ocie-motor-akumulatoren-12v-super-moto-turbo-cheren-2640001-3', '2024-05-07 13:23:05', NULL, 1),
(405, 'https://www.hippoland.net/ocie-motor-akumulatoren-12v-super-moto-turbo-byal-2640001-3', '2024-05-07 13:23:05', NULL, 1),
(406, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-audi-rs-e-tron-gt-s-roditelski-kontrol-cherno-8690023r', '2024-05-07 13:23:06', NULL, 1),
(407, 'https://www.hippoland.net/akumulatorna-kola-lamborghini-huracan-rozova-elklahu24pi', '2024-05-07 13:23:07', NULL, 1),
(408, 'https://www.hippoland.net/akumulatorna-kola-lamborghini-huracan-zhalta-elklahu23ye', '2024-05-07 13:23:08', NULL, 1),
(409, 'https://www.hippoland.net/akumulatorna-kola-lamborghini-huracan-chervena-elklahu22re', '2024-05-07 13:23:09', NULL, 1),
(410, 'https://www.hippoland.net/akumulatoren-dzhip-za-dve-detsa-mercedes-cheren-eljmbamg23b', '2024-05-07 13:23:10', NULL, 1),
(411, 'https://www.hippoland.net/akumulatoren-dzhip-za-dve-detsa-mercedes-byal-eljmbamg21w', '2024-05-07 13:23:11', NULL, 1),
(412, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-dirt-rider-s-roditelski-kontrol-cherven-2140005-2r', '2024-05-07 13:23:11', NULL, 1),
(413, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-dirt-rider-s-roditelski-kontrol-sin-2140005-2r', '2024-05-07 13:23:12', NULL, 1),
(414, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-speed-super-car-s-roditelski-kontrol-politsiya-3930053-2r', '2024-05-07 13:23:13', NULL, 1),
(415, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-speed-super-car-s-roditelski-kontrol-cherven-3930053-2r', '2024-05-07 13:23:14', NULL, 1),
(416, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-with-eyes-s-roditelski-kontrol-byala-3510019-2r', '2024-05-07 13:23:15', NULL, 1),
(417, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-s-roditelski-kontrol-super-byal-3510016-2r', '2024-05-07 13:23:16', NULL, 1),
(418, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-power-s-roditelski-kontrol-zelena-3470020-2r', '2024-05-07 13:23:16', NULL, 1),
(419, 'https://www.hippoland.net/ocie-kola-akumulatorna-12v-power-s-roditelski-kontrol-chervena-3470020-2r', '2024-05-07 13:23:17', NULL, 1),
(420, 'https://www.hippoland.net/akumulatorno-atv-honda-cherveno-1043001-0001', '2024-05-07 13:23:18', NULL, 1),
(421, 'https://www.hippoland.net/ocie-akumulatoren-motor-12v4-5ah-xjr-134x70x75-siv-3530140-3b', '2024-05-07 13:23:19', NULL, 1),
(422, 'https://www.hippoland.net/ocie-akumulatoren-motor-12v4-5ah-xjr-134x70x75-cherven-3530140-3b', '2024-05-07 13:23:20', NULL, 1),
(423, 'https://www.hippoland.net/chipolino-akumulatoren-motor-v-sport-byal-elmvs0222wh', '2024-05-07 13:23:21', NULL, 1),
(424, 'https://www.hippoland.net/chipolino-akumulatoren-motor-maks-raydar-cherven-elmmr0221bk', '2024-05-07 13:23:22', NULL, 1),
(425, 'https://www.hippoland.net/chipolino-akumulatoren-motor-maks-raydar-cheren-elmmr0221bk', '2024-05-07 13:23:23', NULL, 1),
(426, 'https://www.hippoland.net/ocie-akumulatorno-atv-12v-fx-ready-cherveno-118x76x73-8780073a', '2024-05-07 13:23:23', NULL, 1),
(427, 'https://www.hippoland.net/ocie-akumulatorno-atv-12v-fx-ready-cherno-118x76x73-8780073a', '2024-05-07 13:23:24', NULL, 1);
INSERT INTO `parsed_log` (`id`, `url`, `created_at`, `updated_at`, `client_id`) VALUES
(428, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-land-rover-defender-s-roditelski-kontrol-zelen-oc182-2br', '2024-05-07 13:23:25', NULL, 1),
(429, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-land-rover-defender-s-roditelski-kontrol-byal-oc182-2br', '2024-05-07 13:23:26', NULL, 1),
(430, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-land-rover-defender-s-roditelski-kontrol-cherven-oc182-2br', '2024-05-07 13:23:26', NULL, 1),
(431, 'https://www.hippoland.net/chipolino-akumulatorna-kola-12v-rapid-byala-elkra0211wh', '2024-05-07 13:23:27', NULL, 1),
(432, 'https://www.hippoland.net/chipolino-akumulatorna-kola-12v-rapid-chervena-elkra0212re', '2024-05-07 13:23:28', NULL, 1),
(433, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-nn63-6v-byala-3800010-2r', '2024-05-07 13:23:29', NULL, 1),
(434, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-nn63-6v-zhalta-3800010-2r', '2024-05-07 13:23:30', NULL, 1),
(435, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-nn63-6v-chervena-3800010-2r', '2024-05-07 13:23:30', NULL, 1),
(436, 'https://www.hippoland.net/chipolino-akumulatorno-bagi-speed-cherven-elbsp0213re', '2024-05-07 13:23:31', NULL, 1),
(437, 'https://www.hippoland.net/chipolino-akumulatoren-motor-chopar-byal-elmch0212re', '2024-05-07 13:23:32', NULL, 1),
(438, 'https://www.hippoland.net/chipolino-akumulatoren-motor-chopar-cherven-elmch0212re', '2024-05-07 13:23:33', NULL, 1),
(439, 'https://www.hippoland.net/chipolino-akumulatoren-motor-sportmax-cherven-elmsm0213re', '2024-05-07 13:23:34', NULL, 1),
(440, 'https://www.hippoland.net/chipolino-akumulatoren-motor-sportmax-cheren-elmsm0212bk', '2024-05-07 13:23:35', NULL, 1),
(441, 'https://www.hippoland.net/chipolino-akumulatoren-motor-sportmax-byal-elmsm0211wh', '2024-05-07 13:23:36', NULL, 1),
(442, 'https://www.hippoland.net/chipolino-akumulatoren-motor-politsiya-byal-elmpo0211wh', '2024-05-07 13:23:38', NULL, 1),
(443, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-super-car-s-roditelski-kontrol-byal-3790007-2r', '2024-05-07 13:23:38', NULL, 1),
(444, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-super-car-s-roditelski-kontrol-cherven-3790007-2r', '2024-05-07 13:23:39', NULL, 1),
(445, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-utv-sport-s-roditelski-kontrol-sin-3920005-2r', '2024-05-07 13:23:40', NULL, 1),
(446, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-utv-sport-s-roditelski-kontrol-cherven-3920005-2r', '2024-05-07 13:23:41', NULL, 1),
(447, 'https://www.hippoland.net/chipolino-akumulatorna-kola-vaypar-byala-elkvi0211wh-131385', '2024-05-07 13:23:41', NULL, 1),
(448, 'https://www.hippoland.net/chipolino-akumulatoren-dzhip-12v-mercedes-maybach-g650-cherven-eljmag6503r', '2024-05-07 13:23:42', NULL, 1),
(449, 'https://www.hippoland.net/moni-akumulatorna-kola-12v-magma-chervena-107162', '2024-05-07 13:23:43', NULL, 1),
(450, 'https://www.hippoland.net/moni-akumulatorna-kola-12v-magma-sinya-107161', '2024-05-07 13:23:44', NULL, 1),
(451, 'https://www.hippoland.net/moni-akumulatorna-kola-12v-magma-byala-107160', '2024-05-07 13:23:45', NULL, 1),
(452, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-mercedes-benz-g500-s-roditelski-kontrol-byal-8010268-2r', '2024-05-07 13:23:45', NULL, 1),
(453, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-mercedes-benz-g500-s-roditelski-kontrol-cheren-8010268-2r', '2024-05-07 13:23:46', NULL, 1),
(454, 'https://www.hippoland.net/ocie-dzhip-akumulatoren-12v-utv-s-roditelski-kontrol-cherven-8040294r', '2024-05-07 13:23:47', NULL, 1),
(455, 'https://www.hippoland.net/chipolino-akumulatorna-kola-lamborghini-aventador-bjal-123971', '2024-05-07 13:23:48', NULL, 1),
(456, 'https://www.hippoland.net/ocie-akumulatorno-bagi-12v-desert-byalo-8610020', '2024-05-07 13:23:49', NULL, 1),
(457, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-6v-audi-tt-bjal-8010244ar', '2024-05-07 13:23:50', NULL, 1),
(458, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-6v-audi-tt-sin-8010244ar', '2024-05-07 13:23:50', NULL, 1),
(459, 'https://www.hippoland.net/ocie-akumulatorna-kola-s-roditelski-kontrol-6v-audi-tt-cherven-8010244ar', '2024-05-07 13:23:51', NULL, 1),
(460, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-viola-black', '2024-05-07 13:25:25', NULL, 1),
(461, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-black', '2024-05-07 13:25:26', NULL, 1),
(462, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-light-mint', '2024-05-07 13:25:26', NULL, 1),
(463, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-pink', '2024-05-07 13:25:26', NULL, 1),
(464, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-siena-dark-mint', '2024-05-07 13:25:27', NULL, 1),
(465, 'https://www.hippoland.net/kikka-boo-chanta-za-aksesoari-maxi-dark-grey', '2024-05-07 13:25:27', NULL, 1),
(466, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-zoe-dark-grey', '2024-05-07 13:25:27', NULL, 1),
(467, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-cherna', '2024-05-07 13:25:28', NULL, 1),
(468, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-moss-green-melange', '2024-05-07 13:25:28', NULL, 1),
(469, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-navy', '2024-05-07 13:25:28', NULL, 1),
(470, 'https://www.hippoland.net/moon-chanta-ranitsa-za-aksesoari-anthrazit', '2024-05-07 13:25:29', NULL, 1),
(471, 'https://www.hippoland.net/moon-chanta-za-aksesoari-navy', '2024-05-07 13:25:29', NULL, 1),
(472, 'https://www.hippoland.net/moon-chanta-za-aksesoari-anthrazit', '2024-05-07 13:25:29', NULL, 1),
(473, 'https://www.hippoland.net/moon-chanta-za-aksesoari-mud-melange', '2024-05-07 13:25:30', NULL, 1),
(474, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-stone-grey', '2024-05-07 13:25:30', NULL, 1),
(475, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-pebble-grey', '2024-05-07 13:25:30', NULL, 1),
(476, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-concrete-melange', '2024-05-07 13:25:30', NULL, 1),
(477, 'https://www.hippoland.net/mutsy-chanta-za-kolichka-evo-infinite-sand', '2024-05-07 13:25:31', NULL, 1),
(478, 'https://www.hippoland.net/mutsy-chanta-nio-shade', '2024-05-07 13:25:31', NULL, 1),
(479, 'https://www.hippoland.net/mutsy-chanta-nio-sea-green', '2024-05-07 13:25:31', NULL, 1),
(480, 'https://www.hippoland.net/mutsy-chanta-nio-pine-green', '2024-05-07 13:25:32', NULL, 1),
(481, 'https://www.hippoland.net/mutsy-chanta-nio-north-black', '2024-05-07 13:25:32', NULL, 1),
(482, 'https://www.hippoland.net/mutsy-chanta-nio-cosmic-sand', '2024-05-07 13:25:32', NULL, 1),
(483, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-aria-black', '2024-05-07 13:25:33', NULL, 1),
(484, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-aria-grey', '2024-05-07 13:25:33', NULL, 1),
(485, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-black-1004020-2305', '2024-05-07 13:25:33', NULL, 1),
(486, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-grey-1004020-2302', '2024-05-07 13:25:34', NULL, 1),
(487, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-mint-31108020072', '2024-05-07 13:25:34', NULL, 1),
(488, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-black-31108020073', '2024-05-07 13:25:34', NULL, 1),
(489, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-beige-31108020074', '2024-05-07 13:25:35', NULL, 1),
(490, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-nia-pink-31108020071', '2024-05-07 13:25:35', NULL, 1),
(491, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-keily-cherna-109990', '2024-05-07 13:25:35', NULL, 1),
(492, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-keily-siva-109991', '2024-05-07 13:25:36', NULL, 1),
(493, 'https://www.hippoland.net/baby-monsters-chanta-kosh-za-pazaruvane-za-easy-twin-cherna-monbshbagbmt4sb', '2024-05-07 13:25:36', NULL, 1),
(494, 'https://www.hippoland.net/baby-monsters-chanta-za-bagazh-za-kolichka-easy-twin-kozha-cherna-monbmbm70001l', '2024-05-07 13:25:36', NULL, 1),
(495, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-pyasak-chraf02303sa', '2024-05-07 13:25:36', NULL, 1),
(496, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-grafit-chraf02302gt', '2024-05-07 13:25:37', NULL, 1),
(497, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-abanos-chraf02301eb', '2024-05-07 13:25:37', NULL, 1),
(498, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-ella-beige-31108020077', '2024-05-07 13:25:37', NULL, 1),
(499, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-ella-grey-31108020076', '2024-05-07 13:25:38', NULL, 1),
(500, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-beige-31108020070', '2024-05-07 13:25:38', NULL, 1),
(501, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-grey-31108020069', '2024-05-07 13:25:38', NULL, 1),
(502, 'https://www.hippoland.net/kikka-boo-chanta-ranitsa-za-kolichka-vienne-black-31108020068', '2024-05-07 13:25:39', NULL, 1),
(503, 'https://www.hippoland.net/kikka-boo-chanta-za-aksesoari-maxi-mint-31108020066', '2024-05-07 13:25:39', NULL, 1),
(504, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-zoe-mint-31108020081', '2024-05-07 13:25:39', NULL, 1),
(505, 'https://www.hippoland.net/kikka-boo-chanta-za-kolichka-chelsea-dots-grey-31108020078', '2024-05-07 13:25:40', NULL, 1),
(506, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-sinya-108363', '2024-05-07 13:25:40', NULL, 1),
(507, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-rozova-108361', '2024-05-07 13:25:40', NULL, 1),
(508, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-bezhova-108360', '2024-05-07 13:25:41', NULL, 1),
(509, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-candy-pink-1004020-2189', '2024-05-07 13:25:41', NULL, 1),
(510, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-alba-jeans-blue-1004020-2188', '2024-05-07 13:25:41', NULL, 1),
(511, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-platina-chraf02107pl', '2024-05-07 13:25:42', NULL, 1),
(512, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-sinya-108359', '2024-05-07 13:25:42', NULL, 1),
(513, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-rozova-108357', '2024-05-07 13:25:43', NULL, 1),
(514, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-bezh-108356', '2024-05-07 13:25:43', NULL, 1),
(515, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-dark-grey-31108020060', '2024-05-07 13:25:43', NULL, 1),
(516, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-black-31108020059', '2024-05-07 13:25:44', NULL, 1),
(517, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-black-31108020056', '2024-05-07 13:25:44', NULL, 1),
(518, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-blue-grey-1004026-0008', '2024-05-07 13:25:44', NULL, 1),
(519, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-pink-grey-1004026-0007', '2024-05-07 13:25:44', NULL, 1),
(520, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-pink-31108020044', '2024-05-07 13:25:45', NULL, 1),
(521, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-mint-31108020046', '2024-05-07 13:25:45', NULL, 1),
(522, 'https://www.hippoland.net/kikkaboo-prenosimo-leglo-ranitsa-2v1-bear-grey-31108020045', '2024-05-07 13:25:45', NULL, 1),
(523, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-blue-grey-1004008-0008', '2024-05-07 13:25:46', NULL, 1),
(524, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-pink-grey-1004008-0007', '2024-05-07 13:25:46', NULL, 1),
(525, 'https://www.hippoland.net/lorelli-classic-chanta-za-kolichka-beige-1004008-0006', '2024-05-07 13:25:46', NULL, 1),
(526, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-cherna-kozha-chraf02105bl', '2024-05-07 13:25:47', NULL, 1),
(527, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-viola-grey-1004028-0001', '2024-05-07 13:25:47', NULL, 1),
(528, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-kristin-black-1004027-0002', '2024-05-07 13:25:47', NULL, 1),
(529, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-kristin-grey-1004027-0001', '2024-05-07 13:25:48', NULL, 1),
(530, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-black-1004026-0002', '2024-05-07 13:25:48', NULL, 1),
(531, 'https://www.hippoland.net/lorelli-classic-chanta-ranitsa-za-aksesoari-tina-grey-1004026-0001', '2024-05-07 13:25:48', NULL, 1),
(532, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-maya-beige-1004025-0003', '2024-05-07 13:25:48', NULL, 1),
(533, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-maya-grey-1004025-0001', '2024-05-07 13:25:49', NULL, 1),
(534, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-laura-black-1004024-0002', '2024-05-07 13:25:49', NULL, 1),
(535, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-laura-grey-1004024-0001', '2024-05-07 13:25:49', NULL, 1),
(536, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-black-silver-31108020034', '2024-05-07 13:25:50', NULL, 1),
(537, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-black-gold-31108020020', '2024-05-07 13:25:50', NULL, 1),
(538, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-megan-siva-108358', '2024-05-07 13:25:50', NULL, 1),
(539, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-naomi-siva-108363', '2024-05-07 13:25:51', NULL, 1),
(540, 'https://www.hippoland.net/kikkaboo-organayzer-za-chanta-maxi-beige-31108020048', '2024-05-07 13:25:51', NULL, 1),
(541, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-black-31108020041', '2024-05-07 13:25:52', NULL, 1),
(542, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-beige-31108020040', '2024-05-07 13:25:52', NULL, 1),
(543, 'https://www.hippoland.net/kikkaboo-chanta-za-aksesoari-maxi-grey-31108020039', '2024-05-07 13:25:52', NULL, 1),
(544, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-cheren', '2024-05-07 13:25:53', NULL, 1),
(545, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-bezhov', '2024-05-07 13:25:53', NULL, 1),
(546, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-lydia-denim', '2024-05-07 13:25:53', NULL, 1),
(547, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-cherna-107961', '2024-05-07 13:25:53', NULL, 1),
(548, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-siva-107960', '2024-05-07 13:25:54', NULL, 1),
(549, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-jossie-bezhova-107959', '2024-05-07 13:25:54', NULL, 1),
(550, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-cherna-107585', '2024-05-07 13:25:54', NULL, 1),
(551, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-tamno-siv-107584', '2024-05-07 13:25:55', NULL, 1),
(552, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-sandra-black-grey-1004022-0005', '2024-05-07 13:25:55', NULL, 1),
(553, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-sandra-light-dark-grey-1004022-0004', '2024-05-07 13:25:55', NULL, 1),
(554, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-sinya', '2024-05-07 13:25:56', NULL, 1),
(555, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-kafyava', '2024-05-07 13:25:56', NULL, 1),
(556, 'https://www.hippoland.net/moni-chanta-za-kolichka-k-kt-5v1-stella-rozova', '2024-05-07 13:25:56', NULL, 1),
(557, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-light-grey-31108020026', '2024-05-07 13:25:57', NULL, 1),
(558, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-caira-dark-grey-31108020028', '2024-05-07 13:25:57', NULL, 1),
(559, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-light-grey-31108020031', '2024-05-07 13:25:57', NULL, 1),
(560, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-blue-31108020033', '2024-05-07 13:25:57', NULL, 1),
(561, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-zoe-beige-31108020032', '2024-05-07 13:25:58', NULL, 1),
(562, 'https://www.hippoland.net/mountain-buggy-dvoyna-chanta-cherna-0240', '2024-05-07 13:25:58', NULL, 1),
(563, 'https://www.hippoland.net/canpol-ranitsa-za-kolichka-lady-mum-chervena-50-101', '2024-05-07 13:25:58', NULL, 1),
(564, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-capacity-camel-1004017-0003', '2024-05-07 13:25:59', NULL, 1),
(565, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-tote-camel-1004014-0003', '2024-05-07 13:25:59', NULL, 1),
(566, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termodzhob-basic-black-1004013-0002', '2024-05-07 13:25:59', NULL, 1),
(567, 'https://www.hippoland.net/lorelli-qplay-chanta-za-kolichka-s-termoizolator-fashion-black-1004011-0002', '2024-05-07 13:26:00', NULL, 1),
(568, 'https://www.hippoland.net/cangaroo-chanta-ranitsa-za-kolichka-amelia-bezhov', '2024-05-07 13:26:00', NULL, 1),
(569, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-beige-31108020025', '2024-05-07 13:26:00', NULL, 1),
(570, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-navy-31108020024', '2024-05-07 13:26:01', NULL, 1),
(571, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-light-blue-31108020022', '2024-05-07 13:26:01', NULL, 1),
(572, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-brown-31108020022', '2024-05-07 13:26:01', NULL, 1),
(573, 'https://www.hippoland.net/kikkaboo-chanta-ranitsa-za-kolichka-siena-grey-31108020021', '2024-05-07 13:26:02', NULL, 1),
(574, 'https://www.hippoland.net/mountain-buggy-universalni-halki-za-prikrepyane-na-chanta-za-kolichka-0247', '2024-05-07 13:26:02', NULL, 1),
(575, 'https://www.hippoland.net/kikkaboo-chanta-za-kolichka-uni-beige-melange-31108020015', '2024-05-07 13:26:02', NULL, 1),
(576, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-bella-106936', '2024-05-07 13:26:02', NULL, 1),
(577, 'https://www.hippoland.net/chipolino-chanta-ranitsa-za-kolichka-frape-denim-chra01804df', '2024-05-07 13:26:03', NULL, 1),
(578, 'https://www.hippoland.net/babyhome-termoanta', '2024-05-07 13:26:03', NULL, 1),
(579, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-special-bezhov', '2024-05-07 13:26:03', NULL, 1),
(580, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-miranda-cheren-beli-tochki', '2024-05-07 13:26:04', NULL, 1),
(581, 'https://www.hippoland.net/maclaren-chanta-za-kolichka-denim-flag', '2024-05-07 13:26:04', NULL, 1),
(582, 'https://www.hippoland.net/lorelli-classic-chanta-za-aksesoari-blue-1004008-1646', '2024-05-07 13:26:04', NULL, 1),
(583, 'https://www.hippoland.net/cangaroo-chanta-za-kolichka-maraya-bezhov-106899', '2024-05-07 13:26:05', NULL, 1),
(584, 'https://www.hippoland.net/maclaren-chanta-za-kolichka-universal-pannier', '2024-05-07 13:26:05', NULL, 1),
(585, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-cup-stainless-tyurkoaz', '2024-05-07 13:28:26', NULL, 1),
(586, 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-mecho-puh', '2024-05-07 13:28:27', NULL, 1),
(587, 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-stanless-500-ml-12-mesetsa-lilava', '2024-05-07 13:28:28', NULL, 1),
(588, 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-stanless-500-ml-12-mesetsa-zelena', '2024-05-07 13:28:29', NULL, 1),
(589, 'https://www.hippoland.net/nuk-chasha-mini-me-sip-stanless-300-ml-9-mesetsa-lilava', '2024-05-07 13:28:30', NULL, 1),
(590, 'https://www.hippoland.net/nuk-chasha-mini-me-sip-stanless-300-ml-9-mesetsa-bezhova', '2024-05-07 13:28:31', NULL, 1),
(591, 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-pp-450-ml-12-mesetsa-lilava', '2024-05-07 13:28:32', NULL, 1),
(592, 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-pp-450-ml-12-mesetsa-zelena', '2024-05-07 13:28:33', NULL, 1),
(593, 'https://www.hippoland.net/nuk-chasha-mini-me-sip-pp-300-ml-9-mesetsa-rozova-s-peperuda', '2024-05-07 13:28:34', NULL, 1),
(594, 'https://www.hippoland.net/nuk-chasha-mini-me-sip-pp-300-ml-9-mesetsa-zelena-s-pchela', '2024-05-07 13:28:34', NULL, 1),
(595, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-lilava', '2024-05-07 13:28:35', NULL, 1),
(596, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-zelena', '2024-05-07 13:28:36', NULL, 1),
(597, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-oranzheva', '2024-05-07 13:28:37', NULL, 1),
(598, 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-mickey-glow', '2024-05-07 13:28:38', NULL, 1),
(599, 'https://www.hippoland.net/nuk-fc-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-mickey-glow', '2024-05-07 13:28:39', NULL, 1),
(600, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-zelena-1023056-0003', '2024-05-07 13:28:40', NULL, 1),
(601, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-rozova-1023056-0002', '2024-05-07 13:28:41', NULL, 1),
(602, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-sinya-1023056-0001', '2024-05-07 13:28:42', NULL, 1),
(603, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-zelena-1023055-0003', '2024-05-07 13:28:42', NULL, 1),
(604, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-rozova-1023055-0002', '2024-05-07 13:28:43', NULL, 1),
(605, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-sinya-1023055-0001', '2024-05-07 13:28:44', NULL, 1),
(606, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-zelena-1020093-0003', '2024-05-07 13:28:45', NULL, 1),
(607, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-rozova-1020093-0002', '2024-05-07 13:28:46', NULL, 1),
(608, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-sinya-1020093-0001', '2024-05-07 13:28:47', NULL, 1),
(609, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-zelena-1020092-0003', '2024-05-07 13:28:48', NULL, 1),
(610, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-rozova-1020092-0002', '2024-05-07 13:28:49', NULL, 1),
(611, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-sinya-1020092-0001', '2024-05-07 13:28:50', NULL, 1),
(612, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-zelena-1020091-0003', '2024-05-07 13:28:51', NULL, 1),
(613, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-rozova-1020091-0002', '2024-05-07 13:28:52', NULL, 1),
(614, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-sinya-1020091-0001', '2024-05-07 13:28:53', NULL, 1),
(615, 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-siva-1023054-0003', '2024-05-07 13:28:54', NULL, 1),
(616, 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-rozova-1023054-0002', '2024-05-07 13:28:55', NULL, 1),
(617, 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-sinya-1023054-0001', '2024-05-07 13:28:56', NULL, 1),
(618, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-catanddog-10255684', '2024-05-07 13:28:57', NULL, 1),
(619, 'https://www.hippoland.net/nuk-fc-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-catanddog-10215032', '2024-05-07 13:28:58', NULL, 1),
(620, 'https://www.hippoland.net/avent-trenirovachno-shishe-natural-response-za-prehod-kam-chasha-00a-0467-003', '2024-05-07 13:28:59', NULL, 1),
(621, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-tvard-nakraynik-390-ml-12-m-bacshield-oranzheva-tt-0228', '2024-05-07 13:29:00', NULL, 1),
(622, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-tvard-nakraynik-390-ml-12-m-bacshield-zhalta-tt-0227', '2024-05-07 13:29:01', NULL, 1),
(623, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-266-ml-12-m-bacshield-chervena-tt-0226', '2024-05-07 13:29:02', NULL, 1),
(624, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-266-ml-12-m-bacshield-zelena-tt-0225', '2024-05-07 13:29:03', NULL, 1),
(625, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-266-ml-12-m-bacshield-rozova-tt-0224', '2024-05-07 13:29:04', NULL, 1),
(626, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-300-ml-6-m-bacshield-zhalta-tt-0223', '2024-05-07 13:29:05', NULL, 1),
(627, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-300-ml-6-m-bacshield-zelena-tt-0222', '2024-05-07 13:29:06', NULL, 1),
(628, 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-mek-nakraynik-300-ml-6-m-bacshield-rozova-tt-0221', '2024-05-07 13:29:07', NULL, 1),
(629, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-190-ml-4-m-bacshield-zelena-tt-0220', '2024-05-07 13:29:08', NULL, 1),
(630, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-190-ml-4-m-bacshield-zhalta-tt-0219', '2024-05-07 13:29:09', NULL, 1),
(631, 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-mint-31302030062', '2024-05-07 13:29:10', NULL, 1),
(632, 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-blue-31302030063', '2024-05-07 13:29:11', NULL, 1),
(633, 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-pink-31302030061', '2024-05-07 13:29:12', NULL, 1),
(634, 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-siva-56-522-gry', '2024-05-07 13:29:13', NULL, 1),
(635, 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-rozova-56-522-pin', '2024-05-07 13:29:14', NULL, 1),
(636, 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-zhalta-56-522-yel', '2024-05-07 13:29:15', NULL, 1),
(637, 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-150-ml-bonjour-paris-sinya-56-612-blu', '2024-05-07 13:29:16', NULL, 1),
(638, 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-150-ml-bonjour-paris-rozova-56-612-pin', '2024-05-07 13:29:17', NULL, 1),
(639, 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-250-ml-bonjour-paris-rozova-56-613-pin', '2024-05-07 13:29:18', NULL, 1),
(640, 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-250-ml-bonjour-paris-sinya-56-613-blu', '2024-05-07 13:29:19', NULL, 1),
(641, 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-krem-10215368', '2024-05-07 13:29:20', NULL, 1),
(642, 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-zelena-10215369', '2024-05-07 13:29:21', NULL, 1),
(643, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-bambi-10255649', '2024-05-07 13:29:22', NULL, 1),
(644, 'https://www.hippoland.net/nuk-chasha-sas-slamka-230-ml-8-m-motion-cup-zelena-10255640', '2024-05-07 13:29:23', NULL, 1),
(645, 'https://www.hippoland.net/nuk-chasha-sas-slamka-230-ml-8-m-motion-cup-zhalta-10255641', '2024-05-07 13:29:24', NULL, 1),
(646, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-bambi-10743313', '2024-05-07 13:29:25', NULL, 1),
(647, 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-zhalta-10255601', '2024-05-07 13:29:26', NULL, 1),
(648, 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-rozova-10255600', '2024-05-07 13:29:27', NULL, 1),
(649, 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-zelena-10255599', '2024-05-07 13:29:28', NULL, 1),
(650, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-neutral-10255610', '2024-05-07 13:29:29', NULL, 1),
(651, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-svetlo-rozova-10255609', '2024-05-07 13:29:30', NULL, 1),
(652, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-svetlo-sinya-10255608', '2024-05-07 13:29:31', NULL, 1),
(653, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-mickey-grey-10215337', '2024-05-07 13:29:32', NULL, 1),
(654, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-minnie-red-10215336', '2024-05-07 13:29:33', NULL, 1),
(655, 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-10743927', '2024-05-07 13:29:34', NULL, 1),
(656, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-lion-king-10215364', '2024-05-07 13:29:35', NULL, 1),
(657, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-lion-king-10255643', '2024-05-07 13:29:36', NULL, 1),
(658, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-360-250ml-12m-sinya-tt-0194-002', '2024-05-07 13:29:37', NULL, 1),
(659, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-360-250ml-12m-zelena-tt-0194-001', '2024-05-07 13:29:38', NULL, 1),
(660, 'https://www.hippoland.net/tommee-tippee-super-chasha-ne-se-preobrashta-lesno-se-vdiga-190-ml-6m-lilava-tt-0144-001', '2024-05-07 13:29:39', NULL, 1),
(661, 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-wild-soul-boy-1-605', '2024-05-07 13:29:40', NULL, 1),
(662, 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-wild-soul-girl-1-604', '2024-05-07 13:29:41', NULL, 1),
(663, 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-i-love-kafyav-1-607', '2024-05-07 13:29:42', NULL, 1),
(664, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-mint-green-1020077-0004', '2024-05-07 13:29:43', NULL, 1),
(665, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-blush-pink-1020077-0002', '2024-05-07 13:29:44', NULL, 1),
(666, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-moonlight-blue-1020077-0001', '2024-05-07 13:29:45', NULL, 1),
(667, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-mint-green-1020074-0004', '2024-05-07 13:29:46', NULL, 1),
(668, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-blush-pink-1020074-0002', '2024-05-07 13:29:47', NULL, 1),
(669, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-moonlight-blue-1020074-0001', '2024-05-07 13:29:48', NULL, 1),
(670, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-mint-green-1020073-0004', '2024-05-07 13:29:49', NULL, 1),
(671, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-blush-pink-1020073-0002', '2024-05-07 13:29:50', NULL, 1),
(672, 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-moonlight-blue-1020073-0001', '2024-05-07 13:29:51', NULL, 1),
(673, 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-24-m-sports-cup-mickey-grey-10751198', '2024-05-07 13:29:52', NULL, 1),
(674, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-300-ml-12-m-kosmos-momche-tt-0137-002', '2024-05-07 13:29:53', NULL, 1),
(675, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-300-ml-12-m-kosmos-momiche-tt-0137-001', '2024-05-07 13:29:54', NULL, 1),
(676, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-230-ml-6-m-rozova-tt-0135-002', '2024-05-07 13:29:55', NULL, 1),
(677, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-150-ml-4-m-planeta-rozova-tt-0134-002', '2024-05-07 13:29:56', NULL, 1),
(678, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-tsiklama-tt-0139-003', '2024-05-07 13:29:57', NULL, 1),
(679, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-sv-sinya-tt-0139-002', '2024-05-07 13:29:58', NULL, 1),
(680, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-sas-slamka-260-ml-12-m-rozova-tyurkoaz-tt-0138-002', '2024-05-07 13:29:58', NULL, 1),
(681, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-230-ml-6-m-rozova-oranzh-tt-0136-002', '2024-05-07 13:29:59', NULL, 1),
(682, 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-dva-nakraynika-150-ml-4m-sinya-tt-0141-004', '2024-05-07 13:30:00', NULL, 1),
(683, 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-250-ml-lovely-girl-35-354-g', '2024-05-07 13:30:01', NULL, 1),
(684, 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-250-ml-lovely-boy-35-354-b', '2024-05-07 13:30:02', NULL, 1),
(685, 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-350-ml-lovely-girl-35-355-g', '2024-05-07 13:30:03', NULL, 1),
(686, 'https://www.hippoland.net/nuk-ev-set-chasha-all-in-one-momche-10255636', '2024-05-07 13:30:04', NULL, 1),
(687, 'https://www.hippoland.net/nuk-ev-set-chasha-all-in-one-momiche-10255637', '2024-05-07 13:30:05', NULL, 1),
(688, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-disney-10215340', '2024-05-07 13:30:06', NULL, 1),
(689, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-fruits-10255593', '2024-05-07 13:30:09', NULL, 1),
(690, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-peppa-10255611', '2024-05-07 13:30:10', NULL, 1),
(691, 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-chameleon-s-promenyashti-se-tsvetove-10255577', '2024-05-07 13:30:12', NULL, 1),
(692, 'https://www.hippoland.net/nuk-chasha-s-klapa-300-ml-junior-cup-18-m-chameleon-s-promenyashti-se-tsvetove-10255576', '2024-05-07 13:30:12', NULL, 1),
(693, 'https://www.hippoland.net/nuk-chasha-sas-slamka-300-ml-12-m-flexi-chameleon-s-promenyashti-se-tsvetove-10255575', '2024-05-07 13:30:14', NULL, 1),
(694, 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-s-promenyashti-se-tsvetove-10255574', '2024-05-07 13:30:14', NULL, 1),
(695, 'https://www.hippoland.net/chicco-n0426-sveteshta-chasha-266-ml-14-momche', '2024-05-07 13:30:15', NULL, 1),
(696, 'https://www.hippoland.net/chicco-n0425-sveteshta-chasha-266-ml-14-momiche', '2024-05-07 13:30:16', NULL, 1),
(697, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-glow-in-the-dark-10255541', '2024-05-07 13:30:17', NULL, 1),
(698, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-glow-in-the-dark-10215326', '2024-05-07 13:30:18', NULL, 1),
(699, 'https://www.hippoland.net/canpol-chasha-sas-slamka-350ml-cat-rozova-56-520', '2024-05-07 13:30:19', NULL, 1),
(700, 'https://www.hippoland.net/canpol-chasha-sas-slamka-250ml-cat-rozova-56-520', '2024-05-07 13:30:20', NULL, 1),
(701, 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-10255412', '2024-05-07 13:30:21', NULL, 1),
(702, 'https://www.hippoland.net/nuk-chasha-za-sok-sas-slamka-flexy-cup-300-ml-10751083', '2024-05-07 13:30:21', NULL, 1),
(703, 'https://www.hippoland.net/avent-chasha-za-lesen-prehod-bez-drazhki-260-ml-sin-00a-0489-003', '2024-05-07 13:30:22', NULL, 1),
(704, 'https://www.hippoland.net/avent-chasha-za-lesen-prehod-bez-drazhki-260-ml-lila-00a-0489-002', '2024-05-07 13:30:23', NULL, 1),
(705, 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-360-s-drazhki-300ml-lion-31302030051', '2024-05-07 13:30:24', NULL, 1),
(706, 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-360-s-drazhki-300ml-owl-31302030050', '2024-05-07 13:30:25', NULL, 1),
(707, 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-sas-slamka-300ml-sinya-31302030046', '2024-05-07 13:30:26', NULL, 1),
(708, 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-sas-slamka-300ml-rozova-31302030045', '2024-05-07 13:30:27', NULL, 1),
(709, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-300-ml-12m-kote-rozova-tt-0193', '2024-05-07 13:30:28', NULL, 1),
(710, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-300-ml-12m-kote-sinya-tt-0192', '2024-05-07 13:30:29', NULL, 1),
(711, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-s-drazhki-230-ml-6m-kote-rozova-tt-0191', '2024-05-07 13:30:30', NULL, 1),
(712, 'https://www.hippoland.net/nuk-chasha-za-sok-s-klapa-300-ml-junior-cup-10751081', '2024-05-07 13:30:31', NULL, 1),
(713, 'https://www.hippoland.net/nuk-chasha-s-s-silikonov-nakrajnik-active-cup-300-ml-118721', '2024-05-07 13:30:32', NULL, 1),
(714, 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-10215262', '2024-05-07 13:30:33', NULL, 1),
(715, 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-rozova-10255389', '2024-05-07 13:30:34', NULL, 1),
(716, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-bezhova-10255394', '2024-05-07 13:30:35', NULL, 1),
(717, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-rozova-10255393', '2024-05-07 13:30:35', NULL, 1),
(718, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-sinya-10255392', '2024-05-07 13:30:36', NULL, 1),
(719, 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-neutral-10255464', '2024-05-07 13:30:37', NULL, 1),
(720, 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-rozova-10255463', '2024-05-07 13:30:38', NULL, 1),
(721, 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-sinya-10255462', '2024-05-07 13:30:39', NULL, 1),
(722, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-frozen-printsesi-10751243', '2024-05-07 13:30:40', NULL, 1),
(723, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-frozen-sinya-10751242', '2024-05-07 13:30:41', NULL, 1),
(724, 'https://www.hippoland.net/nuk-ev-set-chasha-all-in-one-momiche-10255397', '2024-05-07 13:30:42', NULL, 1),
(725, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-dumbo-10255498', '2024-05-07 13:30:42', NULL, 1),
(726, 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-300-ml-birds-56-519', '2024-05-07 13:30:43', NULL, 1),
(727, 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-350-ml-56-510', '2024-05-07 13:30:44', NULL, 1),
(728, 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-230-ml-sea-life-56-501', '2024-05-07 13:30:45', NULL, 1),
(729, 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-180-ml-sweet-rozova-57-300', '2024-05-07 13:30:46', NULL, 1),
(730, 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-180-ml-sweet-sinya-57-300', '2024-05-07 13:30:47', NULL, 1),
(731, 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-10255413', '2024-05-07 13:30:48', NULL, 1),
(732, 'https://www.hippoland.net/tommee-tippee-super-chasha-ne-se-preobrashta-lesno-se-vdiga-300-ml-12m-44730875', '2024-05-07 13:30:48', NULL, 1),
(733, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-cup-mickey-10255403', '2024-05-07 13:30:49', NULL, 1),
(734, 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-10255387', '2024-05-07 13:30:50', NULL, 1),
(735, 'https://www.hippoland.net/chicco-n0423-sportna-chasha-266-ml-14-active-momche', '2024-05-07 13:30:51', NULL, 1),
(736, 'https://www.hippoland.net/chicco-n0422-sportna-chasha-266-ml-14-active-momiche', '2024-05-07 13:30:52', NULL, 1),
(737, 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-350-ml-tyurkoaz-56-518', '2024-05-07 13:30:53', NULL, 1),
(738, 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-250-ml-tyurkoaz-56-517', '2024-05-07 13:30:54', NULL, 1),
(739, 'https://www.hippoland.net/nuk-chasha-za-sok-s-klapa-300-ml-junior-cup-beach-time-10255428', '2024-05-07 13:30:54', NULL, 1),
(740, 'https://www.hippoland.net/nuk-pp-chasha-za-sok-sas-slamka-300-ml-flexy-cup-beach-time-10255427', '2024-05-07 13:30:55', NULL, 1),
(741, 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-beach-time-10255426', '2024-05-07 13:30:56', NULL, 1),
(742, 'https://www.hippoland.net/chicco-n0420-sportna-chasha-sas-slamka-266-ml-14-uni', '2024-05-07 13:30:57', NULL, 1),
(743, 'https://www.hippoland.net/lovi-nerazlivashta-chasha-s-drazhki-210ml-9-mini-buddy-bear-35-349', '2024-05-07 13:30:58', NULL, 1),
(744, 'https://www.hippoland.net/canpol-sportno-shishe-s-meka-slamka-i-kapache-400-ml-12-rozov-4-102', '2024-05-07 13:30:59', NULL, 1),
(745, 'https://www.hippoland.net/canpol-sportno-shishe-s-meka-slamka-i-kapache-400-ml-12-zhalt-4-102', '2024-05-07 13:31:00', NULL, 1),
(746, 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-racing-svetlosinya-56-516', '2024-05-07 13:31:01', NULL, 1),
(747, 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-racing-tamnosinya-56-516', '2024-05-07 13:31:02', NULL, 1),
(748, 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-butterfly-rozova-56-515', '2024-05-07 13:31:03', NULL, 1),
(749, 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-butterfly-tyurkoaz-56-515', '2024-05-07 13:31:03', NULL, 1),
(750, 'https://www.hippoland.net/lovi-chasha-s-drazhki-360-buddy-bear-unisex-210-ml-1-600', '2024-05-07 13:31:04', NULL, 1),
(751, 'https://www.hippoland.net/lovi-chasha-s-drazhki-360-buddy-bear-unisex-250-ml-1-599', '2024-05-07 13:31:05', NULL, 1),
(752, 'https://www.hippoland.net/avent-scf804-04-nerazlivashta-se-chasha-s-tvard-nakraynik-300-ml-zelena', '2024-05-07 13:31:07', NULL, 1),
(753, 'https://www.hippoland.net/avent-scf804-03-nerazlivashta-se-chasha-s-tvard-nakraynik-300-ml-zelena', '2024-05-07 13:31:08', NULL, 1),
(754, 'https://www.hippoland.net/avent-scf802-02-nerazlivashta-se-chasha-s-mek-nakraynik-300-ml-lilava', '2024-05-07 13:31:09', NULL, 1),
(755, 'https://www.hippoland.net/avent-scf802-01-nerazlivashta-se-chasha-s-mek-nakraynik-300-ml-sinya', '2024-05-07 13:31:10', NULL, 1),
(756, 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-230-ml-9-m-toys-tyurkoaz-56-502', '2024-05-07 13:31:11', NULL, 1),
(757, 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-230-ml-9-m-toys-sinya-56-502', '2024-05-07 13:31:12', NULL, 1),
(758, 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-rozovo-56-113', '2024-05-07 13:31:12', NULL, 1),
(759, 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-zeleno-56-113', '2024-05-07 13:31:13', NULL, 1),
(760, 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-sinyo-56-113', '2024-05-07 13:31:15', NULL, 1),
(761, 'https://www.hippoland.net/avent-scf551-03-chasha-za-lesen-prehod-s-drazhki-200-ml-rozova-00a-0488', '2024-05-07 13:31:16', NULL, 1),
(762, 'https://www.hippoland.net/avent-scf551-05-chasha-za-lesen-prehod-s-drazhki-200-ml-zelena-00a-0488', '2024-05-07 13:31:17', NULL, 1),
(763, 'https://www.hippoland.net/canpol-sportno-shishe-sas-slamka-i-kapache-270-ml-zelen-56-109', '2024-05-07 13:31:18', NULL, 1),
(764, 'https://www.hippoland.net/canpol-sportno-shishe-sas-slamka-i-kapache-270-ml-sin-56-109', '2024-05-07 13:31:18', NULL, 1),
(765, 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-tyurkoaz-31-404', '2024-05-07 13:31:19', NULL, 1),
(766, 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-rozov-31-404', '2024-05-07 13:31:20', NULL, 1),
(767, 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-sin-31-404', '2024-05-07 13:31:21', NULL, 1),
(768, 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-cheren-31-404', '2024-05-07 13:31:22', NULL, 1),
(769, 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-rozov-31-200', '2024-05-07 13:31:23', NULL, 1),
(770, 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-zelen-31-200', '2024-05-07 13:31:24', NULL, 1),
(771, 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-sin-31-200', '2024-05-07 13:31:25', NULL, 1),
(772, 'https://www.hippoland.net/avent-scf798-02-nerazlivascha-se-chasha-s-s-slamka-300-ml-12-m-rozova-00a-0521', '2024-05-07 13:31:26', NULL, 1),
(773, 'https://www.hippoland.net/avent-scf798-01-nerazlivascha-se-chasha-s-s-slamka-300-ml-12-m-zelena-00a-0521', '2024-05-07 13:31:27', NULL, 1),
(774, 'https://www.hippoland.net/avent-scf796-02-nerazlivascha-se-chasha-s-s-slamka-200-ml-9-m-lilava-00a-0520', '2024-05-07 13:31:28', NULL, 1),
(775, 'https://www.hippoland.net/avent-scf796-01-nerazlivascha-se-chasha-s-s-slamka-200-ml-9-m-sinja-00a-0520', '2024-05-07 13:31:29', NULL, 1),
(776, 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sg-vaem-nakrajnik-300-ml-6-free-flow-44402287', '2024-05-07 13:31:30', NULL, 1),
(777, 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sg-vaem-nakrajnik-380-ml-18-free-flow-44402487', '2024-05-07 13:31:31', NULL, 1),
(778, 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sporten-nakrajnik-300-ml-12-free-flow-44402687', '2024-05-07 13:31:32', NULL, 1),
(779, 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-indian-summer-boy-250ml-1-592', '2024-05-07 13:31:33', NULL, 1),
(780, 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-indian-summer-girl-250ml-1-591', '2024-05-07 13:31:34', NULL, 1),
(781, 'https://www.hippoland.net/lovi-netechascha-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-hot-and-cold-rozov-35-320', '2024-05-07 13:31:35', NULL, 1),
(782, 'https://www.hippoland.net/lovi-sportna-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-marine-sin-35-311', '2024-05-07 13:31:36', NULL, 1),
(783, 'https://www.hippoland.net/lovi-sportna-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-marine-cherven-35-310', '2024-05-07 13:31:36', NULL, 1),
(784, 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-follow-the-rabbit-250ml-1-544', '2024-05-07 13:31:37', NULL, 1),
(785, 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-dva-nakraynika-150-ml-4m-rozova-tt-0141-003', '2024-05-07 13:31:38', NULL, 1),
(786, 'https://www.hippoland.net/canpol-shishe-s-s-silikonov-nakrajnik-i-dr-zhki-320-ml-future-daydreams-56-514', '2024-05-07 13:31:39', NULL, 1),
(787, 'https://www.hippoland.net/canpol-plastmasova-chasha-220-ml-owls-4-408', '2024-05-07 13:31:40', NULL, 1),
(788, 'https://www.hippoland.net/lorelli-baby-care-sportna-butilka-250-ml-1020070', '2024-05-07 13:31:41', NULL, 1),
(789, 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-300-ml-1023042', '2024-05-07 13:31:42', NULL, 1),
(790, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-zamak-sin-tt-0139-001', '2024-05-07 13:31:43', NULL, 1),
(791, 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sporten-nakrajnik-300-ml', '2024-05-07 13:31:44', NULL, 1),
(792, 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-230-ml-6-m-raketa-sin-tt-0136-001', '2024-05-07 13:31:45', NULL, 1),
(793, 'https://www.hippoland.net/tommee-tippee-chasha-essentials-first-cup-190-ml-43111010', '2024-05-07 13:31:46', NULL, 1),
(794, 'https://www.hippoland.net/nuk-rezervna-slamka-za-flexy-cup-10-256-028', '2024-05-07 13:31:47', NULL, 1),
(795, 'https://www.hippoland.net/nuk-chashka-flexi-300-ml', '2024-05-07 13:31:48', NULL, 1),
(796, 'https://www.hippoland.net/nuk-chasha-s-tv-rd-nakrajnik-easy-learning-system-cup-10-255-270', '2024-05-07 13:31:49', NULL, 1),
(797, 'https://www.hippoland.net/nuk-chasha-s-tv-rd-nakrajnik-easy-learning-system-cup-10-255-269', '2024-05-07 13:31:50', NULL, 1),
(798, 'https://www.hippoland.net/canpol-chasha-s-nehl-zgascho-se-d-no', '2024-05-07 13:31:50', NULL, 1),
(799, 'https://www.hippoland.net/canpol-netechascha-chasha-s-dr-zhki-250-ml', '2024-05-07 13:31:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `price_promotion` varchar(222) NOT NULL,
  `link` varchar(666) NOT NULL,
  `master_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `client_id`, `title`, `price`, `brand`, `description`, `category_id`, `price_promotion`, `link`, `master_cat_id`) VALUES
(1, 1, 'NUK EV Чаша за сок 230 мл. 8+ м. MAGIC CUP STAINLESS ТЮРКОАЗ', '51.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Магическа чаша - двустенна, поддържа напитките по-дълго топли или охладени;<br/>• Изработена е от неръждаема стомана;<br/>• Лека и неразливаща се;<br/>• Силиконов накрайник с допълнителна мека зона, която дава приятно усещане по време на пиене;<br/>• Не съдържа ВРА.<br/>Вместимост: 230 мл.<br/>Подходяща за деца над 8 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-cup-stainless-tyurkoaz', 40),
(2, 1, 'NUK EV Чаша с дръжки MINI MAGIC 160 мл 6+ месеца МЕЧО ПУХ', '23.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK магическа чашка с дръжки 360 градуса;<br/>• За приучаване към самостоятелно пиене; не се разлива; може да се пие от всеки един край на ръба;<br/>• Благодарение на светещия безопасен за бебето материал, чашата излъчва мека светлина и може лесно да бъде открита и през нощта;<br/>• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br/>Вместимост: 160 мл.<br/>Подходящо за деца над 6 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-mecho-puh', 40),
(3, 1, 'NUK Чаша MINI-ME FLIP 2в1 STANLESS 500 мл 12+ месеца ЛИЛАВА', '46.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша 2в1 от неръждаема стомана - сламка и накрайник за пиене едновременно, устойчиви на захапване и непропускливи, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Изработена от висококачествена неръждаема стомана.<br/>Вместимост: 500 мл.<br/>Подходящо за деца над 12 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-stanless-500-ml-12-mesetsa-lilava', 40),
(4, 1, 'NUK Чаша MINI-ME FLIP 2в1 STANLESS 500 мл 12+ месеца ЗЕЛЕНА', '46.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша 2в1 от неръждаема стомана - сламка и накрайник за пиене едновременно, устойчиви на захапване и непропускливи, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Изработена от висококачествена неръждаема стомана.<br/>Вместимост: 500 мл.<br/>Подходящо за деца над 12 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-stanless-500-ml-12-mesetsa-zelena', 40),
(5, 1, 'NUK Чаша MINI-ME SIP STANLESS 300 мл 9+ месеца ЛИЛАВА', '38.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша от неръждаема стомана с твърд накрайник, устойчив на захапване и непропусклив, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Изработена от висококачествена неръждаема стомана.<br/>Вместимост: 300 мл.<br/>Подходящо за деца над 9 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-sip-stanless-300-ml-9-mesetsa-lilava', 40),
(6, 1, 'NUK Чаша MINI-ME SIP STANLESS 300 мл 9+ месеца БЕЖОВА', '38.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша от неръждаема стомана с твърд накрайник, устойчив на захапване и непропусклив, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Изработена от висококачествена неръждаема стомана.<br/>Вместимост: 300 мл.<br/>Подходящо за деца над 9 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-sip-stanless-300-ml-9-mesetsa-bezhova', 40),
(7, 1, 'NUK Чаша MINI-ME FLIP 2в1 PP 450 мл 12+ месеца ЛИЛАВА', '23.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK спортна чаша 2в1- сламка и накрайник за пиене едновременно, устойчиви на захапване и непропускливи, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Подходяща за съдомиялна машина.<br/>Вместимост: 450 мл.<br/>Подходящо за деца над 12 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-pp-450-ml-12-mesetsa-lilava', 40),
(8, 1, 'NUK Чаша MINI-ME FLIP 2в1 PP 450 мл 12+ месеца ЗЕЛЕНА', '23.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK спортна чаша 2в1- сламка и накрайник за пиене едновременно, устойчиви на захапване и непропускливи, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Подходяща за съдомиялна машина.<br/>Вместимост: 450 мл.<br/>Подходящо за деца над 12 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-flip-2v1-pp-450-ml-12-mesetsa-zelena', 40),
(9, 1, 'NUK Чаша MINI-ME SIP PP 300 мл 9+ месеца РОЗОВА С ПЕПЕРУДА', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша с твърд накрайник, устойчив на захапване и непропусклив, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Подходяща за съдомиялна машина.<br/>Вместимост: 300 мл.<br/>Подходящо за деца над 9 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-sip-pp-300-ml-9-mesetsa-rozova-s-peperuda', 40),
(10, 1, 'NUK Чаша MINI-ME SIP PP 300 мл 9+ месеца ЗЕЛЕНА С ПЧЕЛА', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK чаша с твърд накрайник, устойчив на захапване и непропусклив, с удобна капачка;<br/>• За приучаване към самостоятелно пиене; не се разлива;<br/>• Може да се комбинира с всички продукти на NUK Mini-Me, не съдържа BPA;<br/>• Подходяща за съдомиялна машина.<br/>Вместимост: 300 мл.<br/>Подходящо за деца над 9 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-mini-me-sip-pp-300-ml-9-mesetsa-zelena-s-pchela', 40),
(11, 1, 'TOMMEE TIPPEE Неразливаща се чаша с дръжки 190 мл. 4+м FIRST CUP ЛИЛАВА', '9.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Проектирана за използване от бебета на възраст над 4 месеца, тази малка първа чаша със свободен поток (свободният поток на чаша Tommee Tippee Free Flow First Cup означава, че няма нужда детето да упражнява натиск върху накрайника, за да потече течността);<br/>• Малките дръжки са идеални за малки ръчички;<br/>• Хигиенично непротичащо капаче, идеално за пътуване;<br/>• Не съдържа Бисфенол А (BPA free) и без BPS;<br/>• Безопасна за миене в миялна машина, за микровълнова и стерилизация в стерилизатори;<br/>• Вместимост: 190 мл.<br/>Подходяща за деца над 4+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-lilava', 40),
(12, 1, 'TOMMEE TIPPEE Неразливаща се чаша с дръжки 190 мл. 4+м FIRST CUP ЗЕЛЕНА', '9.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Проектирана за използване от бебета на възраст над 4 месеца, тази малка първа чаша със свободен поток (свободният поток на чаша Tommee Tippee Free Flow First Cup означава, че няма нужда детето да упражнява натиск върху накрайника, за да потече течността);<br/>• Малките дръжки са идеални за малки ръчички;<br/>• Хигиенично непротичащо капаче, идеално за пътуване;<br/>• Не съдържа Бисфенол А (BPA free) и без BPS;<br/>• Безопасна за миене в миялна машина, за микровълнова и стерилизация в стерилизатори;<br/>• Вместимост: 190 мл.<br/>Подходяща за деца над 4+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-zelena', 40),
(13, 1, 'TOMMEE TIPPEE Неразливаща се чаша с дръжки 190 мл. 4+м FIRST CUP ОРАНЖЕВА', '9.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Проектирана за използване от бебета на възраст над 4 месеца, тази малка първа чаша със свободен поток (свободният поток на чаша Tommee Tippee Free Flow First Cup означава, че няма нужда детето да упражнява натиск върху накрайника, за да потече течността);<br/>• Малките дръжки са идеални за малки ръчички;<br/>• Хигиенично непротичащо капаче, идеално за пътуване;<br/>• Не съдържа Бисфенол А (BPA free) и без BPS;<br/>• Безопасна за миене в миялна машина, за микровълнова и стерилизация в стерилизатори;<br/>• Вместимост: 190 мл.<br/>Подходяща за деца над 4+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-drazhki-190-ml-4-m-first-cup-oranzheva', 40),
(14, 1, 'NUK EV Чаша с дръжки MINI MAGIC 160 мл 6+ месеца MICKEY GLOW', '23.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• NUK магическа чашка с дръжки 360 градуса;<br/>• За приучаване към самостоятелно пиене; не се разлива; може да се пие от всеки един край на ръба;<br/>• Благодарение на светещия безопасен за бебето материал, чашата излъчва мека светлина и може лесно да бъде открита и през нощта;<br/>• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br/>Вместимост: 160 мл.<br/>Подходящо за деца над 6 месеца.<br/>Асортимент. Доставка според наличностите.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-mickey-glow', 40),
(15, 1, 'NUK FC PP Преходна чаша за сок със силиконов накрайник 150 мл. MICKEY GLOW', '26.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Силиконов накрайник;<br/>• Удобни дръжки за по-лесно захващане;<br/>• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br/>• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br/>• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br/>• Благодарение на светещия безопасен за бебето материал, шишето излъчва мека светлина и може лесно да бъде открита и през нощта.<br/>Обем: 150 мл.<br/>Подходящо за деца от 6 до 18 месеца.<br/>Асортимент. Доставка според наличностите!<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-fc-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-mickey-glow', 40),
(16, 1, 'LORELLI BABY CARE Чаша с твърд накрайник и дръжки 210 мл ЗЕЛЕНА', '3.49', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с твърд накрайник;<br/>• С удобни дръжки.<br/>Вместимост: 210 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-zelena-1023056-0003', 40),
(17, 1, 'LORELLI BABY CARE Чаша с твърд накрайник и дръжки 210 мл РОЗОВА', '3.49', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с твърд накрайник;<br/>• С удобни дръжки.<br/>Вместимост: 210 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-rozova-1023056-0002', 40),
(18, 1, 'LORELLI BABY CARE Чаша с твърд накрайник и дръжки 210 мл СИНЯ', '3.49', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с твърд накрайник;<br/>• С удобни дръжки.<br/>Вместимост: 210 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-i-drazhki-210-ml-sinya-1023056-0001', 40),
(19, 1, 'LORELLI BABY CARE Чаша със сламка 330 мл ЗЕЛЕНА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-zelena-1020093-0003', 40),
(20, 1, 'LORELLI BABY CARE Чаша със сламка 330 мл РОЗОВА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-rozova-1020093-0002', 40),
(21, 1, 'LORELLI BABY CARE Чаша със сламка 330 мл СИНЯ', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-330-ml-sinya-1020093-0001', 40),
(22, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 330 мл ЗЕЛЕНА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка и дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-zelena-1020092-0003', 40),
(23, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 330 мл РОЗОВА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка и дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-rozova-1020092-0002', 40),
(24, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 330 мл СИНЯ', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша със сламка и дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-330-ml-sinya-1020092-0001', 40),
(25, 1, 'LORELLI BABY CARE Чаша с мек накрайник и дръжки 330 мл ЗЕЛЕНА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек накрайник и дръжки;<br/>• С удобни дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 9+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-zelena-1020091-0003', 40),
(26, 1, 'LORELLI BABY CARE Чаша с мек накрайник и дръжки 330 мл РОЗОВА', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек накрайник и дръжки;<br/>• С удобни дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 9+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-rozova-1020091-0002', 40),
(27, 1, 'LORELLI BABY CARE Чаша с мек накрайник и дръжки 330 мл СИНЯ', '3.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек накрайник и дръжки;<br/>• С удобни дръжки.<br/>Вместимост: 330 мл.<br/>Подходящо за деца над 9+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-mek-nakraynik-i-drazhki-330-ml-sinya-1020091-0001', 40),
(28, 1, 'LORELLI BABY CARE Неразливаща се чаша 360 200мл СИВА', '7.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Неразливаща се чаша - 360°;<br/>• Без недостъпни части или тесни каналчета или клапи, които не могат да се почистват.<br/>Вместимост: 200 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-siva-1023054-0003', 40),
(29, 1, 'LORELLI BABY CARE Неразливаща се чаша 360 200мл РОЗОВА', '7.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Неразливаща се чаша - 360°;<br/>• Без недостъпни части или тесни каналчета или клапи, които не могат да се почистват.<br/>Вместимост: 200 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-rozova-1023054-0002', 40),
(30, 1, 'LORELLI BABY CARE Неразливаща се чаша 360 200мл СИНЯ', '7.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Неразливаща се чаша - 360°;<br/>• Без недостъпни части или тесни каналчета или клапи, които не могат да се почистват.<br/>Вместимост: 200 мл.<br/>Подходящо за деца над 12+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-nerazlivashta-se-chasha-360-200ml-sinya-1023054-0001', 40),
(31, 1, 'NUK EV Чаша за сок 230 мл. 8+ м. MAGIC CUP CAT&amp;DOG', '19.8', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете;<br/>• Направена е от висококачествен полипропилен в уникална форма;<br/>• Притежава силиконов запечатващ диск, който предпазва течността от разливане;<br/>• Може да се пие от всеки ъгъл на отвора;<br/>• Удобна е за почистване, тъй като частите и се свалят лесно и бързо;<br/>• Не съдържат ВРА.<br/>Вместимост: 230 мл.<br/>Подходяща за деца над 8 месеца.</p>\n<p>Асортимент. Доставка според наличностите!</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-catanddog-10255684', 40),
(32, 1, 'NUK FC PP Преходна чаша за сок със силиконов накрайник 150 мл. CAT&amp;DOG', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Силиконов накрайник;<br/>• Удобни дръжки за по-лесно захващане;<br/>• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br/>• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br/>• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br/>• Това не влошава годността на шишето или безопасността му.<br/>Обем: 150 мл.<br/>Подходящо за деца от 6 до 18 месеца.<br/>Асортимент. Доставка според наличностите!<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-fc-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-catanddog-10215032', 40),
(33, 1, 'AVENT Тренировъчно шише NATURAL RESPONSE 3.0 за преход към чаша', '23.88', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Най-новата серия шишета и биберони на Philips Avent Natural Responce - биберон, който реагира естествено с адаптивна технология за активно хранене.<br/>Характеристики:<br/>• Тренировъчно шише - помага на бебето да премине лесно от хранене/пиене с шише към първата си чаша;<br/>• С меки ръкохватки - бебето ще може да държи шишето само, докато пие от познатия биберон;<br/>• Не съдържа BPA;<br/>• Биберонът е с размер 6+ - 5 капки;<br/>• Вместимост 150мл.<br/>Подходящо за деца над 6+ месеца.<br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-trenirovachno-shishe-natural-response-za-prehod-kam-chasha-00a-0467-003', 40),
(34, 1, 'TOMMEE TIPPEE Неразливаща се чаша с твърд накрайник 390 мл. 12+м BACSHIELD ОРАНЖЕВА', '27.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Хигиената на първо място: спортният накрайник за пиене е направен с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Устойчив на гризане: накрайникът е издръжлив и достатъчно здрав, за да издържи на малките зъби; удобен за малката детска уста;<br/>• Внимание към венците: силиконовият накрайник е мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Лесно захващане: Проектиран с мисъл за малките деца; ергономичната форма на тази чаша е удобна за малките ръчички И позволяват на вашето малко дете лесно да носи бутилката си на семейни излети и да се хидратира, когато пожелaе - точно както мама и татко;<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини;<br/>• Вместимост: 390мл.<br/>Подходяща за деца над 12+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-tvard-nakraynik-390-ml-12-m-bacshield-oranzheva-tt-0228', 40),
(35, 1, 'TOMMEE TIPPEE Неразливаща се чаша с твърд накрайник 390 мл. 12+м BACSHIELD ЖЪЛТА', '27.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Хигиената на първо място: спортният накрайник за пиене е направен с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Устойчив на гризане: накрайникът е издръжлив и достатъчно здрав, за да издържи на малките зъби; удобен за малката детска уста;<br/>• Внимание към венците: силиконовият накрайник е мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Лесно захващане: Проектиран с мисъл за малките деца; ергономичната форма на тази чаша е удобна за малките ръчички И позволяват на вашето малко дете лесно да носи бутилката си на семейни излети и да се хидратира, когато пожелaе - точно както мама и татко;<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини;<br/>• Вместимост: 390мл.<br/>Подходяща за деца над 12+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-tvard-nakraynik-390-ml-12-m-bacshield-zhalta-tt-0227', 40),
(36, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 266 мл. 12+м BACSHIELD ЧЕРВЕНА', '24.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Хигиената на първо място: спортният накрайник за пиене е направен с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Двустенна изолация: изолираната основа минимизира конденза и поддържа водата хладна, за да насърчи пиенето и да охлади децата, докато играят;<br/>• Внимание към венците: силиконовият накрайник е мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Лесно захващане: Проектиран с мисъл за малките деца, ергономичният дизайн и лесната за хващане дръжка позволяват на вашето малко дете лесно да носи бутилката си на семейни излети и да се хидратира, когато пожелaе - точно както мама и татко;<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини;<br/>• Вместимост: 266мл.<br/>Подходяща за деца над 12+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-266-ml-12-m-bacshield-chervena-tt-0226', 40),
(37, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 266 мл. 12+м BACSHIELD ЗЕЛЕНА', '24.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Хигиената на първо място: спортният накрайник за пиене е направен с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Двустенна изолация: изолираната основа минимизира конденза и поддържа водата хладна, за да насърчи пиенето и да охлади децата, докато играят;<br/>• Внимание към венците: силиконовият накрайник е мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Лесно захващане: Проектиран с мисъл за малките деца, ергономичният дизайн и лесната за хващане дръжка позволяват на вашето малко дете лесно да носи бутилката си на семейни излети и да се хидратира, когато пожелaе - точно както мама и татко;<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини;<br/>• Вместимост: 266мл.<br/>Подходяща за деца над 12+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-266-ml-12-m-bacshield-zelena-tt-0225', 40),
(38, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сламка 266 мл. 12+м BACSHIELD РОЗОВА', '24.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Революционна сламка: Гъвкава супер мека силиконова сламка с тежест, която я държи винаги в течността без значение от ъгъла на пиене. Улеснява пиенето и е нежна към чувствителните венци. Подпомага здравословното развитие на устата, челюстта и зъбите.<br/>Препоръчана от Oral Health Foundation;<br/>• Хигиената на първо място: сламката за пиене е направена с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче flip-up за по-добра хигиена;<br/>• Дръжки за лесно захващане: проектирана с мисъл за активни малки деца. Ергономичният дизайн помага на малките деца да развият координацията между ръцете и очите, необходима за държане, повдигане и отпиване, докато седят изправени;<br/>• Вместимост: 266 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 12+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-266-ml-12-m-bacshield-rozova-tt-0224', 40),
(39, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сламка 300 мл. 6+м BACSHIELD ЖЪЛТА', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Революционна сламка: Гъвкава супер мека силиконова сламка с тежест, която я държи винаги в течността без значение от ъгъла на пиене. Улеснява пиенето и е нежна към чувствителните венци. Подпомага здравословното развитие на устата, челюстта и зъбите.<br/>Препоръчана от Oral Health Foundation;<br/>• Хигиената на първо място: сламката за пиене е направена с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче flip-up за по-добра хигиена;<br/>• Дръжки за лесно захващане: проектирана с мисъл за активни малки деца. Ергономичният дизайн помага на малките деца да развият координацията между ръцете и очите, необходима за държане, повдигане и отпиване, докато седят изправени;<br/>• Вместимост: 300 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-300-ml-6-m-bacshield-zhalta-tt-0223', 40),
(40, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сламка 300 мл. 6+м BACSHIELD ЗЕЛЕНА', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Революционна сламка: Гъвкава супер мека силиконова сламка с тежест, която я държи винаги в течността без значение от ъгъла на пиене. Улеснява пиенето и е нежна към чувствителните венци. Подпомага здравословното развитие на устата, челюстта и зъбите.<br/>Препоръчана от Oral Health Foundation;<br/>• Хигиената на първо място: сламката за пиене е направена с антибактериална технология BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче flip-up за по-добра хигиена;<br/>• Дръжки за лесно захващане: проектирана с мисъл за активни малки деца. Ергономичният дизайн помага на малките деца да развият координацията между ръцете и очите, необходима за държане, повдигане и отпиване, докато седят изправени;<br/>• Вместимост: 300 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-300-ml-6-m-bacshield-zelena-tt-0222', 40),
(41, 1, 'TOMMEE TIPPEE Преходна чаша с мек накрайник 300 мл. 6+м BACSHIELD РОЗОВА', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Накрайникът за пиене е направен с антибактериална технология със сребърни йони BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Внимание към венците: силиконовият накрайник е изключително мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Устойчив на гризане: накрайникът е издръжлив и достатъчно здрав, за да издържи на малките зъби; удобен за малката детска уста;<br/>• Идеалната първа чаша: проектирана с мисъл за активни малки деца, ергономичната форма и дръжките я правят изключително удобна;<br/>• Вместимост: 300 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-mek-nakraynik-300-ml-6-m-bacshield-rozova-tt-0221', 40),
(42, 1, 'TOMMEE TIPPEE Неразливаща се чаша с мек накрайник 190 мл. 4+м BACSHIELD ЗЕЛЕНА', '19.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Накрайникът за пиене е направен с антибактериална технология със сребърни йони BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Внимание към венците: силиконовият накрайник е изключително мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Устойчив на гризане: накрайникът е издръжлив и достатъчно здрав, за да издържи на малките зъби; удобен за малката детска уста;<br/>• Идеалната първа чаша: проектирана с мисъл за активни малки деца, ергономичната форма и дръжките я правят изключително удобна;<br/>• Вместимост: 190 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 4+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-190-ml-4-m-bacshield-zelena-tt-0220', 40),
(43, 1, 'TOMMEE TIPPEE Неразливаща се чаша с мек накрайник 190 мл. 4+м BACSHIELD ЖЪЛТА', '19.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• 100% устойчивост на разливане: уникалната клапа против протичане INTELLIVALVE™ гарантира, че тази тренировъчна чаша няма да протече, дори когато е обърната с главата надолу и се разклаща. Клапата едновременно уплътнява и регулира потока, за да спре течовете и да осигури лесно пиене;<br/>• Накрайникът за пиене е направен с антибактериална технология със сребърни йони BACSHIELD™, която намалява бактериите с до 99,9%, като предотвратява развитието на нежелани микроби. Капаче за хигиенично пренасяне;<br/>• Внимание към венците: силиконовият накрайник е изключително мек, гладък и нежен към чувствителните венци на бебето, дори при никнещи зъби;<br/>• Устойчив на гризане: накрайникът е издръжлив и достатъчно здрав, за да издържи на малките зъби; удобен за малката детска уста;<br/>• Идеалната първа чаша: проектирана с мисъл за активни малки деца, ергономичната форма и дръжките я правят изключително удобна;<br/>• Вместимост: 190 мл.<br/>• Не съдържат BPA, BPS, PVC, фталати и нитрозамини.<br/>Подходяща за деца над 4+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-190-ml-4-m-bacshield-zhalta-tt-0219', 40),
(44, 1, 'KIKKA BOO Чаша с мек накрайник с дръжки 240мл SAVANNA MINT', '7.98', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек силиконов накрайник;<br/>• Удобни дръжки, лесни за хващане;<br/>• Интересен дизайн;<br/>• Изработено от полипропилен;<br/>• Капаче;</p>\n<p>• Без BPA;<br/>• Вместимост 240 мл.<br/>Подходящо за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-mint-31302030062', 40),
(45, 1, 'KIKKA BOO Чаша с мек накрайник с дръжки 240мл SAVANNA BLUE', '7.98', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек силиконов накрайник;<br/>• Удобни дръжки, лесни за хващане;<br/>• Интересен дизайн;<br/>• Изработено от полипропилен;<br/>• Капаче;</p>\n<p>• Без BPA;<br/>• Вместимост 240 мл.<br/>Подходящо за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-blue-31302030063', 40),
(46, 1, 'KIKKA BOO Чаша с мек накрайник с дръжки 240мл SAVANNA PINK', '7.98', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чаша с мек силиконов накрайник;<br/>• Удобни дръжки, лесни за хващане;<br/>• Интересен дизайн;<br/>• Изработено от полипропилен;<br/>• Капаче;</p>\n<p>• Без BPA;<br/>• Вместимост 240 мл.<br/>Подходящо за деца над 6+ месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-chasha-s-mek-nakraynik-s-drazhki-240ml-savanna-pink-31302030061', 40),
(47, 1, 'CANPOL Чаша със сламка 210 мл MATTE PASTELS СИВА', '13.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Модерна и практична чаша за самостоятелно пиене подходяща за малки деца над 9 месечна възраст;<br/>• Ще бъде полезна както у дома, така и по време на пътуване или на разходка; <br/>• Подвижната част на капака позволява лесно и удобно да скриете сламката, предотвратявайки неконтролирано изливане на напитката;<br/>• Дръжките са удобни за малките детски ръчички, улесняват детето да държи чашата и го учат на самостоятелност;<br/>• Чашата е полупрозрачна, което позволява да контролирате съдържанието й.<br/>• Вместимост: 210 мл;<br/>Подходяща за деца над 9 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-siva-56-522-gry', 40),
(48, 1, 'CANPOL Чаша със сламка 210 мл MATTE PASTELS РОЗОВА', '13.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Модерна и практична чаша за самостоятелно пиене подходяща за малки деца над 9 месечна възраст;<br/>• Ще бъде полезна както у дома, така и по време на пътуване или на разходка; <br/>• Подвижната част на капака позволява лесно и удобно да скриете сламката, предотвратявайки неконтролирано изливане на напитката;<br/>• Дръжките са удобни за малките детски ръчички, улесняват детето да държи чашата и го учат на самостоятелност;<br/>• Чашата е полупрозрачна, което позволява да контролирате съдържанието й.<br/>• Вместимост: 210 мл;<br/>Подходяща за деца над 9 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-rozova-56-522-pin', 40),
(49, 1, 'CANPOL Чаша със сламка 210 мл MATTE PASTELS ЖЪЛТА', '13.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Модерна и практична чаша за самостоятелно пиене подходяща за малки деца над 9 месечна възраст;<br/>• Ще бъде полезна както у дома, така и по време на пътуване или на разходка; <br/>• Подвижната част на капака позволява лесно и удобно да скриете сламката, предотвратявайки неконтролирано изливане на напитката;<br/>• Дръжките са удобни за малките детски ръчички, улесняват детето да държи чашата и го учат на самостоятелност;<br/>• Чашата е полупрозрачна, което позволява да контролирате съдържанието й.<br/>• Вместимост: 210 мл;<br/>Подходяща за деца над 9 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-slamka-210-ml-matte-pastels-zhalta-56-522-yel', 40),
(50, 1, 'CANPOL Чаша със силиконов накрайник 150 мл BONJOUR PARIS СИНЯ', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чашата е идеална за деца, които се учат да пият самостоятелно;<br/>• Снабдена с удобни дръжки, специално проектирани за малките детски ръчички; <br/>• Мекият силиконов накрайник не наранява венците и първите зъби;<br/>• Ефективно научава детето как да пие самостоятелно без да разлива;<br/>• Широкото гърло на чашата позволява лесно пълнене и почистване;<br/>• Хигиеничното капаче предпазва накрайника от замърсяване;<br/>• Изработена от устойчиви и безопасни материали;<br/>• Вместимост: 150 мл;<br/>Подходяща за деца над 12 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-150-ml-bonjour-paris-sinya-56-612-blu', 40),
(51, 1, 'CANPOL Чаша със силиконов накрайник 150 мл BONJOUR PARIS РОЗОВА', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чашата е идеална за деца, които се учат да пият самостоятелно;<br/>• Снабдена с удобни дръжки, специално проектирани за малките детски ръчички; <br/>• Мекият силиконов накрайник не наранява венците и първите зъби;<br/>• Ефективно научава детето как да пие самостоятелно без да разлива;<br/>• Широкото гърло на чашата позволява лесно пълнене и почистване;<br/>• Хигиеничното капаче предпазва накрайника от замърсяване;<br/>• Изработена от устойчиви и безопасни материали;<br/>• Вместимост: 150 мл;<br/>Подходяща за деца над 12 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-150-ml-bonjour-paris-rozova-56-612-pin', 40),
(52, 1, 'CANPOL Чаша със силиконов накрайник 250 мл BONJOUR PARIS РОЗОВА', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чашата е идеална за деца, които се учат да пият самостоятелно;<br/>• Снабдена с удобни дръжки, специално проектирани за малките детски ръчички; <br/>• Мекият силиконов накрайник не наранява венците и първите зъби;<br/>• Ефективно научава детето как да пие самостоятелно без да разлива;<br/>• Широкото гърло на чашата позволява лесно пълнене и почистване;<br/>• Хигиеничното капаче предпазва накрайника от замърсяване;<br/>• Изработена от устойчиви и безопасни материали;<br/>• Вместимост: 250 мл;<br/>Подходяща за деца над 12 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-250-ml-bonjour-paris-rozova-56-613-pin', 40),
(53, 1, 'CANPOL Чаша със силиконов накрайник 250 мл BONJOUR PARIS СИНЯ', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Чашата е идеална за деца, които се учат да пият самостоятелно;<br/>• Снабдена с удобни дръжки, специално проектирани за малките детски ръчички; <br/>• Мекият силиконов накрайник не наранява венците и първите зъби;<br/>• Ефективно научава детето как да пие самостоятелно без да разлива;<br/>• Широкото гърло на чашата позволява лесно пълнене и почистване;<br/>• Хигиеничното капаче предпазва накрайника от замърсяване;<br/>• Изработена от устойчиви и безопасни материали;<br/>• Вместимост: 250 мл;<br/>Подходяща за деца над 12 месеца.</p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-250-ml-bonjour-paris-sinya-56-613-blu', 40),
(54, 1, 'NUK NS PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. КРЕМ', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Силиконов накрайник;<br/>• Удобни дръжки за по-лесно захващане;<br/>• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br/>• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br/>• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br/>• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br/>• Това не влошава годността на шишето или безопасността му;<br/>• Материалите са 100% свързани с възобновяеми естествени суровини. Съответства на Подхода на масовия баланс и е сертифициран по ISCC PLUS за пластмасата  и REDcert2 за силикона.<br/>Обем: 150 мл.<br/>Подходящо за деца от 6 до 18 месеца.<br/><br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-krem-10215368', 40),
(55, 1, 'NUK NS PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. ЗЕЛЕНA', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> <p>Характеристики:<br/>• Силиконов накрайник;<br/>• Удобни дръжки за по-лесно захващане;<br/>• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br/>• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br/>• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br/>• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br/>• Това не влошава годността на шишето или безопасността му;<br/>• Материалите са 100% свързани с възобновяеми естествени суровини. Съответства на Подхода на масовия баланс и е сертифициран по ISCC PLUS за пластмасата  и REDcert2 за силикона.<br/>Обем: 150 мл.<br/>Подходящо за деца от 6 до 18 месеца.<br/><br/><br/></p> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-zelena-10215369', 40),
(56, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP BAMBI', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник от синтетичен материал, устойчив на малки зъбки и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Неразливаща се чаша, вентил за лесно пиене на течността;<br>\n• Самата чаша е от прозрачен материал, за да се вижда колко е останала от напитката на детето;<br>\n• Може да се почиства в съдомиялна машина\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-bambi-10255649', 40),
(57, 1, 'NUK Чаша със сламка 230 мл. 8+м. MOTION CUP ЗЕЛЕНА', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативна система за пиене със сламка, независимо как се държи чашата;<br>\n• Накрая на тръбичката има тежест, която насочва към течността;<br>\n• Ергономични дръжки, предпазен капак за транспортиране и хигиена;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-sas-slamka-230-ml-8-m-motion-cup-zelena-10255640', 40),
(58, 1, 'NUK Чаша със сламка 230 мл. 8+м. MOTION CUP ЖЪЛТА', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативна система за пиене със сламка, независимо как се държи чашата;<br>\n• Накрая на тръбичката има тежест, която насочва към течността;<br>\n• Ергономични дръжки, предпазен капак за транспортиране и хигиена;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-sas-slamka-230-ml-8-m-motion-cup-zhalta-10255641', 40),
(59, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. BAMBI', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-bambi-10743313', 40),
(60, 1, 'NUK EV Чаша със сламка 230 мл. 12+м. ACTION CUP ЖЪЛТА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-zhalta-10255601', 40);
INSERT INTO `product` (`id`, `client_id`, `title`, `price`, `brand`, `description`, `category_id`, `price_promotion`, `link`, `master_cat_id`) VALUES
(61, 1, 'NUK EV Чаша със сламка 230 мл. 12+м. ACTION CUP РОЗОВА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-rozova-10255600', 40),
(62, 1, 'NUK EV Чаша със сламка 230 мл. 12+м. ACTION CUP ЗЕЛЕНА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-zelena-10255599', 40),
(63, 1, 'NUK EV Чаша за сок 230 мл. TRAINER CUP НЕУТРАЛ', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK чашка неразливаща се, с мек накрайник;<br>\n• Измийте преди употреба;<br>\n• Напълнете я с течност и завийте капака;<br>\n• Проверявайте накрайника за признаци на износване;<br>\n• Използвайте под родителски контрол;<br>\n• Проверявайте температурата на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-neutral-10255610', 40),
(64, 1, 'NUK EV Чаша за сок 230 мл. TRAINER CUP СВЕТЛО РОЗОВА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK чашка неразливаща се, с мек накрайник;<br>\n• Измийте преди употреба;<br>\n• Напълнете я с течност и завийте капака;<br>\n• Проверявайте накрайника за признаци на износване;<br>\n• Използвайте под родителски контрол;<br>\n• Проверявайте температурата на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-svetlo-rozova-10255609', 40),
(65, 1, 'NUK EV Чаша за сок 230 мл. TRAINER CUP СВЕТЛО СИНЯ', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK чашка неразливаща се, с мек накрайник;<br>\n• Измийте преди употреба;<br>\n• Напълнете я с течност и завийте капака;<br>\n• Проверявайте накрайника за признаци на износване;<br>\n• Използвайте под родителски контрол;<br>\n• Проверявайте температурата на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-svetlo-sinya-10255608', 40),
(66, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. MICKEY GREY', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-mickey-grey-10215337', 40),
(67, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. MINNIE RED', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-minnie-red-10215336', 40),
(68, 1, 'NUK NS PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл.', '19.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ns-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-10743927', 40),
(69, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл. LION KING', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-lion-king-10215364', 40),
(70, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP LION KING', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник от синтетичен материал, устойчив на малки зъбки и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Неразливаща се чаша, вентил за лесно пиене на течността;<br>\n• Самата чаша е от прозрачен материал, за да се вижда колко е останала от напитката на детето;<br>\n• Може да се почиства в съдомиялна машина\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-lion-king-10255643', 40),
(71, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша 360 250мл.12м+ СИНЯ', '26.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Напитките запазват температурата си, докато малчуганите придобиват умения за пиене от чаша.<br>\nХарактеристики:<br>\n• Супер лесна за използване 360° чаша - лесна за пиене и лесна за почистване, за по-малко бъркотии, докато малкото дете се научи да пие от отворена чаша;<br>\n• Термоизолирана - поддържа напитките хладни до 8 часа, за да насърчи детето да пие дори докато играе;<br>\n• Без разливане - специалната 360° клапа се активира с устни, насърчавайки отпиването от отворена чаша без разливане;<br>\n• Лесно почистване - клапа от една част, лесно се сваля, без трудно достъпни места. Може да се мие в миялна машина на горния рафт. Подлежи само на студена стерилизация, но не и изваряване или парна стерилизация;<br>\n• Одобрена от Oral Health Foundation - препоръчана в подкрепа на оралното здраве на зъбната кухина;<br>\n• Без BPA и BPS.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-360-250ml-12m-sinya-tt-0194-002', 40),
(72, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша 360 250мл.12м+ ЗЕЛЕНА', '26.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Напитките запазват температурата си, докато малчуганите придобиват умения за пиене от чаша.<br>\nХарактеристики:<br>\n• Супер лесна за използване 360° чаша - лесна за пиене и лесна за почистване, за по-малко бъркотии, докато малкото дете се научи да пие от отворена чаша;<br>\n• Термоизолирана - поддържа напитките хладни до 8 часа, за да насърчи детето да пие дори докато играе;<br>\n• Без разливане - специалната 360° клапа се активира с устни, насърчавайки отпиването от отворена чаша без разливане;<br>\n• Лесно почистване - клапа от една част, лесно се сваля, без трудно достъпни места. Може да се мие в миялна машина на горния рафт. Подлежи само на студена стерилизация, но не и изваряване или парна стерилизация;<br>\n• Одобрена от Oral Health Foundation - препоръчана в подкрепа на оралното здраве на зъбната кухина;<br>\n• Без BPA и BPS.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-360-250ml-12m-zelena-tt-0194-001', 40),
(73, 1, 'TOMMEE TIPPEE Супер чаша - не се преобръща, лесно се вдига 190 мл. 6м+ ЛИЛАВА', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Супер чашата на Tommee Tippee ще превърне всеки мъник в герой, защото тя е създадена специално за деца;<br>\n• Вече няма да има случайно разливане и бъркотия, защото специалната CleverGripTM технология позволява на чашата да се захваща върху всяка гладка повърхност, като същевременно се вдига изключително лесно;<br>\n• Специална основа CleverGripTM,, непозволяваща падане;<br>\n• Специалният дизайн, имитиращ отворена чаша, подкрепя оралното развитие;<br>\n• Насърчава умението за самостоятелно пиене;<br>\n• Идеална за пиене без бъркотия;<br>\n• Не съдържа BPA.<br>\nВместимост: 190 мл.<br>\nПодходящи за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-super-chasha-ne-se-preobrashta-lesno-se-vdiga-190-ml-6m-lilava-tt-0144-001', 40),
(74, 1, 'Lovi Неразливаща се чаша с дръжки 360° WILD SOUL BOY', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновационна клапа, позволяваща на детето да пие отвсякъде около ръба;<br>\n• Не съдържа BPA;<br>\n• Мембрана, съдържаща антибактериална SteriTouch® защита;<br>\n• Иновативната система не позволява разливане. По този начин детето се научава да контролира движенията си и го подготвя да пие от обикновена чаша;<br>\n• Лесна за почистване;<br>\n• Дръжките на чашата са покрити с неплъзгащ се материал;<br>\n• Капацитет: 250 мл.;<br>\nПодходяща за деца над 9 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-wild-soul-boy-1-605', 40),
(75, 1, 'Lovi Неразливаща се чаша с дръжки 360° WILD SOUL GIRL', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновационна клапа, позволяваща на детето да пие отвсякъде около ръба;<br>\n• Не съдържа BPA;<br>\n• Мембрана, съдържаща антибактериална SteriTouch® защита;<br>\n• Иновативната система не позволява разливане. По този начин детето се научава да контролира движенията си и го подготвя да пие от обикновена чаша;<br>\n• Лесна за почистване;<br>\n• Дръжките на чашата са покрити с неплъзгащ се материал;<br>\n• Капацитет: 250 мл.;<br>\nПодходяща за деца над 9 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-wild-soul-girl-1-604', 40),
(76, 1, 'Lovi Неразливаща се чаша с дръжки 360° I LOVE КАФЯВ', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновационна клапа, позволяваща на детето да пие отвсякъде около ръба;<br>\n• Не съдържа BPA;<br>\n• Мембрана, съдържаща антибактериална SteriTouch® защита;<br>\n• Иновативната система не позволява разливане. По този начин детето се научава да контролира движенията си и го подготвя да пие от обикновена чаша;<br>\n• Лесна за почистване;<br>\n• Дръжките на чашата са покрити с неплъзгащ се материал;<br>\n• Капацитет: 250 мл.;<br>\nПодходяща за деца над 9 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-nerazlivashta-se-chasha-s-drazhki-360-i-love-kafyav-1-607', 40),
(77, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 325 мл ANIMALS MINT GREEN', '5.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Дръжки за удобно хващане;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-mint-green-1020077-0004', 40),
(78, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 325 мл ANIMALS BLUSH PINK', '5.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Дръжки за удобно хващане;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-blush-pink-1020077-0002', 40),
(79, 1, 'LORELLI BABY CARE Чаша със сламка и дръжки 325 мл ANIMALS MOONLIGHT BLUE', '5.5', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Дръжки за удобно хващане;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-i-drazhki-325-ml-animals-moonlight-blue-1020077-0001', 40),
(80, 1, 'LORELLI BABY CARE Чаша със сламка мини 200 мл ANIMALS MINT GREEN', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 200 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-mint-green-1020074-0004', 40),
(81, 1, 'LORELLI BABY CARE Чаша със сламка мини 200 мл ANIMALS BLUSH PINK', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 200 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-blush-pink-1020074-0002', 40),
(82, 1, 'LORELLI BABY CARE Чаша със сламка мини 200 мл ANIMALS MOONLIGHT BLUE', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 200 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-mini-200-ml-animals-moonlight-blue-1020074-0001', 40),
(83, 1, 'LORELLI BABY CARE Чаша със сламка 325 мл ANIMALS MINT GREEN', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-mint-green-1020073-0004', 40),
(84, 1, 'LORELLI BABY CARE Чаша със сламка 325 мл ANIMALS BLUSH PINK', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-blush-pink-1020073-0002', 40),
(85, 1, 'LORELLI BABY CARE Чаша със сламка 325 мл ANIMALS MOONLIGHT BLUE', '4.98', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша със сламка;<br>\n• Не съдържа BPA.<br>\nВместимост: 325 мл.<br>\nПодходящо за деца над 6+ месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-sas-slamka-325-ml-animals-moonlight-blue-1020073-0001', 40),
(86, 1, 'NUK Чаша за сок 450 мл. 24+м. SPORTS CUP MICKEY GREY', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша с клапа за пиене; <br>\n• Променящи се цветове – активира се от топло и студено; <br>\n• Да се почисти внимателно преди първа употреба; <br>\n• Произведена от полипропилен (PP); <br>\n• Не се препоръчва за употреба в микровълнова фурна и съдомиялна машина.<br>\nВместимост: 450 мл.<br>\nПодходяща за деца над 2 години.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-24-m-sports-cup-mickey-grey-10751198', 40),
(87, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 300 мл. 12+м КОСМОС/МОМЧЕ', '21.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана, за да поддържа вашето дете щастливо и хидратирано;<br>\n• По-голям капацитет от 300 мл.;<br>\n• Доказано неразливаща се технология;<br>\n• Спортен накрайник с клапа за автоматично затваряне след отпиване;<br>\n• Лека; специално проектирани страници за лесно захващане от малките ръчички;<br>\n• Капацитет: 300 мл.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-300-ml-12-m-kosmos-momche-tt-0137-002', 40),
(88, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 300 мл. 12+м КОСМОС/МОМИЧЕ', '21.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана, за да поддържа вашето дете щастливо и хидратирано;<br>\n• По-голям капацитет от 300 мл.;<br>\n• Доказано неразливаща се технология;<br>\n• Спортен накрайник с клапа за автоматично затваряне след отпиване;<br>\n• Лека; специално проектирани страници за лесно захващане от малките ръчички;<br>\n• Капацитет: 300 мл.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-sporten-nakraynik-300-ml-12-m-kosmos-momiche-tt-0137-001', 40),
(89, 1, 'TOMMEE TIPPEE Неразливаща се чаша с мек накрайник 230 мл. 6+м РОЗОВА', '18.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Новите чаши са с подобрена неразливаща се клапа, която се състои от две части за по-лесно почистване.<br>\n• Специално проектирана, за да развива уменията на детето да пие.<br>\n• Доказано неразливаща се технология.<br>\n• Супер мек накрайник нежен към чувствителните бебешки венци.<br>\n• Свалящи се дръжки, подходящи за държане от малките ръчички.<br>\n• Капацитет: 230 мл.<br>\nПодходяща за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-230-ml-6-m-rozova-tt-0135-002', 40),
(90, 1, 'TOMMEE TIPPEE Неразливаща се чаша с мек накрайник 150 мл. 4+м ПЛАНЕТА РОЗОВА', '16.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Новите чаши са с подобрена неразливаща се клапа, която се състои от две части за по-лесно почистване.<br>\n• Специално проектирана, за да развива уменията на детето да пие.<br>\n• Доказано неразливаща се технология.<br>\n• Мек накрайник.<br>\n• Капацитет: 150 мл.<br>\nПодходяща за деца над 4 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-s-mek-nakraynik-150-ml-4-m-planeta-rozova-tt-0134-002', 40),
(91, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша с твърд накрайник 260 мл. 12+м ЦИКЛАМА', '23.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Тя е направена да помогне на малките деца да се научат да пият<br>\n• Наистина неразливаща технология<br>\n• Термоизолирана, за да запазва напитката хладна за по-дълго;<br>\n• Чаша 260 мл. с твърд накрайник – чудесна за разходка;<br>\n• Без BPA.<br>\nПодходяща за деца над 1 години.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-tsiklama-tt-0139-003', 40),
(92, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша с твърд накрайник 260 мл. 12+м СВ.СИНЯ', '23.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Тя е направена да помогне на малките деца да се научат да пият<br>\n• Наистина неразливаща технология<br>\n• Термоизолирана, за да запазва напитката хладна за по-дълго;<br>\n• Чаша 260 мл. с твърд накрайник – чудесна за разходка;<br>\n• Без BPA.<br>\nПодходяща за деца над 1 години.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-sv-sinya-tt-0139-002', 40),
(93, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша със сламка 260 мл. 12+м РОЗОВА/ТЮРКОАЗ', '21.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Тя е направена да помогне на малките деца да се научат да пият със сламка и е изцяло неразливаща;<br>\n• Наистина неразливаща технология<br>\n• Термоизолирана, за да запазва напитката хладна за по-дълго;<br>\n• Чаша 260 мл. със сламка – чудесна за разходка;<br>\n• Без BPA.<br>\nПодходяща за деца над 1 години.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-sas-slamka-260-ml-12-m-rozova-tyurkoaz-tt-0138-002', 40),
(94, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сламка 230 мл. 6+м РОЗОВА/ОРАНЖ', '18.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана, за да развива уменията на детето да пие<br>\n• Доказано неразливаща се технология<br>\n• Супер мека сламка, която улеснява пиенето<br>\n• Свалящи се дръжки, подходящи за държане от малките ръчички<br>\n- Капацитет: 230мл.<br>\nПодходяща за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-230-ml-6-m-rozova-oranzh-tt-0136-002', 40),
(95, 1, 'TOMMEE TIPPEE Преходна чаша с два накрайника 150 мл. 4м + СИНЯ', '24.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Преходната чаша е перфектният избор за първите глътки на Вашето бебе. До момента те са били свързани с майчината гърда или шишето за хранене, затова въвеждането на чаша е важна стъпка по пътя за усъвършенстване начина на пиене.<br>\n• Мек силиконов биберон и оребрен мек накрайник за няколко опции при пиене.<br>\n• Сменяеми и лесни за хващане дръжки, специално създадени за малките ръчички.<br>\n• Може да се стерилизира на пара, да се поставя в микровълнова печка и в съдомиялна машина.<br>\n• Не съдържа BPA.<br>\nПодходящи за деца над 4 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-dva-nakraynika-150-ml-4m-sinya-tt-0141-004', 40),
(96, 1, 'Lovi Чаша със сламка и дръжка 250 мл LOVELY GIRL 35/354 g', '19.49', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално разработена да позволява самостоятелно пиене;<br>\n• Чашата има капачка с удобна дръжка;<br>\n• Затваря се плътно с Click&Go система;<br>\n• Специално проектиран бутон предпазва от случайно отваряне и разливане на течността;<br>\n• Сламка, изработена от мек, висококачествен силикон, който не дразни венците на детето;<br>\n• Възможност за регулиране на дължината на дръжката;<br>\n• Капачка на винт, която е заменяема с тази от други чаши LOVI: Може да се използва с чаша 360° или LOVI нетечаща чаша;<br>\n• Всички части могат да бъдат лесно разглобени и почистени.<br>\nВнимание: Не мийте в съдомиялна машина! Не използвайте в микровълнова! Не стерилизирайте!<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-250-ml-lovely-girl-35-354-g', 40),
(97, 1, 'Lovi Чаша със сламка и дръжка 250 мл LOVELY BOY 35/354 b', '19.49', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално разработена да позволява самостоятелно пиене;<br>\n• Чашата има капачка с удобна дръжка;<br>\n• Затваря се плътно с Click&Go система;<br>\n• Специално проектиран бутон предпазва от случайно отваряне и разливане на течността;<br>\n• Сламка, изработена от мек, висококачествен силикон, който не дразни венците на детето;<br>\n• Възможност за регулиране на дължината на дръжката;<br>\n• Капачка на винт, която е заменяема с тази от други чаши LOVI: Може да се използва с чаша 360° или LOVI нетечаща чаша;<br>\n• Всички части могат да бъдат лесно разглобени и почистени.<br>\nВнимание: Не мийте в съдомиялна машина! Не използвайте в микровълнова! Не стерилизирайте!<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-250-ml-lovely-boy-35-354-b', 40),
(98, 1, 'Lovi Чаша със сламка и дръжка 350 мл LOVELY GIRL 35/355 g', '19.49', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално разработена да позволява самостоятелно пиене;<br>\n• Чашата има капачка с удобна дръжка;<br>\n• Затваря се плътно с Click&Go система;<br>\n• Специално проектиран бутон предпазва от случайно отваряне и разливане на течността;<br>\n• Сламка, изработена от мек, висококачествен силикон, който не дразни венците на детето;<br>\n• Възможност за регулиране на дължината на дръжката;<br>\n• Капачка на винт, която е заменяема с тази от други чаши LOVI: Може да се използва с чаша 360° или LOVI нетечаща чаша;<br>\n• Всички части могат да бъдат лесно разглобени и почистени.<br>\nВнимание: Не мийте в съдомиялна машина! Не използвайте в микровълнова! Не стерилизирайте!<br>\nВместимост: 350 мл.<br>\nПодходяща за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-sas-slamka-i-drazhka-350-ml-lovely-girl-35-355-g', 40),
(99, 1, 'NUK EV Сет чаша ALL IN ONE МОМЧЕ', '43.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Комплекта съдържа:<br>\n• 1 бр. Чашка 230мл;<br>\n• 1 бр. Неразливащ се мек накрайник за деца над 6 месеца;<br>\n• 1 бр. Накрайник за магическа чашка 360 градуса; с капаче; подходящ за деца над 8 месеца - за приучаване към самостоятелно пиене, не се разлива, може да се пие от всеки един край на ръба;<br>\n• 1 бр. Накрайник за чашка Action cup; подходящ за деца над 12 месеца; със сламка - не позволява разливането на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-set-chasha-all-in-one-momche-10255636', 40),
(100, 1, 'NUK EV Сет чаша ALL IN ONE МОМИЧЕ', '38.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Комплекта съдържа:<br>\n• 1 бр. Чашка 230мл;<br>\n• 1 бр. Неразливащ се мек накрайник за деца над 6 месеца;<br>\n• 1 бр. Накрайник за магическа чашка 360 градуса; с капаче; подходящ за деца над 8 месеца - за приучаване към самостоятелно пиене, не се разлива, може да се пие от всеки един край на ръба;<br>\n• 1 бр. Накрайник за чашка Action cup; подходящ за деца над 12 месеца; със сламка - не позволява разливането на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-set-chasha-all-in-one-momiche-10255637', 40),
(101, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник Thermo Control 150 мл.', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• NUK PP чаша Temperature control – интегрираната скала показва температурата на храната. Оцветена в бяло – горещо, средно наситено синьо – 37 градуса, тъмно синьо – студено; <br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите! <br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-thermo-control-150-ml-disney-10215340', 40),
(102, 1, 'NUK EV Чаша за сок 230 мл. 8+ м. MAGIC FRUITS', '19.8', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете.<br>\n• Направена е от висококачествен полипропилен в уникална форма. <br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане. <br>\n• Може да се пие от всеки ъгъл на отвора .<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо.<br>\n• Материалите, от които е изработена са безопасни и не съдържат ВРА.<br>\nВместимост: 230 мл.<br>\nПодходяща за деца над 8 месеца.<br>\nАсортимент! Доставка според наличностите!<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-fruits-10255593', 40),
(103, 1, 'NUK EV Чаша за сок 230 мл. 8+ м. MAGIC PEPPA', '19.8', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете.<br>\n• Направена е от висококачествен полипропилен в уникална форма. <br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане. <br>\n• Може да се пие от всеки ъгъл на отвора .<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо.<br>\n• Материалите, от които е изработена са безопасни и не съдържат ВРА.<br>\nВместимост: 230 мл.<br>\nПодходяща за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-peppa-10255611', 40),
(104, 1, 'NUK Чаша за сок 450 мл. 36+м. SPORTS CUP CHAMELEON С ПРОМЕНЯЩИ СЕ ЦВЕТОВЕ', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша с клапа за пиене; <br>\n• Променящи се цветове – активира се от топло и студено; <br>\n• Да се почисти внимателно преди първа употреба; <br>\n• Произведена от полипропилен (PP); <br>\n• Не се препоръчва за употреба в микровълнова фурна и съдомиялна машина.<br>\nВместимост: 450 мл.<br>\nПодходяща за деца над 3 години.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-chameleon-s-promenyashti-se-tsvetove-10255577', 40),
(105, 1, 'NUK Чаша с клапа 300 мл. JUNIOR CUP 18+м CHAMELEON С ПРОМЕНЯЩИ СЕ ЦВЕТОВЕ', '17.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с клапа и капаче;<br>\n• Предпазна капачка и клипс за закрепване към чанта или колан;<br>\n• Променящи се цветове – активира се от топло и студено;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 18+ месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-s-klapa-300-ml-junior-cup-18-m-chameleon-s-promenyashti-se-tsvetove-10255576', 40),
(106, 1, 'NUK Чаша със сламка 300 мл. 12+м. FLEXI CHAMELEON С ПРОМЕНЯЩИ СЕ ЦВЕТОВЕ', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Променящи се цветове на чашата– активира се от топло и студено; <br>\n• Не съдържа ВРА.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-sas-slamka-300-ml-12-m-flexi-chameleon-s-promenyashti-se-tsvetove-10255575', 40),
(107, 1, 'NUK EV Чаша със сламка 230 мл. 12+м. ACTION CUP С ПРОМЕНЯЩИ СЕ ЦВЕТОВЕ', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Променящи се цветове на чашата– активира се от топло и студено; <br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-s-promenyashti-se-tsvetove-10255574', 40),
(108, 1, 'CHICCO Светеща чаша 266 мл. 14+ МОМЧЕ', '30.98', 'Chicco', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша, идеална за разходки навън или по време на път;<br>\n• С твърд накрайник;<br>\n• Поддържа постоянна температурата на течностите чрез двойната изолация на стените на чашата;<br>\n• Свети в тъмното;<br>\n• Лесна е за хващане от малките ръчички;<br>\n• Не съдържа Бисфенол А (BPA Free).<br>\nВместимост: 266 мл.<br>\nПодходяща за деца над 14 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/chicco-n0426-sveteshta-chasha-266-ml-14-momche', 40),
(109, 1, 'CHICCO Светеща чаша 266 мл. 14+ МОМИЧЕ', '30.98', 'Chicco', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша, идеална за разходки навън или по време на път;<br>\n• С твърд накрайник;<br>\n• Поддържа постоянна температурата на течностите чрез двойната изолация на стените на чашата;<br>\n• Свети в тъмното;<br>\n• Лесна е за хващане от малките ръчички;<br>\n• Не съдържа Бисфенол А (BPA Free).<br>\nВместимост: 266 мл.<br>\nПодходяща за деца над 14 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/chicco-n0425-sveteshta-chasha-266-ml-14-momiche', 40),
(110, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP GLOW IN THE DARK', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник от синтетичен материал, устойчив на малки зъбки и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Благодарение на светещия безопасен за бебето материал, шишето излъчва мека светлина и може лесно да бъде открита и през нощта;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-glow-in-the-dark-10255541', 40),
(111, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник 150 мл. GLOW IN THE DARK', '24.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• Благодарение на светещия безопасен за бебето материал, шишето излъчва мека светлина и може лесно да бъде открита и през нощта;<br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-glow-in-the-dark-10215326', 40),
(112, 1, 'CANPOL Чаша със сламка 350мл CAT РОЗОВА', '16.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чашата е идеална за деца, които се учат да пият самостоятелно;<br>\n• Специалната сламка с тежест в единия край позволява да се пие, независимо под какъв ъгъл се държи чашата; <br>\n• Капачето позволява хигиеничното съхранение на сламката и предотвратяване на неконтролируемото разливане;<br>\n• Практичната връзка с велкро лепенка позволява прикрепяне на чашата към детската количка или чанта;<br>\n• Чашата е прозрачна, което позволява контролирането на количеството течност;<br>\n• Изработена от безопасни материали;<br>\n• Не съдържа BPA;<br>\n• Вместимост: 350 мл;<br>\nПодходяща за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-slamka-350ml-cat-rozova-56-520', 40),
(113, 1, 'CANPOL Чаша със сламка 250мл CAT РОЗОВА', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чашата е идеална за деца, които се учат да пият самостоятелно;<br>\n• Специалната сламка с тежест в единия край позволява да се пие, независимо под какъв ъгъл се държи чашата; <br>\n• Капачето позволява хигиеничното съхранение на сламката и предотвратяване на неконтролируемото разливане;<br>\n• Практичната връзка с велкро лепенка позволява прикрепяне на чашата към детската количка или чанта;<br>\n• Чашата е прозрачна, което позволява контролирането на количеството течност;<br>\n• Изработена от безопасни материали;<br>\n• Не съдържа BPA;<br>\n• Вместимост: 250 мл;<br>\nПодходяща за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-slamka-250ml-cat-rozova-56-520', 40),
(114, 1, 'NUK Чаша за сок 450 мл. 36+м. SPORTS CUP', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша с клапа за пиене; <br>\n• Да се почисти внимателно преди първа употреба; <br>\n• Произведена от полипропилен (PP); <br>\n• Не се препоръчва за употреба в микровълнова фурна и съдомиялна машина.<br>\nВместимост: 450 мл.<br>\nПодходяща за деца над 3 години.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-10255412', 40),
(115, 1, 'NUK Чаша за сок със сламка FLEXY CUP 300 мл', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобният клипс осигурява лесно закрепване на чашата и предотвратява падане или изгубване, а капачето не позволява разливане;<br>\n• Произведена от полипропилен;<br>\n• Без BPA;<br>\n• С мека силиконова сламка;<br>\nПодходяща за деца над 18 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-sas-slamka-flexy-cup-300-ml-10751083', 40),
(116, 1, 'AVENT Чаша за лесен преход без дръжки 260 мл СИН', '18.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мек силиконов накрайник с вградена клапа, за лесно отпиване; предпазва венците;<br>\n• Дизайн, който позволява лесно захващане за малки ръчички;<br>\n• Съвместими с шишета Philips AVENT Natural и Classic, с изключение на стъклената шишета;<br>\n• Малък брой части за по-лесно почистване;<br>\n• Вместимост: 260 мл.<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-chasha-za-lesen-prehod-bez-drazhki-260-ml-sin-00a-0489-003', 40),
(117, 1, 'AVENT Чаша за лесен преход без дръжки 260 мл ЛИЛА', '18.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мек силиконов накрайник с вградена клапа, за лесно отпиване; предпазва венците;<br>\n• Дизайн, който позволява лесно захващане за малки ръчички;<br>\n• Съвместими с шишета Philips AVENT Natural и Classic, с изключение на стъклената шишета;<br>\n• Малък брой части за по-лесно почистване;<br>\n• Вместимост: 260 мл.<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-chasha-za-lesen-prehod-bez-drazhki-260-ml-lila-00a-0489-002', 40),
(118, 1, 'KIKKA BOO Неразливаща се чаша 360° с дръжки 300мл LION', '9.5', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни, лесни за хващане дръжки;<br>\n• Възможност за пиене от всяка позиция на отвора;<br>\n• Интересен дизайн;<br>\n• Изработено от полипропилен;<br>\n• Лесна за почистване;\n• Без BPA;<br>\n• Вместимост 300 мл.<br>\nПодходящо за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-360-s-drazhki-300ml-lion-31302030051', 40),
(119, 1, 'KIKKA BOO Неразливаща се чаша 360° с дръжки 300мл OWL', '9.5', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни, лесни за хващане дръжки;<br>\n• Възможност за пиене от всяка позиция на отвора;<br>\n• Интересен дизайн;<br>\n• Изработено от полипропилен;<br>\n• Лесна за почистване;\n• Без BPA;<br>\n• Вместимост 300 мл.<br>\nПодходящо за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-360-s-drazhki-300ml-owl-31302030050', 40),
(120, 1, 'KIKKA BOO Неразливаща се чаша със сламка 300мл СИНЯ', '7.98', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни, лесни за хващане дръжки;<br>\n• Мека силиконова сламка;<br>\n• Капак, който пази сламката чиста;<br>\n• Изработено от полипропилен;<br>\n• Без BPA;<br>\n• Вместимост 300 мл.<br>\nПодходящо за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-sas-slamka-300ml-sinya-31302030046', 40),
(121, 1, 'KIKKA BOO Неразливаща се чаша със сламка 300мл РОЗОВА', '7.98', 'Kikkaboo', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни, лесни за хващане дръжки;<br>\n• Мека силиконова сламка;<br>\n• Капак, който пази сламката чиста;<br>\n• Изработено от полипропилен;<br>\n• Без BPA;<br>\n• Вместимост 300 мл.<br>\nПодходящо за деца над 12 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/kikka-boo-nerazlivashta-se-chasha-sas-slamka-300ml-rozova-31302030045', 40),
(122, 1, 'TOMMEE TIPPEE Неразливаща се преходна чаша 300 мл. 12м+ КОТЕ РОЗОВА', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана форма за удобство и лесно захващане от малките ръчички! Без необходимост от сила при засмукване. Мек и гъвкав силиконов накрайник за по-лесен преход.<br>\n• Лесен преход от шише към чаша - развива уменията за пиене на бебето като запазва мекото познато усещане при преминаване от шише към чаша;<br>\n• Непропусклив, устойчив на гризане, мек силиконов накрайник - нежен към венците, но достатъчно здрав, за да удържи на малките зъбки;<br>\n• Препоръчва се от стоматолозите - спомага за здравословното орално развитие;<br>\n• Весела капачка със забавен дизайн за плътно затваряне - може да се постави с увереност в чанта без притеснение от разливане;<br>\n• Лесно почистване - подходящи за стерилизиране, съдомиялна машина и микровълнова фурна;<br>\n• Не съдържа BPA и BPS.<br>\nПодходящи за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-300-ml-12m-kote-rozova-tt-0193', 40),
(123, 1, 'TOMMEE TIPPEE Неразливаща се преходна чаша 300 мл. 12м+ КОТЕ СИНЯ', '19.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана форма за удобство и лесно захващане от малките ръчички! Без необходимост от сила при засмукване. Мек и гъвкав силиконов накрайник за по-лесен преход.<br>\n• Лесен преход от шише към чаша - развива уменията за пиене на бебето като запазва мекото познато усещане при преминаване от шише към чаша;<br>\n• Непропусклив, устойчив на гризане, мек силиконов накрайник - нежен към венците, но достатъчно здрав, за да удържи на малките зъбки;<br>\n• Препоръчва се от стоматолозите - спомага за здравословното орално развитие;<br>\n• Весела капачка със забавен дизайн за плътно затваряне - може да се постави с увереност в чанта без притеснение от разливане;<br>\n• Лесно почистване - подходящи за стерилизиране, съдомиялна машина и микровълнова фурна;<br>\n• Не съдържа BPA и BPS.<br>\nПодходящи за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-300-ml-12m-kote-sinya-tt-0192', 40),
(124, 1, 'TOMMEE TIPPEE Неразливаща се преходна чаша с дръжки 230 мл. 6м+ КОТЕ РОЗОВА', '18.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Преходната чаша е перфектният избор за първите глътки на Вашето бебе. До момента те са били свързани с майчината гърда или шишето за хранене, затова въвеждането на чаша е важна стъпка по пътя за усъвършенстване начина на пиене.<br>\n• Непропусклив, устойчив на гризане, мек силиконов накрайник - нежен към венците, но достатъчно здрав, за да удържи на малките зъбки;<br>\n• Препоръчва се от стоматолозите - спомага за здравословното орално развитие;<br>\n• Весела капачка със забавен дизайн за плътно затваряне - може да се постави с увереност в чанта без притеснение от разливане;<br>\n• Подвижни дръжки - идеални за хващане с малките ръчички;<br>\n• Лесно почистване - подходящи за стерилизиране, съдомиялна машина и микровълнова фурна;<br>\n• Не съдържа BPA и BPS.<br>\nПодходящи за деца над 6 месеца<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-prehodna-chasha-s-drazhki-230-ml-6m-kote-rozova-tt-0191', 40),
(125, 1, 'NUK Чаша за сок с клапа 300 мл. JUNIOR CUP', '16.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с клапа и капаче;<br>\n• Предпазна капачка и клипс за закрепване към чанта или колан;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 3 години.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-klapa-300-ml-junior-cup-10751081', 40);
INSERT INTO `product` (`id`, `client_id`, `title`, `price`, `brand`, `description`, `category_id`, `price_promotion`, `link`, `master_cat_id`) VALUES
(126, 1, 'NUK Чаша със силиконов накрайник Active Cup 300 мл', '16.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики: <br>\n• Съвместима е със серията аксесоари First Choice;<br>\n• Чашата е произведена от полипропилен;<br>\n• Без Бисфенол А;<br>\n• Мек силиконов накрайник - със специална система NUK Air System – за гладък поток на течността ;<br>\nПодходящо за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-s-s-silikonov-nakrajnik-active-cup-300-ml-118721', 40),
(127, 1, 'NUK FIRST CHOICE PP Преходна чаша за сок със силиконов накрайник 150 мл.', '17.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник;<br>\n• Удобни дръжки за по-лесно захващане;<br>\n• Чаша от РР /полипропилен/ - обозначен със знака „РР“ върху чашата;<br>\n• За изваряване и стерилизиране /температура над 80 С/ чашата винаги да се разглобява на части и да се оставя отворена, тъй като в противен случай може да се стигне до деформации;<br>\n• Определени вещества от състава на напитките /например сок от моркови/ могат да оцветят чашата или да повлияят на мириса /например чай от копър/;<br>\n• Това не влошава годността на шишето или безопасността му.<br>\nОбем: 150 мл.<br>\nПодходящо за деца от 6 до 18 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-first-choice-pp-prehodna-chasha-za-sok-sas-silikonov-nakraynik-150-ml-10215262', 40),
(128, 1, 'NUK EV Чаша със сламка 230 мл. 12+м. ACTION CUP ЛИЛАВА', '17.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека сламка, която е гъвкава и не наранява венците и небцето;<br>\n• Само с едно завъртане на капачката - сламката изчезва;<br>\n• Вентилационна клапа за лесно пиене;<br>\n• Не съдържа ВРА.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-sas-slamka-230-ml-12-m-action-cup-rozova-10255389', 40),
(129, 1, 'NUK EV Чаша за сок 250 мл. 8+ м. MAGIC CUP БЕЖОВА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете;<br>\n• Направена е от висококачествен полипропилен в уникална форма;<br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане;<br>\n• Може да се пие от всеки ъгъл на отвора;<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо;<br>\n• Не съдържат ВРА.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-bezhova-10255394', 40),
(130, 1, 'NUK EV Чаша за сок 250 мл. 8+ м. MAGIC CUP РОЗОВА', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете;<br>\n• Направена е от висококачествен полипропилен в уникална форма;<br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане;<br>\n• Може да се пие от всеки ъгъл на отвора;<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо;<br>\n• Не съдържат ВРА.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-rozova-10255393', 40),
(131, 1, 'NUK EV Чаша за сок 250 мл. 8+ м. MAGIC CUP СИНЯ', '18.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете;<br>\n• Направена е от висококачествен полипропилен в уникална форма;<br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане;<br>\n• Може да се пие от всеки ъгъл на отвора;<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо;<br>\n• Не съдържат ВРА.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 8 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-250-ml-8-m-magic-cup-sinya-10255392', 40),
(132, 1, 'NUK EV Чаша с дръжки MINI MAGIC 160 мл 6+ месеца НЕУТРАЛ', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK магическа чашка с дръжки 360 градуса;<br>\n• За приучаване към самостоятелно пиене; не се разлива; може да се пие от всеки един край на ръба;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 160 мл.<br>\nПодходящо за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-neutral-10255464', 40),
(133, 1, 'NUK EV Чаша с дръжки MINI MAGIC 160 мл 6+ месеца РОЗОВА', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK магическа чашка с дръжки 360 градуса;<br>\n• За приучаване към самостоятелно пиене; не се разлива; може да се пие от всеки един край на ръба;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 160 мл.<br>\nПодходящо за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-rozova-10255463', 40),
(134, 1, 'NUK EV Чаша с дръжки MINI MAGIC 160 мл 6+ месеца СИНЯ', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK магическа чашка с дръжки 360 градуса;<br>\n• За приучаване към самостоятелно пиене; не се разлива; може да се пие от всеки един край на ръба;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 160 мл.<br>\nПодходящо за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-s-drazhki-mini-magic-160-ml-6-mesetsa-sinya-10255462', 40),
(135, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP FROZEN ПРИНЦЕСИ', '18.6', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-frozen-printsesi-10751243', 40),
(136, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP FROZEN СИНЯ', '18.6', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-frozen-sinya-10751242', 40),
(137, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP DUMBO', '19.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-dumbo-10255498', 40),
(138, 1, 'CANPOL Чаша със силиконов накрайник 300 мл BIRDS', '10.69', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чашата е идеална за деца, които се учат да пият самостоятелно;<br>\n• Снабдена с удобни дръжки, специално проектирани за малките детски ръчички; <br>\n• Мекият силиконов накрайник не наранява венците и първите зъби;<br>\n• Ефективно научава детето как да пие самостоятелно без да разлива;<br>\n• Широкото гърло на чашата позволява лесно пълнене и почистване;<br>\n• Хигиеничното капаче предпазва накрайника от замърсяване;<br>\n• Изработена от устойчиви и безопасни материали;<br>\n• Вместимост: 300 мл;<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-sas-silikonov-nakraynik-300-ml-birds-56-519', 40),
(139, 1, 'CANPOL Нетечаща чаша със сламка 350 мл', '8.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Цветна и практична преходна чаша;<br>\n• Снабдена с нетечаща мека сламка, която не дразни нежните бебешки венци и първите зъби; <br>\n• С хигиенично капаче, което предпазва сламката от замърсяване;<br>\n• Удобна дръжка, която позволява прикрепяне към чантата за бебешки принадлежности или колан;<br>\n• Идеалният спътник по време на игри, разходки или дълги пътувания;<br>\n• Вместимост: 350 мл;<br>\n• Не съдържа Бесфенол А (BPA Free).<br>\nПодходяща за деца над 18 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-350-ml-56-510', 40),
(140, 1, 'CANPOL Нетечаща чаша с дръжки и мек накрайник 230 мл SEA LIFE', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Идеална за приучване на бебето да пие от чаша;<br>\n• Нетечащият накрайник предотвратява разливане; <br>\n• Удобните големи дръжки улесняват дължането от детските ръце;<br>\n• Мекият накрайник не дразни чувствителните венци и първите зъби на детето;<br>\n• Чашата е прозрачна, снабдена с измервателна скала и хигиенично капаче;<br>\n• Вместимост: 230 мл;<br>\n• Не съдържа Бесфенол А (BPA Free).<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-230-ml-sea-life-56-501', 40),
(141, 1, 'CANPOL Нетечаща чаша с дръжки и мек накрайник 180 мл SWEET РОЗОВА', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Идеална за приучване на бебето да пие от чаша;<br>\n• Нетечащият накрайник предотвратява разливане; <br>\n• Удобните големи дръжки улесняват дължането от детските ръце;<br>\n• Мекият накрайник не дразни чувствителните венци и първите зъби на детето;<br>\n• Чашата е прозрачна, снабдена с измервателна скала и хигиенично капаче;<br>\n• Вместимост: 180 мл;<br>\n• Не съдържа Бесфенол А (BPA Free).<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-180-ml-sweet-rozova-57-300', 40),
(142, 1, 'CANPOL Нетечаща чаша с дръжки и мек накрайник 180 мл SWEET СИНЯ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Идеалнa за приучване на бебето да пие от чаша;<br>\n• Нетечащият накрайник предотвратява разливане; <br>\n• Удобните големи дръжки улесняват дължането от детските ръце;<br>\n• Мекият накрайник не дразни чувствителните венци и първите зъби на детето;<br>\n• Чашата е прозрачна, снабдена с измервателна скала и хигиенично капаче;<br>\n• Вместимост: 180 мл;<br>\n• Не съдържа Бесфенол А (BPA Free).<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-i-mek-nakraynik-180-ml-sweet-sinya-57-300', 40),
(143, 1, 'NUK Чаша за сок 450 мл. 36+м. SPORTS CUP MICKEY', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша с клапа за пиене; <br>\n• Да се почисти внимателно преди първа употреба; <br>\n• Произведена от полипропилен (PP); <br>\n• Не се препоръчва за употреба в микровълнова фурна и съдомиялна машина.<br>\nВместимост: 450 мл.<br>\nПодходяща за деца над 3 години.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-450-ml-36-m-sports-cup-10255413', 40),
(144, 1, 'TOMMEE TIPPEE Супер чаша - не се преобръща', '24.98', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Супер чашата на Tommee Tippee ще превърне всеки мъник в герой, защото тя е създадена специално за деца. <br>\n• Вече няма да има случайно разливане и бъркотия, защото специалната CleverGripTM технология позволява на чашата да се захваща върху всяка гладка повърхност, като същевременно се вдига изключително лесно.<br>\n• Специална основа CleverGripTM,, непозволяваща падане.<br>\n• Специалният дизайн, имитиращ отворена чаша, подкрепя оралното развитие.<br>\n• Насърчава умението за самостоятелно пиене.<br>\n• Идеална за пиене без бъркотия.<br>\n• Не съдържа BPA.<br>\nВместимост: 300 мл.<br>\nПодходящи за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-super-chasha-ne-se-preobrashta-lesno-se-vdiga-300-ml-12m-44730875', 40),
(145, 1, 'NUK EV Чаша за сок 230 мл. 8+ м. MAGIC CUP MICKEY', '21.98', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Магическата чашка е идеално решение за първото самостоятелно пиене на течности на Вашето дете.<br>\n• Направена е от висококачествен полипропилен в уникална форма. <br>\n• Притежава силиконов запечатващ диск, който предпазва течността от разливане. <br>\n• Може да се пие от всеки ъгъл на отвора.<br>\n• Удобна е за почистване, тъй като частите и се свалят лесно и бързо.<br>\n• Материалите, от които е изработена са безопасни и не съдържат ВРА.<br>\nВместимост: 230 мл.<br>\nПодходяща за деца над 8 месеца.<br>\nАсортимент. Доставка според наличностите..<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-8-m-magic-cup-mickey-10255403', 40),
(146, 1, 'NUK EV Чаша за сок 230 мл. TRAINER CUP', '15.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• NUK чашка неразливаща се, с мек накрайник;<br>\n• Измийте преди употреба;<br>\n• Напълнете я с течност и завийте капака;<br>\n• Проверявайте накрайника за признаци на износване;<br>\n• Използвайте под родителски контрол;<br>\n• Проверявайте температурата на течността.<br>\nВместимост: 230 мл.<br>\nПодходящо за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-ev-chasha-za-sok-230-ml-trainer-cup-10255387', 40),
(147, 1, 'CHICCO Спортна чаша 266 мл. 14+ ACTIVE МОМЧЕ', '29.98', 'Chicco', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> • Чаша, идеална за разходки навън или по време на път;<br>\n• С твърд накрайник;<br>\n• Подсигурена с упътнение, издържащо на захапване;<br>\n• Поддържа постоянна температурата на течностите чрез двойната изолация на стените на чашата;<br>\n• С интегрирана система против падане;<br>\n• Лесна е за хващане от малките ръчички;<br>\n• Не съдържа Бисфенол А (BPA Free).<br>\nВместимост: 266 мл.<br>\nПодходяща за деца над 14 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/chicco-n0423-sportna-chasha-266-ml-14-active-momche', 40),
(148, 1, 'CHICCO Спортна чаша 266 мл. 14+ ACTIVE МОМИЧЕ ', '29.98', 'Chicco', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> • Чаша, идеална за разходки навън или по време на път;<br>\n• С твърд накрайник;<br>\n• Подсигурена с упътнение, издържащо на захапване;<br>\n• Поддържа постоянна температурата на течностите чрез двойната изолация на стените на чашата;<br>\n• С интегрирана система против падане;<br>\n• Лесна е за хващане от малките ръчички;<br>\n• Не съдържа Бисфенол А (BPA Free).<br>\nВместимост: 266 мл.<br>\nПодходяща за деца над 14 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/chicco-n0422-sportna-chasha-266-ml-14-active-momiche', 40),
(149, 1, 'CANPOL Нетечаща чаша със сламка 350 мл. ТЮРКОАЗ', '16.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобни дръжки, както и силиконовата сламка, която не дразни венците и небцето. <br>\n• Сламката позволява пиенето от всички страни, а след завъртане на капачето се прибира навътре. Това предотвратява разливането на течността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\n• Повече от двадесет години, компанията предоставя на децата и техните родители в 35 страни, пълна гама от продукти за хранене, грижа, развитие, забавление и сигурност.<br>\n• Вместимост: 350 мл.<br>\n• Без BPA.<br>\nПодходяща за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-350-ml-tyurkoaz-56-518', 40),
(150, 1, 'CANPOL Нетечаща чаша със сламка 250 мл. ТЮРКОАЗ', '14.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобни дръжки, както и силиконовата сламка, която не дразни венците и небцето. <br>\n• Сламката позволява пиенето от всички страни, а след завъртане на капачето се прибира навътре. Това предотвратява разливането на течността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\n• Повече от двадесет години, компанията предоставя на децата и техните родители в 35 страни, пълна гама от продукти за хранене, грижа, развитие, забавление и сигурност.<br>\n• Вместимост: 250 мл.<br>\n• Без BPA.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-sas-slamka-250-ml-tyurkoaz-56-517', 40),
(151, 1, 'NUK Чаша за сок с клапа 300 мл. JUNIOR CUP BEACH TIME', '16.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с клапа и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 3 години.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-klapa-300-ml-junior-cup-beach-time-10255428', 40),
(152, 1, 'NUK PP Чаша за сок със сламка 300 мл. FLEXY CUP BEACH TIME', '17.48', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша със силиконова сламка и капаче;<br>\n• Удобен клипс;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща; <br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\n• Не съдържа ВРА.<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 18 месеца.<br>\nАсортимент. Доставка според наличностите.\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-pp-chasha-za-sok-sas-slamka-300-ml-flexy-cup-beach-time-10255427', 40),
(153, 1, 'NUK Чаша за сок с твърд накрайник 300 мл. KIDDY CUP BEACH TIME', '17.88', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортна чаша с твърд накрайник и капаче;<br>\n• Да се почисти внимателно преди първата употреба и след всяка следваща;<br>\n• Не се препоръчва употребата в микровълнова фурна и в съдомиялна машина;<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 1 година.<br>\nАсортимент. Доставка според наличностите.\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-za-sok-s-tvard-nakraynik-300-ml-kiddy-cup-beach-time-10255426', 40),
(154, 1, 'CHICCO Спортна чаша със сламка 266 мл. 14+ УНИ', '32.98', 'Chicco', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Чаша, идеална за разходки навън или по време на път;<br>\n• Със сламка, която се \"изважда\" и \"прибира\" с помощта на плъзгащо се капаче;<br>\n• Подсигурена с упътнение, издържащо на захапване;<br>\n• Поддържа постоянна температурата на течностите чрез двойната изолация на стените на чашата;<br>\n• С интегрирана система против падане;<br>\n• Лесна е за хващане от малките ръчички;<br>\n• Не съдържа Бисфенол А (BPA Free).<br>\nВместимост: 266 мл.<br>\nПодходяща за деца над 14 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/chicco-n0420-sportna-chasha-sas-slamka-266-ml-14-uni', 40),
(155, 1, 'Lovi Неразливаща чаша с дръжки 210мл. 9+ MINI BUDDY BEAR', '17.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативната система за запечатване позволява на децата си да пият удобно от всеки ръб на чашата, без да разливат течността.<br>\n• Предназначена да подкрепя и насърчава бебето да пие самостоятелно от чаша.<br>\n• Мек накрайник - изработен от висококачествен силикон, безопасен за деца. Формата му помага на детето да пие самостоятелно. Размерите и формата на накрайника са проектирани със съдействието на логопеди.<br>\n• Благодарение на удобните за захващане дръжки и нетечащия накрайник детето ще се научи да пие без чужда помощ.<br>\n• Всички части могат да бъдат лесно разглобени и почистени.<br>\nВместимост: 210 мл.<br>\nПодходяща за деца над 9 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-nerazlivashta-chasha-s-drazhki-210ml-9-mini-buddy-bear-35-349', 40),
(156, 1, 'CANPOL Спортна чаша с мека сламка и капаче 400 мл. 12+ РОЗОВ', '10.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Неразливаща се чаша – идеална за вкъщи и навън;<br>\n• Лесна за самостоятелна употреба;<br>\n• Специалната ергономична форма позволява на бебето да я държи лесно;<br>\n• Силиконова сламка, която не дразни венците и небцето;<br>\n• Меката сламка, ако не се използва, може лесно да бъде скрита чрез завъртане на капака по часовниковата стрелка;<br>\n• С удобна дръжка - каишка и капаче;<br>\n• Не съдържа Бисфенол А;<br>\n• Вместимост : 400 мл.<br>\nПодходяща за деца над 1 година<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-s-meka-slamka-i-kapache-400-ml-12-rozov-4-102', 40),
(157, 1, 'CANPOL Спортна чаша с мека сламка и капаче 400 мл. 12+ ЖЪЛТ', '10.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Неразливаща се чаша – идеална за вкъщи и навън;<br>\n• Лесна за самостоятелна употреба;<br>\n• Специалната ергономична форма позволява на бебето да я държи лесно;<br>\n• Силиконова сламка, която не дразни венците и небцето;<br>\n• Меката сламка, ако не се използва, може лесно да бъде скрита чрез завъртане на капака по часовниковата стрелка;<br>\n• С удобна дръжка - каишка и капаче;<br>\n• Не съдържа Бисфенол А;<br>\n• Вместимост : 400 мл.<br>\nПодходяща за деца над 1 година.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-s-meka-slamka-i-kapache-400-ml-12-zhalt-4-102', 40),
(158, 1, 'CANPOL Спортна нетечаща чаша със сламка 350 мл. RACING СВЕТЛОСИНЯ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобна дръжка, както и силиконовата сламка, която не дразни венците и небцето.<br>\n• Можете да я захванете за колана си, за да е на чисто място.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост 350 мл.<br>\nПодходящ за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-racing-svetlosinya-56-516', 40),
(159, 1, 'CANPOL Спортна нетечаща чаша със сламка 350 мл. RACING ТЪМНОСИНЯ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобна дръжка, както и силиконовата сламка, която не дразни венците и небцето.<br>\n• Можете да я захванете за колана си, за да е на чисто място.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост 350 мл.<br>\nПодходящ за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-racing-tamnosinya-56-516', 40),
(160, 1, 'CANPOL Спортна нетечаща чаша със сламка 350 мл. BUTTERFLY РОЗОВА', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобна дръжка, както и силиконовата сламка, която не дразни венците и небцето.<br>\n• Можете да я захванете за колана си, за да е на чисто място.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост 350 мл.<br>\nПодходящ за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-butterfly-rozova-56-515', 40),
(161, 1, 'CANPOL Спортна нетечаща чаша със сламка 350 мл. BUTTERFLY ТЮРКОАЗ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Подходяща е за по-големи деца, които могат да пият самостоятелно.<br>\n• Идеална е за вкъщи или за разходка. Има капаче и удобна дръжка, както и силиконовата сламка, която не дразни венците и небцето.<br>\n• Можете да я захванете за колана си, за да е на чисто място.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост 350 мл.<br>\nПодходящ за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportna-netechashta-chasha-sas-slamka-350-ml-butterfly-tyurkoaz-56-515', 40),
(162, 1, 'Lovi Чаша с дръжки 360° BUDDY BEAR UNISEX 210 мл.', '18.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновационна клапа, позволяваща на детето да пие отвсякъде около ръба;<br>\n• Не съдържа BPA;<br>\n• Мембрана, съдържаща антибактериална SteriTouch® защита;<br>\n• Иновативната система не позволява разливане. По този начин детето се научава да контролира движенията си и го подготвя да пие от обикновена чаша;<br>\n• Лесна за почистване;<br>\n• Дръжките на чашата са покрити с неплъзгащ се материал;<br>\n• Капацитет: 210 мл.;<br>\nПодходяща за деца над 9 месеца.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-s-drazhki-360-buddy-bear-unisex-210-ml-1-600', 40),
(163, 1, 'Lovi Чаша с дръжки 360° BUDDY BEAR UNISEX 250 мл.', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативната система за запечатване позволява на децата си да пият удобно от всеки ръб на чашата;<br>\n• Капацитет: 250 мл.;<br>\n• Не съдържа бисфенол-А и BPA;<br>\n• Дръжки удобни за хващане от детските ръчички;<br>\n• Разполага с патентована защита срещу бактерии-SteriTouch;<br>\n• Лесна за почистване, но не е неразливаща се - при по-силно раздрусване, може да потекат капки;<br>\n• Капачката с 360° и ви позволява да пиете отвсякъде около чашата;<br>\n• Децата се приучават да пият от всеки ръб на чашата и се улеснява преминаването към стъклени чаши.<br>\nПодходяща за деца над 12 месеца. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-s-drazhki-360-buddy-bear-unisex-250-ml-1-599', 40),
(164, 1, 'AVENT SCF804/04 Неразливаща се чаша с твърд накрайник 300 мл. ', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Усъвършенствана клапа – пиене без разливане.<br>\n• Твърд улей, изключително устойчив на хапане – за растящи зъби.<br>\n• Контурна форма и неплъзгаща се текстура.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна).<br>\n• Без BPA (0% BPA).<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 18 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf804-04-nerazlivashta-se-chasha-s-tvard-nakraynik-300-ml-zelena', 40),
(165, 1, 'AVENT SCF804/03 Неразливаща се чаша с твърд накрайник 300 мл. ЗЕЛЕНА', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Усъвършенствана клапа – пиене без разливане.<br>\n• Твърд улей, изключително устойчив на хапане – за растящи зъби.<br>\n• Контурна форма и неплъзгаща се текстура.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна).<br>\n• Без BPA (0% BPA).<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 18 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf804-03-nerazlivashta-se-chasha-s-tvard-nakraynik-300-ml-zelena', 40),
(166, 1, 'AVENT SCF802/02 Неразливаща се чаша с мек накрайник 300 мл. ЛИЛАВА', '20.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Усъвършенствана клапа – пиене без разливане.<br>\n• Мек, устойчив на хапане улей за растящи зъби.<br>\n• Контурна форма и неплъзгаща се текстура.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна).<br>\n• Без BPA (0% BPA).<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf802-02-nerazlivashta-se-chasha-s-mek-nakraynik-300-ml-lilava', 40),
(167, 1, 'AVENT SCF802/01 Неразливаща се чаша с мек накрайник 300 мл. СИНЯ ', '20.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Усъвършенствана клапа – пиене без разливане.<br>\n• Мек, устойчив на хапане улей за растящи зъби.<br>\n• Контурна форма и неплъзгаща се текстура.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна).<br>\n• Без BPA (0% BPA).<br>\nВместимост: 300 мл.<br>\nПодходящо за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf802-01-nerazlivashta-se-chasha-s-mek-nakraynik-300-ml-sinya', 40),
(168, 1, 'CANPOL Нетечаща чаша с дръжки 230 мл 9+м TOYS ТЮРКОАЗ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни дръжки за по-добро прикрепване на чашата в малките ръце.<br>\n• Предотвратява изтичане, когато детето изпусне чашата или я носи с главата надолу.<br>\n• Мек силиконов накрайник.<br>\n• Капацитет: 230 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-230-ml-9-m-toys-tyurkoaz-56-502', 40),
(169, 1, 'CANPOL Нетечаща чаша с дръжки 230 мл 9+м TOYS СИНЯ', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобни дръжки за по-добро прикрепване на чашата в малките ръце.<br>\n• Предотвратява изтичане, когато детето изпусне чашата или я носи с главата надолу.<br>\n• Мек силиконов накрайник.<br>\n• Капацитет: 230 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-drazhki-230-ml-9-m-toys-sinya-56-502', 40),
(170, 1, 'CANPOL Спортна чаша с капаче 370 мл. 12+ РОЗОВО', '8.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Цветната спортна чаша е подходяща за деца по време на път.<br>\n• Очертаната форма помага за хващане от малките ръчички.<br>\n• Подвижният връх на капачката предпазва сламката когато не е в употреба, а също предотвратява разливането.<br>\nВместимост: 370 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-rozovo-56-113', 40),
(171, 1, 'CANPOL Спортна чаша с капаче 370 мл. 12+ ЗЕЛЕНО', '8.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Цветната спортна чаша е подходяща за деца по време на път.<br>\n• Очертаната форма помага за хващане от малките ръчички.<br>\n• Подвижният връх на капачката предпазва сламката когато не е в употреба, а също предотвратява разливането.<br>\nВместимост: 370 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-zeleno-56-113', 40),
(172, 1, 'CANPOL Спортна чаша с капаче 370 мл. 12+ СИНЬО', '8.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Цветната спортна чаша е подходяща за деца по време на път.<br>\n• Очертаната форма помага за хващане от малките ръчички.<br>\n• Подвижният връх на капачката предпазва сламката когато не е в употреба, а също предотвратява разливането.<br>\nВместимост: 370 мл.<br>\nПодходящо за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-s-kapache-370-ml-12-sinyo-56-113', 40),
(173, 1, 'AVENT SCF551/03 Чаша за лесен преход с дръжки 200 мл РОЗОВА', '16.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мек силиконов улей, съставен от една единствена част и е лесен за отпиване: течността започва да тече, когато към улея се приложи натиск.<br>\n• Всички части са подходящи за съдомиялна машина, което дава удобство.<br>\n• Клапата е вградена в улея, осигурявайки бързо и безпроблемно сглобяване.<br>\n• Контейнерът на чашката за отпиване е проектиран да позволява лесно захващане за малки ръчички.<br>\n• Всички бутилки и чаши Philips Avent са съвместими, с изключение на стъклените бутилки и чашата за пораснали деца. Така че можете да комбинирате и напасвате, за да създадете перфектната чаша, отговаряща на индивидуалните нуждите на вашето мъниче.<br>\n• Вместимост: 200 мл.<br>\nПодходяща за деца над 6 месеца<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf551-03-chasha-za-lesen-prehod-s-drazhki-200-ml-rozova-00a-0488', 40),
(174, 1, 'AVENT SCF551/05 Чаша за лесен преход с дръжки 200 мл ЗЕЛЕНА', '16.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мек силиконов улей, съставен от една единствена част и е лесен за отпиване: течността започва да тече, когато към улея се приложи натиск.<br>\n• Всички части са подходящи за съдомиялна машина, което дава удобство.<br>\n• Клапата е вградена в улея, осигурявайки бързо и безпроблемно сглобяване.<br>\n• Контейнерът на чашката за отпиване е проектиран да позволява лесно захващане за малки ръчички.<br>\n• Всички бутилки и чаши Philips Avent са съвместими, с изключение на стъклените бутилки и чашата за пораснали деца. Така че можете да комбинирате и напасвате, за да създадете перфектната чаша, отговаряща на индивидуалните нуждите на вашето мъниче.<br>\n• Вместимост: 200 мл.<br>\nПодходяща за деца над 6 месеца<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf551-05-chasha-za-lesen-prehod-s-drazhki-200-ml-zelena-00a-0488', 40),
(175, 1, 'CANPOL Спортна чаша със сламка и капаче 270 мл. ЗЕЛЕН', '7.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Неразливаща се, лесна за самостоятелна употреба;<br>\n• Неразливаща се чаша – идеална за вкъщи и навън;<br>\n• Силиконова сламка;<br>\n• Специалната ергономична форма позволява на бебето да я държи лесно;<br>\n• Капаче;<br>\n• Не съдържа Бисфенол А;<br>\n• Вместимост : 270 мл.<br>\nПодходяща за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-sas-slamka-i-kapache-270-ml-zelen-56-109', 40),
(176, 1, 'CANPOL Спортна чаша със сламка и капаче 270 мл. СИН', '7.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Неразливаща се, лесна за самостоятелна употреба;<br>\n• Неразливаща се чаша – идеална за вкъщи и навън;<br>\n• Силиконова сламка;<br>\n• Специалната ергономична форма позволява на бебето да я държи лесно;<br>\n• Капаче;<br>\n• Не съдържа Бисфенол А;<br>\n• Вместимост : 270 мл.<br>\nПодходяща за деца над 1 година.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-sportno-shishe-sas-slamka-i-kapache-270-ml-sin-56-109', 40),
(177, 1, 'CANPOL Нетечаща чаша с твърд накрайник 250 мл. TOYS ТЮРКОАЗ', '6.99', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-tyurkoaz-31-404', 40),
(178, 1, 'CANPOL Нетечаща чаша с твърд накрайник 250 мл. TOYS РОЗОВ', '6.99', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-rozov-31-404', 40),
(179, 1, 'CANPOL Нетечаща чаша с твърд накрайник 250 мл. TOYS СИН', '6.99', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-sin-31-404', 40),
(180, 1, 'CANPOL Нетечаща чаша с твърд накрайник 250 мл. TOYS ЧЕРЕН', '6.99', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-s-tvard-nakraynik-250-ml-toys-cheren-31-404', 40),
(181, 1, 'CANPOL Нетечаща чаша 250 мл. TOYS РОЗОВ', '7.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-rozov-31-200', 40),
(182, 1, 'CANPOL Нетечаща чаша 250 мл. TOYS ЗЕЛЕН', '7.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-zelen-31-200', 40),
(183, 1, 'CANPOL Нетечаща чаша 250 мл. TOYS СИН', '7.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Haberman за Canpol е колекция от не-разливащи се чаши, проектирани от Манди Хаберман.<br>\n• Тя е изобретател на първата чашка без разливане. Това се случило, след като се замислила как да предотврати непрекъснатото разливане на течности върху килима от дъщеря си.<br>\n• Чашата е съставена от две части: капаче със специален клапан и контейнер. Клапанът, не позволява разливане по време на пиене а практичните дръжки, които са подходящи за малките ръчички подпомагат самостоятелността.<br>\n• Може да се ползва в микровълнова печка и миялна машина.<br>\nВместимост: 250 мл.<br>\nПодходяща за деца над 9 месеца.<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-netechashta-chasha-250-ml-toys-sin-31-200', 40),
(184, 1, 'AVENT SCF798/02 Неразливаща се чаша със сламка 300 мл. 12+м. РОЗОВА', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Чашата със сламка Philips Avent Bendy с контурни форми е идеалният избор за подрастващи и активни деца и позволява здравословно развитие на устата.<br>\nХарактеристики:<br>\n• По-ниската сламка се огъва за лесно пиене до последната глътка: <br>\n- По-ниската част на сламката се огъва, така че сламката лесно достига до течността, което ви позволява да пиете в естествено положение на пиене.<br>\n• Вграденият клапан против изтичане и капачката на панта предотвратяват разливане: <br>\n-Сламката разполага с вграден клапан против изтичане за предотвратяване на разливане. <br>\n- Капачката на панта предпазва сламката и не позволява разливане в движение.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна):<br>\n- Чашата със сламка Philips Avent Bendy може лесно да се сглобява и разглобява. <br>\n- Всички части са безопасни за използване в съдомиялна машина за ваше удобство.<br>\n• Здравословно развитие на устата:<br>\n- Чашата със сламка Philips Avent Bendy позволява здравословно развитие на устата и упражняване на мускулите на устата, изграждайки орална сила.<br>\n- Разработена с експерти, за да създадем нашата възможно най-добра чаша със сламка.<br>\n• Профилна форма и текстура против плъзгане за лесно хващане:<br>\n- Чашата от 10 унции (300 мл) е идеалният размер, за да поддържа детето ви хидратирано през целия ден и през активните часове. <br>\n- Дизайнът с капачка на панта поддържа сламката чиста, когато я изваждате и поставяте. <br>\n- Профилната форма на чашата и текстурата против плъзгане улесняват хващането и захвата за ръцете на малките деца, което позволява на мъниците уверено да развиват умения на самостоятелно пиене.<br>\nВместимост: 300 мл.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf798-02-nerazlivascha-se-chasha-s-s-slamka-300-ml-12-m-rozova-00a-0521', 40),
(185, 1, 'AVENT SCF798/01 Неразливаща се чаша със сламка 300 мл. 12+м. ЗЕЛЕНА', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Чашата със сламка Philips Avent Bendy с контурни форми е идеалният избор за подрастващи и активни деца и позволява здравословно развитие на устата.<br>\nХарактеристики:<br>\n• По-ниската сламка се огъва за лесно пиене до последната глътка: <br>\n- По-ниската част на сламката се огъва, така че сламката лесно достига до течността, което ви позволява да пиете в естествено положение на пиене.<br>\n• Вграденият клапан против изтичане и капачката на панта предотвратяват разливане: <br>\n-Сламката разполага с вграден клапан против изтичане за предотвратяване на разливане. <br>\n- Капачката на панта предпазва сламката и не позволява разливане в движение.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна):<br>\n- Чашата със сламка Philips Avent Bendy може лесно да се сглобява и разглобява. <br>\n- Всички части са безопасни за използване в съдомиялна машина за ваше удобство.<br>\n• Здравословно развитие на устата:<br>\n- Чашата със сламка Philips Avent Bendy позволява здравословно развитие на устата и упражняване на мускулите на устата, изграждайки орална сила.<br>\n- Разработена с експерти, за да създадем нашата възможно най-добра чаша със сламка.<br>\n• Профилна форма и текстура против плъзгане за лесно хващане:<br>\n- Чашата от 10 унции (300 мл) е идеалният размер, за да поддържа детето ви хидратирано през целия ден и през активните часове. <br>\n- Дизайнът с капачка на панта поддържа сламката чиста, когато я изваждате и поставяте. <br>\n- Профилната форма на чашата и текстурата против плъзгане улесняват хващането и захвата за ръцете на малките деца, което позволява на мъниците уверено да развиват умения на самостоятелно пиене.<br>\nВместимост: 300 мл.<br>\nПодходяща за деца над 12 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf798-01-nerazlivascha-se-chasha-s-s-slamka-300-ml-12-m-zelena-00a-0521', 40);
INSERT INTO `product` (`id`, `client_id`, `title`, `price`, `brand`, `description`, `category_id`, `price_promotion`, `link`, `master_cat_id`) VALUES
(186, 1, 'AVENT SCF796/02 Неразливаща се чаша със сламка 200 мл. 9+м. ЛИЛАВА', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Чашата със сламка Philips Avent Bendy с ергономични дръжки е идеална за първи глътки от сламка и позволява здравословно развитие на устата.<br>\nХарактеристики:<br>\n• По-ниската сламка се огъва за лесно пиене до последната глътка: <br>\n- По-ниската част на сламката се огъва, така че сламката лесно достига до течността, което ви позволява да пиете в естествено положение на пиене.<br>\n• Вграденият клапан против изтичане и капачката на панта предотвратяват разливане: <br>\n-Сламката разполага с вграден клапан против изтичане за предотвратяване на разливане. <br>\n- Капачката на панта предпазва сламката и не позволява разливане в движение.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна):<br>\n- Чашата със сламка Philips Avent Bendy може лесно да се сглобява и разглобява. <br>\n- Всички части са безопасни за използване в съдомиялна машина за ваше удобство.<br>\n• Здравословно развитие на устата:<br>\n- Чашата със сламка Philips Avent Bendy позволява здравословно развитие на устата и упражняване на мускулите на устата, изграждайки орална сила.<br>\n- Разработена с експерти, за да създадем нашата възможно най-добра чаша със сламка.<br>\n• Ергономични дръжки и мека сламка – идеална за малки деца:<br>\n- Вградените дръжки на чашата са ергономично проектирани, което улеснява хващането на чашата от малки ръце. <br>\n- Меката гъвкава сламка е нежна към венците,а леката и малка на размер чаша е идеална за първи глътки със сламка.<br>\nВместимост: 200 мл.<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf796-02-nerazlivascha-se-chasha-s-s-slamka-200-ml-9-m-lilava-00a-0520', 40),
(187, 1, 'AVENT SCF796/01 Неразливаща се чаша със сламка 200 мл. 9+м. СИНЯ', '22.98', 'Philips Avent', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Чашата със сламка Philips Avent Bendy с ергономични дръжки е идеална за първи глътки от сламка и позволява здравословно развитие на устата.<br>\nХарактеристики:<br>\n• По-ниската сламка се огъва за лесно пиене до последната глътка: <br>\n- По-ниската част на сламката се огъва, така че сламката лесно достига до течността, което ви позволява да пиете в естествено положение на пиене.<br>\n• Вграденият клапан против изтичане и капачката на панта предотвратяват разливане: <br>\n-Сламката разполага с вграден клапан против изтичане за предотвратяване на разливане. <br>\n- Капачката на панта предпазва сламката и не позволява разливане в движение.<br>\n• Малко части – лесно сглобяване и почистване (безопасни за съдомиялна):<br>\n- Чашата със сламка Philips Avent Bendy може лесно да се сглобява и разглобява. <br>\n- Всички части са безопасни за използване в съдомиялна машина за ваше удобство.<br>\n• Здравословно развитие на устата:<br>\n- Чашата със сламка Philips Avent Bendy позволява здравословно развитие на устата и упражняване на мускулите на устата, изграждайки орална сила.<br>\n- Разработена с експерти, за да създадем нашата възможно най-добра чаша със сламка.<br>\n• Ергономични дръжки и мека сламка – идеална за малки деца:<br>\n- Вградените дръжки на чашата са ергономично проектирани, което улеснява хващането на чашата от малки ръце. <br>\n- Меката гъвкава сламка е нежна към венците,а леката и малка на размер чаша е идеална за първи глътки със сламка.<br>\nВместимост: 200 мл.<br>\nПодходяща за деца над 9 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/avent-scf796-01-nerazlivascha-se-chasha-s-s-slamka-200-ml-9-m-sinja-00a-0520', 40),
(188, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сгъваем накрайник 300 мл. 6+ FREE FLOW', '9.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Новите чаши Free Flow са специално проектирани за етапа, в който детето става все по-активно и започва да се нуждае от повече течности.<br>\nБлагодарение на специалния накрайник, няма нужда от усилие при пиене. Когато той е в отворено положение, течността потича свободно. <br>\nКогато накрайникът е прибран(затворен), той не позволява разливане и течността няма да изтече. <br>\nТова прави чашата идеална при пътуване.<br>\nДетето ще хареса лекотата, с която отпива от чашата, а родителите - безопасността и неразливащия накрайник.<br>\nХарактеристики:<br>\n• Сгъваем накрайник, непозволяващ изтичане;<br>\n• Препоръчано от здравните специалисти за правилно орално развитие;<br>\n• 300 мл вместимост;<br>\n• Подходящо за миялна машина, микровълнова фурна и стерилизиране;<br>\n• Без BPA.<br>\nПодходящи за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sg-vaem-nakrajnik-300-ml-6-free-flow-44402287', 40),
(189, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сгъваем накрайник 380 мл. 18+ FREE FLOW', '12.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Новите чаши Free Flow са специално проектирани за етапа, в който детето става все по-активно и започва да се нуждае от повече течности.<br>\nБлагодарение на специалния накрайник, няма нужда от усилие при пиене. Когато той е в отворено положение, течността потича свободно. <br>\nКогато накрайникът е прибран(затворен), той не позволява разливане и течността няма да изтече. <br>\nТова прави чашата идеална при пътуване, а термоизолираното й ядро ще пази напитките хладни.<br>\nДетето ще хареса лекотата, с която отпива от чашата, а родителите - безопасността и неразливащия накрайник.<br>\nХарактеристики:<br>\n• Сгъваем накрайник, непозволяващ изтичане;<br>\n• Термоизолирано ядро, за да бъдат напитките хладни;<br>\n• Препоръчано от здравните специалисти за правилно орално развитие;<br>\n• 380 мл вместимост;<br>\n• Подходящо за миялна машина, микровълнова фурна и стерилизиране;<br>\n• Без BPA.<br>\nПодходящи за деца над 18 месеца<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sg-vaem-nakrajnik-380-ml-18-free-flow-44402487', 40),
(190, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 300 мл. 12+ FREE FLOW', '12.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Новите чаши Free Flow със спортен накрайник са идеални за моментите, когато сте навън с Вашето дете. <br>\nСпециално проектирана форма и зона с леко грапава повърхност за по-добър захват от малките ръчички. <br>\nКогато спортният накрайник е затворен, можете да бъдете спокойни, че течността няма да се разлее.<br>\nС вместимост от 300 мл чашата Free Flow със спортен накрайник осигурявана необходимото количество течност, така че Вашето дете да е хидратирано през целия ден.<br>\nХарактеристики:<br>\n• Накрайник, който лесно се издърпва и прибира;<br>\n• Препоръчано от здравните специалисти за правилно орално развитие;<br>\n• 300 мл вместимост;<br>\n• Подходящо за миялна машина и микровълнова фурна;<br>\n• Без BPA.<br>\nПодходящи за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sporten-nakrajnik-300-ml-12-free-flow-44402687', 40),
(191, 1, 'Lovi Чаша с дръжки 360° JUNIOR INDIAN SUMMER BOY 250мл. 1/592', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативната система за запечатване позволява на децата си да пият удобно от всеки ръб на чашата;<br>\n• Капацитет: 250 мл.;<br>\n• Не съдържа бисфенол-А и BPA;<br>\n• Дръжки удобни за хващане от детските ръчички;<br>\n• Разполага с патентована защита срещу бактерии-SteriTouch;<br>\n• Лесна за почистване, но не е неразливаща се - при по-силно раздрусване, може да потекат капки;<br>\n• Децата се приучават да пият от всеки ръб на чашата и се улеснява преминаването към стъклени чаши.<br>\nПодходяща за деца над 12 месеца. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-indian-summer-boy-250ml-1-592', 40),
(192, 1, 'Lovi Чаша с дръжки 360° JUNIOR INDIAN SUMMER GIRL 250мл. 1/591', '19.98', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативната система за запечатване позволява на децата си да пият удобно от всеки ръб на чашата;<br>\n• Капацитет: 250 мл.;<br>\n• Не съдържа бисфенол-А и BPA;<br>\n• Дръжки удобни за хващане от детските ръчички;<br>\n• Разполага с патентована защита срещу бактерии-SteriTouch;<br>\n• Лесна за почистване, но не е неразливаща се - при по-силно раздрусване, може да потекат капки;<br>\n• Децата се приучават да пият от всеки ръб на чашата и се улеснява преминаването към стъклени чаши.<br>\nПодходяща за деца над 12 месеца. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-indian-summer-girl-250ml-1-591', 40),
(193, 1, 'Lovi Нетечаща чаша с дръжки и мек накрайник 150 мл. HOT AND COLD РОЗОВ 35/320', '10.99', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Нетечаща чаша;<br>\n• Улеснява течението на течността само чрез сучене (няма опасност течността да се разлее, когато чашата се пусне или се обърне надолу);<br>\n• Силата на засмукване може да се промени благодарение на вентил, направен от тънък силикон;<br>\n• Дръжки за лесно хващане;<br>\n• Мек накрайник - не дразни детски венци;<br>\n• Вместимост: 150 мл.<br>\nПодходяща за деца над 6 месеца<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-netechascha-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-hot-and-cold-rozov-35-320', 40),
(194, 1, 'Lovi Спортна чаша с дръжки и мек накрайник 150 мл. MARINE СИН 35/311', '8.99', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортните чаши са първата стъпка към самостоятелното пиене;<br>\n• Улеснява преминаването от кърмене или хранене с шише към хранене с чаша;<br>\n• Позволява лесно протичане на течността;<br>\n• Лесна за захващане от малките деца;<br>\n• Капака може да се сваля и чашката да се използва отделно като уред за хранене - има измерителна скала;<br>\n• Вместимост: 150 мл.<br>\nПодходяща за деца над 6 месеца<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-sportna-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-marine-sin-35-311', 40),
(195, 1, 'Lovi Спортна чаша с дръжки и мек накрайник 150 мл. MARINE ЧЕРВЕН 35/310', '8.99', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Спортните чаши са първата стъпка към самостоятелното пиене;<br>\n• Улеснява преминаването от кърмене или хранене с шише към хранене с чаша;<br>\n• Позволява лесно протичане на течността;<br>\n• Лесна за захващане от малките деца;<br>\n• Капака може да се сваля и чашката да се използва отделно като уред за хранене - има измерителна скала;<br>\n• Вместимост: 150 мл.<br>\nПодходяща за деца над 6 месеца<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-sportna-chasha-s-dr-zhki-i-mek-nakrajnik-150-ml-marine-cherven-35-310', 40),
(196, 1, 'Lovi Чаша с дръжки 360° JUNIOR FOLLOW THE RABBIT 250мл. 1/544', '17.99', 'Lo\\u2665i ', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Иновативната система за запечатване позволява на децата си да пият удобно от всеки ръб на чашата;<br>\n• Капацитет: 250 мл.;<br>\n• Не съдържа бисфенол-А и BPA;<br>\n• Дръжки удобни за хващане от детските ръчички;<br>\n• Разполага с патентована защита срещу бактерии-SteriTouch;<br>\n• Лесна за почистване, но не е неразливаща се - при по-силно раздрусване, може да потекат капки;<br>\n• Децата се приучават да пият от всеки ръб на чашата и се улеснява преминаването към стъклени чаши.<br>\nПодходяща за деца над 12 месеца. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lovi-chasha-s-dr-zhki-360-junior-follow-the-rabbit-250ml-1-544', 40),
(197, 1, 'TOMMEE TIPPEE Преходна чаша с два накрайника 150 мл. 4м + РОЗОВА', '24.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Преходната чаша е перфектният избор за първите глътки на Вашето бебе. До момента те са били свързани с майчината гърда или шишето за хранене, затова въвеждането на чаша е важна стъпка по пътя за усъвършенстване начина на пиене.<br>\n• Мек силиконов биберон и оребрен мек накрайник за няколко опции при пиене.<br>\n• Сменяеми и лесни за хващане дръжки, специално създадени за малките ръчички.<br>\n• Може да се стерилизира на пара, да се поставя в микровълнова печка и в съдомиялна машина.<br>\n• Не съдържа BPA.<br>\nПодходящи за деца над 4 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-prehodna-chasha-s-dva-nakraynika-150-ml-4m-rozova-tt-0141-003', 40),
(198, 1, 'CANPOL Чаша със силиконов накрайник и дръжки 320 мл. FUTURE DAYDREAMS', '11.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Силиконов накрайник, който не дразни чувствителните венци на бебето;<br>\n• Удобни за хващане дръжки;<br>\n• Не съдържа Бисфенол А и BPA;<br>\n• Вместимост: 320 мл.<br>\nПодходяща за деца над 6 месеца<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-shishe-s-s-silikonov-nakrajnik-i-dr-zhki-320-ml-future-daydreams-56-514', 40),
(199, 1, 'CANPOL Пластмасова чаша 220 мл. OWLS', '4.98', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Пластмасова чаша;<br>\n• Предназначена е за по-големи деца;<br>\n• Удобна за хващане дръжка;<br>\n• Шарените цветове и рисунки стимулират децата да я използват самостоятелно;<br>\n• Може да се използва в микровълнова;<br>\n• Изработена е от безопасни материали и заоблените ръбове не дразнят детското небце;<br>\n• Не съдържа БИСФЕНОЛ А;<br>\n• Вместимост: 220 мл.<br>\nПодходяща за деца над 1 година.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-plastmasova-chasha-220-ml-owls-4-408', 40),
(200, 1, 'LORELLI BABY CARE Спортна бутилка 250 мл.', '4.6', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Децата са в непрекъснато движение, а това понякога затруднява храненето.<br>\nРешението е спортно шише на Lorelli, което гарантира сигурно и лесно хранене и в най-непредвидените ситуации.<br>\nХарактеристики:<br>\n• Направена е от нечуплива пластмаса. <br>\n• Има хигиеничен капак, който предпазва от зацапване и удобни анатомични дръжки за лесно захващане от детето.<br>\n• Тази чашка служи за плавен и лесен преход на детето към приучването на пиене на вода.<br>\n• Без Бисфенол А.<br>\n• Анатомични дръжки.<br>\nЦената е за 1 бр. спортна бутилка.<br>\nПодходящо за деца над 12 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-sportna-butilka-250-ml-1020070', 40),
(201, 1, 'LORELLI BABY CARE Чаша с твърд накрайник 300 мл.', '5.4', 'LORELLI', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Идеални за първите опити за самостоятелно пиене, чашите имитират напълно процеса на кърмене - силата на изтичане зависи изцяло от темповете на сучене.<br>\nХарактеристики:<br>\n• Тренировъчните чаши стимулират двигателните умения и координацията на бебето.<br>\n• Идеални за първите опити за самостоятелно пиене, чашите имитират напълно процеса на кърмене - силата на изтичане зависи изцяло от темповете на сучене.<br>\n• Вместимост : 300 мл.<br>\nНе съдържа BPA.<br>\nЦената е за 1 бр. чаша.<br>\nПодходяща за деца над 6 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/lorelli-baby-care-chasha-s-tvard-nakraynik-300-ml-1023042', 40),
(202, 1, 'TOMMEE TIPPEE Неразливаща се термо чаша с твърд накрайник 260 мл. 12+м ЗАМЪК/СИН', '23.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Тя е направена да помогне на малките деца да се научат да пият<br>\n• Наистина неразливаща технология<br>\n• Термоизолирана, за да запазва напитката хладна за по-дълго;<br>\n• Чаша 260 мл. с твърд накрайник – чудесна за разходка;<br>\n• Без BPA.<br>\nПодходяща за деца над 1 години.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-termo-chasha-s-tvard-nakraynik-260-ml-12-m-zamak-sin-tt-0139-001', 40),
(203, 1, 'TOMMEE TIPPEE Неразливаща се чаша със спортен накрайник 300 мл.', '17.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана, за да поддържа вашето дете щастливо и хидратирано<br>\n• По-голям капацитет от 300 мл.<br>\n• Доказано неразливаща се технология<br>\n• Спортен накрайник с клапа за автоматично затваряне след отпиване<br>\n• Лека; специално проектирани страници за лесно захващане от малките ръчички<br>\n• Капацитет: 300 мл.<br>\nПодходяща за деца над 12 месеца<br>\nАсортимент. Доставка според наличностите<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivascha-se-chasha-s-s-sporten-nakrajnik-300-ml', 40),
(204, 1, 'TOMMEE TIPPEE Неразливаща се чаша със сламка 230 мл. 6+м РАКЕТА/СИН', '18.88', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Специално проектирана, за да развива уменията на детето да пие<br>\n• Доказано неразливаща се технология<br>\n• Супер мека сламка, която улеснява пиенето<br>\n• Свалящи се дръжки, подходящи за държане от малките ръчички<br>\n- Капацитет: 230мл.<br>\nПодходяща за деца над 6 месеца.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-nerazlivashta-se-chasha-sas-slamka-230-ml-6-m-raketa-sin-tt-0136-001', 40),
(205, 1, 'TOMMEE TIPPEE Чаша ESSENTIALS FIRST CUP 190 мл.', '8.9', 'Tommee Tippee', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Прибиращ се накрайник, който не позволява на течността да се разлее в чантата;<br>\n• С удобни дръжки;<br>\n• Подходяща за пътуване;<br>\n• Обем 190 мл.<br>\nПодходяща за деца над 4 месеца.<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/tommee-tippee-chasha-essentials-first-cup-190-ml-43111010', 40),
(206, 1, 'NUK Резервна сламка за FLEXY CUP 10.256.028', '9.49', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Мека силиконова сламка, подходяща да се използва с чаша Flexy Cup на NUK;<br>\n• Предотвратява разливане при пътуване.<br>\nПодходяща за деца над 2 години.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-rezervna-slamka-za-flexy-cup-10-256-028', 40),
(207, 1, 'NUK Чашка Flexi 300 мл.', '16.5', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Удобният клипс осигурява лесно закрепване на чашата и предотвратява падане или изгубване, а капачето не позволява разливане;<br>\n• Произведена от полипропилен;<br>\n• Без Бисфенол А;<br>\n• С мека силиконова сламка;<br>\nПодходяща за деца над 2 години.<br>\nАсортимент. Доставка според наличностите.<br>\n</div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chashka-flexi-300-ml', 40),
(208, 1, 'NUK Чаша с твърд накрайник Easy Learning System Cup 10.255.270', '16.9', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Система за предотвратяване на разливане на течността;<br>\n• Клапата се отстранява - за по- лесно почистване;<br>\n• Капачката е с винт- лесно се отваря и затваря;<br>\nПодходяща за деца над 14 месеца.<br>\nАсортимент. Доставка според наличностите. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-s-tv-rd-nakrajnik-easy-learning-system-cup-10-255-270', 40),
(209, 1, 'NUK Чаша с твърд накрайник Easy Learning System Cup 10.255.269', '15.9', 'Nuk', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br>\n• Система за предотвратяване на разливане на течността;<br>\n• Клапата се отстранява - за по - лесно почистване;<br>\n• Капачката е с винт- лесно се отваря и затваря;<br>\n• С удобни дръжки за хващане.<br>\nПодходяща за деца над 8 месеца<br>\nАсортимент. Доставка според наличностите.<br> </div>\n</div>\n', 108, '', 'https://www.hippoland.net/nuk-chasha-s-tv-rd-nakrajnik-easy-learning-system-cup-10-255-269', 40),
(210, 1, 'CANPOL Чаша с непързалящо се дъно', '5.49', 'Canpol', '>\n<strong class=\"type\">Описание</strong>\n<div class=\"value\"> Характеристики:<br/>\n• Чашата е изработена от лека и безвредна пластмаса и има забавни картинки, които допълнително ще стимулират вашето дете да я използва;<br/>\n• С дръжка;<br/>\n• Дъното на чашата е със специално гумирано покритие, което не и позволява да пързаля и спомага за по- трудното и обръщане.<br/>\nАсортимент. Доставка според наличностите. </div>\n</div>\n', 108, '', 'https://www.hippoland.net/canpol-chasha-s-nehl-zgascho-se-d-no', 40),
(211, 1, 'CANPOL Неразливаща чаша с дръжки 250 мл.', '6.99', 'Canpol', '', 108, '', 'https://www.hippoland.net/canpol-netechascha-chasha-s-dr-zhki-250-ml', 40);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@kulinarcho.com', NULL, '$2y$10$di6H4CLja82tcJ/ldkm/ouf7uc4jKg5i8pakUxiBGndtaSBxHBWX.', 'S809BuuhALExmhn0DvpVRnI3Fns0G9eYczEUuyNRO9PewWkgoGDpJfqiXQxR', '2023-10-30 17:53:14', '2023-10-30 17:53:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checked_products`
--
ALTER TABLE `checked_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_categories`
--
ALTER TABLE `client_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `failed_links`
--
ALTER TABLE `failed_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsed_log`
--
ALTER TABLE `parsed_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `checked_products`
--
ALTER TABLE `checked_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `client_categories`
--
ALTER TABLE `client_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_links`
--
ALTER TABLE `failed_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `parsed_log`
--
ALTER TABLE `parsed_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
