-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 03:52 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palkimar_grocershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'zahid.hasan6@gmail.com', '01675108504', 0, '1592428801new pic sibbir.jpg', '$2y$10$f1nTN9PRrVW.zgms7KDNz.UxChNZ2NdpNKpEsOr7HacnbVv2KSkUW', 1, 'qu63imbh2suAtR7pRUimTaRT2MUPxPDj156JbsVnfWwy1NPkKgziEilM8CiS', '2018-02-28 23:27:08', '2020-08-05 07:26:39', 'Palkimart'),
(13, 'sibbir Ahmed', 'sibbir007@gmail.com', '01675108504', 19, '15956965672000.png', '$2y$10$FsEq9d6Z.7a2K6f5IYGxLe7lDcnNjDpqXHMPW1w0HXtO.VBhrAYOG', 1, 'oBL0uraVEPrRK99vsC1O0ChxwI0d9JK6a8aKhxltJZ7D3fJS0FuVq8Y81zyW', '2020-06-13 07:59:23', '2020-07-25 11:02:47', NULL),
(16, 'sibbir ahmed riad', 'sibbir008@gmail.com', '01771088100', 16, '15956975132000.png', '$2y$10$f1nTN9PRrVW.zgms7KDNz.UxChNZ2NdpNKpEsOr7HacnbVv2KSkUW', 1, 'jrqaIx30llSSUWPAK2LwKX0BCF2JNmPWBJGJ13e295OR1YzuF4HLG5EEaCJX', '2020-07-25 11:18:33', '2020-07-25 11:18:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'RTL English', '1584887310NzfWDhO8.json', '1584887310NzfWDhO8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'Order Confirmation', 13, 'rfgdfgfd', '2020-01-21 01:18:38', '2020-01-21 01:18:38', 'Dispute', 'wK9Y1592299186'),
(2, 'return', 22, 'return', '2020-06-16 03:23:22', '2020-06-16 03:23:22', 'Dispute', 'wK9Y1592299186'),
(3, 'return', 13, 'as kuyuyi uwoetw', '2020-06-17 05:41:27', '2020-06-17 05:41:27', 'Dispute', 'w5Bi1592393878');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'rfgdfgfd', 22, '2020-01-21 01:18:38', '2020-01-21 01:18:38'),
(2, 2, 'return', 22, '2020-06-16 03:23:22', '2020-06-16 03:23:22'),
(3, 2, 'reason', NULL, '2020-06-16 03:24:12', '2020-06-16 03:24:12'),
(4, 2, 'unable', 22, '2020-06-16 03:24:37', '2020-06-16 03:24:37'),
(5, 3, 'as kuyuyi uwoetw', 13, '2020-06-17 05:41:27', '2020-06-17 05:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1592505147TOP-SMALL-left-BANNER.png', 'https://www.google.com/', 'TopSmall'),
(2, '1592505581TOP-SMALL-RIGHT-BANNER.png', 'https://palkimart.com', 'TopSmall'),
(3, '1592496822big-banner-1.png', 'https://palkimart.com/', 'Large'),
(5, '1593290718bottom-baner.png', 'https://www.google.com/', 'BottomSmall'),
(6, '1593345193UBL-BANER.png', 'https://www.google.com/', 'BottomSmall'),
(7, '1593292670bottom-baner2.png', NULL, 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(10, 3, 'How to design effective arts?', '<div align="justify">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align="justify">How its Works ?</h3>\r\n                                    <p align="justify">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align="justify">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align="justify"><br></p><h3 align="justify">Top 5 reason to choose us</h3>\r\n                                    <p align="justify">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? "We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'palkimart.com', 27, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(13, 3, 'Mind Refreshing Travel', '<div align="justify">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align="justify">How its Works ?</h3>\r\n                                    <p align="justify">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align="justify">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align="justify"><br></p><h3 align="justify">Top 5 reason to choose us</h3>\r\n                                    <p align="justify">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? "We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'palkimart.com', 72, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(26, 9, 'Fighting Against Covid -19 / Corona Virus', '<div class="blog-dec2">\r\n                            <div class="sm-content">\r\n                                <p>The world is passing through a tough \r\ntime now. Coronavirus outbreak has put human life to a halt. It reminds \r\nus of the 1918 Flu or the&nbsp;<a href="https://en.wikipedia.org/wiki/Spanish_flu" target="_blank">Spanish Flu</a>&nbsp;which killed millions of people. The Covid-19 epidemic may soon become pandemic and that is of great concern for human lives.</p>\r\n\r\n<p><br></p><p>There is no cure to this disease yet and the symptoms are also too \r\ngeneral which makes it difficult to diagnose the disease quickly. In \r\nthis high crisis moment, we should fight with everything we have. It is \r\nimportant to know everything about this disease so that we can use our \r\ncommon sense and the advice of the health experts to prevent this \r\ndisease.</p>\r\n\r\n<h2><font size="6"><span style="font-weight: normal;">How did it start?</span></font></h2>\r\n\r\n<p>The&nbsp;<a href="https://www.mayoclinic.org/diseases-conditions/coronavirus/diagnosis-treatment/drc-20479976" target="_blank">Covid-19 virus</a>&nbsp;came\r\n from an animal, but the researchers are still trying to pin out which \r\nanimal. Depending on genetic analysis, the Chinese researchers suggested\r\n that it came to form Pangolins; however, the result is not confirmed \r\nyet. Those who were initially infected probably worked in the Huanan \r\nseafood wholesale market of Wuhan city in China. This virus can spread \r\nthrough coughs, breath and even when the infected person sneezes. This \r\nvirus is spreading at a faster rate than the&nbsp;<a href="https://www.cdc.gov/sars/index.html" target="_blank">SARS</a>&nbsp;and&nbsp;<a href="https://www.cdc.gov/coronavirus/mers/index.html" target="_blank">MERS</a>.</p>\r\n\r\n<h2><font size="6"><span style="font-weight: normal;">What is the present condition?</span></font></h2>\r\n\r\n<p>According to&nbsp;<a href="https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200303-sitrep-43-covid-19.pdf?sfvrsn=2c21c09c_2" target="_blank">WHO</a>,\r\n until now there have been 90,870 confirmed cases of affected people of \r\nwhich 80, 304 cases are from China. Nearly 3,000 people have died so \r\nfar. The virus has spread to 72 countries and 166 people have died \r\noutside China. There is a high possibility that the virus will spread in\r\n other countries soon as well.</p>\r\n\r\n<h2><span style="font-weight: normal;"><font size="6">Symptoms </font></span></h2>\r\n\r\n<p>The common symptoms of the infection are cough, fever, breathing \r\ndifficulties, and shortness of breath. In severe cases, you can have \r\npneumonia, kidney failure, acute respiratory syndrome or even death. The\r\n symptoms may appear 2 to 14 days after exposure to the infection. Old \r\npeople, those with a heart problem and weak immune systems are at more \r\nrisk of having the infection.</p>\r\n\r\n<h2><font size="5"><strong>Diagnosis</strong></font></h2>\r\n\r\n<p>If you find any of the above-mentioned symptoms then you should \r\nimmediately visit a doctor. The doctor will take a sample of your \r\nsaliva, throat swab or nasal swab for testing in the lab. If you have \r\nrecently come from China or have been in touch with someone having the \r\ninfection, then you must visit the doctor immediately.</p>\r\n\r\n<p>The symptoms of this virus may not be apparent for several days. One \r\nway to self-test is by taking a short breathing test every morning. Just\r\n hold your breath for 10 seconds. If you don’t find any difficulty \r\nduring the process, like coughing, shortness of breath or tightening of \r\nthe chest then the virus probably has not entered your body.</p>\r\n\r\n<h2><font size="6"><strong>Treatment</strong></font></h2>\r\n\r\n<p>No vaccine has been invented to fight this infection yet. Those who \r\nare diagnosed with this virus are given pain relievers and cough syrup. \r\nThe doctor asks to take complete rest and drink lots of fluids just like\r\n you will do when you have the normal flu. The person diagnosed with \r\nthis virus must stay in a separate room and shouldn’t come in contact \r\nwith other people. The infected person and the others surrounding him or\r\n her must wear a protective mask all the time.</p>\r\n\r\n<h2><font size="6"><strong>Prevention</strong></font></h2>\r\n\r\n<p>As there is no concrete treatment for this virus, you should do \r\neverything to prevent it. For the past few months the health experts \r\nhave been trying to find out ways to prevent the contamination of the \r\nvirus. Here are some preventative measures you can take.</p>\r\n\r\n<h4><strong>Drink water</strong></h4>\r\n\r\n<p>Drink water every 15 minutes so that your throat doesn’t remain dry. \r\nThat way the virus will get flushed out of the body or get killed by the\r\n stomach acids. So, you should stay hydrated all the time to be healthy.</p>\r\n\r\n<h4><strong>Eat vitamin C rich food</strong></h4>\r\n\r\n<p>Have lots of vitamin C containing food which includes orange, \r\nstrawberries, spinach and broccoli to name a few. This will boost your \r\nimmune system and you will be able to fight with the infection. The \r\ndoctors of China are doing <a href="https://www.dailymail.co.uk/health/article-8067189/Chinas-doctors-racing-Vitamin-C-beat-coronavirus.html">research</a>\r\n currently to find out whether vitamin C supplements can help prevent \r\nthe infection, but no research result has been published yet.</p>\r\n\r\n<h4><strong>Practice good hygiene</strong></h4>\r\n\r\n<p>You should wash your hands with soap and water for 30 seconds. You \r\nshould wash hands frequently, especially when you come from outside. \r\nInstead of soap, you can also use alcohol-based <a href="http://www.mahmudmart.com.bd/category/hand-care">sanitizers</a> containing at least 60% alcohol. You must routinely clean the surfaces with&nbsp;<a href="http://www.mahmudmart.com.bd/category/cleaning-liquidspray" target="_blank">disinfectants</a>&nbsp;that you touch often like doorknobs, table, light switches, desk, toilets, laptops, keyboards, tablets, mobile phones, etc.</p>\r\n\r\n<h4><strong>Change your lifestyle</strong></h4>\r\n\r\n<p>Stay at home if you are sick and refrain from meeting others. You \r\nshould maintain at least 1 meter between yourself and another person, \r\nespecially those who are sneezing or coughing. You should avoid shaking \r\nhands with others and going to any big social gatherings.</p>\r\n\r\n<p>If there is an outbreak in your area, refrain from going outside \r\nunless it''s necessary. If you have children at home, make sure that they\r\n stay home all the time. You can talk to the school authorities about \r\nclosing the school for some time so that there is less chance of \r\nchildren being infected. You can stock up necessary items like food, \r\nmedicine, etc. so that you don’t have to go out often.</p>\r\n\r\n<h4><strong>Protect your mouth and nose</strong></h4>\r\n\r\n<p>Cover your mouth and nose with a mask making sure that there is no \r\ngap between the mask and the face. Touch the mask with clean hands and \r\nyou should wash the mask frequently. Avoid touching your nose, eyes or \r\nmouth because throughout the day we touch many things and viruses may \r\nget into our body through nose, mouth or eyes. If you sneeze or cough \r\ncovers your face with a tissue and dispose of the tissue in the trash.</p>\r\n\r\n<p>The doctors and researchers are working to find a vaccine for the \r\nCoronavirus, but it will take time. Even if they find a vaccine, it is a\r\n long process to get in approved by the FDA and making it commercially \r\navailable for the mass population. In the meantime, we should take \r\nprecautionary measures to protect ourselves from this life-threatening \r\nvirus.</p>\r\n                            </div>\r\n                        </div>', '1593016468images.jfif', 'palkimart.com from mahmudmart.com', 96, 1, NULL, NULL, 'covid 19,corona virus', '2020-06-24 10:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology'),
(9, 'Corona Virus Covid 19', 'covid-19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(17, 'cst 1', 'ff', 0, '1568878538electronic.jpg', 0, NULL),
(18, 'cat 2', 'Bab', 0, '1568878596home.jpg', 0, NULL),
(20, 'Organic & Deshi Ponnyo', 'Organic--Deshi-Ponnyo', 1, '15921229861553073849.1552211040.glutenfree.png', 1, '15921229861553073849.1552211040.glutenfree.png'),
(37, 'Baby All in One', 'Baby-All-in-One', 1, '1592124545baby 5.PNG', 1, '1592124545baby 5.PNG'),
(38, 'Personal Protective Equipment', 'Personal-Protective-Equipmnt-PPE', 1, '15921236921552823952.household.png', 1, '15921236921552823952.household.png'),
(39, 'Dairy & Fresh Produce', 'Dairy--Fresh-Produce', 1, '1592125564vege223.PNG', 1, '1592125564vege223.PNG'),
(40, 'Meat & Fish', 'Meat--Fish', 1, '1592133427meat-fish.png', 1, '1592133427meat-fish.png'),
(41, 'Grocery & Commodities', 'Grocery--Commodities', 1, '1592135234grocery.png', 1, '1592135234grocery.png'),
(42, 'Food & Condiments', 'Food--Condiments', 1, '15921228411552972687.image-_28444_29_112x112.png', 1, '15921228411552972687.image-_28444_29_112x112.png'),
(43, 'Kitchen & Home Essentials', 'Kitchen--Home-Essentials', 1, '1592142818essntl123.png', 1, '1592142818essntl123.png'),
(44, 'Living & Personal Hygiene', 'Living--Personal-Hygiene', 1, '15921230711552977911.indexdsas_112x112.png', 1, '15921230711552977911.indexdsas_112x112.png'),
(45, 'Life Style & Fashion Accessories', 'Life-Style--Fashion-Accessories', 1, '1592138215fhhn1.png', 1, '1592138215fhhn1.png'),
(46, 'Office ,Stationery & Education', 'Office-Stationery--Education', 1, '1592143726office.png', 1, '1592143726office.png'),
(47, 'Pet Care', 'Pet-Care', 1, '15921227711552973065.pet-food_112x112.png', 1, '15921227711552973065.pet-food_112x112.png'),
(48, 'Electronics & Computer Parts', 'Electronics-Computer-parts', 1, '1592136346electronic.png', 1, '1592136346electronic.png'),
(49, 'Home Decor & Appliance', 'Home-Decor--Appliance', 1, '1592141098home-appliance.png', 1, '1592141098home-appliance.png'),
(50, 'Services,music & Entertainments', 'Services-music--Entertainments', 1, NULL, 0, NULL),
(51, 'Hand made & Gift Item', 'Hand-made-Gift-Item', 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 53, 'POULTRY', 'POULTRY', 1),
(2, 25, 'LOCAL VEGETABLE', 'LOCAL-VEGETABLE', 1),
(3, 25, 'LEAFY  GREEN', 'LEAFY--GREEN', 1),
(4, 25, 'IMPORTED VEGETABLE', 'IMPORTED-VEGETABLE', 1),
(5, 21, 'BABY TOILETRIES', 'BABY-TOILETRIES', 1),
(6, 22, 'CHEESE & BUTTER', 'CHEESE--BUTTER', 1),
(7, 22, 'NON PASTEURIZED MILK', 'NON-PASTEURIZED-MILK', 1),
(8, 22, 'PASTEURIZED MILK', 'PASTEURIZED-MILK', 1),
(9, 22, 'YOUGURT', 'YOUGURT', 1),
(10, 26, 'IMPORTED FRUIT', 'IMPORTED-FRUIT', 1),
(11, 26, 'LOCAL FRUIT', 'LOCAL-FRUIT', 1),
(14, 52, 'LOCAL FISH', 'LOCAL-FISH', 1),
(15, 52, 'SEA FISH', 'SEA-FISH', 1),
(16, 52, 'FROZEN FISH', 'FROZEN-FISH', 1),
(17, 32, 'BAKING', 'BAKING', 1),
(18, 27, 'TEA/COFFEE', 'TEA-COFFEE', 1),
(19, 27, 'DRINKING WATER', 'DRINKING-WATER', 1),
(20, 27, 'CARBONATED DRINKS', 'CARBONATED-DRINKS', 1),
(21, 27, 'INSTANT DRINKS', 'INSTANT-DRINKS', 1),
(22, 27, 'MALT DRINKS', 'MALT-DRINKS', 1),
(23, 27, 'JUICE', 'JUICE', 1),
(24, 29, 'CEREALS', 'CEREALS', 1),
(25, 28, 'MAYONNAISE', 'MAYONNAISE', 1),
(26, 28, 'SALAD DRESSING/CREAM', 'SALAD-DRESSING-CREAM', 1),
(27, 28, 'SAUCE/KETCHUP', 'SAUCE-KETCHUP', 1),
(28, 28, 'VINEGAR', 'VINEGAR', 1),
(29, 28, 'PICKLES', 'PICKLES', 1),
(30, 30, 'JAM/JELLY/HONEY', 'JAM-JELLY-HONEY', 1),
(31, 30, 'MIXED SPREAD', 'MIXED-SPREAD', 1),
(32, 35, 'ICE CREAM', 'ICE-CREAM', 1),
(33, 35, 'FROZEN FOOD', 'FROZEN-FOOD', 1),
(34, 33, 'POWDER MILK', 'POWDER-MILK', 1),
(35, 33, 'CONDENSED MILK', 'CONDENSED-MILK', 1),
(36, 33, 'UHT MILK', 'UHT-MILK', 1),
(40, 36, 'EGG', 'EGG', 1),
(41, 36, 'FLOUR', 'FLOUR', 1),
(42, 36, 'SALT', 'SALT', 1),
(43, 36, 'SUGAR', 'SUGAR', 1),
(44, 37, 'SOYABEAN OIL', 'SOYABEAN-OIL', 1),
(45, 37, 'SUNFLOWER OIL', 'SUNFLOWER-OIL', 1),
(46, 37, 'VEGETABLE OIL', 'VEGETABLE-OIL', 1),
(47, 39, 'LOOSE', 'LOOSE', 1),
(48, 39, 'PACKET', 'PACKET', 1),
(49, 38, 'MINIKAT', 'MINIKAT', 1),
(50, 38, 'NAZIRSHAIL', 'NAZIRSHAIL', 1),
(51, 38, 'CHINIGURA', 'CHINIGURA', 1),
(52, 40, 'CURRY MIX', 'CURRY-MIX', 1),
(53, 40, 'SPICES POWDER', 'SPICES-POWDER', 1),
(54, 40, 'SPICES WHOLE', 'SPICES-WHOLE', 1),
(55, 41, 'SURFACE CLEANER', 'SURFACE-CLEANER', 1),
(56, 41, 'LAUNDRY SOAP', 'LAUNDRY-SOAP', 1),
(57, 41, 'WASHING POWDER', 'WASHING-POWDER', 1),
(58, 41, 'DETERGENT', 'DETERGENT', 1),
(59, 41, 'DISHWASH', 'DISHWASH', 1),
(60, 42, 'TISSUE', 'TISSUE', 1),
(61, 42, 'AIR FRESHNER', 'AIR-FRESHNER', 1),
(62, 42, 'KITCHEN & COOKING', 'KITCHEN-COOKING', 1),
(63, 42, 'DISPOSABLE/ONE TIME', 'DISPOSABLE-ONE-TIME', 1),
(64, 42, 'HOME DECOR', 'HOME-DECOR', 1),
(65, 52, 'DRY FISH', 'DRY-FISH', 1),
(66, 53, 'BEEF', 'BEEF', 1),
(67, 53, 'MUTTON', 'MUTTON', 1),
(68, 73, 'BELT SYSTEM', 'BELT-SYSTEM', 1),
(69, 21, 'BABY DIAPER', 'BABY-DIAPER', 1),
(70, 19, 'INFANT FORMULA', 'INFANT-FORMULA', 1),
(71, 19, 'CERELAC', 'CERELAC', 1),
(72, 47, 'BEAUTY SOAP', 'BEAUTY-SOAP', 1),
(73, 47, 'ANTICEPTIC SOAP', 'ANTICEPTIC-SOAP', 1),
(74, 47, 'BATH SHOWER', 'BATH-SHOWER', 1),
(75, 47, 'BODY LOTION', 'BODY-LOTION', 1),
(76, 44, 'FACE WASH', 'FACE-WASH', 1),
(77, 44, 'FACE CREAM', 'FACE-CREAM', 1),
(78, 45, 'SHAMPOO', 'SHAMPOO', 1),
(79, 45, 'HAIR OIL', 'HAIR-OIL', 1),
(80, 48, 'BODY SPRAY', 'BODY-SPRAY', 1),
(81, 38, 'BASHMOTI', 'BASHMOTI', 1),
(82, 36, 'SUJI', 'SUJI', 1),
(83, 42, 'CANDLES & MATCHES', 'CANDLES-MATCHES', 1),
(84, 41, 'TOILET CLEANER', 'TOILET-CLEANER', 1),
(85, 42, 'INSECT KILLER', 'INSECT-KILLER', 1),
(86, 22, 'GHEE', 'GHEE', 1),
(87, 28, 'SYRUP', 'SYRUP', 1),
(88, 28, 'FLEVER/COLOR', 'FLEVER-COLOR', 1),
(89, 31, 'INSTANT SOUP', 'INSTANT-SOUP', 1),
(90, 31, 'NOODLES/PASTA', 'NOODLES-PASTA', 1),
(91, 31, 'VERMICELLI/LASSA', 'VERMICELLI-LASSA', 1),
(92, 80, 'CHIPS & PRETZELS', 'CHIPS-PRETZELS', 1),
(93, 80, 'NUTS & POPCORN', 'NUTS-POPCORN', 1),
(94, 80, 'BISCUITS & CHANACHUR', 'BISCUITS-CHANCHUR', 1),
(95, 80, 'CANDY & CHOCOLATE', 'CANDY-CHOCOLATE', 1),
(96, 80, 'LOCAL SNACKS', 'LOCAL-SNACKS', 1),
(97, 81, 'FOOD SUPPLIMENTS', 'FOOD-SUPPLIMENTS', 1),
(98, 81, 'DIABETIC FOOD', 'DIABETIC-FOOD', 1),
(99, 46, 'TOOTH PASTE', 'TOOTH-PASTE', 1),
(100, 46, 'TOOTH BRUSH', 'TOOTH-BRUSH', 1),
(101, 49, 'SHAVING GEL', 'SHAVING-GEL', 1),
(102, 49, 'SHAVING FOAM', 'SHAVING-FOAM', 1),
(103, 41, 'HAND WASH', 'HAND-WASH', 1),
(104, 82, 'CANNED', 'CANNED', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 36, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 2173, 0, NULL),
(4, 'browser', 'Linux', 883, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 3107, 0, NULL),
(6, 'browser', 'Windows 7', 436, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 568, 0, NULL),
(9, 'referral', 'www.google.com', 65, 0, NULL),
(10, 'browser', 'Android', 1203, 0, NULL),
(11, 'browser', 'Mac OS X', 639, 0, NULL),
(12, 'referral', 'l.facebook.com', 55, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 26, 0, NULL),
(15, 'browser', 'Windows 8', 4, 0, NULL),
(16, 'browser', 'iPad', 6, 0, NULL),
(17, 'browser', 'Ubuntu', 51, 0, NULL),
(18, 'browser', 'iPhone', 63, 0, NULL),
(19, 'referral', 'com.google.android.googlequicksearchbox', 113, 0, NULL),
(20, 'referral', 'm.facebook.com', 224, 0, NULL),
(21, 'referral', 'baidu.com', 28, 0, NULL),
(22, 'referral', 'mail.google.com', 3, 0, NULL),
(23, 'referral', '182.48.89.34', 7, 0, NULL),
(24, 'referral', 'webcache.googleusercontent.com', 3, 0, NULL),
(25, 'referral', 'www.palkimart.com', 1, 0, NULL),
(26, 'referral', NULL, 1, 0, NULL),
(27, 'browser', 'Windows Vista', 2, 0, NULL),
(28, 'referral', 'www.bing.com', 1, 0, NULL),
(29, 'referral', 'app.crisp.chat', 1, 0, NULL),
(30, 'referral', 'googleweblight.com', 2, 0, NULL),
(31, 'referral', 'lm.facebook.com', 5, 0, NULL),
(32, 'referral', 'instagram.com', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(18, 'BD', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(5, 'palkimart', 0, 2, '1', 0, 1, '2020-06-30', '2020-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'BDT', '৳', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To PALKIMART.COM', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us required documents.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(6, 'She jointure goodness interest debat', '<div style="text-align: center;"><div style="text-align: center;"><br></div></div><div style="text-align: center;"><span style="color: rgb(70, 85, 65); font-family: " open="" sans",="" sans-serif;="" font-size:="" 16px;"="">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(1, 18, '1592319035rui1.png'),
(2, 19, '1592319157rui1.png'),
(3, 20, '1592319440rui1.png'),
(4, 21, '159232105095602463_1440703589434504_8713859031443177472_n.jpg'),
(5, 22, '1592321233Chingri-2.png'),
(6, 23, '1592321296Chingri-2.png'),
(7, 24, '1592321335Chingri-2.png'),
(8, 25, '1592321396Chingri-2.png'),
(9, 26, '1592321463Chingri-2.png'),
(10, 27, '1592321506Chingri-2.png'),
(11, 28, '1592321550Chingri-2.png'),
(12, 29, '1592321593Chingri-2.png'),
(13, 30, '1592321714Chingri-2.png'),
(14, 31, '1592321763Chingri-2.png'),
(15, 51, '159316767781742608_2492098117731472_2681320882864914432_n.png'),
(16, 52, '1593168486H6gGk7SI.jpg'),
(17, 57, '159317500173375616_2424234254517859_728788931461513216_n.jpg'),
(18, 58, '159317508573375616_2424234254517859_728788931461513216_n.jpg'),
(19, 59, '159317519773375616_2424234254517859_728788931461513216_n.jpg'),
(20, 60, '159317529273375616_2424234254517859_728788931461513216_n.jpg'),
(21, 61, '159317537773375616_2424234254517859_728788931461513216_n.jpg'),
(22, 62, '159317544873375616_2424234254517859_728788931461513216_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_text` text COLLATE utf8mb4_unicode_ci,
  `paypal_text` text COLLATE utf8mb4_unicode_ci,
  `stripe_text` text COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_text` text COLLATE utf8mb4_unicode_ci,
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_title` text COLLATE utf8mb4_unicode_ci,
  `popup_text` text COLLATE utf8mb4_unicode_ci,
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT '0',
  `paypal_business` text COLLATE utf8mb4_unicode_ci,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci,
  `paytm_website` text COLLATE utf8mb4_unicode_ci,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci,
  `is_paytm` int(11) NOT NULL DEFAULT '1',
  `paytm_text` text COLLATE utf8mb4_unicode_ci,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT '0',
  `molly_key` text COLLATE utf8mb4_unicode_ci,
  `molly_text` text COLLATE utf8mb4_unicode_ci,
  `is_razorpay` int(11) NOT NULL DEFAULT '1',
  `razorpay_key` text COLLATE utf8mb4_unicode_ci,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`) VALUES
(1, '1595189069Palkimart_new-logo.png', '1592124722shop.png', 'Palkimart.com: Online Store', 'sendmail', '0123 456789', 'Palkimart.Com is an Online Store where engagement of customers \r\nfor buying their different daily needs are selected for own shopping and platform for reffering this store to relatives or friends having a affiliate tasks with Earning \r\nSystems also customer can use this platform for \r\ntransforming their local business to E-Business.', 'COPYRIGHT © 2020. All Rights Reserved By <b><a href="http://geniusocean.com/">p</a>alkimart.com </b>', '#ff9933', '1564224328loading3.gif', '1564224329loading3.gif', 0, '<script type="text/javascript">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];\r\ns1.async=true;\r\ns1.src=''https://embed.tawk.to/5bc2019c61d0b77092512d03/default'';\r\ns1.charset=''UTF-8'';\r\ns1.setAttribute(''crossorigin'',''*'');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id="disqus_thread">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page''s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page''s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON''T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(''script'');\r\n    s.src = ''https://junnun.disqus.com/embed.js'';\r\n    s.setAttribute(''data-timestamp'', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 0, 1, 0, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 50, 10, 0, 5, 'mail.palkimart.com', '465', 'admin@palkimart.com', 'admin@789', 'admin@palkimart.com', 'MAIL-PALKIMART.COM', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We''ll email you an order confirmation with details and tracking info.', 1, 1, '1592475922site-image-2.png', 'Already Added To Cart', 0, 0, 1, 1, 0, 1, 'Pay with cash at the time of delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#ffff99', 1, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 0, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 3, 0, '1566878455404.png', 1, 'Subscriptions', 'Please subscribed by your mail to take offer, Promotions & Bonus.', '1593176952pop-up-logo.png', '1596379632Palkimart_new-logo.png', '1567655174profile.jpg', '#444444', 1, 1, 0, 'shaon143-facilitator-1@gmail.com', '1595189418Palkimart_new-logo-png.png', 'admin@palkimart.com', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'live', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 1, 0, '<div style="text-align: center;"><font size="6"><br></font></div><div style="text-align: center;"><font size="6"><br></font></div><div style="text-align: center;"><font size="6">Welcome To</font></div><div style="text-align: center;"><font size="6"><u><b>PALKIMART.COM</b></u><br></font></div><div style="text-align: center;"><font size="6"><br></font></div><div style="text-align: center;"><font size="6">We are Sorry.......!!<br></font></div><div style="text-align: center;"><b><font size="6">UNDER MAINTENANCE</font></b></div><div style="text-align: center;"><b><font size="6"><br></font></b></div><div style="text-align: center;"><font size="6"><u>WE WILL BE BACK SOON</u></font></div><div style="text-align: center;"><font size="6"><u><br></u></font></div><div style="text-align: center;"><p><font size="6"><font size="3">For if any...</font></font></p><p><font size="6"><b>admin@palkimart.com</b></font><b><font size="6"><br></font></b></p><p><font size="3"><b>or</b></font></p><p><b><font size="6">01771 088 100<br></font></b></p></div><div style="text-align: center;"><font size="6"><br></font></div>');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1579926860LzpDa1Y7.json'),
(2, 0, 'RTL English', '1579927527QjLMUGyj.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 181, NULL, 1, '2020-06-08 05:01:33', '2020-06-08 05:06:43'),
(13, NULL, NULL, NULL, 2, NULL, 1, '2020-06-16 03:19:46', '2020-06-16 03:20:17'),
(14, NULL, NULL, NULL, NULL, 2, 1, '2020-06-16 03:23:22', '2020-06-16 03:23:57'),
(15, NULL, NULL, NULL, NULL, 2, 1, '2020-06-16 03:24:37', '2020-06-16 03:24:43'),
(19, NULL, NULL, NULL, NULL, 3, 1, '2020-06-17 05:41:27', '2020-06-17 05:44:04'),
(20, NULL, 107, NULL, NULL, NULL, 1, '2020-07-16 13:39:15', '2020-07-17 00:27:54'),
(21, NULL, 108, NULL, NULL, NULL, 1, '2020-07-17 07:38:25', '2020-07-17 08:49:18'),
(22, 19, 102, NULL, NULL, NULL, 1, '2020-07-20 04:40:02', '2020-07-20 04:41:31'),
(23, NULL, 109, NULL, NULL, NULL, 1, '2020-07-24 10:50:22', '2020-07-24 13:11:34'),
(24, 20, NULL, NULL, NULL, NULL, 1, '2020-07-28 01:29:02', '2020-07-28 05:11:47'),
(25, 21, NULL, NULL, NULL, NULL, 1, '2020-07-28 01:31:07', '2020-07-28 05:11:47'),
(26, 22, NULL, NULL, NULL, NULL, 1, '2020-07-28 01:36:35', '2020-07-28 05:11:47'),
(27, 23, NULL, NULL, NULL, NULL, 1, '2020-07-28 05:10:28', '2020-07-28 05:11:47'),
(28, NULL, 110, NULL, NULL, NULL, 1, '2020-07-30 00:49:30', '2020-07-31 01:41:17'),
(29, 24, NULL, NULL, NULL, NULL, 1, '2020-07-31 02:14:10', '2020-07-31 02:14:35'),
(30, NULL, NULL, NULL, 2, NULL, 1, '2020-07-31 02:14:10', '2020-07-31 02:14:33'),
(31, 26, NULL, NULL, NULL, NULL, 0, '2020-08-05 01:39:44', '2020-08-05 01:39:44'),
(32, 27, NULL, NULL, NULL, NULL, 0, '2020-08-05 01:43:51', '2020-08-05 01:43:51'),
(33, 28, NULL, NULL, NULL, NULL, 0, '2020-08-05 01:48:18', '2020-08-05 01:48:18'),
(34, 29, NULL, NULL, NULL, NULL, 0, '2020-08-05 01:53:03', '2020-08-05 01:53:03'),
(35, 30, NULL, NULL, NULL, NULL, 0, '2020-08-05 01:56:19', '2020-08-05 01:56:19'),
(36, 31, NULL, NULL, NULL, NULL, 0, '2020-08-05 02:02:20', '2020-08-05 02:02:20'),
(37, 32, NULL, NULL, NULL, NULL, 0, '2020-08-05 02:09:15', '2020-08-05 02:09:15'),
(38, 33, NULL, NULL, NULL, NULL, 0, '2020-08-05 02:10:10', '2020-08-05 02:10:10'),
(39, 34, NULL, NULL, NULL, NULL, 0, '2020-08-05 02:19:36', '2020-08-05 02:19:36'),
(40, 35, NULL, NULL, NULL, NULL, 0, '2020-08-05 02:23:25', '2020-08-05 02:23:25'),
(41, 36, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:05:38', '2020-08-05 03:05:38'),
(42, 37, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:14:08', '2020-08-05 03:14:08'),
(43, 38, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:16:33', '2020-08-05 03:16:33'),
(44, 39, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:18:57', '2020-08-05 03:18:57'),
(45, 40, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:21:20', '2020-08-05 03:21:20'),
(46, 41, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:26:45', '2020-08-05 03:26:45'),
(47, 42, NULL, NULL, NULL, NULL, 0, '2020-08-05 03:30:55', '2020-08-05 03:30:55'),
(48, 43, NULL, NULL, NULL, NULL, 0, '2020-08-05 05:40:33', '2020-08-05 05:40:33'),
(49, 44, NULL, NULL, NULL, NULL, 0, '2020-08-05 05:42:15', '2020-08-05 05:42:15'),
(50, 45, NULL, NULL, NULL, NULL, 0, '2020-08-05 06:08:20', '2020-08-05 06:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(1, 22, 'BZh91AY&SY$-Îè\0Î_@\0Pÿø/ïÿ¿ÿÿúPÛXØ\rs\0	Â``%\0D(Ð\r\0\0h§©¦QJ¦ÔÊzP\0f Ñ¡Ì`&F\0F&&	\Zbi\Z\0PzHÀy É§©¦$f$mµ5µ2o¼ªÞ$ðJ¦ÇçÖ¹ÍÌåH£ªoCZXqâû3HÊl\rJÂ6¼êd|I²¥ ´T¶ÛlþÒ©SW áÁ³höXn;ÇD¥¡è¬Ù#¨hii$fg~Ù;}òx~ºdÖjM#A	¿¾	iÒ°MÎAxÃô\Z1X\Zhbºûï¢« ÓþP*B ,âÔºV\0ÄªlMÒ²«@Æ,8ÚÁ©"³%|\n¢¤\\h­¼`U	wy"¬ñã¨fî ETHwxQAÑÞ$Sa aL1&\n72$£\rF¤[lUÜÛZD¦SdT"£;¸EbdJ°PHÀ1R¤«­CU\\à¾+ä6°A0(ú\Z·CCjTMA#\rÎ[»Õe,K	fl-HÚ@ØõÞzyÂBÅY°=ãªaLÁTér¼p;ÕiF®h&¸cQMTÖÌÃ¦)X:Y,aGÑVÒà¼ç8£MRÜÎc	¬K\\\Z0åñ!Î¹Ïê<§å<&ÓÈÃ''ólf~®»¼äq?.WmÉzßF×uÆú¸p#Ðà`o Þ2ãö/ðçÐKÔ°ðgj*ÕF\r¥k¢ãp©î7OÚ3ÄÌ''j(;<y×â|Í&FµB7Õí©E%aêg´\r%\rë¯ë=$=Úh#sIc#I~A¬yXäGzÀÅCbâA°/¼6Øèi5Óñ3	Yfb`3ÿûFNýÐîwoçK°±A¢ÅÝâºåyè=fã·1	Áè!,F}D"ãð¬x>K\Z6×HMÜ¸!¯Q''Ö×£.&ÛÍªJ;u\rS\0æom.Zw<âtMRZ$áê2¨Ä5:«ÂvöXbÛyCiÚ`AÂ¡$ª5VäPgÀhNh^GC3gûk§yÐ6çÔuòÂèì´@ø6¬I.g8ÈÂqÃ@¤¦R bøPI´ab)¸ü\rä¥nëëÑ\ZeÕÎÏ<V\ZeçxÖ}Ù¤äo,¡ÍÄu\r6Ê~FXÕ*5 9£YÑlÙST!¯½2Fq©;æò6D´ws·[æøó ýA(«|Õ¥Ë*È«*[ m!CIBmI°Èé£"»Rè*®âÖ4%Ü5$â`D"Mpd\Zù8\n·yÔgÜ_zi¨ÈÏ©Bõx\\²5Å*#&µd¾/Ö3¿Yk0Èªª¢õÅ''ÁñÜ`HQ{Ú È¡V¢õÍãißÎCF1--LRâÅÜN$	sº\0', 'Paypal', 'shipto', 'Azampur', '1', 320, NULL, NULL, 'YBqY1591545833', 'Pending', 'anikakhatun@palkimart.com', 'anika ahmed', 'Bangladesh', '01957646507', 'mirpur 06', 'dhaka', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-06-07 10:03:53', '2020-06-07 10:03:53', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(2, 22, 'BZh91AY&SYÒ\0ßP\0Xwø?ËôD¿ÿÿú`	> "$¢R	T¡s	L\0L&\0\0Lhæ\00M0\0\04Ð1Ì&0a0`\02i cL`Âa4À\0dÓ@Â$4É2L&OMSe<IêdÐbhÐÂ24\nBMÐÐ§©å2zi Óej]T''àþæ²Ïú³ñ}]GÞ»ð\\ù¿''²Ðni"üJ+5T\\ü°}Åg[wmsÚê©iÚÆËsie×,äÑhº.¦Î.j74ÃVNMYYe³©vnÿJ82ÊÌLº;Z¯.ês7ehÝÖjÕÅôt7Ro{Ú§99YªîJ^îùnñ$õ#Ð÷¼18½Î¥>oÔîRÖÊÎ''ÉwÈýÏ''îzçYÚø;í~$(ã"'')`¥CÈl)nÛJÁsayGY´ÓgNò(BAK(QÈÉ,º$%E£ÛN¾tW[­MU>×Í£ÀÑ&Ju(ä¤Ý¢ÒhKBÒqZÊ°äÝcG<ÔË*E)ë¦í2K(eFBR¥8©,YÚ¾nÇcÂS¢­ËUãe;;\\Û2Ñ«°ÅavPÃ®»wEe¤»G{£+ÍT/K²Ù£CfTS\r]ÜÝÄÃ2!bÆF¶:4ÐÓ¹»väÙ§NeÓiyhiiLpË¬Õ³)K,Ù¢©£e¦ÆÉSUÚÓ-\Z	dÃVXJK.ºãµhÐl(atÃQcIÒY5L²ÄÝ4MÕPù/7Q!EQå\r+tKØ)!ÑK´a!\Z\nÅ!jT¤`° ÁR®¼BêB$ R¥:N¬èçi!Á$¯ÚRR®ÂæÌ*´`ÑÑætí]Ú¥×j×VNJÅªÓG8©¾¶7]ÍÙXÊ47jaL-eLª-U7k­0Õe¥Ø[·nÉNlàËM,7Y6ê¸D,p=§¬øúCs¾f¸õ¤N¦­ßlâøèÙk9JaÂscå)ò=mQÁ5|v#E&¥(j³Éæë]OÍã<ÞÀð!ê}%Íæ\0³Ôþ±òhý8Ù£{çOò5<\rC¡yÃk\rAÆw$èñSÄÕïSÒtéhjË­wTÔýB²y·s¶quGüi9hã!ç3cÄ@ BÇ¨ñ®ÒdùÏ3Y5..ÚaeL¤ô¾ö§{ØT¹NÓó,Ê|%eæ²©«½Á­ÚµSScÓ*Q6)J\\5MgòÇsÊÇ!:fÇÚ]«96´.|ÍcÞ|HæÍÌyhCì0ñ¥Í«f^.ùýßIQ³±êh{TLêxG2§s±(à]§a\roAí{Îð¡Ãã7ú§qøÅJ©Úu½HB(Pg¼¥"§÷=,ÏìhõÁSÁäÖxÏtå7^QîuLFnNÆì·GQiõ¦DÃÿ8''Ø³èòN(îzg¯±Ú¥*OªÅ¥I0õ=ÚæyK)5X¹î&%ÚÔ&Ä´ÙYyw$Þ]à¦i Û´âíìk¦ÃÜ\\³äl»dÁ08Ì¥RúÍÿ;æ:ÄäïGTTô620o=¯Îaæ\Z©*j{´6å\n;Q¹Þá\Zw?Cx?×|³Ì¤¥(Ìù=fæêjL(zÝbT5ã£#æyË¥!ÓÍ\nK!\0£K4Øh;&OCM0ä©´ô8¾&¯5<ö>àù%J!R«ä©@ÁD¡A	Z °b¤wØõGAB`åx8¨Ò\nhÉl&mÚ(zÒBÀÂ\ZÃ{´Ì± ë33H©gjS&g	ÂîåOSÔh3.àp§T§5MáÉIúÒ}hjèQûÝ¯)»õ¤ð	³dðK¾²ÙýWÞw¦àâ)â©s¥å&Íµ>£ï;9ÌQíí{!\n Êü]ÉáBBzWH', 'Paypal', 'shipto', 'Azampur', '2', 161, NULL, NULL, 'QRUN1591549076', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-06-07 10:57:56', '2020-06-07 10:57:56', NULL, NULL, '৳', 86.63, 0, 0, 0, 0, NULL, 0, 0),
(3, 22, 'BZh91AY&SY7¡\0\n_@\0Pø+ö¿ÿÿúPûÝ\0@$#\0\0\0\0\0\0\0\0	Bb\nA Ð\0\0\0@*)&4mLQèAÐ\r©Ä\0\0\0\0\0\0\0\0H&dÄÔÚIéMh2\nu&øí>Cus''V°Ù³&\nµÜvtàdþæÊÀTÙQÑ²{©rBa\nÛEÝ/×ÏFQq2©ô*lÚm+¦ã*n\nÐ8 \0î6;CÜVáê ê@xU&$$//(EGäÒ#!êI-Lbi¡©kÆ(Tvf§Üy\nÂÁ¸JÚ5PjR¦¼zö;Á ò:ý¶&óyÓ°ªÐ\ZÚ\rX0@Ø5h¼ÒdÂFÈP"AeÒfi,ÁJ°6Y5À|@`*"Í½hÌ©¡qQ¡2õµCQ\ZµÍê3$hP¡.IK$5$ª¼%a­8[E¨X²D¥]Öb¡èÈõEF¥(5l\nDz:ÁDªL¹âv®0ä^¥ðå )ã_YÁPc$§.\r\r0dµMa%%g8Á0´¡E¤Óyw;¡!aU`$|3u Ò+B´;-&úër)C|Íï­É ¼3i\Z¤´l©&J©whÅ¬Å¯{ÖL`u,åîõLfðÅ	Ópã2F\näh"/I~ãuì<,KÂ¿±«U6¯æn§ô)Ø|dU\nºPÌvø`Ê1Ô:PÕ\ræGSopJh>+Q¯	`¡ïÙð*#¹´¹iA£çS0;­0hl]{m¦MÅ¶l	Ul0h3yõ  !øaÝß*_Xä2ÅÞ½Öô7\rJ3QI284u$º.uÁ£ÃéS4\rõØ§>''ËÖ5&¸÷Èq4vÜA¡ï¡B§NpÔ9,úÇwSÈyÏñÆR ëð"zL\rôqb{Å¾MçSB¨Ö¸½nõp	ÜøLk3J»Cíñ àºzñ-E$X	kmBÕDI(ÊæO*ªÑP¡	So%d±Pª^HàX[ÆfWgAg5CL½CCÃÌ«\Zf´kîØðÚr*Aþès# Ól©´ÎµJlôht]£¶§i¾Ã¶PÏ[K#-\ndr2Jç7Ä;öyt·èÿ 2¯|a f$bS4«J8	\Zri7\r~=_Ã¤Ð|Â;o°Ð\ZXÜBd¡²tí!ãÑÀX´<MÚÎ0FMÊ2Æ¦³Î*PÑhYz*P,Zõ¥õa}Ã=þMv+BTTQuÉÄ¨ùp þÐMñh&\r^ì2ÓZ= //248ÃÿrE8P7¡', 'Cash On Delivery', 'pickup', 'Kazipara', '1', 0.31, NULL, NULL, '75Ih1591614093', 'Pending', 'rifat@gmail.com', 'sibbir ahmed riad', 'Bangladesh', '01957646507', 'asvag', 'dhaka', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fsbfsbsfb', NULL, NULL, 'pending', '2020-06-08 05:01:33', '2020-06-08 05:01:33', 'sibbir', '0.003116703220593328', '৳', 86.63, 0, 0, 0, 0, NULL, 0, 0),
(4, 22, 'BZh91AY&SY~°9\0ßP\0Xø;Küä¿ÿÿú`=ð\0	rh\09¦&4À#\0\0\0Àj\ZTÿIè¢`\0\0\0\0\0\0i0#À\0\0Â0jRCM4\r \0\0 9¦&4À#\0\0\0ÀH&4&&èjjyO$FÄOÕ?RÀÉ	Ã ï=ÊàA@xCçðzebå\n¿aìúwY ýHgÿb*GÞ°¤{*K¢~ÌÁ7©²Õ"ùm¥+XÇáØdU8$ku´kÄòÙpo ÿüøsÛ\\ô23é+Ò$Ú¬$é?s¤ì?sqì9Æ1n\rãÌu©SØv¡{Ò¡àSÄb\\@X·KNrpNc©Q *	$\rC@ØH¦4ÐÅ­2Ò¬±	Q<%T¡P2 8Å3ÁAa0°\r±7[J°X¨a4Q=©Tp	´\rQöÆ¥h ch5åEÅðj^ÌÞfm[^ôAR·]åN&\r	ÊgS7¸î<J7¯IÆc7@A¡B¹$.XÐQ4Ñ»;d2ËÙ<E/px®$Á¥ËÍÝ«pª¢KÚ¢&d)kÖ¢¶@Â©p¥IWVµ*ªú×Ù!s¯¸tQ$¡¤8P4\0?£(bÕÁId£&)E^bÐ#HÀ²\n`)"È\n7K®Ã~ØHXô\Z\r³¬éR´7ZUaðá@Íðx °`XÄ\rÒfJ`þàÐ\Z°\rj%£\rsDÌ=á«8"6%A±148.s¨û|OÌâzKTù<ß¼Ì<.Z0Qm¨`ò(~þC÷±¢Ø³ø³«J­1×â Ä&}¢r"[mdJ/YáÚ~ËÂ¯õãRNÀÐu60âÏàÇBÔkýhÅ¡SáµÑâ@Nã#a¼ÏPØB?j<ÌÁ¤CbÐ>g0gsØï7KnÝÈ,Ï©p#Ãÿ¿XÉåèw~~Êad¬PeKl2jEJçú$gòm8\Zfbdp^u!,õ]}ÏÈ`ÍãÍöT×6Û§ úþ¸åÚwÊ§a³¤ÑÛÅvIB§xNFA°ü>¯©íí«Äæ¼%ÝÔ&"x\rî=^ÔÔ9óBITkLï[¢>J\Z< Ü÷9.Á±zíï8Eçó-×ÜzwY¢C¼T&àK[d.&^¨''bÈªªÉP¡	Sp%Ta@¢^¡Hà]¢\\:Ã¡\Z!¦^¡ÛäOrÅò0|øFíAT Úyò9MOq''À×K*4¶R03­3Ðàq¦øC÷03XR¤#<ÆB°i\\¼QEÚ¢Ñ«½+aÀï¡â¡(ZJF1d$X@P`T8\ZzòW]Bªõ±°P."JÝg£¥ÀªÈë6bneg`ôÚ c .hi<¢¥ÂTÂÀdµJ*P2Fx/6÷øõg©Ú ¨¨¢ë#ÐSÌ|¹õ9è¼ÔAÓB³¢þÃ)ì«®@ÃnAIH5?ÅÜN$£ì@', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 120, NULL, NULL, 'O2nV1592054368', 'Completed', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2020-06-13 07:19:28', '2020-06-13 07:49:49', NULL, NULL, '৳', 86.63, 0, 0, 0, 0, NULL, 0, 0),
(5, 22, 'BZh91AY&SY\rë\0\rß@\0Pø?oü¿ïÿúPÝh,»¦¡]\0 ©5ObI§¨4=@3Qé\0\0d"@\0\Z\0\0\0\0\nTÕ\0ÈÓ@h?%\0\0\0Ð\0æ0`\0\00\0"$Ä4ÂhÄ\r\0i´''¤ÀSp)ßÆòìõGÀSÇÓCîyyIFK^áöÎAî!&}óe`28Wd\rP2L+VÌw7[ü Âe,vÜÙÔ\\¦¢M§;,mí µÊð)Ú¸0çÝy§p:a±¼ØÔCe61G~2W``´EÌQ¥i¡¥IÎh±zMHR5bÄ\\É©z<	X¹\n"+JÈ©Èô\Z°D17Ü²;"åÉb22£RF\r`Õ¢IÉ¡Èå`ØA.MWBJkaIÆ¦,X*Ab	\rB¦De£7Í,(dqU¡2÷¦CCB;MC@ÔfgW3®FjA\n eÉ ©rÄ	!(*1*J2Ë$´ÙpPSRLP\\©z(Uy¨fÀ Åè 1£kPÊª¯^IÞ¾	´\rÚ	ûg\n³Î:3a¸¢xæ±-áË) Î!-(QqÞÝÆý°´ZÛH1J¡Z­%t3³B6$8Ò&¤Þ´{D ^ÅSo{ÚFAg»ÑÅì³%ëÈ`zõ\ZLLD3\ZMf''	BAQQ¥&\0ò`Z^ZvË`³6L¢ø	¬è¤g±[ñg4UªJ×âÌß?àÏØøI ÷)Æ`b]æ`^LÜsÅÎjvª¹Â¡(6íiCÐkÈ÷JÎÊàÀØXÐØad,B>69##ÂÉv\r\rh^áº©Ô[fÈÁ0Ê­Lë<È~#''¯;»öwRùÁR[FÝÅk+3Ôufx5	Áþ~A\\é\\dEÄKxbE7è*±õCFs/°j»¹wvÚ@ü(T MË |>¡àì»ãR¤SuÒ!0Ùjô"OûÅw\rvPì9ýA$ª5³\\Vè Ï¡''\0è]Ë ØÎÎEê·ÑÀ§>!-Éµ°¨Z¨''EÀÚªÂ¡B	&/2*`rÍÄ­K\n¥à)+pÃÌÕngkØè!ANÿ2{Ö\ZfXÖ~î¸éÄÜ2©A´â!ùè4Û*Aë5Ò©Q­Í,ñÛCy×MÐ¦VÉâNÒÁÀ¸-_;x¾oÒõ1@Exã	fbR%0¥ZHPÒ`ÐRo4:kÆ^´¹«kBô4(S!DP¡½=òln­äï7i71Ò57(È\Z\ZO©Cu¨ù"¥ÈÑ¯J_óí÷ô1¦ÃÅrJ.¹"8ú»°Á @JÀíhC\rZè2£ÑÍÌ×] ¡È,âîH§\n³Ý`', 'Bkash', 'shipto', 'Kazipara', '1', 3, '567891012', NULL, 'a7YQ1592248438', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '260', 'pending', '2020-06-15 13:13:58', '2020-06-15 13:13:58', NULL, NULL, '৳', 86.63, 0, 0, 0, 0, NULL, 0, 0),
(6, 22, 'BZh91AY&SYªÇNì\0\nß@\0Pø?oü¿ïÿúPJË¨Ó 	©§©\r\0\0\Zêz\0%4%5#Ó"044ôÈ`R\0h\r\0\0 Ì`À\0&\0`\0$H&)²&ÈQêd\Z\0\Z)A!`Hc\0d''ÙÖDO2,=-=ÎÎÈ2IB!7X:j`s¬D\Z÷Ã®jpæieÇÁ\Z*V,æÅ¼±Yå2Úª}|»´ÜA''FnF	ÉÈ´~x$³µÐ9x+¤\0à3XZO#ò)Ô4	''$D¼üádÝßÌ2Ä!/BÆD`0c¦6ªu!H5Á±ÚÛ(É$z¡YcèEÃ''*jÀ±H´"&D17K\n,AIbXX''a¤B`Heæ&Y2>K><Å4#%$}¢bP²É,G0b |DEä³&lg$¡P,21¤Æ¯S¢4XÐd]ÄND#d, Ù³ÚÚÖDlqÁÎ	$q r@dÙ©â¬F-=Á»Ì-¦FF#\nëM,í8¹dÏ7¡¯ a§\0åt$°U¬ÌU;%ñH_ÂþÅ$	´\rÚ*|BµE0Yd¢ØE\n3 Íñ\n22ËhV$H¦¯f»!!\\ThB;fÉÁiº©*Âàç£{Q<EÞìâ\rq88s|5ni"`*D6YëkY³{%Z7$¹ÛXÞsCáïôS¨êÒyOìê<ãÇA¢""QC\0â2B3d\n®0¦GÞ?Ä÷ØÍWëg4QªJ¸F¢gúj÷a#O"úÐ£âS1Ä%D,U¨láhx¬ÇCgx	ÕÆ¾''îI,Js½Ræe!RþTäGeÅ°0À4ÔÈî+pbPÊ,ÌKÚzûÝððxí÷''\ZÂHjX\Zí°}O1Èç6WtNÈàS%!Áýq	d3Äî&bOÌfÑâúPÏtó	WOÔZáÌ¿Î»S¤É&ÀÀ1C4qKÏâáay"Bæ?%Á:øTÀktÍÇ#©rGpHYåj`ö$o	jÁt»¡ìÍ@>!+É I¬ª)¢"D®·ï Ê+) (ÂdÂJP93BK"¤uÅh0õ2Z3²Ü£Ì°OR^\nõ\ZepÖ>ý±Ó Ê%Ã|êr# Ól¡¸ÊôJmfÒ±Ñj:ÜÔÛ=!>¤)HìJùa¥cyb³òç^ÏôØ*21È#!Bi$ÚBÚ©s¦\\aÚ1Qo+S2¼Æ&O&L_²3¼ÜÄð4¼°-dÒ24P1.^\\bË+!òE	Qv½ÿa°gÓÐµó;.A	MMF#y/¸|7$ß{D,@Õf½[Ä_µ	ú.ºøE% ÔÿrE8PªÇNì', 'Bkash/Rocket', 'shipto', 'Kazipara', '2', 6, 'hjhfrtdtrdry', NULL, '4pMn1592250950', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2020-06-15 13:55:50', '2020-06-16 01:54:38', NULL, NULL, '৳', 86.63, 0, 0, 0, 0, NULL, 0, 0),
(7, 22, 'BZh91AY&SYã,\0ß@\0Pø?oü¿ïÿúPûÝ\0Y°H#À	\0L\0À\0hiªA \0\0\0\0\0&¥O=SÂõ#Ó@Fz¦HhÃÀ	\0L\0À\0HE10§ê¨õPõ?Q¦Hi§ °$8êo&ÒydDîÚ%§õúÉFK_AùÎAô!&¤ÃÚ° +ØÄ³èÄ-|Æbt2¥r¹·qr;7®P±»®WNH\0:DÌ=yàõA#)4q	×ÖFQåþð a%¤\ZWÆ1DUð2¤\Z¨ò9X¡\n"+JÈ²R@jÀIÄÜZmr¥­\Z²w\ZD4\rWM%Ò¡±bQ;RhÆWAP­°LÍ}á`¸²*\nAÁ!À\Z4¶À0¨¥¡2µ¦PÈAÈÈd.`ks9ÀÌ@A©B¹$.XÁ$%Uµ°ËÙ9IÅ±&*PL¼ÝÚ·\nª(T½¨\nZõ¨­aIT¸AR¤««Zª¾}Rè¿à¥m`6b\0pe\nÕÁe¥±E\n3}P~	e´@¤$YGÁîÞpÝ	 «Bè1©)R´+C}eq\Z¨Ê«£\0Y\nALÊ&Iq6ÜA+=¬Â¦fð1Æ.Âe¬T×HÄ6æ¢Ã9¥ÇÖ``%Æ³î`|ÌeèÈh66>d=»ö9ñÏæF§æs0o#üüÇ½¿£;"­T`ÚV¼p?cÿ¡#õ Ëµ¸ö>g»è{S¡ùT¢q6MÜÜPæ²5õ>¥¡SñÚ9°6,dØÂÐ,B?[Q ð´.Á¡±nÜ7Ðó5;m´`eVÆwb ÉïçîüzRúI`©-£nâµÏØ÷Çy¾ÍEBdp³4î!-F{âÐ÷;Ç£ñ©·\Zln½\rÿ¨<ÚéØÏCÛãBJÜ¸x»¹çè^,"ÂCW°º 4ó($óò±> ×\ZN§O.àU\ZÛ\\Vè Ï¹''0]ØÎ=KÕp»8NÞ''Q-DÉµ°¨Z¨''+<ª2«\n$¼Ê©Ë7µ,@T*¤p-ñØÕogµâ£Ô.\Z_b|l4\r2òïV¬ç¼LRQî3ôæµTÄQ°×5JlÁâ¸Ù8ôßg½¥2zfÜ¥#&Bâ7ªÛôãátºàv$@EØÄd¡di\n\ZL\ZjNO|!ïK°ª¹±±^£) Q(D/ÛgVô<ùÂi\ZÔd©Cu¨ú¢¥ÈË__ù÷øxÎÇ¢ê]uDs''û§+oD0@Õ¨¾ã)ï={!}÷ñÂ())§¨»)Â§`0', 'Bkash/Rocket', 'shipto', 'Kazipara', '1', 3, '123456', NULL, 'zOc01592294656', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '240.10', 'processing', '2020-06-16 02:04:16', '2020-06-16 03:27:11', NULL, NULL, '৳', 80, 0, 0, 0, 0, NULL, 0, 0),
(8, 22, 'BZh91AY&SYôÄo\0ß@\0Pø?oü¿ïÿúPÝ\n@²ÇjA¦BM4ÐÑ£F@\0OPÐ J\0¤\Z\r\01¨\0\nRQ¦4ÓÔÈl \r4\r4\r\0æ0`\0\00\0"M2diH\r\0H2dÀS@S<ÆðÐ?³Þ12:t>ÚÁçç&\n-{Æ#ø$Þ2BL¾ZÀqE$"ïì¦G¹8ªZÕUqÒLÌ¶\nj©SnAÛs]Ê`ØI´ér½¤¹^%;P\0r0-çSØ~¥zãÖ2Ç°ò=@Æ%±&ë!!yyB(Ê;»¹PdTØH#Q¤MYé¥èb¹Tz\r2#2Y0\nX8È0eZ"\\È°.Ê¡£È©B!²/8¦C.5ËY;"\ZÁ«Å&¾%LË u:ÓÍU¨5»½$X9QE\nQC0!C5QJccÀ¨"Ã¼dq,Æ4@Ç\\Ñ¡Ì1¥wÔha@Â8ÄPáÆDcsBH®Ôæ¨0RD¥½­M¤#$]B*3»UÌXt*QÔukPÉUWÅ/4ð_à¥m`9\r3\0¾YIN\Z0Ð¢w¦±/)Ë# Î¬È\niÞo{wöÂBÌUhB<F3m Ä]T''RÜãYWsÞ«TmÍnØÙ¶7\r0æiªfÂd¥07po9Î(ÖSg1i¸ÃfK0åè41ï>¾àpì§¸à]\Z:Å\0?)&cÓ¦LY7ùô>¼õVûÑj£Òµãx¡ò k¸¢SÐ±å8Ú,À0æ_è0ÐS FÅÚ%Ih\r£G\0àj:{@ÚPâ³\Zó=ä¥SöÖ8°5,fjad!íhÈxY`ÐØ¶î¨u46×XÁ0Ê­Lì>d?ÙÆÝør¥òÁR[FÝÅk+#Úl;Ê÷4	ÁýÓa	h3Ðl(d@è3°y>úð¦¡6çÈÝî\Z«\\ºò0í´õ;èP©@¬-þ!ìëvãaHÒ)Ã¸o¤B`éY''_Ü¹\rp¡Àæu3$ðØJ£ZéÝô$â½ïÃz­áôfð)Ó¼ðæ1£#°ÖU$æ¸ÛQXT(A$Åà`ÆP%LY¸¡b¡TºGÉn|ÍæwNÍ¢¸dI8ÔóC¦aIK=uÇXQAeR ö*rØ¸ÆeH>£Lê\ZÔ:%½o³7ÝaíhÌeaL$ç ÈPx,H ì0s×ÓÒÞ/¥çCàW¦1 f%"S\nU¥	\Zt;§\\áìkÄêwj¸±©^¡e\ndE\nÜtß&¡×£«yìææ0Fåc39î0°Z*P,ÚòKþa}£>Îóêx®a	QQE×4Gòà` %`Mö´A­Eô#W ÛÀôÙ³j49ü]ÉáBCÓ¼', 'Bkash/Rocket', 'shipto', 'Kazipara', '3', 8.73, 'gfgsdfg', NULL, '3l0P1592296019', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', '21.61', 'pending', '2020-06-16 02:26:59', '2020-06-16 02:26:59', NULL, NULL, '৳', 80, 0, 0, 0, 0, NULL, 0, 0),
(9, 22, 'BZh91AY&SY¢f¾p\04ß@\0Pwø;«þÄ¿ïÿú`7À\0Z@H#b`#LÂ0\0\00¤4$ò£''êC&C@HmM=@hi0#À\0\0Â0jRL4Ô\0\0\0\0b`#LÂ0\0\00DLOOT\Z\r\0Q´ÔÍF ðD1èá cQ°õø-¶%B9¯¼b-þ/Y$ûÆJ$ÿ§½`7¡gEÿÖdz-X¢/éEÔü¤V6I=EB\Z\nN''J9,T?#&rÎ]åz \0ñ?ä	70À{{î^ç¹öw?ÐJ§Ø¨^ëf¡`K4*­ï£(ø`°Í¶\Zc(TÓ(KQÙ²ÂA`\Z-ößz*³&ì¨Y .ÿPÈl¢¡§rT$@K2A°íÁBâÊ²Æ@m¼fmEWdø¦aRªqx\Z`@Ø51.q°fU¦.®°²T¦7x3%"`ËFVU7VUWÂ/38©eèr0ÕÉVÌå"\Z)ÓhìS	­öWÒM¡2ÚÏ4TÌJæÅÆaÌã@A¥H*`±!±$UÊ@`©¬R6''kH<W`Â¥ËÍÝ«pª¢KÚ¨¥¯ZØK(êJºµ¨eUWØ>)ü)	´\rÚ*më©RÀ¥²dX%ÑJ(°b:Z.¤*FA¹A\n$X!±ò9qì9q¬¤-!\0x\\f0Ê©Z â%&:T*Æ2y6"N\r&M¤Õ³.+Û2^VYÉ[Rb\rµ­^ÃÖ3ÅbÚI4àÌ0¼0¬·°Êj+/LÅ¦²EEhüÏÓAC¾¦Xn\ZË¦ átÒq6âÝg÷³À*ÅVÆ¯ÄâIõ±ó;gÏ¸ú\Zm2\n2,/Öl¢8n:gx¨âBc©Ã©Ô%IZ\Zÿ$%&-¨#µ±c&Æ2\r:QÝ`Ê`Ó`pEîh}FÇÛï&U¹$~oÐdóîw~Þ¹K\r!°¨ÛW¬®~GÚp9*\r3Bdpt3MÈKC<É0cà3òü*oÎÛ¿¡ñüF ók¯¯Àï2ïØA¢>GJ<°É]	(plþiüZ(I5ï \nÐÇ\Zg¡íër|ÅÎNg±]ITkY½núvñBò:1®]K×°=ÙÈ\nwø}F0´}B,µµBÕDI:]	ëÑ£Ôè`¡²¹B	>''h2¤¨Ë;]È\nRÐHÔuÚ0ÿÆë·Ä[uFÓ/PÁåùÜ³a¦~³(Ïíå|©AÄê!ýÇym6ÕH?aCh5eVáà+ûìs;kÊþ\rVÉ\ZØJb/\ZE_ª/\Z[Y×q8²t$H"î¥AF1Dd\n,\0P\ZL\r"\Z£Çn°óKÀU_Yk@I8	F¿²\r.÷«x<N9Âi\Z8¨È\Z5<"¥,ÖÃê#M|æÀ¿ony®¡ØJUUQÕÐè>½Ä\0ÂÀÂÓJS60HÕè¾)ð=¼¾`××fAIH5?ÅÜN$(¯\0', 'Bkash/Rocket', 'shipto', 'Kazipara', '1', 160.6, '453678/67', NULL, 'wK9Y1592299186', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', NULL, 'declined', '2020-06-16 03:19:46', '2020-06-16 03:25:12', NULL, NULL, '৳', 0.98763, 0, 0, 0, 0, NULL, 0, 0),
(10, 13, 'BZh91AY&SY¤póf\0Û_@\0Pÿø/Kô¿ïÿúPÞh8´ËNFGê@\r\Z\0\0z\0)2jj\0\0\0\0\0\0I¨R	4dÂhdÓCL9\0\0\0\0\0\0\0"dÓ	¢5=L#ÐÚÉ"A#Á$Ì^ÐûþWÌd_Cãñ¹FK^Cåð ½d%|£7­`5 ôd®=¨H±c1íVB/ÌkV~(9m£5Ìa°åBi¿2ÅI#vfà^k.ex$\0vD5\rä2Èó¸ñ1é=PÀù0Xñ6	m¼oL\r§Md½->\Zê@È*0¨Ñ#BÌ\Z.B XÅ-EVR÷,E¯XÑê$d ÀX@aÆ®k]Yy*`(2êï(5¡Õtd\r2æ¦\ZÅ ¡wzQaÉ.ï<¥%tnkÍH  Ð¡B\\\n,HzÉ *¨AY,BÝJÂRÕl×\nL,I(Ì%­Ý«ª¢KÚ¨¥¯ZÙ\nJ¥Â\nu%]ZÔ2UUë	ä¾	´\rÚªû²~e²,2Q¤R±DÒ''­UTA!©$ãwVÓu:¥!f\0þ3ªg±J¡µÕ¦\Z*±9s*	©0õ¹,¤»©D±00ZÐTëbfnæY\rz&V0Ñ[TqCÐò*zôb\ZfñÞ9ÜÈÞH~w1Æ52Äq"ñwá%+$;T¬)Qh-xfÑ\0ÂÔÙ=£=çÝ¶Rt?¸ò÷cCr,ö¯mJ)7óAÔÙØÂ×öB5SöÖ7°5,fjc0húÔäu&\r6R/pÛC¡°¶½lYl3z>ï!×¾Íü)©Ä\Z*Ø\\m¬\nøX>ØÈë3+Ü8LÐT&GS©	f2äEÎáê3hò|êiºÛaòÿFªIÜ×fwàdïÔAEû,Oæ~áò%\\¾Pè)?o7ô^''àñ@;PÆ"x£æ<<ö''¼]çeÃÀÈ¯PU\ZÓ;Öè ÏÁ''`NÔ.Ì6uò/]¡øfà)Ï¡çä1£¸Rwp(Ö·²¨rN<(rÄ²U(A$Æ aBTÀåÜJØX {%ù\nh·>æ«zè-x£49ê;þäïX°ÒLâ£h¨ëHËCÉÊdaè]e±Ò**ª@8ö4ª(ÑÔÀÈî]¾aÂ¡ÖÀÐeaL!Aç\ZW9A×\\íÓÇu¼ÏÐõÞHôJb2À(dQi$ÚBmPÜhvëÆ\\æ*¯Ak\Z.TNN­ÐÁÚlÊpW	¤flP133RëAñEJ^~¯Ô3Ýì;L´Øw®A	QQF$Gp}ÈåØ@!a\Z!3CZà2£Ã¢''ø pppÂ())§»)Â#0', 'Bkash/Rocket', 'shipto', 'Kazipara', '1', 232.8, 'fdhfdhfg', NULL, '3DEm1592388731', 'Pending', 'vendor@gmail.com', 'Vendor', 'Algeria', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, 'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', '7.2', 'pending', '2020-06-17 04:12:11', '2020-06-17 04:12:11', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(11, 13, 'BZh91AY&SYÈ>\0Ýß@\0Pÿø/Kô¿ïÿúPÞiÔ«,»¦\0i  ?Ð£G© Ñ \Z© \0(F©4\0\0\0\0\0\0QSõhÀ\0#\0\0\0 æ\0\0\0\0\0\0\0\0H\0&OS&Fi¢1HHâ\\èdqI%ô¼>ã?µô''Ôùüì\\¡Q×Äañ µdÀd¢OÉéX\r(Jº[/²5àÍ³¡|ewJµ|(d2Ãz%ÌË\Z³ Ök9Ð¡´Ç#¤íeËÝ÷\\ÊðH\0è	T¸Ìà2HqÔï;}¬ÌGèPdboZ Ò8H±þÂwHö\\°ÌØóP@1F+GàÌÊñµ1,&\rqâ(dAa''2¼ÊA`6ÄÜº»ÚÁ¨M 2°VFTcifV2$°l.ê«MwjÐ6eÕUäBPÓ«®#6@AB±$,`H{I !¹Q$YXPÅÑqgÍ\\Q4åâ)ÂÌ`!,ytT³3Íâd{(êJ²Ã\nªªî)Å}Q(hz#Ar\0ûnB4E(`!(la¦Ô$i\r&Ð&ª"ÄFlØöuì6ë¬¤,@àÆk»*R¥dlÃ¤Õo{¼çt-!Á-6,YCP¬¬Ë\nUÇRTd«6»U&AñaJ§KJmBIs8zCºLÃ	ÎCQåÆ )üÞeLÆM5\\Glï: uªGrÂ¬¨Á´Z°@0¡ö5O`ÏÈ''¢ªN§ôvîfmRq%õï©E&ðÞf:¸¨¡Åd5ñ!\ZÄ©üiAØ\Z\ZÈ\Z>Õ9£Ù\\ÅM­°l¡ÈÌÔa§Q¤#a-F@oGÄdîß«\ZbAR.`Ib­Ú¸­usä}ÌMÆE{G	ÈàÆt!,XÈ±Ú=l/¥LöÓ@9p<áªvµÇ¡²éÚT©?Éëx¬[3 u§¨[ÍýWyæw K;c;Ñqô¯N÷¸áCê1 Ý I*g«dPg''\0\\W lÝÌµv6NOO10ÑIÜM£ZXT,Ê¡É9®DóåR`I+d(©YJ éý´H)of·<õÔZrFHr2T.wy½RE(uÏ{pì\róh6ô/aÀ2eUUU ÷\Z³ª(Ñ¬:£Ú¸Ù4ÛöÂÆVÉæ2¥c¢÷íÃÐú<ÏÐ]Æ&ädCM1¤1  ÄÚ\0lÐ¡ªLÎÍ9B+]Uë0ÀÐ`bP\\õÁuæà*Ý¬fånFF¥ñ.®Y*P0FM{æÅmc?qØc£¹sJ.¹¢9sÈ|+£D&f\\¬(¾C)Äol¡|\rÝÝä&Á±F/ø»)ÂD)ð', 'VISA/MASTER CARD PAYMENT', 'shipto', 'Kazipara', '1', 120, 'VSDFHKJDF F', NULL, 'fgP11592389295', 'Pending', 'vendor@gmail.com', 'Vendor', 'Algeria', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, 'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', NULL, 'pending', '2020-06-17 04:21:35', '2020-06-17 04:21:35', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(12, 13, 'BZh91AY&SYÜ¨\0Û_@\0Pÿø/Kô¿ïÿúPÞh\\FËN¨4\0Ñ \0\0(&¦¨¨4Â\0ÂCFj¤a\0ÂdÂ\r04ÐÓ`\0\0\0\0\0\0\0 $Ó4&DÔõÄ46#''HHÔ¼äbjKè/x}Æ+è2O/©óùØ¼¡Q×Äy|-Y$ ÉDqÎ°Ðmv©cÖ\réÃBø¼a¯ò¡´aÎMÅ4Èa°ãBi%ÅI#n%å¯uË]R\0;"LÌHÏ!b@·¸ÃÄò$¡R\nBåÇ P4Ä$+¼`m:g%©tøØÀÍ¢\0ÂFcBÄ\Z,B YÌL&¢F2*s\n(â`ËZ¹­t00R-eæd`X¨E Ë«¼ Ô2UÐE4ËkReÝéD-f``$L»¼òX1Ñ]ñbÃh¡Æ0Q#0ã\n\ZÌùqAé\ròvMÁe¤@eò³*aÝÂ&±&ÁB"u%Y]uUzÃTæ¾¨	´\rÚªû²~e²,2Q¤R±DÒ''­UTA!©$I\ri·gQ¶%!b\0þ3dÍì¸¥JÐïË¤kºÎõ[IP:	ªcFÔ¶K.eÅLD.¨5wymË\n]½"j)²BlÄc°cïï=£âè>d\n?ãx\rùÜÇÇ 8[rÉ	í/j+YQh.´3¨@0¡ö4Á.í\n©9ÁÐòøs#jRYï^úRn\rÆC©¦ð4(j±\ZþÈFc0*~ÙÐFæeÆ&eøGÚ§`;+Ì4ØkUFÙó¤`L2å¡èð={¡ÜôÝ­0 u/. È±VÂÃm^+^¯>GÜÀë1+Ðp¨L''2Äe,Î¡àùTËm3	»óÏý\Z©''FµäcmL¶QG.Jø¸y¬[#sx·¹¯Ôð@Wc<xÆwþËíi¾ó¼À¯0U\ZËVÈ ÏRMá=HZ®á³¯jõ«6N\\Ïg.´F³°¨YCr\\	Ö.$©B	&/	S3i+Bâð.KðÉnz­Ë³àPäd¨^vú¹_pLâgè¨ëHKDdÆi%2ô-e±Ñ&I4¢q¦UE\Z64j`t[Çlæ´Û!2F°iXâA\\Ac³/\r·w>O#Ú/"D_¢TdcFC"¤i\n\ZL\ZµCiÙEpKª¿"ëÈ@A	FÇd>.­Ð¼ì4Âo+zi(ÈLgX©BõxYd>©@¹µâV+lð÷hv®!	QQEë#7qÞ@!^Z!3"òF®¢ù§´ïÝÿE% ÔñrE8PÜ¨', 'VISA/MASTER CARD PAYMENT', 'shipto', 'Kazipara', '1', 240, 'dfdfgdfg', NULL, 'w5Bi1592393878', 'Pending', 'vendor@gmail.com', 'Vendor', 'Algeria', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, 'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'declined', '2020-06-17 05:37:58', '2020-06-17 05:43:24', 'User', '2.4', '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(13, 13, 'BZh91AY&SYÜ¨\0Û_@\0Pÿø/Kô¿ïÿúPÞh\\FËN¨4\0Ñ \0\0(&¦¨¨4Â\0ÂCFj¤a\0ÂdÂ\r\n04ÐÓ`\0\0\0\0\0\0\0 $Ó4&DÔõÄ46#''HHÔ¼äbjKè/x}Æ+è2O/©óùØ¼¡Q×Äy|-Y$ ÉDqÎ°Ðmv©cÖ\r\néÃBø¼a¯ò¡´aÎMÅ4Èa°ãBi%ÅI#n%å¯uË]R\0;"LÌHÏ!b@·¸ÃÄò$¡R\r\nBåÇ P4Ä$+¼`m:g%©tøØÀÍ¢\0ÂFcBÄ\Z,B YÌL&¢F2*s\r\n(â`ËZ¹­t00R-eæd`X¨E Ë«¼ Ô2UÐE4ËkReÝéD-f``$L»¼òX1Ñ]ñbÃh¡Æ0Q#0ã\r\n\ZÌùqAé\r\nòvMÁe¤@eò³*aÝÂ&±&ÁB"u%Y]uUzÃTæ¾¨	´\r\nÚªû²~e²,2Q¤R±DÒ''­UTA!©$I\r\ni·gQ¶%!b\0þ3dÍì¸¥JÐïË¤kºÎõ[IP:	ªcFÔ¶K.eÅLD.¨5wymË\r\n]½"j)²BlÄc°cïï=£âè>d\r\n?ãx\r\nùÜÇÇ 8[rÉ	í/j+YQh.´3¨@0¡ö4Á.í\r\n©9ÁÐòøs#jRYï^úRn\r\nÆC©¦ð4(j±\ZþÈFc0*~ÙÐFæeÆ&eøGÚ§`;+Ì4ØkUFÙó¤`L2å¡èð={¡ÜôÝ­0 u/. È±VÂÃm^+^¯>GÜÀë1+Ðp¨L''2Äe,Î¡àùTËm3	»óÏý\Z©''FµäcmL¶QG.Jø¸y¬[#sx·¹¯Ôð@Wc<xÆwþËíi¾ó¼À¯0U\ZËVÈ ÏRMá=HZ®á³¯jõ«6N\\Ïg.´F³°¨YCr\\	Ö.$©B	&/	S3i+Bâð.KðÉnz­Ë³àPäd¨^vú¹_pLâgè¨ëHKDdÆi%2ô-e±Ñ&I4¢q¦UE\Z64j`t[Çlæ´Û!2F°iXâA\\Ac³/\r\n·w>O#Ú/"D_¢TdcFC"¤i\r\n\ZL\ZµCiÙEpKª¿"ëÈ@A	FÇd>.­Ð¼ì4Âo+zi(ÈLgX©BõxYd>©@¹µâV+lð÷hv®!	QQEë#7qÞ@!^Z!3"òF®¢ù§´ïÝÿE% ÔñrE8PÜ¨', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 240, NULL, NULL, 'CzB31592395444', 'Pending', 'vendor@gmail.com', 'Vendor', 'Algeria', '3453453345453411', 'Space Needle 400 Broad St, Seattles', 'Washington, DC', '1234', NULL, 'Algeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-06-17 06:04:05', '2020-06-17 06:04:05', 'User', '2.4', '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(14, 90, 'BZh91AY&SYZüÐÛ\0Ýß@\0Pÿø/Kô¿ïÿúPÛÝweW,±ØNº¶JiI?Iú¦£M¨Ñâj\r2G¡\Z2\02jjHz¡¡ê=@#@\0%ýPh\r\0b\0\0\r4\Z\0\0\0\0\0\0\0""dLÔÆ£ Ñ Éå()§	±Ý:G\n«Ì>Àç!òyaöü¼½å\n¼#«$C%yÆOJÀiBV·}±ë4á¡\nÎè¼a¯ð¡´aÎ;Ê3,kÃaÎ\rÆ9$Çs.^ìWºæW@@Ì9FÑ@àRXe-#8æc\rY£ÀØÞrõ)ä*ÿ522HämËÍPaA£1¸4X@±½0¢«0(A)Æ¼F{(*PÚ]µÑÊD4dºÍhJÀdB0j"H¬ÚAY l\rk37U2&µ­:BEa¬ÌÖÅ0us5ÄfÒ3(P$¥	H$aË$Ã+¤\\´sH.lËHËåg$#$TÂ*3»McM:E(êJ²Ã\nªªöæ¿´JÚà Õ Oi$´±dLi¹¥ÂBj4¶¤R,R Ç(%wØ÷¶m7l¬¤,@ÀÆl»*R¥huåÒµßF÷z­¤É¨TÆ1©l\\Ë.)*:]-Pjîó"í±aK·ME6HMÃè|>¾ÃÌ9ë(àr=ä(û\r`5§óí Î\\A¢ÐÂ=ÂÔf29B¬¨Á´Z´@0¡ô5áO\rJ©:±ÔòøS3r,ø/J)7ó1Ô×\Z8¬¾D#A?M(#{C#BùGÒ§4b;+°i°6"Ö\r´9iÐf²0Ì¦@oG£Ädöo×\ZbAR.`Ib­Ú¸­usæ}LNÃ"½G	ÈàÆt!,XÈ±ÔzÚ<_mL÷S@9p<ÿÑªukiÂíêT©?©ìy¬[3 t·îóEàzhÎçrÄB\\QOËÃ#ñÂ"Æ7î!S[V)õ$àµûÎÎe«´=Y¸\nvô>ÞcaE''y6iaP³*$æ¹ÏHA$¬VãE0Ëµ hÇ)2ëðÊ\Zi½yAÀ³[Æzè-9#$9ª;ý	Þ¯!2/âhð¥òq³^1Ð´Ö¤TÞkQFÑLN«íÀãMÐAÎi¦(ìçH§9Ç¥Ü®¸¥ÐªT£jABOL*@Â)H1 Á(i0a\r\n\Z¡¸ÌîÓ"¸¥Ú*¯a  £Bç²§7Vè\\î5ÆnVé¤dj c 0221RÕÂË1òEJÉ¯j=X­°gçï;sÔï\\Â¢¢®hDÜô#\0a\nèâÑ	$k\n/Ê{>ú<à\Z2`JÿÅÜN$¿46À', 'BKASH', 'shipto', 'Kazipara', '1', 313.28, '6454', NULL, 'gqRb1592413185', 'Pending', 'riad@gmail.com', 'riads', 'Bangladesh', '123456', 'jhgh', 'jhgjh', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', '3.6', 'pending', '2020-06-17 10:59:45', '2020-06-17 10:59:45', NULL, NULL, '৳', 1, 45, 151.88, 0, 0, NULL, 0, 0),
(15, 90, 'BZh91AY&SYWnOO\0úß@\0Pÿø/Kô¿ïÿú`}\0H)A"ªUÌ\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0Ì\0\0\0\0\0\0\0\0"õ=)£PÆM& Ðô<£ÐÒh$A$ðE\ZzHz!£Ê\Zl¥.àny	!>hûäÿÅâ>r0,^æyäñ7pchLWúk"j~¥ÅÎ>K¬§FV£\r)³£æ£8lÑÕ³K07taáVpÿ9¬^{]¦Ó±Õ\\åaäÄÄûÉG±FæíÔM÷LyJï$y Zr4pX¢Ð¢Ç´ô=Ç´â|òæhªÁó.?Ö#Ô(âZHiðZt£iW*^YðVÜ*(è¢¢ðIE&\nGB¤Ò¡±dZNMØiÊ¦.¡¹Iü>âå% Âd´-&ëYSv.±H`¥H¥,Âì0E¢¥!JYØXrl](ÉETC+¯\Z`ä\\´R¤¥0ºë²´EÔ0ÃbIJ*au×a¹iyEÊJÊ,`fÇcM\r:7nÓ4àäâØ~-¦lUç­K7lÝfZÝÁ§N"¦ë·¦n2K&4ÂRYu×i³,N.l,faYMM18L¦]£ÂH| A!\0!ÚR4AnQJÃùA¦.¼º¢R¡fb,YrPÚA ª)R¥# T(qJV\nB0ÕÔä9CSöT8ÔRÅ×Â¢·a,ÏSK8Sµ±ÚºírhÜæÄ¼Í²ÓÍcK78as^*2pØÀÊ(ºpØ»K6bspáÃv¥99n±GÒNl6Y¹QÉy¢ò£ó->_|øKc¾v>! dÆø¢ÃïGfw¹vdä#²[ûÊ~''½¢êpeòeQ)\r6YGªBT¬ê»×(ügg%4ê0=O{¹òð}]FÏ´,G¹;uç\r%2uw©Àå*?)ht(âdþ®Hw(:MNS¤ÝÈR?Vg8Ù7)))RNÁ³dõ1<g9ÖiÑèQÕqgë*i:¢w¢J.íw,¦êîx0àÞæ¥×4\\æm2¥\rRrlÝ8ì=\\ÞgÀÜ¡Ý±fSccBñ±É³ælcÊÃ2¥ÍcÜmÇý.{9Éá8SNÂÇ"Ï7°ÌÌÔ»ð=åtØÙÎxÒó}¤î;î>³ÜR yë!d=ÈÜ@[Øp1loSxm.í{ÚyY²\\f[#§Ö^w¥Þ¤OýÅ(íyMr¯ÜªÜè:½ÀÙÞ2\0¹£bbl£(¥åÜÓÆ]äñd²\Z9\rÚ6£Û\rab05lÀÅ .? Ä_aHh<ìþv8õ°ñG(RåKMÏké.îMÚRTÜþrgêsn=Ht=á7uz@ú>OSI¾0¥Icã:¹²)ÒØò9Í¯´¹©HCã\04cIbÁFz1¡ àÁ2}í4ÃC´ÔÈë!ÐC@üÔðÄ dýÐb"F"F HA\0Q¢-UÈutz]+#.y)ïjt,ÒÍ¤º8Y<¤ôy)i2¥0nzçW·e¼T)Ö-(¢É©Êr»Áff&é¸Øç)ãÌ&¡ÉIð''Ö³°£ð|O\\áÍÖ{SÈZ&	féå<eÛIg¾ZIIhÜU<sËÊM0£¸û^>¢` Â!D\Z¨ø»)Â»rzx', 'BKASH', 'shipto', 'Kazipara', '2', 234.79, '23654', NULL, 's4LS1592413187', 'Completed', 'anikakhatun982@gmail.com', 'Anika', 'Andorra', '01957656407', 'mirpur6', 'Dhaka', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'palkimart', '5.4', 'completed', '2020-06-17 10:59:47', '2020-06-17 11:11:37', NULL, NULL, '৳', 1, 45, 15.19, 0, 0, NULL, 0, 0),
(16, 22, 'BZh91AY&SY\\·¸\0û_@\0Pÿø/¯þ¿ÿÿúPÞh:eî+ZB¦©êdÆP\0 4\r\0 *\0\0\0\0\0\0\0jI=(¨OÑLFÑ¤=@£@ÈÓ\0\0Á0\0\0\niOi6¡LG¤ôS Ñ´4RÄ<Þ\r''Å?gÞ§ùR¾*]ùaú¿?ÎíeKÔø)éZV.³à¥Ë·ý/jìÍÈaÄö0ÀåÆD:1	¬b³º[àÅâ°¬<5eÙÍÍÙv¼æYvÿ%Ñ="EÅ£ì>×±§Ôø¾ÓÜQí=Ì¡Û%HºÒ%ýÖSî¯ËÉ©b=ÅC	Écr Ü©QI­ó¾&i÷¾aüË¤¹F\n6Z,oVÆ8ºÉF¥n.¤\\/ká@Ã|¤D"À[ªZf×¾¾Å,j*Y+:_¦¼4.ljb`ª5Íï|ecbåFfµ¶³b¥ê%3ß44,ØËEM3W¾¹Su,áSUÖe«EÍ×Z9\\TÒK@OJ(Q31+'' 91!4Ã*¨\rî\n(@@1¸R0Þfgë¬úO¼%T*T/k\nü*P+TSa¢©"ÔFAj VÐ )$YG37¾îí´Á$çQø)K^Í±³8g£KºeÅÍTfÐf¼(%aE¡ÃHâ)Q#Ì°Å­j{1W»Qa©,àÙ!É"1ÉÈLCÃ	ãÃå1§úVÒ¥Ô <8@BKØ&ÓâÑ¨qà²_\ZÄà \rèÞ·àN¸£&øJ9¬êü_³tºÞº}Ùb]Ðèä¬¹÷l<''\nÒlÃúòÂ;èrhÝÉ¶åGýË¬n­fÍè©T9êváääæÓõsçrÛ¯ji9¸n§GÈ  §Kjá§îØ¸h,¤Ð+/yò{ÜÝîT§	uî«6¿&u=l5­Ñ	â>ÜªÚv­3®è±¥ªÔT ­>ÃË2õ_fÇY^Äçã>_7ÒY ²ªÇ!P6MÁä9uÜ¶ù4ÙÑël³×Èºó8ß\\ëSæ»¼¿lL½ª©ÝÕ·Ô×¸ùÓ Ï¥çâ¥\Z[Ôp¾£;5L5ÌZëòWðÊL0³«_k(ÊòöUéÜ¼æÑÌØUÑGÉÙ:sN^â*S\\<þKú¦ú*SgµS³ºÞ®n¬Égk©ÿÿ+zU*©×.3&*vQÞÝé¯#I«ê	µ!4TµÝÈJk18J(ÓTbqåãÎúßåîHæJb0ÈPdd%2 Â,±Þ<Yu´g¤Iõ´ËGbðYkØZÓÇ¶Î?\Z±­=ï«m¥Há9u)rî_ÂÙa´ØÖrWXËÅOß''Î{Tþ>M¸ìz§RÒbb[YÖ-à¿½]{ÞõÅÍ«Â¢ÎM|''Xm9ù!;Íð\nJA©ÿrE8P\\·¸', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 658.14, NULL, NULL, 'cKkH1592415589', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-06-17 11:39:49', '2020-06-17 11:39:49', 'Anika', '6.5813999999999995', '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(17, 102, 'BZh91AY&SYþ¢\0®_@\0Pø//ô¿ïÿúP¼6¦Ë\0ÓL`\0\0\0\0\0\0\0(jiPõM\0zh4Ðh\0$ÔEHÂ0#ÓÂz#À\0\0\0\0\0\0\0DÐ''¤É=4ÐÔ °Û8©²ÿäDëðÍ?wuÓD¶h£¤âÊ4	af}Ó­\rà¥mu©câMêZÆ{º¦ÂU*jDÎ(iÄÄ¥å\rG>¥JþD±NDø \0Ì ¡q¨¸÷ûàÔ{´$Ò5»ûàm9Áâ® Ð¸hEA¦*ÚÖ£,0<a T@YÅ§OyÞPE@mºVZ\\fl2â`(3Ï	YHN#H*C»Ì!*ÌÄªL]Þ2QbXÇ-ÞuüPQî0`¡=I\r2$£9Í"å±Ã\0·®-"S/©ÈJB2F*QÜ"±2%X(NJv(MÐ²­f^¨©Ú¢Bû/ðR@ ,®\0°+µ+TS"ÌJ3¢ÛeUA$`F])DHÃcÕ¬ÙªàØÐwf¹ÁqdÁ0p§H6ÙmÎÛ½VÖ`Ô°Æ1ªl]1J¤)GKÀôØWw6Ø2oÔa³"ÆÌ9A°§1ööH:ÔrOó:g¡Äàk4Ðìþ§¸ý­àFãâr6òðxXÐ«âÌÑF¨0m*Ú5	¦¹c<Of ÷G¡÷05©Àú/*R6Ó@èc¸K7¬½G¨Ì\nvô(#Æýqõ©ÉåyXZÁ´ÛC©¬¶+¼2òá`ÉnãÎÛò¯PÿJlUw\nÖWsQ¸À¦#Í)å	`3°dXì#6÷\r\Zg¤Èdí.ÿ®d­qÌÑÄ½×YÎD¬X2`´ä»c´m!\r¤¹Øà1´.\Zg3×¥òé©yúDÚÂûRÈÏbFà¤-ëÙ·"êìnÒ\rÀS>gNBÛãP©½	Jãé9GäIL¤1ÐA$u80HJ''G´aó4­ÌÅ¦\Ze¨=uWÔiWüvGLL%£{êdG1¦ÙB¦(ÚÒqØ:àl6Ï\\!)\nR"üB Ò±¼\r´wr¯GÉ÷ ù¼iPAFAJ,,Ú°ÀÏGE6¥ÈT^òµ4,EäÈ¨0y8Ã3åbëHÀÅQF\n=¦G+Q¥SqyÒ§Ñµýs.ÃIÕdÔÔYdâKä<·V{Ú À±Uó?Ýävö÷!())§ü]ÉáB@:ú', 'paypal', 'shipto', 'Kazipara', '1', 140, NULL, NULL, 'fCPg1592929289', 'Pending', 'sibbir008@gmail.com', 'riad ahmed', 'Bangladesh', '01675108504', 'mirpur02', 'dhaka', '1246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-06-23 10:21:29', '2020-06-23 10:21:29', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(18, 22, 'BZh91AY&SY¦$l\0|ß@\0Psÿø+ßÿ¿ÿÿú`\0\0\0\0\0\0\0\0\0\0\0bdÉ£	biL#0Ó&MLL`Áæ2hÂ``\0À4ÄÉFÄÓ\00F`9¦&L0&&À!0#\0TAÑ\ZSÉèÉ4Å<jÔÍC)´²HIô}O''êùß³¡Ý"Cäð?(>"M¢Çë°ýNkÆÑÌT^ã	ÿÑ¥ªªª/T^%Æçì\\±G#%¢r0hTÁ,q>E\rÅÍLF.d]E(SScÉndÉV4?ÑBü\rN%Æ#°Ö9ÃSÑc*)Î:Ö³#aÔ{ÞÅÀâ-5;âÝ©	''µà&#îs;îO½ïzÜçKÒðy2â§Mª¿wæ³Ôþ®b×§Ì_Ö£öS+ÓçxRCØ-$(´{é4Új\\[JUMMX92Ôº).=ÎÅ×æT5X¨X±¹uL\Z¨jj±E$F£Uà¼MJ,\\Á	îdÙD²ql´B(¢¢(£båÍ»Øna²M:{+#¨þªaA(¢PQ+b2_ÒÉæìÅTB¡//ÑyUThÉQ( ÁråË^Q%0Z"æ.èÌæKA-ÉEË`ÐhÄf2±3m0a3qh²-ÄZ*5Å£1¬iG¼X0°ß%Ôº©Q©c''P£c&Åãa±0a\nKî±³cRÁ¡0KÆ¦	W&.462dM\rÂÉP°Ì`¬ÅÉ©441$ÉÞIûI$ù''ú¼!E$TE	rÅ¢J>\n(¢Å¢ÅAEBñc©QaaqA÷zKZABR¤*E*J¢õ%EÄ&-ËÄ,´Ib¢%EEE1Òpç:IÏi$Q$ZÝbCÛ:LÉFLGBéàp(ê.8.hiÀÐq/$MKGN%&æÍ\r\n(dnj24(\\51MÍÍÍ#À`¡±«v¬ni±87,V³"&#àËGäXô¬üß/ª?ü[äúNcº=g×döµ|Kû;ï¹Õã\rÏÍö>)Ðòt>èàøÉq>ÇósÐëy?Ü~\\ä|ÏTl¹äõ¿Ûü>gù=oü÷aäú;Ý?£#ï<âår?ÁCê#%"$ÐÔ±ãþIê.xÅï ³F¦	h÷Gä>1ôÇãÌtñc²>øñ×¬q29Ï1\Z''1ó7,]¨ìN1PøÅ ÕBî1Ôjn}¦±9@çÑ(ç0jXök8EsE:blló:Í#Õñ×A`±Â.X¨É:ñ°¡Ö?à²-ÅBç9è,Q©F§é0jn\\i¹÷µP(£q66&ñÚ?¤dè4pv%ÉPâ&c÷`ÄUã¢,IÍ1xÜ*61\\ñQÕnQÞf9QÒPÁ©é;#ñ=±PòaàÈñ(¥ÏTsO3¢7(ÜëxÆ#sÜûÍÔ¹48ÇvÁh£´égIÜK½ù`¢©''áIT¢CÎo°P¨}ÀQ*<cÖs<c|''¼y£×Å£ÈäÃC¼äp646#QüÅãÎ$K½ÜQCóu±¡¡ÚØÕÕù,²¢NöªQ¡hñ=B¡cÈNÃû0lÃBÄè>NTp4"Åä¹ÎN1ssµ\ZE£½©8HÌXaú3ÁÂÑAM"ä±h¢åGd`Ä:Fì.\Z£RKÄ^(ºòNDÊvEíbyÏ89AP¨ó6,Ð)¼~\rGþÆa0l¢Tpø¢p>Ó²çÑ''ti	hèA;CôE4Dr8$Ä¡Tûø7Q<ÑG;c''(óGÐê-CÛR''¨Éh.,qîoñ{Ø¸ á±h´QÙhá£úOSÖQàQÉíõ¢¢¤\n¯°¨±¨T**QQ\n$¢I*ÅR*	UGTqÚXddThiÂÄ\ZÄ¹Eñ±bw<IE¢aóºÝïssBCÆ:bç''1Í\nsÇT-(Z8*5G¥Æ¦cbX5N1¢Çt\ZFQ¬\n''´Gü£SPê=øÜâsÇ2ÇòÄ&Ð7''|?Ë÷z£''Æ(î=1Ö¼eBzXFaÄJ(¹PZ:#H´Q40OÖ(`ñAàDèìöIôQH¢¤)dÿ¢îH§\nÄ-', 'ROCKET', 'shipto', 'Kazipara', '7', 3957.6, '456123', NULL, 'PUlW1593556037', 'Pending', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'palkimarT', '122.4', 'pending', '2020-06-30 16:27:17', '2020-06-30 16:27:17', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(19, 102, 'BZh91AY&SY·§F¸\0±ß@\0Pÿø/¿þ¿ïÿú`?|A%(T**9¦&4À#\0\0\0ÀæÓ0\0\0\0L#b`#LÂ0\0\00i0#À\0\0Â0$z\Z"OõiM<¦5\Zdh)äÔ\r4\n4	)å\Z$bi£CM\r=!ê4²Ð=«wÁwS­à	ñGÉ÷È¢pCÌ¨D°xÜ!äyYÅ¹½ x±_ËÁÂÒiñce°r"ÅÚ^Rí.5á§7ÅFæpÕ¡ÔÕ¢Ì#FÎ0²ÊÍÏô£á¢ôr\\Äó÷L¶êVÔèt5b1:ÏsÞñjÖÒS¿Ë>õÍÚ_WÏ-íIô Zv´r~÷æôpü×µ£ú½ïÒx)ñ|Î³¶#¾E¡i!õ»V£ÍZªë¾µ8ú´Ê¹DKL}#)Rh²-&ÍØhÁJp¥j%-\nE¸ºÓUÙlÑÚR\ZTS-Whá­h,¤]LE	JB),³EÚ>·ØÊrmMîÔ©UÕ²ñ»W6é2©)CF®»U®¯µe¦FVe¥¨]uØ`Ä,ÜÜPËX±y\ZhiÚÜÜÓKLÍféÊ^ZFSuhÂ_5£*MZ¥5Y\r5e³v&æéQSeÛSF[¦É­JK.ºã\r\Z²»$Ñ¸¡Ó-EÌ+2é¢hÑºe2öÈt*aÎ¥H{J\0¢+-Å¬;âPB¢"Ù¢ô ¢Ä @8¢*BÔ©JÁH Á¢(CSJÓTD!owÃ±Ó@¤	R,ÃlËY¶·SµsµuÚ6kÃSó­994Y±»´Y¢2nÔÄ¥2£EMÚh³V''&íÛ¶i8paFÎJpá,5Y´S-/-pugæ\\üÏà?ø=3¼é~\rNÓÀî,p=æÃCi¹õÇ+à¨ý!äo=ÇYnt\\RÞÇæöË=F®Çtø»Úÿ	OÄææ]N³ú(õRd¡J\r\Z¬»ÆB~LIyòs,bv4Ïî\\CQpÓë{ÜÏOórx\r<''á3	yÝ''qÎS''G°FQþe¡Ø£yñsbC½AÎi8æÎ#þº	­i¬y0aÍuÇysÒízæ­ÑÖÀ»vWZjMÊ;ßrÉi,§d¢î÷rÊj¦®÷\rwZK/c2ÊR2RjL´MgÈû§TîL».1Ø\rí2EÆÖØÇg1,Í\ZÈt»¸Ø¶5\Z¿ÑîbPq6:SÞ36u)ØòaÜôZi,ìm,0Øì¦@æh> Ü^}PB*¾)àÄì!d=Èà¢§¤õz´yHï^wÎiiæä//TpÝ«-QSôéwDOby£±ã5{;$ý­gq=U5|ÏIêòRj³R^r]¨aIÔÔ²/.æ2ïeL¦Ébòû®Úò3.SÞÙ6\rxÞ/Ö¥RÁûg4ì{dæðG(TTÙ Þz?ô»Õ7hA!ì`ë;N'')b¯;ø#g7ø#íRÏE%)IcêNLU¯¥\nzGO3è.7¤(Ø&Lo),X(×ÈÆ©`èÓL8Sé2;¨AÏ`¾ÑB\0FNÒ4$H4D\0\n ±*ª1;g)ææð,¾wzO2hùÔÙ©¸, SEÂdÜÑCy<Äç!KzØóM×jÙ´Tª-(¢É¤âqwÌÌMa©ÊSÆM!Âéÿj\Zº{ÞSgsÑ<E¢a0z)vÉã>¦ÇÁ3JÁ¤ÀHCÐD)N\r:OÒQÒs|^hODú>îB¨QPâîH§\nôè×\0', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 698.4, NULL, NULL, '5leb1593558972', 'Pending', 'sibbir007@gmail.com', 'Sibbir Ahmed', 'Bangladesh', '01675108504', 'mirpur02', 'dhaka', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PALKIMART', '21.6', 'pending', '2020-06-30 17:16:12', '2020-06-30 17:16:12', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(20, 22, 'BZh91AY&SY:¸Ñ\0¡ß@\0Rø+¯ü¿ÿÿúP<±ÐM:5Sh&ÐÑ¨a12b2\041© ©©A£L@4\0\0Ó54\0I©D=OP\04\0\04\0\09M0	À\0L\0\0" )æCI¢40hè¨õ($-	SÒw@IìO²Ò"xûaéöæH$QÕ9úK1Ì(àåô;.é`Ý,#kz>$ÝRÐ3ÔKkN6ªTÔ7ÜÓar	=_B¾$¹^%8 \0Àä	n$¹ï-ÜxK$Gy	EGàþ°AÔ4%àz	H1gµV1¤b4 (B *â´´ "¤Í(££M l\ZöViJB1¨M ¥%YÐ	¤Rº¨¡¡2aÞ`È"Þr)2A\n`q0PáÊ8ÈQt«s9s&R E0øZ¤#$b¡ÝÂ+"VAB)p¥IWVµUUx%â¾kè)@@ØÊ L¡Z¢,²Q½IaE¢"g±j### À±@PdËÛ³î©	KBN´1qdÁ0U9R]¯øÆ(ÓkhÓ\Z¶±Ë-Tð%(ét=aàÕÝæ¶!L¹wMD¶dXÙ(\rþÆuÎù¼Øù)â\0y¾¸ÐõÙèTÄgÀpýçKòX{Yª*Ôd£ìÕ>F6\ZG%ñÁ99¬øÈò36©#í_uJ)5\r¦c©³x\nK!¯ÄrSÝ¥u04XÈÐÃ hÿ*rF#ºÄÅMèÜ6Ðì36ÓHÀeV0©ÿõ:õC»¾þ¾2X.X£b°ÛZÊçäFÃS"£LÈRL''2Ägi%Ñ%ÎÑè3hñ}v,gººßQßó\Zê	>G#ºU9r2vÔáÀ¡B§pNÔ(üð6s^à6&ÒîÀä1ø#î;ú\\±oyÞ`AÓ0U\ZËÖè Ï2Má;P¿³ì>þf7Üjp@À§Ó»¡ÌÀq¨T×IF¡©qôcñH¤¥¤ bð0¡*`rÍÄ­\n¥éÜ0ò3_É¯h8£44Ì*<ïXØiNñmVß²Á9R@~#P`¨dÌÄ0ªTk`v#µj;djo¦èC>ÆC+\ndr\n Ò¹À\rÑÎ¼ý|íÑókØð2 "ñ¥AF1d(@Y$ZBÚqÏ>0êXª½ga{@Aê''S ª4,D+õ`eÖà*Þ''a·)¹	¤fmP1221R\0ºÌ|R\Z%e*X$c]Yzµ|(IäWÐ÷òCâ37Á¢ÌH\Z½Ê}g§²è aÃ¹ ¤¤\ZâîH§\nWÚ ', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 1, NULL, NULL, 'Ni0o1595921342', 'Pending', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-07-28 01:29:02', '2020-07-28 01:29:02', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(21, NULL, 'BZh91AY&SYI`·8\0§ß@\0Pø;ü¿ïÿúP»=³BÆ\0 \0\0\0\0\0\0\0\0%4D¦\0 \0B¤\Z4ÏTÍC¦LÐÓM\0\0\0\0\0\0\0\0\0H!\Zð1F¡©¦§YÌvô6\0¿qýúv¡rlgªPMÒ! ­Lt]pë8pÔ³ïöFÅ.XÆ{-ª§Ó~µÚZ$¡ºæÉÀÀ35¹X×r\\¯\0q0ñfÃ¾s¾³xõ\Z¸²cyyp¦RãþdáØ\0ÐÁ2a\rx¼KRcå¡Øp´÷8i$2æy©ª* ÑÑqÙ0M l\Z´Vo+@Ô¦LÃW¬æg ¨qLLÌå¨gL2*b*J 4Ê­ØqÁÍ$q r@zHÍUÅ²ÃãlÅfiÅ«M,í8¹dÏ7¡¯ ©p¥IWVµUUw¥Á!}ø)@A@R\ZftÎf%:8m4azB6Mh2ËH3µ8!@P´¡E©­»¼k»;`®"tG¹ÉRTY\\pqÄ]ífðløsq£{|5nZE\ZÀUm`|I¾µ¬Ù¶Ä£6kSÞrú¡NÎAcz×Îr³Æsã4QÜ\0uçè2`öánhº%´×Îh«U6¯1!SÌÎ~c=ÇèA¡ÚäÅ\r´ø/õ5TsÞ½õ(¤Üso5ÆÏ¡ò9ê,sY|Fá\n\rtÍ¨±¨Ã hó©Ùx`±2`Ó`k0\r´7\ZME³ØjIYj21¼ûüFNí°îï»/\nØª6î+Y\\Öy£"£LÈRL"FcM%ÏLà<Æk/M;)¤&Ü7:|ÊPí*y*q0wÖ@ùÉ%Á8ÈP>Å%âz#im.·8¡D ñFÔïàîS¶÷\n"Ù¨Ö¯[¢=	7ìBàº\r6ò"»Ñ\0§>^#Z;\nH°Ö\nªrRÍÅZX* L2ì`Ê¢,ÔJÐX¨U.âÀ±ZÆcB×ÄZ6£$4ËÔ0:{	è±°Ó0=XûtÉçäk=g#â¥CiÌ<Çõ:Øi¶Tò5hªTkXuFì·ÙÎ×gæÒÈeq%¥§bÒ2É<''26Äóü|-ÝôzOj cÏK3! £&\r	µCÔh:éå®Ôº\n«ÖZÆd  £BÏTn.­àu3Ænai¨È22¦ø©C]hT Y5ìKîÂú{ùe¤ê¸%EE\\ÉûÒ\0a\nâosD\nçðI\nõ^)î<z!fCì99<èÐPä?ñw$S	s', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 240, NULL, NULL, '9iZh1595921467', 'Pending', 'junnuns@gmail.com', 'Junnun', 'Bangladesh', '91534534543543', 'Test Address', 'Test City', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-07-28 01:31:07', '2020-07-28 01:31:07', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(22, NULL, 'BZh91AY&SYZb~¦\0¨ß@\0Pø;ü¿ïÿúP»<5j\0 \0\0\0\0\0\0\0\0%\0DÔ¦(\0Ðé2hb\0))ªh\r=C@\Z@Ð\0\0\0\0\0\0\0\0H!\Zð=	 iz\Z\nhûcä|Î î<ç¼b>_4Tës(êB}¥êps=ËºX7EB.¾Êd{uKBÔBfe²e]©Õhës''\0ÌÔræIc]È-r¼\nn@Ä âl17io¡¬ò6	iI¤w!!zýp6 ëp! FX\Zhhµízhð<HIHT@YÅ©y@b~QJÒµ+Æ;ép\ZBvÍµÁ§¨NBi*¾ãÈl pÂ®f&ÐÀRÁTFTIyG TWyÈ¦ÃlA\nXãYC°q%ÌÈ¥Ò-µí`·8s E-îY°d¨EFwp¹+\0Â©p¥IWVµUUw¥Á!}ø)@Ò!¬ò>3YINç6L0ÑÅ5¤XAÓÂÒó}Ã×7ðâHÔH¢Æ"ñRT»tð»ÜÞïUµ\Zs`5lhSJjaÌÓªI	tÍMpk9Î(ÛbÅÌa5i3³X£ ìâyÎõo2IgÄ\0ë?ÍÌ`³ák£ ¼óYrø3Z*ÕF\r¥kÆÀÌ@HTó3Ïyùijê~H4s8%?Aû9ãYÅ8Éçtñ7cgÐùõ9¬Æ¾D#pÍO×]s`j,dj0È\Z<êvF#Þ,L4Ø\ZÃm\rÆQlö\Z¤''aZFo>ä?»l;»îåKã%¤¶*»ÖW5fg¨È¨Ó2#ÈÓA	d3Ä`x1ÇåSNÊi	·\rÇN£_2ca;JfLõ>rIC°N\0rqgÉxÚ6­Î(c<QÆu;ø{æ-½ÂãÀÈ¶a$ª5§+Öè ÏBMá;¸.eM¼®ÀôfÀ)Ï¡×ÆÂ,µ¢Â¡j¢$óqV¤eV\n$S»2¨Ë5´ *K¸¤p,V±ØÐµñ¨É\r2õÂz,l4Ì`Ö>Ý!²yüMgÈýÃ¨m9þ§B;\r6Ê~&­AG¬:£v[Çlç\nk3ÜÒÈeq%¥§bÒ2É<''26Äóü<-ÝôzOj1êH%HÂ\nP¡¤Á¡6¨z]<¡ÚAUy±"á(Ä¡³ÕAÛ«xLñ`FFj2©¾*PÁ`ZÁ(FM{}Ù}C>2Òu\\¢¢®äýÇÃi\00q7¹¢sø$z¯A÷=³!ö8øühÐPä?ñw$S	¦''ê`', 'Cash On Delivery', 'shipto', 'Kazipara', '6', 1440, NULL, NULL, 'ZY4j1595921795', 'Pending', 'junnuns@gmail.com', 'Junnun', 'Bangladesh', '91534534543543', 'Test Address', 'Test City', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-07-28 01:36:35', '2020-07-28 01:36:35', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(23, 22, 'BZh91AY&SYI`·8\0§ß@\0Pø;ü¿ïÿúP»=³BÆ\0 \0\0\0\0\0\0\0\0%4D¦\0 \0B¤\Z4ÏTÍC¦LÐÓM\0\0\0\0\0\0\0\0\0H!\Zð1F¡©¦§YÌvô6\0¿qýúv¡rlgªPMÒ! ­Lt]pë8pÔ³ïöFÅ.XÆ{-ª§Ó~µÚZ$¡ºæÉÀÀ35¹X×r\\¯\0q0ñfÃ¾s¾³xõ\Z¸²cyyp¦RãþdáØ\0ÐÁ2a\rx¼KRcå¡Øp´÷8i$2æy©ª* ÑÑqÙ0M l\Z´Vo+@Ô¦LÃW¬æg ¨qLLÌå¨gL2*b*J 4Ê­ØqÁÍ$q r@zHÍUÅ²ÃãlÅfiÅ«M,í8¹dÏ7¡¯ ©p¥IWVµUUw¥Á!}ø)@A@R\ZftÎf%:8m4azB6Mh2ËH3µ8!@P´¡E©­»¼k»;`®"tG¹ÉRTY\\pqÄ]ífðløsq£{|5nZE\ZÀUm`|I¾µ¬Ù¶Ä£6kSÞrú¡NÎAcz×Îr³Æsã4QÜ\0uçè2`öánhº%´×Îh«U6¯1!SÌÎ~c=ÇèA¡ÚäÅ\r´ø/õ5TsÞ½õ(¤Üso5ÆÏ¡ò9ê,sY|Fá\n\rtÍ¨±¨Ã hó©Ùx`±2`Ó`k0\r´7\ZME³ØjIYj21¼ûüFNí°îï»/\nØª6î+Y\\Öy£"£LÈRL"FcM%ÏLà<Æk/M;)¤&Ü7:|ÊPí*y*q0wÖ@ùÉ%Á8ÈP>Å%âz#im.·8¡D ñFÔïàîS¶÷\n"Ù¨Ö¯[¢=	7ìBàº\r6ò"»Ñ\0§>^#Z;\nH°Ö\nªrRÍÅZX* L2ì`Ê¢,ÔJÐX¨U.âÀ±ZÆcB×ÄZ6£$4ËÔ0:{	è±°Ó0=XûtÉçäk=g#â¥CiÌ<Çõ:Øi¶Tò5hªTkXuFì·ÙÎ×gæÒÈeq%¥§bÒ2É<''26Äóü|-ÝôzOj cÏK3! £&\r	µCÔh:éå®Ôº\n«ÖZÆd  £BÏTn.­àu3Ænai¨È22¦ø©C]hT Y5ìKîÂú{ùe¤ê¸%EE\\ÉûÒ\0a\nâosD\nçðI\nõ^)î<z!fCì99<èÐPä?ñw$S	s', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 240, NULL, NULL, 'fdq81595934628', 'Pending', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-07-28 05:10:28', '2020-07-28 05:10:28', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(24, NULL, 'BZh91AY&SYÉ8õ\0/ß@`Pÿø?ÿýô¿ÿÿú`Ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0dÉ£ÄÓi0LM4Ð8ÉF!¦Ó`i q&CL	¦Á14Ó@j§þª\0\0\0\0\0\0\0\0\0dÉ£ÄÓi0LM4Ð\n  ÐL	¦I¦i¦¦hõ5Oi#Êza"Hêl$x§èþÏðù7÷WzÌ¿EÝïäÿ\np|Ü\\5Û?»FWzÿOµ£ójêu5{\r\rÛºe»Öö©Ü§[wÁ	H\Z¤`I(ÒJI+©JRB¥ER¥%àéÂIÞ°í¼A3AzC\ZWT$Ù\0\0\0\0\0\rI	''pT\\è®A´`2%0wp]Æ¡ Zj\ZFm©` ºáNALBn\ZU)''þ à\Zd8Á>¢IäÁªYÐÞaaÒ\nN¨f®¡IE¨¡èp|NOúnrSnJ^Iâñ=êS­NçèÝÅbé¸;n\rºK{ ¯:$''Ò_µM^ô#X:wYNn·Zw%=.L»Z9´zÜOBË''k¹v½OQ¬¨÷;yYt·znêv;nô;:4v90»±«fÎ6Í[7hèÖýoØñ5ùÕ¬²ôpªù=¯7Æ«­è.ê>÷+ÐºÍeLãE>Ö2ËÎ²ËßôOS©g »ÁÍÔúÕUaÁe)e¬pI£Ë?RÍK)Ù½ÛRï63övk$IðîleB.I!6¤\Zp­ño÷­·\r{âV÷âÁkb±aÂfL¥))F}®îå.Ë:Y;ÖR¢AÍD\rUº¦K*qW5$I2¦[È8)	v\\ð\r×E t¸©y"4ARCS¤¸t¨0¸j!26_¥s¡ÒÙKu0Þh²Ó¦Ä8Föÿu0¹åûë7,\r©¥*"^ñ×AK°eà/ÀPuÜ()ÈZ.²®eEUdµ¨7u²äÙ«I$jØØÑFÚÕd.ÊZ"Ë´¢\ZNÖË´ ¦,Pbûà2\Z|TÑsÄÑu:Ú:ÖieµIO¹¢ò!ÓAJª\r æpX.æ \nPP¢ápÈSBüØSæèt;³µgFíÃww2\nr4¼FZ2êeÑªòéRPÞh²ôB §Epà¶¼6ºj«7pÝüÙ³ÔÑ8éÁÁp±ÅÛS^LA((\n°k¸\\06âþ\r\\T×cÚaØë^_îj,!@füîBë²º3IÉ¬ÄnDÈP4(\rÕ^\r4Ü3C!Z!SïouYº¤oh*]l¯6Jy\nLX%­]Ú!»@Ñ\rjÿ§±w4H-Z0m ´/ Ì\ZA¤AÛà´HA«´àÈ,ÓE\\,ØÑªhafALµeBÁ(6\rZ\n!£p,¡¸^p7lÔ5@¨,ÐnØ4\rÀÐ&Í	Ü6Ñ`àd5\rÃ!ÝªÁÀ\\&P,Á¬ÁpÐ4A¸LÈ}Ñ"|dåLû1,T´PX±¸^ðI`³úZ®\\,A`©  ©!x-`P¨3-0`ÁbÅÚP^ÅØ-REË°Y%A)@´T ¥@k\nT)!J\nPZ°BTÀTº¼T©h$°X²,$ ©\n¨:¢uE¤"çÓ¦µº³|õ_Âd*¨da\nÐ2C0j\Zàá8 ¸]$â¸\\4\r8é¢IÄ,Ä$!¨Z ¢q\nÒfk-E\\6á¸7\rBÉ&¡HP2\rÃTvK$¨P/zIÌÚÒ"­e¨¬É5\n½è6AÄ8á°j\ZA\\0\rG«2âÁì6p]v®!áÄ''\0Àl\r8Ùk/Wª]mJÂðX0\nE)e ÿãÚö»âËÈºÇébÏ,~Sì{^''7c/ü>×îÁôAÞîyß¶×%)Ôø¿7õ¼®Í£ø,hþîçæüÅø¿£wÑ½ÐæÂÊ]ü×\\{`ñ¿4Oö§üÀYú;uAN(õñ;Ù\\x<Ëìx ò?üÿOSö½ï½Úù=¯;ù)Ûý` ú¸xK!¸N ùä\n	  ¥ ¡`¥Ú¾å×]wô@Òé{ÌTÁâÖ²aÜìX4ÁïX( úáÚ;È ûsó@Aõ¶y%*Cò?\ZµyßÍOÉöeúAàÑî=F(?ÜÏì¹uÞÌô)NpxÌÁåô`ÀKÁ¬Òø(20y^UaSÄTl;Pç@»Â& <GñJQûÍN(`ì8³H!ô\0ãI¼\Z:`ërî!gIå¡ì6­ÕÊÈ''D)²Y"PTH³º	³cqAâ¦ðf¨)×9Ps}-Ô}GHhÎáÉx.{¹Ð uA`P9¤¤È-°Py` \\40X(5\n\rCÆY&ð\\µièa£ØkAI$`ÀÁ*1õ88<pq@»Þþ0j²\ZðZN§<­\ZA{¿Ë2YgHd; °IÕAÓ©É«µÚ¥m ,äpU ¨;  äÃ0l&ê\rC¦	ÀxÃÉ`~PT!©«U&Ð\Z7Ö	¸s<ðs\rÏõµx)O9Ð¨:wÀÃ±p¹tøºï"m°SÈáXSð¥Å*¥0ÝÐpÐPó¿àõi¡õ®õ®²BêoÃà	ÚB\\Üù¡ë;®ýOùÖ\n\n	üªBBU"!U$%RKTB-J¥R©TªU!Tô¡Æt p.X<ï:PR(((ï{Cïjø=f¡ð	í(?aò-Ü­´¨=GÈ/È:@¼¨aÐ[W`Ü#X8­ÚÿfRiäôrzT¨T\nYJQàÈ8àúöz7=¯r`9''	ÉÞÁ,QPr~÷ÉúçHsAÄ1np%V §Já°!<AÉ{Ô§\0KAø¸ÐnAsAÄ&ï<\Z484\\=¾À¨)ÊÌ¨~çîu6/­ÂhH4Àäjy­é]fíâ?íÃÞp0£¬ä«A@Rê,]ÍPd&Ðd°d*È8°f\0XÌ(¸	PhvI!)HNw­ÞöAö²µõÁÄë	ÍÀ,|A:P¹õ¼­Êlèv@Yf¡ÀTÁÞÁÒ\Z×ê<@N°ÑA*)''täõ;SÁÜ\Z´.þË:øÚÒòAÎÄðw2ÖÔ°QþAê.}ðtÁæ0PPRX2vÎµ7ÒÑÒê4v"Dã$ UÀé9ñK)Où¶^ð .¨O''Ö¨,èw:C¾\r`æ\Z©;´?6`,ê¤í Ø-ì`0>ÇXö»; ñ!.Ï9AìÐZ=ÐsÎ¡ûCÈ\Z¼(=¡AðRI''ïAPT Wâ)H T*\nEDAI$UHBX($¤PHªb¸8ÁØç =%,ÀGýµC¸\nPOp&xAä=N\nJS''¡`ï074X2 t@¥ÝíIPj0°0X>¦	MÎn!ß¤rHÀx¤&Tº6Á ÁÌÈ; .CHAJBN;`Z\nÈ4.¡`Ì1¸MÀÙPt¿épó@m8@s\n	ûä=	5°P;C¶\rtAé	Ð\rÏsÜî5<ç¹¨OL@O)¬Ã+ÁúÉpó3ÐûÍ ï>ApMnj¡Y$\\(;B¤AL0á Äûßk´äè°tÔ:ÏY>oòÇâ|\nAARÁH-jCÿEÜN$2FN=@', 'Cash On Delivery', 'shipto', 'Kazipara', '32', 4000.6, NULL, NULL, 'QXUQ1596183250', 'Completed', 'kayedislam@gmail.com', 'Kayed ul Islam', 'Bangladesh', '01716777660', 'wasa road , shewrapara,mirpur', 'dhaka', '1216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2020-07-31 02:14:10', '2020-07-31 04:55:41', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(25, NULL, 'BZh91AY&SYåw\r\0_@\0Pø/»ô¿ïÿú`ÿ}\0\n U(¥(ªD*9`\0&\0\0\0\0À0\0\0\0\0\0`\0\0	\0\0\00\0L\0À\0\0\0I\Z4IêzM &14ÑIiTôÒa\r144Æ¦h²Ð?''ùwüyBGÅ±øH¢òBûöGÎ&6âÅ{Üu#ËOÊT¼8~¬§VV«\r)³£â£8lÑÕ³K07v0ÂpË+8OÕG-4¤è¹àÚeÕØYØËeçiîz½Y6;Ýbæîiå-â$ÍÓ«Áêluuy=§àåËÞñ|V\\§XäG´´ø0´þ4_\\½ê¥jlÉiï| êPn©.TL¥E"¤åªur±RM(¥I2-Iu¬©¦4Á76Y©¦.ÙËfZFÔ¥*£QBR¥\nM,ÂítBÏ¤§E&¢¤ÓfìF¥×bJP³®»½¶2¡ªSM0»îYõµ4±J´ËK®Â¥í*S7b!qbã9hiÁ¹¹¦7¶iÄÞãleåf,qêMÚJn³g,¶pÓæMÓ"¦Ë¶¦l2K&8lÊR]×lÝI§L630¬Ë¦É¦¦S/4ý÷"ð$ "0Ø¢|JBSJJË1©bÇ×0Xy¨±KRÈ]HB# 4 B+KHR\nZÒÎùß;]Ç{¶ÒCìï´üeJ.ÂÆì+X2Ìïis*p¹ì]våÃc£ðtl´ètXèÒÍÎ\\á¥)FN²iEÓÅÚY³£µ9raFîTåË§F¬átZkCôôYöOå.öN¯®{»Ïáàes¹ÎÔWÖ''Spuã&1®ÆPä1Ôá4ûTx#*L)I4Ùgd´n|ÝÂÇS±ó\n0!¸iÚó¯8w>¯£ö%åsìÙKÏ	<;^ÒYØûÔÝ£Èé*?´´NfcLH{TÍN''YÑÃ\0o\nÐ½Ö&4ÈA®Èn®ögË;''|ÙÚîw..æ]eM''qÌà£ÀýË%¤²²»^)²=¯&8\\ÔR¦ÄÓI´ÿû;''é4A`lØ³<0À¸Üh\\Ìx.D2]²§|§\n|Î®æd»OGî~2£KªO¤î:<g*lî,SÑêüßzÉIï¡ÊBÌ6 é6¼=^`õz½ÏXQRyO¡J*^|ïRï|%çùæòÓ« ¼¼aQËÌ¶F%?ÎðØÌÁ@q Aöpc4¯YL¾G¬ùrM,øò4Ruhe^]ÊyË¼ìÚ^l¦¦%ÄÇô]g5(SRée¥.©íÓia_aHeGI¼ó¬ôt£Û\n¶Ïã.òN)*nvJN\ZqG	¸ì|C\Z6]øÐ±há0<§WÜúiIêï#üÛ)§Yí,=Büès*ehºås*Y,|Ò	{­¦nÓ{´Ì|óÒ\ZäÐ1@ÉÒF11R*ÈÑdK.gÎj,¼z)ôÍ5; ´³i.&%NÇm§2|5-&T¦çºv8]³vñRÎÈ´¢&§3¼Vfby¸NçYO8ja6E''Ô½&Îâµî¹u*yCpÜ4^:Ð£ScüÃYºúVÆÀPiO5BÓ¬âZRz7e8eõç(S÷DxøÞAAB2þ.äp¡!?Êî\Z', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 970, NULL, NULL, 'w8JC1596613170', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:39:30', '2020-08-05 01:39:30', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(26, NULL, 'BZh91AY&SYåw\r\0_@\0Pø/»ô¿ïÿú`ÿ}\0\n U(¥(ªD*9`\0&\0\0\0\0À0\0\0\0\0\0`\0\0	\0\0\00\0L\0À\0\0\0I\Z4IêzM &14ÑIiTôÒa\r144Æ¦h²Ð?''ùwüyBGÅ±øH¢òBûöGÎ&6âÅ{Üu#ËOÊT¼8~¬§VV«\r)³£â£8lÑÕ³K07v0ÂpË+8OÕG-4¤è¹àÚeÕØYØËeçiîz½Y6;Ýbæîiå-â$ÍÓ«Áêluuy=§àåËÞñ|V\\§XäG´´ø0´þ4_\\½ê¥jlÉiï| êPn©.TL¥E"¤åªur±RM(¥I2-Iu¬©¦4Á76Y©¦.ÙËfZFÔ¥*£QBR¥\nM,ÂítBÏ¤§E&¢¤ÓfìF¥×bJP³®»½¶2¡ªSM0»îYõµ4±J´ËK®Â¥í*S7b!qbã9hiÁ¹¹¦7¶iÄÞãleåf,qêMÚJn³g,¶pÓæMÓ"¦Ë¶¦l2K&8lÊR]×lÝI§L630¬Ë¦É¦¦S/4ý÷"ð$ "0Ø¢|JBSJJË1©bÇ×0Xy¨±KRÈ]HB# 4 B+KHR\nZÒÎùß;]Ç{¶ÒCìï´üeJ.ÂÆì+X2Ìïis*p¹ì]våÃc£ðtl´ètXèÒÍÎ\\á¥)FN²iEÓÅÚY³£µ9raFîTåË§F¬átZkCôôYöOå.öN¯®{»Ïáàes¹ÎÔWÖ''Spuã&1®ÆPä1Ôá4ûTx#*L)I4Ùgd´n|ÝÂÇS±ó\n0!¸iÚó¯8w>¯£ö%åsìÙKÏ	<;^ÒYØûÔÝ£Èé*?´´NfcLH{TÍN''YÑÃ\0o\nÐ½Ö&4ÈA®Èn®ögË;''|ÙÚîw..æ]eM''qÌà£ÀýË%¤²²»^)²=¯&8\\ÔR¦ÄÓI´ÿû;''é4A`lØ³<0À¸Üh\\Ìx.D2]²§|§\n|Î®æd»OGî~2£KªO¤î:<g*lî,SÑêüßzÉIï¡ÊBÌ6 é6¼=^`õz½ÏXQRyO¡J*^|ïRï|%çùæòÓ« ¼¼aQËÌ¶F%?ÎðØÌÁ@q Aöpc4¯YL¾G¬ùrM,øò4Ruhe^]ÊyË¼ìÚ^l¦¦%ÄÇô]g5(SRée¥.©íÓia_aHeGI¼ó¬ôt£Û\n¶Ïã.òN)*nvJN\ZqG	¸ì|C\Z6]øÐ±há0<§WÜúiIêï#üÛ)§Yí,=Büès*ehºås*Y,|Ò	{­¦nÓ{´Ì|óÒ\ZäÐ1@ÉÒF11R*ÈÑdK.gÎj,¼z)ôÍ5; ´³i.&%NÇm§2|5-&T¦çºv8]³vñRÎÈ´¢&§3¼Vfby¸NçYO8ja6E''Ô½&Îâµî¹u*yCpÜ4^:Ð£ScüÃYºúVÆÀPiO5BÓ¬âZRz7e8eõç(S÷DxøÞAAB2þ.äp¡!?Êî\Z', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 970, NULL, NULL, 'lTCS1596613184', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:39:44', '2020-08-05 01:39:44', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(27, NULL, 'BZh91AY&SY¾Äã\0¥ß@\0Pø;[ô¿ïÿúP¼¶°\0¶\0\0\0\0\0\0\0\njjM24¡ \0F	5HF&\Z4`@õ£LLC\0\0\0\0\0\0\0\0	 4¦õ<\03&RBÂC`ü IÚOñô"&Ñ,Õúkþì×0dKf¡!ù,£Pl.ÐqIm)÷û±¢2+§fÝiª§ÒêcÛ-àm\Z4J^PÈãÌ©SV±Mä÷ \0Ì ¨f\\o<Êj;CQÚ%M#Y	¥ êÓ¤Sñ6!"Æhd#!fJ¦0@È°ÉP ¶³|"¢n8°ÑscJÉm`Õ¢rºG Æ@¼\\ËP».îÌ!d0Â±w''LÅLE`ä:jhÜc qÁÍHã@åYÆ@éRsT¤Ù±ÑÚ½A£JdLdc]`Rêrå2x	¼ªì\np¢ZX®äÒ¥^¾É¥u\nE ,ªÒÊª\n`²åQEp2ª ÈÀ¨e±&ÒÇ¬ÖòÔkÊ\0Bòc\\Úv*J¯p¤Í7,±±0Þ	|ssw7·ØÔÁ«rÙ5T[µ[äëZÚÎ	cm4bÞqö¡§X>Êr!ÈL©ó\0>áGaùñ9P¹WäÌF¨0m*Ú1:%ýô>¤:ÍA¸ï=¡û}cZKÊÔ¡´Ät2ÜM>£¨f±\ZüKfË¦#sARóAuàÑëC/ÇM÷5÷FÊeµjÉC(µÜ{ûKOvvßÆv¾EBÝZ«OcI°À Ó0Hp],HJñ	EÐ3Pï|èc®zUÏqüý¤HèÖþ&Êºä@øÈ3·æ\rNâàâ(}E§ü¨Ú@K²Æhc:¢áì:KÅºfã¸À»HHÿJ*µ§íz&3ÀKbÚ6nä[Wh|t7ZöÞ1c¸R" Iö).ðGÌværÇ-iQ#â.]\r§¨¹²h(2âK\Z''¢dÜ(<LV¾"Çr1@Ó-@¸çìKb¾£L¸ó\Z¿ÓdrÒfQ(23_éÞGØ~§;e<\r:(ÚÈ9¢ã±mp6§²Ï&)\nR"üB Ò±\Zâ±ïç^ñAúoäÈBb0ÈPdd%2 Á6¤k09c"â*/µ4,EäÈÃ(0| Vç3,%q}é¤bd c *`a,âËÁeø"Â¨Á¯½Ø[!¸a ìY%55Y¢=ÌÉûâ\0aÆ^&á¢K5Y¯ò:óBûîî¨Md¤\Zñw$S	éN0', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 470, NULL, NULL, 'Gort1596613431', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:43:51', '2020-08-05 01:43:51', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(28, NULL, 'BZh91AY&SY`B;\0Ø_@\0Pø+oü4¿ïÿúP»Å\0HU\0AÓ\0		\0L\0Ãb`00\0	\0ODõ(Ð\r0\0zê12iê49¦&\0\0\0\0\0	DMBd1\rL6Põ=MÔ\ZzSîVsy7ät¦´Ú­¥Y9úL,PÉkó÷#¤ó!&¿æaï¨\rö.ì£wúfâ÷¨²1²Òª4_ñÜÚ	;+nzo ë''wÅcÞxw³K<Á&<Êèó0ÔÐÎà9Ù4»8ÚXVñSÀ²j%¸}ÃK¤*ïY±ÙxÉHàA	¡¡8Îl©£AÜdÙûFáÐ@jã[m*cbnÕ5¡H.;&	´\rVÍÿ@É­ÑsxÈ »ÄÍÌÔ0l-33LP"Z-6µm	XÐÃV³­F|  Ð±b`\n0\\ÐAÜ°Ï)±Âu½Áæ³&L¬BfmÈR²lÞÉ¨µñT+äZU°QgD¬+ÞÆzIÑ:(Kah¶FXÀ¿k0¶ãX¶2f°Ã%u^B±rUC@-\0hlØøxwxT¤- ? ÆpÙQj*ÇuäåE\ZêícÎ1­Í¤ÐKlA±´Z2ii4¾F,Ë²VTV#6ÓM/s]K3:-''kb2Md¹!øúyûÌû·\\në`àq3''uôDÌìÆ£àÐåÎøØÞ~GÞQ_üÏÂÄ½~Lê©ª6ø3RÇñ«.ek~Øh½¬Ó\ræ·ÕÍ±µÛi1âs_RrFÃ£xËQ¯È²Xþ{XG{bæÆtÒhÐxY4`Ó`ouã}ûà#$Å5¼ÐÈÅÈ?WØd÷øÃÃÇ;hfKLCaCm`Uuê~ó©CLÔRLÎÄ% ÎÄFÃÜ3¸z?*6ãmÁ7çà}>G"ñêms.üY$±Ø''ÔgÔVzÁu^óì{ÆÄ%éÄB`ÈÓ=wkä/	;ÏqÛ¬Öºb°AÌ±àÁÅy\rzùâobS¸yö=ÞCb=E$\\	kÊ"IÜºt¸Ë­QbÓQ*`rÎD· $).Àµ\\3ào\\¼Å¹Ñ²4\Z¾¤ûn4Ì­7qE¼èRPp9ÔS¡æØQcmihÜQÉqõ8­ÝýQ\nd5\nA¥À1{u¿£ò_Jk*¥o-b)d²ÅYb@Ä6¡¤ÁÒ!©8[sW$ºÜQvn!`%\Z"Nj}7Èß¤àÎSHÔÞ c .jk>1E¬Ãæ,F­}èÿÌXà3ãÔÎ»EÌ>Ä¥JetDs''æ>\0Â4oÅ¢3c$a4ìVç©Åæ´KKS¸ñw$S	´#°', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 275, NULL, NULL, 'yYQV1596613698', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:48:18', '2020-08-05 01:48:18', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(29, NULL, 'BZh91AY&SY²²O\0©_@\0Pÿø+ô¿ïÿúP¹¼1f6v NBÂQ\nhd\rA¦\0\0QDÕ\0\0\0\0\0\0\0P¤§êêz2=#C@L Ì\0\0\0\0\0\0\0\0 MSÑ´Fjhh\r\0z)A!a!ÊuS¾Dý""sõ	f¸}Íz,ÔÃA-âCv9eâXY×éº{ZPf1\nÉL{)r²æd=qRmìw¤|)B¦$Lî±àhHÔçàL©·\nØ§}è\070:7=	\nû²I¤y¼üàìÓ¤R1u#"\r ¸4ÐÅ¯yª1ARH(B *â³¤Ã±Øª°"é²öa}dB,eeéh$¨Èw3P­C2îôÂÈc\nÌË0\n*Ûº3BÌ,¨èÝéÛ eP±RArD%EéÌ!Ôù»Þ¥#0Me\\t¢3Ã"¥+ZD»ª4\\ªJD1tt}Ô¦~	p"ÀPÕ\0ýYBµE0YrQEwEUAeñ-I@QÜnv÷\rÛjBb	-Ðc6ÊL¤Ïud¦cá#J±©&PÄRÅÚ¥â*^AÜ*±Ic½íY¥¤½ÚÉµ.â´Ð©upÉ	ä åÖ8r¾O&(¹/\rwVø3TQªJ¶ÄÍ³ýÆ|#3i¸³11\n4dF¤Õ8r4®È¡¯*iè:C_	bLáÄw°3*\\ÌÂàÑéC.;,ÃPÃ\0ÐÚ¡±muQj\\ÀgÔÔd´ãÎÝûÎ×P¡&ÅA·aVªÆçúhp1(4ÌE"R$^y#:0FAè3aÝøPÏÝ<ÂUß¼ùÿ±©:5¿3Êºê@ùÈ3§¼\Z\0s~¢Óì{Ò´ÒÆèc;LèuølOÀ]Ò;2äs	Sk+ÚDÆ{;Â[!q^#g©ÝÌÃ[{3¸\n*x\\0¬u¨k*eh,Vç"{ÁR\n«ª üBdäË±(IDLàIhT Q.ÂäJäf¸x-Ñ\ZgÒT(åaxTR¤T~G-¿P¶<Â¡v2ò/¡Ì£M²Ä3¢SkälsÉq²8gÝg½¥ÊB¾#!Aæ4¬r AcÇ/OÍïÉèÚÄd¡dd%2 Â,³qØ8;>\ZðÔV¦d  rdBå¬NNï\nÃ¹âk°/tÒ25P1b±2Þ(LÁ`Yä#¾Ä½X[Qs0ÇC¢Ü!)©¨²Ýþõ.&Ä¸âÑf¥Ùü&r\\Cø7ïâPRR\r''ñw$S	+$ð ', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 560, NULL, NULL, 'kCJz1596613982', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:53:02', '2020-08-05 01:53:02', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(30, NULL, 'BZh91AY&SY²²O\0©_@\0Pÿø+ô¿ïÿúP¹¼1f6v NBÂQ\nhd\rA¦\0\0QDÕ\0\0\0\0\0\0\0P¤§êêz2=#C@L Ì\0\0\0\0\0\0\0\0 MSÑ´Fjhh\r\0z)A!a!ÊuS¾Dý""sõ	f¸}Íz,ÔÃA-âCv9eâXY×éº{ZPf1\nÉL{)r²æd=qRmìw¤|)B¦$Lî±àhHÔçàL©·\nØ§}è\070:7=	\nû²I¤y¼üàìÓ¤R1u#"\r ¸4ÐÅ¯yª1ARH(B *â³¤Ã±Øª°"é²öa}dB,eeéh$¨Èw3P­C2îôÂÈc\nÌË0\n*Ûº3BÌ,¨èÝéÛ eP±RArD%EéÌ!Ôù»Þ¥#0Me\\t¢3Ã"¥+ZD»ª4\\ªJD1tt}Ô¦~	p"ÀPÕ\0ýYBµE0YrQEwEUAeñ-I@QÜnv÷\rÛjBb	-Ðc6ÊL¤Ïud¦cá#J±©&PÄRÅÚ¥â*^AÜ*±Ic½íY¥¤½ÚÉµ.â´Ð©upÉ	ä åÖ8r¾O&(¹/\rwVø3TQªJ¶ÄÍ³ýÆ|#3i¸³11\n4dF¤Õ8r4®È¡¯*iè:C_	bLáÄw°3*\\ÌÂàÑéC.;,ÃPÃ\0ÐÚ¡±muQj\\ÀgÔÔd´ãÎÝûÎ×P¡&ÅA·aVªÆçúhp1(4ÌE"R$^y#:0FAè3aÝøPÏÝ<ÂUß¼ùÿ±©:5¿3Êºê@ùÈ3§¼\Z\0s~¢Óì{Ò´ÒÆèc;LèuølOÀ]Ò;2äs	Sk+ÚDÆ{;Â[!q^#g©ÝÌÃ[{3¸\n*x\\0¬u¨k*eh,Vç"{ÁR\n«ª üBdäË±(IDLàIhT Q.ÂäJäf¸x-Ñ\ZgÒT(åaxTR¤T~G-¿P¶<Â¡v2ò/¡Ì£M²Ä3¢SkälsÉq²8gÝg½¥ÊB¾#!Aæ4¬r AcÇ/OÍïÉèÚÄd¡dd%2 Â,³qØ8;>\ZðÔV¦d  rdBå¬NNï\nÃ¹âk°/tÒ25P1b±2Þ(LÁ`Yä#¾Ä½X[Qs0ÇC¢Ü!)©¨²Ýþõ.&Ä¸âÑf¥Ùü&r\\Cø7ïâPRR\r''ñw$S	+$ð ', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 560, NULL, NULL, 'aaiT1596614179', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 01:56:19', '2020-08-05 01:56:19', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(31, NULL, 'BZh91AY&SY¾Äã\0¥ß@\0Pø;[ô¿ïÿúP¼¶°\0¶\0\0\0\0\0\0\0\njjM24¡ \0F	5HF&\Z4`@õ£LLC\0\0\0\0\0\0\0\0	 4¦õ<\03&RBÂC`ü IÚOñô"&Ñ,Õúkþì×0dKf¡!ù,£Pl.ÐqIm)÷û±¢2+§fÝiª§ÒêcÛ-àm\Z4J^PÈãÌ©SV±Mä÷ \0Ì ¨f\\o<Êj;CQÚ%M#Y	¥ êÓ¤Sñ6!"Æhd#!fJ¦0@È°ÉP ¶³|"¢n8°ÑscJÉm`Õ¢rºG Æ@¼\\ËP».îÌ!d0Â±w''LÅLE`ä:jhÜc qÁÍHã@åYÆ@éRsT¤Ù±ÑÚ½A£JdLdc]`Rêrå2x	¼ªì\np¢ZX®äÒ¥^¾É¥u\nE ,ªÒÊª\n`²åQEp2ª ÈÀ¨e±&ÒÇ¬ÖòÔkÊ\0Bòc\\Úv*J¯p¤Í7,±±0Þ	|ssw7·ØÔÁ«rÙ5T[µ[äëZÚÎ	cm4bÞqö¡§X>Êr!ÈL©ó\0>áGaùñ9P¹WäÌF¨0m*Ú1:%ýô>¤:ÍA¸ï=¡û}cZKÊÔ¡´Ät2ÜM>£¨f±\ZüKfË¦#sARóAuàÑëC/ÇM÷5÷FÊeµjÉC(µÜ{ûKOvvßÆv¾EBÝZ«OcI°À Ó0Hp],HJñ	EÐ3Pï|èc®zUÏqüý¤HèÖþ&Êºä@øÈ3·æ\rNâàâ(}E§ü¨Ú@K²Æhc:¢áì:KÅºfã¸À»HHÿJ*µ§íz&3ÀKbÚ6nä[Wh|t7ZöÞ1c¸R" Iö).ðGÌværÇ-iQ#â.]\r§¨¹²h(2âK\Z''¢dÜ(<LV¾"Çr1@Ó-@¸çìKb¾£L¸ó\Z¿ÓdrÒfQ(23_éÞGØ~§;e<\r:(ÚÈ9¢ã±mp6§²Ï&)\nR"üB Ò±\Zâ±ïç^ñAúoäÈBb0ÈPdd%2 Á6¤k09c"â*/µ4,EäÈÃ(0| Vç3,%q}é¤bd c *`a,âËÁeø"Â¨Á¯½Ø[!¸a ìY%55Y¢=ÌÉûâ\0aÆ^&á¢K5Y¯ò:óBûîî¨Md¤\Zñw$S	éN0', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 470, NULL, NULL, 'Fte31596614540', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 02:02:20', '2020-08-05 02:02:20', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(32, NULL, 'BZh91AY&SY?Ð»\0³_@\0Pÿø+Ïþ¿ïÿúP¹¼c°A `\0&\00\0\0(&¨z Èh4hÓCÔ\0\r#@\0\Z\0Ñé2\09L\0\0À\0L\0	£Q 4SÔýMCÉL($,$<Ç\\	9û=äDúó	fì9Î^[7Ì4%³púÎYFá,,àûÝ<: áÂµ÷S#Ü-	"ÌËWåMª4äêmÄåá¯REÆïÔêäO\0`GìyÍ2»ÎÁ¼ô²I¤v!!Jx´éR\\\r4T;ë½I@ì2XhÑp°Ù«Í^øhH¹«×òÂQ°ª»ÚîærVC.îõD-ffaÞ20â£Ä´D&E9ÆÑ)cIeã(Æe.Qm«±`¸9	"öµ6u	##Ä8M\\ÈPHÞ\n4c¢æôÛl8&¦¼rn³,`]P#(V¨¦.QJ(±Ã Ädq3(H\r66<ÌÞ[ò`ICBüfPÆ#Á0qS¤Êîss½VÔiÍÕ±¡M)ªl3LR©&l&JQÓ6=5Á¬ç8£mSg1i¨¶Ä0åó¤c¨cúôóÐò8ÌÇd''1ï9ÏG¼\0ímÐwO''U½§ÀÞAÄþqO`÷V$ñU÷3¢(Õ\r¥ucxó¤¸÷":ÍA÷²ãÞ|Oô(f¤G#Ú½´&¤o\ræÁÐËÞ;*Ã_ÄÌï¼üJàÀÄ/&l1-´\Z?Ûh°ê°,Á¦ÀÜ¨dgC¸ÚfW`#PÊ,LÆf}H~Ç:ºïå:á"àÔõ(Øª6ð÷¬¡Ø¡¸àX¸i"RK°ÎòETTÈvðzÐÙ¤öyñ>_1¨;Úã©³¼ÐÄ³¿2ÖDþ¡©Ø°sÏÀ[µ]±Øl6$iSÄBÁxÓ<G/%ßsS!SlÜÚ)Ö9Ú	dÁj6gÈ­7ÙÐ§H:òÂèîgØ*8Jãð&Gîw¤ÊI<_	RÉ&±. .ï²¡¡älZj-Q±\r2´Î¿-\r2óÈk=#®!È¢Pdq¨ø±¨Ól¡²ÔJmm¼Õf;¦XÌÒ¡ñiXe!JD[¡ÃJó\ZD6økwsÕúP{L/\ZTdcF\0BCIBmHÌ±×g8E4KQQv.¸ÚB¨I0&D.A`îæà&t.Àêei`ZÉ¤l2P1-.QB¥ÔVÁóE	È³^¾Ì+Ï=Kí´ô.a	MMEW4G"^ÁòÞ@!TMðhÅH\ZºkÚ2~''¨_@A÷qx¡Sþ.äp¡ ¡v0', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 460, NULL, NULL, 'go2A1596614955', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 02:09:15', '2020-08-05 02:09:15', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(33, NULL, 'BZh91AY&SY²²O\0©_@\0Pÿø+ô¿ïÿúP¹¼1f6v NBÂQ\nhd\rA¦\0\0QDÕ\0\0\0\0\0\0\0P¤§êêz2=#C@L Ì\0\0\0\0\0\0\0\0 MSÑ´Fjhh\r\0z)A!a!ÊuS¾Dý""sõ	f¸}Íz,ÔÃA-âCv9eâXY×éº{ZPf1\nÉL{)r²æd=qRmìw¤|)B¦$Lî±àhHÔçàL©·\nØ§}è\070:7=	\nû²I¤y¼üàìÓ¤R1u#"\r ¸4ÐÅ¯yª1ARH(B *â³¤Ã±Øª°"é²öa}dB,eeéh$¨Èw3P­C2îôÂÈc\nÌË0\n*Ûº3BÌ,¨èÝéÛ eP±RArD%EéÌ!Ôù»Þ¥#0Me\\t¢3Ã"¥+ZD»ª4\\ªJD1tt}Ô¦~	p"ÀPÕ\0ýYBµE0YrQEwEUAeñ-I@QÜnv÷\rÛjBb	-Ðc6ÊL¤Ïud¦cá#J±©&PÄRÅÚ¥â*^AÜ*±Ic½íY¥¤½ÚÉµ.â´Ð©upÉ	ä åÖ8r¾O&(¹/\rwVø3TQªJ¶ÄÍ³ýÆ|#3i¸³11\n4dF¤Õ8r4®È¡¯*iè:C_	bLáÄw°3*\\ÌÂàÑéC.;,ÃPÃ\0ÐÚ¡±muQj\\ÀgÔÔd´ãÎÝûÎ×P¡&ÅA·aVªÆçúhp1(4ÌE"R$^y#:0FAè3aÝøPÏÝ<ÂUß¼ùÿ±©:5¿3Êºê@ùÈ3§¼\Z\0s~¢Óì{Ò´ÒÆèc;LèuølOÀ]Ò;2äs	Sk+ÚDÆ{;Â[!q^#g©ÝÌÃ[{3¸\n*x\\0¬u¨k*eh,Vç"{ÁR\n«ª üBdäË±(IDLàIhT Q.ÂäJäf¸x-Ñ\ZgÒT(åaxTR¤T~G-¿P¶<Â¡v2ò/¡Ì£M²Ä3¢SkälsÉq²8gÝg½¥ÊB¾#!Aæ4¬r AcÇ/OÍïÉèÚÄd¡dd%2 Â,³qØ8;>\ZðÔV¦d  rdBå¬NNï\nÃ¹âk°/tÒ25P1b±2Þ(LÁ`Yä#¾Ä½X[Qs0ÇC¢Ü!)©¨²Ýþõ.&Ä¸âÑf¥Ùü&r\\Cø7ïâPRR\r''ñw$S	+$ð ', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 560, NULL, NULL, 'iVpI1596615010', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 02:10:10', '2020-08-05 02:10:10', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(34, NULL, 'BZh91AY&SY!Hz\0¯_@\0Pÿø+Ïþ¿ïÿúP»<VÆË¨Ý×¦ a\ZhÐ \0hhhÐPMI4Ñ\r4@\0z\0I¨TýIê£LÑê\0\r\0Ó\0		\0L\0Á"@B4Re7¥¨\0ÚCCÊPHXHqð$ì''ìæ"''@`u`û}n`ESx¢QiaÆ789eÝ, ¥mu)îMÕ-IxàLÌµ~Ú©SNAØ±«Ybw53:hL©³í ­q''Á\0 H¸ý&â3Ì®óÞÎÇ¼KZM#	\npy4é/''`h\0Ài¦*^Ö£,P<âØ¨2­q.	\0*¨¯:#±ä]+&	´\rVJþ©¦ bîjP»»¼Qº1`	DC¼lhrH¥w©ç`cq)cIeã(Æe[já \\NÁK{Z	HFHºâ"®dJÀ(C¤XABnk3ENÉ	â¿±Im`,ªèe\nÕÁeÊ1¢ßJ\ZjÆD¤¨¢ ,I´±í6¼ös$BðÌäÆ#Á0pÓ¤Êñ9ÄïUµ\Zsa\r[\Z4Æ©°fÍ1J¤°)GLØô×³â¶!Le2ölH±³P|Å>¼é÷²ç1ôNãE3!!°èd9\\àÊ8@!Ô ð>v:ýGøVDjþê5AiVÑ¸@@LÞ!]yÄ&(FRÆ3q1ØcØéR²MHÞÌC>à*k¸êpX~ä%3mîv*#¹¬.dk1È\Z?Êì®fc\0Ó`lÜ6hhk7Ï8À23ã7¤/|Qø8Ùmo³É($uQ$U[©,æ=ÍfàÄ3%cGj÷14,Ý&é >#i#°0ñPA¢È¼.]EEóÃiIòm`Óà3(x5_£ÿAI`,qCAâ\r3CÝßR\\ÅºFãÜ\\¿ %6±ÂÔ²&3Ø¸%rè6j6ñ/]ìÊÌ§8:ñÂ± ¸%`&Ö¯â¡z Î>äÈü}¢)6I cÆA$tvÔÜLÌ©Pª^àY*È¼Ô·õ\\Q\Ze¨4õ%½aQ¦\\ú°úwFÎE3zÐàFM²\ZcD¦Ö æÑÖf&Óf®íA9Y3UK²³Èö\\³A#|¢FGonæ×8"D_BTdcFBEÈ²ÎñÅ(E7%ÐT]ÔÔB°I0&D.yÁiÉÀx¡2¹	¤df c *bc.1BÅ¨,É&F-y%ìÂÙóè_GzäÔÔYrD|NDÿ!òî ÅÀM`&äÑEH\Z¬×Àdú=P¿ÐAááâØ6(`Ôÿ¹"(H¤=\0', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 460, NULL, NULL, 'ETEM1596615576', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 02:19:36', '2020-08-05 02:19:36', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(35, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, '4pqh1596615805', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 02:23:25', '2020-08-05 02:23:25', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(36, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'Ixy91596618338', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:05:38', '2020-08-05 03:05:38', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(37, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'iulL1596618848', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:14:08', '2020-08-05 03:14:08', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(38, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'uKfy1596618992', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:16:32', '2020-08-05 03:16:32', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(39, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'tUgh1596619137', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:18:57', '2020-08-05 03:18:57', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(40, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'EDZR1596619280', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:21:20', '2020-08-05 03:21:20', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(41, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'BKASH', 'shipto', 'Kazipara', '2', 700, '8764872648732', NULL, 'WS7U1596619605', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:26:45', '2020-08-05 03:26:45', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(42, NULL, 'BZh91AY&SYûãH\0ß@\0Pÿø;ßþ¿ïÿú`?è\0\0$ \0\0Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\09dÀa0L!#\0	(m4Ê=OLTÈÐ4ñMêÕ2y@\0© DaOÊAz id í|>×Üð?áý$QGÞQ_©EÍ0r6Í¦&eKÑýåI>é¥ª^ZyRò\\ÝþWYNl­''6\Z)³æ£s8jÐæÕ¢Ì#-:e7e\Z4Rr\\Äîk9ºXm,êT§CÉèô`Ôìë7-£Æ[¼I''1pã1(Òc¬Äl\Zd/3k °¨ÐRó-$4ÂQõ_EËÞ«E.úÐÁKI"s)©QH©4lÑ«MT¡úÉMÕ$Ñ6-IºÖTÝW¥*E>»0Ë²Õþ8o7R¤rPä§BR¥\nNew''Þ»	ÉS1Q°¼hýîµ¢í"ÊYC+®ºí)AK¬0Ã\ræaf´Ë+®Ã¸S29Rë´i*tKN&&%¥Meå¦f³ItìI±¾YRjÑ)ªÍ\\5ÕËÍ"¦«µÑe2Ôe0L5hÂad».0Ñ«,FÂL530¬Ë¦©£F&éËÍ''¬ùÂ)AJJIuSí¨±JRËK*¨¼³J,\\£ëx(º¥¡Ab¢TXRêR¤½¤K)*S²vN³±ÒÒC½­>ÙR¬jÂ¶e,Î¶¶Sà¹ð]v8hr^q&«NE9(äÑfÆì.nÑcE(É»QM]7j]¢ÍX·nÙ¤áÁ7j¦ìll³vJaÀÕ`1lyF«3ØÖH9séæÉÉe¦Ò³*õBKý\0õÂoâ)Bà\Z^ÿNlOÒôkí)ýØä]N´Ù÷¨ôFT(RhÕg¹Û!/&gÙ)Ú»ðiý$DB/r"´Ü²¨½ËíL¨	¤Jä\\ÌÂ^wENó¤¦Áø>onø9)±äuJ´;TuLíÛ¾JÈÚs1HÿlÏTo)ÞlÎÇ%$øI»tìw3;çIñºÝ®ÅÅÜK¬©¢vMÊ;OüY-%÷]ÑÚ²©«¹âÃVëIu()JjM\Z&³¬û&]Sá8òëÊáyNrIÊT÷%Õ6=¥r:å7SÅÍØÃè£\r]îÙæô¯VM^\rJaêº]å:uMÕØX§òóÕüo7GÑJ}²tx¥çå=ÊR!TIûh­§(©!ù\nR³Ùî{5yÈí{ÓÞq->N¡yxÂ£¬µF%OÊ^w%Ý	èRm³GdI<Ùy­=^M|ÜÄ»PÂÁ±36h/.æ7Ì©à¦%MÌÄ±sÝSSz)t²ÒTøL1\r%¢Oy´9&_aüg4ø¼ÉÞP¨©«#iæúeßÝ¢¦ÁR`£+%	È\r''¡2Î9uhP¬©À~¯¢YêRRfXõI''XóÒz''t¦8Ó½ZÐ¤}T82áu*aÍèÃ<OÜ´ºlÁí)O)iiNÛNSäèüïf¯js}0}IR¡AR«ëT²)*EEEJ©R)%(\n¢%¡*£á9OG7ÈËâÌOÓ4i: ´³Y.¥\ræ%N§KN$õx)i?CEÜõ.Ù»x©S¤ZQE'';ÖfjÌÙ,59JxC3	¤8R~ ü©5t(ý³9èÑ0K5OYóxL>ÉOl´ÂÜºb7%)uBÓO¹ydÕûeyï4NÐÄíí=Ð¥%*RUþ.äp¡!÷Ç', 'Cash On Delivery', 'shipto', 'Kazipara', '2', 700, NULL, NULL, 'HWst1596619855', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 03:30:55', '2020-08-05 03:30:55', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(43, NULL, 'BZh91AY&SYI`·8\0§ß@\0Pø;ü¿ïÿúP»=³BÆ\0 \0\0\0\0\0\0\0\0%4D¦\0 \0B¤\Z4ÏTÍC¦LÐÓM\0\0\0\0\0\0\0\0\0H!\Zð1F¡©¦§YÌvô6\0¿qýúv¡rlgªPMÒ! ­Lt]pë8pÔ³ïöFÅ.XÆ{-ª§Ó~µÚZ$¡ºæÉÀÀ35¹X×r\\¯\0q0ñfÃ¾s¾³xõ\Z¸²cyyp¦RãþdáØ\0ÐÁ2a\rx¼KRcå¡Øp´÷8i$2æy©ª* ÑÑqÙ0M l\Z´Vo+@Ô¦LÃW¬æg ¨qLLÌå¨gL2*b*J 4Ê­ØqÁÍ$q r@zHÍUÅ²ÃãlÅfiÅ«M,í8¹dÏ7¡¯ ©p¥IWVµUUw¥Á!}ø)@A@R\ZftÎf%:8m4azB6Mh2ËH3µ8!@P´¡E©­»¼k»;`®"tG¹ÉRTY\\pqÄ]ífðløsq£{|5nZE\ZÀUm`|I¾µ¬Ù¶Ä£6kSÞrú¡NÎAcz×Îr³Æsã4QÜ\0uçè2`öánhº%´×Îh«U6¯1!SÌÎ~c=ÇèA¡ÚäÅ\r´ø/õ5TsÞ½õ(¤Üso5ÆÏ¡ò9ê,sY|Fá\n\rtÍ¨±¨Ã hó©Ùx`±2`Ó`k0\r´7\ZME³ØjIYj21¼ûüFNí°îï»/\nØª6î+Y\\Öy£"£LÈRL"FcM%ÏLà<Æk/M;)¤&Ü7:|ÊPí*y*q0wÖ@ùÉ%Á8ÈP>Å%âz#im.·8¡D ñFÔïàîS¶÷\n"Ù¨Ö¯[¢=	7ìBàº\r6ò"»Ñ\0§>^#Z;\nH°Ö\nªrRÍÅZX* L2ì`Ê¢,ÔJÐX¨U.âÀ±ZÆcB×ÄZ6£$4ËÔ0:{	è±°Ó0=XûtÉçäk=g#â¥CiÌ<Çõ:Øi¶Tò5hªTkXuFì·ÙÎ×gæÒÈeq%¥§bÒ2É<''26Äóü|-ÝôzOj cÏK3! £&\r	µCÔh:éå®Ôº\n«ÖZÆd  £BÏTn.­àu3Ænai¨È22¦ø©C]hT Y5ìKîÂú{ùe¤ê¸%EE\\ÉûÒ\0a\nâosD\nçðI\nõ^)î<z!fCì99<èÐPä?ñw$S	s', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 240, NULL, NULL, 'bItX1596627633', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 05:40:33', '2020-08-05 05:40:33', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(44, NULL, 'BZh91AY&SY?Ð»\0³_@\0Pÿø+Ïþ¿ïÿúP¹¼c°A `\0&\00\0\0(&¨z Èh4hÓCÔ\0\r#@\0\Z\0Ñé2\09L\0\0À\0L\0	£Q 4SÔýMCÉL($,$<Ç\\	9û=äDúó	fì9Î^[7Ì4%³púÎYFá,,àûÝ<: áÂµ÷S#Ü-	"ÌËWåMª4äêmÄåá¯REÆïÔêäO\0`GìyÍ2»ÎÁ¼ô²I¤v!!Jx´éR\\\r4T;ë½I@ì2XhÑp°Ù«Í^øhH¹«×òÂQ°ª»ÚîærVC.îõD-ffaÞ20â£Ä´D&E9ÆÑ)cIeã(Æe.Qm«±`¸9	"öµ6u	##Ä8M\\ÈPHÞ\n4c¢æôÛl8&¦¼rn³,`]P#(V¨¦.QJ(±Ã Ädq3(H\r66<ÌÞ[ò`ICBüfPÆ#Á0qS¤Êîss½VÔiÍÕ±¡M)ªl3LR©&l&JQÓ6=5Á¬ç8£mSg1i¨¶Ä0åó¤c¨cúôóÐò8ÌÇd''1ï9ÏG¼\0ímÐwO''U½§ÀÞAÄþqO`÷V$ñU÷3¢(Õ\r¥ucxó¤¸÷":ÍA÷²ãÞ|Oô(f¤G#Ú½´&¤o\ræÁÐËÞ;*Ã_ÄÌï¼üJàÀÄ/&l1-´\Z?Ûh°ê°,Á¦ÀÜ¨dgC¸ÚfW`#PÊ,LÆf}H~Ç:ºïå:á"àÔõ(Øª6ð÷¬¡Ø¡¸àX¸i"RK°ÎòETTÈvðzÐÙ¤öyñ>_1¨;Úã©³¼ÐÄ³¿2ÖDþ¡©Ø°sÏÀ[µ]±Øl6$iSÄBÁxÓ<G/%ßsS!SlÜÚ)Ö9Ú	dÁj6gÈ­7ÙÐ§H:òÂèîgØ*8Jãð&Gîw¤ÊI<_	RÉ&±. .ï²¡¡älZj-Q±\r2´Î¿-\r2óÈk=#®!È¢Pdq¨ø±¨Ól¡²ÔJmm¼Õf;¦XÌÒ¡ñiXe!JD[¡ÃJó\ZD6økwsÕúP{L/\ZTdcF\0BCIBmHÌ±×g8E4KQQv.¸ÚB¨I0&D.A`îæà&t.Àêei`ZÉ¤l2P1-.QB¥ÔVÁóE	È³^¾Ì+Ï=Kí´ô.a	MMEW4G"^ÁòÞ@!TMðhÅH\ZºkÚ2~''¨_@A÷qx¡Sþ.äp¡ ¡v0', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 460, NULL, NULL, 'fpJW1596627735', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 05:42:15', '2020-08-05 05:42:15', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(45, NULL, 'BZh91AY&SYñ×Ò\0Ø_@\0Pø+oü4¿ïÿúP»<3cµhPÑ õ\0\0\0\rG¨\0PÕ4Q 4Ð\Z\r\0Ô\0  A \r\0@4ÄÀ``\0\00HÐa2¨z@ÔÉA!`¼a.i/I$ÆLDûÆcÇ®CÛJ GTéCËó+.1Ò(àæßWeÝ, ÂÂ7ÙK2nÄ´!ãKkOÂ`Óoå,`c®4ÊÁm1ñ*E#c1£¼[¸¯\0"¨~Äy\Z2é1nÄµ`Ò±)\n½2"­D$ï2! °441^×½Yà4¿Ô0,eLåTh*Ût¬×¨0ÚÁªF¸.e05ÔÓ4c/X`ØRff¬P"Z)4¥j)ïXä\n\nï;\ns01d0¦G&`$²9ó\n¢Ylã\0µ4åL¥E.fR+îáÌÈ PHÈ1$,LbIIæDA8&BZX\nÈZ¨½+TS¥"Qaê< Ú\n$4RÐ6$Ø!±í6é°Û¥e!bïSêH`êaÍòI¶ËowÎvÁ§,DÖXÑ¦5\rEÃtRKÉ*aGJF¶`ÕÝãÛ¥Z[å5j\rÀáìáÛ9I7åÒ0-8Ú ?-Á¤Ç)N8Ïí*WÌÝB^jþäªÕF\r ÂÑÜm	¡Ìx¢#À²Ij,DnìPF¨UOº¥qêkìYCzÈkâBW(~ÐGcF4U¡ù°¢Ô@ÜPl©ÐÔha¯\\\\©ZÌK[äúÎØvvßÂ	¤6jÂ®\nÇ©þ\ZÍÆEF¤ÈKI,G¨fÁâùÔÏm5áÃyûúRuk·Þ\Z>RIC¨M!§!Pqà-\r%ä|Ï!±	t¹Áb!\\iþ¸Ì[äì;ËuÌ$F²ÆÕ²,TCxN]«Ù·oC\r¡óñ ð6nî§1-0ZÒC	DI:#BpÂZAAL(Hèì+©¼aÓÀÀáT´Ü0øóZÝÜ-LàÐàd¨buõ''½_¦\\ó\ZÇVØèµJ¥\0õ©Äîl*AÔÏ*¢\Z.s[GFÓu6B>AÊÂ#B Ò±¼\r±9øòÃ£äý¤Ä\nTdcd¡Ú\0lCH¤ÚdsÏ"»ä*¯aSj!X%" È;¸¸\n·s¯±{¦­@Æ@`de=±RÕÂË1ðEJÉ¯j?æ+h3Ï|µ\0ùUT]qDp''à>;Èb2àßkDfeÈ\ZíÉü&Wrì _¿AIH5?ÅÜN$<uô¤@', 'Cash On Delivery', 'shipto', 'Kazipara', '1', 275, NULL, NULL, 's8hh1596629300', 'Pending', 'zahid.hasan6@gmail.com', 'zahid hasan', 'Bangladesh', '09883749238', '21/S. DU R/A. North Nilkhet Dhaka.', 'Dhaka', '1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-05 06:08:20', '2020-08-05 06:08:20', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 3, 'Pending', 'You have successfully placed your order.', '2020-06-08 05:01:33', '2020-06-08 05:01:33'),
(2, 4, 'Pending', 'You have successfully placed your order.', '2020-06-13 07:19:28', '2020-06-13 07:19:28'),
(3, 4, 'ssfsdfsdf sgtfg s', 'fgjfgjf', '2020-06-13 07:48:16', '2020-06-13 07:48:16'),
(4, 5, 'Pending', 'You have successfully placed your order.', '2020-06-15 13:13:58', '2020-06-15 13:13:58'),
(5, 5, 'Urder is on the way', 'fghfgjhfjfj', '2020-06-15 13:31:36', '2020-06-15 13:31:36'),
(6, 6, 'Pending', 'You have successfully placed your order.', '2020-06-15 13:55:50', '2020-06-15 13:55:50'),
(7, 7, 'Pending', 'You have successfully placed your order.', '2020-06-16 02:04:16', '2020-06-16 02:04:16'),
(8, 8, 'Pending', 'You have successfully placed your order.', '2020-06-16 02:26:59', '2020-06-16 02:26:59'),
(9, 9, 'Pending', 'You have successfully placed your order.', '2020-06-16 03:19:46', '2020-06-16 03:19:46'),
(10, 8, 'order we reviewed and start processing', 'FYI', '2020-06-16 03:28:01', '2020-06-16 03:28:01'),
(11, 1, 'order1606', 'hgjgfd', '2020-06-16 03:32:23', '2020-06-16 03:32:23'),
(12, 10, 'Pending', 'You have successfully placed your order.', '2020-06-17 04:12:11', '2020-06-17 04:12:11'),
(13, 11, 'Pending', 'You have successfully placed your order.', '2020-06-17 04:21:35', '2020-06-17 04:21:35'),
(14, 12, 'Pending', 'You have successfully placed your order.', '2020-06-17 05:37:58', '2020-06-17 05:37:58'),
(15, 9, 'Declined', 'order cancelled', '2020-06-17 05:42:29', '2020-06-17 05:42:29'),
(16, 12, 'Declined', 'u cancelled your order', '2020-06-17 05:50:15', '2020-06-17 05:50:15'),
(17, 13, 'Pending', 'You have successfully placed your order.', '2020-06-17 06:04:05', '2020-06-17 06:04:05'),
(18, 14, 'Pending', 'You have successfully placed your order.', '2020-06-17 10:59:45', '2020-06-17 10:59:45'),
(19, 15, 'Pending', 'You have successfully placed your order.', '2020-06-17 10:59:47', '2020-06-17 10:59:47'),
(20, 15, 'test', 'test', '2020-06-17 11:03:17', '2020-06-17 11:03:17'),
(21, 15, 'Processing', 'iughjfg', '2020-06-17 11:05:16', '2020-06-17 11:05:16'),
(22, 16, 'Pending', 'You have successfully placed your order.', '2020-06-17 11:39:49', '2020-06-17 11:39:49'),
(23, 18, 'Pending', 'You have successfully placed your order.', '2020-06-30 16:27:17', '2020-06-30 16:27:17'),
(24, 19, 'Pending', 'You have successfully placed your order.', '2020-06-30 17:16:12', '2020-06-30 17:16:12'),
(25, 19, 'Pending', 'You have successfully placed your order.', '2020-07-20 04:40:02', '2020-07-20 04:40:02'),
(26, 20, 'Pending', 'You have successfully placed your order.', '2020-07-28 01:29:02', '2020-07-28 01:29:02'),
(27, 21, 'Pending', 'You have successfully placed your order.', '2020-07-28 01:31:07', '2020-07-28 01:31:07'),
(28, 22, 'Pending', 'You have successfully placed your order.', '2020-07-28 01:36:35', '2020-07-28 01:36:35'),
(29, 23, 'Pending', 'You have successfully placed your order.', '2020-07-28 05:10:28', '2020-07-28 05:10:28'),
(30, 24, 'Pending', 'You have successfully placed your order.', '2020-07-31 02:14:10', '2020-07-31 02:14:10'),
(31, 25, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:39:31', '2020-08-05 01:39:31'),
(32, 26, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:39:44', '2020-08-05 01:39:44'),
(33, 27, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:43:51', '2020-08-05 01:43:51'),
(34, 28, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:48:18', '2020-08-05 01:48:18'),
(35, 29, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:53:02', '2020-08-05 01:53:02'),
(36, 30, 'Pending', 'You have successfully placed your order.', '2020-08-05 01:56:19', '2020-08-05 01:56:19'),
(37, 31, 'Pending', 'You have successfully placed your order.', '2020-08-05 02:02:20', '2020-08-05 02:02:20'),
(38, 32, 'Pending', 'You have successfully placed your order.', '2020-08-05 02:09:15', '2020-08-05 02:09:15'),
(39, 33, 'Pending', 'You have successfully placed your order.', '2020-08-05 02:10:10', '2020-08-05 02:10:10'),
(40, 34, 'Pending', 'You have successfully placed your order.', '2020-08-05 02:19:36', '2020-08-05 02:19:36'),
(41, 35, 'Pending', 'You have successfully placed your order.', '2020-08-05 02:23:25', '2020-08-05 02:23:25'),
(42, 36, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:05:38', '2020-08-05 03:05:38'),
(43, 37, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:14:08', '2020-08-05 03:14:08'),
(44, 38, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:16:33', '2020-08-05 03:16:33'),
(45, 39, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:18:57', '2020-08-05 03:18:57'),
(46, 40, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:21:20', '2020-08-05 03:21:20'),
(47, 41, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:26:45', '2020-08-05 03:26:45'),
(48, 42, 'Pending', 'You have successfully placed your order.', '2020-08-05 03:30:55', '2020-08-05 03:30:55'),
(49, 43, 'Pending', 'You have successfully placed your order.', '2020-08-05 05:40:33', '2020-08-05 05:40:33'),
(50, 44, 'Pending', 'You have successfully placed your order.', '2020-08-05 05:42:15', '2020-08-05 05:42:15'),
(51, 45, 'Pending', 'You have successfully placed your order.', '2020-08-05 06:08:20', '2020-08-05 06:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Smart Packaging', 'Brand Packaging', 15),
(3, 0, 'Gift Packaging', 'Gift packaging', 150);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div><b><a href="http://Palkimart.Com/?fbclid=IwAR1JBVt-M_bbpjEFcP1FgiJepKtfmzyq0rugM6-zbs0tBC3zKmHU2slRIkE" target="_blank" data-ft="{&quot;tn&quot;:&quot;-U&quot;}" rel="noopener nofollow" data-lynx-mode="async" data-lynx-uri="https://l.facebook.com/l.php?u=http%3A%2F%2FPalkimart.Com%2F%3Ffbclid%3DIwAR1JBVt-M_bbpjEFcP1FgiJepKtfmzyq0rugM6-zbs0tBC3zKmHU2slRIkE&amp;h=AT0P3NoDonfjdRHmea7zfjyfxROUv48FAuq5tW9ZAp_Sn3nYe_QY8H9SpvaF0lzvxvpzKOXCdi7SiqYdGsu2xcTT3eCVVHA4gNjAp1dPm3Ny85BFlwyoP-mXm9ScDXFvZAw29kvSa3c2HeRhRy3Ra0gB-nI0aha06UEW1DZNp8eTHpOrEUYjIQK9r3gu_z7JGVl2UpIOq_xtDeitnNzI0ZAGJdXkwOEjfBcTwqz00o6TOFhf_J_xQnTGYZ6yty8XHTNQIjvmx42drk4pQky6OrtZFC26d7f4Qucz92xuzXrauMDwirHNsfJn3pr0lyO-649_wYrYv49fKl7LfNeEM469v6XeNXfOkspPrIHgbTw-hwUu3KRIkQaVM9Q95CNKw1s_9ZzV-xNWFJsOnujecIkq0u6oiuU7ONwCGKAX6IaTBGljmTwy5e_aVoyB-bVk_ZKpxgFnhGWX2cLtpCbpS_mp1gzdIBBHPjyuu-i4Hdh86idtHLkAcCp_vuUakLnrhCqCK1evF1Ptt8LlqiLDsIXKU7L-frLBys7apq78hWsIBEeilwa83SzX8DbTBSEFj_qQh7aQQaW80PgN1Ckqgzv8swrc7F29-bakxez73fz3-TOxKiJPm53tnA">Palkimart.Com</a></b>\r\n is an Online Store where engagement of customers for buying their \r\ndifferent types of&nbsp; daily needs are selected for <b>own shopping</b> and platform \r\nfor <b>referring this store to relatives or friends</b> having a <b>affiliate \r\ntasks</b> with Earning Systems also customer can use this platform for \r\n<b>transforming their local business to E-Business</b>.</div><div><br></div><div><b>&nbsp;&nbsp;&nbsp; ***The Online Convenient Shop with Quality Services Whenever you wants live at your Door steps.</b><br></div><img src="https://i.imgur.com/Z97riZE.png" width="634">', 'palikimart,fresh meat fish,local source,organic,vegetable,food,online shopping,super shop,online market', 'The Online Convenient Shop with Quality Services Whenever you wants live at your Door steps.', 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><img src="https://i.imgur.com/BobQuyA.jpg" width="591"></h2><h2><font size="6">Title number 1</font></h2><p><span style="font-weight: 700;">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><font size="6">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><font size="6">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-weight:="" 700;="" line-height:="" 1.1;="" color:="" rgb(51,="" 51,="" 51);="" margin:="" 0px="" 15px;="" font-size:="" 30px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"="" 51);"="" style="font-family: "><font size="6">Title number 9</font><br></h2><p helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"="">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><font size="6">Title number 1</font><br></h2><p><span style="font-weight: 700;">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><font size="6">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><div helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"=""><h2><font size="6">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-weight:="" 700;="" line-height:="" 1.1;="" color:="" rgb(51,="" 51,="" 51);="" margin:="" 0px="" 15px;="" font-size:="" 30px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"="" 51);"="" style="font-family: "><font size="6">Title number 9</font><br></h2><p helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 14px;="" font-style:="" normal;="" font-variant-ligatures:="" font-variant-caps:="" font-weight:="" 400;="" letter-spacing:="" orphans:="" 2;="" text-align:="" start;="" text-indent:="" 0px;="" text-transform:="" none;="" white-space:="" widows:="" word-spacing:="" -webkit-text-stroke-width:="" background-color:="" rgb(255,="" 255,="" 255);="" text-decoration-style:="" initial;="" text-decoration-color:="" initial;"="">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(4, 'Be an affiliate marketer.', 'affiliate marketer', '<br>', NULL, NULL, 0, 1),
(5, 'Make your Own Business', 'own business', '<br>', NULL, NULL, 0, 1),
(6, 'Return Policy', 'return policy', '<br>', NULL, NULL, 0, 1),
(8, 'আমের প্রি অর্ডার', 'Mango Pre Order', '<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSesdXP5nqXrsg8oKQmjEIfjcNXUHS6sv2rHnfAUmB70JEmo8A/viewform?embedded=true" marginheight="0" marginwidth="0" width="640" height="2152" frameborder="0">Loading…</iframe>', NULL, NULL, 1, 0),
(9, 'Eid Ul Azha Offer', 'Eid Ul Azhaa Offer', '<br><iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpalkimart%2Fposts%2F140593007693736&amp;width=500" style="border:none;overflow:hidden" scrolling="no" allowtransparency="true" allow="encrypted-media" width="500" height="825" frameborder="0"></iframe>', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `featured_category` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'support@palkimart.com', '<div>&nbsp;&nbsp;&nbsp; <b>Our Delivery Areas : </b><br></div><img src="https://i.imgur.com/FVPeAbb.png" width="619">', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; <b><span style="color: rgb(119, 119, 119);">Send us a message and we'' ll respond as soon as possible</span></b><br>', '<h4 class="title" style="margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;">Let''s Connect</h4>', '<span style="color: rgb(51, 51, 51);">Get in touch with us</span>', '714,Monipuri School Road, Shewrapara,Mirpur\r\n,Dhaka-1216.', '01771 088 100', NULL, 'support@palkimart.com', 'https://palkimart.com/', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1595439176spice-offer.png', 'https://palkimart.com/category/Grocery--Commodities/SPICES/SPICES-WHOLE', '1594928059spice-offer.png', 'https://palkimart.com/category/Grocery--Commodities/SPICES/SPICES-WHOLE', 1, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(6, '15922322201552807524.mam_1.jpg', NULL),
(7, '15922322451552807119.heinz.jpg', NULL),
(8, '15922322691552806966.b1.jpg', NULL),
(9, '15922322841552807331.kelloggs.jpg', NULL),
(10, '15922323061552821510.quaker.jpg', NULL),
(12, '1592426500p-and-g-nigeria-internship-696x410.jfif', NULL),
(13, '1592426518unileveraxe-and-dove-1-638.jfif', NULL),
(14, '1592427904nestle-img.png', NULL),
(15, '1592426541square_banner.jfif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(47, NULL, 'ROCKET', '<h6>ROCKET NUMBER : <b>01675108504</b></h6>', 1),
(48, NULL, 'BKASH', '<h6>BKASH NUMBER : <b>01675108504</b></h6>', 1),
(49, NULL, 'VISA/MASTER CARD PAYMENT', 'PLEASE CALL FOR PAYMENT <b>@ 01675108504</b><br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(4, 'Kazipara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(1, 'PYMTMF001', 'normal', NULL, 0, 40, 53, 1, NULL, 'Broiler Skin Off / kg', 'broiler-skin-off-kg-pymtmf001', '15952682642jVB7lEa.png', '15952682643NB714mv.jpg', NULL, NULL, NULL, NULL, NULL, 230, 245, '<br>', NULL, '<br>', 1, 19, NULL, 'Eid ul Azha,15 tk. Discount', '#2125d7,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, '2020-06-15 12:59:55', '2020-08-02 05:23:28', 0, NULL, NULL, NULL, 0, 0),
(2, 'LVVEDF008', 'normal', NULL, 0, 39, 25, 2, NULL, 'Capsicum Green / 0.250gm', 'capsicum-green-0250gm-lvvedf008', '1592297659WPXmqaBg.png', '1592297659XHARoVmy.jpg', NULL, '0.250gm,0.500gm,1Kg', '0,1,1', '0,160,310', NULL, 120, 0, '<div>#Local Collected <br></div><div>#Farm Fresh</div><div><br></div>', 3, '<br>', 1, 50, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 02:54:19', '2020-07-31 02:14:10', 0, NULL, '1', '2', 0, 0),
(3, 'LVVEGDF002', 'normal', NULL, 0, 39, 25, 2, NULL, 'dherosh/kg', 'dheroshkg-lvvegdf002', '1592315137VPgLxG6f.png', '15923151421gbxuRyQ.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<div>#LOCAL SOURCE</div><div>#FRESH <br></div>', 10, '<br>', 1, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 07:45:37', '2020-07-27 19:58:27', 0, NULL, NULL, NULL, 0, 0),
(4, 'LVVEGDF003', 'normal', NULL, 0, 39, 25, 2, NULL, 'Begun Black /kg', 'begun-black-kg-lvvegdf003', '1592315865HASh7yfK.png', '15923158656J8R0k9g.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<div>#FRESH</div>#LOCAL SOURCE', NULL, '<br>', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 07:57:45', '2020-07-20 23:19:22', 0, NULL, NULL, NULL, 0, 0),
(5, 'LGVEGDF001', 'normal', NULL, 0, 39, 25, 3, NULL, 'Dhone Pata / 0.250 gm', 'dhone-pata-0250-gm-lgvegdf001', '1592316021pcKuDOns.png', '1592316021gmPVcRYa.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<div>#FRESH</div>#LOCAL SOURCE', NULL, '<br>', 1, 19, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, 'Kilogram', 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:00:21', '2020-07-26 05:10:32', 0, NULL, NULL, NULL, 0, 0),
(6, 'LVVEGDF004', 'normal', NULL, 0, 39, 25, 2, NULL, 'Lebu Elachi / 4pcs', 'lebu-elachi-4pcs-lvvegdf004', '1592316220mFCITaYN.png', '15923162207V3ljM0F.jpg', NULL, '4 PCS,12 PCS', '1,1', '0,96', NULL, 26, 0, '<div>#FRESH</div>#LOCAL SOURCE', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:03:40', '2020-07-21 07:56:52', 0, NULL, NULL, NULL, 0, 0),
(7, 'LVVEGDF006', 'normal', NULL, 0, 39, 25, 2, NULL, 'Misti Kumra /kg', 'misti-kumra-kg-lvvegdf006', '1592316843dkZTSCKL.png', '1592316843xSImX5Om.jpg', NULL, NULL, NULL, NULL, NULL, 28, 0, '<div>#FRESH</div>#LOCAL SOURCE', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:08:40', '2020-07-21 13:46:34', 0, NULL, NULL, NULL, 0, 0),
(8, 'LVVEGDF005', 'normal', NULL, 0, 39, 25, 2, NULL, 'Gajor / kg', 'gajor-kg-lvvegdf005', '1592317197pIQJ4wPj.png', '1592317197UCqrwIpt.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<div>#FRESH</div>#LOCAL SOURCE', NULL, '<br>', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:19:57', '2020-07-23 02:44:43', 0, NULL, NULL, NULL, 0, 0),
(9, 'LVVEGDF007', 'normal', NULL, 0, 39, 25, 2, NULL, 'KACHUR MUKHI / KG', 'kachur-mukhi-kg-lvvegdf007', '15923176222mUkwdfa.png', '1592317622vqUNyUSI.jpg', NULL, NULL, NULL, NULL, NULL, 52, 0, '<br>', NULL, '<br>', 0, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:27:02', '2020-07-20 12:53:34', 0, NULL, NULL, NULL, 0, 0),
(10, 'LVVEGDF008', 'normal', NULL, 0, 39, 25, 2, NULL, 'Lebu Long / 4pcs', 'lebu-long-4pcs-lvvegdf008', '15923177501EmiIG1g.png', '1592317750u2y1JEMZ.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:29:10', '2020-07-30 05:09:01', 0, NULL, NULL, NULL, 0, 0),
(11, 'LVVEGDF009', 'normal', NULL, 0, 39, 25, 2, NULL, 'Kochur Loti / kg', 'kochur-loti-kg-lvvegdf009', '1592317827hSZBABAH.png', '1592317827H0ochStQ.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:30:27', '2020-07-23 11:26:57', 0, NULL, NULL, NULL, 0, 0),
(12, 'LVVEGDF010', 'normal', NULL, 0, 39, 25, 2, NULL, 'Kacha Morich / 200 gm', 'kacha-morich-200-gm-lvvegdf010', '1592317941QyzPb94d.png', '1592317941feidV9PX.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:32:21', '2020-07-23 02:37:06', 0, NULL, NULL, NULL, 0, 0),
(13, 'LVVEGDF011', 'normal', NULL, 0, 39, 25, 2, NULL, 'Shosha /kg', 'shosha-kg-lvvegdf011', '1592318041gnBtXGDf.png', '1592318041IXwp1h20.jpg', NULL, NULL, NULL, NULL, NULL, 42, 0, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-06-16 08:34:01', '2020-07-26 10:35:20', 0, NULL, NULL, NULL, 0, 0),
(14, 'LVVEGDF012', 'normal', NULL, 0, 39, 25, 2, NULL, 'Tomato Red / kg', 'tomato-red-kg-lvvegdf012', '1592318152Dl4WA7IS.png', '1592318152K4zZYHcR.jpg', NULL, NULL, NULL, NULL, NULL, 145, 0, '<br>', NULL, '<br>', 1, 13, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-06-16 08:35:52', '2020-07-30 08:30:38', 0, NULL, NULL, NULL, 0, 0),
(15, 'LVVEGDF013', 'normal', NULL, 0, 39, 25, 2, NULL, 'Pepe Green / KG', 'pepe-green-kg-lvvegdf013', '1592318230GGNmYJcq.png', '1592318230whCIycjL.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:37:10', '2020-07-23 02:34:17', 0, NULL, NULL, NULL, 0, 0),
(16, 'LVVEGDF014', 'normal', NULL, 0, 39, 25, 2, NULL, 'PHULKOPI / PC', 'phulkopi-pc-lvvegdf014', '15923183327oasBPX1.png', '1592318332yh8p6J8H.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 0, 20, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-16 08:38:52', '2020-07-20 12:50:58', 0, NULL, NULL, NULL, 0, 0),
(17, 'LGVEGDF002', 'normal', NULL, 0, 39, 25, 3, NULL, 'Lal Shak/ati', 'lal-shakati-lgvegdf002', '15923184501PUs2sDs.png', '1592318451xnWjZVpO.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:40:50', '2020-08-02 06:58:49', 0, NULL, NULL, NULL, 0, 0),
(18, 'LFFHMF001', 'normal', NULL, 0, 40, 52, 14, NULL, 'RUI MED (1-1.5KG+) / KG', 'rui-med-1-15kg-kg-lffhmf001', '1592319035aItpGIaa.png', '1592319035v7BRm143.jpg', NULL, NULL, NULL, NULL, NULL, 245, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:50:35', '2020-06-27 01:22:32', 0, NULL, NULL, NULL, 0, 0),
(19, 'LFFHMF002', 'normal', NULL, 0, 40, 52, 14, NULL, 'BELE - DESHI (12-15 PCS) / KG', 'bele-deshi-12-15-pcs-kg-lffhmf002', '1592319156XM94up5C.png', '1592319157bc3yYNYM.jpg', NULL, NULL, NULL, NULL, NULL, 650, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:52:36', '2020-06-27 01:23:57', 0, NULL, NULL, NULL, 0, 0),
(20, 'LFFHMF003', 'normal', NULL, 0, 40, 52, 14, NULL, 'BOAL-LARGE I (3-4KG+) / KG', 'boal-large-i-3-4kg-kg-lffhmf003', '1592319440S27uyy4N.png', '159231944097r2rKiE.jpg', NULL, NULL, NULL, NULL, NULL, 530, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 08:57:20', '2020-06-27 01:24:17', 0, NULL, NULL, NULL, 0, 0),
(21, 'LFFHMF004', 'normal', NULL, 0, 40, 52, 14, NULL, 'AYRE MEDIUM (1-1.5KG+) / KG', 'ayre-medium-1-15kg-kg-lffhmf004', '1592321050oxKcuVI8.png', '1592321050M6Bx6lcX.jpg', NULL, NULL, NULL, NULL, NULL, 345, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:24:10', '2020-07-27 00:43:07', 0, NULL, NULL, NULL, 0, 0),
(22, 'LFFHMF005', 'normal', NULL, 0, 40, 52, 14, NULL, 'CHINGRI GOLDA (16-22 PCS) / KG', 'chingri-golda-16-22-pcs-kg-lffhmf005', '1592321233yYJvfR1p.png', '1592321233lYwakL0L.jpg', NULL, NULL, NULL, NULL, NULL, 780, 0, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:27:13', '2020-06-30 11:14:44', 0, NULL, NULL, NULL, 0, 0),
(23, 'LFFHMF006', 'normal', NULL, 0, 40, 52, 14, NULL, 'CHINGRI GOLDA (24-32 PCS) / KG', 'chingri-golda-24-32-pcs-kg-lffhmf006', '15923212964dTCtn6m.png', '15923212965nBmTCRT.jpg', NULL, NULL, NULL, NULL, NULL, 590, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:28:16', '2020-07-26 02:27:24', 0, NULL, NULL, NULL, 0, 0),
(24, 'LFFHMF007', 'normal', NULL, 0, 40, 52, 14, NULL, 'CHINGRI BAGDA (24-32 PCS) / KG', 'chingri-bagda-24-32-pcs-kg-lffhmf007', '1592321335GBoxVrKP.png', '15923213353Pgp3C33.jpg', NULL, NULL, NULL, NULL, NULL, 465, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:28:55', '2020-07-28 19:51:53', 0, NULL, NULL, NULL, 0, 0),
(25, 'LFFHMF008', 'normal', NULL, 0, 40, 52, 14, NULL, 'KASKI FISH / KG', 'kaski-fish-kg-lffhmf008', '1592321396r5xBe0eE.png', '159232139689tK2dKx.jpg', NULL, NULL, NULL, NULL, NULL, 460, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:29:56', '2020-06-28 03:32:09', 0, NULL, NULL, NULL, 0, 0),
(26, 'LFFHMF009', 'normal', NULL, 0, 40, 52, 14, NULL, 'PABDA MEDIUM / KG', 'pabda-medium-kg-lffhmf009', '1592321463Mqrfhxjs.png', '1592321463aT2jU887.jpg', NULL, NULL, NULL, NULL, NULL, 540, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:31:03', '2020-06-27 01:29:57', 0, NULL, NULL, NULL, 0, 0),
(27, 'LFFHMF010', 'normal', NULL, 0, 40, 52, 14, NULL, 'TENGRA DESI / KG', 'tengra-desi-kg-lffhmf010', '1592321506L1U1vjKC.png', '1592321506pPliYhP6.jpg', NULL, NULL, NULL, NULL, NULL, 620, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:31:46', '2020-07-27 07:29:56', 0, NULL, NULL, NULL, 0, 0),
(28, 'LFFHMF011', 'normal', NULL, 0, 40, 52, 14, NULL, 'SHING DESHI-MEDIUM / KG', 'shing-deshi-medium-kg-lffhmf011', '1592321550uPPMhmoC.png', '1592321550s7S0f9Aa.jpg', NULL, NULL, NULL, NULL, NULL, 790, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:32:30', '2020-06-27 01:29:17', 0, NULL, NULL, NULL, 0, 0),
(29, 'LFFHMF012', 'normal', NULL, 0, 40, 52, 14, NULL, 'MAGUR DESHI-MEDIUM / KG', 'magur-deshi-medium-kg-lffhmf012', '1592321593rr7PPGEL.png', '159232159328ALqCUO.jpg', NULL, NULL, NULL, NULL, NULL, 850, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:33:13', '2020-07-24 21:39:21', 0, NULL, NULL, NULL, 0, 0),
(30, 'LFFHMF013', 'normal', NULL, 0, 40, 52, 14, NULL, 'PANGASH-MEDIUM (1-1.5KG+) / KG', 'pangash-medium-1-15kg-kg-lffhmf013', '1592321714q1CRCoAy.png', '1592321714fLHz3ij5.jpg', NULL, NULL, NULL, NULL, NULL, 180, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:35:14', '2020-07-27 08:12:13', 0, NULL, NULL, NULL, 0, 0),
(31, 'LFFHMF014', 'normal', NULL, 0, 40, 52, 14, NULL, 'POWA-RIVER / KG', 'powa-river-kg-lffhmf014', '1592321762MWFbQqju.png', '1592321763rYpQe6K2.jpg', NULL, NULL, NULL, NULL, NULL, 260, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-16 09:36:02', '2020-07-22 22:55:24', 0, NULL, NULL, NULL, 0, 0),
(32, 'LFFHMF015', 'normal', NULL, 0, 40, 52, 14, NULL, 'TELAPIA MEDIUM (5-8PCS) / KG', 'telapia-medium-5-8pcs-kg-lffhmf015', '1593339007WNBXOQQ7.png', '15933390070ZZ6Ffl7.jpg', NULL, NULL, NULL, NULL, NULL, 162, 0, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-06-16 10:33:27', '2020-07-27 00:44:30', 0, NULL, NULL, NULL, 0, 0),
(33, 'PYMTMF002', 'normal', NULL, 0, 40, 53, 1, NULL, 'Broiler Skin on / kg', 'broiler-skin-on-kg-pymtmf002', '1595267441tX0WSjiF.png', '1595267441GTG17RF0.jpg', NULL, NULL, NULL, NULL, NULL, 225, 245, '<br>', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-06-17 13:14:27', '2020-07-23 05:54:42', 0, NULL, NULL, NULL, 0, 0),
(34, 'BFMTMF001', 'normal', NULL, 0, 40, 53, 66, NULL, 'BEEF BONE IN / KG', 'beef-bone-in-kg-bfmtmf001', '1595267035ujiRyYDA.png', '15952670353mTLHtLE.jpg', NULL, NULL, NULL, NULL, NULL, 575, 640, '<br>', NULL, '<br>', 1, 8, NULL, '6% OFF,Best Deal', '#ed1fa6,#f0ce16', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, '2020-06-17 13:15:51', '2020-07-27 04:27:30', 0, NULL, NULL, NULL, 0, 0),
(35, 'PMMKFC001', 'normal', NULL, 0, 42, 33, 34, NULL, 'Diploma Milk Pow (500 gm)', 'diploma-milk-pow-500-gm-pmmkfc001', '15924259720DaSFjvN.png', '1592425972QTJDg6Hi.jpg', NULL, NULL, NULL, NULL, NULL, 325, 330, '<br>', NULL, '<br>', 1, 16, 'DIPLOMA', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, 'PCS', 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 13:44:35', '2020-07-23 05:53:56', 0, NULL, NULL, NULL, 0, 0),
(36, 'BSSNLPH001', 'normal', NULL, 0, 44, 73, 68, NULL, 'SANITERY NAPKIN-WHISPER/8PAD/L-SIZE', 'sanitery-napkin-whisper8padl-size-bssnlph001', '1592424093d3I3lDX9.png', '1592424093w4YSDgzK.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, 'WHISPER', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-06-17 14:01:33', '2020-08-01 21:11:05', 0, NULL, NULL, NULL, 0, 0),
(37, 'BDBEBAO001', 'normal', NULL, 0, 37, 21, 69, NULL, 'DIAPER/PAMPERS/4-8KG/S', 'diaperpampers4-8kgs-bdbebao001', '1592424402eovSdVvu.png', '1592424402MZFSZl4Y.jpg', NULL, NULL, NULL, NULL, NULL, 380, 410, '<br>', NULL, '<br>', 1, 10, NULL, '8 % Discount,For Your Baby,Limited Qty,Hurry Now >', '#fc1414,#ad0ec7,#23d429,#1713ed', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2020-06-17 14:06:42', '2020-07-30 12:30:38', 0, NULL, NULL, NULL, 0, 0),
(38, 'IFBDBAO001', 'normal', NULL, 0, 37, 19, 70, NULL, 'Lactozen 3/ 350gm pkt/12month', 'lactozen-3-350gm-pkt12month-ifbdbao001', '1592424747vFCWkJqw.png', '1592424747nc8KD2ts.jpg', NULL, NULL, NULL, NULL, NULL, 560, 0, '<br>', NULL, '<br>', 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 14:12:27', '2020-08-01 05:05:09', 0, NULL, NULL, NULL, 0, 0),
(39, 'CCBDBAO001', 'normal', NULL, 0, 37, 19, 71, NULL, 'NESTLE/CERELAC/APP-CHE-FRT 400GM', 'nestlecerelacapp-che-frt-400gm-ccbdbao001', '1592425030MU5lftLe.png', '1592425030AIt7h1Jp.jpg', NULL, NULL, NULL, NULL, NULL, 460, 480, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 14:17:10', '2020-07-27 04:04:11', 0, NULL, NULL, NULL, 0, 0),
(40, 'CCBDBAO002', 'normal', NULL, 0, 37, 19, 71, NULL, 'NESTLE/CERELAC/WHT-MLK 400GM', 'nestlecerelacwht-mlk-400gm-ccbdbao002', '1592425093U4v3rwfT.png', '1592425093KxC24nri.jpg', NULL, NULL, NULL, NULL, NULL, 460, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 14:18:13', '2020-07-17 04:58:28', 0, NULL, NULL, NULL, 0, 0),
(41, 'SOCLGC001', 'normal', NULL, 0, 41, 37, 44, NULL, 'TEER SOYABEAN OIL/5LTR PET', 'teer-soyabean-oil5ltr-pet-soclgc001', '1593359607xOBYlbmj.png', '1593359607fA6R9M36.jpg', NULL, NULL, NULL, NULL, NULL, 500, 505, '<br>', NULL, '<br>', 1, 8, 'TEER', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 14:19:47', '2020-07-28 11:33:44', 0, NULL, NULL, NULL, 0, 0),
(42, 'SOCLGC002', 'normal', NULL, 0, 41, 37, 45, NULL, 'OLITALIA SUNFLOWER OIL /5LTR PET', 'olitalia-sunflower-oil-5ltr-pet-soclgc002', '1592425294v2VTKRun.png', '1592425294lbdHyfKK.jpg', NULL, NULL, NULL, NULL, NULL, 1295, 1320, '<br>', NULL, '<br>', 1, 8, 'OLITALIA', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2020-06-17 14:21:34', '2020-07-27 19:00:29', 0, NULL, NULL, NULL, 0, 0),
(43, 'SRCSGC001', 'normal', NULL, 0, 41, 36, 43, NULL, 'Fresh sugar 1kg pkt', 'fresh-sugar-1kg-pkt-srcsgc001', '1593363356ZH5DEQG6.png', '1593363356pdXQQncC.jpg', NULL, NULL, NULL, NULL, NULL, 69, 0, '<br>', NULL, '<br>', 1, 7, 'FRESH,SUGAR', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-06-17 14:23:16', '2020-07-31 01:42:04', 0, NULL, NULL, NULL, 0, 0),
(44, 'CDBEFC001', 'normal', NULL, 0, 42, 27, 20, NULL, 'coca cola 2.5ltr pet', 'coca-cola-25ltr-pet-cdbefc001', '1592425686MWEJ3zKX.png', '1592425686xMakxbXY.jpg', NULL, NULL, NULL, NULL, NULL, 105, 110, '<br>', NULL, '<br>', 1, 16, 'COKE,COCA COLA', 'Eid ul Azha,Save 5tk.', '#1c18ba,#25b32b', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, '2020-06-17 14:28:06', '2020-07-31 07:10:38', 0, NULL, NULL, NULL, 0, 0),
(45, 'CDBEFC002', 'normal', NULL, 0, 42, 27, 20, NULL, 'Diet coke 320ml imported', 'diet-coke-320ml-imported-cdbefc002', '15924257473AE4LQL6.png', '1592425747j1xuanSk.jpg', NULL, NULL, NULL, NULL, NULL, 135, 140, '<br>', NULL, '<br>', 1, 11, 'COKE,COCA COLA', '7 % Rocking,Grab Now', '#0939e0,#2aeb4a', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-17 14:29:07', '2020-07-26 03:59:09', 0, NULL, NULL, NULL, 0, 0),
(46, 'PPE00001', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'IMDK PULSE OXYMETER', 'imdk-pulse-oxymeter-ppe00001', '1593374580N2WTJPFC.png', '1593374580NCrPfHlL.jpg', NULL, NULL, NULL, NULL, NULL, 2300, 0, '<div>IMDK finger pulse oximeter uses the latest oxygen sensor technology to \r\naccurately determine the level of oxygen in the blood.<br></div><div><p><span class="text_exposed_show"> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> Display type: OLED LCD<br> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> SpO2 measurement range: 70% - 99%<br> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> Accuracy: ±1 BPM or ±1%<br> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> Power: 2 AAA 1.5 V alkaline battery<br> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> Operation temperature: 5°C - 40°C<br> <span class="_5mfr"><span class="_6qdm" style="height: 16px; width: 16px; font-size: 16px; background-image: url(" https:="" static.xx.fbcdn.net="" images="" emoji.php="" v9="" tba="" 1.5="" 16="" 2705.png")"="">✅</span></span> Auto power off: 8 seconds automatic shutdown</span></p></div>', NULL, '<br>', 1, 19, NULL, 'Best Deal', '#1420cb', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2020-06-19 03:45:08', '2020-08-01 17:25:41', 0, NULL, '5,10,30', '2,5,10', 0, 0),
(47, 'LYODP001', 'normal', NULL, 0, 20, 74, NULL, NULL, 'HONEY - BOROI - 250 ML', 'honey-boroi-250-ml-lyodp001', '1593162099ZoUAMWd6.png', '1593162100JyqUSGyR.jpg', NULL, '250 ML,500 ML', '1,1', '0,250', NULL, 250, 280, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 03:01:39', '2020-07-29 15:28:11', 0, NULL, NULL, NULL, 0, 0),
(48, 'LYODP002', 'normal', NULL, 0, 20, 74, NULL, NULL, 'HONEY - LICHU - 250 ML', 'honey-lichu-250-ml-lyodp002', '1593162186DiaIwHNz.png', '1593162186baQBZsqZ.jpg', NULL, '250 ML,500 ML', '1,1', '0,175', NULL, 175, 200, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-06-26 03:03:06', '2020-07-27 03:05:06', 0, NULL, NULL, NULL, 0, 0),
(49, 'LYODP003', 'normal', NULL, 0, 20, 74, NULL, NULL, 'HONEY - KALOJIRA - 250 ML', 'honey-kalojira-250-ml-lyodp003', '1593162259ptLEfmK2.png', '1593162259hLuPB5U2.jpg', NULL, '250 ML,500 ML', '1,1', '0,300', NULL, 300, 325, '<br>', NULL, '<br>', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 1, '2020-06-26 03:04:19', '2020-07-31 23:09:32', 0, NULL, NULL, NULL, 0, 0),
(50, 'LYODP004', 'normal', NULL, 0, 20, 74, NULL, NULL, 'HONEY - KHOLISHA - 250 ML', 'honey-kholisha-250-ml-lyodp004', '1595491530dZulZxh2.png', '1595491530QFkXAW8U.jpg', NULL, '250 ML,500 ML', '0,1', '0,275', NULL, 275, 300, '<br>', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 0, '2020-06-26 03:05:48', '2020-08-05 06:07:48', 0, NULL, NULL, NULL, 0, 0),
(51, 'DEODP001', 'normal', NULL, 0, 20, 76, NULL, NULL, 'Amon Brown Rice / kg', 'amon-brown-rice-kg-deodp001', '1593167945AvCTBsP7.png', '15931679454AbfuDSF.jpg', NULL, NULL, NULL, NULL, NULL, 80, 90, '<br>', NULL, '<br>', 1, 12, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 0, '2020-06-26 04:34:37', '2020-07-28 11:45:36', 0, NULL, NULL, NULL, 0, 0),
(52, 'DEODP002', 'normal', NULL, 0, 20, 76, NULL, NULL, 'BIROI RICE (RED) / KG', 'biroi-rice-red-kg-deodp002', '1593168466fAyslQ9L.png', '1593168466IY3W8Yt7.jpg', NULL, NULL, NULL, NULL, NULL, 90, 105, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 04:47:46', '2020-07-26 06:52:57', 0, NULL, NULL, NULL, 0, 0),
(53, 'LLODP001', 'normal', NULL, 0, 20, 75, NULL, NULL, 'Mustard oil - Ghani made / 0.5 Ltr', 'mustard-oil-ghani-made-05-ltr-llodp001', '1593169211YlPCkj0R.png', '1593169211TPA66I0z.jpg', NULL, NULL, NULL, NULL, NULL, 125, 130, '<br>', NULL, '<br>', 1, 11, NULL, '100% Natural,Ghani made', '#f10cba,#2af14f', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 0, '2020-06-26 05:00:11', '2020-07-29 22:57:50', 0, NULL, NULL, NULL, 0, 0),
(54, 'HEODP001', 'normal', NULL, 0, 20, 79, NULL, NULL, 'MURI - HATE VAJA - 250GM', 'muri-hate-vaja-250gm-heodp001', '1593169386x6lnDXtM.png', '1593169386KsYkH9X8.jpg', NULL, '0.250gm,0.500gm', '1,1', '0,40', NULL, 45, 50, '<br>', NULL, '<br>', 1, 6, NULL, 'Hate Vaja,Amon Dhaner', '#0a0fdc,#f65555', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, 'PCS', 0, 0, 0, 0, 0, 1, 1, 0, '2020-06-26 05:03:06', '2020-08-01 17:04:32', 0, NULL, NULL, NULL, 0, 0),
(55, 'EGCSGC002', 'normal', NULL, 0, 41, 36, 40, NULL, 'EGG- DESI MURGI /4PCS', 'egg-desi-murgi-4pcs-egcsgc002', '15931718752zCARlLA.png', '1593171875rtkfe6LY.jpg', NULL, '4 PCS,12 PCS', '0,1', '0,120', NULL, 60, 65, '<br>', NULL, '<br>', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 05:44:35', '2020-07-30 18:05:53', 0, NULL, NULL, NULL, 0, 0),
(56, 'EGCSGC001', 'normal', NULL, 0, 41, 36, 40, NULL, 'Egg Red /12pcs', 'egg-red-12pcs-egcsgc001', '15931724595awws8RQ.png', '1593172459ffzQDLVf.jpg', NULL, NULL, NULL, NULL, NULL, 102, 106, '<br>', NULL, '<br>', 1, 13, NULL, 'Eid ul Azha,Save.10tk/Dozen', '#2621c7,#e92524', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 1, '2020-06-26 05:54:19', '2020-07-28 00:56:26', 0, NULL, NULL, NULL, 0, 0),
(57, 'LFFSDFP001', 'normal', NULL, 0, 39, 26, 11, NULL, 'DRAGON FOL', 'dragon-fol-lffsdfp001', '1593175001Yq5c4cBU.png', '1593175001a69duCQ9.jpg', NULL, NULL, NULL, NULL, NULL, 670, 720, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{&quot;tn&quot;:&quot;K&quot;}" id="fbPhotoSnowliftCaption"><span class="hasCaption">* ড্রাগনের রং পলিফেনল এনটি অক্সিডেন্ট তারুণ্য ধরে রাখে ও ত্বকের বয়সের ছাপ কমায় ।<br> * ডায়াবেটিস প্রতিরোধে ভূমিকা রাখে এই ফল।<span class="text_exposed_show"><br> <br> এছাড়াও--<br> ১/ক্যান্সার প্রতিরোধ<br> ২/ হজম প্রক্রিয়া ঠিক রাখে<br> ৩/সুস্থ হৃদপিণ্ড<br> ৪/রোগ প্রতিরোধ ক্ষমতা বাড়ায়</span></span></span>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:36:41', '2020-07-28 18:16:31', 0, NULL, NULL, NULL, 0, 0),
(58, 'LFFSDFP002', 'normal', NULL, 0, 39, 26, 11, NULL, 'PAYARA / KG', 'payara-kg-lffsdfp002', '15931750852ErUkzOV.png', '1593175085Zq1lX0Xa.jpg', NULL, NULL, NULL, NULL, NULL, 90, 110, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{&quot;tn&quot;:&quot;K&quot;}" id="fbPhotoSnowliftCaption"><span class="hasCaption"><span class="text_exposed_show"><br></span></span></span>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:38:05', '2020-07-26 09:10:49', 0, NULL, NULL, NULL, 0, 0),
(59, 'LFFSDFP003', 'normal', NULL, 0, 39, 26, 11, NULL, 'PEPE PAKA / KG', 'pepe-paka-kg-lffsdfp003', '1593339116TiFncGqa.png', '1593339116pFj63DX0.jpg', NULL, NULL, NULL, NULL, NULL, 80, 100, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{" tn":"k"}"="" id="fbPhotoSnowliftCaption"><span class="hasCaption"><span class="text_exposed_show"><br></span></span></span>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:39:57', '2020-07-26 09:11:36', 0, NULL, NULL, NULL, 0, 0),
(60, 'LFFSDFP004', 'normal', NULL, 0, 39, 26, 11, NULL, 'SOBRI KOLA / DOZEN', 'sobri-kola-dozen-lffsdfp004', '1593175292KFojslwH.png', '1593175292Q1i0oFvA.jpg', NULL, NULL, NULL, NULL, NULL, 120, 130, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{&quot;tn&quot;:&quot;K&quot;}" id="fbPhotoSnowliftCaption"><span class="hasCaption"><span class="text_exposed_show"><br></span></span></span>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:41:32', '2020-07-26 09:12:53', 0, NULL, NULL, NULL, 0, 0),
(61, 'LFFSDFP005', 'normal', NULL, 0, 39, 26, 11, NULL, 'CHAMPA KOLA / DOZEN', 'champa-kola-dozen-lffsdfp005', '1593175376I6vbrPtQ.png', '1593175377J7ZFrX79.jpg', NULL, NULL, NULL, NULL, NULL, 72, 0, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{&quot;tn&quot;:&quot;K&quot;}" id="fbPhotoSnowliftCaption"><span class="hasCaption"><span class="text_exposed_show"><br></span></span></span>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:42:56', '2020-07-26 09:05:48', 0, NULL, NULL, NULL, 0, 0),
(62, 'LFFSDFP006', 'normal', NULL, 0, 39, 26, 11, NULL, 'Sagor Kola / Dozen', 'sagor-kola-dozen-lffsdfp006', '1593175448JJDFrIaQ.png', '15931754489cG9SzC3.jpg', NULL, NULL, NULL, NULL, NULL, 110, 120, '<span class="fbPhotosPhotoCaption" tabindex="0" aria-live="polite" data-ft="{" tn":"k"}"="" id="fbPhotoSnowliftCaption"><span class="hasCaption"><span class="text_exposed_show"><br></span></span></span>', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 06:44:08', '2020-08-01 05:25:58', 0, NULL, NULL, NULL, 0, 0),
(63, 'LFFSDFP007', 'normal', NULL, 0, 39, 26, 11, NULL, 'HIMSAGOR AAM / KG', 'himsagor-aam-kg-lffsdfp007', '1593338950isZZ3a2V.png', '1593338950AGdtdL9i.jpg', NULL, NULL, NULL, NULL, NULL, 125, 140, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-26 11:04:23', '2020-07-26 06:09:48', 0, NULL, NULL, NULL, 0, 0),
(64, 'LFFSDFP008', 'normal', NULL, 0, 39, 26, 11, NULL, 'LANGRA AAM / KG', 'langra-aam-kg-lffsdfp008', '15933389290vVGdyiN.png', '1593338929YixgNjGQ.jpg', NULL, NULL, NULL, NULL, NULL, 130, 140, '<br>', NULL, '<br>', 1, 11, NULL, 'From Rajshahi,Garden Fresh', '#ee0606,#63de1b', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2020-06-26 11:07:19', '2020-07-26 05:56:39', 0, NULL, NULL, NULL, 0, 0),
(65, 'ASBELPH001', 'normal', NULL, 0, 44, 47, 73, NULL, 'Lifebuoy Soap Bar/ Lemon Fresh (100 gm)', 'lifebuoy-soap-bar-lemon-fresh-100-gm-asbelph001', '1593333537lMjJLUBs.png', '1593333537QW5AXS8m.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 4, 'LIFEBUOY', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:38:57', '2020-07-25 15:40:43', 0, NULL, NULL, NULL, 0, 0),
(66, 'ASBELPH002', 'normal', NULL, 0, 44, 47, 73, NULL, 'Dettol Soap Original  (75 gm)', 'dettol-soap-original-75-gm-asbelph002', '15933336101NaGsMZa.png', '15933336105LNFwJ5K.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 4, 'DETTOL', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:40:10', '2020-07-25 14:27:58', 0, NULL, NULL, NULL, 0, 0),
(67, 'ASBELPH003', 'normal', NULL, 0, 44, 47, 73, NULL, 'Lifebuoy Soap Bar Total (100 gm)', 'lifebuoy-soap-bar-total-100-gm-asbelph003', '1593333694f78aIQ8Y.png', '15933336943pJ5jJrQ.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 4, 'LIFEBUOY', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:41:34', '2020-07-25 16:04:03', 0, NULL, NULL, NULL, 0, 0),
(68, 'ASBELPH004', 'normal', NULL, 0, 44, 47, 73, NULL, 'Lifebuoy Soap Bar Neem (75 gm)', 'lifebuoy-soap-bar-neem-75-gm-asbelph004', '1593333765scq21aWr.png', '159333376582s9cPxU.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 5, 'LIFEBUOY', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:42:45', '2020-07-31 01:49:12', 0, NULL, NULL, NULL, 0, 0),
(69, 'ASBELPH005', 'normal', NULL, 0, 44, 47, 73, NULL, 'Lifebuoy Soap Bar Care (150 gm)', 'lifebuoy-soap-bar-care-150-gm-asbelph005', '1593333873I1cFaFO0.png', '15933338731VzUt1Ag.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:44:33', '2020-07-25 15:17:23', 0, NULL, NULL, NULL, 0, 0),
(70, 'ASBELPH006', 'normal', NULL, 0, 44, 47, 73, NULL, 'ACI Savlon Fresh Soap (100 gm)', 'aci-savlon-fresh-soap-100-gm-asbelph006', '1593334307V1RSOETf.png', '1593334307b1oV8o6f.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:51:47', '2020-07-25 13:39:31', 0, NULL, NULL, NULL, 0, 0),
(71, 'ASBELPH008', 'normal', NULL, 0, 44, 47, 73, NULL, 'Dettol Soap Skincare (75 gm)', 'dettol-soap-skincare-75-gm-asbelph008', '1593334395DYPo1kIG.png', '1593334395Jma4eV8a.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:53:15', '2020-07-25 14:53:12', 0, NULL, NULL, NULL, 0, 0),
(72, 'ASBELPH009', 'normal', NULL, 0, 44, 47, 73, NULL, 'Savlon Mild Soap (125 gm)', 'savlon-mild-soap-125-gm-asbelph009', '1593334513nYOlYCJy.png', '15933345136kUr8OpZ.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:55:13', '2020-07-26 17:06:06', 0, NULL, NULL, NULL, 0, 0),
(73, 'ASBELPH010', 'normal', NULL, 0, 44, 47, 73, NULL, 'OXY Charcol Deo Soap (Combo Offer) (75 gm)', 'oxy-charcol-deo-soap-combo-offer-75-gm-asbelph010', '1593334694FJpdiVTs.png', '1593334695qBfPDB0P.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 02:58:14', '2020-07-21 01:08:30', 0, NULL, NULL, NULL, 0, 0),
(74, 'BSBELPH001', 'normal', NULL, 0, 44, 47, 72, NULL, 'Lux Soap Bar Soft Touch (35 gm)', 'lux-soap-bar-soft-touch-35-gm-bsbelph001', '1593334816VxffC86M.png', '1593334816Ok61E4CO.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:00:16', '2020-07-26 16:13:38', 0, NULL, NULL, NULL, 0, 0),
(75, 'BSBELPH002', 'normal', NULL, 0, 44, 47, 72, NULL, 'Dove Beauty Bar White (100 gm)', 'dove-beauty-bar-white-100-gm-bsbelph002', '1593334911sSNXojCa.png', '1593334911mNkfZuyN.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:01:51', '2020-07-29 17:55:50', 0, NULL, NULL, NULL, 0, 0),
(76, 'BSBELPH003', 'normal', NULL, 0, 44, 47, 72, NULL, 'Lux Soap Bar Iconic Iris (125 gm)', 'lux-soap-bar-iconic-iris-125-gm-bsbelph003', '1593335017iLtI0dbE.png', '1593335017HUoqj7Mi.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:03:37', '2020-07-30 03:49:23', 0, NULL, NULL, NULL, 0, 0),
(77, 'BSBELPH004', 'normal', NULL, 0, 44, 47, 72, NULL, 'Lux Velvet Touch Soap (75 gm)', 'lux-velvet-touch-soap-75-gm-bsbelph004', '1593335138JQKoozQa.png', '15933351386nfqF3yy.jpg', NULL, NULL, NULL, NULL, NULL, 26, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:05:38', '2020-07-29 17:56:26', 0, NULL, NULL, NULL, 0, 0),
(78, 'BSBELPH005', 'normal', NULL, 0, 44, 47, 72, NULL, 'Sandalina Sandal & Rose Soap (100 gm)', 'sandalina-sandal-rose-soap-100-gm-bsbelph005', '1593335341WnAwlBy7.png', '15933353417OCz4hbw.jpg', NULL, NULL, NULL, NULL, NULL, 36, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:09:01', '2020-07-26 16:26:58', 0, NULL, NULL, NULL, 0, 0),
(79, 'BSBELPH006', 'normal', NULL, 0, 44, 47, 72, NULL, 'Imperial Leather Classic Soap (200 gm)', 'imperial-leather-classic-soap-200-gm-bsbelph006', '1593335398GRQMoLYK.png', '1593335398Q7vf3aTo.jpg', NULL, NULL, NULL, NULL, NULL, 129, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:09:58', '2020-07-26 15:55:51', 0, NULL, NULL, NULL, 0, 0),
(80, 'BSBELPH007', 'normal', NULL, 0, 44, 47, 72, NULL, 'ACI Neem Original  Soap (100 gm)', 'aci-neem-original-soap-100-gm-bsbelph007', '1593335503Pg7SUgYQ.png', '1593335503Bzg5ijL9.jpg', NULL, NULL, NULL, NULL, NULL, 42, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:11:43', '2020-07-26 15:38:11', 0, NULL, NULL, NULL, 0, 0),
(81, 'BSHBELPH001', 'normal', NULL, 0, 44, 47, 74, NULL, 'Creme 21 Soft Shower Dutch (250 ml)', 'creme-21-soft-shower-dutch-250-ml-bshbelph001', '1593337047kZ1nkr9f.png', '1593337047YKgIBV9S.jpg', NULL, NULL, NULL, NULL, NULL, 330, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:37:27', '2020-07-26 14:55:57', 0, NULL, NULL, NULL, 0, 0),
(82, 'BSHBELPH002', 'normal', NULL, 0, 44, 47, 74, NULL, 'Nivea Female Lemon Shower Gel (250 ml)', 'nivea-female-lemon-shower-gel-250-ml-bshbelph002', '15933371051bSkdmAL.png', '1593337106jlAq7kjX.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:38:25', '2020-07-26 15:05:28', 0, NULL, NULL, NULL, 0, 0),
(83, 'BSHBELPH003', 'normal', NULL, 0, 44, 47, 74, NULL, 'Creme 21 Strandause Shower Dusch Gel (250 ml)', 'creme-21-strandause-shower-dusch-gel-250-ml-bshbelph003', '1593337181jbhsYFFb.png', '15933371811NgodVJi.jpg', NULL, NULL, NULL, NULL, NULL, 330, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:39:41', '2020-07-26 15:00:48', 0, NULL, NULL, NULL, 0, 0),
(84, 'BLBELPH001', 'normal', NULL, 0, 44, 47, 75, NULL, 'Vaseline Lotion Healthy White 200 ml', 'vaseline-lotion-healthy-white-200-ml-blbelph001', '15933373372EKIgZ9W.png', '1593337337EjDOww4h.jpg', NULL, NULL, NULL, NULL, NULL, 190, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:42:17', '2020-07-26 14:51:13', 0, NULL, NULL, NULL, 0, 0),
(85, 'BLBELPH002', 'normal', NULL, 0, 44, 47, 75, NULL, 'Vaseline Intensive Care Gel Oil (200 ml)', 'vaseline-intensive-care-gel-oil-200-ml-blbelph002', '1593337390TTM81geJ.png', '1593337390K1PSN6Zd.jpg', NULL, NULL, NULL, NULL, NULL, 180, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 03:43:10', '2020-07-26 14:46:47', 0, NULL, NULL, NULL, 0, 0),
(86, 'FWFELPH001', 'normal', NULL, 0, 44, 44, 76, NULL, 'Ponds Pure White Mineral Clay Foam (90 gm)', 'ponds-pure-white-mineral-clay-foam-90-gm-fwfelph001', '1593339886oztcObzt.png', '1593339886KpPIAMN9.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:24:46', '2020-07-21 01:13:17', 0, NULL, NULL, NULL, 0, 0),
(87, 'FWFELPH002', 'normal', NULL, 0, 44, 44, 76, NULL, 'Ponds White Beauty Face Wash (90 gm)', 'ponds-white-beauty-face-wash-90-gm-fwfelph002', '1593339949plmy8leW.png', '1593339949vNMNWD5a.jpg', NULL, NULL, NULL, NULL, NULL, 165, 180, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:25:49', '2020-07-29 15:34:26', 1, '08/10/2020', NULL, NULL, 0, 0),
(88, 'FWFELPH003', 'normal', NULL, 0, 44, 44, 76, NULL, 'Garnier Men Acno Fight Face Wash (100 gm)', 'garnier-men-acno-fight-face-wash-100-gm-fwfelph003', '1593339995KNKkqRkK.png', '1593339995zy6XIBVR.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:26:35', '2020-07-21 00:39:20', 0, NULL, NULL, NULL, 0, 0),
(89, 'FWFELPH004', 'normal', NULL, 0, 44, 44, 76, NULL, 'Garnier Men Oil Clear Gel Face Wash (100 gm)', 'garnier-men-oil-clear-gel-face-wash-100-gm-fwfelph004', '1593340143Y2j958c8.png', '1593340143bZrNV6E5.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:29:03', '2020-07-26 16:35:51', 0, NULL, NULL, NULL, 0, 0),
(90, 'FWFELPH005', 'normal', NULL, 0, 44, 44, 76, NULL, 'OXY Active Face Wash (50 gm)', 'oxy-active-face-wash-50-gm-fwfelph005', '1593340199EwRTImij.png', '1593340200A2zzeeOA.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:29:59', '2020-07-26 16:44:23', 0, NULL, NULL, NULL, 0, 0),
(91, 'FWFELPH006', 'normal', NULL, 0, 44, 44, 76, NULL, 'Ponds Men Facewash Oil Clear (50 gm)', 'ponds-men-facewash-oil-clear-50-gm-fwfelph006', '1593340320DW6fTsuM.png', '15933403209HSGOfd5.jpg', NULL, NULL, NULL, NULL, NULL, 125, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:32:00', '2020-07-26 16:57:30', 0, NULL, NULL, NULL, 0, 0),
(92, 'FWFELPH007', 'normal', NULL, 0, 44, 44, 76, NULL, 'Ponds Men Facewash Energy (100 gm)', 'ponds-men-facewash-energy-100-gm-fwfelph007', '1593340359C5Mbdsgc.png', '1593340359R22Ovnmi.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:32:39', '2020-07-29 15:32:32', 0, NULL, NULL, NULL, 0, 0),
(93, 'FWFELPH008', 'normal', NULL, 0, 44, 44, 76, NULL, 'Ponds Men Facewash Acne  (100 gm)', 'ponds-men-facewash-acne-100-gm-fwfelph008', '1593340399XSAybFe9.png', '15933403998LjBSgyg.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:33:19', '2020-07-26 16:48:36', 0, NULL, NULL, NULL, 0, 0),
(94, 'FWFELPH009', 'normal', NULL, 0, 44, 44, 76, NULL, 'Garnier Men Acno Fight Cream (45 gm)', 'garnier-men-acno-fight-cream-45-gm-fwfelph009', '15933404917xdvGjRx.png', '1593340491FzuATKhH.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:34:51', '2020-07-26 16:31:26', 0, NULL, NULL, NULL, 0, 0),
(95, 'FCFELPH001', 'normal', NULL, 0, 44, 44, 77, NULL, 'Nivea Soft Creme (100 ml)', 'nivea-soft-creme-100-ml-fcfelph001', '1593340594LCTvBbYR.png', '159334059494uPaq1Q.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:36:34', '2020-07-29 18:15:10', 0, NULL, NULL, NULL, 0, 0),
(96, 'FCFELPH002', 'normal', NULL, 0, 44, 44, 77, NULL, 'Creme 21 Pro-V B5  Day Cream (150 ml)', 'creme-21-pro-v-b5-day-cream-150-ml-fcfelph002', '1593340688boAFvxFk.png', '1593340688ISOvVpiz.jpg', NULL, NULL, NULL, NULL, NULL, 425, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:38:08', '2020-07-26 15:10:09', 0, NULL, NULL, NULL, 0, 0),
(97, 'FCFELPH003', 'normal', NULL, 0, 44, 44, 77, NULL, 'Garnier Men PW Cream( 45 gm)', 'garnier-men-pw-cream-45-gm-fcfelph003', '1593340805A0Fbx1ti.png', '1593340805PDhMotWL.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:40:05', '2020-07-26 15:14:55', 0, NULL, NULL, NULL, 0, 0),
(98, 'FCFELPH004', 'normal', NULL, 0, 44, 44, 77, NULL, 'Pond''s White Beauty (35 gm)', 'ponds-white-beauty-35-gm-fcfelph004', '1593341101OWmeUX0r.png', '1593341101GRk1z5YA.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:45:01', '2020-07-26 15:33:37', 0, NULL, NULL, NULL, 0, 0),
(99, 'FCFELPH005', 'normal', NULL, 0, 44, 44, 77, NULL, 'Pond’s Vanishing Cream (28 gm)', 'ponds-vanishing-cream-28-gm-fcfelph005', '1593341144NdMKBWk5.png', '1593341144bPGzKzAz.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:45:44', '2020-07-26 15:29:00', 0, NULL, NULL, NULL, 0, 0),
(100, 'FCFELPH006', 'normal', NULL, 0, 44, 44, 77, NULL, 'Jhonson''s 24 Hour Moisture Cream (200 ml)', 'jhonsons-24-hour-moisture-cream-200-ml-fcfelph006', '1593341239YQQa58vj.png', '1593341239G2zHGnGd.jpg', NULL, NULL, NULL, NULL, NULL, 340, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:47:19', '2020-07-26 15:19:44', 0, NULL, NULL, NULL, 0, 0),
(101, 'SOHELPH001', 'normal', NULL, 0, 44, 45, 78, NULL, 'Sunsilk Shampoo Black Shine (375 ml)', 'sunsilk-shampoo-black-shine-375-ml-sohelph001', '1593341837cwZ5anvx.png', '1593341837H0fki0Tl.jpg', NULL, NULL, NULL, NULL, NULL, 320, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 04:57:17', '2020-07-26 17:26:29', 0, NULL, NULL, NULL, 0, 0),
(102, 'SOHELPH002', 'normal', NULL, 0, 44, 45, 78, NULL, 'Sunsilk Shampoo Hair Fall Solution (375 ml)', 'sunsilk-shampoo-hair-fall-solution-375-ml-sohelph002', '1593342187Py4CQgjg.png', '1593342187kF8tk2nP.jpg', NULL, NULL, NULL, NULL, NULL, 305, 320, '<br>', NULL, '<br>', 1, 6, NULL, 'Save 15tk', '#0e26a1', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:03:07', '2020-08-01 13:55:17', 1, '08/10/2020', NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(103, 'SOHELPH003', 'normal', NULL, 0, 44, 45, 78, NULL, 'Clear Men Shampoo Cool Sport  (180 ml)', 'clear-men-shampoo-cool-sport-180-ml-sohelph003', '1593342311DFVOczNy.png', '1593342311GFDrLtji.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:05:11', '2020-07-26 17:01:45', 0, NULL, NULL, NULL, 0, 0),
(104, 'SOHELPH004', 'normal', NULL, 0, 44, 45, 78, NULL, 'TRESemmé Shampoo Keratin Smooth (580 ml)', 'tresemme-shampoo-keratin-smooth-580-ml-sohelph004', '1593342431ive8nzzx.png', '1593342431ckQNzVdn.jpg', NULL, NULL, NULL, NULL, NULL, 630, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:07:11', '2020-07-26 17:51:16', 0, NULL, NULL, NULL, 0, 0),
(105, 'SOHELPH005', 'normal', NULL, 0, 44, 45, 78, NULL, 'Sunsilk Shampoo Thick & Long (180 ml)', 'sunsilk-shampoo-thick-long-180-ml-sohelph005', '1593342485rVnh6NEh.png', '1593342485OYxhzKXl.jpg', NULL, NULL, NULL, NULL, NULL, 175, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:08:05', '2020-07-26 17:38:48', 0, NULL, NULL, NULL, 0, 0),
(106, 'SOHELPH006', 'normal', NULL, 0, 44, 45, 78, NULL, 'Dove Shampoo Hairfall Rescue (650 ml)', 'dove-shampoo-hairfall-rescue-650-ml-sohelph006', '1593342548J8yojH9q.png', '1593342548lIdxYHh5.jpg', NULL, NULL, NULL, NULL, NULL, 600, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:09:08', '2020-07-26 17:14:12', 0, NULL, NULL, NULL, 0, 0),
(107, 'SOHELPH007', 'normal', NULL, 0, 44, 45, 78, NULL, 'Tresemme Shampoo Keratin Smooth (185 ml)', 'tresemme-shampoo-keratin-smooth-185-ml-sohelph007', '1593342636FKdF5YQH.png', '1593342636OBJUMyWr.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:10:36', '2020-07-26 17:47:07', 0, NULL, NULL, NULL, 0, 0),
(108, 'SOHELPH008', 'normal', NULL, 0, 44, 45, 78, NULL, 'Tresemme Shampoo Hair Fall Defense (580 ml)', 'tresemme-shampoo-hair-fall-defense-580-ml-sohelph008', '1593342728J2Mjiemc.png', '1593342728MNCYcFab.jpg', NULL, NULL, NULL, NULL, NULL, 630, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:12:08', '2020-07-26 17:42:45', 0, NULL, NULL, NULL, 0, 0),
(109, 'SOHELPH009', 'normal', NULL, 0, 44, 45, 78, NULL, 'Pantene Anti Dandruff Shampoo (180 ml)', 'pantene-anti-dandruff-shampoo-180-ml-sohelph009', '1593342772fEuh3NKm.png', '1593342772iCh3mbWD.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:12:52', '2020-07-26 17:22:18', 0, NULL, NULL, NULL, 0, 0),
(110, 'SOHELPH010', 'normal', NULL, 0, 44, 45, 78, NULL, 'Head & Shoulder Cool Menthol Shampoo (180 ml)', 'head-shoulder-cool-menthol-shampoo-180-ml-sohelph010', '15933428922iEwc4l8.png', '1593342892q9SaTlen.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:14:52', '2020-07-26 13:26:18', 0, NULL, NULL, NULL, 0, 0),
(111, 'SOHELPH011', 'normal', NULL, 0, 44, 45, 78, NULL, 'Clinic Plus Strong & Long Shampoo (340 ml)', 'clinic-plus-strong-long-shampoo-340-ml-sohelph011', '1593342949o74exy1G.png', '1593342949w4qykcUV.jpg', NULL, NULL, NULL, NULL, NULL, 260, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 05:15:49', '2020-07-26 13:23:32', 0, NULL, NULL, NULL, 0, 0),
(112, 'CAREGC001', 'normal', NULL, 0, 41, 38, 51, NULL, 'Fresh Chinigura Rice (1KG)', 'fresh-chinigura-rice-1kg-caregc001', '1593347249OzwtESuO.png', '1593347249lfDTVzKp.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:27:29', '2020-07-24 12:28:20', 0, NULL, NULL, NULL, 0, 0),
(113, 'CAREGC002', 'normal', NULL, 0, 41, 38, 51, NULL, 'PRAN Chinigura Rice (2 KG)', 'pran-chinigura-rice-2-kg-caregc002', '1593347281QI0tkldb.png', '1593347281lBdacg0J.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:28:01', '2020-07-24 12:40:05', 0, NULL, NULL, NULL, 0, 0),
(114, 'CAREGC003', 'normal', NULL, 0, 41, 38, 51, NULL, 'Rupchanda Chinigura Rice (1 KG)', 'rupchanda-chinigura-rice-1-kg-caregc003', '1593347328SjMSQF6h.png', '1593347328oH3uPqCr.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:28:48', '2020-07-24 13:01:22', 0, NULL, NULL, NULL, 0, 0),
(115, 'CAREGC004', 'normal', NULL, 0, 41, 38, 51, NULL, 'Chashi Aromatic Chinigura Rice (2 KG)', 'chashi-aromatic-chinigura-rice-2-kg-caregc004', '1593347419p6GmnCZn.png', '1593347419C2nJ2XUv.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:30:19', '2020-07-26 05:21:07', 0, NULL, NULL, NULL, 0, 0),
(116, 'CAREGC005', 'normal', NULL, 0, 41, 38, 51, NULL, 'Chashi Aromatic Chinigura Rice (5 KG)', 'chashi-aromatic-chinigura-rice-5-kg-caregc005', '1593347495Syxfuftq.png', '1593347495OFE2PXVx.jpg', NULL, NULL, NULL, NULL, NULL, 600, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:31:35', '2020-07-26 11:51:13', 0, NULL, NULL, NULL, 0, 0),
(117, 'NLREGC001', 'normal', NULL, 0, 41, 38, 50, NULL, 'ACI Pure Nazirshail Rice (5 KG)', 'aci-pure-nazirshail-rice-5-kg-nlregc001', '1593349096sbKvx0Gc.png', '1593349096N1oBndid.jpg', NULL, NULL, NULL, NULL, NULL, 450, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:58:16', '2020-07-26 11:31:11', 0, NULL, NULL, NULL, 0, 0),
(118, 'NLREGC002', 'normal', NULL, 0, 41, 38, 50, NULL, 'PRAN Nazirshail Rice (5 KG)', 'pran-nazirshail-rice-5-kg-nlregc002', '1593349133WKwNea7q.png', '1593349133u1ZwnJtp.jpg', NULL, NULL, NULL, NULL, NULL, 402, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 06:58:53', '2020-07-26 11:42:41', 0, NULL, NULL, NULL, 0, 0),
(119, 'BIREGC001', 'normal', NULL, 0, 41, 38, 81, NULL, 'Kohinoor Basmati Rice (1 KG)', 'kohinoor-basmati-rice-1-kg-biregc001', '1593350096cUh1GSoJ.png', '1593350096NidMN5Q7.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:00:57', '2020-07-26 16:40:08', 0, NULL, NULL, NULL, 0, 0),
(120, 'SWSSGC001', 'normal', NULL, 0, 41, 40, 54, NULL, 'Cinnamon (Daruchini) 100 gm', 'cinnamon-daruchini-100-gm-swssgc001', '1593350582trY1TtlO.png', '1593350582UgGcLI9I.jpg', NULL, NULL, NULL, NULL, NULL, 55, 65, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:23:02', '2020-07-30 12:59:17', 0, NULL, NULL, NULL, 0, 0),
(121, 'SWSSGC002', 'normal', NULL, 0, 41, 40, 54, NULL, 'Cumin Seed (Jira) 100 gm', 'cumin-seed-jira-100-gm-swssgc002', '1593350883FkGR9nUo.png', '1593350884P7E7u0Jv.jpg', NULL, NULL, NULL, NULL, NULL, 41, 48, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:28:03', '2020-07-26 10:57:58', 0, NULL, NULL, NULL, 0, 0),
(122, 'SWSSGC003', 'normal', NULL, 0, 41, 40, 54, NULL, 'Cloves (Lobongo)- 50 gm', 'cloves-lobongo-50-gm-swssgc003', '159335097877mFcW77.png', '1593350978svbMj5ta.jpg', NULL, NULL, NULL, NULL, NULL, 46, 54, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:29:38', '2020-07-26 10:57:23', 0, NULL, NULL, NULL, 0, 0),
(123, 'SWSSGC004', 'normal', NULL, 0, 41, 40, 54, NULL, 'Black Cumin (Kalo Jira)- 100 gm', 'black-cumin-kalo-jira-100-gm-swssgc004', '1593351006YLRyJhGC.png', '1593351007D2i9pz3D.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:30:06', '2020-07-21 18:40:05', 0, NULL, NULL, NULL, 0, 0),
(124, 'SWSSGC005', 'normal', NULL, 0, 41, 40, 54, NULL, 'Black Pepper (Gol Morich)- 50 gm', 'black-pepper-gol-morich-50-gm-swssgc005', '1593351056DMxoIg0D.png', '1593351056rUqikJu5.jpg', NULL, NULL, NULL, NULL, NULL, 26, 30, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:30:56', '2020-07-23 05:37:54', 0, NULL, NULL, NULL, 0, 0),
(125, 'SWSSGC006', 'normal', NULL, 0, 41, 40, 54, NULL, 'Dried Chilies (Shukna Morich)- 100 gm', 'dried-chilies-shukna-morich-100-gm-swssgc006', '1593351116lwFAoPm8.png', '1593351118iqiOf4IQ.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:31:56', '2020-07-23 05:38:23', 0, NULL, NULL, NULL, 0, 0),
(126, 'SWSSGC007', 'normal', NULL, 0, 41, 40, 54, NULL, 'Alu Bokhara (100 gm)', 'alu-bokhara-100-gm-swssgc007', '15933511577q7zuVXZ.png', '1593351157PqANd6a7.jpg', NULL, NULL, NULL, NULL, NULL, 33, 38, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:32:37', '2020-07-26 10:56:43', 0, NULL, NULL, NULL, 0, 0),
(127, 'SWSSGC008', 'normal', NULL, 0, 41, 40, 54, NULL, 'Cardamom (Elachi)- 50 gm', 'cardamom-elachi-50-gm-swssgc008', '1593351229zNmLPE6N.png', '1593351229bJ3EBxeQ.jpg', NULL, NULL, NULL, NULL, NULL, 230, 270, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:33:49', '2020-07-31 01:43:06', 0, NULL, NULL, NULL, 0, 0),
(128, 'SWSSGC009', 'normal', NULL, 0, 41, 40, 54, NULL, 'Fenugreek Seed (Methi)- 100 gm', 'fenugreek-seed-methi-100-gm-swssgc009', '1593351291YM5HLzQu.png', '1593351296lPzpau7K.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:34:51', '2020-07-21 19:07:53', 0, NULL, NULL, NULL, 0, 0),
(129, 'SWSSGC010', 'normal', NULL, 0, 41, 40, 54, NULL, 'Mustard Seed (Yellow Sorisha) 100 gm', 'mustard-seed-yellow-sorisha-100-gm-swssgc010', '1593351367irREwZlv.png', '1593351367oAlZo12L.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:36:07', '2020-07-21 19:11:56', 0, NULL, NULL, NULL, 0, 0),
(130, 'SWSSGC011', 'normal', NULL, 0, 41, 40, 54, NULL, 'Fennel (Mouri)- 100 gm', 'fennel-mouri-100-gm-swssgc011', '1593351417cZTnC71H.png', '15933514175CgIytDB.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:36:57', '2020-07-21 19:15:50', 0, NULL, NULL, NULL, 0, 0),
(131, 'SWSSGC012', 'normal', NULL, 0, 41, 40, 54, NULL, 'Mix Spice (Pach Foron)- 100 gm', 'mix-spice-pach-foron-100-gm-swssgc012', '1593351495WpJeiVxs.png', '1593351495VjrOIYuh.jpg', NULL, NULL, NULL, NULL, NULL, 27, 32, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-28 07:38:15', '2020-07-31 07:18:29', 0, NULL, NULL, NULL, 0, 0),
(132, 'SWSSGC013', 'normal', NULL, 0, 41, 40, 54, NULL, 'Dhonia (Coriander)- 100 gm', 'dhonia-coriander-100-gm-swssgc013', '1593351571p0GIcq08.png', '1593351571nRrlEqiF.jpg', NULL, NULL, NULL, NULL, NULL, 17, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:39:31', '2020-07-20 22:05:23', 0, NULL, NULL, NULL, 0, 0),
(133, 'SWSSGC014', 'normal', NULL, 0, 41, 40, 54, NULL, 'Mustard Seed (Red Sorisha)- 100 gm', 'mustard-seed-red-sorisha-100-gm-swssgc014', '1593351622JCwqvG7m.png', '1593351622HpTKV3aD.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:40:22', '2020-07-20 22:22:51', 0, NULL, NULL, NULL, 0, 0),
(134, 'SWSSGC015', 'normal', NULL, 0, 41, 40, 54, NULL, 'Tokma Seed (Basil)- 100 gm', 'tokma-seed-basil-100-gm-swssgc015', '1593351702VmFR3L6k.png', '1593351702kDXYDmoL.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:41:42', '2020-07-20 22:41:33', 0, NULL, NULL, NULL, 0, 0),
(135, 'SWSSGC016', 'normal', NULL, 0, 41, 40, 54, NULL, 'Poppy Seed (Posto Dana)- 50 gm', 'poppy-seed-posto-dana-50-gm-swssgc016', '1593351779CN6v5hev.png', '1593351779Mg5VpgTV.jpg', NULL, NULL, NULL, NULL, NULL, 58, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:42:59', '2020-07-21 03:42:47', 0, NULL, NULL, NULL, 0, 0),
(136, 'SWSSGC017', 'normal', NULL, 0, 41, 40, 54, NULL, 'Paprika Bottle (15 gm)', 'paprika-bottle-15-gm-swssgc017', '1593351819kXHZsrtU.png', '1593351819IwnTz2wg.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:43:39', '2020-07-20 22:29:58', 0, NULL, NULL, NULL, 0, 0),
(137, 'SWSSGC018', 'normal', NULL, 0, 41, 40, 54, NULL, 'White Pepper (50 gm)', 'white-pepper-50-gm-swssgc018', '1593351859IYEBnbvH.png', '1593351859gvvpqvFj.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:44:19', '2020-07-21 04:00:29', 0, NULL, NULL, NULL, 0, 0),
(138, 'SWSSGC019', 'normal', NULL, 0, 41, 40, 54, NULL, 'Nutmeg (Jayfal 100gm)', 'nutmeg-jayfal-100gm-swssgc019', '1593351946zS24cOTY.png', '1593351946s1hCtrr6.jpg', NULL, NULL, NULL, NULL, NULL, 42, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:45:46', '2020-07-20 22:28:29', 0, NULL, NULL, NULL, 0, 0),
(139, 'SWSSGC020', 'normal', NULL, 0, 41, 40, 54, NULL, 'Ajwain (100 gm)', 'ajwain-100-gm-swssgc020', '1593352016Rj4NgTlJ.png', '1593352016mcCBEvHQ.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:46:56', '2020-07-20 21:50:44', 0, NULL, NULL, NULL, 0, 0),
(140, 'SWSSGC021', 'normal', NULL, 0, 41, 40, 54, NULL, 'Black Sesame (Till)- 100 gm', 'black-sesame-till-100-gm-swssgc021', '1593352156oWmkJlYH.png', '1593352156Z8uvqORJ.jpg', NULL, NULL, NULL, NULL, NULL, 18, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:49:16', '2020-07-20 21:58:01', 0, NULL, NULL, NULL, 0, 0),
(141, 'SWSSGC022', 'normal', NULL, 0, 41, 40, 54, NULL, 'Black Cardamom (kalo elachi) 50 gm', 'black-cardamom-kalo-elachi-50-gm-swssgc022', '1593352238ckqYC3lm.png', '1593352238c6CMfgtz.jpg', NULL, NULL, NULL, NULL, NULL, 100, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:50:38', '2020-07-20 21:56:31', 0, NULL, NULL, NULL, 0, 0),
(142, 'SWSSGC023', 'normal', NULL, 0, 41, 40, 54, NULL, 'Mace (Jaytree)- 50 gm', 'mace-jaytree-50-gm-swssgc023', '1593352282RjzRbb0E.png', '15933522823WLDcEIk.jpg', NULL, NULL, NULL, NULL, NULL, 198, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:51:22', '2020-07-20 22:18:27', 0, NULL, NULL, NULL, 0, 0),
(143, 'SWSSGC024', 'normal', NULL, 0, 41, 40, 54, NULL, 'Bay Leaves (Tejpata)- 100 gm', 'bay-leaves-tejpata-100-gm-swssgc024', '1593352483j63ptSvz.png', '159335248301eBJDhH.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 07:54:43', '2020-07-20 21:53:34', 0, NULL, NULL, NULL, 0, 0),
(144, 'NLREGC003', 'normal', NULL, 0, 41, 38, 50, NULL, 'Nazirshail Rice Premium (5 KG)', 'nazirshail-rice-premium-5-kg-nlregc003', '15933530511MplBuMF.png', '1593353051WzLzUflB.jpg', NULL, NULL, NULL, NULL, NULL, 286, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2020-06-28 08:04:11', '2020-07-26 11:36:59', 0, NULL, NULL, NULL, 0, 0),
(145, 'MTREGC001', 'normal', NULL, 0, 41, 38, 49, NULL, 'PRAN Miniket Rice (5 KG)', 'pran-miniket-rice-5-kg-mtregc001', '1593353153rdYtEGtv.png', '15933531539hYfOrC3.jpg', NULL, NULL, NULL, NULL, NULL, 365, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:05:53', '2020-07-26 11:39:53', 0, NULL, NULL, NULL, 0, 0),
(146, 'MTREGC002', 'normal', NULL, 0, 41, 38, 49, NULL, 'ACI Pure Miniket Rice (5 KG)', 'aci-pure-miniket-rice-5-kg-mtregc002', '1593353202lcAqVyKy.png', '1593353204gaIrtCN7.jpg', NULL, NULL, NULL, NULL, NULL, 360, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2020-06-28 08:06:42', '2020-07-26 11:28:23', 0, NULL, NULL, NULL, 0, 0),
(147, 'MTREGC003', 'normal', NULL, 0, 41, 38, 49, NULL, 'Miniket Rice Premium (5 KG)', 'miniket-rice-premium-5-kg-mtregc003', '1593353266QqxY0I7D.png', '1593353267tmEkAH3F.jpg', NULL, NULL, NULL, NULL, NULL, 270, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:07:46', '2020-07-26 11:34:06', 0, NULL, NULL, NULL, 0, 0),
(148, 'SPSSGC001', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Turmeric Powder (Holud) 200 gm', 'radhuni-turmeric-powder-holud-200-gm-spssgc001', '1593353837wRGMmzev.png', '1593353837LsbwJ83X.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:17:17', '2020-07-20 21:25:18', 0, NULL, NULL, NULL, 0, 0),
(149, 'SPSSGC002', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Chili (Morich) Powder- 200 gm', 'radhuni-chili-morich-powder-200-gm-spssgc002', '15933538734Pvat3P6.png', '1593353873z22n6zE1.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:17:53', '2020-07-20 21:17:56', 0, NULL, NULL, NULL, 0, 0),
(150, 'SPSSGC003', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Cumin (Jeera) Powder- 100 gm', 'radhuni-cumin-jeera-powder-100-gm-spssgc003', '1593354006Okggq1dJ.png', '15933540068ogMxCEP.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:20:06', '2020-07-20 21:20:50', 0, NULL, NULL, NULL, 0, 0),
(151, 'SPSSGC004', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Coriander (Dhoniya) Powder- 200 gm', 'radhuni-coriander-dhoniya-powder-200-gm-spssgc004', '1593354060IQrSGwzN.png', '15933540609xylQZmr.jpg', NULL, NULL, NULL, NULL, NULL, 63, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:21:00', '2020-07-20 21:19:20', 0, NULL, NULL, NULL, 0, 0),
(152, 'SPSSGC005', 'normal', NULL, 0, 41, 40, 53, NULL, 'Nestle MAGGI Shaad-e Magic Seasoning (4 gm*10 pcs)', 'nestle-maggi-shaad-e-magic-seasoning-4-gm10-pcs-spssgc005', '15933545481j5Fkx84.png', '15933545482mmvhQcp.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:29:08', '2020-07-20 21:10:05', 0, NULL, NULL, NULL, 0, 0),
(153, 'SPSSGC006', 'normal', NULL, 0, 41, 40, 53, NULL, 'Black Pepper Powder (50 gm)', 'black-pepper-powder-50-gm-spssgc006', '1593354604CcD12awt.png', '1593354604PToTJ8Sj.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:30:04', '2020-07-20 21:07:01', 0, NULL, NULL, NULL, 0, 0),
(154, 'SPSSGC007', 'normal', NULL, 0, 41, 40, 53, NULL, 'PRAN Chili Powder Jar (Morich 200 gm)', 'pran-chili-powder-jar-morich-200-gm-spssgc007', '15933547824M2AF4a5.png', '1593354782jDFX5MfZ.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:33:02', '2020-07-20 21:11:43', 0, NULL, NULL, NULL, 0, 0),
(155, 'SPSSGC008', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Chili (Morich) Powder- 100 gm', 'radhuni-chili-morich-powder-100-gm-spssgc008', '1593355027OL0Vc5iw.png', '1593355027n8f1uDEO.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:37:07', '2020-07-20 21:16:27', 0, NULL, NULL, NULL, 0, 0),
(156, 'SPSSGC009', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Panch Foran (50 gm)', 'radhuni-panch-foran-50-gm-spssgc009', '1593355099bUNkukGT.png', '1593355099sxpO5DvE.jpg', NULL, NULL, NULL, NULL, NULL, 22, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:38:19', '2020-07-20 21:23:49', 0, NULL, NULL, NULL, 0, 0),
(157, 'SPSSGC010', 'normal', NULL, 0, 41, 40, 53, NULL, 'Radhuni Garam Masala- 15 gm', 'radhuni-garam-masala-15-gm-spssgc010', '15933551595Eurklci.png', '1593355159hhltYd9c.jpg', NULL, NULL, NULL, NULL, NULL, 33, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:39:19', '2020-07-20 21:22:17', 0, NULL, NULL, NULL, 0, 0),
(158, 'SPSSGC011', 'normal', NULL, 0, 41, 40, 53, NULL, 'PRAN Coriander Powder Jar (200 gm)', 'pran-coriander-powder-jar-200-gm-spssgc011', '1593355244tUi3UkWg.png', '15933552443xwVpvq4.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:40:44', '2020-07-20 21:13:22', 0, NULL, NULL, NULL, 0, 0),
(159, 'SPSSGC012', 'normal', NULL, 0, 41, 40, 53, NULL, 'PRAN Turmeric Powder Jar (200 gm)', 'pran-turmeric-powder-jar-200-gm-spssgc012', '1593355283R7U58htI.png', '1593355283yreqTSZw.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:41:23', '2020-07-20 21:14:53', 0, NULL, NULL, NULL, 0, 0),
(160, 'CMSSGC001', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Biryani Masala (50 gm)', 'shan-biryani-masala-50-gm-cmssgc001', '1593355582fk72h6qQ.png', '1593355583C0wkgNvk.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:46:22', '2020-07-21 18:27:48', 0, NULL, NULL, NULL, 0, 0),
(161, 'CMSSGC002', 'normal', NULL, 0, 41, 40, 52, NULL, 'PRAN Meat Masala Mix (100 gm)', 'pran-meat-masala-mix-100-gm-cmssgc002', '1593355666NSPyKw5h.png', '1593355666eYMjfUeZ.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:47:46', '2020-07-21 15:59:12', 0, NULL, NULL, NULL, 0, 0),
(162, 'CMSSGC003', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Chicken Masala (20 gm)', 'radhuni-chicken-masala-20-gm-cmssgc003', '1593355874YbhcGyRy.png', '15933558746wsLBQnN.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:51:14', '2020-07-21 18:15:44', 0, NULL, NULL, NULL, 0, 0),
(163, 'CMSSGC004', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Biryani Masala (40 gm)', 'radhuni-biryani-masala-40-gm-cmssgc004', '15933559722tqSWTXs.png', '1593355972acmNPoRy.jpg', NULL, NULL, NULL, NULL, NULL, 50, 55, '<br>', NULL, '<br>', 1, 4, NULL, 'Eid ul Azha,5 Tk Off', '#1b18ad,#852a5b', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:52:52', '2020-07-29 15:00:39', 0, NULL, NULL, NULL, 0, 0),
(164, 'CMSSGC005', 'normal', NULL, 0, 41, 40, 52, NULL, 'Knorr Krispy Fried Chicken Mix (75 gm)', 'knorr-krispy-fried-chicken-mix-75-gm-cmssgc005', '1593356025hjkZBCUF.png', '1593356025EryNSQe5.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:53:45', '2020-07-21 15:56:39', 0, NULL, NULL, NULL, 0, 0),
(165, 'CMSSGC006', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Beef Masala (25 gm)', 'radhuni-beef-masala-25-gm-cmssgc006', '1593356194WeMHjEi6.png', '1593356194TPp1XyR6.jpg', NULL, NULL, NULL, NULL, NULL, 18, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 08:56:34', '2020-07-21 16:01:37', 0, NULL, NULL, NULL, 0, 0),
(166, 'CMSSGC007', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Firni Mix (150 gm)', 'radhuni-firni-mix-150-gm-cmssgc007', '1593356927upk4i43F.png', '1593356928rKxH4SXE.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:08:47', '2020-07-21 18:19:51', 0, NULL, NULL, NULL, 0, 0),
(167, 'CMSSGC008', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Chatpoti Masala (50 gm)', 'radhuni-chatpoti-masala-50-gm-cmssgc008', '1593356981dRuis1Nr.png', '15933569818CslhVzD.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:09:41', '2020-07-21 16:06:38', 0, NULL, NULL, NULL, 0, 0),
(168, 'CMSSGC009', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Tehari Masala (40 gm)', 'radhuni-tehari-masala-40-gm-cmssgc009', '1593357112VdCgMwlS.png', '159335711344gKBMwc.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:11:52', '2020-07-21 18:23:47', 0, NULL, NULL, NULL, 0, 0),
(169, 'CMSSGC0010', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Tandoori Masala (50 gm)', 'shan-tandoori-masala-50-gm-cmssgc0010', '1593357161M8dXB1HR.png', '1593357161NvvAIhVg.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:12:41', '2020-07-21 18:31:51', 0, NULL, NULL, NULL, 0, 0),
(170, 'CMSSGC0011', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Falooda Mix (Vanilla)- 250 gm', 'radhuni-falooda-mix-vanilla-250-gm-cmssgc0011', '1593357249y7kHkv9v.png', '1593357249WgDmfQti.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:14:09', '2020-07-26 21:50:42', 0, NULL, NULL, NULL, 0, 0),
(171, 'CMSSGC0012', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Jorda Mix (400 gm', 'radhuni-jorda-mix-400-gm-cmssgc0012', '1593357303KSp4ZB4O.png', '1593357304qODfwexC.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:15:03', '2020-07-26 22:00:57', 0, NULL, NULL, NULL, 0, 0),
(172, 'CMSSGC0013', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Fish Curry Masala (100 gm)', 'radhuni-fish-curry-masala-100-gm-cmssgc0013', '1593357401CAFdxtdS.png', '15933574015jCSHEr2.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:16:41', '2020-07-26 21:55:50', 0, NULL, NULL, NULL, 0, 0),
(173, 'CMSSGC0014', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Meat Curry Masala (100 gm)', 'radhuni-meat-curry-masala-100-gm-cmssgc0014', '1593357437vhVXEgL7.png', '1593357437WPCz40Kt.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:17:17', '2020-07-26 22:16:02', 0, NULL, NULL, NULL, 0, 0),
(174, 'CMSSGC0015', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Borhani Masala (50 gm)', 'radhuni-borhani-masala-50-gm-cmssgc0015', '1593357525dCAqiB5A.png', '1593357525bwxKqRFz.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:18:45', '2020-07-26 21:40:36', 0, NULL, NULL, NULL, 0, 0),
(175, 'CMSSGC0016', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Chicken Tandoori Masala (50 gm)', 'radhuni-chicken-tandoori-masala-50-gm-cmssgc0016', '1593357583iK7PLubs.png', '1593357583iMoTiuNA.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:19:43', '2020-07-26 21:45:41', 0, NULL, NULL, NULL, 0, 0),
(176, 'CMSSGC0017', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Khichuri Mix (500 gm)', 'radhuni-khichuri-mix-500-gm-cmssgc0017', '1593357624lrVTrQAp.png', '1593357624bkKRX3OC.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:20:24', '2020-07-26 22:10:57', 0, NULL, NULL, NULL, 0, 0),
(177, 'CMSSGC0018', 'normal', NULL, 0, 41, 40, 52, NULL, 'Radhuni Kala Bhuna Masala (80 gm)', 'radhuni-kala-bhuna-masala-80-gm-cmssgc0018', '1593357727sA5K2Ly9.png', '1593357727Rfnh71z7.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:22:07', '2020-07-26 22:05:53', 0, NULL, NULL, NULL, 0, 0),
(178, 'CMSSGC0019', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Tikka Seekh Kabab Masala (50 gm)', 'shan-tikka-seekh-kabab-masala-50-gm-cmssgc0019', '15933578208JQ0IAiw.png', '1593357820yV6PcJG6.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:23:40', '2020-07-27 00:38:35', 0, NULL, NULL, NULL, 0, 0),
(179, 'CMSSGC0020', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Spice Mix For Achar Gosht Curry (50 gm)', 'shan-spice-mix-for-achar-gosht-curry-50-gm-cmssgc0020', '1593357886oLe5DROX.png', '1593357886jAEsPDRG.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:24:46', '2020-07-26 23:30:14', 0, NULL, NULL, NULL, 0, 0),
(180, 'CMSSGC0021', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Spice Mix For Malay Chicken Biryani (60 gm)', 'shan-spice-mix-for-malay-chicken-biryani-60-gm-cmssgc0021', '1593357940WTyKr3IU.png', '1593357940GfzHz6Zv.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:25:40', '2020-07-27 00:16:02', 0, NULL, NULL, NULL, 0, 0),
(181, 'CMSSGC0022', 'normal', NULL, 0, 41, 40, 52, NULL, 'Shan Shami Kabab (50 gm)', 'shan-shami-kabab-50-gm-cmssgc0022', '1593358044gnmGqvcD.png', '1593358044v66LYhzD.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:27:24', '2020-07-26 22:44:23', 0, NULL, NULL, NULL, 0, 0),
(182, 'LELSGC001', 'normal', NULL, 0, 41, 39, 47, NULL, 'Moshur Dal (Deshi)- 1 KG', 'moshur-dal-deshi-1-kg-lelsgc001', '1593358448SFsRK7Lh.png', '1593358448HCbQ7zQq.jpg', NULL, NULL, NULL, NULL, NULL, 126, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:34:08', '2020-07-26 11:00:55', 0, NULL, NULL, NULL, 0, 0),
(183, 'LELSGC002', 'normal', NULL, 0, 41, 39, 47, NULL, 'Moshur Dal (Indian)- 1 KG', 'moshur-dal-indian-1-kg-lelsgc002', '15933585063ImGdliQ.png', '1593358506NO6oNMM7.jpg', NULL, NULL, NULL, NULL, NULL, 96, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:35:06', '2020-07-26 11:07:16', 0, NULL, NULL, NULL, 0, 0),
(184, 'LELSGC003', 'normal', NULL, 0, 41, 39, 47, NULL, 'Mug Dal (500 gm)', 'mug-dal-500-gm-lelsgc003', '1593358555qEEbjass.png', '159335855571fIs8ac.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:35:55', '2020-07-26 11:13:22', 0, NULL, NULL, NULL, 0, 0),
(185, 'LELSGC004', 'normal', NULL, 0, 41, 39, 47, NULL, 'Boot Dal (500 gm)', 'boot-dal-500-gm-lelsgc004', '1593358619BSs92XGu.png', '1593358619GjhU43HX.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:36:59', '2020-07-26 10:43:40', 0, NULL, NULL, NULL, 0, 0),
(186, 'LELSGC005', 'normal', NULL, 0, 41, 39, 47, NULL, 'Dubli Boot (500 gm)', 'dubli-boot-500-gm-lelsgc005', '15933586886oh6klPS.png', '1593358688MCHuVMGy.jpg', NULL, NULL, NULL, NULL, NULL, 28, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:38:08', '2020-07-26 10:57:28', 0, NULL, NULL, NULL, 0, 0),
(187, 'LELSGC006', 'normal', NULL, 0, 41, 39, 47, NULL, 'Chola Boot Dal - 500 gm', 'chola-boot-dal-500-gm-lelsgc006', '1593359120xFIGlTRM.png', '1593359120vUbsZcGo.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:45:20', '2020-07-26 10:50:28', 0, NULL, NULL, NULL, 0, 0),
(188, 'LELSGC007', 'normal', NULL, 0, 41, 39, 47, NULL, 'Anchor Dal - 500 gm', 'anchor-dal-500-gm-lelsgc007', '1593359264Wc7wQKvj.png', '1593359264AU1lKSnT.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:47:44', '2020-07-26 10:36:52', 0, NULL, NULL, NULL, 0, 0),
(189, 'SOCLGC003', 'normal', NULL, 0, 41, 37, 44, NULL, 'Fresh Soyabean Oil (5 Ltr)', 'fresh-soyabean-oil-5-ltr-soclgc003', '1593359573BeTBkTUe.png', '15933595742yQsS2ix.jpg', NULL, NULL, NULL, NULL, NULL, 495, 505, '<br>', NULL, '<br>', 1, 2, NULL, '10 Tk Off', '#d41616', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:52:53', '2020-07-22 12:36:39', 0, NULL, NULL, NULL, 0, 0),
(190, 'SOCLGC004', 'normal', NULL, 0, 41, 37, 44, NULL, 'Rupchanda Soyabean Oil (5 Ltr)', 'rupchanda-soyabean-oil-5-ltr-soclgc004', '1593359760Ew13YzKc.png', '15933597604muLGRuj.jpg', NULL, NULL, NULL, NULL, NULL, 525, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:56:00', '2020-07-20 21:26:46', 0, NULL, NULL, NULL, 0, 0),
(191, 'SOCLGC005', 'normal', NULL, 0, 41, 37, 44, NULL, 'Rupchanda Soyabean Oil (2 Ltr)', 'rupchanda-soyabean-oil-2-ltr-soclgc005', '1593359807ruJKVwAe.png', '1593359807dtlJ3trc.jpg', NULL, NULL, NULL, NULL, NULL, 216, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:56:47', '2020-07-26 20:49:02', 0, NULL, NULL, NULL, 0, 0),
(192, 'SOCLGC006', 'normal', NULL, 0, 41, 37, 44, NULL, 'Rupchanda Soyabean Oil (1 Ltr poly)', 'rupchanda-soyabean-oil-1-ltr-poly-soclgc006', '15933598780bHS3rhf.png', '1593359878GUQ5FM2A.jpg', NULL, NULL, NULL, NULL, NULL, 105, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:57:58', '2020-07-26 17:59:35', 0, NULL, NULL, NULL, 0, 0),
(193, 'SOCLGC007', 'normal', NULL, 0, 41, 37, 44, NULL, 'Rupchanda Soyabean Oil (2 Ltr)', 'rupchanda-soyabean-oil-2-ltr-soclgc007', '1593359912X01hHNjn.png', '1593359914XNWKe87h.jpg', NULL, NULL, NULL, NULL, NULL, 216, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:58:32', '2020-07-26 18:03:38', 0, NULL, NULL, NULL, 0, 0),
(194, 'SOCLGC008', 'normal', NULL, 0, 41, 37, 44, NULL, 'Fresh Soyabean Oil (2 Ltr)', 'fresh-soyabean-oil-2-ltr-soclgc008', '1593359976I6hQHoyp.png', '15933599762Rozfasz.jpg', NULL, NULL, NULL, NULL, NULL, 208, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 09:59:36', '2020-07-26 17:55:26', 0, NULL, NULL, NULL, 0, 0),
(195, 'SOCLGC009', 'normal', NULL, 0, 41, 37, 44, NULL, 'Teer Soyabean Oil (2 Ltr)', 'teer-soyabean-oil-2-ltr-soclgc009', '1593360017ECw5FZde.png', '1593360017GwuWPam1.jpg', NULL, NULL, NULL, NULL, NULL, 218, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:00:17', '2020-07-26 18:11:46', 0, NULL, NULL, NULL, 0, 0),
(196, 'SOCLGC010', 'normal', NULL, 0, 41, 37, 44, NULL, 'Fresh Soyabean Oil (8 Ltr)', 'fresh-soyabean-oil-8-ltr-soclgc010', '1593360085VlS7pfov.png', '1593360085CfkByOFP.jpg', NULL, NULL, NULL, NULL, NULL, 805, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:01:25', '2020-07-26 20:22:19', 0, NULL, NULL, NULL, 0, 0),
(197, 'SOCLGC011', 'normal', NULL, 0, 41, 37, 44, NULL, 'Rupchanda Soyabean Oil (8 Ltr)', 'rupchanda-soyabean-oil-8-ltr-soclgc011', '1593360128yx0bMrts.png', '1593360128PiU4Hb49.jpg', NULL, NULL, NULL, NULL, NULL, 838, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:02:08', '2020-07-26 18:07:40', 0, NULL, NULL, NULL, 0, 0),
(198, 'SOCLGC012', 'normal', NULL, 0, 41, 37, 44, NULL, 'Teer Soyabean Oil (8 Ltr)', 'teer-soyabean-oil-8-ltr-soclgc012', '1593360171tCO3TpLS.png', '1593360171ngshKgHi.jpg', NULL, NULL, NULL, NULL, NULL, 805, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:02:51', '2020-07-26 20:59:48', 0, NULL, NULL, NULL, 0, 0),
(199, 'VOCLGC001', 'normal', NULL, 0, 41, 37, 46, NULL, 'Saffola Active VEG Oil - 5Ltr', 'saffola-active-veg-oil-5ltr-voclgc001', '1593360312QDP27Ok4.png', '15933603120y5uicyT.jpg', NULL, NULL, NULL, NULL, NULL, 935, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:05:12', '2020-07-26 10:33:35', 0, NULL, NULL, NULL, 0, 0),
(200, 'SOCLGC013', 'normal', NULL, 0, 41, 37, 45, NULL, 'Olitalia Sunflower Oil (2Ltr)', 'olitalia-sunflower-oil-2ltr-soclgc013', '1593360513Sa6XcjkH.png', '1593360513w1QvMC50.jpg', NULL, NULL, NULL, NULL, NULL, 540, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:08:33', '2020-07-26 11:45:32', 0, NULL, NULL, NULL, 0, 0),
(201, 'SOCLGC014', 'normal', NULL, 0, 41, 37, 44, NULL, 'Pusti Soybean Oil (5 Ltr)', 'pusti-soybean-oil-5-ltr-soclgc014', '1593362098cZl1ZfjL.png', '1593362098XZobABby.jpg', NULL, NULL, NULL, NULL, NULL, 500, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:34:58', '2020-07-26 20:38:18', 0, NULL, NULL, NULL, 0, 0),
(202, 'SOCLGC015', 'normal', NULL, 0, 41, 37, 45, NULL, 'Orkide Sunflower Oil (5 Ltr)', 'orkide-sunflower-oil-5-ltr-soclgc015', '1593362195ujN3WoUQ.png', '15933621968T2fKnJz.jpg', NULL, NULL, NULL, NULL, NULL, 999, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:36:35', '2020-07-26 11:48:25', 0, NULL, NULL, NULL, 0, 0),
(203, 'STCSGC001', 'normal', NULL, 0, 41, 36, 42, NULL, 'ACI Pure Salt (1 KG)', 'aci-pure-salt-1-kg-stcsgc001', '1593363128rXFJ1idp.png', '1593363128zePl0wG6.jpg', NULL, NULL, NULL, NULL, NULL, 30, 35, '<br>', NULL, '<br>', 1, 9, NULL, 'Eid ul Azha,5 Tk Off', '#100dc4,#de2626', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 1, '2020-06-28 10:52:08', '2020-07-31 04:01:20', 0, NULL, NULL, NULL, 0, 0),
(204, 'STCSGC002', 'normal', NULL, 0, 41, 36, 42, NULL, 'Fresh Pure Salt (1 KG)', 'fresh-pure-salt-1-kg-stcsgc002', '1593363155nxaIUmGW.png', '1593363155Fl5rOeW4.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 10:52:35', '2020-07-26 09:13:26', 0, NULL, NULL, NULL, 0, 0),
(205, 'FRCSGC001', 'normal', NULL, 0, 41, 36, 41, NULL, 'Teer Atta (2 KG)', 'teer-atta-2-kg-frcsgc001', '1593363811lz9eWx4Z.png', '15933638117ch0KySi.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:03:31', '2020-07-26 10:26:56', 0, NULL, NULL, NULL, 0, 0),
(206, 'FRCSGC002', 'normal', NULL, 0, 41, 36, 41, NULL, 'Teer Maida Flour (2 KG)', 'teer-maida-flour-2-kg-frcsgc002', '1593363928XuTZKufZ.png', '1593363928B3R1YzQc.jpg', NULL, NULL, NULL, NULL, NULL, 92, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:05:28', '2020-07-26 10:30:16', 0, NULL, NULL, NULL, 0, 0),
(207, 'FRCSGC003', 'normal', NULL, 0, 41, 36, 41, NULL, 'Fresh Atta (2 KG)', 'fresh-atta-2-kg-frcsgc003', '1593363991qNaT3Hle.png', '1593363991omFE8AjV.jpg', NULL, NULL, NULL, NULL, NULL, 62, 70, '<br>', NULL, '<br>', 1, 10, NULL, 'Eid ul Azha,8Tk Off', '#401fc2,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:06:31', '2020-07-29 15:00:44', 0, NULL, NULL, NULL, 0, 0),
(208, 'FRCSGC004', 'normal', NULL, 0, 41, 36, 41, NULL, 'Fresh Maida (2 KG)', 'fresh-maida-2-kg-frcsgc004', '15933640388f62aKZX.png', '1593364038hY2ScEMt.jpg', NULL, NULL, NULL, NULL, NULL, 92, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:07:18', '2020-07-26 10:17:28', 0, NULL, NULL, NULL, 0, 0),
(209, 'FRCSGC005', 'normal', NULL, 0, 41, 36, 41, NULL, 'ACI Pure Brown Atta (1 KG)', 'aci-pure-brown-atta-1-kg-frcsgc005', '1593364191KVzz53fd.png', '1593364191Ky3YD7x4.jpg', NULL, NULL, NULL, NULL, NULL, 42, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:09:51', '2020-07-26 09:15:09', 0, NULL, NULL, NULL, 0, 0),
(210, 'FRCSGC006', 'normal', NULL, 0, 41, 36, 41, NULL, 'Pusti Atta (2 KG)', 'pusti-atta-2-kg-frcsgc006', '1593364286kLQ6Wc7O.png', '1593364286X8UCnP5F.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:11:26', '2020-07-26 10:20:27', 0, NULL, NULL, NULL, 0, 0),
(211, 'FRCSGC007', 'normal', NULL, 0, 41, 36, 41, NULL, 'Pusti Maida (2 KG)', 'pusti-maida-2-kg-frcsgc007', '1593364344QnhsmTHj.png', '159336434467eiOdjE.jpg', NULL, NULL, NULL, NULL, NULL, 92, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:12:24', '2020-07-26 10:23:41', 0, NULL, NULL, NULL, 0, 0),
(212, 'SICSGC001', 'normal', NULL, 0, 41, 36, 82, NULL, 'Fresh Suji (500 gm)', 'fresh-suji-500-gm-sicsgc001', '1593364661pzpZZUdm.png', '1593364661pe6RfjMO.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:17:41', '2020-07-26 13:28:58', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(213, 'SICSGC002', 'normal', NULL, 0, 41, 36, 82, NULL, 'Fresh Suji (500 gm)', 'fresh-suji-500-gm-sicsgc002', '1593364758uw7dzic4.png', '1593364758XRpKr2tC.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 11:19:18', '2020-07-26 13:31:41', 0, NULL, NULL, NULL, 0, 0),
(214, 'PPE00002', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'Surgical Mask  3 pcs', 'surgical-mask-3-pcs-ppe00002', '1593367709T9SLw7g6.png', '15933677091fO6AK29.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 12:08:29', '2020-07-21 00:34:35', 0, NULL, NULL, NULL, 0, 0),
(215, 'PPE00003', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'KN95 Face Mask (each)', 'kn95-face-mask-each-ppe00003', '1593367762EQg9NK92.png', '1593367763yv0NlOR9.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 12:09:22', '2020-07-21 00:19:58', 0, NULL, NULL, NULL, 0, 0),
(216, 'PPE00004', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'KN95 Vent Air Mask', 'kn95-vent-air-mask-ppe00004', '15933678099h7sj2r6.png', '15933678095MQT9hEv.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 12:10:09', '2020-07-21 00:24:36', 0, NULL, NULL, NULL, 0, 0),
(217, 'PPE00005', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'Face Shield pcs', 'face-shield-pcs-ppe00005', '1593367863K8uZqkTa.png', '1593367863Eso5DMtA.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 12:11:03', '2020-07-21 00:04:58', 0, NULL, NULL, NULL, 0, 0),
(218, 'PPE00006', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'Protective Safety Goggles', 'protective-safety-goggles-ppe00006', '1593367899WiVTBFwH.png', '1593367899LxKMHr1t.jpg', NULL, NULL, NULL, NULL, NULL, 390, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 12:11:39', '2020-07-21 00:29:27', 0, NULL, NULL, NULL, 0, 0),
(219, 'AFHLKHE001', 'normal', NULL, 0, 43, 42, 61, NULL, 'Odonil Air Freshner Jas (50 gm)', 'odonil-air-freshner-jas-50-gm-afhlkhe001', '1593373622YwOHz1c4.png', '1593373622r6yEd7tI.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:47:02', '2020-07-20 09:55:21', 0, NULL, NULL, NULL, 0, 0),
(220, 'AFHLKHE002', 'normal', NULL, 0, 43, 42, 61, NULL, 'Odonil Air Freshner Lav (50 gm)', 'odonil-air-freshner-lav-50-gm-afhlkhe002', '1593373672bNpTlkUV.png', '15933736728JdOwkgV.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:47:52', '2020-07-20 09:57:03', 0, NULL, NULL, NULL, 0, 0),
(221, 'AFHLKHE003', 'normal', NULL, 0, 43, 42, 61, NULL, 'Odonil Air Freshner Mys (50 gm)', 'odonil-air-freshner-mys-50-gm-afhlkhe003', '1593373720cZcaVQH3.png', '15933737209J7wUaYg.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:48:40', '2020-07-25 12:48:18', 0, NULL, NULL, NULL, 0, 0),
(222, 'AFHLKHE004', 'normal', NULL, 0, 43, 42, 61, NULL, 'Fay Air Freshener Anti Tob(300 ml)', 'fay-air-freshener-anti-tob300-ml-afhlkhe004', '15933738076u9DF4cE.png', '1593373807eIqoNi47.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:50:07', '2020-07-20 09:50:13', 0, NULL, NULL, NULL, 0, 0),
(223, 'AFHLKHE005', 'normal', NULL, 0, 43, 42, 61, NULL, 'Fay Air Freshener Lav (300 ml)', 'fay-air-freshener-lav-300-ml-afhlkhe005', '1593373850Z0gSHLI5.png', '1593373850f3uWOWmM.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:50:50', '2020-07-29 18:31:44', 0, NULL, NULL, NULL, 0, 0),
(224, 'AFHLKHE006', 'normal', NULL, 0, 43, 42, 61, NULL, 'Fay Air Freshener Jas (300 ml)', 'fay-air-freshener-jas-300-ml-afhlkhe006', '1593373987JRluAn9k.png', '1593373987SyqtSoh0.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:53:07', '2020-07-20 09:52:05', 0, NULL, NULL, NULL, 0, 0),
(225, 'AFHLKHE007', 'normal', NULL, 0, 43, 42, 61, NULL, 'Angelic Air Freshener Citr(300 ml)', 'angelic-air-freshener-citr300-ml-afhlkhe007', '1593374041XcH1xfnG.png', '1593374041a1MW6iRS.jpg', NULL, NULL, NULL, NULL, NULL, 215, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:54:01', '2020-07-25 03:48:55', 0, NULL, NULL, NULL, 0, 0),
(226, 'AFHLKHE008', 'normal', NULL, 0, 43, 42, 61, NULL, 'Angelic Air Freshener Green (300 ml)', 'angelic-air-freshener-green-300-ml-afhlkhe008', '1593374191QTgGxZCH.png', '1593374191VeaxWcWo.jpg', NULL, NULL, NULL, NULL, NULL, 215, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:56:31', '2020-07-25 04:44:06', 0, NULL, NULL, NULL, 0, 0),
(227, 'AFHLKHE009', 'normal', NULL, 0, 43, 42, 61, NULL, 'Spring  Air Freshener Anti Tob(300 ml)', 'spring-air-freshener-anti-tob300-ml-afhlkhe009', '1593374255E9Zh3nFM.png', '15933742553wZfQif1.jpg', NULL, NULL, NULL, NULL, NULL, 215, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:57:35', '2020-07-29 18:33:55', 0, NULL, NULL, NULL, 0, 0),
(228, 'AFHLKHE010', 'normal', NULL, 0, 43, 42, 61, NULL, 'Spring Air Freshener Orange(300 ml)', 'spring-air-freshener-orange300-ml-afhlkhe010', '1593374310yl1Tk74h.png', '1593374310qH6Cfw3o.jpg', NULL, NULL, NULL, NULL, NULL, 215, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:58:30', '2020-07-21 01:27:51', 0, NULL, NULL, NULL, 0, 0),
(229, 'AFHLKHE011', 'normal', NULL, 0, 43, 42, 61, NULL, 'ATM Air Freshener (70 ml)', 'atm-air-freshener-70-ml-afhlkhe011', '1593374349N4NVQCoa.png', '1593374349U9HRIBRH.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 13:59:09', '2020-07-23 02:23:09', 0, NULL, NULL, NULL, 0, 0),
(230, 'TEHLKHE001', 'normal', NULL, 0, 43, 42, 60, NULL, 'Bashundhara Paper Napkins 13X13(100 pcs)', 'bashundhara-paper-napkins-13x13100-pcs-tehlkhe001', '1593375212mCzNWaGG.png', '1593375212IqMFjpTy.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:13:32', '2020-07-20 20:08:46', 0, NULL, NULL, NULL, 0, 0),
(231, 'TEHLKHE002', 'normal', NULL, 0, 43, 42, 60, NULL, 'Bashundhara Kitchen Towel 2 Rolls', 'bashundhara-kitchen-towel-2-rolls-tehlkhe002', '1593375268g6OIKC0z.png', '1593375268QdOcuLQD.jpg', NULL, NULL, NULL, NULL, NULL, 114, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:14:28', '2020-07-20 20:07:19', 0, NULL, NULL, NULL, 0, 0),
(232, 'TEHLKHE003', 'normal', NULL, 0, 43, 42, 60, NULL, 'Bashundhara Hand Towel 1 ply', 'bashundhara-hand-towel-1-ply-tehlkhe003', '1593375376ifxksVxr.png', '1593375376w9NMVS3S.jpg', NULL, NULL, NULL, NULL, NULL, 78, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:16:16', '2020-07-20 20:04:26', 0, NULL, NULL, NULL, 0, 0),
(233, 'TEHLKHE004', 'normal', NULL, 0, 43, 42, 60, NULL, 'Bashundhara Hand Towel 1 ply', 'bashundhara-hand-towel-1-ply-tehlkhe004', '1593376608SaWTq6Sw.png', '1593376608cE6CWlbb.jpg', NULL, NULL, NULL, NULL, NULL, 68, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:36:48', '2020-07-20 20:05:54', 0, NULL, NULL, NULL, 0, 0),
(234, 'TEHLKHE005', 'normal', NULL, 0, 43, 42, 60, NULL, 'Bashundhara Gold Toilet Tissue', 'bashundhara-gold-toilet-tissue-tehlkhe005', '1593376700DZAmbJkt.png', '15933767003OupdbI6.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:38:20', '2020-07-20 20:02:55', 0, NULL, NULL, NULL, 0, 0),
(235, 'TEHLKHE006', 'normal', NULL, 0, 43, 42, 60, NULL, 'Fay Toilet Tissue', 'fay-toilet-tissue-tehlkhe006', '1593376785sqfW66i0.png', '1593376785cqbnIimA.jpg', NULL, NULL, NULL, NULL, NULL, 22, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:39:45', '2020-07-20 20:14:47', 0, NULL, NULL, NULL, 0, 0),
(236, 'LSCSKHE001', 'normal', NULL, 0, 43, 41, 56, NULL, 'Wheel Laundry Bar (130 gm)', 'wheel-laundry-bar-130-gm-lscskhe001', '1593377238Q7jrYdMN.png', '1593377238srpMkV3G.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:47:18', '2020-07-20 19:42:39', 0, NULL, NULL, NULL, 0, 0),
(237, 'LSCSKHE002', 'normal', NULL, 0, 43, 41, 56, NULL, 'Smart Laundry Soap (130 gm)', 'smart-laundry-soap-130-gm-lscskhe002', '1593377311gUVScCaE.png', '1593377312FVjFQ5sk.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:48:31', '2020-07-20 19:37:59', 0, NULL, NULL, NULL, 0, 0),
(238, 'LSCSKHE003', 'normal', NULL, 0, 43, 41, 56, NULL, 'Tibet Ball Soap (130 gm)', 'tibet-ball-soap-130-gm-lscskhe003', '1593377373p9pVV823.png', '1593377373qXZmDfnW.jpg', NULL, NULL, NULL, NULL, NULL, 17, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:49:33', '2020-07-20 19:41:03', 0, NULL, NULL, NULL, 0, 0),
(239, 'LSCSKHE004', 'normal', NULL, 0, 43, 41, 56, NULL, 'Tibet 570 Laundry Soap (130 gm)', 'tibet-570-laundry-soap-130-gm-lscskhe004', '1593377497GjueIURN.png', '15933774978ClccMYi.jpg', NULL, NULL, NULL, NULL, NULL, 18, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:51:37', '2020-07-20 19:39:29', 0, NULL, NULL, NULL, 0, 0),
(240, 'WPCSKHE001', 'normal', NULL, 0, 43, 41, 57, NULL, 'Wheel Washing Powder (1 kg)', 'wheel-washing-powder-1-kg-wpcskhe001', '1593377708BNewfPn4.png', '1593377709c7CYj2Mp.jpg', NULL, NULL, NULL, NULL, NULL, 85, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:55:08', '2020-07-20 20:50:41', 0, NULL, NULL, NULL, 0, 0),
(241, 'WPCSKHE002', 'normal', NULL, 0, 43, 41, 57, NULL, 'Rin Washing Powder Antibac (500 gm)', 'rin-washing-powder-antibac-500-gm-wpcskhe002', '1593377762ajYzo4eO.png', '15933777627td4ALPG.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:56:02', '2020-07-20 20:38:20', 0, NULL, NULL, NULL, 0, 0),
(242, 'WPCSKHE003', 'normal', NULL, 0, 43, 41, 57, NULL, 'Rin Washing Powder Bright (500 gm)', 'rin-washing-powder-bright-500-gm-wpcskhe003', '1593377873GD5wuWaX.png', '1593377873djQzuofZ.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:57:53', '2020-07-20 20:41:30', 0, NULL, NULL, NULL, 0, 0),
(243, 'WPCSKHE004', 'normal', NULL, 0, 43, 41, 57, NULL, 'Surf Excel Washing Powder 500gm', 'surf-excel-washing-powder-500gm-wpcskhe004', '1593377984Qa5OQ4qp.png', '1593377984OISq30T0.jpg', NULL, NULL, NULL, NULL, NULL, 99, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 14:59:44', '2020-07-20 20:48:46', 0, NULL, NULL, NULL, 0, 0),
(244, 'WPCSKHE005', 'normal', NULL, 0, 43, 41, 57, NULL, 'Rin Washing Powder Bright (1 kg)', 'rin-washing-powder-bright-1-kg-wpcskhe005', '1593378029c6EsbBad.png', '1593378029H6cBf3O9.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:00:29', '2020-07-20 20:39:55', 0, NULL, NULL, NULL, 0, 0),
(245, 'WPCSKHE006', 'normal', NULL, 0, 43, 41, 57, NULL, 'Surf Excel Washing Pow 500gm', 'surf-excel-washing-pow-500gm-wpcskhe006', '1593378214UiNJdPEJ.png', '15933782147u0Z7v9m.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:03:34', '2020-07-20 20:46:40', 0, NULL, NULL, NULL, 0, 0),
(246, 'WPCSKHE007', 'normal', NULL, 0, 43, 41, 57, NULL, 'Surf Excel Washing Pow 1kg', 'surf-excel-washing-pow-1kg-wpcskhe007', '1593378243sceI8BYT.png', '1593378243cYFDttpJ.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:04:03', '2020-07-24 12:54:03', 0, NULL, NULL, NULL, 0, 0),
(247, 'WPCSKHE008', 'normal', NULL, 0, 43, 41, 57, NULL, 'Surf Excel Powder Matic (1 kg)', 'surf-excel-powder-matic-1-kg-wpcskhe008', '159337834881gGDXfY.png', '1593378348Mqku4tEE.jpg', NULL, NULL, NULL, NULL, NULL, 275, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:05:48', '2020-07-20 20:43:00', 0, NULL, NULL, NULL, 0, 0),
(248, 'DTCSKHE001', 'normal', NULL, 0, 43, 41, 58, NULL, 'Jet  Detergent (1 Kg)', 'jet-detergent-1-kg-dtcskhe001', '15933785873x4aM9uQ.png', '1593378587NXNIofEU.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:09:47', '2020-07-20 19:47:06', 0, NULL, NULL, NULL, 0, 0),
(249, 'DTCSKHE002', 'normal', NULL, 0, 43, 41, 58, NULL, 'Jet  Detergent (500gm)', 'jet-detergent-500gm-dtcskhe002', '1593378634BbuXjerE.png', '1593378634bT4HwE5E.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:10:34', '2020-07-20 19:48:34', 0, NULL, NULL, NULL, 0, 0),
(250, 'DTCSKHE003', 'normal', NULL, 0, 43, 41, 58, NULL, 'Breeze Power Clean (2.3 kg)', 'breeze-power-clean-23-kg-dtcskhe003', '1593378746DCIHE1zW.png', '1593378746PkjXh4ET.jpg', NULL, NULL, NULL, NULL, NULL, 770, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:12:26', '2020-07-20 19:45:42', 0, NULL, NULL, NULL, 0, 0),
(251, 'DTCSKHE004', 'normal', NULL, 0, 43, 41, 58, NULL, 'Persil Fabric Powder (3 kg)', 'persil-fabric-powder-3-kg-dtcskhe004', '1593378803Bbag3SEo.png', '1593378803yIJf48Mq.jpg', NULL, NULL, NULL, NULL, NULL, 1365, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:13:23', '2020-07-20 19:49:57', 0, NULL, NULL, NULL, 0, 0),
(252, 'DTCSKHE005', 'normal', NULL, 0, 43, 41, 58, NULL, 'Ariel Washing Powder (2.5 kg)', 'ariel-washing-powder-25-kg-dtcskhe005', '15933788748RZscZ9f.png', '15933788743mUbRFSp.jpg', NULL, NULL, NULL, NULL, NULL, 1235, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:14:34', '2020-07-20 19:44:16', 0, NULL, NULL, NULL, 0, 0),
(253, 'DHCSKHE001', 'normal', NULL, 0, 43, 41, 59, NULL, 'Vim Dishwashing Bar (300 gm)', 'vim-dishwashing-bar-300-gm-dhcskhe001', '1593379051tGBTaHeo.png', '15933790513ivXQG6T.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:17:31', '2020-07-20 20:59:13', 0, NULL, NULL, NULL, 0, 0),
(254, 'DHCSKHE002', 'normal', NULL, 0, 43, 41, 59, NULL, 'Vim Dishwashing Bar (100 gm)', 'vim-dishwashing-bar-100-gm-dhcskhe002', '1593379106FjuJKDpg.png', '1593379106EjdGrtox.jpg', NULL, NULL, NULL, NULL, NULL, 12, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:18:26', '2020-07-20 20:57:42', 0, NULL, NULL, NULL, 0, 0),
(255, 'DHCSKHE003', 'normal', NULL, 0, 43, 41, 59, NULL, 'Vim Dishwashing Liquid', 'vim-dishwashing-liquid-dhcskhe003', '1593379196ursDDxga.png', '1593379196Y1jMdrar.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:19:56', '2020-07-20 21:02:22', 0, NULL, NULL, NULL, 0, 0),
(256, 'DHCSKHE004', 'normal', NULL, 0, 43, 41, 59, NULL, 'VIM Dishwashing Powder (500 gm)', 'vim-dishwashing-powder-500-gm-dhcskhe004', '1593379379CKWxMyqq.png', '15933793796GQdZlgo.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:22:59', '2020-07-20 21:03:53', 0, NULL, NULL, NULL, 0, 0),
(257, 'DHCSKHE005', 'normal', NULL, 0, 43, 41, 59, NULL, 'Vim Dishwashing Liquid (500 ml)', 'vim-dishwashing-liquid-500-ml-dhcskhe005', '1593379470DYfKAb6I.png', '1593379470orfhtnpj.jpg', NULL, NULL, NULL, NULL, NULL, 100, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:24:30', '2020-07-20 21:00:47', 0, NULL, NULL, NULL, 0, 0),
(258, 'DHCSKHE006', 'normal', NULL, 0, 43, 41, 59, NULL, 'Trix Dishwashing Refill (250 ml)', 'trix-dishwashing-refill-250-ml-dhcskhe006', '1593379583YNkkNt6D.png', '1593379584OiuHWJS0.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:26:24', '2020-07-20 20:54:34', 0, NULL, NULL, NULL, 0, 0),
(259, 'DHCSKHE007', 'normal', NULL, 0, 43, 41, 59, NULL, 'Trix Dishwashing Liquid (500 ml)', 'trix-dishwashing-liquid-500-ml-dhcskhe007', '1593379710LhskqgAK.png', '1593379710GgTKrgc5.jpg', NULL, NULL, NULL, NULL, NULL, 105, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:28:30', '2020-07-20 20:52:46', 0, NULL, NULL, NULL, 0, 0),
(260, 'DHCSKHE008', 'normal', NULL, 0, 43, 41, 59, NULL, 'Vim Dish Washing Liquid Spout Pack (250 ml)', 'vim-dish-washing-liquid-spout-pack-250-ml-dhcskhe008', '1593379793g2C8MM9E.png', '1593379793d0E085Jt.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:29:53', '2020-07-20 20:56:09', 0, NULL, NULL, NULL, 0, 0),
(261, 'DHCSKHE009', 'normal', NULL, 0, 43, 41, 59, NULL, 'Wonder Anti Bact Dish Washing Liquid (500 ml)', 'wonder-anti-bact-dish-washing-liquid-500-ml-dhcskhe009', '1593379931T73pgkZM.png', '1593379931QYSr6TKj.jpg', NULL, NULL, NULL, NULL, NULL, 100, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:32:11', '2020-07-20 21:05:26', 0, NULL, NULL, NULL, 0, 0),
(262, 'TCCSKHE001', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaner (1 Ltr)', 'harpic-toilet-cleaner-1-ltr-tccskhe001', '15933802037JptYZMf.png', '1593380203nQk51ZqY.jpg', NULL, NULL, NULL, NULL, NULL, 160, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:36:43', '2020-07-21 00:54:05', 0, NULL, NULL, NULL, 0, 0),
(263, 'TCCSKHE002', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaner Citrus (500 ml)', 'harpic-toilet-cleaner-citrus-500-ml-tccskhe002', '1593380299xJ6Hbst5.png', '1593380299VYorukpq.jpg', NULL, NULL, NULL, NULL, NULL, 105, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:38:19', '2020-07-21 00:58:53', 0, NULL, NULL, NULL, 0, 0),
(264, 'TCCSKHE003', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Bathroom Powder (400 gm)', 'harpic-bathroom-powder-400-gm-tccskhe003', '159338041108j44WZw.png', '1593380411HTzyQly8.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:40:11', '2020-07-21 00:44:25', 0, NULL, NULL, NULL, 0, 0),
(265, 'TCCSKHE004', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Flushmatic Twin Pack', 'harpic-flushmatic-twin-pack-tccskhe004', '1593380458NZ6IGvo3.png', '1593380459nkonT20c.jpg', NULL, NULL, NULL, NULL, NULL, 230, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:40:58', '2020-07-21 00:49:23', 0, NULL, NULL, NULL, 0, 0),
(266, 'TCCSKHE005', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaning Powder (400 gm)', 'harpic-toilet-cleaning-powder-400-gm-tccskhe005', '1593380512jCdzOlYf.png', '1593380512vDViCz5a.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:41:52', '2020-07-21 01:03:46', 0, NULL, NULL, NULL, 0, 0),
(267, 'TCCSKHE006', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Bathroom Cleaner Floral (500 ml)', 'harpic-bathroom-cleaner-floral-500-ml-tccskhe006', '1593380567tSt5MPSr.png', '15933805674RHsoHpo.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:42:47', '2020-07-26 15:42:37', 0, NULL, NULL, NULL, 0, 0),
(268, 'TCCSKHE007', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaniner (750 ml)', 'harpic-toilet-cleaniner-750-ml-tccskhe007', '1593380693qTwQ0CSE.png', '1593380693cc45uuDc.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:44:53', '2020-07-26 16:00:16', 0, NULL, NULL, NULL, 0, 0),
(269, 'TCCSKHE008', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaniner (500 ml)', 'harpic-toilet-cleaniner-500-ml-tccskhe008', '1593380714TJQ0kwMx.png', '1593380714UQuD00oW.jpg', NULL, NULL, NULL, NULL, NULL, 105, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:45:14', '2020-07-26 15:51:30', 0, NULL, NULL, NULL, 0, 0),
(270, 'TCCSKHE009', 'normal', NULL, 0, 43, 41, 84, NULL, 'Harpic Toilet Cleaning Powder (200 gm)', 'harpic-toilet-cleaning-powder-200-gm-tccskhe009', '1593380744vcHY98jE.png', '15933807449S9iamjp.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:45:44', '2020-07-26 16:09:03', 0, NULL, NULL, NULL, 0, 0),
(271, 'DHCSKHE010', 'normal', NULL, 0, 43, 41, 59, NULL, 'ACI Wonder Dish Wash Bar (325 gm)', 'aci-wonder-dish-wash-bar-325-gm-dhcskhe010', '1593380812crYx27yR.png', '1593380812xFKmf5uT.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:46:52', '2020-07-26 16:18:06', 0, NULL, NULL, NULL, 0, 0),
(272, 'SCCSKHE001', 'normal', NULL, 0, 43, 41, 55, NULL, 'Rok Bleaching Powder (500 gm)', 'rok-bleaching-powder-500-gm-sccskhe001', '1593380896J1l0Citw.png', '1593380896Ml7nXobv.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:48:16', '2020-07-26 11:10:20', 0, NULL, NULL, NULL, 0, 0),
(273, 'SCCSKHE002', 'normal', NULL, 0, 43, 41, 55, NULL, 'Mr.Brasso Glass Cleaner Spray (350 ml)', 'mrbrasso-glass-cleaner-spray-350-ml-sccskhe002', '1593381019uTvUdIxx.png', '15933810199ljv2ngh.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:50:19', '2020-07-26 11:04:07', 0, NULL, NULL, NULL, 0, 0),
(274, 'SCCSKHE003', 'normal', NULL, 0, 43, 41, 55, NULL, 'Mr.Brasso Glass Cleaner Refill (350 ml)', 'mrbrasso-glass-cleaner-refill-350-ml-sccskhe003', '1593381083Io1D7InS.png', '1593381083A6VDFHki.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:51:23', '2020-07-26 10:53:56', 0, NULL, NULL, NULL, 0, 0),
(275, 'SCCSKHE004', 'normal', NULL, 0, 43, 41, 55, NULL, 'Rok Pine Floor Cleaner (1 Ltr)', 'rok-pine-floor-cleaner-1-ltr-sccskhe004', '1593381232DCYMHUkV.png', '1593381232QZM4IcRE.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:53:52', '2020-07-26 11:16:17', 0, NULL, NULL, NULL, 0, 0),
(276, 'SCCSKHE005', 'normal', NULL, 0, 43, 41, 55, NULL, 'RokSol Tiles Cleaner (500 ml)', 'roksol-tiles-cleaner-500-ml-sccskhe005', '1593381405X4YY1g4C.png', '15933814058odpFTMM.jpg', NULL, NULL, NULL, NULL, NULL, 85, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:56:45', '2020-07-26 11:22:12', 0, NULL, NULL, NULL, 0, 0),
(277, 'SCCSKHE006', 'normal', NULL, 0, 43, 41, 55, NULL, 'Clorox Lemon (1 Ltr)', 'clorox-lemon-1-ltr-sccskhe006', '1593381459YQsvOPGJ.png', '1593381459JuHTXidZ.jpg', NULL, NULL, NULL, NULL, NULL, 400, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:57:39', '2020-07-26 10:40:08', 0, NULL, NULL, NULL, 0, 0),
(278, 'SCCSKHE007', 'normal', NULL, 0, 43, 41, 55, NULL, 'Clorox Original (2 Ltr)', 'clorox-original-2-ltr-sccskhe007', '1593381507iv5R5KHt.png', '1593381508lTc548Te.jpg', NULL, NULL, NULL, NULL, NULL, 500, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 15:58:27', '2020-07-26 10:47:05', 0, NULL, NULL, NULL, 0, 0),
(279, 'IKHLKHE001', 'normal', NULL, 0, 43, 42, 85, NULL, 'Godrej Hit Flies Spray (400ml)', 'godrej-hit-flies-spray-400ml-ikhlkhe001', '1593381867Jtz445Is.png', '1593381867Jbc5tjpn.jpg', NULL, NULL, NULL, NULL, NULL, 275, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:04:27', '2020-07-21 01:32:39', 0, NULL, NULL, NULL, 0, 0),
(280, 'IKHLKHE002', 'normal', NULL, 0, 43, 42, 85, NULL, 'Godrej Red HIT (1pcs)', 'godrej-red-hit-1pcs-ikhlkhe002', '1593381930hv69KOby.png', '1593381930atgF5b8M.jpg', NULL, NULL, NULL, NULL, NULL, 430, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:05:30', '2020-07-21 01:37:37', 0, NULL, NULL, NULL, 0, 0),
(281, 'IKHLKHE003', 'normal', NULL, 0, 43, 42, 85, NULL, 'ACI Cockroach Spray (400ml)', 'aci-cockroach-spray-400ml-ikhlkhe003', '15933819887a5XINaF.png', '1593381988ch8ZbQqe.jpg', NULL, NULL, NULL, NULL, NULL, 280, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:06:28', '2020-07-26 12:36:55', 0, NULL, NULL, NULL, 0, 0),
(282, 'IKHLKHE004', 'normal', NULL, 0, 43, 42, 85, NULL, 'Baoma Mosquito Coil (10pcs)', 'baoma-mosquito-coil-10pcs-ikhlkhe004', '1593382323bMn93Z34.png', '1593382323JmvHkDTv.jpg', NULL, NULL, NULL, NULL, NULL, 71.99, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:12:03', '2020-07-26 12:42:22', 0, NULL, NULL, NULL, 0, 0),
(283, 'IKHLKHE005', 'normal', NULL, 0, 43, 42, 85, NULL, 'ACI Aerosol Insect Spray (475ml)', 'aci-aerosol-insect-spray-475ml-ikhlkhe005', '1593382360PROUTeEs.png', '1593382360fq7MTaFr.jpg', NULL, NULL, NULL, NULL, NULL, 305, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:12:40', '2020-07-26 12:31:27', 0, NULL, NULL, NULL, 0, 0),
(284, 'IKHLKHE007', 'normal', NULL, 0, 43, 42, 85, NULL, 'YAGE Electronic Mosquito Swatter (1pcs)', 'yage-electronic-mosquito-swatter-1pcs-ikhlkhe007', '1593382515ZIATfT6N.png', '1593382515jr7PvKbA.jpg', NULL, NULL, NULL, NULL, NULL, 450, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:15:15', '2020-07-26 13:15:35', 0, NULL, NULL, NULL, 0, 0),
(285, 'IKHLKHE008', 'normal', NULL, 0, 43, 42, 85, NULL, 'ACI Aerosol (250ml)', 'aci-aerosol-250ml-ikhlkhe008', '1593382561q5GB8le7.png', '1593382561VfnNZAuD.jpg', NULL, NULL, NULL, NULL, NULL, 185, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:16:01', '2020-07-30 00:10:46', 0, NULL, NULL, NULL, 0, 0),
(286, 'IKHLKHE009', 'normal', NULL, 0, 43, 42, 85, NULL, 'Good Knight Cartridge (45ml)', 'good-knight-cartridge-45ml-ikhlkhe009', '15933826226sQBMBNv.png', '1593382622KA8gESSR.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:17:02', '2020-07-26 12:59:06', 0, NULL, NULL, NULL, 0, 0),
(287, 'IKHLKHE010', 'normal', NULL, 0, 43, 42, 85, NULL, 'King Jumbo Mosquito Coil (10pcs)', 'king-jumbo-mosquito-coil-10pcs-ikhlkhe010', '1593382679O6cRrMOd.png', '1593382679Alwh0HS3.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:17:59', '2020-07-26 13:10:17', 0, NULL, NULL, NULL, 0, 0),
(288, 'IKHLKHE011', 'normal', NULL, 0, 43, 42, 85, NULL, 'Bashundhara Fiber Coil (10pcs)', 'bashundhara-fiber-coil-10pcs-ikhlkhe011', '1593382725V80yElaE.png', '1593382725vjC5dhXm.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:18:45', '2020-07-26 12:48:03', 0, NULL, NULL, NULL, 0, 0),
(289, 'IKHLKHE012', 'normal', NULL, 0, 43, 42, 85, NULL, 'Good Knight Machine+ Refill 45 Nights', 'good-knight-machine-refill-45-nights-ikhlkhe012', '1593382805ixjlRDqC.png', '1593382805iFpsxih5.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:20:05', '2020-07-26 13:04:43', 0, NULL, NULL, NULL, 0, 0),
(290, 'IKHLKHE013', 'normal', NULL, 0, 43, 42, 85, NULL, 'Good Knight adv Machine+ Refill 45 Nights', 'good-knight-adv-machine-refill-45-nights-ikhlkhe013', '1593382876U8p99v93.png', '1593382876wb2IxPso.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:21:16', '2020-07-26 12:53:36', 0, NULL, NULL, NULL, 0, 0),
(291, 'CMHLKHE001', 'normal', NULL, 0, 43, 42, 83, NULL, 'Agarbatti-01', 'agarbatti-01-cmhlkhe001', '1593383020JCBpJ8Em.png', '15933830204Y4RZgqP.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:23:40', '2020-07-26 09:14:47', 0, NULL, NULL, NULL, 0, 0),
(292, 'CMHLKHE002', 'normal', NULL, 0, 43, 42, 83, NULL, 'Match Box 12 pcs', 'match-box-12-pcs-cmhlkhe002', '1593383368An0tzxDn.png', '159338336883vWWtRg.jpg', NULL, NULL, NULL, NULL, NULL, 24, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-28 16:29:28', '2020-07-26 09:15:22', 0, NULL, NULL, NULL, 0, 0),
(293, 'BGBSFC001', 'normal', NULL, 0, 42, 32, 17, NULL, 'Ahmed Corn Flour (250 gm)', 'ahmed-corn-flour-250-gm-bgbsfc001', '1593457324pRbrS9ls.png', '1593457324rwxrm4bU.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 12:57:51', '2020-07-27 20:36:50', 0, NULL, NULL, NULL, 0, 0),
(294, 'BGBSFC002', 'normal', NULL, 0, 42, 32, 17, NULL, 'Booter Beshon (Chick Peas Powder) 500 gm', 'booter-beshon-chick-peas-powder-500-gm-bgbsfc002', '1593457118OFCde8GA.png', '159345711848QiuXOZ.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 12:58:38', '2020-07-23 00:43:50', 0, NULL, NULL, NULL, 0, 0),
(295, 'BGBSFC003', 'normal', NULL, 0, 42, 32, 17, NULL, 'Pistachios (Pesta Badam)-100gm', 'pistachios-pesta-badam-100gm-bgbsfc003', '159345722593XqxLLA.png', '1593457225CeHS6oUv.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:00:25', '2020-07-23 01:16:06', 0, NULL, NULL, NULL, 0, 0),
(296, 'BGBSFC004', 'normal', NULL, 0, 42, 32, 17, NULL, 'Rice Flour (1 KG)', 'rice-flour-1-kg-bgbsfc004', '1593457420LXsZZDma.png', '1593457420YxAA91IQ.jpg', NULL, NULL, NULL, NULL, NULL, 75, 90, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-06-29 13:03:40', '2020-07-27 19:59:06', 0, NULL, NULL, NULL, 0, 0),
(297, 'BGBSFC005', 'normal', NULL, 0, 42, 32, 17, NULL, 'Vaja Cheena Badam - 100 gm', 'vaja-cheena-badam-100-gm-bgbsfc005', '1593457475xXDtYDmz.png', '1593457475YUcean9q.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:04:35', '2020-07-27 19:56:27', 0, NULL, NULL, NULL, 0, 0),
(298, 'BGBSFC006', 'normal', NULL, 0, 42, 32, 17, NULL, 'Kismis- 100 gm', 'kismis-100-gm-bgbsfc006', '1593457553HcaetpQm.png', '15934575539vHKgfG7.jpg', NULL, NULL, NULL, NULL, NULL, 56, 65, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, '2020-06-29 13:05:53', '2020-07-25 21:53:29', 0, NULL, NULL, NULL, 0, 0),
(299, 'BGBSFC007', 'normal', NULL, 0, 42, 32, 17, NULL, 'Kath Badam- 100 gm', 'kath-badam-100-gm-bgbsfc007', '15934576088oM7N9ge.png', '1593457608z83zj6oT.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:06:48', '2020-07-26 07:41:11', 0, NULL, NULL, NULL, 0, 0),
(300, 'BGBSFC008', 'normal', NULL, 0, 42, 32, 17, NULL, 'Kacha Cheena Badam- 100 gm', 'kacha-cheena-badam-100-gm-bgbsfc008', '1593457699aBUpFf3p.png', '1593457699PXxo6BZv.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:08:19', '2020-07-26 07:35:14', 0, NULL, NULL, NULL, 0, 0),
(301, 'BGBSFC009', 'normal', NULL, 0, 42, 32, 17, NULL, 'Foster Clark''s cake Vanilla - 500 gm', 'foster-clarks-cake-vanilla-500-gm-bgbsfc009', '1593457811sUxVA1Bj.png', '159345781105Hz2ghL.jpg', NULL, NULL, NULL, NULL, NULL, 375, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:10:11', '2020-07-26 07:23:11', 0, NULL, NULL, NULL, 0, 0),
(302, 'BGBSFC010', 'normal', NULL, 0, 42, 32, 17, NULL, 'Freshwell Raspberry (85 gm)', 'freshwell-raspberry-85-gm-bgbsfc010', '15934578891is5yPNj.png', '1593457889gkiTVOX8.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:11:29', '2020-07-26 07:29:12', 0, NULL, NULL, NULL, 0, 0),
(303, 'BGBSFC011', 'normal', NULL, 0, 42, 32, 17, NULL, 'Foster Clark''s Gelatin (85 ml)', 'foster-clarks-gelatin-85-ml-bgbsfc011', '1593457954nhF6BuqQ.png', '1593457954pDN79muI.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:12:34', '2020-07-18 18:04:54', 0, NULL, NULL, NULL, 0, 0),
(304, 'TCBEFC001', 'normal', NULL, 0, 42, 27, 18, NULL, 'Ispahani Mirzapore (400 gm)', 'ispahani-mirzapore-400-gm-tcbefc001', '1593458826apgWm2v9.png', '1593458826aFt6WUYB.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:27:06', '2020-07-21 14:30:22', 0, NULL, NULL, NULL, 0, 0),
(305, 'TCBEFC002', 'normal', NULL, 0, 42, 27, 18, NULL, 'Taaza tea (400 gm)', 'taaza-tea-400-gm-tcbefc002', '1593458992CiTG9bPx.png', '15934589934NXJWeyA.jpg', NULL, NULL, NULL, NULL, NULL, 199, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:29:52', '2020-07-21 15:23:53', 0, NULL, NULL, NULL, 0, 0),
(306, 'TCBEFC003', 'normal', NULL, 0, 42, 27, 18, NULL, 'Ispahani Tea Bag (50 CPS)', 'ispahani-tea-bag-50-cps-tcbefc003', '15934591316pHYt1AA.png', '1593459131wvxejfQT.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:32:11', '2020-07-21 15:18:51', 0, NULL, NULL, NULL, 0, 0),
(307, 'TCBEFC004', 'normal', NULL, 0, 42, 27, 18, NULL, 'Kazi & Kazi Green Tea 60 gm (40 Pcs)', 'kazi-kazi-green-tea-60-gm-40-pcs-tcbefc004', '1593459193tm5bpGdE.png', '1593459193jbmEsNld.jpg', NULL, NULL, NULL, NULL, NULL, 160, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:33:13', '2020-07-21 15:21:25', 0, NULL, NULL, NULL, 0, 0),
(308, 'TCBEFC005', 'normal', NULL, 0, 42, 27, 18, NULL, 'Ispahani Mirzapore Tea (200 gm)', 'ispahani-mirzapore-tea-200-gm-tcbefc005', '1593459255xXdPHmqR.png', '1593459255InrB0evL.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:34:15', '2020-07-20 22:11:14', 0, NULL, NULL, NULL, 0, 0),
(309, 'TCBEFC006', 'normal', NULL, 0, 42, 27, 18, NULL, 'Brooke Bond Tea (200 gm)', 'brooke-bond-tea-200-gm-tcbefc006', '1593459410zYtkj4qO.png', '1593459411QADQi0ch.jpg', NULL, NULL, NULL, NULL, NULL, 100, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:36:50', '2020-07-20 21:59:26', 0, NULL, NULL, NULL, 0, 0),
(310, 'TCBEFC007', 'normal', NULL, 0, 42, 27, 18, NULL, 'Kazi & Kazi Ginger Tea 60 gm (40 PCS)', 'kazi-kazi-ginger-tea-60-gm-40-pcs-tcbefc007', '1593459515YKnxszCO.png', '1593459515VYBCzti9.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:38:35', '2020-07-20 22:14:10', 0, NULL, NULL, NULL, 0, 0),
(311, 'TCBEFC008', 'normal', NULL, 0, 42, 27, 18, NULL, 'Kazi & Kazi Tulsi Tea (60 gm)', 'kazi-kazi-tulsi-tea-60-gm-tcbefc008', '1593459559YWx17lSR.png', '15934595596DoI9UU1.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:39:19', '2020-07-20 22:15:36', 0, NULL, NULL, NULL, 0, 0),
(312, 'TCBEFC010', 'normal', NULL, 0, 42, 27, 18, NULL, 'Kazi & Kazi Black Tea (80 gm)', 'kazi-kazi-black-tea-80-gm-tcbefc010', '1593459643AoIEaOZn.png', '1593459643Oo5ezZjS.jpg', NULL, NULL, NULL, NULL, NULL, 125, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:40:43', '2020-07-20 22:12:40', 0, NULL, NULL, NULL, 0, 0),
(313, 'TCBEFC011', 'normal', NULL, 0, 42, 27, 18, NULL, 'Nestlé NESCAFE 15 gm', 'nestle-nescafe-15-gm-tcbefc011', '15934597077jEuGg37.png', '1593459708ZzJKD7md.jpg', NULL, NULL, NULL, NULL, NULL, 12, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:41:47', '2020-07-20 22:27:05', 0, NULL, NULL, NULL, 0, 0),
(314, 'TCBEFC012', 'normal', NULL, 0, 42, 27, 18, NULL, 'Nescafe Coffee Jar (200 gm )', 'nescafe-coffee-jar-200-gm-tcbefc012', '1593459815vnLTheyC.png', '15934598167Q22BaVg.jpg', NULL, NULL, NULL, NULL, NULL, 495, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:43:35', '2020-07-21 02:01:24', 0, NULL, NULL, NULL, 0, 0),
(315, 'TCBEFC013', 'normal', NULL, 0, 42, 27, 18, NULL, 'Coffee Mate Plastic Jar (400 gm)', 'coffee-mate-plastic-jar-400-gm-tcbefc013', '1593459917IQz3kJ78.png', '1593459917yXHsU4tD.jpg', NULL, NULL, NULL, NULL, NULL, 285, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:45:17', '2020-07-20 22:02:27', 0, NULL, NULL, NULL, 0, 0),
(316, 'TCBEFC014', 'normal', NULL, 0, 42, 27, 18, NULL, 'Nescafe Coffee Jar( 50 gm)', 'nescafe-coffee-jar-50-gm-tcbefc014', '1593460025Eg3QSAA0.png', '1593460026jenZHUZ3.jpg', NULL, NULL, NULL, NULL, NULL, 165, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:47:05', '2020-07-20 22:24:15', 0, NULL, NULL, NULL, 0, 0),
(317, 'TCBEFC015', 'normal', NULL, 0, 42, 27, 18, NULL, 'Nestle Coffee Mate (1 kg)', 'nestle-coffee-mate-1-kg-tcbefc015', '159346006410GkNMbC.png', '1593460064kL5I8n34.jpg', NULL, NULL, NULL, NULL, NULL, 535, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:47:44', '2020-07-20 22:25:41', 0, NULL, NULL, NULL, 0, 0),
(318, 'TCBEFC016', 'normal', NULL, 0, 42, 27, 18, NULL, 'Nescafe Gold Jar (190 gm)', 'nescafe-gold-jar-190-gm-tcbefc016', '1593460148EJ2zLBD9.png', '15934601487Um6aX4h.jpg', NULL, NULL, NULL, NULL, NULL, 845, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:49:08', '2020-07-21 03:38:18', 0, NULL, NULL, NULL, 0, 0),
(319, 'TCBEFC017', 'normal', NULL, 0, 42, 27, 18, NULL, 'DAVIDOFF 57 Coffee (100 gm)', 'davidoff-57-coffee-100-gm-tcbefc017', '1593460193NRNV9bou.png', '15934601943BfZcFbN.jpg', NULL, NULL, NULL, NULL, NULL, 557, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:49:53', '2020-07-20 22:03:56', 0, NULL, NULL, NULL, 0, 0),
(320, 'DWBEFC001', 'normal', NULL, 0, 42, 27, 19, NULL, 'Mum Water (2 Ltr)', 'mum-water-2-ltr-dwbefc001', '1593460609NE8h1w3A.png', '1593460610FoTStuSy.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:56:49', '2020-07-20 20:20:55', 0, NULL, NULL, NULL, 0, 0),
(321, 'DWBEFC002', 'normal', NULL, 0, 42, 27, 19, NULL, 'Aquafina Water (1.5 Ltr)', 'aquafina-water-15-ltr-dwbefc002', '1593460665gRYiCwXJ.png', '15934606657gpdjTyl.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:57:45', '2020-07-20 20:01:24', 0, NULL, NULL, NULL, 0, 0),
(322, 'DWBEFC003', 'normal', NULL, 0, 42, 27, 19, NULL, 'Mum Drinking Water (500 ml)', 'mum-drinking-water-500-ml-dwbefc003', '1593460706K8JYWPUI.png', '1593460706Xkca0chU.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:58:26', '2020-07-20 20:19:20', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(323, 'DWBEFC004', 'normal', NULL, 0, 42, 27, 19, NULL, 'Pureit Germ Kill Kit (3000 Ltr)', 'pureit-germ-kill-kit-3000-ltr-dwbefc004', '15934607650CgPDHDe.png', '15934607655ZDGC0Kc.jpg', NULL, NULL, NULL, NULL, NULL, 1200, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 13:59:25', '2020-07-20 20:25:27', 0, NULL, NULL, NULL, 0, 0),
(324, 'DWBEFC005', 'normal', NULL, 0, 42, 27, 19, NULL, 'Pureit Germ Kill Kit (1500 Ltr)', 'pureit-germ-kill-kit-1500-ltr-dwbefc005', '1593460822MJ9WUDfD.png', '1593460822xClbmmxS.jpg', NULL, NULL, NULL, NULL, NULL, 700, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:00:22', '2020-07-20 20:23:54', 0, NULL, NULL, NULL, 0, 0),
(325, 'DWBEFC006', 'normal', NULL, 0, 42, 27, 19, NULL, 'Pureit Blue Water Purifier (23 Ltr)', 'pureit-blue-water-purifier-23-ltr-dwbefc006', '1593460877LSECi0Ng.png', '15934608774MiQa9rP.jpg', NULL, NULL, NULL, NULL, NULL, 3499, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:01:17', '2020-07-20 20:22:26', 0, NULL, NULL, NULL, 0, 0),
(326, 'CDBEFC003', 'normal', NULL, 0, 42, 27, 20, NULL, 'Coca Cola (600 ml)', 'coca-cola-600-ml-cdbefc003', '1593461246O6FJtMHq.png', '1593461247jIclKdK5.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:07:26', '2020-07-21 15:26:27', 0, NULL, NULL, NULL, 0, 0),
(327, 'CDBEFC004', 'normal', NULL, 0, 42, 27, 20, NULL, 'Coca Cola (1.25 Ltr)', 'coca-cola-125-ltr-cdbefc004', '1593461292LbBazCEh.png', '1593461292HwxwtL3i.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:08:12', '2020-07-21 03:29:07', 0, NULL, NULL, NULL, 0, 0),
(328, 'CDBEFC005', 'normal', NULL, 0, 42, 27, 20, NULL, 'Coca Cola Can (250 ml)', 'coca-cola-can-250-ml-cdbefc005', '1593461342J49SVNL2.png', '1593461342wUpQe2VM.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:09:02', '2020-07-20 22:00:59', 0, NULL, NULL, NULL, 0, 0),
(329, 'CDBEFC006', 'normal', NULL, 0, 42, 27, 20, NULL, 'Sprite (600 ml)', 'sprite-600-ml-cdbefc006', '1593461487x5psGkwW.png', '1593461487PUWVmJ7Z.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:11:27', '2020-07-21 02:10:59', 0, NULL, NULL, NULL, 0, 0),
(330, 'CDBEFC007', 'normal', NULL, 0, 42, 27, 20, NULL, 'Mountain Dew Pet (400 ml)', 'mountain-dew-pet-400-ml-cdbefc007', '1593461576QtsgV8C6.png', '1593461577KTDmfAwS.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:12:56', '2020-07-21 03:36:07', 0, NULL, NULL, NULL, 0, 0),
(331, 'CDBEFC008', 'normal', NULL, 0, 42, 27, 20, NULL, 'Sprite (2.25 Ltr)', 'sprite-225-ltr-cdbefc008', '1593461623ccHosQyX.png', '1593461623qa7I6NTw.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:13:43', '2020-07-20 22:37:13', 0, NULL, NULL, NULL, 0, 0),
(332, 'CDBEFC009', 'normal', NULL, 0, 42, 27, 20, NULL, 'Sprite (1.25 Ltr)', 'sprite-125-ltr-cdbefc009', '15934616814lyuTkoq.png', '15934616823sCcLxzi.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:14:42', '2020-07-21 03:54:18', 0, NULL, NULL, NULL, 0, 0),
(333, 'CDBEFC010', 'normal', NULL, 0, 42, 27, 20, NULL, 'Fanta (1.25 Ltr)', 'fanta-125-ltr-cdbefc010', '1593461727K4mz4fgr.png', '1593461727OCsfmD5Q.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:15:27', '2020-07-20 22:06:51', 0, NULL, NULL, NULL, 0, 0),
(334, 'CDBEFC011', 'normal', NULL, 0, 42, 27, 20, NULL, 'Sprite Can (250 ml)', 'sprite-can-250-ml-cdbefc011', '1593461787qUwm2JdJ.png', '1593461787UfDcrNBQ.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:16:27', '2020-07-21 03:56:26', 0, NULL, NULL, NULL, 0, 0),
(335, 'CDBEFC012', 'normal', NULL, 0, 42, 27, 20, NULL, 'Fanta (600 ml)', 'fanta-600-ml-cdbefc012', '15934619277NhwIUu6.png', '1593461927gk2L6KzV.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:18:47', '2020-07-20 22:08:21', 0, NULL, NULL, NULL, 0, 0),
(336, 'CDBEFC013', 'normal', NULL, 0, 42, 27, 20, NULL, 'Fanta Can (250 ml)', 'fanta-can-250-ml-cdbefc013', '15934619750MvzTyK9.png', '15934619751b6r33W6.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:19:35', '2020-07-21 03:31:29', 0, NULL, NULL, NULL, 0, 0),
(337, 'CDBEFC014', 'normal', NULL, 0, 42, 27, 20, NULL, '7 Up Can (250 ml)', '7-up-can-250-ml-cdbefc014', '1593462010SfdZ0GeY.png', '1593462010a9eh7J8a.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:20:10', '2020-07-21 03:11:43', 0, NULL, NULL, NULL, 0, 0),
(338, 'CDBEFC015', 'normal', NULL, 0, 42, 27, 20, NULL, 'Sprite Can (Imported)- 320 ml', 'sprite-can-imported-320-ml-cdbefc015', '1593462080hh6lgmu9.png', '1593462080hfWeuYII.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:21:20', '2020-07-20 22:38:37', 0, NULL, NULL, NULL, 0, 0),
(339, 'MDBEFC001', 'normal', NULL, 0, 42, 27, 22, NULL, 'Horlicks Jar (550 gm)', 'horlicks-jar-550-gm-mdbefc001', '1593463303KYpu4gxl.png', '159346330371wxST7f.jpg', NULL, NULL, NULL, NULL, NULL, 395, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:41:43', '2020-07-21 15:31:32', 0, NULL, NULL, NULL, 0, 0),
(340, 'MDBEFC002', 'normal', NULL, 0, 42, 27, 22, NULL, 'Horlicks Jar choco (550 gm)', 'horlicks-jar-choco-550-gm-mdbefc002', '1593463628drMnhoBA.png', '1593463628cTpOJYtT.jpg', NULL, NULL, NULL, NULL, NULL, 395, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:47:08', '2020-07-21 15:33:59', 0, NULL, NULL, NULL, 0, 0),
(341, 'MDBEFC003', 'normal', NULL, 0, 42, 27, 22, NULL, 'Complan Chocolate (350 gm', 'complan-chocolate-350-gm-mdbefc003', '1593463725odAfBn13.png', '1593463725f7bloYkT.jpg', NULL, NULL, NULL, NULL, NULL, 385, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:48:45', '2020-07-21 15:28:58', 0, NULL, NULL, NULL, 0, 0),
(342, 'MDBEFC004', 'normal', NULL, 0, 42, 27, 22, NULL, 'Ovaltine Malted Chocolate Drink Jar (400 gm)', 'ovaltine-malted-chocolate-drink-jar-400-gm-mdbefc004', '1593463847gS2jb8IJ.png', '1593463848GpF5cToj.jpg', NULL, NULL, NULL, NULL, NULL, 325, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:50:48', '2020-07-21 03:40:31', 0, NULL, NULL, NULL, 0, 0),
(343, 'MDBEFC005', 'normal', NULL, 0, 42, 27, 22, NULL, 'Pedia Sure  Vanilla (900 gm)', 'pedia-sure-vanilla-900-gm-mdbefc005', '15934639473nwOpZju.png', '1593463947YTrltAkK.jpg', NULL, NULL, NULL, NULL, NULL, 2000, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:52:27', '2020-07-20 22:31:29', 0, NULL, NULL, NULL, 0, 0),
(344, 'MDBEFC006', 'normal', NULL, 0, 42, 27, 22, NULL, 'Horlicks Refill (550 gm)', 'horlicks-refill-550-gm-mdbefc006', '1593463978oBAKKHf3.png', '1593463978QyILLyvw.jpg', NULL, NULL, NULL, NULL, NULL, 375, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:52:58', '2020-07-20 22:09:43', 0, NULL, NULL, NULL, 0, 0),
(345, 'MDBEFC007', 'normal', NULL, 0, 42, 27, 22, NULL, 'Women''s Horlicks Jar (400 gm)', 'womens-horlicks-jar-400-gm-mdbefc007', '1593464051ldpFwrqQ.png', '1593464051NalhglMf.jpg', NULL, NULL, NULL, NULL, NULL, 480, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:54:11', '2020-07-26 08:30:54', 0, NULL, NULL, NULL, 0, 0),
(346, 'MDBEFC008', 'normal', NULL, 0, 42, 27, 22, NULL, 'Boost Chocolate Jar (400 gm)', 'boost-chocolate-jar-400-gm-mdbefc008', '1593464124T5q7u4To.png', '1593464124EYY2LeUk.jpg', NULL, NULL, NULL, NULL, NULL, 395, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:55:24', '2020-07-26 07:47:01', 0, NULL, NULL, NULL, 0, 0),
(347, 'MDBEFC009', 'normal', NULL, 0, 42, 27, 22, NULL, 'Mother''s Horlicks Bib (350 gm)', 'mothers-horlicks-bib-350-gm-mdbefc009', '1593464167QAmeJ4xs.png', '1593464167N0Eu14a8.jpg', NULL, NULL, NULL, NULL, NULL, 490, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:56:07', '2020-07-26 08:27:56', 0, NULL, NULL, NULL, 0, 0),
(348, 'MDBEFC010', 'normal', NULL, 0, 42, 27, 22, NULL, 'Junior Horlicks Jar (500 gm)', 'junior-horlicks-jar-500-gm-mdbefc010', '1593464214kO7yFnSg.png', '1593464214BvAITQT1.jpg', NULL, NULL, NULL, NULL, NULL, 410, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:56:54', '2020-07-26 08:04:45', 0, NULL, NULL, NULL, 0, 0),
(349, 'MDBEFC011', 'normal', NULL, 0, 42, 27, 22, NULL, 'Horlicks Lite Jar (330 gm)', 'horlicks-lite-jar-330-gm-mdbefc011', '1593464257XszdaMoO.png', '15934642570EKSxdDp.jpg', NULL, NULL, NULL, NULL, NULL, 380, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:57:37', '2020-07-26 07:58:49', 0, NULL, NULL, NULL, 0, 0),
(350, 'MDBEFC012', 'normal', NULL, 0, 42, 27, 22, NULL, 'Junior Horlicks Refill (450 gm)', 'junior-horlicks-refill-450-gm-mdbefc012', '1593464310AcXtIqfE.png', '1593464310g0ubakmd.jpg', NULL, NULL, NULL, NULL, NULL, 390, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 14:58:30', '2020-07-26 08:10:46', 0, NULL, NULL, NULL, 0, 0),
(351, 'MDBEFC013', 'normal', NULL, 0, 42, 27, 22, NULL, 'Junior Horlicks Refill (450 gm)', 'junior-horlicks-refill-450-gm-mdbefc013', '1593464400tVeluMUU.png', '1593464401evm2JC7c.jpg', NULL, NULL, NULL, NULL, NULL, 650, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:00:00', '2020-07-26 08:16:24', 0, NULL, NULL, NULL, 0, 0),
(352, 'MDBEFC014', 'normal', NULL, 0, 42, 27, 22, NULL, 'Junior Horlicks Refill (450 gm)', 'junior-horlicks-refill-450-gm-mdbefc014', '1593464432UHBsRDj1.png', '1593464432cEguoUyw.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:00:32', '2020-07-26 08:22:14', 0, NULL, NULL, NULL, 0, 0),
(353, 'MDBEFC015', 'normal', NULL, 0, 42, 27, 22, NULL, 'Complan Plain Bib (350 gm)', 'complan-plain-bib-350-gm-mdbefc015', '1593464476jps4HhvH.png', '1593464476PVeNMzJL.jpg', NULL, NULL, NULL, NULL, NULL, 360, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:01:16', '2020-07-26 07:52:54', 0, NULL, NULL, NULL, 0, 0),
(354, 'JEBEFC001', 'normal', NULL, 0, 42, 27, 23, NULL, 'Tropicana Frutz Orange (350 ml)', 'tropicana-frutz-orange-350-ml-jebefc001', '1593464678I1zdYwI4.png', '1593464678syfbXLyB.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:04:38', '2020-07-26 06:06:28', 0, NULL, NULL, NULL, 0, 0),
(355, 'JEBEFC002', 'normal', NULL, 0, 42, 27, 23, NULL, 'Tropicana Frutz Apple (350 ml)', 'tropicana-frutz-apple-350-ml-jebefc002', '1593464715KhkJqWtS.png', '15934647156d3cr6oh.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:05:15', '2020-07-26 06:03:12', 0, NULL, NULL, NULL, 0, 0),
(356, 'JEBEFC003', 'normal', NULL, 0, 42, 27, 23, NULL, 'Frutika Mango Juice (1 Ltr)', 'frutika-mango-juice-1-ltr-jebefc003', '1593464758v0Orc4nI.png', '1593464758q0WrFZXN.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:05:58', '2020-07-26 05:59:57', 0, NULL, NULL, NULL, 0, 0),
(357, 'CSCSFC001', 'normal', NULL, 0, 42, 29, 24, NULL, 'Quaker Oats Poly (500 gm)', 'quaker-oats-poly-500-gm-cscsfc001', '1593464891GhLt3K7J.png', '1593464892UfnpYapy.jpg', NULL, NULL, NULL, NULL, NULL, 256, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:08:11', '2020-07-26 06:46:56', 0, NULL, NULL, NULL, 0, 0),
(358, 'CSCSFC002', 'normal', NULL, 0, 42, 29, 24, NULL, 'KOKO KRUNCH Cereal (330 gm)', 'koko-krunch-cereal-330-gm-cscsfc002', '1593464977FI7Tr1ZC.png', '1593464977VGGcLFtX.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:09:37', '2020-07-26 06:28:58', 0, NULL, NULL, NULL, 0, 0),
(359, 'CSCSFC003', 'normal', NULL, 0, 42, 29, 24, NULL, 'Corn Flakes Cereal  (275 gm)', 'corn-flakes-cereal-275-gm-cscsfc003', '1593465083qXFsS4GS.png', '1593465083hSoxqw3g.jpg', NULL, NULL, NULL, NULL, NULL, 330, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:11:23', '2020-07-26 06:22:29', 0, NULL, NULL, NULL, 0, 0),
(360, 'CSCSFC004', 'normal', NULL, 0, 42, 29, 24, NULL, 'Koko Krunch Duo Cereal(330 gm)', 'koko-krunch-duo-cereal330-gm-cscsfc004', '1593465135zXamYUVf.png', '1593465139niBxU2jw.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:12:15', '2020-07-26 06:34:49', 0, NULL, NULL, NULL, 0, 0),
(361, 'CSCSFC005', 'normal', NULL, 0, 42, 29, 24, NULL, 'Quaker White Oats (500 gm)', 'quaker-white-oats-500-gm-cscsfc005', '1593465179AegkkDq6.png', '1593465179IXYFglEZ.jpg', NULL, NULL, NULL, NULL, NULL, 320, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:12:59', '2020-07-26 06:55:57', 0, NULL, NULL, NULL, 0, 0),
(362, 'CSCSFC006', 'normal', NULL, 0, 42, 29, 24, NULL, 'Quaker Oats Jar (1kg)', 'quaker-oats-jar-1kg-cscsfc006', '1593465221OHotHM7S.png', '1593465221tQhdxxw2.jpg', NULL, NULL, NULL, NULL, NULL, 575, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:13:41', '2020-07-26 06:40:51', 0, NULL, NULL, NULL, 0, 0),
(363, 'CMMKFC001', 'normal', NULL, 0, 42, 33, 35, NULL, 'Danish Condensed (397 gm)', 'danish-condensed-397-gm-cmmkfc001', '1593466077Qr5o2Qf0.png', '1593466077eZ53akwq.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:27:57', '2020-07-20 19:31:40', 0, NULL, NULL, NULL, 0, 0),
(364, 'PMMKFC003', 'normal', NULL, 0, 42, 33, 34, NULL, 'Diploma Milk Powder (500 gm)', 'diploma-milk-powder-500-gm-pmmkfc003', '15934661208mgOe46M.png', '15934661219r1HMJNZ.jpg', NULL, NULL, NULL, NULL, NULL, 330, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:28:40', '2020-06-29 15:28:41', 0, NULL, NULL, NULL, 0, 0),
(365, 'CMMKFC004', 'normal', NULL, 0, 42, 33, 35, NULL, 'Dano Sterilized Cream (170 gm)', 'dano-sterilized-cream-170-gm-cmmkfc004', '1593466195mlfMvyaH.png', '1593466195n5LLP82u.jpg', NULL, NULL, NULL, NULL, NULL, 162, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:29:55', '2020-07-20 19:33:21', 0, NULL, NULL, NULL, 0, 0),
(366, 'PMMKFC005', 'normal', NULL, 0, 42, 33, 34, NULL, 'Diploma Milk Powder (1 KG)', 'diploma-milk-powder-1-kg-pmmkfc005', '1593466248vEcuVziB.png', '1593466248u95eboUZ.jpg', NULL, NULL, NULL, NULL, NULL, 650, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:30:48', '2020-07-23 11:17:37', 0, NULL, NULL, NULL, 0, 0),
(367, 'PMMKFC006', 'normal', NULL, 0, 42, 33, 34, NULL, 'Dano Daily Pusti Milk Powder (1 KG)', 'dano-daily-pusti-milk-powder-1-kg-pmmkfc006', '1593466325wzJlvnoA.png', '159346632691GgFgrN.jpg', NULL, NULL, NULL, NULL, NULL, 450, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:32:05', '2020-06-29 15:32:06', 0, NULL, NULL, NULL, 0, 0),
(368, 'PMMKFC007', 'normal', NULL, 0, 42, 33, 34, NULL, 'Arla Dano Daily Pusti Milk Powder (500 gm)', 'arla-dano-daily-pusti-milk-powder-500-gm-pmmkfc007', '1593466395y00wSRs5.png', '1593466396cXG2EJah.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:33:16', '2020-06-29 15:33:16', 0, NULL, NULL, NULL, 0, 0),
(369, 'PMMKFC008', 'normal', NULL, 0, 42, 33, 34, NULL, 'Dano Instant Milk Powder (500 gm)', 'dano-instant-milk-powder-500-gm-pmmkfc008', '1593466526I0fvJBVv.png', '1593466527EvwvXmBS.jpg', NULL, NULL, NULL, NULL, NULL, 320, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:35:26', '2020-06-29 15:35:27', 0, NULL, NULL, NULL, 0, 0),
(370, 'PMMKFC009', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Milk Powder Poly (500 gm)', 'marks-milk-powder-poly-500-gm-pmmkfc009', '15934665712YljXzST.png', '1593466571kXzkcaxX.jpg', NULL, NULL, NULL, NULL, NULL, 320, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:36:11', '2020-06-29 15:36:11', 0, NULL, NULL, NULL, 0, 0),
(371, 'PMMKFC010', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Milk Powder Poly (1 KG)', 'marks-milk-powder-poly-1-kg-pmmkfc010', '1593466822CzBB5YYQ.png', '1593466822M1LJi525.jpg', NULL, NULL, NULL, NULL, NULL, 625, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-29 15:40:22', '2020-06-29 15:40:22', 0, NULL, NULL, NULL, 0, 0),
(372, 'PMMKFC011', 'normal', NULL, 0, 42, 33, 34, NULL, 'PRAN Milk Powder (500 gm)', 'pran-milk-powder-500-gm-pmmkfc011', '1593507300rOs5tMTV.png', '1593507304ADqcon1Q.jpg', NULL, NULL, NULL, NULL, NULL, 290, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 02:55:00', '2020-07-26 21:25:34', 0, NULL, NULL, NULL, 0, 0),
(373, 'PMMKFC012', 'normal', NULL, 0, 42, 33, 34, NULL, 'Fresh Full Cream Milk Powder (500 gm)', 'fresh-full-cream-milk-powder-500-gm-pmmkfc012', '1593507395Tp3BrnKD.png', '1593507395YtSrMHwB.jpg', NULL, NULL, NULL, NULL, NULL, 300, 320, '<br>', NULL, '<br>', 1, 5, NULL, 'Eid ul Azha,20 Tk Off', '#2619bd,#e81a64', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 02:56:35', '2020-07-31 01:42:48', 0, NULL, NULL, NULL, 0, 0),
(374, 'PMMKFC013', 'normal', NULL, 0, 42, 33, 34, NULL, 'Fresh Full Cream Milk Powder (1 KG)', 'fresh-full-cream-milk-powder-1-kg-pmmkfc013', '1593507428fTgKskYM.png', '15935074287QvmJfRg.jpg', NULL, NULL, NULL, NULL, NULL, 540, 590, '<br>', NULL, '<br>', 1, 7, NULL, 'Eid ul Azha,50tk off', '#102cc2,#eb3778', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 02:57:08', '2020-07-29 15:00:41', 0, NULL, NULL, NULL, 0, 0),
(375, 'PMMKFC014', 'normal', NULL, 0, 42, 33, 34, NULL, 'NIDO Fortigrow Milk Powder TIN (2.5 KG)', 'nido-fortigrow-milk-powder-tin-25-kg-pmmkfc014', '1593507502WAdf1pAA.png', '15935075022MJJEBXC.jpg', NULL, NULL, NULL, NULL, NULL, 2500, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 02:58:22', '2020-07-26 21:15:29', 0, NULL, NULL, NULL, 0, 0),
(376, 'PMMKFC015', 'normal', NULL, 0, 42, 33, 34, NULL, 'NIDO Fortigrow TIN (900 gm)', 'nido-fortigrow-tin-900-gm-pmmkfc015', '1593507553OM2IGvXZ.png', '1593507553z3QTs9xV.jpg', NULL, NULL, NULL, NULL, NULL, 890, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 02:59:13', '2020-07-26 21:20:23', 0, NULL, NULL, NULL, 0, 0),
(377, 'PMMKFC016', 'normal', NULL, 0, 42, 33, 34, NULL, 'Anchor Milk Powder (1 KG)', 'anchor-milk-powder-1-kg-pmmkfc016', '1593507835LgFCIq5e.png', '1593507835jtAsreqz.jpg', NULL, NULL, NULL, NULL, NULL, 630, 0, '<br>', 0, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:00:45', '2020-07-26 19:54:35', 0, NULL, NULL, NULL, 0, 0),
(378, 'PMMKFC017', 'normal', NULL, 0, 42, 33, 34, NULL, 'MARKS Low Fat Milk Powder (400 gm)', 'marks-low-fat-milk-powder-400-gm-pmmkfc017', '1593508096gP423r2z.png', '1593508096gLqN9Fm3.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:08:16', '2020-07-26 20:43:29', 0, NULL, NULL, NULL, 0, 0),
(379, 'PMMKFC018', 'normal', NULL, 0, 42, 33, 34, NULL, 'NIDO Fortigrow  Milk Powder (700 gm)', 'nido-fortigrow-milk-powder-700-gm-pmmkfc018', '1593508186rY1etnnf.png', '1593508186h8NMiAfZ.jpg', NULL, NULL, NULL, NULL, NULL, 530, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:09:46', '2020-07-26 21:10:20', 0, NULL, NULL, NULL, 0, 0),
(380, 'PMMKFC019', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Gold Low Fat Milk Powder 40+ yrs (400 gm)', 'marks-gold-low-fat-milk-powder-40-yrs-400-gm-pmmkfc019', '1593508333foSgQ4Ae.png', '1593508333XPceSKTc.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:12:13', '2020-07-26 20:32:56', 0, NULL, NULL, NULL, 0, 0),
(381, 'PMMKFC020', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Milk Based Diabetic Diet (400 gm)', 'marks-milk-based-diabetic-diet-400-gm-pmmkfc020', '1593508386kBywvxHC.png', '1593508386WZc68YtV.jpg', NULL, NULL, NULL, NULL, NULL, 600, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:13:06', '2020-07-26 20:54:22', 0, NULL, NULL, NULL, 0, 0),
(382, 'PMMKFC021', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Active School Milk Powder (400 gm)', 'marks-active-school-milk-powder-400-gm-pmmkfc021', '1593508533NphOWqVV.png', '15935085346d5r2wRV.jpg', NULL, NULL, NULL, NULL, NULL, 330, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:15:33', '2020-07-26 20:16:48', 0, NULL, NULL, NULL, 0, 0),
(383, 'PMMKFC022', 'normal', NULL, 0, 42, 33, 34, NULL, 'Marks Young Star (16-40 years)- 400 gm', 'marks-young-star-16-40-years-400-gm-pmmkfc022', '1593508656fEPwRNDo.png', '15935086565aUCCcnH.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:17:36', '2020-07-26 21:05:01', 0, NULL, NULL, NULL, 0, 0),
(384, 'GEDYDFP001', 'normal', NULL, 0, 39, 22, 86, NULL, 'Aarong Dairy Pure Ghee (400 gm)', 'aarong-dairy-pure-ghee-400-gm-gedydfp001', '1593509188zOvAM8xz.png', '1593509188tpySMe7p.jpg', NULL, NULL, NULL, NULL, NULL, 520, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:26:28', '2020-07-26 05:53:19', 0, NULL, NULL, NULL, 0, 0),
(385, 'GEDYDFP002', 'normal', NULL, 0, 39, 22, 86, NULL, 'Aarong Dairy Pure Ghee-900 gm', 'aarong-dairy-pure-ghee-900-gm-gedydfp002', '1593509235sf4q0YN7.png', '1593509235HwbqyoQz.jpg', NULL, NULL, NULL, NULL, NULL, 1100, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:27:15', '2020-07-26 05:43:29', 0, NULL, NULL, NULL, 0, 0),
(386, 'GEDYDFP003', 'normal', NULL, 0, 39, 22, 86, NULL, 'Farm Fresh Ghee (450 gm)', 'farm-fresh-ghee-450-gm-gedydfp003', '1593509297DGtwgR1W.png', '1593509297nWw4Ub56.jpg', NULL, NULL, NULL, NULL, NULL, 560, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:28:17', '2020-07-26 05:46:46', 0, NULL, NULL, NULL, 0, 0),
(387, 'GEDYDFP004', 'normal', NULL, 0, 39, 22, 86, NULL, 'Farm Fresh Ghee (450 gm)', 'farm-fresh-ghee-450-gm-gedydfp004', '1593509443Sceyy8oa.png', '1593509443HVbYHUcA.jpg', NULL, NULL, NULL, NULL, NULL, 260, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:30:43', '2020-07-26 05:49:58', 0, NULL, NULL, NULL, 0, 0),
(388, 'SPCSFC001', 'normal', NULL, 0, 42, 28, 87, NULL, 'Hershey''s Chocolate Syrup (680 gm)', 'hersheys-chocolate-syrup-680-gm-spcsfc001', '1593510200NM0dIXcs.png', '15935102005WE25TNk.jpg', NULL, NULL, NULL, NULL, NULL, 420, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:43:20', '2020-07-21 00:00:17', 0, NULL, NULL, NULL, 0, 0),
(389, 'SPCSFC002', 'normal', NULL, 0, 42, 28, 87, NULL, 'Hershey''s Caramel Syrup (623 gm)', 'hersheys-caramel-syrup-623-gm-spcsfc002', '1593510253umVwwU29.png', '1593510253cBkjWkYc.jpg', NULL, NULL, NULL, NULL, NULL, 420, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:44:13', '2020-07-20 23:49:50', 0, NULL, NULL, NULL, 0, 0),
(390, 'SPCSFC003', 'normal', NULL, 0, 42, 28, 87, NULL, 'Hershey''s Caramel Syrup (623 gm)', 'hersheys-caramel-syrup-623-gm-spcsfc003', '1593510296LsP6jHqB.png', '1593510296e43zjpry.jpg', NULL, NULL, NULL, NULL, NULL, 430, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:44:56', '2020-07-20 23:55:06', 0, NULL, NULL, NULL, 0, 0),
(391, 'FCCSFC001', 'normal', NULL, 0, 42, 28, 88, NULL, 'Foster Clark''s Food Colour Green (28 ml)', 'foster-clarks-food-colour-green-28-ml-fccsfc001', '1593510671hHjd5r99.png', '1593510671qZe2z0fS.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:51:11', '2020-07-20 20:28:39', 0, NULL, NULL, NULL, 0, 0),
(392, 'FCCSFC002', 'normal', NULL, 0, 42, 28, 88, NULL, 'Rayner''s Green Food Colour (28 ml)', 'rayners-green-food-colour-28-ml-fccsfc002', '15935108086h9Bx5pi.png', '1593510809TSnw6dvS.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:53:28', '2020-07-20 20:33:26', 0, NULL, NULL, NULL, 0, 0),
(393, 'FCCSFC003', 'normal', NULL, 0, 42, 28, 88, NULL, 'Rayner''s Orange Food Colour (28 ml)', 'rayners-orange-food-colour-28-ml-fccsfc003', '1593510906TWzOA8ac.png', '159351090638j096bb.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:55:06', '2020-07-20 20:35:08', 0, NULL, NULL, NULL, 0, 0),
(394, 'FCCSFC004', 'normal', NULL, 0, 42, 28, 88, NULL, 'Rayner''s Blue Food Colour (28 ml)', 'rayners-blue-food-colour-28-ml-fccsfc004', '1593510955VkktwCUi.png', '1593510955HCYRPImH.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:55:55', '2020-07-20 20:31:53', 0, NULL, NULL, NULL, 0, 0),
(395, 'FCCSFC005', 'normal', NULL, 0, 42, 28, 88, NULL, 'Rayner''s Banana Flavouring Essence (28 ml)', 'rayners-banana-flavouring-essence-28-ml-fccsfc005', '1593511056bM8Gxj7j.png', '15935110565OVOVao3.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 03:57:36', '2020-07-20 20:30:14', 0, NULL, NULL, NULL, 0, 0),
(396, 'FCCSFC006', 'normal', NULL, 0, 42, 28, 88, NULL, 'Foster Clark Rose Flavouring Essence (28 ml)', 'foster-clark-rose-flavouring-essence-28-ml-fccsfc006', '1593511690kFjZM4is.png', '1593511690rMLNCnm1.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:08:10', '2020-07-20 20:27:05', 0, NULL, NULL, NULL, 0, 0),
(397, 'FCCSFC007', 'normal', NULL, 0, 42, 28, 88, NULL, 'Rayner''s Strawberry Flavour (28 ml)', 'rayners-strawberry-flavour-28-ml-fccsfc007', '1593511852oLkYqTIL.png', '159351185279PtaqBw.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:10:52', '2020-07-20 20:36:47', 0, NULL, NULL, NULL, 0, 0),
(398, 'VRCSFC001', 'normal', NULL, 0, 42, 28, 28, NULL, 'Ahmed White Vinegar (500 ml)', 'ahmed-white-vinegar-500-ml-vrcsfc001', '1593511983u77evntX.png', '1593511983769FT750.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:13:03', '2020-07-27 05:16:10', 0, NULL, NULL, NULL, 0, 0),
(399, 'VRCSFC003', 'normal', NULL, 0, 42, 28, 28, NULL, 'Ahmed Kewra Water (200 ml)', 'ahmed-kewra-water-200-ml-vrcsfc003', '1593512185h0aGF8zT.png', '1593512185y0VDLqoc.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:16:25', '2020-07-27 05:19:30', 0, NULL, NULL, NULL, 0, 0),
(400, 'VRCSFC004', 'normal', NULL, 0, 42, 28, 28, NULL, 'Ahmed Golap Jol (200 ml)', 'ahmed-golap-jol-200-ml-vrcsfc004', '1593512242YlIERH8O.png', '1593512242EuBSfwdo.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:17:22', '2020-08-01 19:19:25', 0, NULL, NULL, NULL, 0, 0),
(401, 'VRCSFC005', 'normal', NULL, 0, 42, 28, 28, NULL, 'Bragg Apple Cider Vinegar (946 ml)', 'bragg-apple-cider-vinegar-946-ml-vrcsfc005', '1593512322IJefEEa1.png', '15935123222Yykugbi.jpg', NULL, NULL, NULL, NULL, NULL, 1599, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:18:42', '2020-07-20 20:11:43', 0, NULL, NULL, NULL, 0, 0),
(402, 'VRCSFC006', 'normal', NULL, 0, 42, 28, 28, NULL, 'Bragg Apple Cider Vinegar (473 ml)', 'bragg-apple-cider-vinegar-473-ml-vrcsfc006', '1593512402Zu3Rmvxl.png', '1593512402PxolMESs.jpg', NULL, NULL, NULL, NULL, NULL, 999, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:20:02', '2020-07-20 20:10:12', 0, NULL, NULL, NULL, 0, 0),
(403, 'VRCSFC007', 'normal', NULL, 0, 42, 28, 28, NULL, 'Ahmed White Vinegar (325 ml)', 'ahmed-white-vinegar-325-ml-vrcsfc007', '1593512473nSCz0Gah.png', '1593512473x8J3x1VZ.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:21:13', '2020-07-20 19:54:13', 0, NULL, NULL, NULL, 0, 0),
(404, 'MECSFC001', 'normal', NULL, 0, 42, 28, 25, NULL, 'Alfa Mayonnaise (236 ml)', 'alfa-mayonnaise-236-ml-mecsfc001', '1593514708F4h36SDr.png', '1593514708ng2o0R3i.jpg', NULL, NULL, NULL, NULL, NULL, 125, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 04:54:50', '2020-07-20 19:58:28', 0, NULL, NULL, NULL, 0, 0),
(405, 'MECSFC002', 'normal', NULL, 0, 42, 28, 25, NULL, 'Herman Mayonnaise (236 ml)', 'herman-mayonnaise-236-ml-mecsfc002', '15935148298aQHD943.png', '1593514829wXsez5sK.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:00:29', '2020-07-20 20:16:16', 0, NULL, NULL, NULL, 0, 0),
(406, 'MECSFC003', 'normal', NULL, 0, 42, 28, 25, NULL, 'Herman Peanut Butter (340 gm)', 'herman-peanut-butter-340-gm-mecsfc003', '1593514973N4st2MSE.png', '1593514974Nj1rjNgv.jpg', NULL, NULL, NULL, NULL, NULL, 325, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:02:53', '2020-07-20 20:17:48', 0, NULL, NULL, NULL, 0, 0),
(407, 'MECSFC004', 'normal', NULL, 0, 42, 28, 25, NULL, 'Almarai Cheese (200 gm)', 'almarai-cheese-200-gm-mecsfc004', '15935150192VsqoRHw.png', '1593515019hOdMFdQC.jpg', NULL, NULL, NULL, NULL, NULL, 420, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:03:39', '2020-07-20 19:59:56', 0, NULL, NULL, NULL, 0, 0),
(408, 'MECSFC005', 'normal', NULL, 0, 42, 28, 25, NULL, 'Alamarai Cheese (500 gm)', 'alamarai-cheese-500-gm-mecsfc005', '15935151014FiHQ0iG.png', '1593515101JEjmOkp2.jpg', NULL, NULL, NULL, NULL, NULL, 720, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:05:01', '2020-07-20 19:57:03', 0, NULL, NULL, NULL, 0, 0),
(409, 'MECSFC006', 'normal', NULL, 0, 42, 28, 25, NULL, 'Calypso Mayonnaise (250 ml)', 'calypso-mayonnaise-250-ml-mecsfc006', '1593515181u4Cyx7jL.png', '1593515182jHKDWiMI.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:06:21', '2020-07-20 20:13:21', 0, NULL, NULL, NULL, 0, 0),
(410, 'MSFSFC001', 'normal', NULL, 0, 42, 30, 31, NULL, 'Herman Peanut Butter (340 gm)', 'herman-peanut-butter-340-gm-msfsfc001', '1593515296113Baprc.png', '1593515296k9p2C62O.jpg', NULL, NULL, NULL, NULL, NULL, 325, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:08:16', '2020-07-20 19:34:56', 0, NULL, NULL, NULL, 0, 0),
(411, 'MSFSFC002', 'normal', NULL, 0, 42, 30, 31, NULL, 'Nocilla Chocolate (200 gm)', 'nocilla-chocolate-200-gm-msfsfc002', '1593515438nIXcp3Wu.png', '1593515438wgnlX8Oe.jpg', NULL, NULL, NULL, NULL, NULL, 275, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:10:38', '2020-07-20 19:36:27', 0, NULL, NULL, NULL, 0, 0),
(412, 'MSFSFC003', 'normal', NULL, 0, 42, 30, 31, NULL, 'Nutella Spread (400 gm)', 'nutella-spread-400-gm-msfsfc003', '1593515486Lm5kESzu.png', '1593515487oYs8QLeV.jpg', NULL, NULL, NULL, NULL, NULL, 549, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:11:26', '2020-07-26 07:20:10', 0, NULL, NULL, NULL, 0, 0),
(413, 'JHFSFC001', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Orange Jelly (500 gm)', 'ahmed-orange-jelly-500-gm-jhfsfc001', '1593515594CGdecNTt.png', '1593515594D5RZAjxQ.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:13:14', '2020-07-26 08:39:25', 0, NULL, NULL, NULL, 0, 0),
(414, 'JHFSFC002', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ruchi Orange Jam (480 gm)', 'ruchi-orange-jam-480-gm-jhfsfc002', '1593515679QQOvKpnA.png', '1593515679kP1bZiC7.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:14:39', '2020-07-26 09:00:03', 0, NULL, NULL, NULL, 0, 0),
(415, 'JHFSFC003', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Sugar Free Apple Jelly (375 gm)', 'ahmed-sugar-free-apple-jelly-375-gm-jhfsfc003', '15935157906HM7davV.png', '1593515790IJ2c8GIa.jpg', NULL, NULL, NULL, NULL, NULL, 160, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:16:30', '2020-07-26 08:48:18', 0, NULL, NULL, NULL, 0, 0),
(416, 'JHFSFC004', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Mixed Fruit Jam (500 gm)', 'ahmed-mixed-fruit-jam-500-gm-jhfsfc004', '1593516034LK5TRpcF.png', '15935160349MseYc0X.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:20:34', '2020-07-26 08:36:33', 0, NULL, NULL, NULL, 0, 0),
(417, 'JHFSFC005', 'normal', NULL, 0, 42, 30, 30, NULL, 'Shezan Mixed Fruit Jam (440 gm)', 'shezan-mixed-fruit-jam-440-gm-jhfsfc005', '1593516199cnh6O707.png', '1593516199BKmMEoBQ.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:23:19', '2020-07-26 09:02:54', 0, NULL, NULL, NULL, 0, 0),
(418, 'JHFSFC006', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Pineapple Jelly (500 gm)', 'ahmed-pineapple-jelly-500-gm-jhfsfc006', '1593516270jn1zMXOp.png', '1593516270qdzhMwVX.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:24:30', '2020-07-26 08:45:19', 0, NULL, NULL, NULL, 0, 0),
(419, 'JHFSFC007', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Pineapple Jam (500 gm)', 'ahmed-pineapple-jam-500-gm-jhfsfc007', '1593516300KMhB0tYG.png', '1593516300VHbeX4Vh.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:25:00', '2020-07-26 08:42:22', 0, NULL, NULL, NULL, 0, 0),
(420, 'JHFSFC008', 'normal', NULL, 0, 42, 30, 30, NULL, 'Foster Clark-s Jam Strawberry (450 gm)', 'foster-clark-s-jam-strawberry-450-gm-jhfsfc008', '1593516440xmyzHPWb.png', '1593516440qWTlPahm.jpg', NULL, NULL, NULL, NULL, NULL, 490, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:27:20', '2020-07-26 08:51:12', 0, NULL, NULL, NULL, 0, 0),
(421, 'JHFSFC009', 'normal', NULL, 0, 42, 30, 30, NULL, 'PRAN Mixed Fruit Jam (375 gm)', 'pran-mixed-fruit-jam-375-gm-jhfsfc009', '1593516545myC8aFTn.png', '1593516546AtvKSZfW.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:29:05', '2020-07-26 08:57:05', 0, NULL, NULL, NULL, 0, 0),
(422, 'JHFSFC010', 'normal', NULL, 0, 42, 30, 30, NULL, 'Ahmed Guava Jelly (500 gm)', 'ahmed-guava-jelly-500-gm-jhfsfc010', '1593516580OxICzbMg.png', '1593516580lz8mQLQN.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:29:40', '2020-07-26 08:33:50', 0, NULL, NULL, NULL, 0, 0),
(423, 'JHFSFC011', 'normal', NULL, 0, 42, 30, 30, NULL, 'PRAN Mango Jam (500 gm)', 'pran-mango-jam-500-gm-jhfsfc011', '1593516644LstbOO9x.png', '1593516644cT9NhnoX.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:30:44', '2020-07-26 08:54:07', 0, NULL, NULL, NULL, 0, 0),
(424, 'NPQDFC001', 'normal', NULL, 0, 42, 31, 90, NULL, 'MAGGI Noodles Masala 8 Pack', 'maggi-noodles-masala-8-pack-npqdfc001', '15935182069hvHl4oY.png', '1593518206ouoBtmkG.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:56:46', '2020-06-30 05:56:46', 0, NULL, NULL, NULL, 0, 0),
(425, 'NPQDFC002', 'normal', NULL, 0, 42, 31, 90, NULL, 'Cocola Egg Noodles (180 gm)', 'cocola-egg-noodles-180-gm-npqdfc002', '1593518367qgGE8AHS.png', '1593518367DTusfACq.jpg', NULL, NULL, NULL, NULL, NULL, 18, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 05:59:27', '2020-07-21 03:05:17', 0, NULL, NULL, NULL, 0, 0),
(426, 'NPQDFC003', 'normal', NULL, 0, 42, 31, 90, NULL, 'Mama Noodles (496 gm)', 'mama-noodles-496-gm-npqdfc003', '1593518453GafpIlt5.png', '1593518454rtMk1kRy.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:00:53', '2020-07-21 03:09:30', 0, NULL, NULL, NULL, 0, 0),
(427, 'NPQDFC004', 'normal', NULL, 0, 42, 31, 90, NULL, 'Mama Noodles (620 gm)', 'mama-noodles-620-gm-npqdfc004', '15935188660yzQUKWT.png', '1593518866IOAigi45.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:07:46', '2020-07-21 01:56:24', 0, NULL, NULL, NULL, 0, 0),
(428, 'NPQDFC005', 'normal', NULL, 0, 42, 31, 90, NULL, 'MAGGI Noodles Masala 4 Pack', 'maggi-noodles-masala-4-pack-npqdfc005', '1593518931Yn58fo0Y.png', '1593518931wdp23u28.jpg', NULL, NULL, NULL, NULL, NULL, 66, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:08:51', '2020-07-21 03:07:21', 0, NULL, NULL, NULL, 0, 0),
(429, 'NPQDFC006', 'normal', NULL, 0, 42, 31, 90, NULL, 'MAGGI Masala Blast Noodles 4 Packs', 'maggi-masala-blast-noodles-4-packs-npqdfc006', '1593519066fqisrJV5.png', '1593519066NQ1R4Pli.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:11:06', '2020-07-31 01:48:43', 0, NULL, NULL, NULL, 0, 0),
(430, 'NPQDFC008', 'normal', NULL, 0, 42, 31, 90, NULL, 'Mama Noodles Shrimp 4 pcs', 'mama-noodles-shrimp-4-pcs-npqdfc008', '159351937383gz9I7k.png', '1593519373SE5B7I2x.jpg', NULL, NULL, NULL, NULL, NULL, 66, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:16:13', '2020-07-26 20:27:36', 0, NULL, NULL, NULL, 0, 0),
(431, 'NPQDFC010', 'normal', NULL, 0, 42, 31, 90, NULL, 'Cocola Cook Noodles (400 gm)', 'cocola-cook-noodles-400-gm-npqdfc010', '1593519526QdZgSLQB.png', '1593519526VyZNeKwH.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:18:46', '2020-07-26 20:05:54', 0, NULL, NULL, NULL, 0, 0),
(432, 'NPQDFC011', 'normal', NULL, 0, 42, 31, 90, NULL, 'Sajeeb Tandoori Chicken Noodles (180 gm)', 'sajeeb-tandoori-chicken-noodles-180-gm-npqdfc011', '1593519606yjsXbp3R.png', '1593519606i3gpfeIz.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:20:06', '2020-07-26 21:35:41', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(433, 'NPQDFC012', 'normal', NULL, 0, 42, 31, 90, NULL, 'Sajeeb Noodles Thai Flavor Stick (180 gm)', 'sajeeb-noodles-thai-flavor-stick-180-gm-npqdfc012', '15935196546WPxiaXo.png', '1593519654DSkaxTZO.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:20:54', '2020-07-26 23:53:07', 0, NULL, NULL, NULL, 0, 0),
(434, 'NPQDFC013', 'normal', NULL, 0, 42, 31, 90, NULL, 'Sajeeb Egg Noodles', 'sajeeb-egg-noodles-npqdfc013', '1593519755I1QT0p8H.png', '1593519755JCsCcYkT.jpg', NULL, NULL, NULL, NULL, NULL, 18, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:22:35', '2020-07-26 23:07:48', 0, NULL, NULL, NULL, 0, 0),
(435, 'NPQDFC014', 'normal', NULL, 0, 42, 31, 90, NULL, 'Kolson Macaroni Shell (400 gm)', 'kolson-macaroni-shell-400-gm-npqdfc014', '1593519813Sq4W2ZRY.png', '1593519813v866MwYC.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:23:33', '2020-07-26 21:30:37', 0, NULL, NULL, NULL, 0, 0),
(436, 'NPQDFC015', 'normal', NULL, 0, 42, 31, 90, NULL, 'Saporito Penne Rigate (Italy)- 500 gm', 'saporito-penne-rigate-italy-500-gm-npqdfc015', '15935199384BOYlRUq.png', '1593519938D1sQOD2m.jpg', NULL, NULL, NULL, NULL, NULL, 175, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:25:38', '2020-07-27 01:01:07', 0, NULL, NULL, NULL, 0, 0),
(437, 'ISQDFC001', 'normal', NULL, 0, 42, 31, 89, NULL, 'Knorr Chicken Cube (20 gm)', 'knorr-chicken-cube-20-gm-isqdfc001', '1593520117lXwXDUZ4.png', '1593520117KtyUoflE.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:28:37', '2020-07-26 11:19:12', 0, NULL, NULL, NULL, 0, 0),
(438, 'ISQDFC002', 'normal', NULL, 0, 42, 31, 89, NULL, 'Knorr Soup Chicken Corn (24 gm)', 'knorr-soup-chicken-corn-24-gm-isqdfc002', '15935202252lYG0Aap.png', '1593520225Xp9L7wWJ.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:30:25', '2020-07-26 11:25:17', 0, NULL, NULL, NULL, 0, 0),
(439, 'VLQDFC001', 'normal', NULL, 0, 42, 31, 91, NULL, 'Kolson Laccha Shemai', 'kolson-laccha-shemai-vlqdfc001', '1593520433zvfpvWEG.png', '1593520433m5CKtM0H.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:33:53', '2020-07-26 17:10:10', 0, NULL, NULL, NULL, 0, 0),
(440, 'VLQDFC002', 'normal', NULL, 0, 42, 31, 91, NULL, 'Kolson Vermicelli (Shemai)', 'kolson-vermicelli-shemai-vlqdfc002', '15935205851gdwowgA.png', '1593520585tJkBvJFD.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:36:25', '2020-07-26 17:18:17', 0, NULL, NULL, NULL, 0, 0),
(441, 'VLQDFC003', 'normal', NULL, 0, 42, 31, 91, NULL, 'Radhuni Shemai', 'radhuni-shemai-vlqdfc003', '15935207405D62K6iZ.png', '1593520741mur4PFtq.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 06:39:00', '2020-07-26 17:30:42', 0, NULL, NULL, NULL, 0, 0),
(442, 'SKCSFC001', 'normal', NULL, 0, 42, 28, 27, NULL, 'PRAN Hot Tomato Sauce (340 gm)', 'pran-hot-tomato-sauce-340-gm-skcsfc001', '1593537003kNTCmzu3.png', '1593537003b24Ux0yn.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:10:03', '2020-07-21 15:46:52', 0, NULL, NULL, NULL, 0, 0),
(443, 'SKCSFC002', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ahmed Soya Sauce (500 ml)', 'ahmed-soya-sauce-500-ml-skcsfc002', '1593537045GVPyQIQu.png', '1593537045hL3tgdZz.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:10:45', '2020-07-21 15:39:02', 0, NULL, NULL, NULL, 0, 0),
(444, 'SKCSFC003', 'normal', NULL, 0, 42, 28, 27, NULL, 'PRAN Tomato Ketchup (340 gm)', 'pran-tomato-ketchup-340-gm-skcsfc003', '1593537108MciVo1ZA.png', '1593537108Z5ECs2Vl.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:11:48', '2020-07-21 15:54:14', 0, NULL, NULL, NULL, 0, 0),
(445, 'SKCSFC004', 'normal', NULL, 0, 42, 28, 27, NULL, 'Pran Soya Sauce (300 ml)', 'pran-soya-sauce-300-ml-skcsfc004', '1593537160IWCT2i12.png', '1593537160cP6QfLlZ.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:12:40', '2020-07-21 15:51:48', 0, NULL, NULL, NULL, 0, 0),
(446, 'SKCSFC005', 'normal', NULL, 0, 42, 28, 27, NULL, 'Best Chili Sauce (340 gm)', 'best-chili-sauce-340-gm-skcsfc005', '1593537235ecUYF7qK.png', '1593537235EP56XoEF.jpg', NULL, NULL, NULL, NULL, NULL, 127, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:13:55', '2020-07-21 15:44:19', 0, NULL, NULL, NULL, 0, 0),
(447, 'SKCSFC006', 'normal', NULL, 0, 42, 28, 27, NULL, 'PRAN Hot Tomato Sauce Mini (10 pcs)', 'pran-hot-tomato-sauce-mini-10-pcs-skcsfc006', '1593537296Q4Z7bY8D.png', '1593537296RGCBwhoV.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:14:56', '2020-07-21 15:49:22', 0, NULL, NULL, NULL, 0, 0),
(448, 'SKCSFC007', 'normal', NULL, 0, 42, 28, 27, NULL, 'American Garden BBQ Sauce (510 gm)', 'american-garden-bbq-sauce-510-gm-skcsfc007', '1593537371HngVX0uN.png', '1593537371xqFCFYI3.jpg', NULL, NULL, NULL, NULL, NULL, 366, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:16:11', '2020-07-21 15:41:40', 0, NULL, NULL, NULL, 0, 0),
(449, 'SKCSFC008', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ahmed Green Chilli Sauce (340 gm)', 'ahmed-green-chilli-sauce-340-gm-skcsfc008', '15935374504uUuwOPe.png', '1593537450ofqD8fkt.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:17:30', '2020-07-21 15:36:25', 0, NULL, NULL, NULL, 0, 0),
(450, 'SKCSFC009', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ahmed Sweet Chilli Sauce (340 gm)', 'ahmed-sweet-chilli-sauce-340-gm-skcsfc009', '1593537536ntt4JeqQ.png', '1593537536YishfWn4.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:18:56', '2020-07-21 03:13:58', 0, NULL, NULL, NULL, 0, 0),
(451, 'SDCSFC001', 'normal', NULL, 0, 42, 28, 26, NULL, 'Remia salad dressing (250 ml)', 'remia-salad-dressing-250-ml-sdcsfc001', '1593537632EQbIzzdv.png', '1593537632BlkxY4zw.jpg', NULL, NULL, NULL, NULL, NULL, 210, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:20:32', '2020-07-20 19:28:28', 0, NULL, NULL, NULL, 0, 0),
(452, 'SKCSFC010', 'normal', NULL, 0, 42, 28, 27, NULL, 'Bachun Oyster Sauce (350 ml)', 'bachun-oyster-sauce-350-ml-skcsfc010', '15935377041B4Q5B12.png', '1593537704ZxZRWPYo.jpg', NULL, NULL, NULL, NULL, NULL, 215, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:21:44', '2020-07-20 21:52:06', 0, NULL, NULL, NULL, 0, 0),
(453, 'SKCSFC011', 'normal', NULL, 0, 42, 28, 27, NULL, 'Maggi Thai Sause (200 ml)', 'maggi-thai-sause-200-ml-skcsfc011', '1593537740GQLwgSap.png', '1593537741WZs1V0xo.jpg', NULL, NULL, NULL, NULL, NULL, 145, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:22:20', '2020-07-20 22:21:23', 0, NULL, NULL, NULL, 0, 0),
(454, 'SKCSFC012', 'normal', NULL, 0, 42, 28, 27, NULL, 'Best Chili & Garlic Sauce (320 gm)', 'best-chili-garlic-sauce-320-gm-skcsfc012', '1593537796u0Kq0QSY.png', '1593537796UXzDOYm1.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:23:16', '2020-07-20 21:55:01', 0, NULL, NULL, NULL, 0, 0),
(455, 'SKCSFC013', 'normal', NULL, 0, 42, 28, 27, NULL, 'Suree Premium Oyster Sauce (295 ml)', 'suree-premium-oyster-sauce-295-ml-skcsfc013', '1593537890r58rqIHn.png', '1593537890dXykrd5W.jpg', NULL, NULL, NULL, NULL, NULL, 415, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:24:50', '2020-07-20 22:40:06', 0, NULL, NULL, NULL, 0, 0),
(456, 'SKCSFC014', 'normal', NULL, 0, 42, 28, 27, NULL, 'Kikkoman Original Soya Sauce  (600 ml)', 'kikkoman-original-soya-sauce-600-ml-skcsfc014', '1593537970naHm8Q8b.png', '1593537970dasOgBgO.jpg', NULL, NULL, NULL, NULL, NULL, 440, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:26:10', '2020-07-20 22:17:00', 0, NULL, NULL, NULL, 0, 0),
(457, 'SKCSFC015', 'normal', NULL, 0, 42, 28, 27, NULL, 'Pran Green Chili Sauce (340 gm)', 'pran-green-chili-sauce-340-gm-skcsfc015', '1593538008IgDhaaP4.png', '1593538008p8Wptus0.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:26:48', '2020-07-20 22:32:57', 0, NULL, NULL, NULL, 0, 0),
(458, 'SKCSFC016', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ahmed Tomato Ketchup (340 gm)', 'ahmed-tomato-ketchup-340-gm-skcsfc016', '1593538088mEoH2d4R.png', '1593538088E9zZKvmt.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:28:08', '2020-07-21 03:16:10', 0, NULL, NULL, NULL, 0, 0),
(459, 'SKCSFC017', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ahmed Hot Tomato Sauce (340 gm)', 'ahmed-hot-tomato-sauce-340-gm-skcsfc017', '1593538173OZpsfuUF.png', '1593538174gEyZT3HA.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:29:33', '2020-07-20 21:49:14', 0, NULL, NULL, NULL, 0, 0),
(460, 'SKCSFC018', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ruchi Hot Tomato Sauce (350 ml)', 'ruchi-hot-tomato-sauce-350-ml-skcsfc018', '1593538238fcdIDnLt.png', '15935382387U7PoF1t.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:30:38', '2020-07-20 22:34:25', 0, NULL, NULL, NULL, 0, 0),
(461, 'SKCSFC019', 'normal', NULL, 0, 42, 28, 27, NULL, 'Ruchi Tomato Ketchup (350 gm)', 'ruchi-tomato-ketchup-350-gm-skcsfc019', '1593538284HS9XFB3y.png', '1593538284donZKkj2.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:31:24', '2020-07-20 22:35:52', 0, NULL, NULL, NULL, 0, 0),
(462, 'SKCSFC020', 'normal', NULL, 0, 42, 28, 27, NULL, 'Teo Tak Seng Fish Sauce (750 cc)', 'teo-tak-seng-fish-sauce-750-cc-skcsfc020', '1593538397PyuKgYDx.png', '1593538397wnxPUYRX.jpg', NULL, NULL, NULL, NULL, NULL, 240, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:33:17', '2020-07-21 03:58:28', 0, NULL, NULL, NULL, 0, 0),
(463, 'PSCSFC001', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Mango Pickle (200 gm)', 'ruchi-mango-pickle-200-gm-pscsfc001', '1593539286OOC52YKL.png', '1593539287eNLoXQOi.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:48:06', '2020-07-26 07:05:04', 0, NULL, NULL, NULL, 0, 0),
(464, 'PSCSFC002', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Mango Pickle (400 gm)', 'ruchi-mango-pickle-400-gm-pscsfc002', '1593539499LRuXExwM.png', '1593539499iqwJ2m1o.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:48:57', '2020-07-26 07:07:59', 0, NULL, NULL, NULL, 0, 0),
(465, 'PSCSFC003', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Garlic Pickle (200 gm)', 'ruchi-garlic-pickle-200-gm-pscsfc003', '15935394280IbHEWMl.png', '1593539428sPDkLS0U.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:50:28', '2020-07-26 07:01:53', 0, NULL, NULL, NULL, 0, 0),
(466, 'PSCSFC004', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Mixed Chutney (450 gm)', 'ruchi-mixed-chutney-450-gm-pscsfc004', '1593539654jSBwYJag.png', '1593539654dENKOUy8.jpg', NULL, NULL, NULL, NULL, NULL, 115, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:54:14', '2020-07-26 07:11:10', 0, NULL, NULL, NULL, 0, 0),
(467, 'PSCSFC005', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Olive Pickle (400 gm)', 'ruchi-olive-pickle-400-gm-pscsfc005', '1593539701wosKfNNx.png', '15935397018eDpVXvx.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:55:01', '2020-07-26 07:17:10', 0, NULL, NULL, NULL, 0, 0),
(468, 'PSCSFC006', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Mixed Pickle (400 gm)', 'ruchi-mixed-pickle-400-gm-pscsfc006', '1593539780GG6jxgVe.png', '1593539780tIWQcXxy.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:56:20', '2020-07-26 07:14:11', 0, NULL, NULL, NULL, 0, 0),
(469, 'PSCSFC007', 'normal', NULL, 0, 42, 28, 29, NULL, 'Ruchi Chutney Tetul (20 gm 12 pcs)', 'ruchi-chutney-tetul-20-gm-12-pcs-pscsfc007', '159353986192PmO7lY.png', '1593539861a8Ez94zO.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:57:41', '2020-07-26 06:58:50', 0, NULL, NULL, NULL, 0, 0),
(470, 'PSCSFC008', 'normal', NULL, 0, 42, 28, 29, NULL, 'PRAN Mixed Pickle (400 gm)', 'pran-mixed-pickle-400-gm-pscsfc008', '1593539985YguJoKew.png', '15935399853aSMMWv9.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 11:59:45', '2020-07-26 06:37:48', 0, NULL, NULL, NULL, 0, 0),
(471, 'PSCSFC009', 'normal', NULL, 0, 42, 28, 29, NULL, 'Pran Jugol Chutney (300 gm)', 'pran-jugol-chutney-300-gm-pscsfc009', '159354001998QfhRdD.png', '1593540019xB2zXFs9.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:00:19', '2020-07-26 06:31:54', 0, NULL, NULL, NULL, 0, 0),
(472, 'PSCSFC010', 'normal', NULL, 0, 42, 28, 29, NULL, 'BD Garlic Pickle (400 gm)', 'bd-garlic-pickle-400-gm-pscsfc010', '1593540104yMbA1LlM.png', '15935401059mVqT4jZ.jpg', NULL, NULL, NULL, NULL, NULL, 195, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:01:44', '2020-07-26 06:25:48', 0, NULL, NULL, NULL, 0, 0),
(473, 'PSCSFC011', 'normal', NULL, 0, 42, 28, 29, NULL, 'PRAN Olive Pickle (400 gm)', 'pran-olive-pickle-400-gm-pscsfc011', '1593540151PPb3T1up.png', '1593540151LgTexLmq.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:02:31', '2020-07-26 06:49:58', 0, NULL, NULL, NULL, 0, 0),
(474, 'PSCSFC012', 'normal', NULL, 0, 42, 28, 29, NULL, 'PRAN Naga Chili Pickle (300 gm)', 'pran-naga-chili-pickle-300-gm-pscsfc012', '1593540187rhNG20XA.png', '1593540187eE8tE8IR.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:03:07', '2020-07-26 06:43:53', 0, NULL, NULL, NULL, 0, 0),
(475, 'CPSSFC001', 'normal', NULL, 0, 42, 80, 92, NULL, 'Kurkure Cream & Onion Chips (45 gm)', 'kurkure-cream-onion-chips-45-gm-cpssfc001', '1593540426UxS0o3w7.png', '15935404266VixDJiU.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:07:06', '2020-07-21 14:25:23', 0, NULL, NULL, NULL, 0, 0),
(476, 'CPSSFC002', 'normal', NULL, 0, 42, 80, 92, NULL, 'Sun Chips Salt & Pepper (22 gm)', 'sun-chips-salt-pepper-22-gm-cpssfc002', '1593540471RlSHyhhw.png', '1593540471rkC7Lllm.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:07:51', '2020-07-21 14:27:54', 0, NULL, NULL, NULL, 0, 0),
(477, 'CPSSFC003', 'normal', NULL, 0, 42, 80, 92, NULL, 'Sun Chips Garlic & Chilli (22 gm)', 'sun-chips-garlic-chilli-22-gm-cpssfc003', '1593540520WLQTta7y.png', '1593540520cxudXsPR.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:08:40', '2020-07-21 14:42:23', 0, NULL, NULL, NULL, 0, 0),
(478, 'CPSSFC004', 'normal', NULL, 0, 42, 80, 92, NULL, 'Sun Chips Mix Masala (22 gm)', 'sun-chips-mix-masala-22-gm-cpssfc004', '1593540565xYwjA2NY.png', '1593540565tYKZWEO4.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:09:25', '2020-07-21 14:45:07', 0, NULL, NULL, NULL, 0, 0),
(479, 'CPSSFC005', 'normal', NULL, 0, 42, 80, 92, NULL, 'Sun Chips Tomato Tango (22 gm)', 'sun-chips-tomato-tango-22-gm-cpssfc005', '1593540621skK1XIVb.png', '1593540621Qwh6fpdU.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:10:21', '2020-07-21 14:47:33', 0, NULL, NULL, NULL, 0, 0),
(480, 'CPSSFC006', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Potato Chips Original (149 gm)', 'pringles-potato-chips-original-149-gm-cpssfc006', '1593540700wfZzKQIZ.png', '1593540700RV3vvuro.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:11:40', '2020-07-21 14:39:47', 0, NULL, NULL, NULL, 0, 0),
(481, 'CPSSFC007', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Cheddar Cheese (158 gm)', 'pringles-cheddar-cheese-158-gm-cpssfc007', '1593540735Y0voySu9.png', '1593540735glxLONCL.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:12:15', '2020-07-21 14:37:24', 0, NULL, NULL, NULL, 0, 0),
(482, 'CPSSFC008', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles BBQ Potato Chips (158 gm)', 'pringles-bbq-potato-chips-158-gm-cpssfc008', '1593540782l2WFmi5h.png', '1593540782jBMe80jo.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:13:02', '2020-07-21 03:45:08', 0, NULL, NULL, NULL, 0, 0),
(483, 'CPSSFC009', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Hot & Spicy Potato Chips (147 gm)', 'pringles-hot-spicy-potato-chips-147-gm-cpssfc009', '1593540872kqAeswIJ.png', '1593540872MjoGpZvB.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:14:32', '2020-07-21 03:47:32', 0, NULL, NULL, NULL, 0, 0),
(484, 'CPSSFC010', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Smoky BBQ Potato 147 gm)', 'pringles-smoky-bbq-potato-147-gm-cpssfc010', '1593540917xdxIkfR5.png', '1593540917jcA5Th7e.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:15:17', '2020-07-21 03:52:09', 0, NULL, NULL, NULL, 0, 0),
(485, 'CPSSFC011', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Sour Cream & Onion (40 gm)', 'pringles-sour-cream-onion-40-gm-cpssfc011', '1593540955WLIpVai8.png', '1593540955avk0NIl3.jpg', NULL, NULL, NULL, NULL, NULL, 109, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:15:55', '2020-07-21 02:06:02', 0, NULL, NULL, NULL, 0, 0),
(486, 'CPSSFC012', 'normal', NULL, 0, 42, 80, 92, NULL, 'Pringles Original Potato Crisps 137 gm)', 'pringles-original-potato-crisps-137-gm-cpssfc012', '15935409882I9WF66v.png', '1593540989yRUROxhF.jpg', NULL, NULL, NULL, NULL, NULL, 109, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:16:28', '2020-07-21 03:49:51', 0, NULL, NULL, NULL, 0, 0),
(487, 'CPSSFC013', 'normal', NULL, 0, 42, 80, 92, NULL, 'Alooz Tomato Flavor (22 gm)', 'alooz-tomato-flavor-22-gm-cpssfc013', '1593541076AwvHND62.png', '1593541076ZSrVic3Z.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:17:56', '2020-07-21 03:20:19', 0, NULL, NULL, NULL, 0, 0),
(488, 'CPSSFC014', 'normal', NULL, 0, 42, 80, 92, NULL, 'Alooz Magic Masala (22 gm)', 'alooz-magic-masala-22-gm-cpssfc014', '1593541136DMoMV41o.png', '15935411369kmtOH44.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:18:56', '2020-07-21 01:51:21', 0, NULL, NULL, NULL, 0, 0),
(489, 'CPSSFC015', 'normal', NULL, 0, 42, 80, 92, NULL, 'Alooz B-B-Q Potato Chips (22 gm)', 'alooz-b-b-q-potato-chips-22-gm-cpssfc015', '1593541184OXZNVvH2.png', '1593541190SF0tdit3.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:19:44', '2020-07-21 03:18:13', 0, NULL, NULL, NULL, 0, 0),
(490, 'CPSSFC016', 'normal', NULL, 0, 42, 80, 92, NULL, 'Bombay Sweets Ring Chips (22 gm)', 'bombay-sweets-ring-chips-22-gm-cpssfc016', '1593541230EMdZWjzd.png', '1593541230aNwSCmbZ.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:20:30', '2020-07-21 03:26:45', 0, NULL, NULL, NULL, 0, 0),
(491, 'CPSSFC017', 'normal', NULL, 0, 42, 80, 92, NULL, 'Bombay Sweets Potato Crackers (22 gm)', 'bombay-sweets-potato-crackers-22-gm-cpssfc017', '1593541274ArHmZ6UU.png', '1593541274uETTa7GZ.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:21:14', '2020-07-21 03:24:31', 0, NULL, NULL, NULL, 0, 0),
(492, 'CPSSFC018', 'normal', NULL, 0, 42, 80, 92, NULL, 'Bombay Sweets Mr. Twist (22 gm)', 'bombay-sweets-mr-twist-22-gm-cpssfc018', '1593541399IIZazz21.png', '1593541399UlBgmW9u.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:23:19', '2020-07-21 03:22:22', 0, NULL, NULL, NULL, 0, 0),
(493, 'CPSSFC019', 'normal', NULL, 0, 42, 80, 92, NULL, 'Kurkure Tomato Tango Chips (45 gm)', 'kurkure-tomato-tango-chips-45-gm-cpssfc019', '1593541440U11JCUzU.png', '1593541440jLti8opL.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:24:00', '2020-07-21 03:33:51', 0, NULL, NULL, NULL, 0, 0),
(494, 'BCSSFC001', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Dry Cake Biscuit (350 gm)', 'olympic-dry-cake-biscuit-350-gm-bcssfc001', '1593541962aCoBds6P.png', '1593541962qLmKUu4J.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:32:42', '2020-07-21 14:32:42', 0, NULL, NULL, NULL, 0, 0),
(495, 'BCSSFC002', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Energy Plus Biscuit (80 gm)', 'olympic-energy-plus-biscuit-80-gm-bcssfc002', '1593542903f4Nfh9Sj.png', '1593542903yDE53DBt.jpg', NULL, NULL, NULL, NULL, NULL, 13, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:48:23', '2020-07-21 15:09:05', 0, NULL, NULL, NULL, 0, 0),
(496, 'BCSSFC003', 'normal', NULL, 0, 42, 80, 94, NULL, 'Cocola Champion Biscuits (75 gm)', 'cocola-champion-biscuits-75-gm-bcssfc003', '1593543028jCVbNtVR.png', '1593543028Yb3VOplf.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:50:28', '2020-07-21 14:52:13', 0, NULL, NULL, NULL, 0, 0),
(497, 'BCSSFC004', 'normal', NULL, 0, 42, 80, 94, NULL, 'Haque Mr. Cookie Biscuit (55 gm)', 'haque-mr-cookie-biscuit-55-gm-bcssfc004', '1593543343Fkqy503c.png', '1593543343XZizpmtt.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:55:43', '2020-07-21 15:03:46', 0, NULL, NULL, NULL, 0, 0),
(498, 'BCSSFC005', 'normal', NULL, 0, 42, 80, 94, NULL, 'PRAN Special Toast (350 gm)', 'pran-special-toast-350-gm-bcssfc005', '1593543407ULHy3J4w.png', '1593543408FFPNenu0.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:56:47', '2020-07-21 15:16:29', 0, NULL, NULL, NULL, 0, 0),
(499, 'BCSSFC006', 'normal', NULL, 0, 42, 80, 94, NULL, 'Bangas Grand Choice Biscuit (100 gm)', 'bangas-grand-choice-biscuit-100-gm-bcssfc006', '1593543542Nj6fNa8F.png', '1593543542zMuGRMQa.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 12:59:02', '2020-07-21 14:49:53', 0, NULL, NULL, NULL, 0, 0),
(500, 'BCSSFC007', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Digestive Biscuits (125 gm)', 'olympic-digestive-biscuits-125-gm-bcssfc007', '159354394038G7cENS.png', '1593543940JY9hpkJh.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:05:40', '2020-07-21 15:06:23', 0, NULL, NULL, NULL, 0, 0),
(501, 'BCSSFC008', 'normal', NULL, 0, 42, 80, 94, NULL, 'First Choice Salted Biscuits (100 gm)', 'first-choice-salted-biscuits-100-gm-bcssfc008', '1593545336jgEkTDpq.png', '15935453369X5sIE05.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:28:56', '2020-07-21 14:59:06', 0, NULL, NULL, NULL, 0, 0),
(502, 'BCSSFC009', 'normal', NULL, 0, 42, 80, 94, NULL, 'Fit Crakers Masala Biscuits (60 gm)', 'fit-crakers-masala-biscuits-60-gm-bcssfc009', '1593545431ZoqvFBGy.png', '1593545431sp5A5qzU.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:30:31', '2020-07-21 15:01:26', 0, NULL, NULL, NULL, 0, 0),
(503, 'BCSSFC010', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Peanut Biscuits (80 gm)', 'olympic-peanut-biscuits-80-gm-bcssfc010', '1593545496qaQSmPTd.png', '1593545496fumFs5ou.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:31:36', '2020-07-21 15:14:04', 0, NULL, NULL, NULL, 0, 0),
(504, 'BCSSFC011', 'normal', NULL, 0, 42, 80, 94, NULL, 'Danish Dry Cake Biscuit, (350 gm)', 'danish-dry-cake-biscuit-350-gm-bcssfc011', '1593545552PLVjGzv7.png', '1593545552LTPIyDiQ.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:32:32', '2020-07-21 14:54:30', 0, NULL, NULL, NULL, 0, 0),
(505, 'BCSSFC012', 'normal', NULL, 0, 42, 80, 94, NULL, 'Danish Dry Cake Biscuit, (350 gm)', 'danish-dry-cake-biscuit-350-gm-bcssfc012', '1593545618yULW80n8.png', '1593545619o0YGOAZF.jpg', NULL, NULL, NULL, NULL, NULL, 38, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:33:38', '2020-07-21 14:56:48', 0, NULL, NULL, NULL, 0, 0),
(506, 'BCSSFC013', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Peanut Biscuits 250 gm', 'olympic-peanut-biscuits-250-gm-bcssfc013', '1593545678wFzMHiWg.png', '1593545678IFbIzKCm.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:34:38', '2020-07-21 15:11:36', 0, NULL, NULL, NULL, 0, 0),
(507, 'BCSSFC014', 'normal', NULL, 0, 42, 80, 94, NULL, 'Fit Crackers Milk Flavour (60 gm)', 'fit-crackers-milk-flavour-60-gm-bcssfc014', '1593545729BN5jg4GU.png', '1593545729yBrCiZfj.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:35:29', '2020-07-21 04:13:18', 0, NULL, NULL, NULL, 0, 0),
(508, 'BCSSFC015', 'normal', NULL, 0, 42, 80, 94, NULL, 'Danish Florida Orange Biscuit (210 gm)', 'danish-florida-orange-biscuit-210-gm-bcssfc015', '1593545903SiVdRvzU.png', '1593545903BOF1tfdr.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:38:23', '2020-07-22 10:43:35', 0, NULL, NULL, NULL, 0, 0),
(509, 'BCSSFC016', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Tip Biscuits (70 gm)', 'olympic-tip-biscuits-70-gm-bcssfc016', '1593546186m26iKCnz.png', '15935461862Obb9rKL.jpg', NULL, NULL, NULL, NULL, NULL, 15, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:43:06', '2020-07-22 14:55:02', 0, NULL, NULL, NULL, 0, 0),
(510, 'BCSSFC017', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic First Choice Biscuits (240 gm)', 'olympic-first-choice-biscuits-240-gm-bcssfc017', '1593546283cox77Mjb.png', '1593546283F1gYEJqR.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:44:43', '2020-07-22 13:27:25', 0, NULL, NULL, NULL, 0, 0),
(511, 'BCSSFC018', 'normal', NULL, 0, 42, 80, 94, NULL, 'Romania Lexus Biscuit (240 gm)', 'romania-lexus-biscuit-240-gm-bcssfc018', '1593546384ORAKudSa.png', '1593546384bxeM9ONl.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:46:24', '2020-07-22 18:39:01', 0, NULL, NULL, NULL, 0, 0),
(512, 'BCSSFC019', 'normal', NULL, 0, 42, 80, 94, NULL, 'Ifad Kaju Delight Biscuit (250 gm)', 'ifad-kaju-delight-biscuit-250-gm-bcssfc019', '1593546421jPPiqDUn.png', '15935464219gDLAia4.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:47:01', '2020-07-22 12:10:28', 0, NULL, NULL, NULL, 0, 0),
(513, 'BCSSFC020', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Tip Biscuits (255 gm)', 'olympic-tip-biscuits-255-gm-bcssfc020', '1593546490T7R7Z7Rd.png', '15935464912qA5ZtXb.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:48:10', '2020-07-26 12:08:32', 0, NULL, NULL, NULL, 0, 0),
(514, 'BCSSFC021', 'normal', NULL, 0, 42, 80, 94, NULL, 'Bombay Sweets Chanachur (600 gm)', 'bombay-sweets-chanachur-600-gm-bcssfc021', '1593546607njNF6F6d.png', '1593546607tfQ17YJG.jpg', NULL, NULL, NULL, NULL, NULL, 100, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:50:07', '2020-07-26 11:59:46', 0, NULL, NULL, NULL, 0, 0),
(515, 'BCSSFC022', 'normal', NULL, 0, 42, 80, 94, NULL, 'Bombay Sweets Chanachur 150 gm', 'bombay-sweets-chanachur-150-gm-bcssfc022', '1593546830jz6V96U4.png', '1593546830nCYKmNZa.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:53:50', '2020-07-26 11:54:01', 0, NULL, NULL, NULL, 0, 0),
(516, 'BCSSFC023', 'normal', NULL, 0, 42, 80, 94, NULL, 'Bombay Sweets Chanachur (300 gm)', 'bombay-sweets-chanachur-300-gm-bcssfc023', '1593546908uvoZcd4T.png', '1593546908V1UkBy7D.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:55:08', '2020-07-26 11:56:52', 0, NULL, NULL, NULL, 0, 0),
(517, 'BCSSFC024', 'normal', NULL, 0, 42, 80, 94, NULL, 'PRAN Jhal Muri (35 gm) 4 pcs', 'pran-jhal-muri-35-gm-4-pcs-bcssfc024', '1593546977a5RFo5xy.png', '1593546977l3mH8429.jpg', NULL, NULL, NULL, NULL, NULL, 32, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:56:17', '2020-07-26 12:14:25', 0, NULL, NULL, NULL, 0, 0),
(518, 'BCSSFC025', 'normal', NULL, 0, 42, 80, 94, NULL, 'Bombay Sweets Dalmoth (150 gm)', 'bombay-sweets-dalmoth-150-gm-bcssfc025', '1593547020yZKpUUZT.png', '1593547020w3sebAiQ.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 13:57:00', '2020-07-26 12:02:44', 0, NULL, NULL, NULL, 0, 0),
(519, 'LSSSFC001', 'normal', NULL, 0, 42, 80, 96, NULL, 'PRAN Puffed Rice (Muri) (500 gm)', 'pran-puffed-rice-muri-500-gm-lsssfc001', '1593547344MnhcqWIJ.png', '1593547344xLHxAB6n.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:02:24', '2020-07-28 20:59:02', 0, NULL, NULL, NULL, 0, 0),
(520, 'LSSSFC002', 'normal', NULL, 0, 42, 80, 96, NULL, 'PRAN Puffed Rice (Muri) (250 gm)', 'pran-puffed-rice-muri-250-gm-lsssfc002', '1593547581khz4SizC.png', '1593547582VJM0xChk.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:06:21', '2020-07-26 12:20:09', 0, NULL, NULL, NULL, 0, 0),
(521, 'LSSSFC003', 'normal', NULL, 0, 42, 80, 96, NULL, 'Home Made Muri Moa (12 pcs)', 'home-made-muri-moa-12-pcs-lsssfc003', '1593547671Nz84WeH8.png', '15935476717y1luNzk.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:07:51', '2020-07-26 12:11:31', 0, NULL, NULL, NULL, 0, 0),
(522, 'LSSSFC004', 'normal', NULL, 0, 42, 80, 96, NULL, 'Ring Papor Chips Kacha (200 gm)', 'ring-papor-chips-kacha-200-gm-lsssfc004', '1593547766rKDQn858.png', '1593547767sy1BuefW.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:09:26', '2020-07-26 12:26:00', 0, NULL, NULL, NULL, 0, 0),
(523, 'LSSSFC005', 'normal', NULL, 0, 42, 80, 96, NULL, 'Home Made Dabli Vaza (200 gm)', 'home-made-dabli-vaza-200-gm-lsssfc005', '15935478384Jk1xBMV.png', '1593547839ugVGhMz2.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:10:38', '2020-07-29 17:50:29', 0, NULL, NULL, NULL, 0, 0),
(524, 'LSSSFC006', 'normal', NULL, 0, 42, 80, 96, NULL, 'Home Made Sugar Free Murali (200 gm)', 'home-made-sugar-free-murali-200-gm-lsssfc006', '1593547887usYXsXI4.png', '1593547887vlirukWu.jpg', NULL, NULL, NULL, NULL, NULL, 45, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:11:27', '2020-07-26 12:17:15', 0, NULL, NULL, NULL, 0, 0),
(525, 'EGCSGC003', 'normal', NULL, 0, 41, 36, 40, NULL, 'Quail Eggs (20 PCS)', 'quail-eggs-20-pcs-egcsgc003', '15935481632fFCRIB3.png', '1593548164YtsqZwha.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:16:04', '2020-07-26 09:14:20', 0, NULL, NULL, NULL, 0, 0),
(526, 'EGCSGC004', 'normal', NULL, 0, 41, 36, 40, NULL, 'Duck Eggs (Deshi) (12Pcs)', 'duck-eggs-deshi-12pcs-egcsgc004', '1593548207cciHwRuG.png', '1593548208fglZ7oUH.jpg', NULL, NULL, NULL, NULL, NULL, 149, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:16:48', '2020-07-26 09:13:52', 0, NULL, NULL, NULL, 0, 0),
(527, 'CBDYDFP001', 'normal', NULL, 0, 39, 22, 6, NULL, 'Farm Fresh Butter (50 gm*4)- 200 gm', 'farm-fresh-butter-50-gm4-200-gm-cbdydfp001', '1593548620uNAbgDwv.png', '1593548620UHefFOss.jpg', NULL, NULL, NULL, NULL, NULL, 184, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:23:40', '2020-07-28 09:45:01', 0, NULL, NULL, NULL, 0, 0),
(528, 'CBDYDFP002', 'normal', NULL, 0, 39, 22, 6, NULL, 'PRAN Butter (Fresco Container)- 200 gm', 'pran-butter-fresco-container-200-gm-cbdydfp002', '1593548668CcFDcUsK.png', '1593548668NfD1GRpI.jpg', NULL, NULL, NULL, NULL, NULL, 195, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:24:28', '2020-07-26 05:37:09', 0, NULL, NULL, NULL, 0, 0),
(529, 'CBDYDFP003', 'normal', NULL, 0, 39, 22, 6, NULL, 'Nawar Sunflower Margarine (250 gm)', 'nawar-sunflower-margarine-250-gm-cbdydfp003', '1593548711sCqGGnlg.png', '1593548712GIE6sSsB.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:25:12', '2020-07-28 16:39:39', 0, NULL, NULL, NULL, 0, 0),
(530, 'CBDYDFP004', 'normal', NULL, 0, 39, 22, 6, NULL, 'Lurpak Butter Unsalted (200 gm)', 'lurpak-butter-unsalted-200-gm-cbdydfp004', '1593548788a09GDHuL.png', '1593548789zc7p7cXk.jpg', NULL, NULL, NULL, NULL, NULL, 375, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:26:28', '2020-07-26 05:30:34', 0, NULL, NULL, NULL, 0, 0),
(531, 'CBDYDFP005', 'normal', NULL, 0, 39, 22, 6, NULL, 'Lurpak Butter Salted (200 gm)', 'lurpak-butter-salted-200-gm-cbdydfp005', '1593548851IEEvz0DK.png', '1593548851m0QaeRsr.jpg', NULL, NULL, NULL, NULL, NULL, 375, 0, '<br>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 14:27:31', '2020-07-26 05:27:29', 0, NULL, NULL, NULL, 0, 0),
(532, 'CBDYDFP006', 'normal', NULL, 0, 39, 22, 6, NULL, 'Quality Mozzarella Cheese (250 gm)', 'quality-mozzarella-cheese-250-gm-cbdydfp006', '1593554499lUKoOv0K.png', '1593554500ceGFa9hW.jpg', NULL, NULL, NULL, NULL, NULL, 225, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 16:01:39', '2020-07-26 05:40:16', 0, NULL, NULL, NULL, 0, 0),
(533, 'TPOCLPH001', 'normal', NULL, 0, 44, 46, 99, NULL, 'Pepsodent Germicheck Toothpaste 100 gm', 'pepsodent-germicheck-toothpaste-100-gm-tpoclph001', '1593559622DP8mf1rG.png', '1593559622Xo7jZSvj.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:27:02', '2020-07-26 13:12:55', 0, NULL, NULL, NULL, 0, 0),
(534, 'TPOCLPH002', 'normal', NULL, 0, 44, 46, 99, NULL, 'Closeup Toothpaste  160 gm', 'closeup-toothpaste-160-gm-tpoclph002', '1593559710I6YwrMRK.png', '1593559710k2JoVpGs.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:28:30', '2020-07-26 12:34:11', 0, NULL, NULL, NULL, 0, 0),
(535, 'TPOCLPH003', 'normal', NULL, 0, 44, 46, 99, NULL, 'Closeup Toothpaste Red Hot (145 gm)', 'closeup-toothpaste-red-hot-145-gm-tpoclph003', '1593559746FCXdTaI0.png', '1593559746EJwKwHwV.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:29:06', '2020-07-26 12:45:18', 0, NULL, NULL, NULL, 0, 0),
(536, 'TPOCLPH004', 'normal', NULL, 0, 44, 46, 99, NULL, 'Pepsodent Toothpaste Charcoal White (90 gm)', 'pepsodent-toothpaste-charcoal-white-90-gm-tpoclph004', '1593559790epjAjfY3.png', '1593559790B0VIv3Tm.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:29:50', '2020-07-26 13:20:52', 0, NULL, NULL, NULL, 0, 0),
(537, 'TPOCLPH005', 'normal', NULL, 0, 44, 46, 99, NULL, 'Pepsodent Germicheck Toothpaste (100 gm)', 'pepsodent-germicheck-toothpaste-100-gm-tpoclph005', '1593559828eNRAwEcz.png', '1593559828cBGl38yZ.jpg', NULL, NULL, NULL, NULL, NULL, 75, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:30:28', '2020-07-26 13:18:14', 0, NULL, NULL, NULL, 0, 0),
(538, 'TPOCLPH006', 'normal', NULL, 0, 44, 46, 99, NULL, 'Mediplus DS Toothpaste (140 gm)', 'mediplus-ds-toothpaste-140-gm-tpoclph006', '1593559903foNOgiZ3.png', '1593559903OF3vgjwH.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:31:43', '2020-07-26 13:07:31', 0, NULL, NULL, NULL, 0, 0),
(539, 'TPOCLPH007', 'normal', NULL, 0, 44, 46, 99, NULL, 'Colgate Max Fresh Toothpaste (150 gm)', 'colgate-max-fresh-toothpaste-150-gm-tpoclph007', '1593559975mnXlB6BG.png', '1593559975yPH3EylE.jpg', NULL, NULL, NULL, NULL, NULL, 140, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:32:55', '2020-07-26 12:50:49', 0, NULL, NULL, NULL, 0, 0),
(540, 'TPOCLPH008', 'normal', NULL, 0, 44, 46, 99, NULL, 'Closeup Toothpaste Menthol Fresh (100 gm)', 'closeup-toothpaste-menthol-fresh-100-gm-tpoclph008', '1593560012ncXM87sd.png', '1593560012TjqM0oyf.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:33:32', '2020-07-26 12:39:39', 0, NULL, NULL, NULL, 0, 0),
(541, 'TPOCLPH009', 'normal', NULL, 0, 44, 46, 99, NULL, 'Dabur Red Toothpaste (200 gm)', 'dabur-red-toothpaste-200-gm-tpoclph009', '1593560040mophszTC.png', '1593560040Eqnh1Jcy.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:34:00', '2020-07-26 13:01:55', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(542, 'TPOCLPH010', 'normal', NULL, 0, 44, 46, 99, NULL, 'Dabur Meswak Toothpaste (200 gm)', 'dabur-meswak-toothpaste-200-gm-tpoclph010', '1593560073osoB0OqK.png', '1593560073RGNZOtHn.jpg', NULL, NULL, NULL, NULL, NULL, 110, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-06-30 17:34:33', '2020-07-26 12:56:21', 0, NULL, NULL, NULL, 0, 0),
(543, 'PPE00007', 'normal', NULL, 0, 38, NULL, NULL, NULL, 'KN-95 Disposable 5 layer mask (3Pcs)', 'kn-95-disposable-5-layer-mask-3pcs-ppe00007', '15937206084nIQTXzn.png', '1593720609WUCLniOG.jpg', NULL, '3 Pcs,20 Pcs / 1 Box,40 Pcs / 2 Box', '1,1,1', '0,1610,3410', NULL, 390, 420, '<br>', NULL, '<br>', 1, 68, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-02 14:10:08', '2020-08-02 08:22:05', 1, '08/10/2020', NULL, NULL, 0, 0),
(544, 'LFFSDFP009', 'normal', NULL, 0, 39, 26, 11, NULL, 'Mango - harivanga / 5kg', 'mango-harivanga-5kg-lffsdfp009', '1595240280q7hOy3mA.png', '15952402832yGP57Ku.jpg', NULL, NULL, NULL, NULL, NULL, 625, 700, '<br>', 11, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 04:18:00', '2020-07-20 19:25:22', 0, NULL, NULL, NULL, 0, 0),
(545, 'BDBEBAO002', 'normal', NULL, 0, 37, 21, 69, NULL, 'Molfix Diapper 11-18kg-35pcs', 'molfix-diapper-11-18kg-35pcs-bdbebao002', '1595240535zo1I7IGP.png', '1595240535rz6jNTOk.jpg', NULL, NULL, NULL, NULL, NULL, 750, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 04:22:15', '2020-07-20 19:27:00', 0, NULL, NULL, NULL, 0, 0),
(546, 'IFBDBAO002', 'normal', NULL, 0, 37, 19, 70, NULL, 'Biomil-3 400gm pkt', 'biomil-3-400gm-pkt-ifbdbao002', '1595241332cxd3Jv7H.png', '15952413333usuy0HI.jpg', NULL, NULL, NULL, NULL, NULL, 470, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 04:35:32', '2020-07-20 18:25:09', 0, NULL, NULL, NULL, 0, 0),
(547, 'PYMTMF003', 'normal', NULL, 0, 40, 53, 1, NULL, 'Cock Chicken 400+gm', 'cock-chicken-400gm-pymtmf003', '1595268517TvqJK6Fm.png', '1595268517mtFDQL6d.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-07-20 12:08:37', '2020-08-02 14:57:37', 0, NULL, NULL, NULL, 0, 0),
(548, 'MNMTMF001', 'normal', NULL, 0, 40, 53, 67, NULL, 'Mutton Bone In', 'mutton-bone-in-mnmtmf001', '15952688285rXZ2TKH.png', '1595268828ZUzyuIW5.jpg', NULL, NULL, NULL, NULL, NULL, 899, 930, '<br>', NULL, '<br>', 1, 2, NULL, 'Eid ul Azha,Tk.30 off', '#3b26bd,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2020-07-20 12:09:17', '2020-08-02 14:18:07', 0, NULL, NULL, NULL, 0, 0),
(549, 'LVVEGDF015', 'normal', NULL, 0, 39, 25, 2, NULL, 'Potato Regular / 3kg', 'potato-regular-3kg-lvvegdf015', '1595269230CgxGSjTA.png', '1595269230jdBZ3BOW.jpg', NULL, NULL, NULL, NULL, NULL, 87, 105, '<br>', NULL, '<br>', 1, 0, NULL, 'Eid ul Azha,Save.18tk/3kg', '#3c38a9,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2020-07-20 12:20:30', '2020-07-23 03:28:11', 0, NULL, NULL, NULL, 0, 0),
(550, 'LVVEGDF016', 'normal', NULL, 0, 39, 25, 2, NULL, 'Onion Deshi / kg', 'onion-deshi-kg-lvvegdf016', '1595269635oOe3tCXV.png', '1595269635glqSvvPc.jpg', NULL, NULL, NULL, NULL, NULL, 42, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 12:27:15', '2020-07-20 12:27:38', 0, NULL, NULL, NULL, 0, 0),
(551, 'IVVEDFP001', 'normal', NULL, 0, 39, 25, 4, NULL, 'Onion India / 2kg', 'onion-india-2kg-ivvedfp001', '1595269820V3sndM2G.png', '1595269820PdQUsUEs.jpg', NULL, NULL, NULL, NULL, NULL, 56, 64, '<br>', NULL, '<br>', 1, 1, NULL, 'Eid ul Azha,save 8tk./2kg', '#201bb3,#0eab20', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2020-07-20 12:30:20', '2020-07-23 13:10:51', 0, NULL, NULL, NULL, 0, 0),
(552, 'LVVEGDF017', 'normal', NULL, 0, 39, 25, 2, NULL, 'Bombay Morich /5pcs', 'bombay-morich-5pcs-lvvegdf017', '1595270044BNLB6MSa.png', '1595270045lGzx2T1j.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 12:34:04', '2020-07-20 12:34:05', 0, NULL, NULL, NULL, 0, 0),
(553, 'IVVEDFP002', 'normal', NULL, 0, 39, 25, 4, NULL, 'Garlic Ind /250gm', 'garlic-ind-250gm-ivvedfp002', '15952742391Li50yHp.png', '1595274239oVYZTvmW.jpg', NULL, NULL, NULL, NULL, NULL, 30, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 12:35:03', '2020-07-20 13:45:37', 0, NULL, NULL, NULL, 0, 0),
(554, 'LGVEGDF003', 'normal', NULL, 0, 39, 25, 3, NULL, 'Palong Shak', 'palong-shak-lgvegdf003', '1595272729K2DrereY.png', '15952727290j7O8UMA.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:18:49', '2020-07-20 13:18:49', 0, NULL, NULL, NULL, 0, 0),
(555, 'LGVEGDF004', 'normal', NULL, 0, 39, 25, 3, NULL, 'Pui Shak', 'pui-shak-lgvegdf004', '15952727639pXV4qlH.png', '1595272763ovv6yHj5.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:19:23', '2020-07-20 13:19:23', 0, NULL, NULL, NULL, 0, 0),
(556, 'LGVEGDF005', 'normal', NULL, 0, 39, 25, 3, NULL, 'Kolmi Shak/ ati', 'kolmi-shak-ati-lgvegdf005', '1595272833KudD64DQ.png', '1595272833404bmaWa.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:20:33', '2020-07-20 13:20:33', 0, NULL, NULL, NULL, 0, 0),
(557, 'LGVEGDF006', 'normal', NULL, 0, 39, 25, 3, NULL, 'Lau Shak/ ati', 'lau-shak-ati-lgvegdf006', '1595272963RbQLnrBj.png', '15952729635xa9ud1x.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:22:43', '2020-07-20 13:22:43', 0, NULL, NULL, NULL, 0, 0),
(558, 'LGVEGDF007', 'normal', NULL, 0, 39, 25, 3, NULL, 'pat Shak/ ati', 'pat-shak-ati-lgvegdf007', '1595272993T9cRWQQB.png', '15952729930EI3lrl2.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:23:13', '2020-07-20 13:23:13', 0, NULL, NULL, NULL, 0, 0),
(559, 'LVVEGDF022', 'normal', NULL, 0, 39, 25, 2, NULL, 'Aelovera / pc', 'aelovera-pc-lvvegdf022', '1595273083W6lD2eON.png', '1595273083K0EQh1jR.jpg', NULL, NULL, NULL, NULL, NULL, 25, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:24:43', '2020-07-20 13:24:43', 0, NULL, NULL, NULL, 0, 0),
(560, 'LVVEGDF023', 'normal', NULL, 0, 39, 25, 2, NULL, 'Kacha kola/4pcs', 'kacha-kola4pcs-lvvegdf023', '1595273135Yp6FjmzO.png', '1595273135W2tD4h1m.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:25:35', '2020-07-20 13:25:35', 0, NULL, NULL, NULL, 0, 0),
(561, 'LVVEGDF024', 'normal', NULL, 0, 39, 25, 2, NULL, 'beet root / kg', 'beet-root-kg-lvvegdf024', '1595273187vLmjf9wv.png', '15952731876EfyCouB.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:26:27', '2020-07-20 13:26:27', 0, NULL, NULL, NULL, 0, 0),
(562, 'LVVEGDF025', 'normal', NULL, 0, 39, 25, 2, NULL, 'Korolla Deshi / kg', 'korolla-deshi-kg-lvvegdf025', '1595273279znq510Jq.png', '1595273279QTiWNKSI.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:27:59', '2020-07-23 11:40:50', 0, NULL, NULL, NULL, 0, 0),
(563, 'LVVEGDF026', 'normal', NULL, 0, 39, 25, 2, NULL, 'Lau / pc', 'lau-pc-lvvegdf026', '1595273332j4JvZUKz.png', '1595273333hSTfvHAc.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:28:52', '2020-08-01 05:34:39', 0, NULL, NULL, NULL, 0, 0),
(564, 'LVVEGDF027', 'normal', NULL, 0, 39, 25, 2, NULL, 'Chichinga /kg', 'chichinga-kg-lvvegdf027', '1595273461vr83bDGA.png', '1595273461v6kQi73J.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:31:01', '2020-08-01 05:31:10', 0, NULL, NULL, NULL, 0, 0),
(565, 'LVVEGDF028', 'normal', NULL, 0, 39, 25, 2, NULL, 'Borboti /kg', 'borboti-kg-lvvegdf028', '1595273495jGdmSOmf.png', '1595273495EmhHizSG.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:31:35', '2020-08-01 05:29:25', 0, NULL, NULL, NULL, 0, 0),
(566, 'LVVEGDF029', 'normal', NULL, 0, 39, 25, 2, NULL, 'Dhundol /kg', 'dhundol-kg-lvvegdf029', '1595273562vJkwudXh.png', '1595273562KAgP846N.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:32:42', '2020-08-01 05:32:57', 0, NULL, NULL, NULL, 0, 0),
(567, 'LVVEGDF030', 'normal', NULL, 0, 39, 25, 2, NULL, 'Potato Sweet /kg', 'potato-sweet-kg-lvvegdf030', '1595273624BsFl2A7U.png', '1595273625GdrfNu5Q.jpg', NULL, NULL, NULL, NULL, NULL, 90, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:33:44', '2020-08-01 05:38:02', 0, NULL, NULL, NULL, 0, 0),
(568, 'LVVEGDF031', 'normal', NULL, 0, 39, 25, 2, NULL, 'Potato red /kg', 'potato-red-kg-lvvegdf031', '1595273656NMocDDCZ.png', '1595273656zCRkfL0o.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:34:16', '2020-08-01 05:36:18', 0, NULL, NULL, NULL, 0, 0),
(569, 'LVVEGDF032', 'normal', NULL, 0, 39, 25, 2, NULL, 'Chal Kumra /pc', 'chal-kumra-pc-lvvegdf032', '15952737063r4kNmeQ.png', '1595273706DswZRORM.jpg', NULL, NULL, NULL, NULL, NULL, 35, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:35:06', '2020-08-01 05:19:00', 0, NULL, NULL, NULL, 0, 0),
(570, 'LVVEGDF033', 'normal', NULL, 0, 39, 25, 2, NULL, 'Begun White /kg', 'begun-white-kg-lvvegdf033', '1595273958Cf7Wv8JZ.png', '1595273958kO2teaT5.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:39:18', '2020-08-01 05:17:11', 0, NULL, NULL, NULL, 0, 0),
(571, 'LVVEGDF034', 'normal', NULL, 0, 39, 25, 2, NULL, 'Potol /kg', 'potol-kg-lvvegdf034', '1595274001dXGBu1N5.png', '1595274001NxPLvi2x.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:40:01', '2020-08-01 05:24:20', 0, NULL, NULL, NULL, 0, 0),
(572, 'LVVEGDF035', 'normal', NULL, 0, 39, 25, 2, NULL, 'Ginger deshi /250gm', 'ginger-deshi-250gm-lvvegdf035', '1595274538mjV9RSOS.png', '1595274539BkTclezJ.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:48:58', '2020-08-01 05:22:35', 0, NULL, NULL, NULL, 0, 0),
(573, 'IVVEDFP003', 'normal', NULL, 0, 39, 25, 4, NULL, 'Ginger Ind /250gm', 'ginger-ind-250gm-ivvedfp003', '1595274589oLOwugsX.png', '159527459043AHTElo.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:49:49', '2020-08-01 05:41:32', 0, NULL, NULL, NULL, 0, 0),
(574, 'LVVEGDF036', 'normal', NULL, 0, 39, 25, 2, NULL, 'Garlic Deshi / 0.250gm', 'garlic-deshi-0250gm-lvvegdf036', '1595274757HiAAWnQt.png', '1595274757gJ9HsPjI.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-20 13:52:37', '2020-08-01 05:20:49', 0, NULL, NULL, NULL, 0, 0),
(575, 'VLQDFC004', 'normal', NULL, 0, 42, 31, 91, NULL, 'Pran vermicelli 3Pcs Comb.', 'pran-vermicelli-3pcs-comb-vlqdfc004', '1595433294UrM3bmJu.png', '1595433295ygO61Vk0.jpg', NULL, NULL, NULL, NULL, NULL, 90, 105, '<br>', NULL, '<br>', 1, 6, NULL, 'Eid ul Azha,15tk Off', '#1834c9,#21cd40', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-07-22 09:54:54', '2020-07-31 14:22:31', 0, NULL, NULL, NULL, 0, 0),
(576, 'CAREGC006', 'normal', NULL, 0, 41, 38, 51, NULL, 'Chinigura Rice Loose / 3kg', 'chinigura-rice-loose-3kg-caregc006', '1595438410xyKbEdZ8.png', '1595438411SVMCIvZP.jpg', NULL, NULL, NULL, NULL, NULL, 285, 330, '<br>', NULL, '<br>', 1, 3, NULL, 'Eid ul Azha,45tk Save', '#1c1eb6,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2020-07-22 11:20:10', '2020-08-01 09:11:41', 0, NULL, NULL, NULL, 0, 0),
(577, 'SOCLGC016', 'normal', NULL, 0, 41, 37, 44, NULL, 'Sena Soyabean Oil 5Ltr', 'sena-soyabean-oil-5ltr-soclgc016', '1595440044PrGHF2a8.png', '1595440044D9eGT1oA.jpg', NULL, NULL, NULL, NULL, NULL, 485, 530, '<br>', NULL, '<br>', 1, 1, NULL, 'Eid ul Azha,45tk Save', '#2224c8,#1c953b', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2020-07-22 11:47:24', '2020-08-01 09:30:06', 0, NULL, NULL, NULL, 0, 0),
(578, 'SOCLGC017', 'normal', NULL, 0, 41, 37, 45, NULL, 'Merris Sunflower Oil 5Ltr', 'merris-sunflower-oil-5ltr-soclgc017', '1595440443xedJbXKR.png', '1595440443P9ZYeudh.jpg', NULL, NULL, NULL, NULL, NULL, 993, 1093, '<br>', NULL, '<br>', 1, 1, NULL, 'Eid ul Azha,100tk Off', '#0d23b1,#149d78', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2020-07-22 11:54:03', '2020-08-01 09:02:22', 0, NULL, NULL, NULL, 0, 0),
(579, 'FRCSGC008', 'normal', NULL, 0, 41, 36, 41, NULL, 'Bashundhara Atta 2kg', 'bashundhara-atta-2kg-frcsgc008', '1595440974cKjcn7EJ.png', '1595440975mgBiM0sA.jpg', NULL, NULL, NULL, NULL, NULL, 62, 70, '<br>', NULL, '<br>', 1, 3, NULL, 'Eid ul Azha,8Tk Off', '#4c1fb9,#812a70', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2020-07-22 12:02:54', '2020-08-01 09:20:46', 0, NULL, NULL, NULL, 0, 0),
(580, 'BSDELPH001', 'normal', NULL, 0, 44, 48, 80, NULL, 'Fogg body spray 120ml', 'fogg-body-spray-120ml-bsdelph001', '15954437892GJZmsu7.png', '15954437907ufdjsxF.jpg', NULL, NULL, NULL, NULL, NULL, 245, 275, '<br>', NULL, '<br>', 1, 4, NULL, 'Save 30tk', '#be3b17', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-22 12:49:49', '2020-08-01 12:13:00', 1, '08/10/2020', NULL, NULL, 0, 0),
(581, 'SFSELPH001', 'normal', NULL, 0, 44, 49, 102, NULL, 'Nevia Shaving Foam 375ml', 'nevia-shaving-foam-375ml-sfselph001', '1595444132enB2pl7q.png', '1595444132qsItNTkf.jpg', NULL, NULL, NULL, NULL, NULL, 345, 375, '<br>', NULL, '<br>', 1, 3, NULL, 'Tk.30 off', '#0d82bb', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-22 12:55:32', '2020-08-02 20:35:38', 1, '08/10/2020', NULL, NULL, 0, 0),
(582, 'NPQDFC007', 'normal', NULL, 0, 42, 31, 90, NULL, 'Mr.Noodles Buy2 Get1 248gm (4pcs)', 'mrnoodles-buy2-get1-248gm-4pcs-npqdfc007', '1595490067ZrGYsvi7.png', '1595490067VgH9JaFL.jpg', NULL, NULL, NULL, NULL, NULL, 140, 210, '<br>', NULL, '<br>', 1, 6, NULL, 'Eid ul Azha,Buy 2 Get 1', '#262788,#13ac30', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-07-23 01:41:07', '2020-07-31 13:45:13', 0, NULL, NULL, NULL, 0, 0),
(583, 'FFFDFC001', 'normal', NULL, 0, 42, 35, 33, NULL, 'Kazifarm Frozen Paratha 20pcs  Family', 'kazifarm-frozen-paratha-20pcs-family-fffdfc001', '1595490465ySNpB5JC.png', '15954904653ySyNIT3.jpg', NULL, NULL, NULL, NULL, NULL, 240, 265, '<br>', NULL, '<br>', 1, 24, NULL, 'Eid ul Azha,25 Tk Off', '#464293,#000000', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-07-23 01:47:45', '2020-08-05 05:39:52', 0, NULL, NULL, NULL, 0, 0),
(584, 'SWSSGC025', 'normal', NULL, 0, 41, 40, 54, NULL, 'All Whole Spices 15% Off', 'all-whole-spices-15-off-swssgc025', '1595491011kZGIj0GL.png', '1595491011fuAvvhcw.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, '<br>', NULL, '<br>', 1, 15, NULL, 'Eid ul Azha,Combo 15% Off', '#3b2895,#cc1212', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-07-23 01:56:51', '2020-07-31 12:32:10', 0, NULL, NULL, NULL, 0, 0),
(585, 'HGODP001', 'normal', NULL, 0, 20, 78, NULL, NULL, 'Pure Ghee 250ml', 'pure-ghee-250ml-hgodp001', '1595492906ORfnXziS.png', '1595492906NisMkvPf.jpg', NULL, NULL, NULL, NULL, NULL, 375, 400, '<br>', NULL, '<br>', 1, 2, NULL, 'Pure Gawa Ghee', '#d01a1a', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-07-23 02:28:26', '2020-07-27 03:27:32', 0, NULL, NULL, NULL, 0, 0),
(586, 'PYMTMF005', 'normal', NULL, 0, 40, 53, 1, NULL, 'Roast Chicken 280gm+', 'roast-chicken-280gm-pymtmf005', '1595505533xivt8Ipw.png', '1595505533hcDhtJJT.jpg', NULL, NULL, NULL, NULL, NULL, 140, 150, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2020-07-23 05:58:53', '2020-08-02 15:37:29', 0, NULL, NULL, NULL, 0, 0),
(587, 'BCSSFC026', 'normal', NULL, 0, 42, 80, 94, NULL, 'Olympic Butter bite Family Pack', 'olympic-butter-bite-family-pack-bcssfc026', '1595525454sSMcLnjM.png', '1595525454nrfVn7I5.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '<br>', NULL, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-23 11:30:54', '2020-08-01 13:20:57', 0, NULL, NULL, NULL, 0, 0),
(588, 'BGBSFC012', 'normal', NULL, 0, 42, 32, 17, NULL, 'Cashew Nuts (Kaju Badam) – (100 gm) PKT', 'cashew-nuts-kaju-badam-100-gm-pkt-bgbsfc012', '1595826918LfmO8psS.png', '1595826918s4UUtZrj.jpg', NULL, NULL, NULL, NULL, NULL, 136, 160, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-26 23:15:18', '2020-08-01 05:27:40', 0, NULL, NULL, NULL, 0, 0),
(589, 'PMDYDFP001', 'normal', NULL, 0, 39, 22, 8, NULL, 'Aarong Dairy Liquid Milk -1Ltr.', 'aarong-dairy-liquid-milk-1ltr-pmdydfp001', '1595936173SDGaFcEI.png', '1595936173LydtQaLN.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-28 05:36:13', '2020-08-01 05:08:40', 0, NULL, NULL, NULL, 0, 0),
(590, 'PMDYDFP002', 'normal', NULL, 0, 39, 22, 8, NULL, 'Aarong Dairy Liquid Milk -500ML.', 'aarong-dairy-liquid-milk-500ml-pmdydfp002', '1595936205qlzcOkwC.png', '1595936205E7jkduSY.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-28 05:36:45', '2020-08-01 05:10:24', 0, NULL, NULL, NULL, 0, 0),
(591, 'PMDYDFP003', 'normal', NULL, 0, 39, 22, 8, NULL, 'Milk Vita Liquid Milk -1ltr', 'milk-vita-liquid-milk-1ltr-pmdydfp003', '1595936316GVwOyaGz.png', '1595936316UtRvmPuM.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-28 05:38:36', '2020-08-01 05:12:08', 0, NULL, NULL, NULL, 0, 0),
(592, 'PMDYDFP004', 'normal', NULL, 0, 39, 22, 8, NULL, 'Milk Vita Liquid Milk -500 ML', 'milk-vita-liquid-milk-500-ml-pmdydfp004', '15959363395Gl3kjkK.png', '1595936339SXAeoSFi.jpg', NULL, NULL, NULL, NULL, NULL, 40, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-28 05:38:59', '2020-08-01 05:13:46', 0, NULL, NULL, NULL, 0, 0),
(593, 'YTDYDFP001', 'normal', NULL, 0, 39, 22, 9, NULL, 'Aarong Sour Yougurt -500 ML', 'aarong-sour-yougurt-500-ml-ytdydfp001', '1595936441UBm4AilS.png', '1595936441lzlJhItW.jpg', NULL, NULL, NULL, NULL, NULL, 80, 0, '<br>', NULL, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-28 05:40:41', '2020-08-01 05:06:57', 0, NULL, NULL, NULL, 0, 0),
(594, 'HWCSKHE001', 'normal', NULL, 0, 43, 41, 103, NULL, 'Savlon Handwash Refill (200 ml)', 'savlon-handwash-refill-200-ml-hwcskhe001', '1596181930gtMA9lo9.png', '1596181930uXks1SlP.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-31 01:52:10', '2020-08-01 14:13:18', 0, NULL, NULL, NULL, 0, 0),
(595, 'HWCSKHE002', 'normal', NULL, 0, 43, 41, 103, NULL, 'Sepnil Hand Sanitizer 100ml', 'sepnil-hand-sanitizer-100ml-hwcskhe002', '1596182132NAWIQrfD.png', '1596182132y4snKFSu.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-31 01:55:32', '2020-08-01 14:31:14', 0, NULL, NULL, NULL, 0, 0),
(596, 'CDCDFC001', 'normal', NULL, 0, 42, 82, 104, NULL, 'Garden Fresh Mashroom Can 100gm', 'garden-fresh-mashroom-can-100gm-cdcdfc001', '1596182316ZyisliXB.png', '1596182316LPHOnOE4.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-31 01:58:36', '2020-08-01 12:30:19', 0, NULL, NULL, NULL, 0, 0),
(597, 'NPQDFC020', 'normal', NULL, 0, 42, 31, 90, NULL, 'Pastazara Pasta 500gm', 'pastazara-pasta-500gm-npqdfc020', '1596182397h9yimHZp.png', '15961823972cXTP8D7.jpg', NULL, NULL, NULL, NULL, NULL, 200, 0, '<br>', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-31 01:59:57', '2020-08-01 09:39:11', 0, NULL, NULL, NULL, 0, 0),
(598, 'CBDYDFP015', 'normal', NULL, 0, 39, 22, 6, NULL, 'Aarong Cheese Crushed Pkt 200gm', 'aarong-cheese-crushed-pkt-200gm-cbdydfp015', '1596182560DSAi33GY.png', '1596182560ikPXKpac.jpg', NULL, NULL, NULL, NULL, NULL, 220, 0, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-07-31 02:02:40', '2020-08-01 05:15:27', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 1, '2020-06-15'),
(2, 1, '2020-06-15'),
(3, 1, '2020-06-15'),
(4, 2, '2020-06-16'),
(5, 2, '2020-06-16'),
(6, 2, '2020-06-16'),
(7, 2, '2020-06-16'),
(8, 2, '2020-06-16'),
(9, 2, '2020-06-16'),
(10, 2, '2020-06-16'),
(11, 2, '2020-06-16'),
(12, 2, '2020-06-16'),
(13, 2, '2020-06-16'),
(14, 2, '2020-06-16'),
(15, 2, '2020-06-16'),
(16, 2, '2020-06-16'),
(17, 2, '2020-06-16'),
(18, 2, '2020-06-16'),
(19, 2, '2020-06-16'),
(20, 2, '2020-06-16'),
(21, 2, '2020-06-16'),
(22, 2, '2020-06-16'),
(23, 2, '2020-06-16'),
(24, 2, '2020-06-16'),
(25, 2, '2020-06-16'),
(26, 2, '2020-06-16'),
(27, 2, '2020-06-16'),
(28, 2, '2020-06-16'),
(29, 2, '2020-06-16'),
(30, 2, '2020-06-16'),
(31, 2, '2020-06-16'),
(32, 2, '2020-06-16'),
(33, 2, '2020-06-16'),
(34, 2, '2020-06-16'),
(35, 2, '2020-06-16'),
(36, 2, '2020-06-16'),
(37, 2, '2020-06-16'),
(38, 2, '2020-06-16'),
(39, 2, '2020-06-16'),
(40, 2, '2020-06-16'),
(41, 2, '2020-06-16'),
(42, 6, '2020-06-16'),
(43, 18, '2020-06-16'),
(44, 18, '2020-06-16'),
(45, 13, '2020-06-16'),
(46, 8, '2020-06-16'),
(47, 22, '2020-06-16'),
(48, 14, '2020-06-16'),
(49, 15, '2020-06-16'),
(50, 12, '2020-06-16'),
(51, 22, '2020-06-16'),
(52, 16, '2020-06-16'),
(53, 14, '2020-06-16'),
(54, 5, '2020-06-17'),
(55, 5, '2020-06-17'),
(56, 5, '2020-06-17'),
(57, 5, '2020-06-17'),
(58, 5, '2020-06-17'),
(59, 5, '2020-06-17'),
(60, 14, '2020-06-17'),
(61, 5, '2020-06-17'),
(62, 5, '2020-06-17'),
(63, 14, '2020-06-17'),
(64, 12, '2020-06-17'),
(65, 5, '2020-06-17'),
(66, 22, '2020-06-17'),
(67, 16, '2020-06-17'),
(68, 8, '2020-06-17'),
(69, 16, '2020-06-17'),
(70, 16, '2020-06-17'),
(71, 16, '2020-06-17'),
(72, 16, '2020-06-17'),
(73, 12, '2020-06-17'),
(74, 17, '2020-06-17'),
(75, 16, '2020-06-17'),
(76, 15, '2020-06-17'),
(77, 16, '2020-06-17'),
(78, 16, '2020-06-17'),
(79, 16, '2020-06-17'),
(80, 16, '2020-06-17'),
(81, 13, '2020-06-17'),
(82, 14, '2020-06-17'),
(83, 5, '2020-06-17'),
(84, 5, '2020-06-17'),
(85, 27, '2020-06-17'),
(86, 32, '2020-06-17'),
(87, 13, '2020-06-17'),
(88, 33, '2020-06-17'),
(89, 33, '2020-06-17'),
(90, 16, '2020-06-17'),
(91, 16, '2020-06-17'),
(92, 16, '2020-06-17'),
(93, 16, '2020-06-17'),
(94, 14, '2020-06-17'),
(95, 35, '2020-06-17'),
(96, 35, '2020-06-17'),
(97, 35, '2020-06-17'),
(98, 1, '2020-06-17'),
(99, 4, '2020-06-17'),
(100, 5, '2020-06-17'),
(101, 6, '2020-06-17'),
(102, 7, '2020-06-17'),
(103, 2, '2020-06-17'),
(104, 3, '2020-06-17'),
(105, 9, '2020-06-17'),
(106, 22, '2020-06-17'),
(107, 21, '2020-06-17'),
(108, 34, '2020-06-17'),
(109, 24, '2020-06-17'),
(110, 23, '2020-06-17'),
(111, 25, '2020-06-17'),
(112, 10, '2020-06-17'),
(113, 29, '2020-06-17'),
(114, 26, '2020-06-17'),
(115, 30, '2020-06-17'),
(116, 31, '2020-06-17'),
(117, 28, '2020-06-17'),
(118, 24, '2020-06-17'),
(119, 32, '2020-06-17'),
(120, 27, '2020-06-17'),
(121, 19, '2020-06-17'),
(122, 20, '2020-06-17'),
(123, 11, '2020-06-17'),
(124, 18, '2020-06-17'),
(125, 35, '2020-06-17'),
(126, 16, '2020-06-17'),
(127, 13, '2020-06-17'),
(128, 16, '2020-06-17'),
(129, 36, '2020-06-18'),
(130, 37, '2020-06-18'),
(131, 38, '2020-06-18'),
(132, 39, '2020-06-18'),
(133, 40, '2020-06-18'),
(134, 1, '2020-06-18'),
(135, 34, '2020-06-18'),
(136, 33, '2020-06-18'),
(137, 45, '2020-06-18'),
(138, 35, '2020-06-18'),
(139, 35, '2020-06-18'),
(140, 39, '2020-06-18'),
(141, 38, '2020-06-18'),
(142, 45, '2020-06-18'),
(143, 36, '2020-06-18'),
(144, 33, '2020-06-18'),
(145, 16, '2020-06-18'),
(146, 17, '2020-06-18'),
(147, 34, '2020-06-18'),
(148, 39, '2020-06-18'),
(149, 6, '2020-06-18'),
(150, 10, '2020-06-18'),
(151, 15, '2020-06-18'),
(152, 44, '2020-06-18'),
(153, 37, '2020-06-18'),
(154, 14, '2020-06-18'),
(155, 12, '2020-06-19'),
(156, 17, '2020-06-19'),
(157, 6, '2020-06-19'),
(158, 10, '2020-06-19'),
(159, 7, '2020-06-19'),
(160, 15, '2020-06-19'),
(161, 16, '2020-06-19'),
(162, 13, '2020-06-19'),
(163, 14, '2020-06-19'),
(164, 8, '2020-06-19'),
(165, 9, '2020-06-19'),
(166, 4, '2020-06-19'),
(167, 1, '2020-06-19'),
(168, 5, '2020-06-19'),
(169, 2, '2020-06-19'),
(170, 3, '2020-06-19'),
(171, 11, '2020-06-19'),
(172, 37, '2020-06-19'),
(173, 38, '2020-06-19'),
(174, 39, '2020-06-19'),
(175, 40, '2020-06-19'),
(176, 42, '2020-06-19'),
(177, 43, '2020-06-19'),
(178, 41, '2020-06-19'),
(179, 21, '2020-06-19'),
(180, 34, '2020-06-19'),
(181, 33, '2020-06-19'),
(182, 24, '2020-06-19'),
(183, 22, '2020-06-19'),
(184, 23, '2020-06-19'),
(185, 44, '2020-06-19'),
(186, 45, '2020-06-19'),
(187, 35, '2020-06-19'),
(188, 25, '2020-06-19'),
(189, 29, '2020-06-19'),
(190, 26, '2020-06-19'),
(191, 30, '2020-06-19'),
(192, 31, '2020-06-19'),
(193, 36, '2020-06-19'),
(194, 28, '2020-06-19'),
(195, 32, '2020-06-19'),
(196, 27, '2020-06-19'),
(197, 19, '2020-06-19'),
(198, 20, '2020-06-19'),
(199, 18, '2020-06-19'),
(200, 45, '2020-06-19'),
(201, 37, '2020-06-19'),
(202, 35, '2020-06-19'),
(203, 35, '2020-06-19'),
(204, 35, '2020-06-19'),
(205, 37, '2020-06-19'),
(206, 14, '2020-06-19'),
(207, 32, '2020-06-19'),
(208, 7, '2020-06-19'),
(209, 7, '2020-06-19'),
(210, 7, '2020-06-19'),
(211, 8, '2020-06-19'),
(212, 3, '2020-06-19'),
(213, 7, '2020-06-19'),
(214, 1, '2020-06-19'),
(215, 18, '2020-06-19'),
(216, 46, '2020-06-19'),
(217, 46, '2020-06-19'),
(218, 46, '2020-06-19'),
(219, 46, '2020-06-19'),
(220, 25, '2020-06-19'),
(221, 46, '2020-06-19'),
(222, 46, '2020-06-19'),
(223, 15, '2020-06-20'),
(224, 46, '2020-06-21'),
(225, 33, '2020-06-21'),
(226, 33, '2020-06-22'),
(227, 46, '2020-06-22'),
(228, 45, '2020-06-22'),
(229, 35, '2020-06-22'),
(230, 14, '2020-06-23'),
(231, 33, '2020-06-24'),
(232, 46, '2020-06-24'),
(233, 45, '2020-06-24'),
(234, 33, '2020-06-24'),
(235, 35, '2020-06-24'),
(236, 37, '2020-06-24'),
(237, 46, '2020-06-24'),
(238, 38, '2020-06-24'),
(239, 46, '2020-06-24'),
(240, 38, '2020-06-24'),
(241, 50, '2020-06-26'),
(242, 50, '2020-06-26'),
(243, 49, '2020-06-26'),
(244, 51, '2020-06-26'),
(245, 54, '2020-06-26'),
(246, 53, '2020-06-26'),
(247, 63, '2020-06-26'),
(248, 54, '2020-06-26'),
(249, 25, '2020-06-27'),
(250, 34, '2020-06-27'),
(251, 6, '2020-06-27'),
(252, 53, '2020-06-27'),
(253, 3, '2020-06-27'),
(254, 47, '2020-06-27'),
(255, 57, '2020-06-27'),
(256, 3, '2020-06-27'),
(257, 56, '2020-06-27'),
(258, 56, '2020-06-27'),
(259, 46, '2020-06-28'),
(260, 33, '2020-06-28'),
(261, 53, '2020-06-28'),
(262, 119, '2020-06-28'),
(263, 119, '2020-06-28'),
(264, 119, '2020-06-28'),
(265, 42, '2020-06-28'),
(266, 42, '2020-06-28'),
(267, 41, '2020-06-28'),
(268, 41, '2020-06-28'),
(269, 64, '2020-06-28'),
(270, 64, '2020-06-28'),
(271, 102, '2020-06-28'),
(272, 46, '2020-06-28'),
(273, 51, '2020-06-30'),
(274, 48, '2020-06-30'),
(275, 4, '2020-06-30'),
(276, 377, '2020-06-30'),
(277, 22, '2020-06-30'),
(278, 112, '2020-06-30'),
(279, 37, '2020-06-30'),
(280, 384, '2020-06-30'),
(281, 385, '2020-06-30'),
(282, 386, '2020-06-30'),
(283, 387, '2020-06-30'),
(284, 64, '2020-06-30'),
(285, 62, '2020-06-30'),
(286, 61, '2020-06-30'),
(287, 57, '2020-06-30'),
(288, 63, '2020-06-30'),
(289, 58, '2020-06-30'),
(290, 59, '2020-06-30'),
(291, 60, '2020-06-30'),
(292, 51, '2020-06-30'),
(293, 52, '2020-06-30'),
(294, 212, '2020-06-30'),
(295, 213, '2020-06-30'),
(296, 100, '2020-06-30'),
(297, 285, '2020-06-30'),
(298, 283, '2020-06-30'),
(299, 281, '2020-06-30'),
(300, 282, '2020-06-30'),
(301, 288, '2020-06-30'),
(302, 290, '2020-06-30'),
(303, 286, '2020-06-30'),
(304, 289, '2020-06-30'),
(305, 287, '2020-06-30'),
(306, 351, '2020-06-30'),
(307, 284, '2020-06-30'),
(308, 103, '2020-06-30'),
(309, 111, '2020-06-30'),
(310, 110, '2020-06-30'),
(311, 109, '2020-06-30'),
(312, 101, '2020-06-30'),
(313, 102, '2020-06-30'),
(314, 55, '2020-06-30'),
(315, 62, '2020-06-30'),
(316, 6, '2020-06-30'),
(317, 2, '2020-06-30'),
(318, 3, '2020-06-30'),
(319, 225, '2020-07-01'),
(320, 226, '2020-07-01'),
(321, 222, '2020-07-01'),
(322, 224, '2020-07-01'),
(323, 223, '2020-07-01'),
(324, 219, '2020-07-01'),
(325, 220, '2020-07-01'),
(326, 221, '2020-07-01'),
(327, 53, '2020-07-01'),
(328, 49, '2020-07-01'),
(329, 50, '2020-07-01'),
(330, 47, '2020-07-01'),
(331, 48, '2020-07-01'),
(332, 54, '2020-07-01'),
(333, 105, '2020-07-01'),
(334, 108, '2020-07-01'),
(335, 107, '2020-07-01'),
(336, 104, '2020-07-01'),
(337, 70, '2020-07-01'),
(338, 66, '2020-07-01'),
(339, 71, '2020-07-01'),
(340, 69, '2020-07-01'),
(341, 65, '2020-07-01'),
(342, 68, '2020-07-01'),
(343, 67, '2020-07-01'),
(344, 55, '2020-07-01'),
(345, 56, '2020-07-01'),
(346, 112, '2020-07-01'),
(347, 43, '2020-07-01'),
(348, 42, '2020-07-01'),
(349, 113, '2020-07-01'),
(350, 114, '2020-07-01'),
(351, 41, '2020-07-01'),
(352, 227, '2020-07-01'),
(353, 72, '2020-07-01'),
(354, 115, '2020-07-01'),
(355, 515, '2020-07-01'),
(356, 516, '2020-07-01'),
(357, 514, '2020-07-01'),
(358, 518, '2020-07-01'),
(359, 508, '2020-07-01'),
(360, 512, '2020-07-01'),
(361, 510, '2020-07-01'),
(362, 513, '2020-07-01'),
(363, 509, '2020-07-01'),
(364, 517, '2020-07-01'),
(365, 511, '2020-07-01'),
(366, 45, '2020-07-01'),
(367, 293, '2020-07-01'),
(368, 294, '2020-07-01'),
(369, 44, '2020-07-01'),
(370, 35, '2020-07-01'),
(371, 295, '2020-07-01'),
(372, 296, '2020-07-01'),
(373, 297, '2020-07-01'),
(374, 64, '2020-07-01'),
(375, 298, '2020-07-01'),
(376, 5, '2020-07-01'),
(377, 543, '2020-07-02'),
(378, 543, '2020-07-02'),
(379, 543, '2020-07-02'),
(380, 543, '2020-07-02'),
(381, 543, '2020-07-02'),
(382, 543, '2020-07-02'),
(383, 543, '2020-07-02'),
(384, 543, '2020-07-02'),
(385, 543, '2020-07-02'),
(386, 543, '2020-07-02'),
(387, 543, '2020-07-02'),
(388, 543, '2020-07-02'),
(389, 543, '2020-07-02'),
(390, 543, '2020-07-02'),
(391, 543, '2020-07-02'),
(392, 543, '2020-07-03'),
(393, 543, '2020-07-03'),
(394, 543, '2020-07-03'),
(395, 85, '2020-07-03'),
(396, 84, '2020-07-03'),
(397, 81, '2020-07-03'),
(398, 82, '2020-07-03'),
(399, 80, '2020-07-03'),
(400, 75, '2020-07-03'),
(401, 79, '2020-07-03'),
(402, 76, '2020-07-03'),
(403, 74, '2020-07-03'),
(404, 77, '2020-07-03'),
(405, 78, '2020-07-03'),
(406, 291, '2020-07-03'),
(407, 292, '2020-07-03'),
(408, 203, '2020-07-03'),
(409, 204, '2020-07-03'),
(410, 202, '2020-07-03'),
(411, 412, '2020-07-03'),
(412, 209, '2020-07-03'),
(413, 207, '2020-07-03'),
(414, 208, '2020-07-03'),
(415, 210, '2020-07-03'),
(416, 211, '2020-07-03'),
(417, 205, '2020-07-03'),
(418, 206, '2020-07-03'),
(419, 422, '2020-07-03'),
(420, 416, '2020-07-03'),
(421, 413, '2020-07-03'),
(422, 419, '2020-07-03'),
(423, 418, '2020-07-03'),
(424, 415, '2020-07-03'),
(425, 420, '2020-07-03'),
(426, 423, '2020-07-03'),
(427, 421, '2020-07-03'),
(428, 414, '2020-07-03'),
(429, 417, '2020-07-03'),
(430, 543, '2020-07-03'),
(431, 96, '2020-07-03'),
(432, 97, '2020-07-03'),
(433, 95, '2020-07-03'),
(434, 99, '2020-07-03'),
(435, 98, '2020-07-03'),
(436, 94, '2020-07-03'),
(437, 89, '2020-07-03'),
(438, 90, '2020-07-03'),
(439, 93, '2020-07-03'),
(440, 92, '2020-07-03'),
(441, 91, '2020-07-03'),
(442, 543, '2020-07-03'),
(443, 543, '2020-07-03'),
(444, 534, '2020-07-03'),
(445, 540, '2020-07-03'),
(446, 535, '2020-07-03'),
(447, 539, '2020-07-03'),
(448, 542, '2020-07-03'),
(449, 541, '2020-07-03'),
(450, 538, '2020-07-03'),
(451, 533, '2020-07-03'),
(452, 537, '2020-07-03'),
(453, 536, '2020-07-04'),
(454, 64, '2020-07-04'),
(455, 3, '2020-07-04'),
(456, 531, '2020-07-04'),
(457, 53, '2020-07-04'),
(458, 64, '2020-07-04'),
(459, 2, '2020-07-04'),
(460, 543, '2020-07-04'),
(461, 543, '2020-07-04'),
(462, 543, '2020-07-04'),
(463, 543, '2020-07-05'),
(464, 8, '2020-07-05'),
(465, 543, '2020-07-05'),
(466, 543, '2020-07-05'),
(467, 7, '2020-07-05'),
(468, 4, '2020-07-05'),
(469, 5, '2020-07-05'),
(470, 543, '2020-07-05'),
(471, 527, '2020-07-05'),
(472, 531, '2020-07-05'),
(473, 530, '2020-07-05'),
(474, 529, '2020-07-05'),
(475, 528, '2020-07-05'),
(476, 532, '2020-07-05'),
(477, 63, '2020-07-05'),
(478, 64, '2020-07-05'),
(479, 384, '2020-07-05'),
(480, 385, '2020-07-05'),
(481, 386, '2020-07-05'),
(482, 387, '2020-07-05'),
(483, 359, '2020-07-05'),
(484, 358, '2020-07-05'),
(485, 360, '2020-07-05'),
(486, 362, '2020-07-05'),
(487, 357, '2020-07-05'),
(488, 361, '2020-07-05'),
(489, 412, '2020-07-05'),
(490, 61, '2020-07-05'),
(491, 57, '2020-07-05'),
(492, 58, '2020-07-05'),
(493, 59, '2020-07-05'),
(494, 62, '2020-07-05'),
(495, 60, '2020-07-05'),
(496, 356, '2020-07-05'),
(497, 355, '2020-07-05'),
(498, 354, '2020-07-05'),
(499, 293, '2020-07-05'),
(500, 294, '2020-07-05'),
(501, 301, '2020-07-05'),
(502, 303, '2020-07-05'),
(503, 302, '2020-07-05'),
(504, 300, '2020-07-05'),
(505, 299, '2020-07-05'),
(506, 298, '2020-07-05'),
(507, 295, '2020-07-05'),
(508, 296, '2020-07-05'),
(509, 297, '2020-07-05'),
(510, 422, '2020-07-05'),
(511, 416, '2020-07-05'),
(512, 413, '2020-07-05'),
(513, 419, '2020-07-05'),
(514, 418, '2020-07-05'),
(515, 415, '2020-07-05'),
(516, 420, '2020-07-05'),
(517, 423, '2020-07-05'),
(518, 421, '2020-07-05'),
(519, 414, '2020-07-05'),
(520, 417, '2020-07-05'),
(521, 6, '2020-07-05'),
(522, 472, '2020-07-05'),
(523, 471, '2020-07-05'),
(524, 470, '2020-07-05'),
(525, 474, '2020-07-05'),
(526, 473, '2020-07-05'),
(527, 469, '2020-07-05'),
(528, 465, '2020-07-05'),
(529, 463, '2020-07-05'),
(530, 464, '2020-07-05'),
(531, 466, '2020-07-05'),
(532, 468, '2020-07-05'),
(533, 467, '2020-07-05'),
(534, 346, '2020-07-05'),
(535, 353, '2020-07-05'),
(536, 349, '2020-07-05'),
(537, 348, '2020-07-05'),
(538, 350, '2020-07-05'),
(539, 351, '2020-07-05'),
(540, 352, '2020-07-05'),
(541, 347, '2020-07-05'),
(542, 345, '2020-07-05'),
(543, 204, '2020-07-05'),
(544, 526, '2020-07-05'),
(545, 525, '2020-07-05'),
(546, 209, '2020-07-05'),
(547, 207, '2020-07-05'),
(548, 208, '2020-07-05'),
(549, 210, '2020-07-05'),
(550, 211, '2020-07-05'),
(551, 205, '2020-07-05'),
(552, 206, '2020-07-05'),
(553, 199, '2020-07-05'),
(554, 188, '2020-07-05'),
(555, 185, '2020-07-05'),
(556, 187, '2020-07-05'),
(557, 186, '2020-07-05'),
(558, 182, '2020-07-05'),
(559, 183, '2020-07-05'),
(560, 184, '2020-07-05'),
(561, 437, '2020-07-05'),
(562, 438, '2020-07-05'),
(563, 146, '2020-07-05'),
(564, 117, '2020-07-05'),
(565, 147, '2020-07-05'),
(566, 144, '2020-07-05'),
(567, 145, '2020-07-05'),
(568, 118, '2020-07-05'),
(569, 291, '2020-07-05'),
(570, 292, '2020-07-05'),
(571, 200, '2020-07-05'),
(572, 202, '2020-07-05'),
(573, 115, '2020-07-05'),
(574, 116, '2020-07-05'),
(575, 112, '2020-07-05'),
(576, 113, '2020-07-05'),
(577, 114, '2020-07-05'),
(578, 277, '2020-07-05'),
(579, 278, '2020-07-05'),
(580, 274, '2020-07-05'),
(581, 273, '2020-07-05'),
(582, 272, '2020-07-05'),
(583, 275, '2020-07-05'),
(584, 276, '2020-07-05'),
(585, 2, '2020-07-05'),
(586, 3, '2020-07-05'),
(587, 44, '2020-07-05'),
(588, 45, '2020-07-05'),
(589, 35, '2020-07-05'),
(590, 43, '2020-07-05'),
(591, 55, '2020-07-05'),
(592, 56, '2020-07-05'),
(593, 212, '2020-07-05'),
(594, 213, '2020-07-05'),
(595, 534, '2020-07-05'),
(596, 540, '2020-07-05'),
(597, 535, '2020-07-05'),
(598, 539, '2020-07-05'),
(599, 542, '2020-07-05'),
(600, 541, '2020-07-05'),
(601, 538, '2020-07-05'),
(602, 533, '2020-07-05'),
(603, 537, '2020-07-05'),
(604, 536, '2020-07-05'),
(605, 111, '2020-07-05'),
(606, 110, '2020-07-05'),
(607, 523, '2020-07-05'),
(608, 521, '2020-07-05'),
(609, 524, '2020-07-05'),
(610, 520, '2020-07-05'),
(611, 519, '2020-07-05'),
(612, 522, '2020-07-05'),
(613, 285, '2020-07-05'),
(614, 283, '2020-07-05'),
(615, 281, '2020-07-05'),
(616, 282, '2020-07-05'),
(617, 288, '2020-07-05'),
(618, 290, '2020-07-05'),
(619, 286, '2020-07-05'),
(620, 289, '2020-07-05'),
(621, 287, '2020-07-05'),
(622, 284, '2020-07-05'),
(623, 515, '2020-07-05'),
(624, 516, '2020-07-05'),
(625, 514, '2020-07-05'),
(626, 518, '2020-07-05'),
(627, 513, '2020-07-05'),
(628, 517, '2020-07-05'),
(629, 47, '2020-07-05'),
(630, 49, '2020-07-05'),
(631, 50, '2020-07-05'),
(632, 48, '2020-07-05'),
(633, 54, '2020-07-05'),
(634, 53, '2020-07-05'),
(635, 51, '2020-07-05'),
(636, 52, '2020-07-05'),
(637, 119, '2020-07-05'),
(638, 85, '2020-07-05'),
(639, 84, '2020-07-05'),
(640, 81, '2020-07-05'),
(641, 83, '2020-07-05'),
(642, 439, '2020-07-05'),
(643, 440, '2020-07-05'),
(644, 82, '2020-07-05'),
(645, 441, '2020-07-05'),
(646, 96, '2020-07-05'),
(647, 97, '2020-07-05'),
(648, 100, '2020-07-05'),
(649, 95, '2020-07-05'),
(650, 99, '2020-07-05'),
(651, 98, '2020-07-05'),
(652, 80, '2020-07-05'),
(653, 75, '2020-07-05'),
(654, 79, '2020-07-05'),
(655, 76, '2020-07-05'),
(656, 74, '2020-07-05'),
(657, 77, '2020-07-05'),
(658, 78, '2020-07-05'),
(659, 94, '2020-07-05'),
(660, 89, '2020-07-05'),
(661, 90, '2020-07-05'),
(662, 93, '2020-07-05'),
(663, 92, '2020-07-05'),
(664, 91, '2020-07-05'),
(665, 103, '2020-07-05'),
(666, 106, '2020-07-05'),
(667, 109, '2020-07-05'),
(668, 101, '2020-07-05'),
(669, 102, '2020-07-05'),
(670, 105, '2020-07-05'),
(671, 108, '2020-07-05'),
(672, 107, '2020-07-05'),
(673, 104, '2020-07-05'),
(674, 267, '2020-07-05'),
(675, 269, '2020-07-05'),
(676, 268, '2020-07-05'),
(677, 270, '2020-07-05'),
(678, 271, '2020-07-05'),
(679, 194, '2020-07-05'),
(680, 192, '2020-07-05'),
(681, 193, '2020-07-05'),
(682, 197, '2020-07-05'),
(683, 195, '2020-07-05'),
(684, 225, '2020-07-05'),
(685, 226, '2020-07-05'),
(686, 222, '2020-07-05'),
(687, 224, '2020-07-05'),
(688, 223, '2020-07-05'),
(689, 219, '2020-07-05'),
(690, 220, '2020-07-05'),
(691, 221, '2020-07-05'),
(692, 70, '2020-07-05'),
(693, 66, '2020-07-05'),
(694, 71, '2020-07-05'),
(695, 69, '2020-07-05'),
(696, 65, '2020-07-05'),
(697, 68, '2020-07-05'),
(698, 67, '2020-07-05'),
(699, 196, '2020-07-06'),
(700, 201, '2020-07-06'),
(701, 191, '2020-07-06'),
(702, 198, '2020-07-06'),
(703, 377, '2020-07-06'),
(704, 431, '2020-07-06'),
(705, 374, '2020-07-06'),
(706, 373, '2020-07-06'),
(707, 435, '2020-07-06'),
(708, 430, '2020-07-06'),
(709, 382, '2020-07-06'),
(710, 380, '2020-07-06'),
(711, 378, '2020-07-06'),
(712, 381, '2020-07-06'),
(713, 383, '2020-07-06'),
(714, 379, '2020-07-06'),
(715, 375, '2020-07-06'),
(716, 376, '2020-07-06'),
(717, 372, '2020-07-06'),
(718, 434, '2020-07-06'),
(719, 433, '2020-07-06'),
(720, 432, '2020-07-06'),
(721, 436, '2020-07-06'),
(722, 174, '2020-07-06'),
(723, 175, '2020-07-06'),
(724, 170, '2020-07-06'),
(725, 172, '2020-07-06'),
(726, 171, '2020-07-06'),
(727, 177, '2020-07-06'),
(728, 176, '2020-07-06'),
(729, 173, '2020-07-06'),
(730, 181, '2020-07-06'),
(731, 179, '2020-07-06'),
(732, 180, '2020-07-06'),
(733, 178, '2020-07-06'),
(734, 7, '2020-07-06'),
(735, 8, '2020-07-06'),
(736, 1, '2020-07-06'),
(737, 4, '2020-07-06'),
(738, 5, '2020-07-06'),
(739, 543, '2020-07-06'),
(740, 1, '2020-07-06'),
(741, 227, '2020-07-06'),
(742, 72, '2020-07-06'),
(743, 389, '2020-07-06'),
(744, 64, '2020-07-06'),
(745, 55, '2020-07-12'),
(746, 543, '2020-07-16'),
(747, 439, '2020-07-17'),
(748, 440, '2020-07-17'),
(749, 441, '2020-07-17'),
(750, 523, '2020-07-17'),
(751, 521, '2020-07-17'),
(752, 524, '2020-07-17'),
(753, 520, '2020-07-17'),
(754, 519, '2020-07-17'),
(755, 522, '2020-07-17'),
(756, 489, '2020-07-17'),
(757, 488, '2020-07-17'),
(758, 487, '2020-07-17'),
(759, 492, '2020-07-17'),
(760, 491, '2020-07-17'),
(761, 493, '2020-07-17'),
(762, 482, '2020-07-17'),
(763, 483, '2020-07-17'),
(764, 486, '2020-07-17'),
(765, 484, '2020-07-17'),
(766, 485, '2020-07-17'),
(767, 543, '2020-07-17'),
(768, 64, '2020-07-17'),
(769, 3, '2020-07-17'),
(770, 4, '2020-07-17'),
(771, 50, '2020-07-17'),
(772, 40, '2020-07-17'),
(773, 56, '2020-07-17'),
(774, 41, '2020-07-17'),
(775, 531, '2020-07-17'),
(776, 14, '2020-07-17'),
(777, 507, '2020-07-18'),
(778, 481, '2020-07-18'),
(779, 480, '2020-07-18'),
(780, 477, '2020-07-18'),
(781, 478, '2020-07-18'),
(782, 479, '2020-07-18'),
(783, 475, '2020-07-18'),
(784, 476, '2020-07-18'),
(785, 543, '2020-07-18'),
(786, 42, '2020-07-18'),
(787, 543, '2020-07-18'),
(788, 6, '2020-07-18'),
(789, 2, '2020-07-18'),
(790, 3, '2020-07-18'),
(791, 49, '2020-07-18'),
(792, 451, '2020-07-18'),
(793, 356, '2020-07-18'),
(794, 410, '2020-07-18'),
(795, 411, '2020-07-18'),
(796, 355, '2020-07-18'),
(797, 354, '2020-07-18'),
(798, 400, '2020-07-18'),
(799, 399, '2020-07-18'),
(800, 403, '2020-07-18'),
(801, 398, '2020-07-18'),
(802, 408, '2020-07-18'),
(803, 404, '2020-07-18'),
(804, 407, '2020-07-18'),
(805, 321, '2020-07-18'),
(806, 402, '2020-07-18'),
(807, 401, '2020-07-18'),
(808, 409, '2020-07-18'),
(809, 359, '2020-07-18'),
(810, 527, '2020-07-18'),
(811, 405, '2020-07-18'),
(812, 406, '2020-07-18'),
(813, 358, '2020-07-18'),
(814, 360, '2020-07-18'),
(815, 531, '2020-07-18'),
(816, 530, '2020-07-18'),
(817, 322, '2020-07-18'),
(818, 320, '2020-07-18'),
(819, 529, '2020-07-18'),
(820, 528, '2020-07-18'),
(821, 325, '2020-07-18'),
(822, 324, '2020-07-18'),
(823, 323, '2020-07-18'),
(824, 362, '2020-07-18'),
(825, 357, '2020-07-18'),
(826, 361, '2020-07-18'),
(827, 532, '2020-07-19'),
(828, 301, '2020-07-19'),
(829, 303, '2020-07-19'),
(830, 302, '2020-07-19'),
(831, 300, '2020-07-19'),
(832, 299, '2020-07-19'),
(833, 472, '2020-07-19'),
(834, 471, '2020-07-19'),
(835, 470, '2020-07-19'),
(836, 474, '2020-07-19'),
(837, 473, '2020-07-19'),
(838, 469, '2020-07-19'),
(839, 465, '2020-07-19'),
(840, 463, '2020-07-19'),
(841, 464, '2020-07-19'),
(842, 466, '2020-07-19'),
(843, 468, '2020-07-19'),
(844, 467, '2020-07-19'),
(845, 337, '2020-07-19'),
(846, 459, '2020-07-19'),
(847, 450, '2020-07-19'),
(848, 458, '2020-07-19'),
(849, 377, '2020-07-19'),
(850, 452, '2020-07-19'),
(851, 454, '2020-07-19'),
(852, 346, '2020-07-19'),
(853, 309, '2020-07-19'),
(854, 327, '2020-07-19'),
(855, 328, '2020-07-19'),
(856, 315, '2020-07-19'),
(857, 353, '2020-07-19'),
(858, 319, '2020-07-19'),
(859, 333, '2020-07-19'),
(860, 335, '2020-07-19'),
(861, 336, '2020-07-19'),
(862, 374, '2020-07-19'),
(863, 373, '2020-07-19'),
(864, 349, '2020-07-19'),
(865, 344, '2020-07-19'),
(866, 308, '2020-07-19'),
(867, 348, '2020-07-19'),
(868, 350, '2020-07-19'),
(869, 351, '2020-07-19'),
(870, 352, '2020-07-19'),
(871, 312, '2020-07-19'),
(872, 310, '2020-07-19'),
(873, 311, '2020-07-19'),
(874, 456, '2020-07-19'),
(875, 453, '2020-07-19'),
(876, 382, '2020-07-19'),
(877, 380, '2020-07-19'),
(878, 378, '2020-07-19'),
(879, 381, '2020-07-19'),
(880, 383, '2020-07-19'),
(881, 347, '2020-07-19'),
(882, 330, '2020-07-19'),
(883, 314, '2020-07-19'),
(884, 316, '2020-07-19'),
(885, 318, '2020-07-19'),
(886, 317, '2020-07-19'),
(887, 199, '2020-07-19'),
(888, 363, '2020-07-19'),
(889, 365, '2020-07-19'),
(890, 437, '2020-07-19'),
(891, 438, '2020-07-19'),
(892, 146, '2020-07-19'),
(893, 117, '2020-07-19'),
(894, 147, '2020-07-19'),
(895, 144, '2020-07-19'),
(896, 200, '2020-07-19'),
(897, 145, '2020-07-19'),
(898, 118, '2020-07-19'),
(899, 526, '2020-07-19'),
(900, 525, '2020-07-19'),
(901, 237, '2020-07-19'),
(902, 239, '2020-07-19'),
(903, 238, '2020-07-19'),
(904, 236, '2020-07-19'),
(905, 252, '2020-07-19'),
(906, 250, '2020-07-19'),
(907, 116, '2020-07-19'),
(908, 248, '2020-07-19'),
(909, 249, '2020-07-19'),
(910, 251, '2020-07-19'),
(911, 234, '2020-07-19'),
(912, 232, '2020-07-19'),
(913, 233, '2020-07-19'),
(914, 231, '2020-07-19'),
(915, 230, '2020-07-19'),
(916, 235, '2020-07-19'),
(917, 188, '2020-07-19'),
(918, 185, '2020-07-19'),
(919, 187, '2020-07-19'),
(920, 277, '2020-07-19'),
(921, 278, '2020-07-19'),
(922, 186, '2020-07-19'),
(923, 182, '2020-07-19'),
(924, 183, '2020-07-19'),
(925, 274, '2020-07-19'),
(926, 273, '2020-07-19'),
(927, 184, '2020-07-19'),
(928, 272, '2020-07-19'),
(929, 275, '2020-07-19'),
(930, 276, '2020-07-19'),
(931, 241, '2020-07-19'),
(932, 244, '2020-07-19'),
(933, 242, '2020-07-19'),
(934, 247, '2020-07-19'),
(935, 246, '2020-07-19'),
(936, 245, '2020-07-19'),
(937, 243, '2020-07-19'),
(938, 271, '2020-07-19'),
(939, 259, '2020-07-19'),
(940, 258, '2020-07-19'),
(941, 260, '2020-07-19'),
(942, 254, '2020-07-19'),
(943, 253, '2020-07-19'),
(944, 257, '2020-07-19'),
(945, 255, '2020-07-19'),
(946, 256, '2020-07-19'),
(947, 261, '2020-07-19'),
(948, 153, '2020-07-19'),
(949, 194, '2020-07-19'),
(950, 189, '2020-07-19'),
(951, 196, '2020-07-19'),
(952, 152, '2020-07-19'),
(953, 154, '2020-07-19'),
(954, 158, '2020-07-19'),
(955, 159, '2020-07-19'),
(956, 201, '2020-07-19'),
(957, 155, '2020-07-19'),
(958, 149, '2020-07-19'),
(959, 151, '2020-07-19'),
(960, 150, '2020-07-19'),
(961, 157, '2020-07-19'),
(962, 156, '2020-07-19'),
(963, 148, '2020-07-19'),
(964, 192, '2020-07-19'),
(965, 191, '2020-07-19'),
(966, 193, '2020-07-19'),
(967, 190, '2020-07-19'),
(968, 197, '2020-07-19'),
(969, 195, '2020-07-19'),
(970, 198, '2020-07-19'),
(971, 313, '2020-07-19'),
(972, 379, '2020-07-19'),
(973, 375, '2020-07-19'),
(974, 376, '2020-07-19'),
(975, 342, '2020-07-19'),
(976, 343, '2020-07-19'),
(977, 457, '2020-07-19'),
(978, 372, '2020-07-19'),
(979, 460, '2020-07-19'),
(980, 461, '2020-07-19'),
(981, 332, '2020-07-19'),
(982, 331, '2020-07-19'),
(983, 329, '2020-07-19'),
(984, 334, '2020-07-19'),
(985, 338, '2020-07-19'),
(986, 455, '2020-07-19'),
(987, 462, '2020-07-19'),
(988, 345, '2020-07-19'),
(989, 56, '2020-07-19'),
(990, 139, '2020-07-19'),
(991, 143, '2020-07-19'),
(992, 141, '2020-07-19'),
(993, 140, '2020-07-19'),
(994, 431, '2020-07-19'),
(995, 425, '2020-07-19'),
(996, 132, '2020-07-19'),
(997, 435, '2020-07-19'),
(998, 142, '2020-07-19'),
(999, 429, '2020-07-19'),
(1000, 428, '2020-07-19'),
(1001, 426, '2020-07-19'),
(1002, 427, '2020-07-19'),
(1003, 430, '2020-07-19'),
(1004, 133, '2020-07-19'),
(1005, 138, '2020-07-19'),
(1006, 136, '2020-07-19'),
(1007, 135, '2020-07-19'),
(1008, 174, '2020-07-19'),
(1009, 175, '2020-07-19'),
(1010, 170, '2020-07-19'),
(1011, 172, '2020-07-19'),
(1012, 171, '2020-07-19'),
(1013, 177, '2020-07-19'),
(1014, 176, '2020-07-19'),
(1015, 173, '2020-07-19'),
(1016, 434, '2020-07-19'),
(1017, 433, '2020-07-19'),
(1018, 432, '2020-07-19'),
(1019, 436, '2020-07-19'),
(1020, 181, '2020-07-19'),
(1021, 179, '2020-07-19'),
(1022, 180, '2020-07-19'),
(1023, 293, '2020-07-19'),
(1024, 45, '2020-07-19'),
(1025, 294, '2020-07-19'),
(1026, 44, '2020-07-19'),
(1027, 295, '2020-07-19'),
(1028, 35, '2020-07-19'),
(1029, 296, '2020-07-19'),
(1030, 297, '2020-07-19'),
(1031, 240, '2020-07-19'),
(1032, 178, '2020-07-19'),
(1033, 134, '2020-07-19'),
(1034, 137, '2020-07-19'),
(1035, 56, '2020-07-19'),
(1036, 208, '2020-07-19'),
(1037, 73, '2020-07-19'),
(1038, 88, '2020-07-19'),
(1039, 86, '2020-07-19'),
(1040, 543, '2020-07-19'),
(1041, 87, '2020-07-19'),
(1042, 543, '2020-07-19'),
(1043, 543, '2020-07-19'),
(1044, 543, '2020-07-19'),
(1045, 543, '2020-07-19'),
(1046, 543, '2020-07-19'),
(1047, 543, '2020-07-19'),
(1048, 543, '2020-07-20'),
(1049, 64, '2020-07-20'),
(1050, 51, '2020-07-20'),
(1051, 543, '2020-07-20'),
(1052, 543, '2020-07-20'),
(1053, 43, '2020-07-20'),
(1054, 112, '2020-07-20'),
(1055, 42, '2020-07-20'),
(1056, 113, '2020-07-20'),
(1057, 114, '2020-07-20'),
(1058, 62, '2020-07-20'),
(1059, 62, '2020-07-20'),
(1060, 41, '2020-07-20'),
(1061, 546, '2020-07-20'),
(1062, 544, '2020-07-20'),
(1063, 545, '2020-07-20'),
(1064, 55, '2020-07-20'),
(1065, 113, '2020-07-20'),
(1066, 543, '2020-07-20'),
(1067, 8, '2020-07-20'),
(1068, 225, '2020-07-20'),
(1069, 226, '2020-07-20'),
(1070, 222, '2020-07-20'),
(1071, 224, '2020-07-20'),
(1072, 223, '2020-07-20'),
(1073, 219, '2020-07-20'),
(1074, 220, '2020-07-20'),
(1075, 221, '2020-07-20'),
(1076, 7, '2020-07-20'),
(1077, 5, '2020-07-20'),
(1078, 4, '2020-07-20'),
(1079, 544, '2020-07-20'),
(1080, 12, '2020-07-20'),
(1081, 13, '2020-07-20'),
(1082, 14, '2020-07-20'),
(1083, 15, '2020-07-20'),
(1084, 11, '2020-07-20'),
(1085, 9, '2020-07-20'),
(1086, 10, '2020-07-20'),
(1087, 6, '2020-07-20'),
(1088, 56, '2020-07-20'),
(1089, 298, '2020-07-20'),
(1090, 70, '2020-07-20'),
(1091, 66, '2020-07-20'),
(1092, 71, '2020-07-20'),
(1093, 69, '2020-07-20'),
(1094, 65, '2020-07-20'),
(1095, 68, '2020-07-20'),
(1096, 67, '2020-07-20'),
(1097, 34, '2020-07-21'),
(1098, 546, '2020-07-21'),
(1099, 544, '2020-07-21'),
(1100, 545, '2020-07-21'),
(1101, 451, '2020-07-21'),
(1102, 203, '2020-07-21'),
(1103, 363, '2020-07-21'),
(1104, 365, '2020-07-21'),
(1105, 410, '2020-07-21'),
(1106, 411, '2020-07-21'),
(1107, 237, '2020-07-21'),
(1108, 239, '2020-07-21'),
(1109, 238, '2020-07-21'),
(1110, 236, '2020-07-21'),
(1111, 252, '2020-07-21'),
(1112, 250, '2020-07-21'),
(1113, 248, '2020-07-21'),
(1114, 249, '2020-07-21'),
(1115, 251, '2020-07-21'),
(1116, 400, '2020-07-21'),
(1117, 399, '2020-07-21'),
(1118, 403, '2020-07-21'),
(1119, 398, '2020-07-21'),
(1120, 408, '2020-07-21'),
(1121, 404, '2020-07-21'),
(1122, 407, '2020-07-21'),
(1123, 321, '2020-07-21'),
(1124, 234, '2020-07-21'),
(1125, 232, '2020-07-21'),
(1126, 233, '2020-07-21'),
(1127, 231, '2020-07-21'),
(1128, 230, '2020-07-21'),
(1129, 402, '2020-07-21'),
(1130, 401, '2020-07-21'),
(1131, 409, '2020-07-21'),
(1132, 235, '2020-07-21'),
(1133, 405, '2020-07-21'),
(1134, 406, '2020-07-21'),
(1135, 322, '2020-07-21'),
(1136, 320, '2020-07-21'),
(1137, 325, '2020-07-21'),
(1138, 324, '2020-07-21'),
(1139, 323, '2020-07-21'),
(1140, 396, '2020-07-21'),
(1141, 391, '2020-07-21'),
(1142, 395, '2020-07-21'),
(1143, 394, '2020-07-21'),
(1144, 392, '2020-07-21'),
(1145, 393, '2020-07-21'),
(1146, 397, '2020-07-21'),
(1147, 241, '2020-07-21'),
(1148, 244, '2020-07-21'),
(1149, 242, '2020-07-21'),
(1150, 247, '2020-07-21'),
(1151, 246, '2020-07-21'),
(1152, 245, '2020-07-21'),
(1153, 243, '2020-07-21'),
(1154, 240, '2020-07-21'),
(1155, 259, '2020-07-21'),
(1156, 543, '2020-07-21'),
(1157, 258, '2020-07-21'),
(1158, 260, '2020-07-21'),
(1159, 254, '2020-07-21'),
(1160, 253, '2020-07-21'),
(1161, 257, '2020-07-21'),
(1162, 255, '2020-07-21'),
(1163, 256, '2020-07-21'),
(1164, 261, '2020-07-21'),
(1165, 153, '2020-07-21'),
(1166, 189, '2020-07-21'),
(1167, 152, '2020-07-21'),
(1168, 154, '2020-07-21'),
(1169, 158, '2020-07-21'),
(1170, 159, '2020-07-21'),
(1171, 155, '2020-07-21'),
(1172, 149, '2020-07-21'),
(1173, 151, '2020-07-21'),
(1174, 150, '2020-07-21'),
(1175, 157, '2020-07-21'),
(1176, 156, '2020-07-21'),
(1177, 148, '2020-07-21'),
(1178, 190, '2020-07-21'),
(1179, 459, '2020-07-21'),
(1180, 139, '2020-07-21'),
(1181, 452, '2020-07-21'),
(1182, 143, '2020-07-21'),
(1183, 454, '2020-07-21'),
(1184, 141, '2020-07-21'),
(1185, 140, '2020-07-21'),
(1186, 309, '2020-07-21'),
(1187, 328, '2020-07-21'),
(1188, 315, '2020-07-21'),
(1189, 319, '2020-07-21'),
(1190, 132, '2020-07-21'),
(1191, 333, '2020-07-21'),
(1192, 335, '2020-07-21'),
(1193, 344, '2020-07-21'),
(1194, 308, '2020-07-21'),
(1195, 312, '2020-07-21'),
(1196, 310, '2020-07-21'),
(1197, 311, '2020-07-21'),
(1198, 456, '2020-07-21'),
(1199, 142, '2020-07-21'),
(1200, 429, '2020-07-21'),
(1201, 453, '2020-07-21'),
(1202, 133, '2020-07-21'),
(1203, 316, '2020-07-21'),
(1204, 317, '2020-07-21'),
(1205, 313, '2020-07-21'),
(1206, 138, '2020-07-21'),
(1207, 136, '2020-07-21'),
(1208, 343, '2020-07-21'),
(1209, 457, '2020-07-21'),
(1210, 460, '2020-07-21'),
(1211, 461, '2020-07-21'),
(1212, 331, '2020-07-21'),
(1213, 338, '2020-07-21'),
(1214, 455, '2020-07-21'),
(1215, 134, '2020-07-21'),
(1216, 1, '2020-07-21'),
(1217, 4, '2020-07-21'),
(1218, 2, '2020-07-21'),
(1219, 3, '2020-07-21'),
(1220, 4, '2020-07-21'),
(1221, 1, '2020-07-21'),
(1222, 2, '2020-07-21'),
(1223, 3, '2020-07-21'),
(1224, 548, '2020-07-21'),
(1225, 547, '2020-07-21'),
(1226, 389, '2020-07-21'),
(1227, 390, '2020-07-21'),
(1228, 388, '2020-07-21'),
(1229, 217, '2020-07-21'),
(1230, 46, '2020-07-21'),
(1231, 543, '2020-07-21'),
(1232, 215, '2020-07-21'),
(1233, 216, '2020-07-21'),
(1234, 218, '2020-07-21'),
(1235, 214, '2020-07-21'),
(1236, 88, '2020-07-21'),
(1237, 264, '2020-07-21'),
(1238, 265, '2020-07-21'),
(1239, 262, '2020-07-21'),
(1240, 263, '2020-07-21'),
(1241, 266, '2020-07-21'),
(1242, 73, '2020-07-21'),
(1243, 86, '2020-07-21'),
(1244, 87, '2020-07-21'),
(1245, 229, '2020-07-21'),
(1246, 228, '2020-07-21'),
(1247, 279, '2020-07-21'),
(1248, 280, '2020-07-21'),
(1249, 488, '2020-07-21'),
(1250, 427, '2020-07-21'),
(1251, 314, '2020-07-21'),
(1252, 485, '2020-07-21'),
(1253, 329, '2020-07-21'),
(1254, 56, '2020-07-21'),
(1255, 425, '2020-07-21'),
(1256, 428, '2020-07-21'),
(1257, 426, '2020-07-21'),
(1258, 337, '2020-07-21'),
(1259, 450, '2020-07-21'),
(1260, 458, '2020-07-21'),
(1261, 489, '2020-07-21'),
(1262, 487, '2020-07-21'),
(1263, 492, '2020-07-21'),
(1264, 491, '2020-07-21'),
(1265, 490, '2020-07-21'),
(1266, 327, '2020-07-21'),
(1267, 336, '2020-07-21'),
(1268, 493, '2020-07-21'),
(1269, 330, '2020-07-21'),
(1270, 318, '2020-07-21'),
(1271, 342, '2020-07-21'),
(1272, 135, '2020-07-21'),
(1273, 482, '2020-07-21'),
(1274, 483, '2020-07-21'),
(1275, 486, '2020-07-21'),
(1276, 484, '2020-07-21'),
(1277, 332, '2020-07-21'),
(1278, 334, '2020-07-21'),
(1279, 462, '2020-07-21'),
(1280, 137, '2020-07-21'),
(1281, 508, '2020-07-21'),
(1282, 507, '2020-07-21'),
(1283, 46, '2020-07-21'),
(1284, 6, '2020-07-21'),
(1285, 49, '2020-07-21'),
(1286, 62, '2020-07-21'),
(1287, 543, '2020-07-21'),
(1288, 7, '2020-07-21'),
(1289, 8, '2020-07-21'),
(1290, 5, '2020-07-21'),
(1291, 475, '2020-07-21'),
(1292, 476, '2020-07-21'),
(1293, 304, '2020-07-21'),
(1294, 494, '2020-07-21'),
(1295, 481, '2020-07-21'),
(1296, 480, '2020-07-21'),
(1297, 477, '2020-07-21'),
(1298, 478, '2020-07-21'),
(1299, 479, '2020-07-21'),
(1300, 499, '2020-07-21'),
(1301, 496, '2020-07-21'),
(1302, 504, '2020-07-21'),
(1303, 505, '2020-07-21'),
(1304, 501, '2020-07-21'),
(1305, 502, '2020-07-21'),
(1306, 497, '2020-07-21'),
(1307, 500, '2020-07-21'),
(1308, 495, '2020-07-21'),
(1309, 506, '2020-07-21'),
(1310, 503, '2020-07-21'),
(1311, 498, '2020-07-21'),
(1312, 306, '2020-07-21'),
(1313, 307, '2020-07-21'),
(1314, 305, '2020-07-21'),
(1315, 326, '2020-07-21'),
(1316, 341, '2020-07-21'),
(1317, 339, '2020-07-21'),
(1318, 340, '2020-07-21'),
(1319, 449, '2020-07-21'),
(1320, 443, '2020-07-21'),
(1321, 448, '2020-07-21'),
(1322, 446, '2020-07-21'),
(1323, 442, '2020-07-21'),
(1324, 447, '2020-07-21'),
(1325, 445, '2020-07-21'),
(1326, 444, '2020-07-21'),
(1327, 164, '2020-07-21'),
(1328, 161, '2020-07-21'),
(1329, 165, '2020-07-21'),
(1330, 163, '2020-07-21'),
(1331, 167, '2020-07-21'),
(1332, 103, '2020-07-21'),
(1333, 111, '2020-07-21'),
(1334, 110, '2020-07-21'),
(1335, 109, '2020-07-21'),
(1336, 101, '2020-07-21'),
(1337, 102, '2020-07-21'),
(1338, 212, '2020-07-21'),
(1339, 213, '2020-07-21'),
(1340, 285, '2020-07-21'),
(1341, 283, '2020-07-21'),
(1342, 281, '2020-07-21'),
(1343, 282, '2020-07-21'),
(1344, 288, '2020-07-21'),
(1345, 290, '2020-07-21'),
(1346, 286, '2020-07-21'),
(1347, 289, '2020-07-22'),
(1348, 287, '2020-07-22'),
(1349, 284, '2020-07-22'),
(1350, 162, '2020-07-22'),
(1351, 166, '2020-07-22'),
(1352, 168, '2020-07-22'),
(1353, 160, '2020-07-22'),
(1354, 169, '2020-07-22'),
(1355, 126, '2020-07-22'),
(1356, 123, '2020-07-22'),
(1357, 124, '2020-07-22'),
(1358, 127, '2020-07-22'),
(1359, 120, '2020-07-22'),
(1360, 122, '2020-07-22'),
(1361, 121, '2020-07-22'),
(1362, 125, '2020-07-22'),
(1363, 128, '2020-07-22'),
(1364, 129, '2020-07-22'),
(1365, 130, '2020-07-22'),
(1366, 131, '2020-07-22'),
(1367, 37, '2020-07-22'),
(1368, 105, '2020-07-22'),
(1369, 108, '2020-07-22'),
(1370, 107, '2020-07-22'),
(1371, 104, '2020-07-22'),
(1372, 515, '2020-07-22'),
(1373, 516, '2020-07-22'),
(1374, 514, '2020-07-22'),
(1375, 518, '2020-07-22'),
(1376, 298, '2020-07-22'),
(1377, 513, '2020-07-22'),
(1378, 517, '2020-07-22'),
(1379, 62, '2020-07-22'),
(1380, 508, '2020-07-22'),
(1381, 512, '2020-07-22'),
(1382, 510, '2020-07-22'),
(1383, 509, '2020-07-22'),
(1384, 511, '2020-07-23'),
(1385, 46, '2020-07-23'),
(1386, 35, '2020-07-23'),
(1387, 50, '2020-07-23'),
(1388, 54, '2020-07-23'),
(1389, 53, '2020-07-23'),
(1390, 31, '2020-07-23'),
(1391, 51, '2020-07-23'),
(1392, 51, '2020-07-23'),
(1393, 293, '2020-07-23'),
(1394, 294, '2020-07-23'),
(1395, 34, '2020-07-23'),
(1396, 295, '2020-07-23'),
(1397, 296, '2020-07-23'),
(1398, 38, '2020-07-23'),
(1399, 297, '2020-07-23'),
(1400, 44, '2020-07-23'),
(1401, 45, '2020-07-23'),
(1402, 543, '2020-07-23'),
(1403, 580, '2020-07-23'),
(1404, 562, '2020-07-23'),
(1405, 51, '2020-07-23'),
(1406, 366, '2020-07-23'),
(1407, 366, '2020-07-23'),
(1408, 11, '2020-07-23'),
(1409, 587, '2020-07-23'),
(1410, 56, '2020-07-23'),
(1411, 72, '2020-07-23'),
(1412, 207, '2020-07-23'),
(1413, 568, '2020-07-23'),
(1414, 439, '2020-07-23'),
(1415, 62, '2020-07-23'),
(1416, 565, '2020-07-23'),
(1417, 565, '2020-07-23'),
(1418, 570, '2020-07-23'),
(1419, 573, '2020-07-23'),
(1420, 62, '2020-07-23'),
(1421, 570, '2020-07-23'),
(1422, 570, '2020-07-23'),
(1423, 551, '2020-07-23'),
(1424, 207, '2020-07-23'),
(1425, 56, '2020-07-23'),
(1426, 439, '2020-07-23'),
(1427, 587, '2020-07-23'),
(1428, 41, '2020-07-23'),
(1429, 46, '2020-07-23'),
(1430, 32, '2020-07-23'),
(1431, 579, '2020-07-23'),
(1432, 53, '2020-07-23'),
(1433, 29, '2020-07-24'),
(1434, 49, '2020-07-24'),
(1435, 44, '2020-07-24'),
(1436, 85, '2020-07-24'),
(1437, 82, '2020-07-24'),
(1438, 80, '2020-07-24'),
(1439, 75, '2020-07-24'),
(1440, 79, '2020-07-24'),
(1441, 76, '2020-07-24'),
(1442, 74, '2020-07-24'),
(1443, 77, '2020-07-24'),
(1444, 583, '2020-07-24'),
(1445, 583, '2020-07-24'),
(1446, 583, '2020-07-24'),
(1447, 583, '2020-07-24'),
(1448, 583, '2020-07-24'),
(1449, 583, '2020-07-24'),
(1450, 583, '2020-07-24'),
(1451, 1, '2020-07-24'),
(1452, 1, '2020-07-24'),
(1453, 1, '2020-07-24'),
(1454, 1, '2020-07-24'),
(1455, 1, '2020-07-24'),
(1456, 78, '2020-07-24'),
(1457, 291, '2020-07-24'),
(1458, 292, '2020-07-24'),
(1459, 203, '2020-07-24'),
(1460, 204, '2020-07-24'),
(1461, 202, '2020-07-24'),
(1462, 163, '2020-07-24'),
(1463, 412, '2020-07-24'),
(1464, 209, '2020-07-24'),
(1465, 207, '2020-07-24'),
(1466, 208, '2020-07-24'),
(1467, 583, '2020-07-24'),
(1468, 210, '2020-07-24'),
(1469, 211, '2020-07-24'),
(1470, 205, '2020-07-24'),
(1471, 206, '2020-07-24'),
(1472, 422, '2020-07-24'),
(1473, 416, '2020-07-24'),
(1474, 413, '2020-07-24'),
(1475, 419, '2020-07-24'),
(1476, 418, '2020-07-24'),
(1477, 373, '2020-07-24'),
(1478, 374, '2020-07-24'),
(1479, 415, '2020-07-24'),
(1480, 420, '2020-07-24'),
(1481, 582, '2020-07-24'),
(1482, 582, '2020-07-24'),
(1483, 96, '2020-07-24'),
(1484, 580, '2020-07-24'),
(1485, 97, '2020-07-24'),
(1486, 95, '2020-07-24'),
(1487, 99, '2020-07-24'),
(1488, 98, '2020-07-24'),
(1489, 94, '2020-07-24'),
(1490, 89, '2020-07-24'),
(1491, 112, '2020-07-24'),
(1492, 37, '2020-07-24'),
(1493, 113, '2020-07-24'),
(1494, 87, '2020-07-24'),
(1495, 90, '2020-07-24'),
(1496, 246, '2020-07-24'),
(1497, 114, '2020-07-24'),
(1498, 374, '2020-07-24'),
(1499, 93, '2020-07-24'),
(1500, 575, '2020-07-24'),
(1501, 92, '2020-07-24'),
(1502, 91, '2020-07-24'),
(1503, 423, '2020-07-24'),
(1504, 421, '2020-07-24'),
(1505, 414, '2020-07-24'),
(1506, 417, '2020-07-24'),
(1507, 84, '2020-07-24'),
(1508, 81, '2020-07-24'),
(1509, 43, '2020-07-24'),
(1510, 55, '2020-07-24'),
(1511, 51, '2020-07-24'),
(1512, 534, '2020-07-25'),
(1513, 540, '2020-07-25'),
(1514, 535, '2020-07-25'),
(1515, 539, '2020-07-25'),
(1516, 29, '2020-07-25'),
(1517, 542, '2020-07-25'),
(1518, 541, '2020-07-25'),
(1519, 538, '2020-07-25'),
(1520, 533, '2020-07-25'),
(1521, 537, '2020-07-25'),
(1522, 536, '2020-07-25'),
(1523, 225, '2020-07-25'),
(1524, 543, '2020-07-25'),
(1525, 543, '2020-07-25'),
(1526, 226, '2020-07-25'),
(1527, 207, '2020-07-25'),
(1528, 221, '2020-07-25'),
(1529, 56, '2020-07-25'),
(1530, 575, '2020-07-25'),
(1531, 70, '2020-07-25'),
(1532, 66, '2020-07-25'),
(1533, 71, '2020-07-25'),
(1534, 51, '2020-07-25'),
(1535, 69, '2020-07-25'),
(1536, 65, '2020-07-25'),
(1537, 68, '2020-07-25'),
(1538, 67, '2020-07-25'),
(1539, 298, '2020-07-26'),
(1540, 543, '2020-07-26'),
(1541, 543, '2020-07-26'),
(1542, 543, '2020-07-26'),
(1543, 543, '2020-07-26'),
(1544, 584, '2020-07-26'),
(1545, 34, '2020-07-26'),
(1546, 23, '2020-07-26'),
(1547, 44, '2020-07-26'),
(1548, 543, '2020-07-26'),
(1549, 55, '2020-07-26'),
(1550, 529, '2020-07-26'),
(1551, 45, '2020-07-26'),
(1552, 5, '2020-07-26'),
(1553, 584, '2020-07-26'),
(1554, 115, '2020-07-26'),
(1555, 527, '2020-07-26'),
(1556, 531, '2020-07-26'),
(1557, 530, '2020-07-26'),
(1558, 529, '2020-07-26'),
(1559, 528, '2020-07-26'),
(1560, 532, '2020-07-26'),
(1561, 385, '2020-07-26'),
(1562, 386, '2020-07-26'),
(1563, 387, '2020-07-26'),
(1564, 384, '2020-07-26'),
(1565, 64, '2020-07-26'),
(1566, 356, '2020-07-26'),
(1567, 355, '2020-07-26'),
(1568, 354, '2020-07-26'),
(1569, 63, '2020-07-26'),
(1570, 47, '2020-07-26'),
(1571, 49, '2020-07-26'),
(1572, 48, '2020-07-26'),
(1573, 359, '2020-07-26'),
(1574, 472, '2020-07-26'),
(1575, 358, '2020-07-26'),
(1576, 471, '2020-07-26'),
(1577, 360, '2020-07-26'),
(1578, 470, '2020-07-26'),
(1579, 362, '2020-07-26'),
(1580, 474, '2020-07-26'),
(1581, 357, '2020-07-26'),
(1582, 473, '2020-07-26'),
(1583, 52, '2020-07-26'),
(1584, 361, '2020-07-26'),
(1585, 469, '2020-07-26'),
(1586, 465, '2020-07-26'),
(1587, 463, '2020-07-26'),
(1588, 464, '2020-07-26'),
(1589, 466, '2020-07-26'),
(1590, 468, '2020-07-26'),
(1591, 467, '2020-07-26'),
(1592, 412, '2020-07-26'),
(1593, 301, '2020-07-26'),
(1594, 302, '2020-07-26'),
(1595, 584, '2020-07-26'),
(1596, 300, '2020-07-26'),
(1597, 299, '2020-07-26'),
(1598, 53, '2020-07-26'),
(1599, 346, '2020-07-26'),
(1600, 353, '2020-07-26'),
(1601, 349, '2020-07-26'),
(1602, 348, '2020-07-26'),
(1603, 350, '2020-07-26'),
(1604, 351, '2020-07-26'),
(1605, 352, '2020-07-26'),
(1606, 347, '2020-07-26'),
(1607, 345, '2020-07-26'),
(1608, 422, '2020-07-26'),
(1609, 416, '2020-07-26'),
(1610, 413, '2020-07-26'),
(1611, 419, '2020-07-26'),
(1612, 418, '2020-07-26'),
(1613, 415, '2020-07-26'),
(1614, 420, '2020-07-26'),
(1615, 423, '2020-07-26'),
(1616, 421, '2020-07-26'),
(1617, 414, '2020-07-26'),
(1618, 417, '2020-07-26'),
(1619, 61, '2020-07-26'),
(1620, 57, '2020-07-26'),
(1621, 58, '2020-07-26'),
(1622, 59, '2020-07-26'),
(1623, 60, '2020-07-26'),
(1624, 204, '2020-07-26'),
(1625, 526, '2020-07-26'),
(1626, 525, '2020-07-26'),
(1627, 291, '2020-07-26'),
(1628, 209, '2020-07-26'),
(1629, 292, '2020-07-26'),
(1630, 543, '2020-07-26'),
(1631, 584, '2020-07-26'),
(1632, 584, '2020-07-26'),
(1633, 207, '2020-07-26'),
(1634, 208, '2020-07-26'),
(1635, 210, '2020-07-26'),
(1636, 211, '2020-07-26'),
(1637, 205, '2020-07-26'),
(1638, 206, '2020-07-26'),
(1639, 199, '2020-07-26'),
(1640, 188, '2020-07-26'),
(1641, 277, '2020-07-26'),
(1642, 185, '2020-07-26'),
(1643, 278, '2020-07-26'),
(1644, 187, '2020-07-26'),
(1645, 274, '2020-07-26'),
(1646, 186, '2020-07-26'),
(1647, 182, '2020-07-26'),
(1648, 273, '2020-07-26'),
(1649, 183, '2020-07-26'),
(1650, 272, '2020-07-26'),
(1651, 184, '2020-07-26'),
(1652, 275, '2020-07-26'),
(1653, 437, '2020-07-26'),
(1654, 276, '2020-07-26'),
(1655, 438, '2020-07-26'),
(1656, 146, '2020-07-26'),
(1657, 117, '2020-07-26'),
(1658, 147, '2020-07-26'),
(1659, 144, '2020-07-26'),
(1660, 145, '2020-07-26'),
(1661, 118, '2020-07-26'),
(1662, 200, '2020-07-26'),
(1663, 202, '2020-07-26'),
(1664, 116, '2020-07-26'),
(1665, 515, '2020-07-26'),
(1666, 516, '2020-07-26'),
(1667, 514, '2020-07-26'),
(1668, 518, '2020-07-26'),
(1669, 523, '2020-07-26'),
(1670, 513, '2020-07-26'),
(1671, 521, '2020-07-26'),
(1672, 517, '2020-07-26'),
(1673, 524, '2020-07-26'),
(1674, 520, '2020-07-26'),
(1675, 519, '2020-07-26'),
(1676, 522, '2020-07-26'),
(1677, 285, '2020-07-26'),
(1678, 283, '2020-07-26'),
(1679, 534, '2020-07-26'),
(1680, 576, '2020-07-26'),
(1681, 281, '2020-07-26'),
(1682, 540, '2020-07-26'),
(1683, 282, '2020-07-26'),
(1684, 535, '2020-07-26'),
(1685, 288, '2020-07-26'),
(1686, 539, '2020-07-26'),
(1687, 290, '2020-07-26'),
(1688, 542, '2020-07-26'),
(1689, 286, '2020-07-26'),
(1690, 541, '2020-07-26'),
(1691, 289, '2020-07-26'),
(1692, 538, '2020-07-26'),
(1693, 287, '2020-07-26'),
(1694, 533, '2020-07-26'),
(1695, 284, '2020-07-26'),
(1696, 537, '2020-07-26'),
(1697, 536, '2020-07-26'),
(1698, 111, '2020-07-26'),
(1699, 110, '2020-07-26'),
(1700, 212, '2020-07-26'),
(1701, 213, '2020-07-26'),
(1702, 53, '2020-07-26'),
(1703, 585, '2020-07-26'),
(1704, 50, '2020-07-26'),
(1705, 85, '2020-07-26'),
(1706, 84, '2020-07-26'),
(1707, 81, '2020-07-26'),
(1708, 83, '2020-07-26'),
(1709, 82, '2020-07-26'),
(1710, 96, '2020-07-26'),
(1711, 97, '2020-07-26'),
(1712, 100, '2020-07-26'),
(1713, 95, '2020-07-26'),
(1714, 99, '2020-07-26'),
(1715, 98, '2020-07-26'),
(1716, 80, '2020-07-26'),
(1717, 267, '2020-07-26'),
(1718, 75, '2020-07-26'),
(1719, 269, '2020-07-26'),
(1720, 79, '2020-07-26'),
(1721, 268, '2020-07-26'),
(1722, 76, '2020-07-26'),
(1723, 270, '2020-07-26'),
(1724, 74, '2020-07-26'),
(1725, 271, '2020-07-26'),
(1726, 77, '2020-07-26'),
(1727, 78, '2020-07-26'),
(1728, 94, '2020-07-26'),
(1729, 89, '2020-07-26'),
(1730, 119, '2020-07-26'),
(1731, 90, '2020-07-26'),
(1732, 93, '2020-07-26'),
(1733, 92, '2020-07-26'),
(1734, 91, '2020-07-26'),
(1735, 103, '2020-07-26'),
(1736, 72, '2020-07-26'),
(1737, 439, '2020-07-26'),
(1738, 106, '2020-07-26'),
(1739, 440, '2020-07-26'),
(1740, 109, '2020-07-26'),
(1741, 101, '2020-07-26'),
(1742, 441, '2020-07-26'),
(1743, 105, '2020-07-26'),
(1744, 108, '2020-07-26'),
(1745, 107, '2020-07-26'),
(1746, 104, '2020-07-26'),
(1747, 194, '2020-07-26'),
(1748, 192, '2020-07-26'),
(1749, 193, '2020-07-27'),
(1750, 197, '2020-07-27'),
(1751, 195, '2020-07-27'),
(1752, 227, '2020-07-27'),
(1753, 203, '2020-07-27'),
(1754, 377, '2020-07-27'),
(1755, 374, '2020-07-27'),
(1756, 431, '2020-07-27'),
(1757, 373, '2020-07-27'),
(1758, 382, '2020-07-27'),
(1759, 196, '2020-07-27'),
(1760, 430, '2020-07-27'),
(1761, 380, '2020-07-27'),
(1762, 201, '2020-07-27'),
(1763, 378, '2020-07-27'),
(1764, 191, '2020-07-27'),
(1765, 381, '2020-07-27'),
(1766, 198, '2020-07-27'),
(1767, 383, '2020-07-27'),
(1768, 379, '2020-07-27'),
(1769, 375, '2020-07-27'),
(1770, 376, '2020-07-27'),
(1771, 372, '2020-07-27'),
(1772, 435, '2020-07-27'),
(1773, 432, '2020-07-27'),
(1774, 174, '2020-07-27'),
(1775, 175, '2020-07-27'),
(1776, 170, '2020-07-27'),
(1777, 172, '2020-07-27'),
(1778, 171, '2020-07-27'),
(1779, 177, '2020-07-27'),
(1780, 176, '2020-07-27'),
(1781, 173, '2020-07-27'),
(1782, 181, '2020-07-27'),
(1783, 434, '2020-07-27'),
(1784, 588, '2020-07-27'),
(1785, 179, '2020-07-27'),
(1786, 433, '2020-07-27'),
(1787, 180, '2020-07-27'),
(1788, 178, '2020-07-27'),
(1789, 583, '2020-07-27'),
(1790, 44, '2020-07-27'),
(1791, 1, '2020-07-27'),
(1792, 21, '2020-07-27'),
(1793, 32, '2020-07-27'),
(1794, 575, '2020-07-27'),
(1795, 436, '2020-07-27'),
(1796, 27, '2020-07-27'),
(1797, 48, '2020-07-27'),
(1798, 576, '2020-07-27'),
(1799, 585, '2020-07-27'),
(1800, 51, '2020-07-27'),
(1801, 543, '2020-07-27'),
(1802, 39, '2020-07-27'),
(1803, 400, '2020-07-27'),
(1804, 398, '2020-07-27'),
(1805, 399, '2020-07-27'),
(1806, 87, '2020-07-27'),
(1807, 27, '2020-07-27'),
(1808, 30, '2020-07-27'),
(1809, 46, '2020-07-27'),
(1810, 543, '2020-07-27'),
(1811, 42, '2020-07-27'),
(1812, 584, '2020-07-27'),
(1813, 579, '2020-07-27'),
(1814, 24, '2020-07-27'),
(1815, 42, '2020-07-28'),
(1816, 43, '2020-07-28'),
(1817, 296, '2020-07-28'),
(1818, 2, '2020-07-28'),
(1819, 297, '2020-07-28'),
(1820, 3, '2020-07-28'),
(1821, 296, '2020-07-28'),
(1822, 293, '2020-07-28'),
(1823, 543, '2020-07-28'),
(1824, 56, '2020-07-28'),
(1825, 44, '2020-07-28'),
(1826, 583, '2020-07-28'),
(1827, 584, '2020-07-28'),
(1828, 207, '2020-07-28'),
(1829, 584, '2020-07-28'),
(1830, 527, '2020-07-28'),
(1831, 584, '2020-07-28'),
(1832, 41, '2020-07-28'),
(1833, 51, '2020-07-28'),
(1834, 583, '2020-07-28'),
(1835, 529, '2020-07-28'),
(1836, 57, '2020-07-29'),
(1837, 24, '2020-07-29'),
(1838, 519, '2020-07-29'),
(1839, 543, '2020-07-29'),
(1840, 543, '2020-07-29'),
(1841, 584, '2020-07-29'),
(1842, 584, '2020-07-29'),
(1843, 583, '2020-07-29'),
(1844, 44, '2020-07-29'),
(1845, 44, '2020-07-29'),
(1846, 44, '2020-07-29'),
(1847, 590, '2020-07-29'),
(1848, 581, '2020-07-29'),
(1849, 580, '2020-07-29'),
(1850, 543, '2020-07-29'),
(1851, 102, '2020-07-29'),
(1852, 87, '2020-07-29'),
(1853, 207, '2020-07-29'),
(1854, 44, '2020-07-29'),
(1855, 584, '2020-07-29'),
(1856, 575, '2020-07-29'),
(1857, 163, '2020-07-29'),
(1858, 582, '2020-07-29'),
(1859, 374, '2020-07-29'),
(1860, 583, '2020-07-29'),
(1861, 584, '2020-07-29'),
(1862, 163, '2020-07-29'),
(1863, 44, '2020-07-29'),
(1864, 374, '2020-07-29'),
(1865, 207, '2020-07-29'),
(1866, 582, '2020-07-29'),
(1867, 575, '2020-07-29'),
(1868, 583, '2020-07-29'),
(1869, 47, '2020-07-29'),
(1870, 92, '2020-07-29'),
(1871, 87, '2020-07-29'),
(1872, 55, '2020-07-29'),
(1873, 523, '2020-07-29'),
(1874, 75, '2020-07-29'),
(1875, 77, '2020-07-29'),
(1876, 95, '2020-07-30'),
(1877, 223, '2020-07-30'),
(1878, 227, '2020-07-30'),
(1879, 53, '2020-07-30'),
(1880, 285, '2020-07-30'),
(1881, 584, '2020-07-30'),
(1882, 543, '2020-07-30'),
(1883, 76, '2020-07-30'),
(1884, 10, '2020-07-30'),
(1885, 14, '2020-07-30'),
(1886, 37, '2020-07-30'),
(1887, 120, '2020-07-30'),
(1888, 55, '2020-07-31'),
(1889, 43, '2020-07-31'),
(1890, 373, '2020-07-31'),
(1891, 127, '2020-07-31'),
(1892, 589, '2020-07-31'),
(1893, 2, '2020-07-31'),
(1894, 2, '2020-07-31'),
(1895, 2, '2020-07-31'),
(1896, 203, '2020-07-31'),
(1897, 429, '2020-07-31'),
(1898, 68, '2020-07-31'),
(1899, 594, '2020-07-31'),
(1900, 595, '2020-07-31'),
(1901, 597, '2020-07-31'),
(1902, 598, '2020-07-31'),
(1903, 597, '2020-07-31'),
(1904, 596, '2020-07-31'),
(1905, 547, '2020-07-31'),
(1906, 1, '2020-07-31'),
(1907, 543, '2020-07-31'),
(1908, 203, '2020-07-31'),
(1909, 203, '2020-07-31'),
(1910, 203, '2020-07-31'),
(1911, 203, '2020-07-31'),
(1912, 582, '2020-07-31'),
(1913, 44, '2020-07-31'),
(1914, 131, '2020-07-31'),
(1915, 584, '2020-07-31'),
(1916, 583, '2020-07-31'),
(1917, 582, '2020-07-31'),
(1918, 575, '2020-07-31'),
(1919, 49, '2020-08-01'),
(1920, 38, '2020-08-01'),
(1921, 593, '2020-08-01'),
(1922, 589, '2020-08-01'),
(1923, 590, '2020-08-01'),
(1924, 591, '2020-08-01'),
(1925, 592, '2020-08-01'),
(1926, 598, '2020-08-01'),
(1927, 570, '2020-08-01'),
(1928, 569, '2020-08-01'),
(1929, 574, '2020-08-01'),
(1930, 572, '2020-08-01'),
(1931, 571, '2020-08-01'),
(1932, 62, '2020-08-01'),
(1933, 588, '2020-08-01'),
(1934, 565, '2020-08-01'),
(1935, 564, '2020-08-01'),
(1936, 566, '2020-08-01'),
(1937, 563, '2020-08-01'),
(1938, 568, '2020-08-01'),
(1939, 567, '2020-08-01'),
(1940, 587, '2020-08-01'),
(1941, 573, '2020-08-01'),
(1942, 578, '2020-08-01'),
(1943, 576, '2020-08-01'),
(1944, 579, '2020-08-01'),
(1945, 577, '2020-08-01'),
(1946, 597, '2020-08-01'),
(1947, 581, '2020-08-01'),
(1948, 580, '2020-08-01'),
(1949, 596, '2020-08-01'),
(1950, 547, '2020-08-01'),
(1951, 586, '2020-08-01'),
(1952, 587, '2020-08-01'),
(1953, 102, '2020-08-01'),
(1954, 594, '2020-08-01'),
(1955, 595, '2020-08-01'),
(1956, 17, '2020-08-01'),
(1957, 50, '2020-08-01'),
(1958, 54, '2020-08-01'),
(1959, 46, '2020-08-01'),
(1960, 400, '2020-08-02'),
(1961, 400, '2020-08-02'),
(1962, 36, '2020-08-02'),
(1963, 1, '2020-08-02'),
(1964, 17, '2020-08-02'),
(1965, 543, '2020-08-02'),
(1966, 543, '2020-08-02'),
(1967, 543, '2020-08-02'),
(1968, 543, '2020-08-02'),
(1969, 543, '2020-08-02'),
(1970, 548, '2020-08-02'),
(1971, 547, '2020-08-02'),
(1972, 586, '2020-08-02'),
(1973, 581, '2020-08-03'),
(1974, 583, '2020-08-05'),
(1975, 583, '2020-08-05'),
(1976, 583, '2020-08-05'),
(1977, 583, '2020-08-05'),
(1978, 583, '2020-08-05'),
(1979, 583, '2020-08-05'),
(1980, 50, '2020-08-05'),
(1981, 50, '2020-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Services and support of&nbsp;<span style="font-weight: bolder;">Palkimart.com</span>&nbsp;is awesome. i am giving ***** for this sites.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Services and support of&nbsp;<span style="font-weight: bolder;">Palkimart.com</span>&nbsp;is awesome. i am giving ***** for this sites.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Services and support of <b>Palkimart.com</b> is awesome. i am giving ***** for this sites.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers'),
(19, 'Order Tracking & CRM', 'orders , customers , product_discussion , blog , messages , social_settings , seo_tools , subscribers'),
(20, 'Site maintenance & Logistic Entry', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , bulk_product_upload , product_discussion , blog , messages , home_page_settings , menu_page_settings , social_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=UA-168812214-1"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(''js'', new Date());\r\n\r\n  gtag(''config'', ''UA-168812214-1'');\r\n</script>', 'palki,palkimart,online shopping,retail bangladesh,grocery shopping,groceryshop,grocery and food,home delivery.online grocery,vendor,seller,dhaka,');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Buy Above 1200 Tk', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Reliable & Secure Payment', '1561348138service2.png'),
(4, 0, 'RETURN POLICY', 'Convenient Return Policy', '1561348143service3.png'),
(5, 0, '+880 1771 088 100', '24/7 Help Centre', '1561348147service4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png'),
(10, 22, 'home service', 'tdtrdhygjhbjkjn', '1591611956fiver 2.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(2-3 days)', 0),
(2, 0, 'Express Shipping', 'Next Day', 45),
(3, 0, 'Instant Shipping', 'Same day', 70);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(11, 'Quality & Convenient Shop', '44', '#fa1b16', 'slideInUp', 'Enjoy 02% Discount', '34', '#0c0cc5', 'rollIn', 'Code: " palkimart "', '10', '#860fe1', 'flip', '1593166094Banner1-slider-1.png', 'slide-one', 'https://palkimart.com'),
(19, 'STAY SAFE', '80', '#11ca1e', 'rollIn', 'PERSONAL PROTECTIVE EQUIPMENT', '38', '#f1b22c', 'fadeInUp', 'WITH ALL YOUR AUTHENTIC PRODUCTS', '18', '#342bdd', 'fadeIn', '1592498411baner-2.png', 'slide-three', 'https://palkimart.com/'),
(20, 'FRESH VEGETABLES', '58', '#17941d', 'rollIn', 'FOR YOU & YOUR FAMILY', '30', '#2eeb5b', 'slideInUp', 'YOUR TRUSTED PARTNER', NULL, '#344198', 'fadeIn', '1592500392baner-3.png', 'slide-one', 'https://palkimart.com/category/Dairy--Fresh-Produce'),
(21, 'ORGANIC HONEY NOW 10% OFF', '40', '#ee0e35', 'rollIn', 'FOR YOUR DAILY HEALTH ESSENTIAL', '25', '#da1de4', 'fadeIn', 'MAKE YOUR DAY HEALTHY', '20', '#3696d8', 'fadeIn', '1593181390honey-organic-slider-ne.png', 'slide-three', 'https://palkimart.com/category/Organic--Deshi-Ponnyo/LOCAL-HONEY'),
(22, 'M/S. Tanha Fabrics', '25', '#fafafa', 'fadeIn', 'Get up to 40% Off', '60', '#ffffff', 'fadeIn', 'Best Choice for You', '35', '#f7f4f4', 'fadeIn', '15932804331564224753007.jpg', 'slide-one', 'google.com'),
(26, 'Garden Fresh Mango', '40', '#ec0d0d', 'fadeIn', 'Fill pre order form', '25', '#2e11e3', 'fadeIn', 'organic fruit', '20', '#3ee256', 'fadeIn', '1593290538chlider-ne-mango.png', 'slide-one', 'https://palkimart.com'),
(27, 'Grab your Best Deal', '50', '#49b52c', 'rollIn', 'Your Ultimate Demand', '30', '#f31e9a', 'flip', NULL, NULL, '#000000', 'flipInX', '1593783275grab-offer.png', 'slide-one', 'google.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/Palkimartcom-112123187207385/?modal=admin_todo_tour', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 0, 1, 1, '1987343404730129', '952352ec7f42d95a2290e7891d2b2302', 'https://palkimart.com/auth/facebook/callback', '788201934259-p0a726i0aoq98cjd40ts96d4jhbrd3fn.apps.googleusercontent.com', 'mUuwwYj22GLOwCFumzw7H8wY', 'https://palkimart.com/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 110, '116007179028350567127', 'google', '2020-07-30 00:49:30', '2020-07-30 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(19, 37, 'BABY FOOD', 'BABY-FOOD', 1),
(20, 37, 'BABY NEEDS', 'BABY-NEEDS', 1),
(21, 37, 'BABY HYGIENE', 'BABY-HYGIENE', 1),
(22, 39, 'DAIRY', 'DAIRY', 1),
(23, 37, 'BABY ACCESSORIES', 'BABY-ACCESSORIES', 1),
(24, 37, 'TOYS', 'TOYS', 1),
(25, 39, 'VEGETABLE', 'VEGETABLE', 1),
(26, 39, 'FRUITS', 'FRUITS', 1),
(27, 42, 'BEVERAGE', 'BEVERAGE', 1),
(28, 42, 'CONDIMENTS', 'CONDIMENTS', 1),
(29, 42, 'CEREALS', 'CEREALS', 1),
(30, 42, 'FOOD SPREADS', 'FOOD-SPREADS', 1),
(31, 42, 'QUICK FOOD', 'QUICK-FOOD', 1),
(32, 42, 'BAKING NEEDS', 'BAKING-NEEDS', 1),
(33, 42, 'MILK', 'MILK', 1),
(35, 42, 'FROZEN FOOD', 'FROZEN-FOOD', 1),
(36, 41, 'COMMODITIES', 'COMMODITIES', 1),
(37, 41, 'COOKING OIL', 'COOKING-OIL', 1),
(38, 41, 'RICE', 'RICE', 1),
(39, 41, 'LENTILS', 'LENTILS', 1),
(40, 41, 'SPICES', 'SPICES', 1),
(41, 43, 'CLEANING NEEDS', 'CLEANING-NEEDS', 1),
(42, 43, 'HOME ESSENTIAL', 'HOME-ESSENTIAL', 1),
(43, 43, 'CLEANING ACCESSORIES', 'CLEANING-ACCESSORIES', 1),
(44, 44, 'FACE CARE', 'FACE-CARE', 1),
(45, 44, 'HAIR CARE', 'HAIR-CARE', 1),
(46, 44, 'ORAL CARE', 'ORAL-CARE', 1),
(47, 44, 'BODY CARE', 'BODY-CARE', 1),
(48, 44, 'DEODORANT & PERFUME', 'DEODORANT--PERFUME', 1),
(49, 44, 'SHAVING CARE', 'SHAVING-CARE', 1),
(50, 44, 'MEDICINE', 'MEDICINE', 1),
(51, 44, 'LIVING', 'LIVING', 1),
(52, 40, 'FISH', 'FISH', 1),
(53, 40, 'MEAT', 'MEAT', 1),
(54, 46, 'STATIONERY', 'STATIONERY', 1),
(55, 46, 'BOOKS', 'BOOKS', 1),
(56, 49, 'GIFT ITEM', 'GIFT-ITEM', 1),
(57, 49, 'PARTY NEEDS', 'PARTY-NEEDS', 1),
(58, 49, 'HOME MACHINERY', 'HOME-MACHINERY', 1),
(59, 49, 'HOME DECOR', 'HOME-DECOR', 1),
(60, 49, 'FURNITURE', 'FURNITURE', 1),
(61, 47, 'PET FOOD', 'PET-FOOD', 1),
(62, 47, 'PET ACCESSORIES', 'PET-ACCESSORIES', 1),
(63, 48, 'MOBILE', 'MOBILE', 1),
(64, 48, 'GADGET', 'GADGET', 1),
(65, 48, 'LAPTOP', 'LAPTOP', 1),
(66, 48, 'DESKTOP', 'DESKTOP', 1),
(67, 48, 'COMPONENT', 'COMPONENT', 1),
(68, 48, 'MOBILE ACCESSORIES', 'MOBILE-ACCESSORIES', 1),
(69, 48, 'COMPUTER ACCESSORIES', 'COMPUTER-ACCESSORIES', 1),
(70, 45, 'COSMETICS', 'COSMETICS', 1),
(71, 45, 'LADIES FASHION', 'LADIES-FASHION', 1),
(72, 45, 'GENTS FASHION', 'GENTS-FASHION', 1),
(73, 44, 'SANITERY NAPKIN', 'SANITERY-NAPKIN', 1),
(74, 20, 'LOCAL HONEY', 'LOCAL-HONEY', 1),
(75, 20, 'LOCAL MUSTURD OIL', 'LOCAL-MUSTURD-OIL', 1),
(76, 20, 'DESHI RICE', 'DESHI-RICE', 1),
(77, 20, 'DESHI GUR', 'DESHI-GUR', 1),
(78, 20, 'HOME MADE GHEE', 'HOME-MADE-GHEE', 1),
(79, 20, 'HOME MADE', 'HOME-MADE', 1),
(80, 42, 'SNACKS', 'SNACKS', 1),
(81, 42, 'HEALTH FOOD', 'HEALTH-FOOD', 1),
(82, 42, 'CANNED FOOD', 'CANNED--FOOD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'sibbir007@gmail.com'),
(2, 'kayedislam@gmail.com'),
(3, 'mohsinkg0703@gmail.com'),
(4, 'mamunprs@gmail.com'),
(5, 'yousuf69@gmail.com'),
(6, 'abuahmedsuman@gmail.com'),
(7, 'afrosedil@yahoo.com'),
(8, 'muhebbur1977@gmail.com'),
(9, 'khondokarmasu@gmail.com'),
(10, 'sanjanashifat420@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'USD', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.'),
(6, 'Premium', '$', 'USD', 800, 180, 60, '<div>* Max. 60 Product are allowed for Store.</div><div>* 800 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 03 (Three) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.'),
(7, 'Unlimited', '$', 'USD', 1200, 365, 0, '<div>* Unlimited Products are allowed for Store.</div><div>* 1200 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 05 (five) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div><div>* Admin will notify 5 day before over of subscription days. <br></div>'),
(8, 'Basic', '$', 'USD', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Algeria', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', '3HYbCFIVHZN64R1vQTSn3MoiV9KF8Dq1chEtrdRFlaOgzbjo8rimGvWLgpaH', '2018-03-07 18:05:44', '2020-06-23 14:36:12', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4444.62, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', '<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 4998.02, '2019-11-24', 0),
(22, 'User', NULL, '1231', 'Test City', 'United States', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', '6eqe5yLoLhFJ85bsiSSVy34BMhUafDoYBjhDRKY3EeKKeXUKJczJYXqeTCa3', '2019-06-20 12:26:24', '2020-06-20 02:49:09', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 25, 'pikus shop', 'anika khatun1', '12345', 'afafa', '5678', 'plz approve me', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2021-06-20', 0),
(90, 'Anika', NULL, NULL, NULL, NULL, 'mirpur6', '01957656407', NULL, 'anikakhatun982@gmail.com', '$2y$10$lI4CA9U7oI.vNcnnvUoxpueeyYw5ZThNbIYSNdn.rQpQae5Aj3CgW', 'ihl2CPNXItezCtEC5r5ToibjXSSsxw2iwquSiiN51hbCrcvCq7urd1nc9YJg', '2020-06-17 10:42:48', '2020-06-22 03:18:48', 0, 0, '44c5f2eb7690ce037a2d2a44bfd0d993', 'Yes', '6850af7e114a68c1bbe4f9ced3f1c177', 6.5813999999999995, 'ANAMIKA SHOP', 'Anika Khatun2', 'fg45687', 'mirpur-06', '4567893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2020-12-19', 0),
(102, 'Sourav Rahman', NULL, NULL, NULL, NULL, 'Mirpur-10', '01719402696', NULL, 'souravrahman2016@gmail.com', '$2y$10$u3hz4.zxMz/O3CA5NPz1ce998Q9bxE7HUJdekC8aaR9lKke8WZ0xm', NULL, '2020-06-24 05:33:47', '2020-06-24 05:35:01', 0, 0, 'eb3989677b99638a9dbe4970932755d4', 'Yes', '939055bff62a62531ffbc3ec48ea8580', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(105, 'SIBBIR AHMED', NULL, NULL, NULL, NULL, 'MIRPUR 01', '01675108504', NULL, 'sibbir007@gmail.com', '$2y$10$Wf.HbSx6COG4HbhA39niS.J3.u945Aj62bNf9dpo4JUMfMnegxZXO', NULL, '2020-07-03 03:22:24', '2020-07-03 03:22:24', 0, 0, '8519abc2500ba7a547616f45d35882d0', 'No', '73d2811137da963a37863e57c7057d3c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(106, 'Rifat', NULL, NULL, NULL, NULL, 'Dhaka', '01820431890', NULL, 'rifathmed1@gmail.com', '$2y$10$4fs/.TqykzClwSQoCcgvnORCkUv/A8Z.YQ2xTOXI4ypFOlUROP33u', 'VodUZtpu46LoVKbyehBN0mOetYw6UJvezifX0jgae3u2MRnT4jgaP44uDG65', '2020-07-03 03:25:38', '2020-07-03 03:25:38', 0, 0, '4fa4c475e80182234c33a0b225637d64', 'No', 'd0af4d9993cc3e4687bfb210793a15d3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(107, 'Rifat ahmed', NULL, NULL, NULL, NULL, 'ghjkhjk', '01771 088 100', NULL, 'sibbir@palkimart.com', '$2y$10$yAJRYfCU4fe6GzBX6NNlNu6fy8vwZMk89BBQ/gqeHA90lcvAIEbFW', 'bgaqNdvvtz4pitgfSIMyYNOp4twYkPdXxxkB97RQqiuJE6NvrUO1RH4AIFNg', '2020-07-16 13:39:15', '2020-07-16 13:39:15', 0, 0, '3152ab1c77bff388f7efd934c99a6719', 'Yes', '696757b11a3b01c5a9b54944e9d9415e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(108, 'Ahsanul Haque', '1595003097ND-33504.jpg', '1216', 'Dhaka', 'Bangladesh', '647/4 West Kazipara, Mirpur 10', '01620853330', NULL, 'ahsanul137@gmail.com', '$2y$10$4uoIVX4lVJKUkENPe1nxpOS.X7LJBo6YTe/R2f7zp/e7gceWzLGF6', NULL, '2020-07-17 07:38:25', '2020-07-17 10:24:57', 0, 0, 'dbe314852dfc5c3f3c1dcdc71a7c8d9c', 'Yes', '1c56cea99406086a962509b95b9dcb5f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(109, 'zahid hasan', NULL, NULL, NULL, NULL, '21/S. DU R/A. North Nilkhet dhaka.', '09883749238', NULL, 'zahid.hasan6@gmail.com', '$2y$10$Qis1v6vjeQujXxXX9dvxneIxgGTyayvWFuAiWp5fiX8fpPUMCI4om', NULL, '2020-07-24 10:50:22', '2020-07-24 10:50:22', 0, 0, '17ce7765a6aa9297a6ab8d45fbc909ab', 'Yes', '21722de9b6ffbcd6092d3296fec950a2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(110, 'Masu Khondokar', 'https://lh5.googleusercontent.com/-cADXf_q7pKk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnKnOSRyxan0AH-nQwvebYMJh3ukg/photo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'khondokarmasu@gmail.com', NULL, NULL, '2020-07-30 00:49:30', '2020-07-30 00:49:30', 1, 0, NULL, 'Yes', '903fe84132fee6967f70f356f2d51325', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'YBqY1591545833', 1, '2020-06-07 10:03:53', '2020-06-20 01:22:27'),
(2, 13, 'QRUN1591549076', 1, '2020-06-07 10:57:56', '2020-06-20 01:22:27'),
(3, 13, 'O2nV1592054368', 1, '2020-06-13 07:19:28', '2020-06-20 01:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 02:35:29', '2020-06-22 01:13:55', 1, NULL),
(86, 22, 8, 'Basic', '$', 'USD', 0, 30, 12, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-06-08 00:14:28', '2020-06-22 01:12:54', 1, NULL),
(87, 90, 8, 'Basic', 'Tk.', 'Taka', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 01:11:57', '2020-06-22 01:12:54', 0, NULL),
(88, 90, 8, 'Basic', 'Tk.', 'Taka', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 01:16:30', '2020-06-22 01:12:54', 0, NULL),
(89, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 01:43:09', '2020-06-22 01:13:55', 0, NULL),
(90, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 01:48:58', '2020-06-22 01:13:55', 0, NULL),
(91, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 02:19:27', '2020-06-22 01:13:55', 0, NULL),
(92, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-20 02:22:01', '2020-06-22 01:13:55', 1, NULL),
(93, 90, 6, 'Premium', '৳', 'BDT', 800, 180, 60, '<div>* Max. 60 Product are allowed for Store.</div><div>* 800 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 03 (Three) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 02:27:09', '2020-06-22 01:13:29', 0, NULL),
(94, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 02:30:20', '2020-06-22 01:13:55', 0, NULL),
(95, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-20 02:47:07', '2020-06-22 01:13:55', 1, NULL),
(96, 90, 8, 'Basic', '৳', 'BDT', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-20 02:47:49', '2020-06-22 01:12:54', 1, NULL),
(97, 22, 7, 'Unlimited', '৳', 'BDT', 1200, 365, 0, '<div>* Unlimited Products are allowed for Store.</div><div>* 1200 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 05 (five) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div><div>* Admin will notify 5 day before over of subscription days. <br></div>', 'Free', NULL, NULL, '2020-06-20 02:49:09', '2020-06-22 01:13:17', 1, NULL),
(98, 22, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 02:52:53', '2020-06-22 01:13:55', 0, NULL),
(99, 22, 8, 'Basic', '৳', 'BDT', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-20 02:54:29', '2020-06-22 01:12:54', 0, NULL),
(102, 90, 5, 'Standard', '৳', 'BDT', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-22 01:05:09', '2020-06-22 01:13:55', 1, NULL),
(103, 90, 8, 'Basic', '$', 'USD', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-22 01:14:11', '2020-06-22 01:14:11', 0, NULL),
(104, 90, 5, 'Standard', '$', 'USD', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-22 02:56:38', '2020-06-22 02:56:38', 0, NULL),
(105, 90, 5, 'Standard', '$', 'USD', 500, 150, 25, '<div>* Max. 25 Product are allowed for Store.</div><div>* 500 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 2 (Two) products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-22 02:57:41', '2020-06-22 02:57:41', 1, NULL),
(106, 90, 8, 'Basic', '$', 'USD', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-22 03:14:53', '2020-06-22 03:14:53', 0, NULL),
(107, 90, 8, 'Basic', '$', 'USD', 300, 60, 12, '<div>* Max. 12 Product are allowed for Store.</div><div>* 300 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* No products Display in Front end page with Highlighting marks.</div><div>* 3% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-22 03:17:57', '2020-06-22 03:17:57', 1, NULL),
(108, 90, 6, 'Premium', '$', 'USD', 800, 180, 60, '<div>* Max. 60 Product are allowed for Store.</div><div>* 800 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 03 (Three) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'paypal', NULL, NULL, '2020-06-22 03:18:23', '2020-06-22 03:18:23', 0, NULL),
(109, 90, 6, 'Premium', '$', 'USD', 800, 180, 60, '<div>* Max. 60 Product are allowed for Store.</div><div>* 800 Tk have to pay to allow this subscription as subscription Charge (Non Refundalble).</div><div>* 03 (Three) products Display in Front end page with Highlighting marks.</div><div>* 2% Commission on sales have to pay monthly.<br></div>* Admin will notify 5 day before over of subscription days.', 'Free', NULL, NULL, '2020-06-22 03:18:48', '2020-06-22 03:18:48', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(1, 13, 1, 1, 320, 'YBqY1591545833', 'pending'),
(2, 13, 2, 1, 110, 'QRUN1591549076', 'pending'),
(3, 13, 2, 1, 51, 'QRUN1591549076', 'pending'),
(4, 13, 4, 1, 120, 'O2nV1592054368', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Pending', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2020-06-23 11:35:35'),
(5, 100, '15929338051.PNG,15929338051 user ignup.PNG', 'Verified', 'dfhidjhkldjfklg dlfkgj lkdjflkgj kdfjgl kjkldjf g', 0, 'plz verified', '2020-06-23 11:20:19', '2020-06-23 11:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(1, 90, 33);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 22, 'Paypal', 'xcvfsbs@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, -49.31, 50, '2020-06-15 19:35:32', '2020-06-15 19:38:47', 'completed', 'user'),
(2, 22, 'Paypal', 'sfgdfgdf@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, -48.85, 50, '2020-06-15 19:40:39', '2020-06-15 19:41:55', 'rejected', 'user'),
(3, 22, 'Payoneer', 'xffdh@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 4913, 50, '2020-06-15 20:09:34', '2020-06-15 20:11:01', 'completed', 'user'),
(4, 13, 'Paypal', 'dghfg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, -29.75, 50, '2020-06-17 07:44:21', '2020-06-17 07:44:21', 'pending', 'user'),
(5, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -29.75, 50, '2020-06-17 09:01:44', '2020-06-17 09:02:22', 'rejected', 'user'),
(6, 13, 'paypal', 'dfgdg@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, -39.87, 50, '2020-06-17 09:05:07', '2020-06-17 09:05:07', 'pending', 'user'),
(7, 13, 'paypal', 'asdad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, -45, 50, '2020-06-17 09:20:08', '2020-06-17 10:24:48', 'completed', 'user'),
(15, 13, 'paypal', 'dghfg@gmail.com', NULL, NULL, NULL, NULL, NULL, 'My Bkah Number id 01675108504 plz end me the 500 tk', 425, 75, '2020-06-17 13:26:04', '2020-06-17 13:26:04', 'pending', 'user'),
(16, 13, 'paypal', 'bkash 123456', NULL, NULL, NULL, NULL, NULL, NULL, -31, 51, '2020-06-17 14:09:08', '2020-06-17 14:09:08', 'pending', 'user'),
(17, 13, 'paypal', '0169504568', NULL, NULL, NULL, NULL, NULL, NULL, 92.5, 57.5, '2020-06-17 15:03:57', '2020-06-17 15:07:15', 'rejected', 'user'),
(18, 13, 'Bkash', '1695444', NULL, NULL, NULL, NULL, NULL, NULL, 92.5, 57.5, '2020-06-17 15:06:30', '2020-06-17 15:07:11', 'rejected', 'user'),
(19, 13, 'Paypal', 'dfgdfgd@gmail.com', NULL, NULL, NULL, NULL, NULL, 'tert', 45, 55, '2020-06-20 07:23:56', '2020-06-20 07:24:33', 'rejected', 'vendor'),
(20, 13, 'Bkash', '0356789777', NULL, NULL, NULL, NULL, NULL, 'fghfhfh', 45, 55, '2020-06-23 20:36:12', '2020-06-23 20:36:12', 'pending', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;
--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1982;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
