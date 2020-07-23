-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 04:35 AM
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
-- Structure for view `people_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `people_view`  AS  select `people`.`people_id` AS `people_id`,`people`.`first_name` AS `first_name`,`people`.`middle_name` AS `middle_name`,`people`.`last_name` AS `last_name`,`people`.`gender` AS `gender`,`people`.`stage_name` AS `stage_name`,`movie_people`.`screen_name` AS `screen_name`,`people_trivia`.`people_trivia_name` AS `people_trivia_name`,`movies`.`movie_id` AS `movie_id`,`movie_people`.`role` AS `role`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`song_people`.`role` AS `song_role`,`song_people`.`song_id` AS `song_id`,`songs`.`title` AS `title`,`songs`.`lyrics` AS `lyrics` from (((((`people` left join `people_trivia` on(`people`.`people_id` = `people_trivia`.`people_id`)) left join `movie_people` on(`people`.`people_id` = `movie_people`.`people_id`)) left join `movies` on(`movie_people`.`movie_id` = `movies`.`movie_id`)) left join `song_people` on(`people`.`people_id` = `song_people`.`people_id`)) left join `songs` on(`song_people`.`song_id` = `songs`.`song_id`)) group by `people`.`people_id` ;

--
-- VIEW `people_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
