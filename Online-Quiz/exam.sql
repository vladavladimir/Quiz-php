-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 03:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5fca418ae2c72', '5fca418ae3675'),
('5fca418ae59a1', '5fca418ae5d52'),
('5fca418ae7ebf', '5fca418ae849b'),
('5fca418aeab75', '5fca418aeaf2a'),
('5fca418aed114', '5fca418aedbb1'),
('5fca418aef504', '5fca418aef7ca'),
('5fca418af10c0', '5fca418af175b'),
('5fca418af321e', '5fca418af3510'),
('5fca418b00b6a', '5fca418b00dc4'),
('5fca418b02579', '5fca418b027ed'),
('5fca418b0411a', '5fca418b043a6'),
('5fca418b05b3f', '5fca418b05daf'),
('5fca418b07603', '5fca418b07872'),
('5fca418b08f57', '5fca418b095a4'),
('5fca418b0a95f', '5fca418b0af84'),
('5fca418b0c5ce', '5fca418b0cc46'),
('5fca418b0e01c', '5fca418b0e683'),
('5fca418b0fa1a', '5fca418b1003b'),
('5fca418b11877', '5fca418b11aef'),
('5fca418b13407', '5fca418b136c0'),
('5fca418b14eb3', '5fca418b15123'),
('5fca418b16977', '5fca418b17018'),
('5fca418b185f6', '5fca418b18cc4'),
('5fca418b1a140', '5fca418b1a6d5'),
('5fca418b1bf15', '5fca418b1c194'),
('5fca418b1d8de', '5fca418b1db03'),
('5fca418b1f452', '5fca418b1faae'),
('5fca418b21220', '5fca418b2148e'),
('5fca418b22d56', '5fca418b23399');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('vlad@pointmars.rs', '5fca361dd16f0', 29, 29, 29, 0, '2020-12-04 14:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5fca418ae2c72', '117 i 118;', '5fca418ae3673'),
('5fca418ae2c72', '137 i 138;', '5fca418ae3675'),
('5fca418ae2c72', '45 i 47;', '5fca418ae3676'),
('5fca418ae2c72', '8 i 19;', '5fca418ae3677'),
('5fca418ae59a1', 'Zakonom o sportu ;', '5fca418ae5d52'),
('5fca418ae59a1', 'Odlukom o zadovoljavanju potreba i interesa građana u oblasti sporta u Beogradu;', '5fca418ae5d54'),
('5fca418ae59a1', 'Strategijom razvoja grada Beograda do 2021. godine;', '5fca418ae5d55'),
('5fca418ae59a1', 'Pravilnikom o odobravanju i finansiranju programa kojima se ostvaruju potrebe i interesi građana u oblasti sporta u gradu Beogradu;', '5fca418ae5d56'),
('5fca418ae7ebf', '0;', '5fca418ae8497'),
('5fca418ae7ebf', '4;', '5fca418ae8499'),
('5fca418ae7ebf', '9;', '5fca418ae849a'),
('5fca418ae7ebf', '86;', '5fca418ae849b'),
('5fca418aeab75', '0;', '5fca418aeaf27'),
('5fca418aeab75', '16;', '5fca418aeaf29'),
('5fca418aeab75', '188;', '5fca418aeaf2a'),
('5fca418aeab75', '326;', '5fca418aeaf2b'),
('5fca418aed114', 'Teritorijalni sportski savez koji je član Sportskog saveza Srbije;', '5fca418aedbb1'),
('5fca418aed114', 'Teritorijalni savez koji je priznat od strane opštine/grada;', '5fca418aedbb3'),
('5fca418aed114', 'Teritorijalni savez koji okuplja više od 50% sportskih organizacija u opštini/gradu;', '5fca418aedbb4'),
('5fca418aed114', 'Svaki teritorijalni sporski savez u odnosu na svoje članstvo;', '5fca418aedbb5'),
('5fca418aef504', 'Sportski stručnjaci sa dozvolom za rad;', '5fca418aef7ca'),
('5fca418aef504', 'Sportski treneri;', '5fca418aef7cc'),
('5fca418aef504', 'Lica koja imaju završeno visoko obrazovanje u oblasti sporta;', '5fca418aef7cd'),
('5fca418aef504', 'Svako lice koje je angažovano od strane sportske organizacije;', '5fca418aef7ce'),
('5fca418af10c0', 'Svaki dan po 30 minuta umerena fizička aktivnost i najmanje dva puta nedeljno intenzivnija aktivnost u trajanju od 30-45minuta;', '5fca418af175b'),
('5fca418af10c0', 'Dva puta nedeljno po 15 minuta je sasvim dovoljno;', '5fca418af175d'),
('5fca418af10c0', 'Dovoljno je što redovno pratim sportski kanal, navijam za svoj klub i idem u kladionicu;', '5fca418af175e'),
('5fca418af10c0', 'Nijedno od ponuđenog;', '5fca418af175f'),
('5fca418af321e', 'Fizička neaktivnost, hipertenzija i alkoholizam;', '5fca418af3510'),
('5fca418af321e', 'Stres, vrsta muzike i pušenje;', '5fca418af3511'),
('5fca418af321e', 'Brza hrana, elektronski mediji i društvene mreže;', '5fca418af3512'),
('5fca418af321e', 'Nijedno od ponuđenog;', '5fca418af3513'),
('5fca418b00b6a', 'Provera da li je Korisnik sredstava postupio u skladu sa svim odredbama Ugovora;', '5fca418b00dc4'),
('5fca418b00b6a', 'Provera usklađenosti internih akata Saveza;', '5fca418b00dc5'),
('5fca418b00b6a', 'Provera finansijskih izveštaja Saveza;', '5fca418b00dc6'),
('5fca418b00b6a', 'Nijedno od ponuđenog;', '5fca418b00dc7'),
('5fca418b02579', 'Sva sredstva, troškovi i plaćanja se moraju odnositi na period u kome se realizuje Program;', '5fca418b027ed'),
('5fca418b02579', 'Samo troškovi se moraju odnositi na navedeni period;', '5fca418b027ef'),
('5fca418b02579', 'Samo plaćanja moraju biti u periodu realizacije Programa;', '5fca418b027f0'),
('5fca418b02579', 'Nijedno od ponuđenog;', '5fca418b027f1'),
('5fca418b0411a', 'Dugovi, pokrivanje gubitaka i zaduženja, Kamatna zaduženja, Stavke koje se već finansiraju iz drugog programa, Troškovi otplate rata po osnovu ranije zaključenih ugovora lizing , krediti i slično;', '5fca418b043a6'),
('5fca418b0411a', 'Nijedno od ponuđenog;', '5fca418b043a7'),
('5fca418b0411a', 'Troškove putovanja u zemlji smeštaj , ishrana , prevoz , dnevnice i ostali troškovi u vezi putovanja;', '5fca418b043a8'),
('5fca418b0411a', 'Troškove putovanja u inostranstvu smestaj , ishrana , prevoz , dnevnice , nabavka putnih isprava ', '5fca418b043a9'),
('5fca418b05b3f', '10 godina;', '5fca418b05daf'),
('5fca418b05b3f', '1 godina;', '5fca418b05db0'),
('5fca418b05b3f', 'Ne treba da se čuva dokumentacija', '5fca418b05db1'),
('5fca418b05b3f', 'Nijedno od ponuđenog', '5fca418b05db2'),
('5fca418b07603', 'Povećanje proizvodnje u organizaciji;', '5fca418b07870'),
('5fca418b07603', 'Izbegavanje i rešavanje krize;', '5fca418b07872'),
('5fca418b07603', 'Ubrzanje proizvodnog ciklusa;', '5fca418b07873'),
('5fca418b07603', 'Nijedno od ponuđenog;', '5fca418b07874'),
('5fca418b08f57', 'Perspektivni;', '5fca418b095a2'),
('5fca418b08f57', 'Aktivni i intenzivni;', '5fca418b095a4'),
('5fca418b08f57', 'Reaktivni;', '5fca418b095a5'),
('5fca418b08f57', 'Neaktivni;', '5fca418b095a6'),
('5fca418b0a95f', 'SKYPE;', '5fca418b0af82'),
('5fca418b0a95f', 'Zoom;', '5fca418b0af84'),
('5fca418b0a95f', 'Instagram;', '5fca418b0af85'),
('5fca418b0a95f', 'Viber;', '5fca418b0af86'),
('5fca418b0c5ce', 'Facebook;', '5fca418b0cc44'),
('5fca418b0c5ce', 'Office 365;', '5fca418b0cc45'),
('5fca418b0c5ce', 'YouTube;', '5fca418b0cc46'),
('5fca418b0c5ce', 'Whats up;', '5fca418b0cc47'),
('5fca418b0e01c', '30;', '5fca418b0e681'),
('5fca418b0e01c', '100;', '5fca418b0e683'),
('5fca418b0e01c', '5;', '5fca418b0e684'),
('5fca418b0e01c', ' neograničen broj osoba;', '5fca418b0e685'),
('5fca418b0fa1a', 'Da;', '5fca418b1003b'),
('5fca418b0fa1a', 'Ne;', '5fca418b1003d'),
('5fca418b0fa1a', 'Možda;', '5fca418b1003e'),
('5fca418b0fa1a', 'Nijedno od ponudjenog;', '5fca418b1003f'),
('5fca418b11877', 'Google Play Store;', '5fca418b11aef'),
('5fca418b11877', 'Gmail;', '5fca418b11af0'),
('5fca418b11877', 'Tik Tok;', '5fca418b11af1'),
('5fca418b11877', 'Linkedin;', '5fca418b11af2'),
('5fca418b13407', 'Sportisti;', '5fca418b136bd'),
('5fca418b13407', 'Navijači;', '5fca418b136bf'),
('5fca418b13407', 'Organizator sportske priredbe na osnovu akta nadležnog sportskog saveza ili na preporuku Ministarstva unutrašnjih poslova;', '5fca418b136c0'),
('5fca418b13407', 'Gledaoci;', '5fca418b136c1'),
('5fca418b14eb3', 'Kućno vaspitanje;', '5fca418b15122'),
('5fca418b14eb3', 'Kroz prepoznavanje i kažnjavanje lica koja se na sportskim priredbama nasilnički i nedolično ponašaju, kao i kroz kažnjavanje organizatora sportskih priredbi zbog nepreduzimanja svih potrebnih propisanih mera radi sprečavanja nasilničkog i nedoličnog ponašanja u sportu;', '5fca418b15123'),
('5fca418b14eb3', 'Izbegavanje odlazaka na sportske  priredbe;', '5fca418b15124'),
('5fca418b14eb3', 'Treniranje borilačkih veština;', '5fca418b15125'),
('5fca418b16977', 'Najčešće se komunicira neverbalnim znakovima;', '5fca418b17018'),
('5fca418b16977', 'Komunikaciju je moguće izneći;', '5fca418b1701a'),
('5fca418b16977', 'Komunikacija je pod našom svesnom kntrolom;', '5fca418b1701b'),
('5fca418b16977', 'Svi znaju da komuniciraju;', '5fca418b1701c'),
('5fca418b185f6', 'Sagovornici treba da izbegavaju ometajuće pokrete i znakove;', '5fca418b18cc0'),
('5fca418b185f6', 'Sagovornici treba jedan drugog da gledaju u oči;', '5fca418b18cc3'),
('5fca418b185f6', 'Sagovornici treba da postavljaju pitanja za razjašnjavanje poruka koja počinju sa „zašto“;', '5fca418b18cc4'),
('5fca418b185f6', 'Sagovornici treba često da parafraziraju reči jedan drugog;', '5fca418b18cc5'),
('5fca418b1a140', 'Kako se sprovodi sportska aktivnost;', '5fca418b1a6d1'),
('5fca418b1a140', 'Dokumentacija o članovima koju vodi sportska organizacija;', '5fca418b1a6d3'),
('5fca418b1a140', 'Sva dokumentacija koju poseduje sportska organizacija;', '5fca418b1a6d4'),
('5fca418b1a140', 'Dokumentacija o stručnom radu, sportskim stručnjacima u sportskoj organizaciji /radu sportskog stručnjaka i sprovođenje sportske aktivnosti;', '5fca418b1a6d5'),
('5fca418b1bf15', 'Zna da održi trening;', '5fca418b1c190'),
('5fca418b1bf15', 'Poseduje odgovarajuće obrazovanje i ima planove i programe;', '5fca418b1c193'),
('5fca418b1bf15', 'Poseduje odgovorajuće obrazovanje/osposobljavanje, dozvolu za rad, planove i programe, evidencije;', '5fca418b1c194'),
('5fca418b1bf15', 'Fakultetski je obrazovan, zna da održi trening, vodi evidencije;', '5fca418b1c195'),
('5fca418b1d8de', '3 dana;', '5fca418b1db03'),
('5fca418b1d8de', '7 dana;', '5fca418b1db04'),
('5fca418b1d8de', '10 dana;', '5fca418b1db05'),
('5fca418b1d8de', '15 dana;', '5fca418b1db06'),
('5fca418b1f452', 'Član 118;', '5fca418b1faac'),
('5fca418b1f452', 'Član 138;', '5fca418b1faad'),
('5fca418b1f452', 'Član 35;', '5fca418b1faae'),
('5fca418b1f452', 'Član 169;', '5fca418b1faaf'),
('5fca418b21220', 'Ugovorom o bavljenju sportom;', '5fca418b2148c'),
('5fca418b21220', 'Ugovorom o stipendiranju maloletnog sportiste za sportsko usavršavanje;', '5fca418b2148d'),
('5fca418b21220', 'Ugovorom o radu između sportiste i sportske organizacije;', '5fca418b2148e'),
('5fca418b21220', 'Ugovorom o delu;', '5fca418b2148f'),
('5fca418b22d56', 'Na neodređeno vreme, ili na određeno vreme najduže do dve godine;', '5fca418b23396'),
('5fca418b22d56', 'Na neodređeno vreme, ili na određeno vreme najduže do pet godina;', '5fca418b23399'),
('5fca418b22d56', 'Samo na neodređeno vreme;', '5fca418b2339a'),
('5fca418b22d56', 'Samo na određeno vreme;', '5fca418b2339b');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5fca361dd16f0', '5fca418ae2c72', '(Izaberite  jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nPotrebe i interesi građana za čije se ostvarivanje obezbeđuju sredstva u budžetu jedinica lokalne samouprave uređena su odredbama članova Zakona o sportu:\r\n', 4, 1),
('5fca361dd16f0', '5fca418ae59a1', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nGodišnji program izvršava se prema programskom kalendaru koji je propisan:\r\n', 4, 2),
('5fca361dd16f0', '5fca418ae7ebf', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nZa koliko trenera mlađih kategorija u beogradskim klubovima je tokom 2019. godine Sekretarijat za sport obezbedio plate?\r\n', 4, 3),
('5fca361dd16f0', '5fca418aeab75', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nZa koliko beogradskih klubova je Sekretarijat za sport obezbedio termine za treninge \r\ntokom 2018. godine? \r\n', 4, 4),
('5fca361dd16f0', '5fca418aed114', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKo ima status nadležnog teritorijalnog sportskog saveza?\r\n', 4, 5),
('5fca361dd16f0', '5fca418aef504', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKo može da obavlja stručni rad u sportu?', 4, 6),
('5fca361dd16f0', '5fca418af10c0', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoliko fizičke aktivnosti za održavanje dobre zdravstvene situacije, i prevenciju hroničnih nezaraznih bolesti, preporučuje WHO-Svetska zdravstvena organizacija?\r\n', 4, 7),
('5fca361dd16f0', '5fca418af321e', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoji su, prema podacima Instituta za Javno zdravlje Batut, vodeći faktori za nastajanje hroničnih nezaraznih bolesti u Srbiji?\r\n', 4, 8),
('5fca361dd16f0', '5fca418b00b6a', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nRevizija saglasnosti je:\r\n', 4, 9),
('5fca361dd16f0', '5fca418b02579', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKorisnik sredstava se obavezao da realizuje Program u periodu realizacije navedenom u Ugovoru i to znači da:\r\n', 4, 10),
('5fca361dd16f0', '5fca418b0411a', 'Izaverite jedne troškove koji nisu opravdani troškovi u skladu sa Pravilnikom o odobravanju i finansiranju programa kojima se ostvaruje opšti interes u oblasti sporta:', 4, 11),
('5fca361dd16f0', '5fca418b05b3f', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nRok čuvanja dokumentacije u skladu sa Pravilnikom o odobravanju i finansiranju programa kojima se ostvaruje opšti interes u oblasti sporta je:\r\n', 4, 12),
('5fca361dd16f0', '5fca418b07603', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nPojam kriznog menadžmenta se vezuje za:\r\n', 4, 13),
('5fca361dd16f0', '5fca418b08f57', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nNajčešća podela kriznog menadžmenta je na:\r\n', 4, 14),
('5fca361dd16f0', '5fca418b0a95f', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoja besplatna platforma trenutno ispunjava najviše tehničkih uslova za održavanje online sastanaka:\r\n', 4, 15),
('5fca361dd16f0', '5fca418b0c5ce', 'Zaokružiti, globalno napopularniju Web platformu za gledanje i komentarisanje video materijala:', 4, 16),
('5fca361dd16f0', '5fca418b0e01c', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nU toku jednog sastanka preko Zoom-a, ukoliko se koristi osnovni paket platforme, koliko osoba istovremeno može prisustvovati sastanku:\r\n', 4, 17),
('5fca361dd16f0', '5fca418b0fa1a', 'Da li su sve popularne platforme za komunikaciju predviđene za korišćenje na računarima i preko mobilnih telefona:', 4, 18),
('5fca361dd16f0', '5fca418b11877', 'Kako se zove online prodavnica za preuzimanje aplikacija za android\r\nsisteme:\r\n', 4, 19),
('5fca361dd16f0', '5fca418b13407', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\n Ko je u obavezi da sportsku priredbu označi kao priredbu povećanog rizika?\r\n', 4, 20),
('5fca361dd16f0', '5fca418b14eb3', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nU čemu se sastoji osnov zaštite od nasilja i nedoličnog ponašanja na sportskim priredbama?\r\n', 4, 21),
('5fca361dd16f0', '5fca418b16977', 'Pažljivo pročitajte sledeće tvrdnje koje se odnose na komunikaciju i označite onu tvrdnju koja mislite da je tačna:', 4, 22),
('5fca361dd16f0', '5fca418b185f6', 'Pažljivo pročitajte sledeće tvrdnje koje se odnose na veštinu aktivnog slušanja  i označite onu tvrdnju koja nije tačna:', 4, 23),
('5fca361dd16f0', '5fca418b1a140', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nŠta se proverava tokom nadzora nad stručnim radom?', 4, 24),
('5fca361dd16f0', '5fca418b1bf15', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoje zahteve mora da ispuni sportski stručnjak tokom sprovođenja nadzora nad stručnim radom?\r\n', 4, 25),
('5fca361dd16f0', '5fca418b1d8de', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoliko minimalno dana mora biti da se dostavi nadziranom subjektu obaveštenje pre inspekcijskog nadzora? \r\n', 4, 26),
('5fca361dd16f0', '5fca418b1f452', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nKoji član Zakona o sportu reguliše koji su to uslovi za obavljanje sportskih aktivnosti i sportskih delatnoti?\r\n', 4, 27),
('5fca361dd16f0', '5fca418b21220', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nPrava, obaveze i odgovornosti profesionalnih sportista uređuju se:\r\n', 4, 28),
('5fca361dd16f0', '5fca418b22d56', '(Izaberite jedan od ponuđenih odgovora za koji smatrate da je tačan)\r\nSportski stručnjak zasniva radni odnos sa organizacijom u oblasti sporta zaključenjem ugovora o radu: \r\n', 4, 29);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5fca361dd16f0', 'Online Testom Do Sertifikata O U??e????u Na Elektronskoj Edukaciji Za Sportske Saveze Ĝlanove Ssab', 1, 0, 29, '2020-12-04 13:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06'),
('vlad@pointmars.rs', 35, '2020-12-04 14:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka'),
('Vladimir Markovic', 'Vlada', 'vlad@pointmars.rs', '16351635');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
