-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iul. 03, 2024 la 09:56 PM
-- Versiune server: 10.4.32-MariaDB
-- Versiune PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `blog`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Eliminarea datelor din tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(18, 24, 2, 'Reforma Electorala Promisa de Guvern', '1720020696_1.png', '&lt;p&gt;Guvernul a anunțat un nou pachet de reforme electorale menit să &icirc;mbunătățească transparența și corectitudinea alegerilor. Aceasta include introducerea votului electronic, măsuri de securitate cibernetică și revizuirea procesului de numărare a voturilor. Oficialii susțin că aceste măsuri vor reduce posibilitatea de fraudă electorală și vor asigura un proces mai transparent și echitabil pentru toți cetățenii&lt;/p&gt;', 1, '2024-07-03 17:30:16'),
(19, 24, 3, 'Economia Nationala în Crestere', '1720020706_Produsul-intern-brut-al-Romaniei-a-explodat-in-comparatie-cu-anul-2020-2-621176859.jpg', '&lt;p&gt;Produsul Intern Brut a crescut cu 3% &icirc;n ultimul trimestru, datorită investițiilor străine și creșterii consumului intern. Analiștii economici au subliniat importanța politicilor guvernamentale favorabile investițiilor și a stabilității macroeconomice. Totodată, exporturile au &icirc;nregistrat o creștere semnificativă, contribuind la acest avans economic. Perspectivele pentru anul viitor răm&acirc;n pozitive, cu prognoze de creștere continuă&lt;/p&gt;', 1, '2024-07-03 18:03:40'),
(20, 24, 4, 'Echipa Nationala se Califica în Finala', '1720020714_PTYzNiZoYXNoPTAyN2I0OGQ3ZGI3ZmY3M2NjYWE3MjZkYmM3OThmYzcy.thumb-2973992485.jpg', '&lt;p&gt;Echipa națională de fotbal a reușit să se califice &icirc;n finala campionatului după o victorie dramatică &icirc;n prelungiri. Meciul a fost extrem de tensionat, cu ambele echipe lupt&acirc;ndu-se pentru fiecare minge. Golul decisiv a fost marcat &icirc;n ultimele minute de prelungire, aduc&acirc;nd bucurie &icirc;n r&acirc;ndul suporterilor. Antrenorul echipei a declarat că acest succes se datorează muncii intense și dedicării jucătorilor&lt;/p&gt;', 1, '2024-07-03 18:05:40'),
(21, 24, 5, 'Lansarea Noii Generatii de Smartphone-uri', '1720020726_Preturile-smartphone-urilor-de-top-vor-atinge-noi-culmi-2696177271.jpg', '&lt;p&gt;Compania X a lansat astăzi noua generație de smartphone-uri, care promit să revoluționeze piața cu inovații tehnologice majore. Noile dispozitive sunt echipate cu cele mai recente tehnologii &icirc;n materie de procesare, camere foto de &icirc;naltă rezoluție și baterii cu durată de viață extinsă. &Icirc;n plus, acestea vin cu funcții avansate de securitate și o interfață utilizator prietenoasă, menită să &icirc;mbunătățească experiența utilizatorilor.&lt;/p&gt;', 1, '2024-07-03 18:07:48'),
(22, 24, 6, 'Campanie Nationala de Vaccinare', '1720020732_Arizona-clarifies-rule-on-foster-family-vaccinations-1024x514-3087549786.png', '&lt;p&gt;Ministerul Sănătății a lansat o nouă campanie de vaccinare &icirc;mpotriva gripei sezoniere, &icirc;n &icirc;ncercarea de a reduce numărul cazurilor din această iarnă. Campania vizează &icirc;n special persoanele din grupele de risc, cum ar fi v&acirc;rstnicii și cei cu afecțiuni cronice. Medicii recomandă vaccinarea ca fiind cea mai eficientă metodă de prevenire a gripei și a complicațiilor acesteia. Centrele de vaccinare sunt amplasate &icirc;n toate marile orașe și &icirc;n zonele rurale&lt;/p&gt;', 1, '2024-07-03 18:09:00'),
(23, 24, 7, 'Festivalul International de Teatru', '1720020742_FITS-930x620-1292732128.jpg', '&lt;p&gt;Orașul nostru va găzdui săptăm&acirc;na viitoare Festivalul Internațional de Teatru, aduc&acirc;nd &icirc;mpreună trupe renumite din &icirc;ntreaga lume. Evenimentul va include spectacole de teatru clasic și contemporan, workshop-uri și sesiuni de discuții cu actorii și regizorii. Festivalul este o ocazie unică pentru iubitorii de teatru de a vedea producții de &icirc;naltă calitate și de a interacționa cu artiștii. Organizatorii promit o săptăm&acirc;nă plină de spectacole captivante și momente memorabile&lt;/p&gt;', 1, '2024-07-03 18:09:58'),
(24, 24, 8, 'Avertizare de Cod Galben de Furtuni', '1720020754_ploi-si-furtuni-1307801365.jpg', '&lt;p&gt;Meteorologii au emis o avertizare de cod galben de furtuni pentru regiunea de nord a țării, cu posibile inundații locale. Specialiștii recomandă populației să evite deplasările neesențiale și să ia măsuri de precauție pentru a-și proteja locuințele și bunurile. Autoritățile locale sunt pregătite să intervină &icirc;n caz de urgență și să ofere asistență persoanelor afectate. Se așteaptă precipitații abundente și v&acirc;nt puternic &icirc;n următoarele 48 de ore.&lt;/p&gt;', 1, '2024-07-03 18:10:45');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Eliminarea datelor din tabel `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(2, 'Politică', '<p>test change</p>'),
(3, 'Economie', ''),
(4, 'Sport', ''),
(5, 'Tehnologie', ''),
(6, 'Sănătate', ''),
(7, 'Cultură', ''),
(8, 'Meteo', '<p>test</p>');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(24, 1, 'Cosmin', 'cosmin@gmail.com', '$2y$10$tr7EmTbImLiziENaIntBFO0I3FvO8CT3KJgNQaIAMNl4kItXtb5me', '2024-07-03 14:15:59'),
(25, 0, 'bot', 'bot@yahoo.com', '$2y$10$NXN33MqvMffheJLOlnGiou6Rb4mnA41FEQvL7Gp0fMLaaH3iou7su', '2024-07-03 16:18:43');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexuri pentru tabele `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pentru tabele `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
