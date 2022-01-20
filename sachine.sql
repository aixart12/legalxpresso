-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2022 at 01:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sachine`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwords` varchar(200) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`name`, `email`, `passwords`, `level`) VALUES
('Dhruv Kumar', 'admin2@gmail.com', '067166afa6c49a28517326dbf1d1ae40', 1),
('Dhruv Kumar', 'dk@gmail.com', '067166afa6c49a28517326dbf1d1ae40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `images`, `body`, `published`, `created_at`) VALUES
(8, 14, 23, 'newtest', '1641791648_woman-gfefdf6dc7_1920.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue tortor purus. Donec a diam magna. Vestibulum facilisis vehicula eros, nec cursus risus rhoncus eget. Donec volutpat ornare porta. Sed finibus, orci quis mattis faucibus, tortor tellus auctor augue, pretium rhoncus neque nibh sit amet arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer id purus consectetur mauris posuere ultricies sed nec ex. Nulla facilisi.&lt;/p&gt;&lt;p&gt;Donec venenatis a quam et volutpat. Aliquam nisi velit, tempor lobortis porta quis, rhoncus nec turpis. Maecenas sit amet rhoncus ante. Sed interdum non neque sed semper. Integer ligula felis, pretium consequat ligula ac, venenatis bibendum lacus. Curabitur porttitor nulla et bibendum sagittis. Sed hendrerit posuere bibendum. Quisque aliquam id nulla quis porta. Aenean feugiat lacus vitae quam luctus blandit. Nullam aliquet aliquam quam non blandit.&lt;/p&gt;&lt;p&gt;In quis enim libero. Fusce convallis ex sed rhoncus dapibus. Cras feugiat congue magna, eu aliquet arcu lacinia non. Suspendisse potenti. Fusce interdum condimentum ex, eget auctor ligula auctor sit amet. Donec vitae tellus odio. Curabitur neque enim, molestie nec ipsum eget, tempus accumsan elit. In blandit ex ex, ac imperdiet eros condimentum nec. Quisque id ipsum eget leo accumsan sagittis. Cras cursus tempor libero sit amet consectetur. Phasellus eget ipsum ultrices, placerat ligula ut, ultrices ipsum. Suspendisse pellentesque vulputate nunc eu laoreet.&lt;/p&gt;&lt;p&gt;Etiam et neque convallis, tempor velit vitae, vulputate lacus. Cras non iaculis lectus. Proin ac dolor eu risus facilisis pharetra eget eget nulla. Phasellus varius sodales elit at gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In felis lacus, venenatis et dui quis, ultrices ultrices felis. Mauris mauris nunc, gravida sed fermentum a, vestibulum quis lacus. Integer suscipit odio sed neque consequat, at iaculis nibh ultricies. In hac habitasse platea dictumst. Pellentesque justo ligula, ultricies ut nisl vel, pretium euismod lacus. Integer in placerat mi.&lt;/p&gt;', 1, '2022-01-09 22:16:55'),
(9, 14, 24, 'test2', '1641746896_snow-ge25ed3187_1920.jpg', '&lt;p&gt;la jlkja sdlf ksdkl fhjdh fhayf isadkljfh asdlfh&amp;nbsp;&lt;/p&gt;', 1, '2022-01-09 22:18:16'),
(10, 14, 25, 'test3', '1641746947_usa-gcec730d24_1920.jpg', '&lt;p&gt;sdafklj lshd jasdfkl hkajf alskh fsad fhdskfjha slfha&lt;/p&gt;', 1, '2022-01-09 22:19:07'),
(11, 14, 22, 'test4', '1641747088_lantern-g8706dd398_1920.jpg', '&lt;p&gt;This is is awasome.......&lt;/p&gt;', 1, '2022-01-09 22:21:28'),
(12, 14, 25, 'old is gold', '1641748732_old-g5497d5523_1920.jpg', '&lt;p&gt;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et au&lt;/p&gt;', 1, '2022-01-09 22:48:52'),
(13, 15, 23, 'new post form user', '1641797790_snow-ge25ed3187_1920.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue tortor purus. Donec a diam magna. Vestibulum facilisis vehicula eros, nec cursus risus rhoncus eget. Donec volutpat ornare porta. Sed finibus, orci quis mattis faucibus, tortor tellus auctor augue, pretium rhoncus neque nibh sit amet arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer id purus consectetur mauris posuere ultricies sed nec ex. Nulla facilisi.&lt;/p&gt;&lt;p&gt;Donec venenatis a quam et volutpat. Aliquam nisi velit, tempor lobortis porta quis, rhoncus nec turpis. Maecenas sit amet rhoncus ante. Sed interdum non neque sed semper. Integer ligula felis, pretium consequat ligula ac, venenatis bibendum lacus. Curabitur porttitor nulla et bibendum sagittis. Sed hendrerit posuere bibendum. Quisque aliquam id nulla quis porta. Aenean feugiat lacus vitae quam luctus blandit. Nullam aliquet aliquam quam non blandit.&lt;/p&gt;&lt;p&gt;In quis enim libero. Fusce convallis ex sed rhoncus dapibus. Cras feugiat congue magna, eu aliquet arcu lacinia non. Suspendisse potenti. Fusce interdum condimentum ex, eget auctor ligula auctor sit amet. Donec vitae tellus odio. Curabitur neque enim, molestie nec ipsum eget, tempus accumsan elit. In blandit ex ex, ac imperdiet eros condimentum nec. Quisque id ipsum eget leo accumsan sagittis. Cras cursus tempor libero sit amet consectetur. Phasellus eget ipsum ultrices, placerat ligula ut, ultrices ipsum. Suspendisse pellentesque vulputate nunc eu laoreet.&lt;/p&gt;&lt;p&gt;Etiam et neque convallis, tempor velit vitae, vulputate lacus. Cras non iaculis lectus. Proin ac dolor eu risus facilisis pharetra eget eget nulla. Phasellus varius sodales elit at gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In felis lacus, venenatis et dui quis, ultrices ultrices felis. Mauris mauris nunc, gravida sed fermentum a, vestibulum quis lacus. Integer suscipit odio sed neque consequat, at iaculis nibh ultricies. In hac habitasse platea dictumst. Pellentesque justo ligula, ultricies ut nisl vel, pretium euismod lacus. Integer in placerat mi.&lt;/p&gt;', 0, '2022-01-10 12:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(22, 'dasfads', '<p>\"werterwt</p>'),
(23, 'cool', '<p>cool is cool\"</p>'),
(24, 'law ', '<p>law is law</p>'),
(25, 'earth', '<p>this is where we live</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(14, 1, 'Dhruv', 'dhruvlol12@gmail.com', '$2y$10$rWK/AQU0YMIFUTRJ1sBa5uzaAn0R.KCKXM78io6qMmBxOZb7AUffK', '2022-01-09 13:07:10'),
(15, 0, 'Durga', 'durga@gmail.com', '$2y$10$PIcn1XdHbjEDIRlPlI5Oj.2Uy8r6MZzf0k6akWYW2EDocP6v6uOWu', '2022-01-10 06:05:55'),
(16, 0, 'sachon.udhani', 'sachin.udhani@gmail.com', '$2y$10$yQQDmRo3uwILNYINlbnPTO3cTLIUNreyYVm4pXze39unkZN/XqqPm', '2022-01-10 07:54:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
