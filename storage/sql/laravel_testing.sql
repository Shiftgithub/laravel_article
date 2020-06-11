-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 06:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Learn Laravel', 'Labore porro possimus repellat repellat occaecati non quia.', 'Provident maxime qui fugit voluptate rerum minima. Architecto Provident maxime qui fugit voluptate rerum minima. Architecto .officia et similique possimus.Provident maxime qui fugit voluptate rerum minima. Architecto .officia et similique possimus..officia et similique possimus.', '2020-06-03 07:18:46', '2020-06-03 07:18:46'),
(7, 1, 'Agrhwhafrea', 'Ojtagva gi rugmikha dir milewe omarad duzat ica zi pegpinic kakusu rokuwovu ucara. Ipumura koso vujunwa fupun uvoojevad awazilur wenheg ijojiv lotoopa widofa ki gotu sogar iburodtud wicuj edifi zic sudu. Isi gol um pe fuloh aso ke maj epatesok vigcuv de zud. Lomvu culga colpuveri oboakmop ejutanva ubobu wis no nunoh', 'Biij jom ubegodgu diborco guede rogudifoc erufefe arilu fehdimliv fezaf ariiptoz wag ak ka uhdisege radges kiputi rumfuvle. Livhafwib ramhodo te aso tenog siw goete puum jugatol laetunag ivu ove sigulen ci ez ifvezum beg cotih. Zih do ri be pa banza enamozlir bufaton bijzi je ize aso dabidav ji veih guvpat vi vu. Uherigid kefuire nupeh aluzhut jinhofo ce igizawru isuamalu wupigu farve satu zev mosbavup nosehtom os dehecema. Di fe icsagaw hicusac hu ucenu fegog fefvu pej onup', '2020-06-04 07:00:23', '2020-06-04 07:00:23'),
(11, 1, 'Rul', 'Zasema pokocim mat bam efisapfub ses ir zaleh fi hevo hehhihu akcujhis japmu wum. Lib loc pimmumpi mojhi faj du emi ijeagise hu', 'Wanazze ufracam sag som tuhowvaz holo dosjana juf jukilhid gus fefvebij soraba ice cihcinfo how bikupwo. Ha ezbo vidhefi halsiwbah we do wahi toznibuj bij fedur surup dicjivatu codbe lan fu usuf pugav ifo. Pattep', '2020-06-04 07:05:11', '2020-06-04 07:05:11'),
(15, 1, 'Fn aoia', 'Cokew vod pevov ohiah tabof ome nis sartebif fuddicseg uzeowaje naj mipsauh riwib ciwutri meignis deekjes vuheguf. Becbonhem ojhewla sud secneaj zokoc gi ziji luklimrec navujdi volje gaji ze parwoj go. Wephek ugocet pasri ube tuvcod', 'Bat huowju duktopa gebowew bihi juih fabbecgu hajis cemoc lak govesu cedodipi jog regkumtal guekiduz wangab kovota. Asuhavzej hidojoj nelecoz waj kesewlec cinintoc feodoig gec muhos', '2020-06-04 07:06:50', '2020-06-04 07:06:50'),
(16, 1, 'Nta rv', 'Hobihe hozbejvo uno lasinezi ro cuknele hidesivu je ikgiev ceere re imevuh kiselo imegimuh apwupir la. Zafi cidues peuj omme uwafis belobone', 'Osamuvpi wo noriw co pafsiafo woti ki zumeciz soj da sev mud jit mecel. Lalez tu fafoj fisah jagojod ehejibka miwew wogbawvub ujbed ihhaw nugigla ifub zefiuz gi tiz ze ludcople ni. On fozjudic kotfaczif zif kaz kuclo waneulu bi pev gafvu ho vozde ci worbaso. Riopu lehoeta r', '2020-06-04 07:19:40', '2020-06-04 07:19:40'),
(24, 1, 'Laravel Education', 'About Laravel', 'Ugolur zi wijiva gail be vir ped kavpa soj idahice kopbi jommazar lum buk tuzeig fozaw biju. Fu icuji va jorrajuj owiisa je gujon apebemfaj si vorgi iflu evolij bug waoficip wozwow. Leb tagupmeg bazafsu woze lup fighu ob ijuce bo dullewa pusevlow tuurmi weman cu sunuwsu geena. Fo fefpocuv vupwa jijuso pinatvut uh jilce kugi agefefi vi kug wew. Wapu ropov fefas weplew figi ojeguse mivujlo rugos', '2020-06-07 00:48:17', '2020-06-07 00:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-06-03 13:27:42', '2020-06-03 13:27:42'),
(2, 1, 2, '2020-06-03 13:29:05', '2020-06-03 13:29:09'),
(7, 1, 5, '2020-06-03 13:29:48', '2020-06-03 13:29:48'),
(9, 7, 1, NULL, NULL),
(10, 7, 5, NULL, NULL),
(11, 7, 6, NULL, NULL),
(21, 11, 1, NULL, NULL),
(22, 11, 2, NULL, NULL),
(23, 11, 6, NULL, NULL),
(26, 15, 2, NULL, NULL),
(27, 15, 5, NULL, NULL),
(44, 24, 1, NULL, NULL),
(45, 24, 2, NULL, NULL),
(46, 24, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_03_051149_create_articles_table', 1),
(4, '2020_06_03_130129_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'laravel', '2020-06-03 13:23:34', '2020-06-03 13:24:02'),
(2, 'php', '2020-06-03 13:23:55', '2020-06-03 13:24:06'),
(5, 'education', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'personal', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Mertie Mante', 'graham.fahey@example.org', '2020-06-03 07:17:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uM1HHQBQiY', '2020-06-03 07:17:57', '2020-06-03 07:17:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_tag_article_id_tag_id_unique` (`article_id`,`tag_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
