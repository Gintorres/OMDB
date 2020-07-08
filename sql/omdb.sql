-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 02:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(6) NOT NULL,
  `native_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_made` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(1, 'frozen', 'frozen', 2013),
(2, 'local_name_2', 'english_name_2', 2003),
(3, 'local_name_3', 'english_name_3', 1932),
(4, 'local_name_4', 'english_name_4', 1916),
(5, 'local_name_5', 'english_name_5', 1936),
(6, 'local_name_6', 'english_name_6', 2000),
(7, 'local_name_7', 'english_name_7', 1973),
(8, 'El secreto de sus ojos', 'The secret in their eyes', 2009),
(9, 'Shrek', 'Shrek', 2001),
(10, 'local_name_10', 'english_name_10', 1920),
(11, 'Forrest Gump', 'Forrest Gump', 1994),
(12, 'local_name_12', 'english_name_12', 1992),
(13, 'local_name_13', 'english_name_13', 2010),
(14, 'local_name_14', 'english_name_14', 1968),
(15, 'local_name_15', 'english_name_15', 1936),
(16, 'local_name_16', 'english_name_16', 1972),
(17, 'local_name_17', 'english_name_17', 1922),
(18, 'local_name_18', 'english_name_18', 2019),
(19, 'local_name_19', 'english_name_19', 1989),
(20, 'local_name_20', 'english_name_20', 1904),
(21, 'local_name_21', 'english_name_21', 1933),
(22, 'local_name_22', 'english_name_22', 1915),
(23, 'local_name_23', 'english_name_23', 1964),
(24, 'local_name_24', 'english_name_24', 1912),
(25, 'local_name_25', 'english_name_25', 1927),
(26, 'local_name_26', 'english_name_26', 1958),
(27, 'local_name_27', 'english_name_27', 1974),
(28, 'local_name_28', 'english_name_28', 1903),
(29, 'local_name_29', 'english_name_29', 1970),
(30, 'local_name_30', 'english_name_30', 1939),
(31, 'local_name_31', 'english_name_31', 1969),
(32, 'local_name_32', 'english_name_32', 2002),
(33, 'local_name_33', 'english_name_33', 1913),
(34, 'local_name_34', 'english_name_34', 1966),
(35, 'local_name_35', 'english_name_35', 1978),
(36, 'local_name_36', 'english_name_36', 1953),
(37, 'local_name_37', 'english_name_37', 1903),
(38, 'local_name_38', 'english_name_38', 1984),
(39, 'local_name_39', 'english_name_39', 0000),
(40, 'local_name_40', 'english_name_40', 1954),
(41, 'local_name_41', 'english_name_41', 2015),
(42, 'local_name_42', 'english_name_42', 1935),
(43, 'local_name_43', 'english_name_43', 1996),
(44, 'local_name_44', 'english_name_44', 2020),
(45, 'local_name_45', 'english_name_45', 1926),
(46, 'local_name_46', 'english_name_46', 1973),
(47, 'local_name_47', 'english_name_47', 2012),
(48, 'local_name_48', 'english_name_48', 1988),
(49, 'local_name_49', 'english_name_49', 1902),
(50, 'local_name_50', 'english_name_50', 1930),
(51, 'local_name_51', 'english_name_51', 1919),
(52, 'local_name_52', 'english_name_52', 1982),
(53, 'local_name_53', 'english_name_53', 2020),
(54, 'local_name_54', 'english_name_54', 1973),
(55, 'local_name_55', 'english_name_55', 1953),
(56, 'local_name_56', 'english_name_56', 1982),
(57, 'local_name_57', 'english_name_57', 1999),
(58, 'local_name_58', 'english_name_58', 1966),
(59, 'local_name_59', 'english_name_59', 1958),
(60, 'local_name_60', 'english_name_60', 1904),
(61, 'local_name_61', 'english_name_61', 1972),
(62, 'local_name_62', 'english_name_62', 1983),
(63, 'local_name_63', 'english_name_63', 1941),
(64, 'local_name_64', 'english_name_64', 1953),
(65, 'local_name_65', 'english_name_65', 1971),
(66, 'local_name_66', 'english_name_66', 1999),
(67, 'local_name_67', 'english_name_67', 1926),
(68, 'local_name_68', 'english_name_68', 2009),
(69, 'local_name_69', 'english_name_69', 1915),
(70, 'local_name_70', 'english_name_70', 1960),
(71, 'local_name_71', 'english_name_71', 1958),
(72, 'local_name_72', 'english_name_72', 1921),
(73, 'local_name_73', 'english_name_73', 1951),
(74, 'local_name_74', 'english_name_74', 2016),
(75, 'local_name_75', 'english_name_75', 1956),
(76, 'local_name_76', 'english_name_76', 2015),
(77, 'local_name_77', 'english_name_77', 1920),
(78, 'local_name_78', 'english_name_78', 2016),
(79, 'local_name_79', 'english_name_79', 1903),
(80, 'local_name_80', 'english_name_80', 1984),
(81, 'local_name_81', 'english_name_81', 1985),
(82, 'local_name_82', 'english_name_82', 1928),
(83, 'local_name_83', 'english_name_83', 1967),
(84, 'local_name_84', 'english_name_84', 1925),
(85, 'local_name_85', 'english_name_85', 1945),
(86, 'local_name_86', 'english_name_86', 2012),
(87, 'local_name_87', 'english_name_87', 1960),
(88, 'local_name_88', 'english_name_88', 1998),
(89, 'local_name_89', 'english_name_89', 1924),
(90, 'local_name_90', 'english_name_90', 1942),
(91, 'local_name_91', 'english_name_91', 1905),
(92, 'local_name_92', 'english_name_92', 1942),
(93, 'local_name_93', 'english_name_93', 1967),
(94, 'local_name_94', 'english_name_94', 1972),
(95, 'local_name_95', 'english_name_95', 2003),
(96, 'local_name_96', 'english_name_96', 1919),
(97, 'local_name_97', 'english_name_97', 1988),
(98, 'local_name_98', 'english_name_98', 1926),
(99, 'local_name_99', 'english_name_99', 1911),
(100, 'local_name_100', 'english_name_100', 1982),
(101, 'local_name_101', 'english_name_101', 1985),
(102, 'local_name_102', 'english_name_102', 1974),
(103, 'local_name_103', 'english_name_103', 1945),
(104, 'local_name_104', 'english_name_104', 1992),
(105, 'local_name_105', 'english_name_105', 1976),
(106, 'local_name_106', 'english_name_106', 1903),
(107, 'local_name_107', 'english_name_107', 1951),
(108, 'local_name_108', 'english_name_108', 1940),
(109, 'local_name_109', 'english_name_109', 1996),
(110, 'local_name_110', 'english_name_110', 1959),
(111, 'local_name_111', 'english_name_111', 1979),
(112, 'local_name_112', 'english_name_112', 2015),
(113, 'local_name_113', 'english_name_113', 2011),
(114, 'local_name_114', 'english_name_114', 2016),
(115, 'local_name_115', 'english_name_115', 1991),
(116, 'local_name_116', 'english_name_116', 1948),
(117, 'local_name_117', 'english_name_117', 1944),
(118, 'local_name_118', 'english_name_118', 1909),
(119, 'local_name_119', 'english_name_119', 1994),
(120, 'local_name_120', 'english_name_120', 1972),
(121, 'local_name_121', 'english_name_121', 1904),
(122, 'local_name_122', 'english_name_122', 1928),
(123, 'local_name_123', 'english_name_123', 1983),
(124, 'local_name_124', 'english_name_124', 1939),
(125, 'local_name_125', 'english_name_125', 0000),
(126, 'local_name_126', 'english_name_126', 1904),
(127, 'local_name_127', 'english_name_127', 1914),
(128, 'local_name_128', 'english_name_128', 1984),
(129, 'local_name_129', 'english_name_129', 1986),
(130, 'local_name_130', 'english_name_130', 1956),
(131, 'local_name_131', 'english_name_131', 1948),
(132, 'local_name_132', 'english_name_132', 1959),
(133, 'local_name_133', 'english_name_133', 2015),
(134, 'local_name_134', 'english_name_134', 1937),
(135, 'local_name_135', 'english_name_135', 1915),
(136, 'local_name_136', 'english_name_136', 1916),
(137, 'local_name_137', 'english_name_137', 1916),
(138, 'local_name_138', 'english_name_138', 1963),
(139, 'local_name_139', 'english_name_139', 1960),
(140, 'local_name_140', 'english_name_140', 1930),
(141, 'local_name_141', 'english_name_141', 1957),
(142, 'local_name_142', 'english_name_142', 1946),
(143, 'local_name_143', 'english_name_143', 2014),
(144, 'local_name_144', 'english_name_144', 1994),
(145, 'local_name_145', 'english_name_145', 1923),
(146, 'local_name_146', 'english_name_146', 1971),
(147, 'local_name_147', 'english_name_147', 2002),
(148, 'local_name_148', 'english_name_148', 1924),
(149, 'local_name_149', 'english_name_149', 1932),
(150, 'local_name_150', 'english_name_150', 1910),
(151, 'local_name_151', 'english_name_151', 1942),
(152, 'local_name_152', 'english_name_152', 2006),
(153, 'local_name_153', 'english_name_153', 1994),
(154, 'local_name_154', 'english_name_154', 1933),
(155, 'local_name_155', 'english_name_155', 1975),
(156, 'local_name_156', 'english_name_156', 1966),
(157, 'local_name_157', 'english_name_157', 1961),
(158, 'local_name_158', 'english_name_158', 2014),
(159, 'local_name_159', 'english_name_159', 1903),
(160, 'local_name_160', 'english_name_160', 1904),
(161, 'local_name_161', 'english_name_161', 1944),
(162, 'local_name_162', 'english_name_162', 1999),
(163, 'local_name_163', 'english_name_163', 1944),
(164, 'local_name_164', 'english_name_164', 1977),
(165, 'local_name_165', 'english_name_165', 1914),
(166, 'local_name_166', 'english_name_166', 2011),
(167, 'local_name_167', 'english_name_167', 2016),
(168, 'local_name_168', 'english_name_168', 1909),
(169, 'local_name_169', 'english_name_169', 1978),
(170, 'local_name_170', 'english_name_170', 1932),
(171, 'local_name_171', 'english_name_171', 1936),
(172, 'local_name_172', 'english_name_172', 1926),
(173, 'local_name_173', 'english_name_173', 1996),
(174, 'local_name_174', 'english_name_174', 1967),
(175, 'local_name_175', 'english_name_175', 1915),
(176, 'local_name_176', 'english_name_176', 1982),
(177, 'local_name_177', 'english_name_177', 1929),
(178, 'local_name_178', 'english_name_178', 2013),
(179, 'local_name_179', 'english_name_179', 1973),
(180, 'local_name_180', 'english_name_180', 1950),
(181, 'local_name_181', 'english_name_181', 1942),
(182, 'local_name_182', 'english_name_182', 1902),
(183, 'local_name_183', 'english_name_183', 2014),
(184, 'local_name_184', 'english_name_184', 2010),
(185, 'local_name_185', 'english_name_185', 1997),
(186, 'local_name_186', 'english_name_186', 1904),
(187, 'local_name_187', 'english_name_187', 1956),
(188, 'local_name_188', 'english_name_188', 1953),
(189, 'local_name_189', 'english_name_189', 1918),
(190, 'local_name_190', 'english_name_190', 0000),
(191, 'local_name_191', 'english_name_191', 2020),
(192, 'local_name_192', 'english_name_192', 1998),
(193, 'local_name_193', 'english_name_193', 1951),
(194, 'local_name_194', 'english_name_194', 2002),
(195, 'local_name_195', 'english_name_195', 1990),
(196, 'local_name_196', 'english_name_196', 1941),
(197, 'local_name_197', 'english_name_197', 1931),
(198, 'local_name_198', 'english_name_198', 1999),
(199, 'local_name_199', 'english_name_199', 2015),
(200, 'local_name_200', 'english_name_200', 1902),
(201, 'local_name_201', 'english_name_201', 1977),
(202, 'local_name_202', 'english_name_202', 1981),
(203, 'local_name_203', 'english_name_203', 1965),
(204, 'local_name_204', 'english_name_204', 1905),
(205, 'local_name_205', 'english_name_205', 2020),
(206, 'local_name_206', 'english_name_206', 1936),
(207, 'local_name_207', 'english_name_207', 1944),
(208, 'local_name_208', 'english_name_208', 2001),
(209, 'local_name_209', 'english_name_209', 1928),
(210, 'local_name_210', 'english_name_210', 1973),
(211, 'local_name_211', 'english_name_211', 1903),
(212, 'local_name_212', 'english_name_212', 1923),
(213, 'local_name_213', 'english_name_213', 1987),
(214, 'local_name_214', 'english_name_214', 1988),
(215, 'local_name_215', 'english_name_215', 1942),
(216, 'local_name_216', 'english_name_216', 2015),
(217, 'local_name_217', 'english_name_217', 1966),
(218, 'local_name_218', 'english_name_218', 1996),
(219, 'local_name_219', 'english_name_219', 1928),
(220, 'local_name_220', 'english_name_220', 1967),
(221, 'local_name_221', 'english_name_221', 1935),
(222, 'local_name_222', 'english_name_222', 1921),
(223, 'local_name_223', 'english_name_223', 2006),
(224, 'local_name_224', 'english_name_224', 1940),
(225, 'local_name_225', 'english_name_225', 1903),
(226, 'local_name_226', 'english_name_226', 1915),
(227, 'local_name_227', 'english_name_227', 1999),
(228, 'local_name_228', 'english_name_228', 1939),
(229, 'local_name_229', 'english_name_229', 1947),
(230, 'local_name_230', 'english_name_230', 1950),
(231, 'local_name_231', 'english_name_231', 1917),
(232, 'local_name_232', 'english_name_232', 1976),
(233, 'local_name_233', 'english_name_233', 1990),
(234, 'local_name_234', 'english_name_234', 1961),
(235, 'local_name_235', 'english_name_235', 1984),
(236, 'local_name_236', 'english_name_236', 1921),
(237, 'local_name_237', 'english_name_237', 1927),
(238, 'local_name_238', 'english_name_238', 1943),
(239, 'local_name_239', 'english_name_239', 1999),
(240, 'local_name_240', 'english_name_240', 1966),
(241, 'local_name_241', 'english_name_241', 1984),
(242, 'local_name_242', 'english_name_242', 1971),
(243, 'local_name_243', 'english_name_243', 2012),
(244, 'local_name_244', 'english_name_244', 1933),
(245, 'local_name_245', 'english_name_245', 1984),
(246, 'local_name_246', 'english_name_246', 1913),
(247, 'local_name_247', 'english_name_247', 1952),
(248, 'local_name_248', 'english_name_248', 1938),
(249, 'local_name_249', 'english_name_249', 1991),
(250, 'local_name_250', 'english_name_250', 1941),
(251, 'local_name_251', 'english_name_251', 1991),
(252, 'local_name_252', 'english_name_252', 1987),
(253, 'local_name_253', 'english_name_253', 1996),
(254, 'local_name_254', 'english_name_254', 1958),
(255, 'local_name_255', 'english_name_255', 1942),
(256, 'local_name_256', 'english_name_256', 1907),
(257, 'local_name_257', 'english_name_257', 1913),
(258, 'local_name_258', 'english_name_258', 1945),
(259, 'local_name_259', 'english_name_259', 1923),
(260, 'local_name_260', 'english_name_260', 1932),
(261, 'local_name_261', 'english_name_261', 1938),
(262, 'local_name_262', 'english_name_262', 1935),
(263, 'local_name_263', 'english_name_263', 1932),
(264, 'local_name_264', 'english_name_264', 1988),
(265, 'local_name_265', 'english_name_265', 2002),
(266, 'local_name_266', 'english_name_266', 1995),
(267, 'local_name_267', 'english_name_267', 1912),
(268, 'local_name_268', 'english_name_268', 1950),
(269, 'local_name_269', 'english_name_269', 1905),
(270, 'local_name_270', 'english_name_270', 2017),
(271, 'local_name_271', 'english_name_271', 1948),
(272, 'local_name_272', 'english_name_272', 1984),
(273, 'local_name_273', 'english_name_273', 1961),
(274, 'local_name_274', 'english_name_274', 2013),
(275, 'local_name_275', 'english_name_275', 2000),
(276, 'local_name_276', 'english_name_276', 1956),
(277, 'local_name_277', 'english_name_277', 2007),
(278, 'local_name_278', 'english_name_278', 1950),
(279, 'local_name_279', 'english_name_279', 1997),
(280, 'local_name_280', 'english_name_280', 1998),
(281, 'local_name_281', 'english_name_281', 1950),
(282, 'local_name_282', 'english_name_282', 1977),
(283, 'local_name_283', 'english_name_283', 1982),
(284, 'local_name_284', 'english_name_284', 1919),
(285, 'local_name_285', 'english_name_285', 2017),
(286, 'local_name_286', 'english_name_286', 1998),
(287, 'local_name_287', 'english_name_287', 1955),
(288, 'local_name_288', 'english_name_288', 1983),
(289, 'local_name_289', 'english_name_289', 2001),
(290, 'local_name_290', 'english_name_290', 1993),
(291, 'local_name_291', 'english_name_291', 1984),
(292, 'local_name_292', 'english_name_292', 1903),
(293, 'local_name_293', 'english_name_293', 1985),
(294, 'local_name_294', 'english_name_294', 1960),
(295, 'local_name_295', 'english_name_295', 1993),
(296, 'local_name_296', 'english_name_296', 1922),
(297, 'local_name_297', 'english_name_297', 1910),
(298, 'local_name_298', 'english_name_298', 1919),
(299, 'local_name_299', 'english_name_299', 1933),
(300, 'local_name_300', 'english_name_300', 1958),
(301, 'local_name_301', 'english_name_301', 1954),
(302, 'local_name_302', 'english_name_302', 1918),
(303, 'local_name_303', 'english_name_303', 2001),
(304, 'local_name_304', 'english_name_304', 1929),
(305, 'local_name_305', 'english_name_305', 2012),
(306, 'local_name_306', 'english_name_306', 1956),
(307, 'local_name_307', 'english_name_307', 1928),
(308, 'local_name_308', 'english_name_308', 2009),
(309, 'local_name_309', 'english_name_309', 1931),
(310, 'local_name_310', 'english_name_310', 1910),
(311, 'local_name_311', 'english_name_311', 1991),
(312, 'local_name_312', 'english_name_312', 1931),
(313, 'local_name_313', 'english_name_313', 1909),
(314, 'local_name_314', 'english_name_314', 1912),
(315, 'local_name_315', 'english_name_315', 1968),
(316, 'local_name_316', 'english_name_316', 2003),
(317, 'local_name_317', 'english_name_317', 1978),
(318, 'local_name_318', 'english_name_318', 2018),
(319, 'local_name_319', 'english_name_319', 1998),
(320, 'local_name_320', 'english_name_320', 0000),
(321, 'local_name_321', 'english_name_321', 1942),
(322, 'local_name_322', 'english_name_322', 1920),
(323, 'local_name_323', 'english_name_323', 1964),
(324, 'local_name_324', 'english_name_324', 1996),
(325, 'local_name_325', 'english_name_325', 1984),
(326, 'local_name_326', 'english_name_326', 1949),
(327, 'local_name_327', 'english_name_327', 1905),
(328, 'local_name_328', 'english_name_328', 1991),
(329, 'local_name_329', 'english_name_329', 0000),
(330, 'local_name_330', 'english_name_330', 1927),
(331, 'local_name_331', 'english_name_331', 1980),
(332, 'local_name_332', 'english_name_332', 2016),
(333, 'local_name_333', 'english_name_333', 1970),
(334, 'local_name_334', 'english_name_334', 2014),
(335, 'local_name_335', 'english_name_335', 1975),
(336, 'local_name_336', 'english_name_336', 1967),
(337, 'local_name_337', 'english_name_337', 2015),
(338, 'local_name_338', 'english_name_338', 1981),
(339, 'local_name_339', 'english_name_339', 1988),
(340, 'local_name_340', 'english_name_340', 1997),
(341, 'local_name_341', 'english_name_341', 1954),
(342, 'local_name_342', 'english_name_342', 2013),
(343, 'local_name_343', 'english_name_343', 1972),
(344, 'local_name_344', 'english_name_344', 1946),
(345, 'local_name_345', 'english_name_345', 1986),
(346, 'local_name_346', 'english_name_346', 1955),
(347, 'local_name_347', 'english_name_347', 1914),
(348, 'local_name_348', 'english_name_348', 1999),
(349, 'local_name_349', 'english_name_349', 1970),
(350, 'local_name_350', 'english_name_350', 1977),
(351, 'local_name_351', 'english_name_351', 1949),
(352, 'local_name_352', 'english_name_352', 1958),
(353, 'local_name_353', 'english_name_353', 1991),
(354, 'local_name_354', 'english_name_354', 2003),
(355, 'local_name_355', 'english_name_355', 1982),
(356, 'local_name_356', 'english_name_356', 1950),
(357, 'local_name_357', 'english_name_357', 1954),
(358, 'local_name_358', 'english_name_358', 2004),
(359, 'local_name_359', 'english_name_359', 1942),
(360, 'local_name_360', 'english_name_360', 1933),
(361, 'local_name_361', 'english_name_361', 1972),
(362, 'local_name_362', 'english_name_362', 2009),
(363, 'local_name_363', 'english_name_363', 1990),
(364, 'local_name_364', 'english_name_364', 2002),
(365, 'local_name_365', 'english_name_365', 2001),
(366, 'local_name_366', 'english_name_366', 1965),
(367, 'local_name_367', 'english_name_367', 1975),
(368, 'local_name_368', 'english_name_368', 1917),
(369, 'local_name_369', 'english_name_369', 1903),
(370, 'local_name_370', 'english_name_370', 1933),
(371, 'local_name_371', 'english_name_371', 1939),
(372, 'local_name_372', 'english_name_372', 1920),
(373, 'local_name_373', 'english_name_373', 1959),
(374, 'local_name_374', 'english_name_374', 1967),
(375, 'local_name_375', 'english_name_375', 1964),
(376, 'local_name_376', 'english_name_376', 2001),
(377, 'local_name_377', 'english_name_377', 1901),
(378, 'local_name_378', 'english_name_378', 1974),
(379, 'local_name_379', 'english_name_379', 1952),
(380, 'local_name_380', 'english_name_380', 1960),
(381, 'local_name_381', 'english_name_381', 2016),
(382, 'local_name_382', 'english_name_382', 1935),
(383, 'local_name_383', 'english_name_383', 1964),
(384, 'local_name_384', 'english_name_384', 1956),
(385, 'local_name_385', 'english_name_385', 1913),
(386, 'local_name_386', 'english_name_386', 1970),
(387, 'local_name_387', 'english_name_387', 1925),
(388, 'local_name_388', 'english_name_388', 1919),
(389, 'local_name_389', 'english_name_389', 1986),
(390, 'local_name_390', 'english_name_390', 1924),
(391, 'local_name_391', 'english_name_391', 2002),
(392, 'local_name_392', 'english_name_392', 1933),
(393, 'local_name_393', 'english_name_393', 2010),
(394, 'local_name_394', 'english_name_394', 1936),
(395, 'local_name_395', 'english_name_395', 1951),
(396, 'local_name_396', 'english_name_396', 1992),
(397, 'local_name_397', 'english_name_397', 1927),
(398, 'local_name_398', 'english_name_398', 1938),
(399, 'local_name_399', 'english_name_399', 1931),
(400, 'local_name_400', 'english_name_400', 0000),
(401, 'local_name_401', 'english_name_401', 1972),
(402, 'local_name_402', 'english_name_402', 1901),
(403, 'local_name_403', 'english_name_403', 1947),
(404, 'local_name_404', 'english_name_404', 1955),
(405, 'local_name_405', 'english_name_405', 1980),
(406, 'local_name_406', 'english_name_406', 1923),
(407, 'local_name_407', 'english_name_407', 1943),
(408, 'local_name_408', 'english_name_408', 1986),
(409, 'local_name_409', 'english_name_409', 1908),
(410, 'local_name_410', 'english_name_410', 1981),
(411, 'local_name_411', 'english_name_411', 1997),
(412, 'local_name_412', 'english_name_412', 1946),
(413, 'local_name_413', 'english_name_413', 1938),
(414, 'local_name_414', 'english_name_414', 1933),
(415, 'local_name_415', 'english_name_415', 2016),
(416, 'local_name_416', 'english_name_416', 1903),
(417, 'local_name_417', 'english_name_417', 1943),
(418, 'local_name_418', 'english_name_418', 1902),
(419, 'local_name_419', 'english_name_419', 1990),
(420, 'local_name_420', 'english_name_420', 1983),
(421, 'local_name_421', 'english_name_421', 2002),
(422, 'local_name_422', 'english_name_422', 1901),
(423, 'local_name_423', 'english_name_423', 1973),
(424, 'local_name_424', 'english_name_424', 1918),
(425, 'local_name_425', 'english_name_425', 2003),
(426, 'local_name_426', 'english_name_426', 1908),
(427, 'local_name_427', 'english_name_427', 0000),
(428, 'local_name_428', 'english_name_428', 2005),
(429, 'local_name_429', 'english_name_429', 1908),
(430, 'local_name_430', 'english_name_430', 1932),
(431, 'local_name_431', 'english_name_431', 1967),
(432, 'local_name_432', 'english_name_432', 1954),
(433, 'local_name_433', 'english_name_433', 1968),
(434, 'local_name_434', 'english_name_434', 1988),
(435, 'local_name_435', 'english_name_435', 1944),
(436, 'local_name_436', 'english_name_436', 1944),
(437, 'local_name_437', 'english_name_437', 1936),
(438, 'local_name_438', 'english_name_438', 1971),
(439, 'local_name_439', 'english_name_439', 1931),
(440, 'local_name_440', 'english_name_440', 1982),
(441, 'local_name_441', 'english_name_441', 1986),
(442, 'local_name_442', 'english_name_442', 1910),
(443, 'local_name_443', 'english_name_443', 1927),
(444, 'local_name_444', 'english_name_444', 1924),
(445, 'local_name_445', 'english_name_445', 1950),
(446, 'local_name_446', 'english_name_446', 2017),
(447, 'local_name_447', 'english_name_447', 1993),
(448, 'local_name_448', 'english_name_448', 1928),
(449, 'local_name_449', 'english_name_449', 1910),
(450, 'local_name_450', 'english_name_450', 1945),
(451, 'local_name_451', 'english_name_451', 1937),
(452, 'local_name_452', 'english_name_452', 1938),
(453, 'local_name_453', 'english_name_453', 1912),
(454, 'local_name_454', 'english_name_454', 1980),
(455, 'local_name_455', 'english_name_455', 1916),
(456, 'local_name_456', 'english_name_456', 1933),
(457, 'local_name_457', 'english_name_457', 1953),
(458, 'local_name_458', 'english_name_458', 1913),
(459, 'local_name_459', 'english_name_459', 1998),
(460, 'local_name_460', 'english_name_460', 1904),
(461, 'local_name_461', 'english_name_461', 1997),
(462, 'local_name_462', 'english_name_462', 1921),
(463, 'local_name_463', 'english_name_463', 1918),
(464, 'local_name_464', 'english_name_464', 1970),
(465, 'local_name_465', 'english_name_465', 1927),
(466, 'local_name_466', 'english_name_466', 1964),
(467, 'local_name_467', 'english_name_467', 1934),
(468, 'local_name_468', 'english_name_468', 1971),
(469, 'local_name_469', 'english_name_469', 1995),
(470, 'local_name_470', 'english_name_470', 1935),
(471, 'local_name_471', 'english_name_471', 2014),
(472, 'local_name_472', 'english_name_472', 1919),
(473, 'local_name_473', 'english_name_473', 1982),
(474, 'local_name_474', 'english_name_474', 1927),
(475, 'local_name_475', 'english_name_475', 2001),
(476, 'local_name_476', 'english_name_476', 1992),
(477, 'local_name_477', 'english_name_477', 1962),
(478, 'local_name_478', 'english_name_478', 1991),
(479, 'local_name_479', 'english_name_479', 1912),
(480, 'local_name_480', 'english_name_480', 1965),
(481, 'local_name_481', 'english_name_481', 1977),
(482, 'local_name_482', 'english_name_482', 1948),
(483, 'local_name_483', 'english_name_483', 1998),
(484, 'local_name_484', 'english_name_484', 2000),
(485, 'local_name_485', 'english_name_485', 1903),
(486, 'local_name_486', 'english_name_486', 2017),
(487, 'local_name_487', 'english_name_487', 2006),
(488, 'local_name_488', 'english_name_488', 1913),
(489, 'local_name_489', 'english_name_489', 1934),
(490, 'local_name_490', 'english_name_490', 2012),
(491, 'local_name_491', 'english_name_491', 1965),
(492, 'local_name_492', 'english_name_492', 1992),
(493, 'local_name_493', 'english_name_493', 1945),
(494, 'local_name_494', 'english_name_494', 1978),
(495, 'local_name_495', 'english_name_495', 1945),
(496, 'local_name_496', 'english_name_496', 1999),
(497, 'local_name_497', 'english_name_497', 2010),
(498, 'local_name_498', 'english_name_498', 1984),
(499, 'local_name_499', 'english_name_499', 1961),
(500, 'local_name_500', 'english_name_500', 2018),
(501, 'local_name_501', 'english_name_501', 1967),
(502, 'local_name_502', 'english_name_502', 1949),
(503, 'local_name_503', 'english_name_503', 1984),
(504, 'local_name_504', 'english_name_504', 2009),
(505, 'local_name_505', 'english_name_505', 1979),
(506, 'local_name_506', 'english_name_506', 1904),
(507, 'local_name_507', 'english_name_507', 1977),
(508, 'local_name_508', 'english_name_508', 1946),
(509, 'local_name_509', 'english_name_509', 2002),
(510, 'local_name_510', 'english_name_510', 1994),
(511, 'local_name_511', 'english_name_511', 1958),
(512, 'local_name_512', 'english_name_512', 2020),
(513, 'local_name_513', 'english_name_513', 1960),
(514, 'local_name_514', 'english_name_514', 1963),
(515, 'local_name_515', 'english_name_515', 1934),
(516, 'local_name_516', 'english_name_516', 2016),
(517, 'local_name_517', 'english_name_517', 1926),
(518, 'local_name_518', 'english_name_518', 1945),
(519, 'local_name_519', 'english_name_519', 2009),
(520, 'local_name_520', 'english_name_520', 1976),
(521, 'local_name_521', 'english_name_521', 1995),
(522, 'local_name_522', 'english_name_522', 2004),
(523, 'local_name_523', 'english_name_523', 1961),
(524, 'local_name_524', 'english_name_524', 1979),
(525, 'local_name_525', 'english_name_525', 1926),
(526, 'local_name_526', 'english_name_526', 1944),
(527, 'local_name_527', 'english_name_527', 1972),
(528, 'local_name_528', 'english_name_528', 1927),
(529, 'local_name_529', 'english_name_529', 1994),
(530, 'local_name_530', 'english_name_530', 1931),
(531, 'local_name_531', 'english_name_531', 1972),
(532, 'local_name_532', 'english_name_532', 1939),
(533, 'local_name_533', 'english_name_533', 1976),
(534, 'local_name_534', 'english_name_534', 1989),
(535, 'local_name_535', 'english_name_535', 1943),
(536, 'local_name_536', 'english_name_536', 1938),
(537, 'local_name_537', 'english_name_537', 2001),
(538, 'local_name_538', 'english_name_538', 2008),
(539, 'local_name_539', 'english_name_539', 1915),
(540, 'local_name_540', 'english_name_540', 1955),
(541, 'local_name_541', 'english_name_541', 1907),
(542, 'local_name_542', 'english_name_542', 1907),
(543, 'local_name_543', 'english_name_543', 1914),
(544, 'local_name_544', 'english_name_544', 1999),
(545, 'local_name_545', 'english_name_545', 1928),
(546, 'local_name_546', 'english_name_546', 2010),
(547, 'local_name_547', 'english_name_547', 1951),
(548, 'local_name_548', 'english_name_548', 2016),
(549, 'local_name_549', 'english_name_549', 1913),
(550, 'local_name_550', 'english_name_550', 1992),
(551, 'local_name_551', 'english_name_551', 1985),
(552, 'local_name_552', 'english_name_552', 1926),
(553, 'local_name_553', 'english_name_553', 1991),
(554, 'local_name_554', 'english_name_554', 2010),
(555, 'local_name_555', 'english_name_555', 1977),
(556, 'local_name_556', 'english_name_556', 1905),
(557, 'local_name_557', 'english_name_557', 2015),
(558, 'local_name_558', 'english_name_558', 1971),
(559, 'local_name_559', 'english_name_559', 1944),
(560, 'local_name_560', 'english_name_560', 1992),
(561, 'local_name_561', 'english_name_561', 1962),
(562, 'local_name_562', 'english_name_562', 1958),
(563, 'local_name_563', 'english_name_563', 1955),
(564, 'local_name_564', 'english_name_564', 1903),
(565, 'local_name_565', 'english_name_565', 0000),
(566, 'local_name_566', 'english_name_566', 1972),
(567, 'local_name_567', 'english_name_567', 2008),
(568, 'local_name_568', 'english_name_568', 1982),
(569, 'local_name_569', 'english_name_569', 2007),
(570, 'local_name_570', 'english_name_570', 1965),
(571, 'local_name_571', 'english_name_571', 1988),
(572, 'local_name_572', 'english_name_572', 1918),
(573, 'local_name_573', 'english_name_573', 2008),
(574, 'local_name_574', 'english_name_574', 1978),
(575, 'local_name_575', 'english_name_575', 1967),
(576, 'local_name_576', 'english_name_576', 1942),
(577, 'local_name_577', 'english_name_577', 1903),
(578, 'local_name_578', 'english_name_578', 1931),
(579, 'local_name_579', 'english_name_579', 1987),
(580, 'local_name_580', 'english_name_580', 1906),
(581, 'local_name_581', 'english_name_581', 1975),
(582, 'local_name_582', 'english_name_582', 1951),
(583, 'local_name_583', 'english_name_583', 1914),
(584, 'local_name_584', 'english_name_584', 1993),
(585, 'local_name_585', 'english_name_585', 1986),
(586, 'local_name_586', 'english_name_586', 1965),
(587, 'local_name_587', 'english_name_587', 1982),
(588, 'local_name_588', 'english_name_588', 1941),
(589, 'local_name_589', 'english_name_589', 1940),
(590, 'local_name_590', 'english_name_590', 1959),
(591, 'local_name_591', 'english_name_591', 1954),
(592, 'local_name_592', 'english_name_592', 1921),
(593, 'local_name_593', 'english_name_593', 1998),
(594, 'local_name_594', 'english_name_594', 1904),
(595, 'local_name_595', 'english_name_595', 1963),
(596, 'local_name_596', 'english_name_596', 1980),
(597, 'local_name_597', 'english_name_597', 1965),
(598, 'local_name_598', 'english_name_598', 1945),
(599, 'local_name_599', 'english_name_599', 1988),
(600, 'local_name_600', 'english_name_600', 2002),
(601, 'local_name_601', 'english_name_601', 2008),
(602, 'local_name_602', 'english_name_602', 1987),
(603, 'local_name_603', 'english_name_603', 1980),
(604, 'local_name_604', 'english_name_604', 2003),
(605, 'local_name_605', 'english_name_605', 1908),
(606, 'local_name_606', 'english_name_606', 1930),
(607, 'local_name_607', 'english_name_607', 1978),
(608, 'local_name_608', 'english_name_608', 1922),
(609, 'local_name_609', 'english_name_609', 1962),
(610, 'local_name_610', 'english_name_610', 1958),
(611, 'local_name_611', 'english_name_611', 1996),
(612, 'local_name_612', 'english_name_612', 1962),
(613, 'local_name_613', 'english_name_613', 1988),
(614, 'local_name_614', 'english_name_614', 1930),
(615, 'local_name_615', 'english_name_615', 2015),
(616, 'local_name_616', 'english_name_616', 2000),
(617, 'local_name_617', 'english_name_617', 1941),
(618, 'local_name_618', 'english_name_618', 1963),
(619, 'local_name_619', 'english_name_619', 1935),
(620, 'local_name_620', 'english_name_620', 1935),
(621, 'local_name_621', 'english_name_621', 1913),
(622, 'local_name_622', 'english_name_622', 1915),
(623, 'local_name_623', 'english_name_623', 1927),
(624, 'local_name_624', 'english_name_624', 1990),
(625, 'local_name_625', 'english_name_625', 1972),
(626, 'local_name_626', 'english_name_626', 1995),
(627, 'local_name_627', 'english_name_627', 1901),
(628, 'local_name_628', 'english_name_628', 1950),
(629, 'local_name_629', 'english_name_629', 1988),
(630, 'local_name_630', 'english_name_630', 1921),
(631, 'local_name_631', 'english_name_631', 1982),
(632, 'local_name_632', 'english_name_632', 1971),
(633, 'local_name_633', 'english_name_633', 1985),
(634, 'local_name_634', 'english_name_634', 1932),
(635, 'local_name_635', 'english_name_635', 1910),
(636, 'local_name_636', 'english_name_636', 1960),
(637, 'local_name_637', 'english_name_637', 1994),
(638, 'local_name_638', 'english_name_638', 1983),
(639, 'local_name_639', 'english_name_639', 1924),
(640, 'local_name_640', 'english_name_640', 1989),
(641, 'local_name_641', 'english_name_641', 1932),
(642, 'local_name_642', 'english_name_642', 1931),
(643, 'local_name_643', 'english_name_643', 1925),
(644, 'local_name_644', 'english_name_644', 1928),
(645, 'local_name_645', 'english_name_645', 2005),
(646, 'local_name_646', 'english_name_646', 1937),
(647, 'local_name_647', 'english_name_647', 1963),
(648, 'local_name_648', 'english_name_648', 1981),
(649, 'local_name_649', 'english_name_649', 1946),
(650, 'local_name_650', 'english_name_650', 2006),
(651, 'local_name_651', 'english_name_651', 2018),
(652, 'local_name_652', 'english_name_652', 2008),
(653, 'local_name_653', 'english_name_653', 1967),
(654, 'local_name_654', 'english_name_654', 1912),
(655, 'local_name_655', 'english_name_655', 1908),
(656, 'local_name_656', 'english_name_656', 2011),
(657, 'local_name_657', 'english_name_657', 1924),
(658, 'local_name_658', 'english_name_658', 1987),
(659, 'local_name_659', 'english_name_659', 2005),
(660, 'local_name_660', 'english_name_660', 1980),
(661, 'local_name_661', 'english_name_661', 1948),
(662, 'local_name_662', 'english_name_662', 1989),
(663, 'local_name_663', 'english_name_663', 1901),
(664, 'local_name_664', 'english_name_664', 1986),
(665, 'local_name_665', 'english_name_665', 1961),
(666, 'local_name_666', 'english_name_666', 1956),
(667, 'local_name_667', 'english_name_667', 2006),
(668, 'local_name_668', 'english_name_668', 2008),
(669, 'local_name_669', 'english_name_669', 1907),
(670, 'local_name_670', 'english_name_670', 1939),
(671, 'local_name_671', 'english_name_671', 1990),
(672, 'local_name_672', 'english_name_672', 1931),
(673, 'local_name_673', 'english_name_673', 1989),
(674, 'local_name_674', 'english_name_674', 1994),
(675, 'local_name_675', 'english_name_675', 1937),
(676, 'local_name_676', 'english_name_676', 1927),
(677, 'local_name_677', 'english_name_677', 1979),
(678, 'local_name_678', 'english_name_678', 2006),
(679, 'local_name_679', 'english_name_679', 2005),
(680, 'local_name_680', 'english_name_680', 1994),
(681, 'local_name_681', 'english_name_681', 1947),
(682, 'local_name_682', 'english_name_682', 1960),
(683, 'local_name_683', 'english_name_683', 1965),
(684, 'local_name_684', 'english_name_684', 1931),
(685, 'local_name_685', 'english_name_685', 2018),
(686, 'local_name_686', 'english_name_686', 2003),
(687, 'local_name_687', 'english_name_687', 2001),
(688, 'local_name_688', 'english_name_688', 1948),
(689, 'local_name_689', 'english_name_689', 1935),
(690, 'local_name_690', 'english_name_690', 1929),
(691, 'local_name_691', 'english_name_691', 1939),
(692, 'local_name_692', 'english_name_692', 1992),
(693, 'local_name_693', 'english_name_693', 2009),
(694, 'local_name_694', 'english_name_694', 1953),
(695, 'local_name_695', 'english_name_695', 1988),
(696, 'local_name_696', 'english_name_696', 1992),
(697, 'local_name_697', 'english_name_697', 1971),
(698, 'local_name_698', 'english_name_698', 2006),
(699, 'local_name_699', 'english_name_699', 1964),
(700, 'local_name_700', 'english_name_700', 1967),
(701, 'local_name_701', 'english_name_701', 1934),
(702, 'local_name_702', 'english_name_702', 1946),
(703, 'local_name_703', 'english_name_703', 1938),
(704, 'local_name_704', 'english_name_704', 2017),
(705, 'local_name_705', 'english_name_705', 1967),
(706, 'local_name_706', 'english_name_706', 1985),
(707, 'local_name_707', 'english_name_707', 2004),
(708, 'local_name_708', 'english_name_708', 2020),
(709, 'local_name_709', 'english_name_709', 1941),
(710, 'local_name_710', 'english_name_710', 1980),
(711, 'local_name_711', 'english_name_711', 1979),
(712, 'local_name_712', 'english_name_712', 1934),
(713, 'local_name_713', 'english_name_713', 2011),
(714, 'local_name_714', 'english_name_714', 1987),
(715, 'local_name_715', 'english_name_715', 1983),
(716, 'local_name_716', 'english_name_716', 1968),
(717, 'local_name_717', 'english_name_717', 1945),
(718, 'local_name_718', 'english_name_718', 2013),
(719, 'local_name_719', 'english_name_719', 1977),
(720, 'local_name_720', 'english_name_720', 2000),
(721, 'local_name_721', 'english_name_721', 1904),
(722, 'local_name_722', 'english_name_722', 1928),
(723, 'local_name_723', 'english_name_723', 1995),
(724, 'local_name_724', 'english_name_724', 1970),
(725, 'local_name_725', 'english_name_725', 1992),
(726, 'local_name_726', 'english_name_726', 1979),
(727, 'local_name_727', 'english_name_727', 1930),
(728, 'local_name_728', 'english_name_728', 1933),
(729, 'local_name_729', 'english_name_729', 1919),
(730, 'local_name_730', 'english_name_730', 1904),
(731, 'local_name_731', 'english_name_731', 1960),
(732, 'local_name_732', 'english_name_732', 1955),
(733, 'local_name_733', 'english_name_733', 1972),
(734, 'local_name_734', 'english_name_734', 1964),
(735, 'local_name_735', 'english_name_735', 1947),
(736, 'local_name_736', 'english_name_736', 2009),
(737, 'local_name_737', 'english_name_737', 1978),
(738, 'local_name_738', 'english_name_738', 1927),
(739, 'local_name_739', 'english_name_739', 1993),
(740, 'local_name_740', 'english_name_740', 1951),
(741, 'local_name_741', 'english_name_741', 1950),
(742, 'local_name_742', 'english_name_742', 1981),
(743, 'local_name_743', 'english_name_743', 1959),
(744, 'local_name_744', 'english_name_744', 1994),
(745, 'local_name_745', 'english_name_745', 1945),
(746, 'local_name_746', 'english_name_746', 1905),
(747, 'local_name_747', 'english_name_747', 1981),
(748, 'local_name_748', 'english_name_748', 1904),
(749, 'local_name_749', 'english_name_749', 1994),
(750, 'local_name_750', 'english_name_750', 1949),
(751, 'local_name_751', 'english_name_751', 1995),
(752, 'local_name_752', 'english_name_752', 2001),
(753, 'local_name_753', 'english_name_753', 1921),
(754, 'local_name_754', 'english_name_754', 1908),
(755, 'local_name_755', 'english_name_755', 1988),
(756, 'local_name_756', 'english_name_756', 1938),
(757, 'local_name_757', 'english_name_757', 1921),
(758, 'local_name_758', 'english_name_758', 2004),
(759, 'local_name_759', 'english_name_759', 1958),
(760, 'local_name_760', 'english_name_760', 1925),
(761, 'local_name_761', 'english_name_761', 1965),
(762, 'local_name_762', 'english_name_762', 1918),
(763, 'local_name_763', 'english_name_763', 1987),
(764, 'local_name_764', 'english_name_764', 1992),
(765, 'local_name_765', 'english_name_765', 1992),
(766, 'local_name_766', 'english_name_766', 1997),
(767, 'local_name_767', 'english_name_767', 1932),
(768, 'local_name_768', 'english_name_768', 2017),
(769, 'local_name_769', 'english_name_769', 1934),
(770, 'local_name_770', 'english_name_770', 1909),
(771, 'local_name_771', 'english_name_771', 1982),
(772, 'local_name_772', 'english_name_772', 1987),
(773, 'local_name_773', 'english_name_773', 1942),
(774, 'local_name_774', 'english_name_774', 1934),
(775, 'local_name_775', 'english_name_775', 0000),
(776, 'local_name_776', 'english_name_776', 1912),
(777, 'local_name_777', 'english_name_777', 1907),
(778, 'local_name_778', 'english_name_778', 1922),
(779, 'local_name_779', 'english_name_779', 1945),
(780, 'local_name_780', 'english_name_780', 1991),
(781, 'local_name_781', 'english_name_781', 1926),
(782, 'local_name_782', 'english_name_782', 1926),
(783, 'local_name_783', 'english_name_783', 1972),
(784, 'local_name_784', 'english_name_784', 2018),
(785, 'local_name_785', 'english_name_785', 1912),
(786, 'local_name_786', 'english_name_786', 1982),
(787, 'local_name_787', 'english_name_787', 1924),
(788, 'local_name_788', 'english_name_788', 1993),
(789, 'local_name_789', 'english_name_789', 1956),
(790, 'local_name_790', 'english_name_790', 1999),
(791, 'local_name_791', 'english_name_791', 1931),
(792, 'local_name_792', 'english_name_792', 1916),
(793, 'local_name_793', 'english_name_793', 1993),
(794, 'local_name_794', 'english_name_794', 1993),
(795, 'local_name_795', 'english_name_795', 1936),
(796, 'local_name_796', 'english_name_796', 1951),
(797, 'local_name_797', 'english_name_797', 1922),
(798, 'local_name_798', 'english_name_798', 1954),
(799, 'local_name_799', 'english_name_799', 1979),
(800, 'local_name_800', 'english_name_800', 1976),
(801, 'local_name_801', 'english_name_801', 1987),
(802, 'local_name_802', 'english_name_802', 1949),
(803, 'local_name_803', 'english_name_803', 2016),
(804, 'local_name_804', 'english_name_804', 1908),
(805, 'local_name_805', 'english_name_805', 1925),
(806, 'local_name_806', 'english_name_806', 2004),
(807, 'local_name_807', 'english_name_807', 1932),
(808, 'local_name_808', 'english_name_808', 2014),
(809, 'local_name_809', 'english_name_809', 2008),
(810, 'local_name_810', 'english_name_810', 1916),
(811, 'local_name_811', 'english_name_811', 1936),
(812, 'local_name_812', 'english_name_812', 1931),
(813, 'local_name_813', 'english_name_813', 1966),
(814, 'local_name_814', 'english_name_814', 1967),
(815, 'local_name_815', 'english_name_815', 1941),
(816, 'local_name_816', 'english_name_816', 1998),
(817, 'local_name_817', 'english_name_817', 1917),
(818, 'local_name_818', 'english_name_818', 1913),
(819, 'local_name_819', 'english_name_819', 1933),
(820, 'local_name_820', 'english_name_820', 1964),
(821, 'local_name_821', 'english_name_821', 1939),
(822, 'local_name_822', 'english_name_822', 2012),
(823, 'local_name_823', 'english_name_823', 1967),
(824, 'local_name_824', 'english_name_824', 1921),
(825, 'local_name_825', 'english_name_825', 1981),
(826, 'local_name_826', 'english_name_826', 1975),
(827, 'local_name_827', 'english_name_827', 1941),
(828, 'local_name_828', 'english_name_828', 2000),
(829, 'local_name_829', 'english_name_829', 1974),
(830, 'local_name_830', 'english_name_830', 1953),
(831, 'local_name_831', 'english_name_831', 2018),
(832, 'local_name_832', 'english_name_832', 1931),
(833, 'local_name_833', 'english_name_833', 2017),
(834, 'local_name_834', 'english_name_834', 1970),
(835, 'local_name_835', 'english_name_835', 1990),
(836, 'local_name_836', 'english_name_836', 2014),
(837, 'local_name_837', 'english_name_837', 1938),
(838, 'local_name_838', 'english_name_838', 1934),
(839, 'local_name_839', 'english_name_839', 1930),
(840, 'local_name_840', 'english_name_840', 1955),
(841, 'local_name_841', 'english_name_841', 1936),
(842, 'local_name_842', 'english_name_842', 1943),
(843, 'local_name_843', 'english_name_843', 1949),
(844, 'local_name_844', 'english_name_844', 1913),
(845, 'local_name_845', 'english_name_845', 1995),
(846, 'local_name_846', 'english_name_846', 1996),
(847, 'local_name_847', 'english_name_847', 1914),
(848, 'local_name_848', 'english_name_848', 1975),
(849, 'local_name_849', 'english_name_849', 1951),
(850, 'local_name_850', 'english_name_850', 1969),
(851, 'local_name_851', 'english_name_851', 1996),
(852, 'local_name_852', 'english_name_852', 1997),
(853, 'local_name_853', 'english_name_853', 1913),
(854, 'local_name_854', 'english_name_854', 2017),
(855, 'local_name_855', 'english_name_855', 1940),
(856, 'local_name_856', 'english_name_856', 2000),
(857, 'local_name_857', 'english_name_857', 1948),
(858, 'local_name_858', 'english_name_858', 1982),
(859, 'local_name_859', 'english_name_859', 1912),
(860, 'local_name_860', 'english_name_860', 1965),
(861, 'local_name_861', 'english_name_861', 2012),
(862, 'local_name_862', 'english_name_862', 1993),
(863, 'local_name_863', 'english_name_863', 1990),
(864, 'local_name_864', 'english_name_864', 1980),
(865, 'local_name_865', 'english_name_865', 1966),
(866, 'local_name_866', 'english_name_866', 1979),
(867, 'local_name_867', 'english_name_867', 2020),
(868, 'local_name_868', 'english_name_868', 1987),
(869, 'local_name_869', 'english_name_869', 1911),
(870, 'local_name_870', 'english_name_870', 1989),
(871, 'local_name_871', 'english_name_871', 1930),
(872, 'local_name_872', 'english_name_872', 1969),
(873, 'local_name_873', 'english_name_873', 1929),
(874, 'local_name_874', 'english_name_874', 1979),
(875, 'local_name_875', 'english_name_875', 1911),
(876, 'local_name_876', 'english_name_876', 1933),
(877, 'local_name_877', 'english_name_877', 1987),
(878, 'local_name_878', 'english_name_878', 1967),
(879, 'local_name_879', 'english_name_879', 1979),
(880, 'local_name_880', 'english_name_880', 1942),
(881, 'local_name_881', 'english_name_881', 1944),
(882, 'local_name_882', 'english_name_882', 1983),
(883, 'local_name_883', 'english_name_883', 1983),
(884, 'local_name_884', 'english_name_884', 2017),
(885, 'local_name_885', 'english_name_885', 2012),
(886, 'local_name_886', 'english_name_886', 1910),
(887, 'local_name_887', 'english_name_887', 1940),
(888, 'local_name_888', 'english_name_888', 1932),
(889, 'local_name_889', 'english_name_889', 2003),
(890, 'local_name_890', 'english_name_890', 1949),
(891, 'local_name_891', 'english_name_891', 1956),
(892, 'local_name_892', 'english_name_892', 2003),
(893, 'local_name_893', 'english_name_893', 1905),
(894, 'local_name_894', 'english_name_894', 1982),
(895, 'local_name_895', 'english_name_895', 1970),
(896, 'local_name_896', 'english_name_896', 1981),
(897, 'local_name_897', 'english_name_897', 2005),
(898, 'local_name_898', 'english_name_898', 1927),
(899, 'local_name_899', 'english_name_899', 1915),
(900, 'local_name_900', 'english_name_900', 1903),
(901, 'local_name_901', 'english_name_901', 1919),
(902, 'local_name_902', 'english_name_902', 1969),
(903, 'local_name_903', 'english_name_903', 1985),
(904, 'local_name_904', 'english_name_904', 1991),
(905, 'local_name_905', 'english_name_905', 1939),
(906, 'local_name_906', 'english_name_906', 1906),
(907, 'local_name_907', 'english_name_907', 1907),
(908, 'local_name_908', 'english_name_908', 2006),
(909, 'local_name_909', 'english_name_909', 1907),
(910, 'local_name_910', 'english_name_910', 1926),
(911, 'local_name_911', 'english_name_911', 2002),
(912, 'local_name_912', 'english_name_912', 1930),
(913, 'local_name_913', 'english_name_913', 1938),
(914, 'local_name_914', 'english_name_914', 1980),
(915, 'local_name_915', 'english_name_915', 1953),
(916, 'local_name_916', 'english_name_916', 1938),
(917, 'local_name_917', 'english_name_917', 1938),
(918, 'local_name_918', 'english_name_918', 2008),
(919, 'local_name_919', 'english_name_919', 1907),
(920, 'local_name_920', 'english_name_920', 1957),
(921, 'local_name_921', 'english_name_921', 1949),
(922, 'local_name_922', 'english_name_922', 1915),
(923, 'local_name_923', 'english_name_923', 2008),
(924, 'local_name_924', 'english_name_924', 1929),
(925, 'local_name_925', 'english_name_925', 1983),
(926, 'local_name_926', 'english_name_926', 1923),
(927, 'local_name_927', 'english_name_927', 1987),
(928, 'local_name_928', 'english_name_928', 1991),
(929, 'local_name_929', 'english_name_929', 1971),
(930, 'local_name_930', 'english_name_930', 1973),
(931, 'local_name_931', 'english_name_931', 1981),
(932, 'local_name_932', 'english_name_932', 1978),
(933, 'local_name_933', 'english_name_933', 1931),
(934, 'local_name_934', 'english_name_934', 1999),
(935, 'local_name_935', 'english_name_935', 1924),
(936, 'local_name_936', 'english_name_936', 1954),
(937, 'local_name_937', 'english_name_937', 1999),
(938, 'local_name_938', 'english_name_938', 1933),
(939, 'local_name_939', 'english_name_939', 2003),
(940, 'local_name_940', 'english_name_940', 1991),
(941, 'local_name_941', 'english_name_941', 2002),
(942, 'local_name_942', 'english_name_942', 1984),
(943, 'local_name_943', 'english_name_943', 1983),
(944, 'local_name_944', 'english_name_944', 1944),
(945, 'local_name_945', 'english_name_945', 1998),
(946, 'local_name_946', 'english_name_946', 2011),
(947, 'local_name_947', 'english_name_947', 1919),
(948, 'local_name_948', 'english_name_948', 2017),
(949, 'local_name_949', 'english_name_949', 1954),
(950, 'local_name_950', 'english_name_950', 1943),
(951, 'local_name_951', 'english_name_951', 1979),
(952, 'local_name_952', 'english_name_952', 1926),
(953, 'local_name_953', 'english_name_953', 2009),
(954, 'local_name_954', 'english_name_954', 2005),
(955, 'local_name_955', 'english_name_955', 1951),
(956, 'local_name_956', 'english_name_956', 1995),
(957, 'local_name_957', 'english_name_957', 2000),
(958, 'local_name_958', 'english_name_958', 1958),
(959, 'local_name_959', 'english_name_959', 1998),
(960, 'local_name_960', 'english_name_960', 1931),
(961, 'local_name_961', 'english_name_961', 1948),
(962, 'local_name_962', 'english_name_962', 1922),
(963, 'local_name_963', 'english_name_963', 1907),
(964, 'local_name_964', 'english_name_964', 2004),
(965, 'local_name_965', 'english_name_965', 2013),
(966, 'local_name_966', 'english_name_966', 1904),
(967, 'local_name_967', 'english_name_967', 1936),
(968, 'local_name_968', 'english_name_968', 1994),
(969, 'local_name_969', 'english_name_969', 1978),
(970, 'local_name_970', 'english_name_970', 1946),
(971, 'local_name_971', 'english_name_971', 1931),
(972, 'local_name_972', 'english_name_972', 1908),
(973, 'local_name_973', 'english_name_973', 1945),
(974, 'local_name_974', 'english_name_974', 1967),
(975, 'local_name_975', 'english_name_975', 2010),
(976, 'local_name_976', 'english_name_976', 1947),
(977, 'local_name_977', 'english_name_977', 1941),
(978, 'local_name_978', 'english_name_978', 2010),
(979, 'local_name_979', 'english_name_979', 1906),
(980, 'local_name_980', 'english_name_980', 1917),
(981, 'local_name_981', 'english_name_981', 2010),
(982, 'local_name_982', 'english_name_982', 1987),
(983, 'local_name_983', 'english_name_983', 2004),
(984, 'local_name_984', 'english_name_984', 1947),
(985, 'local_name_985', 'english_name_985', 1932),
(986, 'local_name_986', 'english_name_986', 1978),
(987, 'local_name_987', 'english_name_987', 1907),
(988, 'local_name_988', 'english_name_988', 2015),
(989, 'local_name_989', 'english_name_989', 1923),
(990, 'local_name_990', 'english_name_990', 1992),
(991, 'local_name_991', 'english_name_991', 1935),
(992, 'local_name_992', 'english_name_992', 1962),
(993, 'local_name_993', 'english_name_993', 1926),
(994, 'local_name_994', 'english_name_994', 1999),
(995, 'local_name_995', 'english_name_995', 1967),
(996, 'local_name_996', 'english_name_996', 1951),
(997, 'local_name_997', 'english_name_997', 1942),
(998, 'local_name_998', 'english_name_998', 1921),
(999, 'local_name_999', 'english_name_999', 1901),
(1000, 'local_name_1000', 'english_name_1000', 1945),
(1001, 'local_name_1001', 'english_name_1001', 1989),
(1002, 'local_name_1002', 'english_name_1002', 2033);

-- --------------------------------------------------------

--
-- Table structure for table `movie_data`
--

CREATE TABLE `movie_data` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_data is a WEAK entity',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(1, 'English', 'USA', 'Animation', 'Princess Elsa of Arendelle possesses magical powers that allow her to control and create ice and snow, often using them to play with her younger sister, Anna. After Elsa accidentally injures Anna with her magic, their parents, the King and Queen, take both siblings to a colony of trolls led by Grand Pabbie. He heals Anna, but alters her memories so that she forgets about Elsa\'s magic. Grand Pabbie warns Elsa that she must learn to control her powers, and that fear will be her greatest enemy. The'),
(8, 'Spanish', 'Spain', 'Mystery', 'Hoping to put to rest years of unease concerning a past case, retired criminal investigator Benjamín Espósito (Ricardo Darín) begins writing a novel based on the decades-old unsolved mystery of a newlywed\'s rape and murder. 
With the help of a former colleague, Judge Irene Menéndez Hastings (Soledad Villamil), Benjamín attempts to make sense of the past. The journey through his memories sets Benjamín on a thrilling emotional path that leads to a shocking realization.'),
(9, 'English', 'USA', 'Comedy', 'An ogre named Shrek wants to protect his swamp. This starts an adventure. Oh yeah, he meets a talking donkey too.'),
(11, 'English', 'USA', 'Drama', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.');

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(6) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(8, 'drama'),
(8, 'novel'),
(8, 'mistery'),
(9, 'Animation'),
(9, 'Fairytale'),
(9, 'Ogre'),
(9, 'Swamp'),
(11, 'amputee'),
(11, 'based on book'),
(11, 'vietnam war');

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_media_id` int(6) NOT NULL,
  `m_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'video, poster, image are three possible values.',
  `movie_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(811, 'https://www.youtube.com/watch?v=tH8qDFVWkkU', 'video', 8),
(812, 'https://en.wikipedia.org/wiki/The_Secret_in_Their_Eyes#/media/File:Cartel-nuevo-de-el-secreto-de-sus-ojos.jpg', 'image', 8),
(91, 'https://www.youtube.com/watch?v=W37DlG1i61s', 'Video', 9),
(111, 'https://www.youtube.com/watch?v=bLvqoHBptjg', 'video', 11),
(112, 'https://en.wikipedia.org/wiki/Forrest_Gump#/media/File:Forrest_Gump_poster.jpg', 'image', 11);

-- --------------------------------------------------------

--
-- Table structure for table `movie_people`
--

CREATE TABLE `movie_people` (
  `movie_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'director, producer, music director, lead actor, lead actress, supporting actor, supporting actress are possible values'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(1, 1, 'Director'),
(1, 1, 'Supporting Acto'),
(1, 2, 'Director'),
(1, 3, 'Producer'),
(1, 4, 'Lead Actress'),
(1, 5, 'Lead Actor'),
(8, 811, 'Director'),
(8, 812, 'Novel Writer'),
(8, 813, 'Actor '),
(8, 814, 'Actress'),
(9, 91, 'Director'),
(9, 92, 'Director'),
(9, 93, 'Actor'),
(9, 94, 'Actor'),
(9, 95, 'Actress'),
(11, 111, 'Director'),
(11, 112, 'Novel Writer'),
(11, 113, 'Screenplay'),
(11, 114, 'Actor'),
(11, 115, 'Actress'),
(11, 116, 'Actress'),
(11, 117, 'Actor'),
(11, 118, 'Actor');

-- --------------------------------------------------------

--
-- Table structure for table `movie_song`
--

CREATE TABLE `movie_song` (
  `movie_id` int(6) NOT NULL,
  `song_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This tables reflects an associative entity (movie,song)';

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(1, 1),
(8, 811),
(9, 91),
(11, 111);

-- --------------------------------------------------------

--
-- Table structure for table `movie_trivia`
--

CREATE TABLE `movie_trivia` (
  `movie_id` int(6) NOT NULL,
  `trivia` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(11, 'Forrest Gump is based on a novel.');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(6) NOT NULL,
  `screen_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Many people in the movie industry are known by short names',
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'We will store the images locally on the server; This field refers to the image file name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(1, 'Chris Buck', 'Chris', '', 'Buck', 'Male', ''),
(2, 'Jennifer Lee', 'Jennifer', '', 'Lee', 'Female', ''),
(3, 'Peter Vecho', 'Peter', 'Del ', 'Vecho', 'Male', ''),
(4, 'Kristen Bell', 'Kristen', '', 'Bell', 'Female', ''),
(5, 'Jonathan Groff', 'Jonathan ', 'Drew', 'Groff', 'Male', ''),
(811, 'Juan José Campanella', 'Juan', 'José', 'Campanella', 'Male', 'juan_jose_campanella.jpg'),
(812, 'Eduardo Sacheri', 'Eduardo', '', 'Sacheri', 'Male', 'eduardo_sacheri.jpg'),
(813, 'Ricardo Darín', 'Ricardo', '', 'Darín', 'Male', 'ricardo_darin.jpg'),
(814, 'Soledad Villamil', 'Soledad', '', 'Villamil', 'Female', 'soledad.jpg'),
(815, 'Emilio Kauderer', 'Emilio', '', 'Kauderer', 'Male', 'Emilio_Kauderer.jpg'),
(91, 'Andrew', 'Andrew', ' ', 'Adamson', 'Male', 'Andrew_Adamson.jpg'),
(92, 'Vicky', 'Vicky', ' ', 'Jenson', 'Female', 'Vicky_Jenson.jpg'),
(93, 'Mike', 'Mike', ' ', 'Myers', 'Male', 'Mike_Myers.jpg'),
(94, 'Eddie', 'Eddie', ' ', 'Murphy', 'Male', 'Eddie_Murphy.jpg'),
(95, 'Cameron', 'Cameron', ' ', 'Diaz', 'Female', 'Cameron_Diaz.jpg'),
(96, 'Neil', 'Neil', ' ', 'Diamond', 'Male', 'Neil_Diamond'),
(111, 'Robert', 'Robert', '', 'Zemeckis', 'Male', 'robert_zemeckis.jpg'),
(112, 'Winston', 'Winston', '', 'Groom', 'Male', 'winston_groom.jpg'),
(113, 'Eric', 'Eric', '', 'Roth', 'Male', 'eric_roth.jpg'),
(114, 'Tom Hanks', 'Thomas', 'Jeffrey', 'Hanks', 'Male', 'tom_hanks.jpg'),
(115, 'Rebecca Williams', 'Rebecca', '', 'Williams', 'Female', 'rebecca_williams.jpg'),
(116, 'Sally Field', 'Sally', 'Margaret', 'Field', 'Female', 'sally_field.jpg'),
(117, 'Michael', 'Michael', 'Conner', 'Humphreys', 'Male', 'michael_humphreys.jpg'),
(118, 'Harold', 'Harold', 'G', 'Herthum', 'Male', 'harold_herthum.jpg'),
(119, 'Alan', 'Alan', 'Anthony', 'Silvestri', 'Male', 'alan_silvestri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(5) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyrics` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(1, 'Let It go', 'The snow glows white on the mountain tonight Not a footprint to be seen A kingdom of isolation And it looks like I am the queen…'),
(811, 'Her Eyes', NULL),
(91, 'I\'m a Belie', NULL),
(111, 'I\'m Forrest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_keywords`
--

CREATE TABLE `song_keywords` (
  `song_id` int(5) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(811, 'Sad'),
(91, 'Energetic'),
(91, 'Happy'),
(91, 'Upbeat'),
(111, 'Heartwarming'),
(111, 'Sad');

-- --------------------------------------------------------

--
-- Table structure for table `song_media`
--

CREATE TABLE `song_media` (
  `song_media_id` int(6) NOT NULL,
  `s_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'audio and video are two possible values',
  `song_id` int(6) NOT NULL COMMENT 'is the FK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(811, 'https://www.youtube.com/watch?v=ZxsxNrbvD70', 'Video', 811),
(91, 'https://www.youtube.com/watch?v=0mYBSayCsH0', 'Video', 91),
(111, 'https://www.youtube.com/watch?v=RUyZeic_BaE', 'audio', 111);

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(811, 815, 'Composer'),
(91, 96, 'Composer'),
(111, 119, 'Composer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`movie_id`,`keyword`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`movie_id`,`people_id`,`role`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`movie_id`,`song_id`);

--
-- Indexes for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD PRIMARY KEY (`song_id`,`keyword`);

--
-- Indexes for table `song_media`
--
ALTER TABLE `song_media`
  ADD PRIMARY KEY (`song_media_id`);

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
