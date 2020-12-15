-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2020 at 11:45 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newschema4`
--

-- --------------------------------------------------------

--
-- Table structure for table `automobili`
--

DROP TABLE IF EXISTS `automobili`;
CREATE TABLE IF NOT EXISTS `automobili` (
  `ID_automobila` varchar(3) NOT NULL,
  `boja_automobila` varchar(45) DEFAULT NULL,
  `brend_automobila` varchar(45) DEFAULT NULL,
  `deskripcija_automobila` varchar(45) DEFAULT NULL,
  `datum_kupovine_automobila` date DEFAULT NULL,
  `ID_poslovnice` varchar(3) NOT NULL,
  PRIMARY KEY (`ID_automobila`),
  UNIQUE KEY `ID_automobila_UNIQUE` (`ID_automobila`),
  KEY `fk_automobili_poslovnice1_idx` (`ID_poslovnice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `automobili`
--

INSERT INTO `automobili` (`ID_automobila`, `boja_automobila`, `brend_automobila`, `deskripcija_automobila`, `datum_kupovine_automobila`, `ID_poslovnice`) VALUES
('1', 'Plava', 'Mercedes', 'Ispravan', '2020-05-05', '5'),
('10', 'Crna', 'BMW', 'Ispravan', '2020-01-01', '2'),
('11', 'Crna', 'Skoda', 'Ispravan', '2014-05-06', '4'),
('12', 'Bijela', 'Renault', 'Neispravan', '2014-05-15', '3'),
('13', 'Plava', 'BMW', 'Ispravan', '2013-10-10', '1'),
('14', 'Crvena', 'Seat', 'Ispravan', '2019-05-19', '1'),
('15', 'Siva', 'Volskwagen', 'Neispravan', '2014-04-04', '3'),
('2', 'Crvena', 'Audi', 'Ispravan', '2020-04-03', '2'),
('3', 'Bijela', 'Skoda', 'Ispravan', '2017-05-01', '3'),
('4', 'Crna', 'Seat', 'Ispravan', '2013-10-25', '4'),
('5', 'Crna', 'Mercedes', 'Ispravan', '2019-10-10', '5'),
('6', 'Plava', 'Volskwagen', 'Ispravan', '2014-05-15', '5'),
('7', 'Crvena', 'Opel', 'Neispravan', '2017-05-11', '4'),
('8', 'Bijela', 'Volvo', 'Ispravan', '2019-01-01', '1'),
('9', 'Plava', 'Mercedes', 'Ispravan', '2015-10-06', '3');

-- --------------------------------------------------------

--
-- Table structure for table `brojevi_tel`
--

DROP TABLE IF EXISTS `brojevi_tel`;
CREATE TABLE IF NOT EXISTS `brojevi_tel` (
  `glavni_broj_tel` varchar(35) NOT NULL,
  `telefon_1` varchar(35) DEFAULT NULL,
  `telefon_2` varchar(35) DEFAULT NULL,
  `telefon_3` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`glavni_broj_tel`),
  UNIQUE KEY `glavni_broj_tel_UNIQUE` (`glavni_broj_tel`),
  UNIQUE KEY `telefon_1_UNIQUE` (`telefon_1`),
  UNIQUE KEY `telefon_2_UNIQUE` (`telefon_2`),
  UNIQUE KEY `telefon_3_UNIQUE` (`telefon_3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brojevi_tel`
--

INSERT INTO `brojevi_tel` (`glavni_broj_tel`, `telefon_1`, `telefon_2`, `telefon_3`) VALUES
('+38733555111', '+38761526752', '+38761536341', '+38761234668'),
('+38733555222', '+38761259426', '+38762469333', '+38762369433'),
('+38733555333', '+38761316164', '+38763146275', '+38762749632'),
('+38733555444', '+38762616444', '+38763486219', '+38762345945'),
('+38733555555', '+38763365955', '+38763349951', '+38762315697');

-- --------------------------------------------------------

--
-- Table structure for table `kupci`
--

DROP TABLE IF EXISTS `kupci`;
CREATE TABLE IF NOT EXISTS `kupci` (
  `ID_kupac` int(11) NOT NULL,
  `broj_LK` varchar(20) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `mobitel` varchar(45) NOT NULL,
  `grad` varchar(45) NOT NULL,
  `drzava` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_kupac`),
  UNIQUE KEY `broj_LK_UNIQUE` (`broj_LK`),
  UNIQUE KEY `ID_kupac_UNIQUE` (`ID_kupac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kupci`
--

INSERT INTO `kupci` (`ID_kupac`, `broj_LK`, `ime`, `prezime`, `mobitel`, `grad`, `drzava`, `email`) VALUES
(1, '29A875M1', 'Amir', 'Amirović', '+387605554411', 'Sarajevo', 'BiH', 'amir_22@gmail.com'),
(2, '11H5422K47', 'Ahmed', 'Ahmedović', '+387603145655', 'Sarajevo', 'BiH', 'ahmed@gmail.com'),
(3, '45J859K66', 'Faris', 'Mekić', '+381994025516', 'Zagreb', 'Hrvatska', 'faris1@yahoo.com'),
(4, '5566M44F1', 'Srđan', 'Vuletić', '+38590355411', 'Novi Sad', 'Srbija', 'srle123@gmail.com'),
(5, '66J88K992', 'Jasmin', 'Trokić', '+436764805126', 'Beč', 'Austrija', 'zako0@gmail.com'),
(6, '7A90601J5', 'Lejla', 'Muratović', '+38761123456', 'Zenica', 'BiH', 'lejla12@gmail.com'),
(7, 'L123A4567', 'Amar', 'Hodžić', '+38266543210', 'Budva', 'Crna Gora', 'amarh00@yahoo.com'),
(8, 'DE4170152', 'Angela', 'Muller', '+49554563982', 'Berlin', 'Njemačka', 'angelam@hager.de'),
(9, 'P52K24789', 'Mahir', 'Oručević', '+3876014567893', 'Bihać', 'BiH', 'mahiroruc1234@gmail.com'),
(10, 'E526T4532', 'Azra', 'Šetkić', '+38761546321', 'Tuzla', 'BiH', 'azra1@oriflame.ba'),
(11, 'NN1CHD1OJ', 'Selma', 'Agić', '+3876650180702', 'Mostar', 'BiH', 'sagic@gmail.com'),
(12, 'ZM4VJ2MCV', 'Adna', 'Pašić', '+3876654939911', 'Sarajevo', 'BiH', 'adnap@gmail.com'),
(13, 'CVC1O23JZ', 'Mirza', 'Komor', '+3875149556959', 'Sarajevo', 'BiH', 'mirza1243@gmail.com'),
(14, '351G6LH4A', 'Timur', 'Džafić', '+3876656524444', 'Sarajevo', 'BiH', 'timur24@gmail.com'),
(15, 'CNO8EC8NM', 'Damir', 'Kos', '+3871849426628', 'Brčko', 'BiH', 'damirk@gmail.com'),
(16, 'G7RS1SZKS', 'Harun', 'Kapić', '+3876064949261', 'Tuzla', 'BiH', 'harunw534634@gmail.com'),
(17, 'T8NPKHEMV', 'Kenan', 'Kikić', '+3871184819191', 'Zenica', 'BiH', 'kenank123@gmail.com'),
(18, 'SF7BHDVOE', 'Haris', 'Šehić', '+3875161919199', 'Bihać', 'BiH', 'sehahars@gmail.com'),
(19, '6JT2Z8UOK', 'Mak', 'Arnautović', '+3871619578686', 'Banja Luka', 'BiH', 'makarnaut@gmail.com'),
(20, 'OTKOF17AO', 'Din', 'Šehović', '+3871626203625', 'Goražde', 'BiH', 'din1111@gmail.com'),
(21, 'H0L23R0IH', 'Ismar', 'Dovadžija', '+3871261616116', 'Banovići', 'BiH', 'ismarismo111@gmail.com'),
(22, '3DL6CMW70', 'Elma', 'Kisić', '+3873456789352', 'Trebinje', 'BiH', 'elmak11@gmail.com'),
(23, '5283J4IFR', 'Irfan', 'Hodžić', '+3872634758463', 'Gacko', 'BiH', 'irfanhodzic1@gmail.com'),
(24, 'H0RA57JZI', 'Merima', 'Leka', '+3872350324504', 'Cazin', 'BiH', 'mleka1@gmail.com'),
(25, 'LT0RRW7D6', 'Meris', 'Abaza', '+3879320493253', 'Sarajevo', 'BiH', 'meris2@gmail.com'),
(26, 'AWGOH9TKA', 'Belma', 'Islamović', '+3875685663452', 'Sarajevo', 'BiH', 'belma333@gmail.com'),
(27, 'O3HFBADEF', 'Alex', 'Gramlich', '+412335324634', 'Munchen', 'Njemačka', 'alex55@gmail.com'),
(28, '1PCIBZAIB', 'Marko', 'Aleksejević', '+3813253246346', 'Novi Sad', 'Srbija', 'markomarko@gmail.com'),
(29, '5C0H2R1LS', 'Andrej', 'Savić', '+3812353463546', 'Beograd', 'Srbija', 'andrej6@gmail.com'),
(30, '3EB67OKTC', 'Sebastian', 'Wille', '+42345634636', 'Tirol', 'Austrija', 'sebawille@gmail.com'),
(31, 'DJALSPP53', 'Nedeljko', 'Šarić', '+3872432534675', 'Niš', 'Srbija', 'nedasara@gmail.com'),
(32, 'V3L7KI4HV', 'Dejan', 'Rokvić', '+3813465474887', 'Niš', 'Srbija', 'dejorok@gmail.com'),
(33, 'M30ZEARB8', 'Vladimir', 'Popović', '+3876565565956', 'Kruševac', 'Srbija', 'vladovlado1@gmail.com'),
(34, 'ERGAWF96V', 'Saša', 'Nikolić', '+3872345678987', 'Zrenjanin', 'Srbija', 'salesale111@gmail.com'),
(35, 'T1SDKI8UJ', 'Henry', 'Rohr', '+3872345987645', 'Paris', 'Francuska', 'henrihenri@gmail.com'),
(36, 'BZJVFV2T0', 'Slobodan', 'Miličević', '+3872654634556', 'Leskovac', 'Srbija', 'sloboooo@gmail.com'),
(37, 'F6AC2HDAH', 'Sven', 'Domičević', '+3873253265555', 'Zadar', 'Hrvatska', 'sven224254@gmail.com'),
(38, 'AE8IONLP1', 'Philipp', 'Boll', '+4111111111111', 'Beč', 'Austrija', 'filipbolll@gmail.com'),
(39, 'ZRJWCM7I2', 'Elmedin', 'Siručić', '+3877862453848', 'Kalesija', 'BiH', 'elmedinsirucic@gmail.com'),
(40, '9WW9LPL0C', 'Armin', 'Sijamija', '+3871444944945', 'Bijeljina', 'BiH', 'armisijamija@gmail.com'),
(41, '4RGUHSP8R', 'Naida', 'Karabeg', '+3873253467375', 'Sarajevo', 'BiH', 'naidakarabeg@gmail.com'),
(42, 'ZLR7J705M', 'Sabita', 'Helać', '+3872336375754', 'Prijedor', 'BiH', 'sabith1@gmail.com'),
(43, 'F38OZONP2', 'Elmina', 'Nišić', '+3873534635643', 'Trnovo', 'BiH', 'elminanisic@gmail.com'),
(44, 'DWN1LA9C8', 'Irma', 'Kalajdzić', '+3878445456454', 'Kakanj', 'BiH', 'irmakalaj@gmail.com'),
(45, '440ISRS8O', 'Semir', 'Isić', '+3872353463574', 'Zenica', 'BiH', 'sema22@gmail.com'),
(46, 'D4DA4BSMF', 'Amar', 'Vilajet', '+3873463447457', 'Zenica', 'BiH', 'amarvili@gmail.com'),
(47, 'R08S8P994', 'Nedžad', 'Babović', '+3872143252464', 'Zenica', 'BiH', 'nelebabo@gmail.com'),
(48, 'VVSA53AVD', 'Ibrahim', 'Husić', '+3876461632265', 'Tuzla', 'BiH', 'ibrahim11111@gmail.com'),
(49, 'A2VM2RA9F', 'Teufik', 'Bahtanović', '+3875161616166', 'Tuzla', 'BiH', 'teufikkkk@gmail.com'),
(50, '9HNUGJ2UO', 'Ajla', 'Zuko', '+3872432634757', 'Mostar', 'BiH', 'ajlaz@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mostar_poslovnica`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `mostar_poslovnica`;
CREATE TABLE IF NOT EXISTS `mostar_poslovnica` (
`ulica` varchar(45)
,`glavni_broj_tel` varchar(35)
,`ID_automobila` varchar(3)
,`brend_automobila` varchar(45)
,`deskripcija_automobila` varchar(45)
,`datum_kupovine_automobila` date
);

-- --------------------------------------------------------

--
-- Table structure for table `poslovnice`
--

DROP TABLE IF EXISTS `poslovnice`;
CREATE TABLE IF NOT EXISTS `poslovnice` (
  `ID_poslovnice` varchar(3) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `grad` varchar(45) NOT NULL,
  `drzava` varchar(45) NOT NULL,
  `glavni_broj_tel` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_poslovnice`),
  UNIQUE KEY `ID_poslovnice_UNIQUE` (`ID_poslovnice`),
  UNIQUE KEY `glavni_broj_tel_UNIQUE` (`glavni_broj_tel`),
  KEY `fk_poslovnice_brojevi_tel1_idx` (`glavni_broj_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poslovnice`
--

INSERT INTO `poslovnice` (`ID_poslovnice`, `ulica`, `grad`, `drzava`, `glavni_broj_tel`) VALUES
('1', 'Maglajska 17A', 'Sarajevo', 'BiH', '+38733555111'),
('2', 'Behdžeta Mutevelića 28', 'Sarajevo', 'BiH', '+38733555222'),
('3', 'Braće Fejića 3', 'Mostar', 'BiH', '+38733555333'),
('4', 'Gajeva BB', 'Banja Luka', 'BiH', '+38733555444'),
('5', 'Malkočeva 55', 'Tuzla', 'BiH', '+38733555555');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija_automobila`
--

DROP TABLE IF EXISTS `rezervacija_automobila`;
CREATE TABLE IF NOT EXISTS `rezervacija_automobila` (
  `ID_rezervacija_automobila` varchar(3) NOT NULL,
  `cijena` varchar(20) NOT NULL,
  `datum_preuzimanja` date NOT NULL,
  `datum_povratka` date NOT NULL,
  `lokacija_preuzimanja` varchar(30) NOT NULL,
  `lokacija_vracanja` varchar(30) NOT NULL,
  `ID_kupac` int(11) NOT NULL,
  `ID_automobila` varchar(3) NOT NULL,
  PRIMARY KEY (`ID_rezervacija_automobila`),
  UNIQUE KEY `ID_rezervacija_automobila_UNIQUE` (`ID_rezervacija_automobila`),
  KEY `Lokacija` (`lokacija_preuzimanja`),
  KEY `fk_rezervacija_automobila_automobili1_idx` (`ID_automobila`),
  KEY `ID_kupac` (`ID_kupac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija_automobila`
--

INSERT INTO `rezervacija_automobila` (`ID_rezervacija_automobila`, `cijena`, `datum_preuzimanja`, `datum_povratka`, `lokacija_preuzimanja`, `lokacija_vracanja`, `ID_kupac`, `ID_automobila`) VALUES
('1', '2270', '2020-11-12', '2020-12-11', '1', 'Sarajevo', 1, '1'),
('10', '1400', '2020-12-01', '2020-12-31', '4', 'Sarajevo', 10, '10'),
('11', '470', '2020-12-15', '2020-12-17', '1', 'Tuzla', 11, '11'),
('12', '100', '2020-12-01', '2020-12-03', '1', 'Sarajevo', 12, '13'),
('2', '150', '2020-12-04', '2020-12-07', '2', 'Sarajevo', 2, '2'),
('3', '100', '2020-12-08', '2020-12-10', '3', 'Mostar', 3, '3'),
('4', '470', '2020-12-10', '2020-12-13', '4', 'Banja Luka', 4, '4'),
('5', '100', '2020-12-05', '2020-12-12', '5', 'Sarajevo', 5, '5'),
('6', '500', '2020-12-01', '2020-12-30', '3', 'Tuzla', 6, '6'),
('7', '40', '2020-12-12', '2020-12-13', '4', 'Sarajevo', 7, '14'),
('8', '300', '2020-11-11', '2020-12-12', '5', 'Mostar', 8, '8'),
('9', '900', '2020-12-14', '2020-12-28', '2', 'Banja Luka', 9, '9');

-- --------------------------------------------------------

--
-- Stand-in structure for view `rez_ispod_1000`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `rez_ispod_1000`;
CREATE TABLE IF NOT EXISTS `rez_ispod_1000` (
`ID_rezervacija_automobila` varchar(3)
,`cijena` varchar(20)
,`lokacija_preuzimanja` varchar(30)
,`ID_kupac` int(11)
,`ime` varchar(45)
,`prezime` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `skoda_rezervacije`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `skoda_rezervacije`;
CREATE TABLE IF NOT EXISTS `skoda_rezervacije` (
`brend_automobila` varchar(45)
,`ID_rezervacija_automobila` varchar(3)
,`cijena` varchar(20)
,`ID_kupac` int(11)
,`broj_LK` varchar(20)
,`ime` varchar(45)
,`prezime` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `suv_tipovi`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `suv_tipovi`;
CREATE TABLE IF NOT EXISTS `suv_tipovi` (
`ID_automobila` varchar(3)
,`opis_automobila` varchar(45)
,`brend_automobila` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `svi_kontakti`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `svi_kontakti`;
CREATE TABLE IF NOT EXISTS `svi_kontakti` (
`ID_poslovnice` varchar(3)
,`glavni_broj_tel` varchar(35)
,`telefon_1` varchar(35)
,`telefon_2` varchar(35)
,`telefon_3` varchar(35)
);

-- --------------------------------------------------------

--
-- Table structure for table `tip_automobila`
--

DROP TABLE IF EXISTS `tip_automobila`;
CREATE TABLE IF NOT EXISTS `tip_automobila` (
  `ID_automobila` varchar(3) NOT NULL,
  `broj_sasije_automobila` varchar(45) NOT NULL,
  `opis_automobila` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_automobila`),
  UNIQUE KEY `broj_sasije_vozila_UNIQUE` (`broj_sasije_automobila`),
  UNIQUE KEY `automobili_ID_automobila_UNIQUE` (`ID_automobila`),
  KEY `fk_tip_automobila_automobili1_idx` (`ID_automobila`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tip_automobila`
--

INSERT INTO `tip_automobila` (`ID_automobila`, `broj_sasije_automobila`, `opis_automobila`) VALUES
('1', '5TFDY5F10CX228504', 'Karavan'),
('10', '5TBRT34193S488555', 'Karavan'),
('11', '1FTSW21P57EA53904', 'Coupe'),
('12', '1C4RJFBG1EC313114', 'Kombi'),
('13', '2G1WT58K369168906', 'Supercar'),
('14', '1FTFW1ET4DFC14588', 'Limuzina'),
('15', '1FTKR1AD4BPB90904', 'SUV'),
('2', '1C4RJEBT1EC221556', 'Limuzina'),
('3', 'KMHDU46D58U379455', 'Limuzina'),
('4', 'WBAAR3345YJM56296', 'Limuzina'),
('5', '2C4RDGBG0CR153177', 'SUV'),
('6', '5UXZV4C50D0B08598', 'SUV'),
('7', '1FAFP53U12A197460', 'SUV'),
('8', '3N1AB61E28L665429', 'Monovolumen'),
('9', '1XP5DW9X33D809095', 'Karavan');

-- --------------------------------------------------------

--
-- Structure for view `mostar_poslovnica`
--
DROP TABLE IF EXISTS `mostar_poslovnica`;

DROP VIEW IF EXISTS `mostar_poslovnica`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mostar_poslovnica`  AS  select `p`.`ulica` AS `ulica`,`p`.`glavni_broj_tel` AS `glavni_broj_tel`,`a`.`ID_automobila` AS `ID_automobila`,`a`.`brend_automobila` AS `brend_automobila`,`a`.`deskripcija_automobila` AS `deskripcija_automobila`,`a`.`datum_kupovine_automobila` AS `datum_kupovine_automobila` from (`poslovnice` `p` join `automobili` `a`) where ((`a`.`ID_poslovnice` = `p`.`ID_poslovnice`) and (`p`.`grad` = 'Mostar')) ;

-- --------------------------------------------------------

--
-- Structure for view `rez_ispod_1000`
--
DROP TABLE IF EXISTS `rez_ispod_1000`;

DROP VIEW IF EXISTS `rez_ispod_1000`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rez_ispod_1000`  AS  select `r`.`ID_rezervacija_automobila` AS `ID_rezervacija_automobila`,`r`.`cijena` AS `cijena`,`r`.`lokacija_preuzimanja` AS `lokacija_preuzimanja`,`k`.`ID_kupac` AS `ID_kupac`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime` from (`rezervacija_automobila` `r` join `kupci` `k`) where ((`r`.`ID_kupac` = `k`.`ID_kupac`) and (`r`.`cijena` < 1000)) ;

-- --------------------------------------------------------

--
-- Structure for view `skoda_rezervacije`
--
DROP TABLE IF EXISTS `skoda_rezervacije`;

DROP VIEW IF EXISTS `skoda_rezervacije`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skoda_rezervacije`  AS  select `a`.`brend_automobila` AS `brend_automobila`,`r`.`ID_rezervacija_automobila` AS `ID_rezervacija_automobila`,`r`.`cijena` AS `cijena`,`k`.`ID_kupac` AS `ID_kupac`,`k`.`broj_LK` AS `broj_LK`,`k`.`ime` AS `ime`,`k`.`prezime` AS `prezime` from ((`automobili` `a` join `rezervacija_automobila` `r` on((`r`.`ID_automobila` = `a`.`ID_automobila`))) join `kupci` `k`) where ((`r`.`ID_kupac` = `k`.`ID_kupac`) and (`a`.`brend_automobila` = 'Skoda')) ;

-- --------------------------------------------------------

--
-- Structure for view `suv_tipovi`
--
DROP TABLE IF EXISTS `suv_tipovi`;

DROP VIEW IF EXISTS `suv_tipovi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `suv_tipovi`  AS  select `t`.`ID_automobila` AS `ID_automobila`,`t`.`opis_automobila` AS `opis_automobila`,`a`.`brend_automobila` AS `brend_automobila` from (`tip_automobila` `t` join `automobili` `a`) where ((`a`.`ID_automobila` = `t`.`ID_automobila`) and (`t`.`opis_automobila` = 'SUV')) ;

-- --------------------------------------------------------

--
-- Structure for view `svi_kontakti`
--
DROP TABLE IF EXISTS `svi_kontakti`;

DROP VIEW IF EXISTS `svi_kontakti`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `svi_kontakti`  AS  select `p`.`ID_poslovnice` AS `ID_poslovnice`,`br`.`glavni_broj_tel` AS `glavni_broj_tel`,`br`.`telefon_1` AS `telefon_1`,`br`.`telefon_2` AS `telefon_2`,`br`.`telefon_3` AS `telefon_3` from (`poslovnice` `p` join `brojevi_tel` `br` on((`br`.`glavni_broj_tel` = `p`.`glavni_broj_tel`))) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `automobili`
--
ALTER TABLE `automobili`
  ADD CONSTRAINT `fk_automobili_poslovnice1` FOREIGN KEY (`ID_poslovnice`) REFERENCES `poslovnice` (`ID_poslovnice`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `poslovnice`
--
ALTER TABLE `poslovnice`
  ADD CONSTRAINT `fk_poslovnice_brojevi_tel1` FOREIGN KEY (`glavni_broj_tel`) REFERENCES `brojevi_tel` (`glavni_broj_tel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rezervacija_automobila`
--
ALTER TABLE `rezervacija_automobila`
  ADD CONSTRAINT `ID_kupac` FOREIGN KEY (`ID_kupac`) REFERENCES `kupci` (`ID_kupac`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Lokacija` FOREIGN KEY (`lokacija_preuzimanja`) REFERENCES `poslovnice` (`ID_poslovnice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rezervacija_automobila_automobili1` FOREIGN KEY (`ID_automobila`) REFERENCES `automobili` (`ID_automobila`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tip_automobila`
--
ALTER TABLE `tip_automobila`
  ADD CONSTRAINT `fk_tip_automobila_automobili1` FOREIGN KEY (`ID_automobila`) REFERENCES `automobili` (`ID_automobila`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
