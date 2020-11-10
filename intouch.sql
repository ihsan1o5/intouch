-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 11:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intouch`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add posts', 7, 'add_posts'),
(26, 'Can change posts', 7, 'change_posts'),
(27, 'Can delete posts', 7, 'delete_posts'),
(28, 'Can view posts', 7, 'view_posts'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add followers', 9, 'add_followers'),
(34, 'Can change followers', 9, 'change_followers'),
(35, 'Can delete followers', 9, 'delete_followers'),
(36, 'Can view followers', 9, 'view_followers'),
(37, 'Can add commints', 10, 'add_commints'),
(38, 'Can change commints', 10, 'change_commints'),
(39, 'Can delete commints', 10, 'delete_commints'),
(40, 'Can view commints', 10, 'view_commints'),
(41, 'Can add like', 11, 'add_like'),
(42, 'Can change like', 11, 'change_like'),
(43, 'Can delete like', 11, 'delete_like'),
(44, 'Can view like', 11, 'view_like');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$ZP11h0HUO7X6$etyw/tzd3Urb+esPGcUpNVnTsrEXROg1y3Av/CWZ4/I=', '2020-10-22 20:18:29.916913', 0, 'sajad', '', '', 'sajad@gmail.com', 0, 1, '2020-09-28 18:40:25.759540'),
(2, 'pbkdf2_sha256$216000$30KMhBJiY55d$DxwWmnM5kfRr4NrFxgbla485rWixjSIlYCoDsW376hs=', NULL, 0, 'kashif', '', '', 'kashif@gmail.com', 0, 1, '2020-09-28 18:45:16.214160'),
(3, 'pbkdf2_sha256$216000$GtQ7TC2IIy3I$CnYCirWpQj8eiAJg+OR1r1PvwWLkrurT0BTXf9s0qRs=', '2020-09-28 18:57:24.419943', 0, 'ihsan', '', '', 'ihsan@gmail.com', 0, 1, '2020-09-28 18:46:08.213266'),
(4, 'pbkdf2_sha256$216000$uVR1HUqEuMa2$JeqjFVqpvkcfMDj6Q6MgWOWP01h3VSt8yu0VGSXH0MI=', '2020-10-22 12:16:31.653161', 0, 'kalim', '', '', 'kalim@gmail.com', 0, 1, '2020-10-01 09:50:50.535956'),
(5, 'pbkdf2_sha256$216000$rHGuRRVC1VV1$SepzOyTxOmT5/sIZ58L+WdwuUV3bHt43/n1UnBOON0w=', NULL, 0, 'ajan', '', '', 'ajan@gmail.com', 0, 1, '2020-10-01 12:19:07.944210'),
(6, 'pbkdf2_sha256$216000$GyI9aQQq1moa$X1wA293kxOxvRH4W4a5IarS0vzx3APScpvodHqTMNPI=', '2020-10-01 20:00:09.833576', 0, 'Noor Zaman', '', '', 'znoor4024@gmail.com', 0, 1, '2020-10-01 19:57:37.079839'),
(7, 'pbkdf2_sha256$216000$ldwX7vMC9kJa$9oNpa9zayf0toaP+F4CYDDPRIlQ6zOJWD/IzAIPrR4s=', '2020-10-05 19:30:30.728694', 0, 'qamar', '', '', 'qamar@gmail.com', 0, 1, '2020-10-05 19:30:14.120954'),
(8, 'pbkdf2_sha256$216000$EyjV73TiFael$SIEu6RGR+C6JqwxdPBNQpg6RLRaC7HX8+OQ2tvYtkiI=', '2020-10-08 19:19:06.194187', 0, 'abas11', '', '', 'abbas.ak653@gmail.com', 0, 1, '2020-10-08 19:18:49.353593'),
(9, 'pbkdf2_sha256$216000$vu44tM3wo3f4$23esDTtCw9z0Is+LtBYKHpyWYXErXP80CjQ2mES3/K4=', '2020-10-21 16:02:46.376388', 0, 'Anees khan', '', '', 'aneeskhan019@gmail.com', 0, 1, '2020-10-21 16:02:32.167169');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'posts', 'commints'),
(9, 'posts', 'followers'),
(11, 'posts', 'like'),
(7, 'posts', 'posts'),
(8, 'posts', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-28 18:38:15.137648'),
(2, 'auth', '0001_initial', '2020-09-28 18:38:19.463047'),
(3, 'admin', '0001_initial', '2020-09-28 18:38:39.259899'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-28 18:38:43.307432'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-28 18:38:43.447343'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-28 18:38:45.966833'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-28 18:38:48.805130'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-28 18:38:50.653017'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-28 18:38:50.761949'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-28 18:38:52.509899'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-28 18:38:52.618831'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-28 18:38:52.718770'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-28 18:38:55.443090'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-28 18:39:00.168176'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-28 18:39:01.575310'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-28 18:39:01.675247'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-28 18:39:03.194310'),
(18, 'sessions', '0001_initial', '2020-09-28 18:39:03.884884'),
(19, 'posts', '0001_initial', '2020-09-29 17:42:53.847122'),
(20, 'posts', '0002_auto_20200929_1044', '2020-09-29 17:44:27.781173'),
(21, 'posts', '0003_auto_20200929_1135', '2020-09-29 18:35:43.338384'),
(22, 'posts', '0004_profile', '2020-10-01 12:03:41.257679'),
(23, 'posts', '0005_profile_username', '2020-10-01 12:15:17.871978'),
(24, 'posts', '0006_auto_20201001_0517', '2020-10-01 12:17:29.940571'),
(25, 'posts', '0007_profile_image', '2020-10-01 14:45:08.551355'),
(26, 'posts', '0008_followers', '2020-10-06 15:40:59.370714'),
(27, 'posts', '0009_commints', '2020-10-08 16:58:36.123179'),
(28, 'posts', '0010_commints_post', '2020-10-08 17:46:37.042913'),
(29, 'posts', '0011_like', '2020-10-14 07:29:41.959971'),
(30, 'posts', '0012_posts_username', '2020-10-15 07:44:28.420866');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gdd517q9ms79xj0e7ipnxf4daoi1hqkv', '.eJxVjEsOwiAUAO_C2hAeTQu4dO8ZyPugVA0kpV0Z725JutDtzGTeKuK25ri1tMRZ1FmBOv0yQn6m0oU8sNyr5lrWZSbdE33Ypq9V0utytH-DjC33rUNywMmLcUw0Jt6JB_BmZDBODDqHVoIffAhIe8g3ApmQB29psurzBfIYOFY:1kQDSB:0iX8ZKrl0-QSO_qhmLPIT7hG2AAeZWwLOObOIy_O-Lw', '2020-10-21 17:42:15.252934'),
('pl7i89j2w149bkfumigv0yhas1hdb3ue', '.eJxVjEsOwiAUAO_C2hAeTQu4dO8ZyPugVA0kpV0Z725JutDtzGTeKuK25ri1tMRZ1FmBOv0yQn6m0oU8sNyr5lrWZSbdE33Ypq9V0utytH-DjC33rUNywMmLcUw0Jt6JB_BmZDBODDqHVoIffAhIe8g3ApmQB29psurzBfIYOFY:1kVh2b:6P0E-XYXu_HsbG8ce2ZRXuq9CPP_Y3wxypfw9L4rO-k', '2020-11-05 20:18:29.956888');

-- --------------------------------------------------------

--
-- Table structure for table `posts_commints`
--

CREATE TABLE `posts_commints` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `commint` longtext NOT NULL,
  `date` date NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_commints`
--

INSERT INTO `posts_commints` (`id`, `name`, `commint`, `date`, `post_id`) VALUES
(1, 'Kalim Ajjan', 'My first comment', '2020-10-08', 2),
(2, 'Saja uddin', 'now this is the correct comment on this post', '2020-10-08', 1),
(3, 'Saja uddin', 'this is new comment one', '2020-10-08', 3),
(4, 'Saja uddin', 'wow brother hd dy', '2020-10-08', 1),
(5, 'Saja uddin', 'yaro da kho deer old yadona dy \r\n', '2020-10-08', 3),
(7, 'Saja uddin', 'Mubarak she brother', '2020-10-08', 6),
(8, 'Saja uddin', 'Happy brithday', '2020-10-08', 7),
(9, 'Saja uddin', 'jkbujnionionionikon', '2020-10-08', 2),
(10, 'Saja uddin', 'khair de veeeeee', '2020-10-15', 18);

-- --------------------------------------------------------

--
-- Table structure for table `posts_followers`
--

CREATE TABLE `posts_followers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `follower` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_followers`
--

INSERT INTO `posts_followers` (`id`, `username`, `follower`, `status`) VALUES
(1, 'sajad', 'kalim', 1),
(2, 'sajad', 'Noor Zaman', 1),
(3, 'sajad', 'Noor Zaman', 1),
(4, 'kalim', 'sajad', 1),
(5, 'sajad', 'kalim', 1),
(6, 'kalim', 'sajad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_like`
--

CREATE TABLE `posts_like` (
  `id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_like`
--

INSERT INTO `posts_like` (`id`, `likes`, `post_id`) VALUES
(1, 6, 1),
(2, 1, 2),
(5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts_posts`
--

CREATE TABLE `posts_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `tage` varchar(255) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_posts`
--

INSERT INTO `posts_posts` (`id`, `title`, `image`, `description`, `date`, `tage`, `likes`, `user_id`, `username`) VALUES
(1, 'This is my first post edited', 'img/IMG-20181005-WA0004.jpg', 'A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. ', '2020-09-29', 'first, post, edited', NULL, 1, 'sajad'),
(2, 'second post', 'img/WIN_20191102_10_20_38_Pro.jpg', 'A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. ', '2020-09-29', 'second, post', NULL, 1, 'sajad'),
(3, 'This is third post', 'img/IMG-20181005-WA0014.jpg', 'A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. ', '2020-09-28', 'third, post', NULL, 1, 'sajad'),
(6, 'graduation post', 'img/IMG-20200910-WA0036.jpg', 'this is my grduation pic \r\n', '2020-10-10', 'kalim graduation post', NULL, 4, 'kalim'),
(7, 'Happy brithday idrees', 'img/IMG-20181005-WA0146.jpg', 'Happy Happy brithday idrees', '2020-10-25', 'brithday', NULL, 6, 'Noor Zaman'),
(8, 'hi to any one', 'img/IMG-20181005-WA0003.jpg', 'frnds', '2020-10-06', 'group', NULL, 4, 'kalim'),
(10, 'Kalim posts', 'img/IMG-20181005-WA0002.jpg', 'posting description', '2020-10-15', 'kalim, posting, new, sharing', NULL, 4, 'kalim'),
(11, 'graduation post', 'img/IMG-20200910-WA0035.jpg', 'congratulation from the core of  heart', '2020-10-10', 'Graduation', NULL, 8, 'abas11'),
(12, 'Need help', 'img/IMG-20200910-WA0015.jpg', 'i have experience and java but now i want to learn python .  guide me how i start??', '2020-10-08', 'java', NULL, 1, 'sajad'),
(13, 'Need help', 'img/IMG-20200910-WA0015_fEp2Hq2.jpg', 'i have experience and java but now i want to learn python .  guide me how i start??', '2020-10-08', 'java', NULL, 1, 'sajad'),
(14, 'job', 'img/job.PNG', 'Visiting Faculty required at various departments, at university of Malakand .', '2020-10-14', 'job', NULL, 1, 'sajad'),
(16, 'hi to any one', 'img/IMG-20181005-WA0003.jpg', 'frnds', '2020-10-15', 'group', NULL, 1, 'sajad'),
(17, 'Kalim posts', 'img/IMG-20181005-WA0002.jpg', 'posting description to share now', '2020-10-15', 'kalim, posting, new, sharing, sharing', NULL, 1, 'sajad'),
(18, 'new kalim post', 'img/20190725_203133.jpg', 'A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. ', '2020-10-13', 'kalim, hi, hello', NULL, 4, 'kalim'),
(19, 'new kalim and sajad post', 'img/20190725_203133.jpg', 'A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. A quick brown fox jumps over the lazy dog. ', '2020-10-15', 'kalim, hi, hello', NULL, 1, 'sajad'),
(20, 'viva', 'img/20190722_111459.jpg', 'group viva', '2020-10-23', 'kalim and  sajad', NULL, 1, 'sajad');

-- --------------------------------------------------------

--
-- Table structure for table `posts_profile`
--

CREATE TABLE `posts_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` longtext,
  `education` longtext,
  `username` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_profile`
--

INSERT INTO `posts_profile` (`id`, `name`, `father_name`, `phone`, `gender`, `address`, `education`, `username`, `image`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'ajan', '2'),
(2, 'Saja uddin', 'Shah uddin', '1234567890', 'male', 'Dir(L)', 'BS IT (from uom chakdara)', 'sajad', 'img/20200818_021413.jpg'),
(3, 'Kalim Ajjan', 'amir alam khan', '03490606771', 'male', 'Ramura', 'BS IT (from uom chakdara Dir(L))', 'kalim', 'img/IMG-20181005-WA0009.jpg'),
(4, 'Noor zaman', 'shazaman khan', '1234567890', 'male', 'talash macho', 'BS IT (from uom chakdara Dir(L))', 'Noor Zaman', 'img/IMG-20181005-WA0055.jpg'),
(5, 'Qamar Zaman', 'Zaman', '2345678', 'male', 'my address', 'BCS', 'qamar', 'img/IMG-20181005-WA0008_VedW0I3.jpg'),
(6, 'M.Abas', 'Anwar Shah', '03419391160', 'male', 'asfg', 'education', 'abas11', 'img/IMG-20200911-WA0016.jpg'),
(7, 'Anees khan', 'Qadar khan', '00923429280019', 'male', 'Lower dir', 'BS IT (from uom chakdara)', 'Anees khan', 'img/DSC_0011.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `posts_commints`
--
ALTER TABLE `posts_commints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_commints_post_id_3e4e2bd5_fk_posts_posts_id` (`post_id`);

--
-- Indexes for table `posts_followers`
--
ALTER TABLE `posts_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_like`
--
ALTER TABLE `posts_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_like_post_id_127195b7_fk_posts_posts_id` (`post_id`);

--
-- Indexes for table `posts_posts`
--
ALTER TABLE `posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_user_id_b88d85ff_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `posts_profile`
--
ALTER TABLE `posts_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts_commints`
--
ALTER TABLE `posts_commints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts_followers`
--
ALTER TABLE `posts_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts_like`
--
ALTER TABLE `posts_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts_posts`
--
ALTER TABLE `posts_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts_profile`
--
ALTER TABLE `posts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_commints`
--
ALTER TABLE `posts_commints`
  ADD CONSTRAINT `posts_commints_post_id_3e4e2bd5_fk_posts_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts_posts` (`id`);

--
-- Constraints for table `posts_like`
--
ALTER TABLE `posts_like`
  ADD CONSTRAINT `posts_like_post_id_127195b7_fk_posts_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts_posts` (`id`);

--
-- Constraints for table `posts_posts`
--
ALTER TABLE `posts_posts`
  ADD CONSTRAINT `posts_posts_user_id_b88d85ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
