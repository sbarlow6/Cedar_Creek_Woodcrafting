-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2017 at 10:39 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbarlowc_karlsite`
--

USE `sbarlowc_karlsite`;

CREATE DATABASE IF NOT EXISTS `sbarlowc_karlsite` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sbarlowc_karlsite`;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userId` int(1) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userId`, `username`, `password`) VALUES
(1, 'admin', 'blah');

-- --------------------------------------------------------

--
-- Table structure for table `featproject`
--

CREATE TABLE `featproject` (
  `projectId` int(11) NOT NULL,
  `projectName` varchar(50) NOT NULL,
  `projectDescription` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `video` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featproject`
--

INSERT INTO `featproject` (`projectId`, `projectName`, `projectDescription`, `image`, `video`) VALUES
(1, 'Featured Product: Folding Tables', 'These tables are fantastic pieces of high quality furniture. When not in use, they can easily be stored away for future use. This is one of the most versatile and beautiful woodcrafting pieces ever designed, buy one for your home!', '1XCOdq3jSmU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(4) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productDescription` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `video` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productName`, `productDescription`, `image`, `video`) VALUES
(2, 'Engraved Plaques', 'These are great for any occasion. Digital images and type can be engraved onto wood to commemorate special occasions, graduations, or weddings. They can be used to convey inspirational quotes to your guests. The possibilities are endless!', 'plaques.jpg', 0),
(7, 'Cutting Boards', 'These cutting boards are essential for any kitchen. Built with innovative patterns of different types of (customizable) high quality wood, these will make you the envy of all vegetable choppers. These boards are custom built to order.', 'cuttingboards.jpg', 0),
(8, 'Folding Tables', 'These tables are fantastic pieces of high quality furniture. When not in use, they can easily be stored away for future use. This is one of the most versatile and beautiful woodcrafting pieces ever designed, buy one for your home!', '1XCOdq3jSmU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectid` int(4) NOT NULL,
  `projectName` varchar(50) NOT NULL,
  `projectDescription` varchar(1000) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `video` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectid`, `projectName`, `projectDescription`, `image`, `video`) VALUES
(1, 'Three Wood Cutting Board', 'This cutting board was built as a personal project, and is doing it&#39;s job in my own kitchen! This was a great project that is serving me well, it&#39;s great to have such a beautiful work to cut my vegetables on!', 'wood-11.jpg', 0),
(2, 'McCallum Family Plaque', 'The McCallum family wanted something they could mount on their wall that would commemorate the establishment of their family and its precious members. This plaque was just the thing! They are always getting compliments from their guests on this piece.', 'wood-1.jpg', 0),
(5, 'Cutting Board', 'Created from 4 different types of wood, this board was tailored to a customer&#39;s order specifications. The possibilities are endless with these boards and the creativity that can be expressed through such a common household tool is always inspiring. There&#39;s beauty to be found everywhere!', 'wood-4.jpg', 0),
(6, 'First Bow Kill Award', 'This is a plaque created for the USRB&#39;s First Bow Kill Award. It&#39;s a high honor to receive this award and it should be accompanied by a high quality plaque, so that&#39;s what was made for it.', 'wood-14.jpg', 0),
(7, 'Ruin and Recovery are both from within', 'This plaque was created as a motivational reminder to all who view it. Woodwork is a medium that can really inspire people to make their lives better.', 'wood-13.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `featproject`
--
ALTER TABLE `featproject`
  ADD PRIMARY KEY (`projectId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `courses`
--
CREATE DATABASE IF NOT EXISTS `courses` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `courses`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Name` varchar(30) DEFAULT NULL,
  `Credits` double DEFAULT NULL,
  `CourseNumber` smallint(4) DEFAULT NULL,
  `Prefix` varchar(10) DEFAULT NULL,
  `CourseId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Name`, `Credits`, `CourseNumber`, `Prefix`, `CourseId`) VALUES
('Introduction to Programming', 3, 160, 'CIT', 1),
('Web Frontend Development', 3, 230, 'CIT', 2),
('Web Backend Development', 3, 336, 'CIT', 3),
('Databases', 3, 225, 'CIT', 5),
('Introduction to Databases', 3, 111, 'CIT', 6),
('Book of Mormon - A', 3, 121, 'REL', 7),
('Book of Mormon - B', 3, 122, 'REL', 8),
('New Testament - A', 3, 211, 'REL', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(10) UNSIGNED NOT NULL,
  `memFirstname` varchar(20) NOT NULL,
  `memLastname` varchar(50) NOT NULL,
  `memEmail` varchar(50) NOT NULL,
  `memPassword` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `memFirstname`, `memLastname`, `memEmail`, `memPassword`) VALUES
(0, 'h', 'h', 'h@h.com', 'h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);
--
-- Database: `newspaper`
--
CREATE DATABASE IF NOT EXISTS `newspaper` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newspaper`;

-- --------------------------------------------------------

--
-- Table structure for table `AdTypes`
--

CREATE TABLE `AdTypes` (
  `adTypesId` int(10) UNSIGNED NOT NULL,
  `adType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdTypes`
--

INSERT INTO `AdTypes` (`adTypesId`, `adType`) VALUES
(1, 'Home for Sale'),
(2, 'Vehicle for Sale'),
(3, 'Garage / Yard Sale'),
(4, 'Pet for Sale'),
(5, 'Misc for Sale');

-- --------------------------------------------------------

--
-- Table structure for table `Ads`
--

CREATE TABLE `Ads` (
  `adId` int(10) UNSIGNED NOT NULL,
  `adTypesId` int(10) UNSIGNED NOT NULL,
  `adText` varchar(1000) NOT NULL,
  `adRunDate` date NOT NULL COMMENT 'Date ad will first run',
  `adRunDays` tinyint(3) UNSIGNED NOT NULL COMMENT 'Ad will run # of days',
  `advertId` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key to Advertisers table',
  `adCost` float NOT NULL COMMENT 'Total cost of ad',
  `adPlaced` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date ad received'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Advertisers`
--

CREATE TABLE `Advertisers` (
  `advertId` int(10) UNSIGNED NOT NULL,
  `advertFirstName` varchar(30) NOT NULL,
  `advertLastName` varchar(45) NOT NULL,
  `advertPhone` varchar(15) NOT NULL,
  `advertEmail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Advertisers`
--

INSERT INTO `Advertisers` (`advertId`, `advertFirstName`, `advertLastName`, `advertPhone`, `advertEmail`) VALUES
(1, 'hi', 'hi', 'hi', 'hi@hi.com'),
(2, 'hi', 'hi', 'hi', 'hi@hi.com'),
(3, 'hi', 'hi', 'hi', 'hi@hi.com'),
(4, 'hi', 'hi', 'hi', 'hi@hi.com'),
(5, 'hi', 'hi', 'hi', 'hi@hi.com'),
(6, 'hi', 'hi', 'hi', 'hi@hi.com'),
(7, 'hi', 'hi', 'hi', 'hi@hi.com'),
(8, 'hi', 'hi', 'hi', 'hi@hi.com'),
(9, 'hi', 'hi', 'hi', 'hi@hi.com'),
(10, 'hi', 'hi', 'hi', 'hi@hi.com'),
(11, 'hi', 'hi', 'hi', 'hi@hi.com'),
(12, 'hi', 'hi', 'hi', 'hi@hi.com'),
(13, 'hi', 'hi', 'hi', 'hi@hi.com'),
(14, 'hi', 'hi', 'hi', 'hi@hi.com'),
(15, 'hi', 'hi', 'hi', 'hi@hi.com'),
(16, 'hi', 'hi', 'hi', 'hi@hi.com'),
(17, 'hi', 'hi', 'hi', 'hi@hi.com'),
(18, 'hi', 'hi', 'hi', 'hi@hi.com'),
(19, 'hi', 'hi', 'hi', 'hi@hi.com'),
(20, 'hi', 'hi', 'hi', 'hi@hi.com'),
(21, 'hi', 'hi', 'hi', 'hi@hi.com'),
(22, 'hi', 'hi', 'hi', 'hi@hi.com'),
(23, 'hi', 'hi', 'hi', 'hi@hi.com'),
(24, 'hi', 'hi', 'hi', 'hi@hi.com'),
(25, 'hi', 'hi', 'hi', 'hi@hi.com'),
(26, 'hi', 'hi', 'hi', 'hi@hi.com'),
(27, 'hi', 'hi', 'hi', 'hi@hi.com'),
(28, 'hi', 'hi', 'hi', 'hi@hi.com'),
(29, 'hi', 'hi', 'hi', 'hi@hi.com'),
(30, 'hi', 'hi', 'hi', 'hi@hi.com'),
(31, 'hi', 'hi', 'hi', 'hi@hi.com'),
(32, 'hi', 'hi', 'hi', 'hi@hi.com'),
(33, 'hi', 'hi', 'hi', 'hi@hi.com'),
(34, 'hi', 'hi', 'hi', 'hi@hi.com'),
(35, 'hi', 'hi', 'hi', 'hi@hi.com'),
(36, 'hi', 'hi', 'hi', 'hi@hi.com'),
(37, 'hi', 'hi', 'hi', 'hi@hi.com'),
(38, 'hi', 'hi', 'hi', 'hi@hi.com'),
(39, 'hi', 'hi', 'hi', 'hello@hi.com'),
(40, 'hi', 'hi', 'hi', 'hello@hi.com'),
(41, 'hi', 'hi', 'hello', 'hi@hi.com'),
(42, 'hi', 'hi', 'hello', 'hi@hi.com'),
(43, 'Sam', 'Barlow', 'Blah', 'fake@fake.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdTypes`
--
ALTER TABLE `AdTypes`
  ADD PRIMARY KEY (`adTypesId`);

--
-- Indexes for table `Ads`
--
ALTER TABLE `Ads`
  ADD PRIMARY KEY (`adId`),
  ADD KEY `advertId_idx` (`advertId`),
  ADD KEY `adTypesId_idx` (`adTypesId`);

--
-- Indexes for table `Advertisers`
--
ALTER TABLE `Advertisers`
  ADD PRIMARY KEY (`advertId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdTypes`
--
ALTER TABLE `AdTypes`
  MODIFY `adTypesId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ads`
--
ALTER TABLE `Ads`
  MODIFY `adId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Advertisers`
--
ALTER TABLE `Advertisers`
  MODIFY `advertId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ads`
--
ALTER TABLE `Ads`
  ADD CONSTRAINT `adType` FOREIGN KEY (`adTypesId`) REFERENCES `AdTypes` (`adTypesId`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `adventID` FOREIGN KEY (`advertId`) REFERENCES `Advertisers` (`advertId`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'database', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["assignments","members","users"],"table_structure[]":["assignments","members","users"],"table_data[]":["assignments","members","users"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"cedarcreek","table":"User"},{"db":"cedarcreek","table":"featproject"},{"db":"cedarcreek","table":"projects"},{"db":"cedarcreek","table":"products"},{"db":"Project","table":"assignments"},{"db":"Project","table":"users"},{"db":"Project","table":"members"},{"db":"demo","table":"members"},{"db":"sbarlowc_newspaper","table":"AdTypes"},{"db":"sbarlowc_newspaper","table":"Advertisers"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('Project', 'assignments', 'userId', 'Project', 'users', 'usrId');

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'Project', 'assignments', '{"CREATE_TIME":"2016-12-08 19:43:14","col_visib":["1","1","1","1","1"]}', '2016-12-13 01:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-09-21 20:18:22', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `sbarlowc_guitar1`
--
CREATE DATABASE IF NOT EXISTS `sbarlowc_guitar1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sbarlowc_guitar1`;
--
-- Database: `sbarlowc_guitar2`
--
CREATE DATABASE IF NOT EXISTS `sbarlowc_guitar2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sbarlowc_guitar2`;
--
-- Database: `sbarlowc_newspaper`
--
CREATE DATABASE IF NOT EXISTS `sbarlowc_newspaper` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sbarlowc_newspaper`;

-- --------------------------------------------------------

--
-- Table structure for table `AdTypes`
--

CREATE TABLE `AdTypes` (
  `adTypesId` int(10) UNSIGNED NOT NULL,
  `adType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdTypes`
--

INSERT INTO `AdTypes` (`adTypesId`, `adType`) VALUES
(1, 'Home for Sale'),
(2, 'Vehicle for Sale'),
(3, 'Garage / Yard Sale'),
(4, 'Pet for Sale'),
(5, 'Misc for Sale');

-- --------------------------------------------------------

--
-- Table structure for table `Ads`
--

CREATE TABLE `Ads` (
  `adId` int(10) UNSIGNED NOT NULL,
  `adTypesId` int(10) UNSIGNED NOT NULL,
  `adText` varchar(1000) NOT NULL,
  `adRunDate` date NOT NULL COMMENT 'Date ad will first run',
  `adRunDays` tinyint(3) UNSIGNED NOT NULL COMMENT 'Ad will run # of days',
  `advertId` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key to Advertisers table',
  `adCost` float NOT NULL COMMENT 'Total cost of ad',
  `adPlaced` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date ad received'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Advertisers`
--

CREATE TABLE `Advertisers` (
  `advertId` int(10) UNSIGNED NOT NULL,
  `advertFirstName` varchar(30) NOT NULL,
  `advertLastName` varchar(45) NOT NULL,
  `advertPhone` varchar(15) NOT NULL,
  `advertEmail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Advertisers`
--

INSERT INTO `Advertisers` (`advertId`, `advertFirstName`, `advertLastName`, `advertPhone`, `advertEmail`) VALUES
(1, 'hi', 'hi', 'hi', 'hi@hi.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdTypes`
--
ALTER TABLE `AdTypes`
  ADD PRIMARY KEY (`adTypesId`);

--
-- Indexes for table `Ads`
--
ALTER TABLE `Ads`
  ADD PRIMARY KEY (`adId`),
  ADD KEY `advertId_idx` (`advertId`),
  ADD KEY `adTypesId_idx` (`adTypesId`);

--
-- Indexes for table `Advertisers`
--
ALTER TABLE `Advertisers`
  ADD PRIMARY KEY (`advertId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdTypes`
--
ALTER TABLE `AdTypes`
  MODIFY `adTypesId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Ads`
--
ALTER TABLE `Ads`
  MODIFY `adId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Advertisers`
--
ALTER TABLE `Advertisers`
  MODIFY `advertId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ads`
--
ALTER TABLE `Ads`
  ADD CONSTRAINT `adType` FOREIGN KEY (`adTypesId`) REFERENCES `AdTypes` (`adTypesId`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `adventID` FOREIGN KEY (`advertId`) REFERENCES `Advertisers` (`advertId`) ON UPDATE CASCADE;
--
-- Database: `sbarlowc_sbarlowdb`
--
CREATE DATABASE IF NOT EXISTS `sbarlowc_sbarlowdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sbarlowc_sbarlowdb`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Guitars'),
(2, 'Basses'),
(3, 'Drums');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `listPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productCode`, `productName`, `listPrice`) VALUES
(1, 1, 'strat', 'Fender Stratocaster', '699.00'),
(2, 1, 'les_paul', 'Gibson Les Paul', '1199.00'),
(3, 1, 'sg', 'Gibson SG', '2517.00'),
(4, 1, 'fg700s', 'Yamaha FG700S', '489.99'),
(5, 1, 'washburn', 'Washburn D10S', '299.00'),
(6, 1, 'rodriguez', 'Rodriguez Caballero 11', '415.00'),
(7, 2, 'precision', 'Fender Precision', '799.99'),
(8, 2, 'hofner', 'Hofner Icon', '499.99'),
(9, 3, 'ludwig', 'Ludwig 5-piece Drum Set with Cymbals', '699.99'),
(10, 3, 'tama', 'Tama 5-Piece Drum Set with Cymbals', '799.99'),
(11, 1, 'test1', 'Test Product 2211', '500.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productCode` (`productCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=`` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
