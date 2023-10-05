-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1:3306
-- Genereringstid: 05. 10 2023 kl. 08:33:30
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
  `FilmBillede` varchar(100) CHARACTER SET utf16 COLLATE utf16_danish_ci DEFAULT NULL,
  PRIMARY KEY (`FilmId`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf16 COLLATE=utf16_danish_ci;

--
-- Data dump for tabellen `filmoversigt`
--

INSERT INTO `filmoversigt` (`FilmId`, `FilmNavn`, `FilmBeskrivelse`, `FilmPris`, `FilmMedvirkende`, `FilmDirector`, `FilmLength`, `FilmDato`, `FilmGenre`, `FilmBudget`, `FilmBillede`) VALUES
(1, 'Django Unchained', 'In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. After finding them, Django wants to find his wife, Broomhilda, who along with him were sold separately by his former owner for trying to escape. Schultz offers to help him if he chooses to stay with him and be his partner. Eventually they learn that she was sold to a plantation in Mississippi. Knowing they can\'t just go in and say they want her, they come up with a plan so that the owner will welcome them into his home and they can find a way.', '40.00', '<p>Jamie Foxx, Cristoph Waltz, Leonard DiCaprio, Kerry Washington, Samuel L Jackson, Walton Goggins, Dennis Christopher, James Remar, David Steen, Dana Gourrier, Nichole Galicia Laura Cayoutte Ato Essandoh, Sammi Rotobi Escalante Lundy, Don Johnson</p>', 'Quentin Tarantion', '165.00', '2023-09-27 11:14:17', 'western/drama', '1000000.00', ''),
(2, 'Sonic The Hedgehog 2', 'When the manic Dr. Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.\r\n', '70.00', '<p>James Marsden, Ben Swartz, Jim Carry, Idris Elba, Tika Sumpter, Natasha Rothwell, Adam Palley, Shemar Moore, Colleen O\'Shaugnessey, Lee Majdoub</p>', 'Jeff Fowler', '124.00', '2023-09-27 11:30:47', 'Familiefilm', '1000000.00', ''),
(6, 'Seven', '<p>Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.</p>', '39.00', 'Morgan Freeman, Brad Pitt, Kevin Spacey, Andrew Kevin Walker, Daniel Zacapa, Gwyneth Paltrow ', 'David Fincher', '127.00', '2023-09-27 12:22:58', 'crime/drama/mystery', '3000000.00', ''),
(3, 'Back to the Future', '<p>Marty McFly, a typical American teenager of the Eighties, is accidentally sent back to 1955 in a plutonium-powered DeLorean \"time machine\" invented by a slightly mad scientist. During his often hysterical, always amazing trip back in time, Marty must make certain his teenage parents-to-be meet and fall in love - so he can get back to the future.</p>', '159.00', '<p>Michael J Fox, Christopher Lloyd, Lea Thompson, Crispin Glover, Tom Wilson, Claudia Wells, Marc McClure, Wendie Jo Sperber</p>', 'Robert Zemeckis', '116.00', '2023-09-27 11:44:27', 'Comedy/sci-fi', '1900000.00', ''),
(4, 'Avengers', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '30.00', '<p>Robert Downey Jr, scarlett Johansson, Chris Hemsworth, Chris evans, SAmuel L Jackson, Mark Ruffalo, Jeremy Renner, Tom Hiddelston, Gwyneth Paltrow, Paul bettany</p>', 'Joss Whedon', '143.00', '2023-09-27 11:58:09', 'Action/Sci-Fi', '2200000.00', ''),
(5, 'Spider-Man', 'After being bitten by a genetically-modified spider, a shy teenager gains spider-like abilities that he uses to fight injustice as a masked superhero and face a vengeful enemy.', '60.00', 'Tobey Mcguire, Kirsten Dunst, Willem Dafoe, James Franco, J.K. Simmons, Rosemary Harris, Cliff Robertson', 'Sam Raimi', '121.00', '2023-09-27 12:03:24', 'Action/scifi', '1390000.00', ''),
(7, 'The NorthMan', '<p>The Viking Age. With a mind aflame with hate and revenge, Prince Amleth, the wronged son of King Aurvandill War-Raven, heads to cold, windswept Iceland to retrieve what was stolen from him: a father, a mother, and a kingdom</span></p>', '40.00', '<p>Alexander Skarsgaard, Nicole Kidman, Claes Bang, Ethan Hawke, Anya Taylor-Joy, Willem Dafoe</p>', 'Robert Eggers', '136.00', '2023-09-27 12:42:23', 'action/Adventure', '7000000.00', ''),
(8, 'Spider-Man: Across the Spider-verse', '<p>>Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.</span></p>', '150.00', '<p>Shameik Moore,&nbsp;Hailee Steinfeld, Brian Tyree Henry, Luna Lauren, Jake Johnson, Jason Schwartzman, Issa Rae,Karan Soni Daniel Kaluuya,Oscar Isaac&nbsp;</p>', 'Joaquim santos, Kemp Powers, Justin Thompson', '140.00', '2023-09-27 13:02:06', 'Animation/Action/Adventure', '1000000.00', ''),
(9, 'Nope', '<p>After random objects falling from the sky result in the death of their father, ranch-owning siblings OJ and Emerald Haywood attempt to capture video evidence of an unidentified flying object with the help of tech salesman Angel Torres and documentarian Antlers Holst</p>', '70.00', '<p>Daniel Kaluuya, Keke Palmer, Brandon Perea, Michael Winscott, Steven Yeun, Wrenn Schmidt, Keith David</p>', 'Jordan Peele', '135.00', '2023-09-27 13:12:42', 'Horror/Mystery/Sci-fi', '6800000.00', ''),
(16, 'The Matrix', '<p>Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. As a rebel against the machines, Neo must confront the agents: super-powerful computer programs devoted to stopping Neo and the entire human rebellion.</p>', '40.00', '<p>Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Joe Pantoliano</p>', 'Lilly & Lana Wachowski', '136.00', '2023-10-03 10:17:11', 'Action/Sci-Fi', '6300000.00', 'The_Matrix_Poster.jpg'),
(15, 'Fight Club', '<p>A nameless first person narratorattends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla, another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power.</p>', '40.00', '<p class=\"MsoNormal\">Brad Pitt, Edward Norton, Helena Bonham Carter, Meat Loaf, Jared Leto</p>', 'David Fincher', '139.00', '2023-10-03 10:14:35', 'Drama', '6500000.00', 'Fight_Club_poster.jpg'),
(17, 'The Terminator', '<p>In the future, Skynet, a computer system fights a losing war against the humans who built it and who it nearly exterminated. Just before being destroyed, Skynet sends a Terminator back in time to kill Sarah. The terminator can pass for human, is nearly indestructible, and has only one mission. One soldier is sent back to protect her from the killing machine. He must find Sarah before the Terminator can carry out it\'s mission.</p>', '40.00', '<p>Arnold Schwarzenegger, Michael Biehn, Linda Hamilton, Paul Winfield</p>', 'James Cameron', '107.00', '2023-10-03 10:33:20', 'Action/Sci-Fi', '6000000.00', 'Terminator1984movieposter.jpg'),
(14, 'Central Intelligence', '<p>Two high school friends reunite and find themselves caught up in a CIA operation that could change their lives. While on the run, they investigate and try to capture the true culprit behind the crimes and try to get their lives back on track</p>', '40.00', '<p>Dwayne Johnson, Kevin Hart, Amy Ryan, Aaron Paul</p>', 'Rawson Marshall Thurber', '116.00', '2023-10-03 10:11:41', 'action/comedy/crime', '5000000.00', 'CentralIntelligencePoster.jpg'),
(13, 'Godzilla', '<p>In 1999, the Janjira nuclear plant was mysteriously destroyed with most hands lost including supervisor Joe Brody\'s colleague and wife, Sandra. Years later, Joe\'s son, Ford, a US Navy ordnance disposal officer, must go to Japan to help his estranged father who obsessively searches for the truth of the incident. In doing so, father and son discover the disaster\'s secret cause on the wreck\'s very grounds. This enables them to witness the reawakening of a terrible threat to all of Humanity, which is made all the worse with a second secret revival elsewhere.</p>', '60.00', '<p>Aaron taylor-Johnson, Ken Watanabe, Elizabeth Olsen, Juliette Binoche, Sally Hawkins, David Strathairn, Brian Cranston</p>', 'Gareth Edwards', '123.00', '2023-10-03 10:07:12', 'action/Adventure/sci-fi', '1600000.00', 'Godzilla_(2014)_poster.jpg'),
(12, 'Iron Man', '<p>After being kidnapped by a powerful terrorist organization, brilliant industrialist Tony Stark narrowly escapes using an iron suit he crafted from scrap metal and spare parts. Upon returning home, he devotes all of his time and resources to perfecting the iron man suit, and using it to fight evil, sometimes in the place where he least expects it.</p>', '70.00', '<p>Robert Downey Jr, Terrence Howard, Jeff Bridges, Gwyneth Paltrow, Leslie Bibb, Shaun Toub</p>', 'Jon Favreau', '126.00', '2023-10-03 10:04:12', 'action/Adventure/sci-fi', '1400000.00', 'Iron_Man_(2008_film)_poster.jpg'),
(11, 'The Karate Kid', '<p>Daniel is new in town, and is getting picked on by the local bullies, who all are adept in karate. Determined to stick up for himself, Daniel begins to teach himself karate, only to discover that the caretaker at his apartment seems to be a grand master in karate. Agreeing to teach Daniel, Mr. Miyagi shows Daniel that there is more to karate than violence, and perhaps the best way to solve the problem he has with the bullies is in the All Valley Karate Championship.</p>', '60.00', '<p>Ralph Macchio, Noriyuki Morita, Elisabeth Shue, William Zabka, Martin Kove, Randee Heller</p>', 'John G. Avildsen', '127.00', '2023-10-03 10:00:49', 'action/Drama/Family', '8000000.00', 'Karate_kid.jpg'),
(10, 'John Wick', '<p>John Wick is a retired hitman who returns to the criminal underworld to settle a debt. When his former employer\'s son, Santino, orders his men to take out John\'s beloved puppy, an unexpected and deadly altercation ensues, leaving his beloved pup dead. Fueled by vengeance and a drive for justice, John embarks on a brutal rampage to take down Santino and his gang</p>', '40.00', '<p>Keanu Reeves, Michael Nyqvist, Alfie Allen, Bridget Moynahan, Dean Winthers, Ian McShane, John Leguzamo, Willem Dafoe</p>', 'chad Stahelski', '101.00', '2023-10-03 09:16:05', 'action/crime/thriller', '3000000.00', 'John_Wick_TeaserPoster.jpg'),
(18, 'Snakes on a plane', '<p>A young man named Sean Jones witnesses vicious, powerful mobster Eddie Kim brutally murder a prosecutor bent on putting the crime mogul behind bars. Soon Kim\'s men raid Jones\' house and attempt to kill him, but are stopped by Neville Flynn: an experienced FBI agent who convinces Jones to fly to LA to testify against Kim. Aboard the flight are an obnoxious British businessman, a famous hip-hop star, an anxious man with severe flight anxiety and his wife, a young woman and her dog, and a ticking crate full of vicious, venomous snakes unleashed by an assassin to bring down the plane</p>', '50.00', '<p>Samuel L Jackson, Juliana Margulies, Nathan Phillips, Bobby Cannavale, Flex Alexander</p>', 'David R Ellis', '106.00', '2023-10-03 10:43:23', 'Action/adventure/crime', '3300000.00', 'SOAP_poster.jpg'),
(19, 'Princess Mononoke', '<p>While protecting his village from rampaging boar-god/demon, a confident young warrior, Ashitaka, is stricken by a deadly curse. To save his life, he must journey to the forests of the west. Once there, he\'s embroiled in a fierce campaign that humans were waging on the forest. The ambitious Lady Eboshi and her loyal clan use their guns against the gods of the forest and a brave young woman, Princess Mononoke, who was raised by a wolf-god. Ashitaka sees the good in both sides and tries to stem the flood of blood. This is met by animosity by both sides as they each see him as supporting the enemy.</p>', '50.00', '<p>Yoji Matsuda, Yuriko Ishida, Yuko Tanaka, Kaoru Kobayashi, Masahiko Nishimura, Tsunehiko Kamijo, Akihiro Miwa, Mitsuko Mori, Hisaya Morishige</p>', 'Hayao Miyazaki', '133.00', '2023-10-03 10:53:03', 'Animation/Action/Adventure', '2300000.00', 'Princess_Mononoke_Japanese_poster.png'),
(20, 'Top Gun Maverick', '<p>Set 30 years after its predecessor, it follows Maverick\'s return to the United States Navy Strike Fighter Tactics Instructor program (also known as U.S. Navy-Fighter Weapons School - \"TOPGUN\"), where he must confront his past as he trains a group of younger pilots, among them the son of Maverick\'s deceased best friend Lieutenant Nick \"Goose\" Bradshaw</p>', '215.00', '<p>Tom Cruise, Miles Teller, Jennifer Connelly, Jon Hamm, Glen Powell Ed Harris, Val Kilmer</p>', 'Joseph Kosinski', '130.00', '2023-10-03 11:12:54', 'Action/drama', '1770000.00', 'Top_Gun_Maverick_Poster.jpg'),
(21, 'The Wolf of Wall Street', '<p>Jordan Belfort is Long Island penny stockbroker who serves almost two years in prison for refusing to co-operate in a huge 1990s securities fraud case that involved widespread corruption on Wall Street and in the corporate banking world, including mob infiltration.</p>', '50.00', '<p>Leonardo Dicaprio, Jonah Hill, Margot Robbie, Matthew McConaughey, Kyle Chandler, Rob Reiner, Jon Favreau, Jean Dujardin</p>', 'Martin Scorsese', '180.00', '2023-10-03 11:24:56', 'Biography/Comedy/Crime', '1000000.00', 'The_Wolf_of_Wall_Street_(2013).png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
