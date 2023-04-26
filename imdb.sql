-- Database: `imdb_design`

create database imdb_design;

-- Database: `imdb_design`--

use imdb_design;

-- Table structure for`Artists` table

CREATE TABLE `Artists` (
  `id` int(10) NOT NULL,
  `artist_name` varchar(50) NOT NULL,
  `Display_picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `Artists`

INSERT INTO `Artists` (`id`, `artist_name`, `Display_picture`) VALUES
(1, 'Ajith kumar', 'Ajith kumar.jpg'),
(2, 'Vijay', 'Vijay.jpg'),
(3, 'Ashok selvan', 'Ashok selvan.jpg');

-- Table structure for table `Artist_skills`

CREATE TABLE `Artist_skills` (
  `id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `Artist_skills`

INSERT INTO `Artist_skills` (`id`, `artist_id`, `skill_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- Table structure for table `genre`

CREATE TABLE `genre` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `genre`

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Fantasy'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Romance'),
(9, 'Science fiction'),
(10, 'Thriller');

-- Table structure for `movie` table

CREATE TABLE `movie` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `movie`

INSERT INTO `movie` (`id`, `name`) VALUES
(1, 'Mankatha'),
(2, 'Thuppakki'),
(3, 'Nitham oru vaanam');

-- Table structure for table `movie_artists`

CREATE TABLE `movie_artists` (
  `id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_artists`
--

INSERT INTO `movie_artists` (`id`, `movie_id`, `artist_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- Table structure for table `movie_genre`

CREATE TABLE `movie_genre` (
  `id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `genre_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- Table structure for table `movie_medias`

CREATE TABLE `movie_medias` (
  `id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `poster_movie` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `movie_medias`

INSERT INTO `movie_medias` (`id`, `movie_id`, `poster_movie`) VALUES
(1, 1, 'Mankatha_poster'),
(2, 2, 'Thupakki_poster'),
(3, 3, 'NOV_poster');

-- Table structure for table `movie_reviews`

CREATE TABLE `movie_reviews` (
  `id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `reviews` text NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `movie_reviews`

INSERT INTO `movie_reviews` (`id`, `movie_id`, `user_id`, `reviews`, `created_datetime`) VALUES
(1, 1, 1, 'good', '2022-12-17 11:30:06'),
(2, 2, 2, 'average', '2022-12-17 11:35:06'),
(3, 3, 3, 'nice', '2022-12-17 11:40:06');

-- Table structure for table `movie_roles`

CREATE TABLE `movie_roles` (
  `id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_roles`
--

INSERT INTO `movie_roles` (`id`, `movie_id`, `artist_id`, `role_id`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 6),
(3, 3, 3, 8);

-- Table structure for table `roles`

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `roles`

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Producer'),
(2, 'Director'),
(3, 'Photography'),
(4, 'Camera Operator'),
(5, 'music director'),
(6, 'actor -Hero'),
(7, 'villain'),
(8, 'comedian');

-- Table structure for table `skills`

CREATE TABLE `skills` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `skills`

INSERT INTO `skills` (`id`, `name`) VALUES
(1, 'stunt'),
(2, 'singer'),
(3, 'goog acting'),
(4, 'dance');

-- Table structure for table `user`

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `user`

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Hari', 'hari@gmail.com', '****'),
(2, 'Siva', 'Siva@gmail.com', '****'),
(3, 'Ranjith','Ranjith@gmail.com','****');



show tables;
select * from Artists;
select * from Artist_skills;
select * from genre;
select * from movie;
select * from movie_artists;
select * from movie_genre;
select * from movie_medias;
select * from movie_reviews;
select * from movie_roles;
select * from roles;
 select * from skills;
select * from user;