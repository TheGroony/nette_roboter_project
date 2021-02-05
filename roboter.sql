-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Pon 01. úno 2021, 09:39
-- Verze serveru: 10.4.17-MariaDB
-- Verze PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `roboter`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `footer`
--

CREATE TABLE `footer` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `footer`
--

INSERT INTO `footer` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'p_realizaceWebu', 'Realizace webu '),
(2, 'a_dgstudio', 'dgstudio.');

-- --------------------------------------------------------

--
-- Struktura tabulky `header`
--

CREATE TABLE `header` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `header`
--

INSERT INTO `header` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h1_otazka', 'Potřebujete navýšit kapacitu výroby a zároveň snížit výrobní náklady?'),
(2, 'h1_odpoved', 'Máme řešení!'),
(3, 'p_predstaveni', 'ROBOTER ZERO - robotický podavač obrobků pro CNC obráběcí centra.'),
(4, 'p_otazka', 'Proč ROBOTER?');

-- --------------------------------------------------------

--
-- Struktura tabulky `kontakt`
--

CREATE TABLE `kontakt` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `kontakt`
--

INSERT INTO `kontakt` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h2_nadpis', 'Zaujala Vás naše nabídka? Kontaktujte nás!'),
(2, 'p_popis', 'Pošlete nám zprávu pomocí tohoto formuláře a my se Vám ozveme co nejdříve zpět. Pokud se chcete na něco zeptat přímo, můžete nám i napsat e-mail nebo zavolat.'),
(3, 'email', 'info.works@mt3.cz'),
(4, 'telefon', '+420 604 264 517'),
(5, 'formular_nadpis', 'Kontaktní formulář'),
(6, 'formular_jmeno', 'Jméno'),
(7, 'formular_email', 'E-mail'),
(8, 'formular_telefon', 'Telefon'),
(9, 'formular_zprava', 'Vaše zpráva'),
(10, 'tlacitko_submit', 'Odeslat zprávu'),
(11, 'p_footer', 'Vaše osobní údaje zadané v tomto formuláři budou použity pouze k vyřízení Vašeho požadavku. Více na stránce'),
(12, 'p_footer_odkaz', 'Ochrana osobních údajů');

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE `menu` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'p_vPripadeDotazu', 'V případě dotazů volejte +420 603 263 517 nebo piště info.works@mt3.cz'),
(2, 'menu_proc', 'Proč náš robot?'),
(3, 'menu_vlastnosti', 'Vlastnosti robota'),
(4, 'menu_ocekavani', 'Co od nás můžete čekat?'),
(5, 'menu_akce', 'Robot v akci'),
(6, 'menu_kontakt', 'Kontaktujte nás');

-- --------------------------------------------------------

--
-- Struktura tabulky `obecna`
--

CREATE TABLE `obecna` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `obecna`
--

INSERT INTO `obecna` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h1_obecna', 'Obecná'),
(2, 'loremIpsum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Quisque porta. Integer lacinia. Phasellus rhoncus. Duis risus. Aliquam erat volutpat. Donec vitae arcu. Nullam faucibus mi quis velit. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Aliquam ante. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Fusce consectetuer risus a nunc. Morbi scelerisque luctus velit.');

-- --------------------------------------------------------

--
-- Struktura tabulky `obrazky`
--

CREATE TABLE `obrazky` (
  `id_obrazku` int(11) NOT NULL,
  `nazevObrazku` varchar(45) NOT NULL,
  `srcObrazku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `obrazky`
--

INSERT INTO `obrazky` (`id_obrazku`, `nazevObrazku`, `srcObrazku`) VALUES
(1, 'logo_roboter', '/assets/Logo.svg'),
(2, 'burger-open', '/assets/burger-open.svg'),
(3, 'burger-close', '/assets/burger-close.svg'),
(4, 'roboter', '/assets/roboter.jpg'),
(5, 'clock', '/assets/clock.svg'),
(6, 'stiznost', '/assets/stiznost.svg'),
(7, 'dovolena', '/assets/dovolena.svg'),
(8, 'navratnost-investice', '/assets/navratnost-investice.png'),
(9, 'check_full', '/assets/Check Full.svg'),
(10, 'm3works-logo', '/assets/mt3works-logo.png'),
(11, 'check_green', '/assets/Check green.svg'),
(12, 'icon_zoom', '/assets/icons/zoom.svg'),
(13, 'galerie_1', '/assets/Galerie 1.png'),
(14, 'galerie_2', '/assets/Galerie 2.png'),
(15, 'galerie_3', '/assets/Galerie 3.png'),
(16, 'galerie_4', '/assets/Galerie 4.png'),
(17, 'galerie_1@2', '/assets/Galerie 1@2x.png'),
(18, 'galerie_2@2', '/assets/Galerie 2@2x.png'),
(19, 'galerie_3@2', '/assets/Galerie 3@2x.png'),
(20, 'galerie_4@2', '/assets/Galerie 4@2x.png'),
(21, 'obalka', '/assets/obalka.svg'),
(22, 'telefon', '/assets/Telefon.svg'),
(23, 'logo-footer', '/assets/Logo-footer.svg'),
(24, 'Header', '/assets/Header.png'),
(25, 'poznejteOperatora', '/assets/poznejte-operatora.png'),
(26, 'poznejteOperatora2', '/assets/poznejte-operatora@2x.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `ocekavani`
--

CREATE TABLE `ocekavani` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `ocekavani`
--

INSERT INTO `ocekavani` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h2_uvod', 'Co od nás můžete očekávat?'),
(2, 'ocekavani1', 'Dodáme vám naši robotickou jednotku a integrujeme s vaším CNC strojem'),
(3, 'ocekavani2', 'Vybavíme vás upínací technikou dle požadovaného rozsahu'),
(4, 'ocekavani3', 'Proškolíme vaše zaměstnance'),
(5, 'ocekavani4', 'Nabídneme vám vzdálenou podporu při řešení problémů'),
(6, 'ocekavani5', 'Poskytneme vám rychlý záruční i pozáruční servis'),
(7, 'a_napisteNam', 'Napište nám');

-- --------------------------------------------------------

--
-- Struktura tabulky `oRobotovi`
--

CREATE TABLE `oRobotovi` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `oRobotovi`
--

INSERT INTO `oRobotovi` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'prvni_h2', 'Objevte nečekaně dostupný a inteligentní způsob obsluhy CNC strojů.'),
(2, 'prvni_strong', 'Cena k dispozici již od poloviny Února 2021'),
(3, 'prvni_p', 'Váš nový operátor je připraven znásobit vaše provozní hodiny a postarat se o rychlou návratnost vaší investice.'),
(4, 'prvni_span1', 'Žádné prostoje'),
(5, 'prvni_span2', 'Žádné stížnosti'),
(6, 'prvni_span3', 'Žádná dovolená'),
(7, 'druhy_h2', 'Rychlá instalace. Jednoduché a intuitivní ovládání.'),
(8, 'druhy_p1', 'Nečekejte žádný nákladný návrh, komplikovanou instalaci a problematické uchopení tvarově složitých obrobků jako u robotické buňky. ROBOTER ZERO je připraven automatizovat vaši výrobu téměř ihned po vybalení.'),
(9, 'druhy_p2', 'K úspěšné integraci našeho robota s vaším CNC strojem je nezbytné použít automatické ovládání dveří CNC stroje a vhodnou upínací techniku. Ta slouží jako rozhraní mezi CNC strojem a naším robotem. Obojí vám v případě potřeby můžeme nabídnout jako volitelnou výbavu.'),
(10, 'druhy_p3', 'Sestavte si konfiguraci přesně podle vašich požadavků.'),
(11, 'napiste_nam', 'Napište nám');

-- --------------------------------------------------------

--
-- Struktura tabulky `predstaveni`
--

CREATE TABLE `predstaveni` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `predstaveni`
--

INSERT INTO `predstaveni` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h2_nadpis', 'Podívejte se na ROBOTER ZERO v akci'),
(2, 'h2_footer', 'Získejte ROBOTER ZERO a udělejte krok k vyšší produktivitě ještě dnes.'),
(3, 'span_cena', '995 €'),
(4, 'tlacitko', 'Sestavení a cena');

-- --------------------------------------------------------

--
-- Struktura tabulky `vlastnosti`
--

CREATE TABLE `vlastnosti` (
  `id_textu` int(11) NOT NULL,
  `nazevTextu` varchar(45) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `vlastnosti`
--

INSERT INTO `vlastnosti` (`id_textu`, `nazevTextu`, `text`) VALUES
(1, 'h2_nadpis', 'Vlastnosti stroje ROBOTER ZERO'),
(2, 'p_popis', 'ROBOTER ZERO byl již při svém návrhu koncipován pro nasazení v provozech s omezenými prostorovými možnostmi. Výsledkem je minimální zastavěná plocha při zachování dostatečné výrobní kapacity. Samotná manipulace ve stroji probíhá formou výměny polotovaru upnutého v kompaktním 5-osém svěráku. Tím je plně využit široký potenciál této upínací techniky a je možné automatizovat výrobu s vysokými nároky na přesnost a spolehlivost upnutí. Důraz byl také kladen na maximální hmotnostní a prostorovou dimenzi manipulovaných obrobků, flexibilitu použití a jednoduché ovládání.'),
(3, 'a_chetevice', 'Chcete vědět více?'),
(4, 'vlastnost_1', 'Maximální hmotnost polotovaru až 18 kg'),
(5, 'vlastnost_2', 'Zastavěná plocha 2000x1000 mm'),
(6, 'vlastnost_3', 'K dispozici až 38 pozic v zásobníku'),
(7, 'vlastnost_4', 'Možnost založení polotovarů v libovolném čase'),
(8, 'vlastnost_5', 'Vlastní logika hospodaření s polotovary a hotovými obrobky v zásobníku'),
(9, 'vlastnost6', 'Maximální rozměr polotovaru až 270x210x110 mm'),
(10, 'vlastnost7', 'Čas výměny kusu v CNC stroji 2:10 min'),
(11, 'vlastnost8', 'Možnost použití u více CNC strojů'),
(12, 'vlastnost9', 'Možnost odběru hotových dílů v libovolném čase'),
(13, 'vlastnost10', 'Zobrazení aktuálního zbývajícího času do konce obrobení všech polotovarů v zásobníku');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `obecna`
--
ALTER TABLE `obecna`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `obrazky`
--
ALTER TABLE `obrazky`
  ADD PRIMARY KEY (`id_obrazku`);

--
-- Klíče pro tabulku `ocekavani`
--
ALTER TABLE `ocekavani`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `oRobotovi`
--
ALTER TABLE `oRobotovi`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `predstaveni`
--
ALTER TABLE `predstaveni`
  ADD PRIMARY KEY (`id_textu`);

--
-- Klíče pro tabulku `vlastnosti`
--
ALTER TABLE `vlastnosti`
  ADD PRIMARY KEY (`id_textu`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `footer`
--
ALTER TABLE `footer`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `header`
--
ALTER TABLE `header`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pro tabulku `menu`
--
ALTER TABLE `menu`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `obecna`
--
ALTER TABLE `obecna`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `obrazky`
--
ALTER TABLE `obrazky`
  MODIFY `id_obrazku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pro tabulku `ocekavani`
--
ALTER TABLE `ocekavani`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `oRobotovi`
--
ALTER TABLE `oRobotovi`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pro tabulku `predstaveni`
--
ALTER TABLE `predstaveni`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `vlastnosti`
--
ALTER TABLE `vlastnosti`
  MODIFY `id_textu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
