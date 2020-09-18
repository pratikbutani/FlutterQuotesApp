-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 12:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gujju_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `date`) VALUES
(1, 'એવી કોઈ સમસ્યા નથી જેનું સમાધાન ના હોય.', '2020-09-18 11:37:46'),
(2, 'રસ્તો એકજ હોય છે. બસ મનમાં વિચારોજ અલગ હોય છે.', '2020-09-18 11:38:23'),
(3, 'હારીને પણ ના હારવું એ જ શરૂઆત છે જીતની.', '2020-09-18 11:53:16'),
(4, 'તકલીફો હંમેશા એક નવો માર્ગ બતાવવા આવે છે.', '2020-09-18 11:53:16'),
(5, 'ત્યાં સુધી હાર નાં માનશો જ્યાં સુધી જીતી ના જાઓ.	', '2020-09-18 11:53:16'),
(6, 'બીજાની સલાહ જીંદગી આપણી બર્બાદ કરે છે.', '2020-09-18 11:53:16'),
(7, 'એટલા સફળ બનો કે દુનિયાની દરેક મોંઘી વસ્તુ સસ્તી લાગવા માંડે.', '2020-09-18 11:53:16'),
(8, 'મેહનત કરતા જ રહો ઓળખાણ તો તમારી BMW પોતેજ આપશે.', '2020-09-18 11:53:16'),
(9, 'જિંદગી માં કંઈક બનવું જ હોય તો તફલીફોનો સામનો કરવો જ પડશે.', '2020-09-18 11:53:16'),
(10, 'હારીને પણ ના હારવું એ જ શરૂઆત છે જીતની.', '2020-09-18 11:54:27'),
(11, 'તકલીફો હંમેશા એક નવો માર્ગ બતાવવા આવે છે.', '2020-09-18 11:54:27'),
(12, 'ત્યાં સુધી હાર નાં માનશો જ્યાં સુધી જીતી ના જાઓ.	', '2020-09-18 11:54:27'),
(13, 'બીજાની સલાહ જીંદગી આપણી બર્બાદ કરે છે.', '2020-09-18 11:54:27'),
(14, 'એટલા સફળ બનો કે દુનિયાની દરેક મોંઘી વસ્તુ સસ્તી લાગવા માંડે.', '2020-09-18 11:54:27'),
(15, 'મેહનત કરતા જ રહો ઓળખાણ તો તમારી BMW પોતેજ આપશે.', '2020-09-18 11:54:27'),
(16, 'જિંદગી માં કંઈક બનવું જ હોય તો તફલીફોનો સામનો કરવો જ પડશે.', '2020-09-18 11:54:27'),
(17, 'નિષ્ફળતા એક દિશા છે, તેને સમજો અને આગળ વધો.', '2020-09-18 11:54:27'),
(18, 'એક નવી શરૂઆત ક્યારેય પણ સરળ હોતી નથી.', '2020-09-18 11:54:27'),
(19, 'રાહ તમે જોઈ શકો છો સમય નહિ.', '2020-09-18 11:54:27'),
(20, 'એક નાનો બદલાવ એક મોટી સફળતાની શરૂઆત છે.', '2020-09-18 11:54:27'),
(21, 'જે મનમાં છે તે મનભરીને કરો.', '2020-09-18 11:54:27'),
(22, 'હંમેશા પોતાનું જ સાંભળો કેમ કે 95% લોકોની સલાહ મનોબળ તોડનારી જ હોય છે.', '2020-09-18 11:54:27'),
(23, 'જે હાર નથી માનતો તે જીતીને જ રહે છે.', '2020-09-18 11:54:27'),
(24, 'જિંદગી એક લક્ષ્ય ધારો જિંદગી બદલાઈ જશે.', '2020-09-18 11:54:27'),
(25, 'પોતાને એટલા મજબૂત બનાવો કે Negative લોકો તમને હરાવી ના શકે.', '2020-09-18 11:54:27'),
(26, 'સફળતા મહેનત નહીં સાચી જગ્યાએ મહેનત માંગે છે.', '2020-09-18 11:54:27'),
(27, 'જે કિસ્મતમાં ન હોય તે મહેનતમાં હોય છે.', '2020-09-18 11:54:27'),
(28, 'BMW ના જ્યારે તમે માલિક થશો ત્યારેજ લોકો તમારી વાત માનશે.', '2020-09-18 11:54:27'),
(29, 'શરૂઆત ભલે નાની હોય પણ જીત મોટી થવી જોઈએ.', '2020-09-18 11:54:27'),
(30, 'મહેનત એવી કરો કે નિષ્ફળતા હારિ જાય.', '2020-09-18 11:54:27'),
(31, 'ખરાબ દિવસો હોય છે જિંદગી નહીં.', '2020-09-18 11:54:27'),
(32, 'વિચારો જ જિંદગીનું નિર્માણ કરે છે.', '2020-09-18 11:54:27'),
(33, 'અહીંયા બધુજ થઈ શકે છે, બસ તમે ભગવાન પર ભરોશો રાખો.', '2020-09-18 11:54:27'),
(34, 'શરૂઆત તો કરો બધુજ તમારું છે.', '2020-09-18 11:54:27'),
(35, 'બદલાવ જરૂરી છે પણ તે સરળ નથી.', '2020-09-18 11:54:27'),
(36, 'લોકો કહેવાથી નહીં કરી બતાવામાં માને છે.', '2020-09-18 11:54:27'),
(37, 'દરેક ચહેરાની પાછળ પણ એક ચહેરો હોય છે.', '2020-09-18 11:54:27'),
(38, 'માણસ એ પણ કામ કરી શકે છે, જે તે વિચારી શકે છે.', '2020-09-18 11:54:27'),
(39, 'યોદ્ધા એજ છે જે હરવા છતાં પણ જીતવાની તાકાત રાખે છે.', '2020-09-18 11:54:27'),
(40, 'જો તમે કંઈક મોટો નિર્ણય નહીં લો તો તમારે સાધારણ જિંદગી જીવવી પડશે.', '2020-09-18 11:54:27'),
(41, 'સપનું પોતાનું છે તો પૂરું પણ પોતેજ કરવું પડશે.', '2020-09-18 11:54:27'),
(42, 'નિષ્ફળતા વગર સફળ થવું અસંભવ છે.', '2020-09-18 11:54:27'),
(43, 'સફળતા એક દિવસમાં નહીં પણ એક દિવસ જરૂર મળે છે.', '2020-09-18 11:54:27'),
(44, 'હંમેશા એવા લોકો સાથેજ રહો જે તમારું લેવલ ઊંચું લઈ જાય છે.', '2020-09-18 11:54:27'),
(45, 'પરિસ્થિતિ નહીં પરંતુ તમારું લક્ષ્ય નક્કી કરે છે કે જિંદગી કેવી બનશે.', '2020-09-18 11:54:27'),
(46, 'દરરોજ પોતાના લક્ષ્ય તરફ એક ડગલું તો આગળ વધવું જ જોઈએ.', '2020-09-18 11:54:27'),
(47, 'લોકો શુ વિચારશે.... જો તમે એ વિચારશો તો પછી લોકો શુ વિચારશે.', '2020-09-18 11:54:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;