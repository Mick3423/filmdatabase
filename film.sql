-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1:3306
-- Genereringstid: 27. 09 2023 kl. 11:13:52
-- Serverversion: 8.0.31
-- PHP-version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `filmoversigt`
--

DROP TABLE IF EXISTS `filmoversigt`;
CREATE TABLE IF NOT EXISTS `filmoversigt` (
  `FilmId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `FilmNavn` varchar(100) COLLATE utf16_danish_ci NOT NULL,
  `FilmBeskrivelse` text COLLATE utf16_danish_ci,
  `FilmPris` decimal(8,2) NOT NULL,
  `FilmMedvirkende` text CHARACTER SET utf16 COLLATE utf16_danish_ci,
  `FilmDirector` varchar(100) COLLATE utf16_danish_ci NOT NULL,
  `FilmLength` decimal(9,2) NOT NULL,
  `FilmDato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FilmGenre` varchar(100) COLLATE utf16_danish_ci NOT NULL,
  `FilmBudget` decimal(9,2) NOT NULL,
  PRIMARY KEY (`FilmId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_danish_ci;

--
-- Data dump for tabellen `filmoversigt`
--

INSERT INTO `filmoversigt` (`FilmId`, `FilmNavn`, `FilmBeskrivelse`, `FilmPris`, `FilmMedvirkende`, `FilmDirector`, `FilmLength`, `FilmDato`, `FilmGenre`, `FilmBudget`) VALUES
(1, 'action film', '<p>actionfilm med en masse action</p>', '100.00', '<p>skuespiller 1, skuespiller 2 og skuspiller 3</p>', 'kendt director', '90.00', '2023-09-27 09:39:18', 'action', '1000.00'),
(2, 'Django Unchained', '<p>Django er en slave, hvis brutale historie med sine tidligere ejere f&oslash;rer ham til m&oslash;det med den tyskf&oslash;dte dus&oslash;rj&aelig;ger King Schultz. Schultz er p&aring; sporet af de morderiske Brittle-br&oslash;dre og kun Django kan hj&aelig;lpe ham med at finde dem.</p>', '40.00', '<p>Jamie Foxx, Cristoph Waltz, Leonard DiCaprio, Kerry Washington, Samuel L Jackson, Walton Goggins, Dennis Christopher, James Remar, David Steen, Dana Gourrier, Nichole Galicia Laura Cayoutte Ato Essandoh, Sammi Rotobi Escalante Lundy, Don Johnson</p>', 'Quentin Tarantion', '165.00', '2023-09-27 11:14:17', 'western/drama', '1000000.00'),
(3, 'Sonic The Hedgehog 2', 'When the manic Dr. Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.\r\n', '70.00', '<p>James Marsden, Ben Swartz, Jim Carry, Idris Elba, Tika Sumpter, Natasha Rothwell, Adam Palley, Shemar Moore, Colleen O\'Shaugnessey, Lee Majdoub</p>', 'Jeff Fowler', '124.00', '2023-09-27 11:30:47', 'Familiefilm', '1000000.00'),
(7, 'Seven', '<p>Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.</p>', '39.00', 'Morgan Freeman, Brad Pitt, Kevin Spacey, Andrew Kevin Walker, Daniel Zacapa, Gwyneth Paltrow ', 'David Fincher', '127.00', '2023-09-27 12:22:58', 'crime/drama/mystery', '3000000.00'),
(4, 'Back to the Future', '<p>Teenageren Marty bliver transporteret tilbage til 1950\'erne, hvor han m&oslash;der sin mor og far. Uheldigvis bliver hans mor forelsket i ham, og han m&aring; derfor s&oslash;rge for at hans mor m&oslash;der hans far - ellers er Martys eksistens i fremtiden truet.</p>', '159.00', '<p>Michael J Fox, Christopher Lloyd, Lea Thompson, Crispin Glover, Tom Wilson, Claudia Wells, Marc McClure, Wendie Jo Sperber</p>', 'Robert Zemeckis', '116.00', '2023-09-27 11:44:27', 'Comedy/sci-fi', '1900000.00'),
(5, 'Avengers', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '30.00', '<p>Robert Downey Jr, scarlett Johansson, Chris Hemsworth, Chris evans, SAmuel L Jackson, Mark Ruffalo, Jeremy Renner, Tom Hiddelston, Gwyneth Paltrow, Paul bettany</p>', 'Joss Whedon', '143.00', '2023-09-27 11:58:09', 'Action/Sci-Fi', '2200000.00'),
(6, 'Spider-Man', 'After being bitten by a genetically-modified spider, a shy teenager gains spider-like abilities that he uses to fight injustice as a masked superhero and face a vengeful enemy.', '60.00', 'Tobey Mcguire, Kirsten Dunst, Willem Dafoe, James Franco, J.K. Simmons, Rosemary Harris, Cliff Robertson', 'Sam Raimi', '121.00', '2023-09-27 12:03:24', 'Action/scifi', '1390000.00'),
(8, 'The NorthMan', '<p>The Viking Age. With a mind aflame with hate and revenge, Prince Amleth, the wronged son of King Aurvandill War-Raven, heads to cold, windswept Iceland to retrieve what was stolen from him: a father, a mother, and a kingdom</span></p>', '40.00', '<p>Alexander Skarsgaard, Nicole Kidman, Claes Bang, Ethan Hawke, Anya Taylor-Joy, Willem Dafoe</p>', 'Robert Eggers', '136.00', '2023-09-27 12:42:23', 'action/Adventure', '7000000.00'),
(9, 'Spider-Man: Across the Spider-verse', '<p>>Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.</span></p>', '150.00', '<p>Shameik Moore,&nbsp;Hailee Steinfeld, Brian Tyree Henry, Luna Lauren, Jake Johnson, Jason Schwartzman, Issa Rae,Karan Soni Daniel Kaluuya,Oscar Isaac&nbsp;</p>', 'Joaquim santos, Kemp Powers, Justin Thompson', '140.00', '2023-09-27 13:02:06', 'Animation/Action/Adventure', '1000000.00'),
(10, 'Nope', '<p>After random objects falling from the sky result in the death of their father, ranch-owning siblings OJ and Emerald Haywood attempt to capture video evidence of an unidentified flying object with the help of tech salesman Angel Torres and documentarian Antlers Holst</p>', '70.00', '<p>Daniel Kaluuya, Keke Palmer, Brandon Perea, Michael Winscott, Steven Yeun, Wrenn Schmidt, Keith David</p>', 'Jordan Peele', '135.00', '2023-09-27 13:12:42', 'Horror/Mystery/Sci-fi', '6800000.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
