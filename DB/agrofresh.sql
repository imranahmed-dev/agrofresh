-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 04:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrofresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_admin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `description`, `status`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'সরিষার তেল – প্রতি ফোঁটায় বিশদ্ধতার ছোঁয়া', 'সরিষার-তেল-–-প্রতি-ফোঁটায়-বিশদ্ধতার-ছোঁয়া', 'public/images/blogs/5fc6554d23249.jpeg', '<p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">ভোজ্য তেল হিসেবে কোন তেল বেছে নিবো সেটা নিয়ে বরাবরই আমরা সিদ্ধান্তহীনতায় ভুগি। কারন খাবার হিসেবে আমরা যে তেল ব্যবহার করবো আমাদের শরীরে তার বড় ধরনের ইম্প্যাক্ট পড়ে। তেলের কথা ভাবলেই প্রথমে যে কথাটি আমাদের মাথায় আসে তা হলো, আমরা যে তেল কিনছি সেগুলো কি আসলেই খাঁটি? অস্বাস্থ্যকর তেল আমাদের পেটের পীড়া বাড়ায়, হজমে সমস্যা হয়, এমনকি কোষ্ঠকাঠিন্যেও ঝামেলা হয়। এতে সাধারণ মানুষ দীর্ঘস্থায়ী রোগে আক্রান্ত হয়।কয়েক দশক আগেও মানুষ ভোজ্য তেল হিসেবে সরিষার তেল ব্যবহার করতো।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">এই তেলের কথা ভাবলেই স্মৃতিপটে ভেসে ওঠে কাঠের ঘানিতে দুইটা গরু বাধা তারা ঘুরছে চারদিকে আর সরিষা থেকে তেল বের হচ্ছে। এ যেন বাংলার চিরাচরিত চিত্র। এই তেল বাঙালী রসনার অত্যাবশকীয় অনুষঙ্গ। ভর্তা, ভাজি, ভুনা যাই হোক না কেন এই তেল দিয়ে রান্না করাটা যেন আমাদের নিত্যদিনের চাহিদা। প্রাচীনকাল থেকে এই তেল তৈরি করা হয় ঘানিতে। কিন্তু বর্তমান যুগে প্রযুক্তির ছোঁয়ায় হারিয়ে যেতে বসেছে ঘানি ভাঙা সরিষার তেল। আপনাদেরকে খাঁটি ঘানি ভাঙা তেলের স্বাদ দিতে আমরা সরবরাহ করছি বিশুদ্ধ সরিষার তেল।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">এই তেল যেমন প্রয়োজনীয় তেমন উপকারীও। ভারতীয় উপমহাদেশে খ্রিষ্টপূর্ব ৩০০০ থেকে&nbsp;<a href=\"https://bn.wikipedia.org/wiki/%E0%A6%B8%E0%A6%B0%E0%A6%BF%E0%A6%B7%E0%A6%BE\" rel=\"no-follow\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px; color: rgb(63, 63, 63); transition: all 0.25s ease 0s;\">সরিষার</a>&nbsp;ব্যবহার হয়ে আসছে। অন্ত্রে পাচকরস উৎপাদনে সাহায্য করায় হজমপ্রক্রিয়া দ্রুত হয়। এ ছাড়া একই প্রক্রিয়ায় ক্ষুধা বৃদ্ধিতে সহায়তা করে।ওমেগা আলফা ৩ ও ওমেগা আলফা ৬ ফ্যাটি অ্যাসিড, ভিটামিন ই ও অ্যান্টিঅক্সিডেন্টের সমৃদ্ধ উৎস হওয়ায় এই তেলকে স্বাস্থ্যকর তেল বলা হয়।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">বিভিন্ন ভোজ্য তেলের ওপর করা একটি তুলনামূলক সমীক্ষায় দেখা যায়, সরিষার তেল ৭০ শতাংশ হৃৎপিণ্ড–সংক্রান্ত রোগের ঝুঁকি কমায়। সরিষার তেল ব্যবহারে শরীরে কোলেস্টেরলের মাত্রা হ্রাস পায়, যা হৃদ্​রোগের আশঙ্কা কমিয়ে দেয়। প্রচুর অ্যান্টিঅক্সিডেন্ট থাকায় ক্যান্সার হওয়ার আশঙ্কাও কমায়।</p>', 1, 1, '2020-12-01 08:38:05', '2020-12-01 08:38:05'),
(2, 'খেঁজুরের গুঁড় নিয়ে যত কথা', 'খেঁজুরের-গুঁড়-নিয়ে-যত-কথা', 'public/images/blogs/5fc655823d5dc.jpeg', '<article id=\"post-7599\" class=\"post-single-page post-7599 post type-post status-publish format-standard has-post-thumbnail hentry category-food\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; text-align: center; color: rgb(119, 119, 119);\"><div class=\"article-inner\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\"><div class=\"article-body-container\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; text-align: left;\"><div class=\"entry-content woodmart-entry-content\" style=\"box-sizing: border-box; margin: 0px 0px 60px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">দিনবদলের পরিক্রমায় বাংলায় চলে এসেছে শীতকাল। শীতকাল আসলেই মাসুষের জীবনধারায় আসে নানা ধরনের পরিবর্তন। শীত আসলেই শুরু হয় নবান্ন উৎসব। প্রতিটি গ্রামের পাড়ায় পাড়ায় পড়ে যায় পিঠা-পুলি খাওয়ার ধুম। বর্তমান আধুনিক সময়ে এসে শীতের পিঠা-পুলি এখন রাস্তার মোড়ে মোড়ে পাওয়া যায়। শীতকাল আসলে সবচেয়ে বেশি যে খাবারটির কথা মনে পড়ে সেটি হলো খেঁজুরের গুঁড়। সব জেলাতে খেঁজুরের গুঁড় পাওয়া না গেলেও দক্ষিণ বঙ্গের কিছু কিছু জেলাতে খেঁজুরের রস পাওয়া যায় শীতকাল আসলেই। সবচেয়ে বেশি খেঁজুরের রস উৎপাদিত হয় যশোর, চুয়াডাঙ্গা, ঝিনাইদহ, ফরিদপুর, মাদারীপুর, শরীয়তপুর, কুষ্টিয়া ও মাগুরা জেলাতে। ঢাকা খুলনা মহাসড়ক ধরে যাবার সময়ই রাস্তার পাশে সারি সারি খেঁজুর গাছ চোখে পড়ে। ১৯৪০ সালের দিকে বৃহত্তর ফরিদপুর জেলাতে এই শিল্পের দ্রুত প্রসার ঘটে। যা এই জেলাগুলোকে খেঁজুর রস উৎপাদনে খ্যাতি এনে দিয়েছে।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">খেঁজুরের রস মূলত আহরণ করা হয় খেঁজুর গাছ থেকে। রস সংগ্রহের পূর্বে অগ্রহায়ণের শেষের দিকে গাছের কান্ডের একেবারে উপরের অংশে পাতা ও ডালপালাগুলি পরিষ্কার করা হয়। এর কান্ডের নরম অংশে ধারালো ছুরি বা দা দিয়ে চেঁছে বাকল তুলে ফেলা হয়। এর সাত থেকে আট দিন পর পুনরায় পরিষ্কার করা হয় বা চাঁছা হয়। পরিষ্কার করা অংশে ছোট গর্ত করে বাঁশের তৈরী নল পুঁতে দেওয়া হয়। যাতে রস বের হয়ে নলে আসতে পারে। এরপর নলের দুইপাশে দুইটা খুটিমত পুঁতে দেওয়া হয় যা মাটির হাঁড়ি ঝুলানোর কাজে ব্যবহার করা হয়। হাঁড়িতে বাধা দড়ি দুই খুটিতে বেধে নল বরাবর ঝুলিয়ে রাখা হয় ফলে রস একদম নল বেয়ে সোজা হাঁড়িতে পড়ে। রস আহরণের সময়কালের উপর ভিত্তি করে রসকে তিনভাগে ভাগ করা হয় যথা জিড়ান, দোকাট ও ঝরা রস। প্রথম রাতে যে রস পাওয়া তা জিড়ান এভাবে দ্বিতীয় ও তৃতীয় দিন যে রস পাওয়া যায় তাকে দোকাট ও ঝরা রস বলে। খেজুরের রস কি পরিমান হবে তা নির্ভর করে আবহাওয়ার উপর। আবহাওয়া যদি শীতার্ত ও পরিচ্ছন্ন হয় তবে রস বেশি হয়। নভেম্বরে রস আহরণ শুরু হলেও জানুয়ারি মাসের দিকে সবচেয়ে বেশি পরিমানে রস পাওয়া যায়।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">যারা খেঁজুরের রস সংগ্রহ করেন ও গাছ কাটেন তাদের বলা হয় গাঁছি। এই গাঁছিরা প্রতিদিন সকালে ভোরে রস সংগ্রহ করে নিয়ে আসেন হাঁড়িতে। এরপর এই রসকে ছেঁকে নেয়া হয়। ছাঁকা রসকে বড় টিন বা কড়াই বা তাফালে ঢেলে জ্বাল দেওয়া হয়। এভাবে ক্রমাগত জ্বাল দিতে দিতে রস ঘন হয়ে যায়। আরো ঘন হলে একে বলা হয় ঝোলা গুঁড় এছাড়া ঘন এই গুড় দিয়ে বিভিন্ন আকৃতির পাটালিগুড় তৈরী করা হয়। খেঁজুরের&nbsp;<a href=\"https://www.khaasfood.com/product/khejur-gur-patali/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px; color: rgb(63, 63, 63); transition: all 0.25s ease 0s;\">গুঁড়</a>&nbsp;ধরন অনুযায়ী এই গুঁড়কে ঝোলা গুঁড় , দানাগুঁড় , পাটালিগুঁড় ও চিটাগুঁড় এই সকল ভাগে ভাগ করা হয়। খেজুরের রস ও গুড় খুবই সুস্বাদু। এই গুড় দিয়ে আমাদের দেশে নানা ধরনের ঐতিহ্যবাহী পিঠা কিংবা খাবার বানানো হয় যা স্বাদে ও ঘ্রাণে অতুলনীয়। তেমনি কয়েকটি খাবার হলো ভাপাপিঠা, পায়েস, ক্ষীর, দুধ চিতুই পিঠা, দুধ পুলি পিঠা, তালের পিঠা, গুঁড় জিলাপি, সেমাই, শরবত, গুড়ের চা ইত্যাদি। তবে বাংলাদেশে এই গুঁড় দিয়ে তৈরী খাবারের মধ্যে সর্বশ্রেষ্ঠ হলো ভাপা পিঠা। কৃষকের ঘরে নতুন ধান উঠার সাথে সাথেই সেই ধানের চাল দিয়ে তৈরী করা হয় ভাপা পিঠা। কুয়াশামাখা সকাল কিংবা শীতার্ত রাতে উনুনের পাশে বসে মায়ের হাতের ভাপা পিঠা খাওয়া যেন পৃথিবীর শ্রেষ্ঠ ভাললাগা। এছাড়া শীতকালে শহরের ওলি-গলিতে গড়ে ওঠে ছোট্ট ফোট্ট ভাপা পিঠার দোকান যেখান থেকে শহরের মানুষও তাদের তৃপ্তি মেটান। এই গুড় যেমনি সুস্বাদু তেমনি বহু পুষ্টিগুণে গুনান্বিত। গুরুত্বপূর্ণ কিছু পুষ্টিগুন সম্পর্কে আলোকপাত করা হলো।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">যারা মিষ্টিকে যমের মত ভয় পান তাদের জন্য এই গুড় একদম পারফেক্ট। কারন এই খেঁজুরের গুঁড় সম্পুর্ণ প্রাকৃতিক প্রক্রিয়ায় তৈরী করা হয় এবং একে সাদা করার জন্য কোনো হাইড্রোজ বা অন্য কেমিক্যাল যুক্ত করা হয়না ফলে এর রং ও স্বাদ থাকে অক্ষুন্ন। এই গুঁড় দেখতে বাদামী এবং খুবই স্বাস্থ্যকর। তাই যে কেউ নিশ্চিতে খেতে পারবেন এই গুড়। এছাড়া এই গুড়কে রিফাইনিং করা হয়না ফলে এটি থাকে শতভাগ নিরাপদ।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">শীতকাল আসলেই ত্বক অবস্থা খুব বাজে হয় যায়। বেশিরভাগ সময়ই ত্বক থাকে অমসৃণ। বিশেষজ্ঞদের মতে নিয়মিত এই গুড় খেলে ত্বকের উজ্জলতা বাড়বে এবং ত্বক হবে মসৃণ। কারন এতে রয়েছে নানা ধরনের ভিটামিন ও মিনারেল। এছাড়া যাদের মুখে ফুসকুড়ি ও ব্রণ হয় তারাও খেতে পারেন এই গুড়।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">যার দীর্ঘদিন যাবত কোষ্ঠাকঠিন্য রোগে ভুগছেন। তাদের জন্য দারুন একটি সমাধান হলো এই গুড়। কেউ যদি গুড় নিয়মিত খায় তবে তার দেহে পাচক ক্রিয়ায় ব্যবহৃত এনজাইমগুলো সক্রিয় হয়ে যাবে এবং ইলিমিনিনেশন প্রক্রিয়াকে ত্বরান্বিত করবে ফলে কোষ্ঠকাঠিন্য কমে যাবে সহজেই। দুপুরের খাবারের পর এক টুকরা পাটালি আপনার এই গুরুতর সমস্যাকে দূর করবে সহজেই।<br style=\"box-sizing: border-box;\">এই গুড় দেহের প্রাকৃতিক পরিষ্কারক হিসেবে কাজ করে। এটি নিয়মিত খেলে আমাদের লিভারে উপস্থিত বিষাক্ত পদার্থ সমুহ শরীর থেকে বের করতে সহায়তা করে। তাই বলা যায় এই গুড় আমাদের লিভারকে ডিটক্সিফাই করে দেয়।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\"><a href=\"https://health.clevelandclinic.org/5-foods-for-winter-weather/\" rel=\"nofollow\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px; color: rgb(63, 63, 63); transition: all 0.25s ease 0s;\">শীতকাল</a>&nbsp;আসলেই নিউমোনিয়া, ফ্লু, ঠান্ডা, কাশি ও জ্বর ইত্যাদি হওয়ার প্রকোপ বেড়ে যায়। এই সব সমস্যার সমাধান হচ্ছে গুড়। কেউ যদি এক টুকরা খেজুর গুড় কুসুম গরম পানিতে দিয়ে খায় তবে নিমেষেই দূর হবে ঠান্ডাজনিত সকল সমস্যা। তাছাড়া চায়ের সাথে চিনির বদলে এই গুড় খেতে পারেন।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">খেঁজুরের গুঁড়র সবচেয়ে সুপরিচিত উপকারীতা হলো এটি রক্ত পরিষ্কারক হিসেবে কাজ করে। নিয়মিতভাবে এবং পরিমিত পরিমানে এই খেঁজুরের গুঁড় খেলে খুব সহজেই আমাদের রক্ত পরিষ্কার হবে এবং রোগ হওয়ার সম্ভাবনাও অনেকটা কমে যাবে।<br style=\"box-sizing: border-box;\">এই গুড়ে রয়েছে প্রাকৃতিক অ্যান্টিঅক্সিডেন্টস ও মিনারেল যেমন জিংক ও সেলেনিয়াম যা আপনার দেহের ফ্রি র‌্যাডিকেলকে প্রশমিত করে দেয় এবং মারাত্বক রোগ যেমন ক্যান্সারের ঝুকি কমায়। সর্বোপরি দেহের রোগ প্রতিরোধ ক্ষমতা বাড়াতে বিশেষ ভূমিকা পালন করে।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">বিশেষ করে গর্ভবতী মহিলারা অ্যানিমিয়া বা রক্তস্বল্পতা নামক রোগে ভুগে থাকেন। এই রোগটি মূলত দেহে আয়রন ও ফলিক এসিডের অভাব হলে হয়ে থাকে। এই গুড়ে রয়েছে প্রচুর আয়রন ও ফোলেট যা রক্তের মূল উপাদান হিমোগ্লোবিন তৈরীর আসল যৌগ। হিমোগ্লোবিন যত বেশি তৈরী হবে তত বেশি রক্ত উৎপাদন হবে দেহে। ফলে রক্তস্বল্পতাও দুর হবে।<br style=\"box-sizing: border-box;\">তাছাড়া এই গুড়ে সোডিয়াম ও পটাসিয়াম নামক মিনারেল থাকায় রক্তচাপ নিয়ন্ত্রণ করে। হাড়ের জয়েন্টে ব্যাথা কমাতে সহায়তা করে।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">অনেকেই আছেন অতিরিক্ত দূষিত এলাকায় কাজ করেন। তাদের শরীর পরিষ্কারের জন্য এই গুড় একটি প্রাকৃতিক পরিষ্কারক। তাদের দেহ থেকে দূষিত বর্জ্য বের করে দেয় এই গুড়।&nbsp; এই গুড়ে রয়েছে খুবই গুরুত্বপূর্ণ একটি মিনারেল সেটি হলো পটাসিয়াম যা আপনাকে ওজন নিয়ন্ত্রণে রাখতে সাহায্য করবে। ফলে আপনি স্থুলতার হাত থেকে রেহাই পাবেন। সুতরাং বুঝতেই পারছেন ঐতিহ্যবাহী এই খাবার কতটা পুষ্টিকর।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">এবার তাহলে জেনে নেয়া যাক আসল খেজুরের গুড় চেনার উপায় সম্পর্কে। কেনার সময় গুড় মুখে নিয়ে দেখুন যদি স্বাদ নোনতা মনে হয় তাহলে সেটি আসল ‍গুড় না। গুড় হাতে নিয়ে চাপ দিয়ে দেখুন গুড়ের ধার যদি নরম হয় তাহলে বুঝবে এই গুড় ভালো মানের। মুখে নেওয়ার পর স্বাদ যদি একটু তেতো মনে হয় তাহলে বুঝবেন এই গুড়টিতে স্যাকারিন বা হাইড্রোজ বেশি হয়ে গেছে। সুতরাং এমন গুড় এড়িয়ে চলুন।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">সাধারনত গুড়ের রং বাদামী হয়। তাই বাদামী রং দেখেই গুড় কিনুন তাহলে আসল গুড় পাবেন। খাস ফুড আপনাদের জন্য সুদূর যশোর ও ঝিনাইদহ থেকে সরাসরি নিজেদের তত্বাবধানে প্রশিক্ষিত কৃষকের মাধ্যমে গুড় সংগ্রহ করে থাকে তাই এই গুড় ভেজাল হওয়ার কোনো সম্ভাবনা নেই। গুড় তৈরীর প্রতিটি ধাপে মেনে চলা হয় স্বাস্থ্যবিধি তাই এই গুড়ের ঘ্রাণ ও স্বাদ অতুলনীয়। আমাদের এই গুড়ের ঘ্রাণ ও স্বাদে আপনি একেবারে বিমোহিত হয়ে যাবেন। তাই শতভাগ বিশুদ্ধ ও পুষ্টিকর খেজুরের গুড় নিতে খাস ফুডের সাথেই থাকুন।</p></div></div></div></article>', 1, 1, '2020-12-01 08:38:58', '2020-12-01 08:38:58'),
(3, 'লাল আমন চাল', 'লাল-আমন-চাল', 'public/images/blogs/5fc655bdbb002.jpeg', '<p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">বাংলাদেশ একটি কৃষিপ্রধান দেশ। এখানে বেশিরভাগ কৃষকই কম বেশি ধান চাষ করে থাকেন। আমাদের দেশে কয়েক ধরনের ধান উৎপন্ন হয়। তবে সবচেয়ে বেশি উৎপন্ন হয় আমন ধান।<a href=\"https://www.khaasfood.com/product/aman-rice/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px; color: rgb(63, 63, 63); transition: all 0.25s ease 0s;\">&nbsp;আমন ধান</a>&nbsp;থেকে যে চাল তৈরী করা হয় সেটিই আসলে&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">আমন চাল</span>। এই ধান সাধারণত&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">নভেম্বর-ডিসেম্বর</span>&nbsp;মাসে ঘরে তোলা হয়। যা সারা বছর খাওয়া কিংবা বিক্রি করা হয়।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">সেই অনাদীকাল থেকেই বাংলাদেশের মানুষ&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">ভাতের</span>&nbsp;উপর নির্ভরশীল। বাংলাদেশীদের গৃহীত মোট ক্যালরির বেশিরভাগ অংশই আসে ভাত থেকে। এদেশের প্রান্তিক জনগণ তাদের জীবন ধারণ করে মোটামুটি ভাত খেয়েই। সুতরাং, বাংলাদেশের মানুষের পুষ্টি উন্নয়নে খুব গুরুত্বপূর্ণ ভূমিকা পালন করে এই চাল।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">আসলে এই চালের রয়েছে ভিন্ন কিছু গুণ যা মানুষকে খুব সহজেই আকৃষ্ট করে। এর রয়েছে বিশেষ সুগন্ধ যা যে কোন মানুষকে আকর্ষিত করার জন্য যথেষ্ট। এই চালের চার পাশের আবরণটি বিশেষত বাদামী রঙের যাতে রয়েছে মানবদেহের জন্য খুবই গুরুত্বপূর্ন পুষ্টি উপাদান। মূলত এই সকল পুষ্টি উপাদান নিয়মিত পেতে আমাদের এই চাল খাওয়া উচিত।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">তাছাড়া এর আরও কিছু গুণ রয়েছে যা একে অন্য চালের থেকে আলাদা করেছে যেমন রান্না করতে খুবই কম সময় লাগে, হজম হয় আস্তে আস্তে ফলে ক্ষুদা লাগে কম ও দানা চিকন ইত্যাদি। এই সকল গুণের জন্যই এই চাল বেশিরভাগ মানুষই পছন্দ করেন। আমাদের দেশে সারা বছর জুড়েই এই ধানের চাল পাওয়া যায়। দেশের মানুষের মূল চালের যোগান আসে এই ধান থেকে।</p><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 24px; color: rgb(45, 42, 42);\">আমন চালের পুষ্টি উপাদান</h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">এই ধরনের চালে বিদ্যমান রয়েছে নানা ধরনের পুষ্টি উপাদান। তন্মধ্যে গুরুত্বপূর্ণ পুষ্টি উপাদানগুলো হলো শর্করা, ফাইবার, পটাসিয়াম, ক্যালসিয়াম, ম্যাগনেসিয়াম, জিংক, আয়রন, ভিটামিন বি কমপ্লেক্স, ম্যাংগানিজ ও সেলেনিয়াম ইত্যাদি। সকল পুষ্টি উপাদানেরই আমাদের দেহে আলাদা আলাদা ভূমিকা রয়েছে। তবে চাল বা ভাতের থেকে আমরা সবচেয়ে বেশি পরিমানে যেটি পাই সেটি হলো&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 15.4px;\">শর্করা বা কার্বোহাইড্রেট</span>। চালের ভ্যারাইটি আলাদা হওয়ার কারনে এতে শর্করার পরিমাণের তারতম্য ঘটে।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 15.4px; color: rgb(119, 119, 119);\">যেমন সাদা চালে ফাইবার বা আঁশের পরিমাণ অনেক কম কিন্তু লাল আমন চালে ফাইবারের পরিমান ন্যাচারালি বেশি থাকে। কোন খাবারে কি পরিমান শর্করা আছে এবং তা কত দ্রুত ব্লাড সুগারকে বাড়িয়ে দিতে পারে– এই বিষয়টিকে বলা হয় গ্লাইসেমিক ইনডেক্স। যে খাবারের গ্লাইসেমিক ইনডেক্স যত কম সেই খাবার খাওয়া তত বেশি নিরাপদ। কারন গ্লাইসেমিক ইনডেক্স বেশি মানে চিনির পরিমান বা গ্লুকোজের পরিমান বেশি। আর গ্লুকোজের পরিমান যে খাবারে যত সেই খাবার তত বেশি শঙ্কাজনক। এই হিসেবে লাল চালের গ্লাইসেমিক ইনডেক্স অনেক কম। সাদা চালের গ্লাইসেমিক ইনডেক্স যেখানে ৭০ সেখানে লাল চালের গ্লাইসেমিক ইনডেক্স মাত্র ৫৫। সুতরাং, নিঃসন্দেহে বলা যায় লাল চাল আমাদের দেহের জন্য আসলেই উপকারী।</p>', 1, 1, '2020-12-01 08:39:57', '2020-12-01 08:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(11) NOT NULL DEFAULT 0,
  `cat_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_slug`, `p_id`, `cat_image`, `status`, `is_admin`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Dairy', 'dairy', 0, 'public/images/categories/5fc641cca19f2.png', 1, 1, 0, '2020-12-01 07:14:54', '2020-12-01 07:14:54'),
(2, 'Dry Fish', 'dry-fish', 0, 'public/images/categories/5fc641ead8dd5.png', 1, 1, 0, '2020-12-01 07:15:22', '2020-12-01 07:15:22'),
(3, 'Food For Health', 'foot-for-health', 0, 'public/images/categories/5fc642069ac17.png', 1, 1, 0, '2020-12-01 07:15:50', '2020-12-01 07:15:50'),
(4, 'Fruits', 'fruits', 0, 'public/images/categories/5fc642248a010.png', 1, 1, 0, '2020-12-01 07:16:20', '2020-12-01 07:16:20'),
(5, 'Honey', 'honey', 0, 'public/images/categories/5fc6423592489.png', 1, 1, 0, '2020-12-01 07:16:37', '2020-12-01 07:16:37'),
(6, 'Snack', 'snack', 0, 'public/images/categories/5fc6425c0ca1b.png', 1, 1, 0, '2020-12-01 07:17:16', '2020-12-01 07:17:16'),
(7, 'Mixed Flower Honey', 'mixed-flower-honey', 5, 'public/images/categories/5fc64df16510b.png', 1, 1, 0, '2020-12-01 08:06:41', '2020-12-01 08:06:41'),
(8, 'Sundorban Natural Honey', 'sundorban-naturn-honey', 5, 'public/images/categories/5fc64e62b8be1.png', 1, 1, 0, '2020-12-01 08:08:34', '2020-12-01 08:08:34'),
(9, 'Sundorban Box Honey', 'sundorban-box-honey', 5, 'public/images/categories/5fc64e8a4f382.png', 1, 1, 0, '2020-12-01 08:09:14', '2020-12-01 08:09:14'),
(10, 'Papaye', 'papaye', 4, 'public/images/categories/5fc64eb8b2b4b.png', 1, 1, 0, '2020-12-01 08:10:00', '2020-12-01 08:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Imran Ahmed', 'imran@gmail.com', 'asdf', NULL, '2020-12-06 05:17:40', '2020-12-06 05:17:40');

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_30_172720_create_categories_table', 2),
(5, '2020_11_30_191633_create_products_table', 3),
(6, '2020_11_30_191854_create_product_images_table', 3),
(7, '2020_12_01_063259_create_site_settings_table', 4),
(9, '2020_12_01_063833_create_social_media_table', 5),
(10, '2020_12_01_092952_create_blogs_table', 6),
(11, '2020_12_03_122542_create_orders_table', 7),
(12, '2020_12_03_122641_create_order_details_table', 7),
(13, '2020_12_01_063746_create_sliders_table', 8),
(14, '2020_12_06_082715_create_contacts_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_subtotal` double NOT NULL,
  `delivery_charge` double NOT NULL,
  `order_total` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=pending and 1=approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_no`, `order_subtotal`, `delivery_charge`, `order_total`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 2495, 100, 2595, 1, '2020-12-03 07:43:09', '2020-12-03 09:48:21'),
(2, 3, '2', 2190, 100, 2290, 0, '2020-12-03 10:33:37', '2020-12-03 10:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2020-12-03 07:43:09', '2020-12-03 07:43:09'),
(2, 1, 3, 1, '2020-12-03 07:43:09', '2020-12-03 07:43:09'),
(3, 1, 4, 1, '2020-12-03 07:43:09', '2020-12-03 07:43:09'),
(4, 2, 3, 1, '2020-12-03 10:33:37', '2020-12-03 10:33:37'),
(5, 2, 7, 1, '2020-12-03 10:33:37', '2020-12-03 10:33:37'),
(6, 2, 2, 1, '2020-12-03 10:33:37', '2020-12-03 10:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `buy_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_admin` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productuid`, `product_title`, `product_slug`, `category_id`, `buy_price`, `sell_price`, `discount_type`, `discount`, `discount_price`, `price_active`, `short_discription`, `long_discription`, `default_image`, `type`, `status`, `is_admin`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, '2000001', 'Litchi Flower Honey', 'litchi-flower-honey', 7, '1000', '2000', NULL, '10', '1090', '2', '<p>NA</p>', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">&nbsp;renowned for its pure honey with variation in types and sources. Litchi<br style=\"box-sizing: border-box;\">honey is one of the Khaas Food items provided you with supreme quality and assurance of purity. Litchi honey has great health benefits and natural curative features for our immune system as the honey has various natural element derived from nature.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Some benefits of Litchi Flower Honey:</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Alternative to sugar<br style=\"box-sizing: border-box;\">Great health benefits<br style=\"box-sizing: border-box;\">Restrict cancer cell growth<br style=\"box-sizing: border-box;\">Helps fight off harmful bacteria<br style=\"box-sizing: border-box;\">Antibacterial, anti-inflammatory and anti-cancer properties</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Why Khaas Food’s Litchi Flower Honey?</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Directly Collected from Dinajpur<br style=\"box-sizing: border-box;\">Box honey.</p></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\">Sweetest honey.<br style=\"box-sizing: border-box;\">Processed hygienically<br style=\"box-sizing: border-box;\">Natural Remedy</div>', 'public/images/products/5fc651c8ba615.jpg', 1, 1, 1, 0, '2020-12-01 08:23:04', '2020-12-01 08:23:04'),
(3, '2000002', 'Khejur Gur (Patali)', 'khejur-gur-patali', 3, '80', '100', NULL, NULL, NULL, '1', '<p>Na</p>', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">The pulp of the date palm This year we are collecting date patali and jhola molasses from Chuadanga, Jhenaidah and adjoining areas.</span></p><h2 id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 24px; color: rgb(45, 42, 42);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Only 1st cut powder</span></h2><p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Only 1st cut juice is taken to make molasses. No juice of 2nd or 3rd cut is taken.</span></p><p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Processing</span></p><p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Alum or Urea Free: No alum or urea is used to clean or whiten the powder.</span></p><p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Wheat flour or sugar free: Wheat flour or sugar is not used to harden the powder. Free of silt (dirt on top of juice), old gum or chita gum.</span></p><h3 id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Preservation method</span></h3><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; font-family: Lato, Arial, Helvetica, sans-serif; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119);\"><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Must be kept in a dry environment</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Should be stored in earthenware or glass containers</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Keep the lid of the mouth dry</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Do not touch the container</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Wet spoons cannot be used</span></li></ul><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Juice collection</span></h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">The container used for collecting the juice is cleaned.</span></p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Nipah virus</span></h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">When the mouth of the pot of date juice is open, the badur comes and sits there. The Nipah virus enters the human body from that juice. The mouth of the pot is covered with palm leaves so that the tiger or any other bird does not sit</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\">According to the WHO, the Nipah virus is transmitted at a temperature of 60 degrees Celsius. And since molasses is made by heating the juice, there is no reason to have Nipah virus in molasses. Nipah virus infection is usually caused by drinking raw juice.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\">Density</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\">The higher the density of the molasses, the better the molasses. This means that the powder is prepared from fresh juice with a good amount of fuel. And here the FERMENTATION has decreased. If the fermentation is high or the fuel is low, the concentration of the powder is less if there is chitagund or kari.</p><h4 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(45, 42, 42);\">Time of juice collection</h4><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\">The juice is collected very early in the morning.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Duration:</span>&nbsp;4 months.</p>', 'public/images/products/5fc65222d54aa.jpg', 1, 1, 1, 0, '2020-12-01 08:24:34', '2020-12-01 08:24:34'),
(4, '2000003', 'Red Flattened Rice (lal cira)', 'red-flattened-rice-lal-cira', 3, '300', '395', NULL, '20', '375', '2', '<p>NA</p>', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Red Flattened Rice (Lal Chira)</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Hand made Flattened Rice, made from Bhojon rice of Potuakhali, Barisal. It is very soft and sweet when tested. It comes with less moisture, so you can get high in quantity and no hole inside. Khaas Food’s Lal Chira is very clean and fresh, you can consume it happily, anytime, without any issues.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Flattened Rice found in the market may contains dust, sand, stones and harmful preservatives and chemicals. But Khaas Food’s Flattened Rice is free from such harmful elements, rather it is very fresh and properly sorted to ensure your delighted and healthy meal. You can have this high quality Lal Chira for your full family with confidence.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Why Khaas Food’s Red Flattened Rice (Lal Chira)?</span></p></div><ul style=\"box-sizing: border-box; margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; font-family: Lato, Arial, Helvetica, sans-serif; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119);\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Very healthy meal</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Free from Cholesterol and Fat</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Fullfils the demand of Iron</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Great source of Protein</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Helpful for Digestion</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Great source of Carbohydrates</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Good for Diabetics</li></ul>', 'public/images/products/5fc652678906e.jpg', 1, 1, 1, 0, '2020-12-01 08:25:43', '2020-12-01 08:25:43'),
(5, '2000004', 'Coconut Laddu (Narikeler Naru)', 'coconut-laddu-narikeler-naru', 3, '100', '200', NULL, NULL, NULL, '1', '<p>na</p>', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">নারিকেলের নাড়ু</span></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\">ভাল মানের বাছাইকৃত নারিকেল আলাদা করে নিয়ে তার সাথে আখের গুড় দিয়ে তৈরি করা হয় আমাদের এ নারিকেলের নাড়ু। স্বাস্থ্য সম্মত উপায়ে ঘরোয়া পরিবেশে খাস ফুডের তত্ত্বাবধানে তৈরি হচ্ছে এ নাড়ু।</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\">(হাত ভালভাবে ধুয়ে নিয়ে তারপর তৈরি করা হচ্ছে এটা। গ্লাবস পরে করতে গেলে এটার শেইপ দেয়া যাবে না, তাই খালি হাতে করা) ব্র্যাকেটের অংশ গুলো আগ-বাড়িয়ে বলার দরকার নেই।</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\">এক বক্স এর দাম- ১১৫ টাকা</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\">এক বক্সের ওজন ২৫০(+-), এক বক্সে ১০ টার মত থাকবে।</div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">আখের গুড় এবং আখের গুড়ের ভেজাল প্রসঙ্গঃ&nbsp;</span></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">আখের গুড়ের ভেজাল বলতে চিনি মিক্স করার কথা বলে থাকেন। আমরা যে আখের গুড় দিচ্ছি তা পাইকারি ৪৫ টাকা থেকে ৫০ টাকা করে টিন অনুযায়ী ক্রয় করছি। চিনির দাম এর থেকে অনেক বেশী। আর চিনি মিক্স করে গুড় তৈরি করা হয় একটা নির্দিষ্ট সিজনে।</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">মেয়াদঃ</span>&nbsp;প্যাকেজিং এর তারিখ থেকে ১৫ দিন।</p></div>', 'public/images/products/5fc652a6bd596.jpg', 1, 1, 1, 0, '2020-12-01 08:26:46', '2020-12-01 08:26:46'),
(6, '2000005', 'Almond (Kath Badam)', 'almond-kath-badam', 2, '300', '800', NULL, NULL, NULL, '1', '<p>na</p>', '<p dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\">Almonds Imported from America. It says<span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">&nbsp;the king of nuts. Calcium, fiber, potassium, magnesium, phosphorus, folic acid and vitamin E.</span></p><h3 data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Some Benefits Of Almonds</span></h3><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; font-family: Lato, Arial, Helvetica, sans-serif; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119);\"><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Very good for shortness of breath, constipation and various skin problems. Of all the nuts, almonds have the most calcium.</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Regular consumption of four-five almonds lowers the level of LDL cholesterol or bad cholesterol. As a result, there is no risk of heart disease.</span></li><li id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Reduces the risk of colon cancer.</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Has anti-oxidants. Playing Almond Milk during chemotherapy improves the immune system.</span></li><li class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\"><span lang=\"en\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Almond fiber slows down the absorption of carbohydrates in the body. The result is beneficial for diabetes. * Almond bata can be applied regularly to get rid of wrinkles.</span></li></ul><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 22px; color: rgb(45, 42, 42);\">Why Khaas Food?</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\">&nbsp;</p><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Duration of nuts</span>: Store in a dry and dry place and in an air tight jar for a long time.</p><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Validity:</span>&nbsp;The validity will be up to 4 months from the date of packaging.</p>', 'public/images/products/5fc652d76fadf.jpg', 1, 1, 1, 0, '2020-12-01 08:27:35', '2020-12-01 08:27:35'),
(7, '2000006', 'Laccha Semai', 'laccha-semai', 3, '900', '1000', NULL, NULL, NULL, '1', '<p><b>na</b></p>', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Laccha Semai is a renowned Asian Food; very popular among the people of any classes. This special Semai is a delicious food item – has been consumed by people historically. In different occasions and family get together Laccha Semai is highly demanded by the people as a common dessert. But the matter of sorrow is – adulterated Laccha Semai is flooded in the local markets.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\">Every year, especially during Ramadan, our government’s Mobile Court finds different types of heavily adulterated Laccha Semai in the market. Who knows which packet is to trust, and which one is actually free of adulteration! But yes – Khaas Food is here to serve you with pure quality Laccha Semai to bring quality dessert for your healthy eating every day!</p></div><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Why Khaas Food’s Laccha Semai?</span></p></div><ul style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; font-family: Lato, Arial, Helvetica, sans-serif; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119);\"><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\">100% Adulteration Free Semai</li><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\">Ensured quality for perfect taste</li><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\">Produced in Clean and Fresh area</li><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\">No risk of lower quality product</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; position: relative; list-style: none;\">No harmful chemicals or additives used</li></ul><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; color: rgb(119, 119, 119);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Some Features of Khaas Foods Laccha Semai:</span></div><ol style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; font-family: Lato, Arial, Helvetica, sans-serif; list-style: none; color: rgb(119, 119, 119);\"><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; list-style: decimal;\">As no chemical used to bring attractive color, it looks Red,</li><li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; list-style: decimal;\">Our Laccha Semai is home made, so this is fragile and pre-broaken</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; list-style: decimal;\">Ghee-Fried Semai is actually not Possible in terms of cost, so it is Dalda-Fried.</li></ol>', 'public/images/products/5fc65329beb2b.jpg', 1, 1, 1, 0, '2020-12-01 08:28:57', '2020-12-01 08:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sologan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotlinenumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footerlogo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localaddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stateaddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `companyname`, `sologan`, `postcode`, `mobile`, `hotlinenumber`, `email`, `logo`, `banner`, `footerlogo`, `localaddress`, `stateaddress`, `mapcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AgroFresh', 'freshness matters', 5140, '01711123858', '01711123858', 'freshnessmatters@gmail.com', 'public/images/settings/5fc64faf4c3ba.jpg', 'public/images/webcontnets/5fc5f485efe0d.jpg', 'public/images/settings/5fc64faf4ca66.jpg', 'Dhaka', 'Gazipur', NULL, 1, NULL, '2020-12-01 08:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Slider title 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias consequuntur labore maxime 1', 'https::/www.example.com', 'public/images/sliders/5fccba6371128.jpg', 1, '2020-12-06 05:02:59', '2020-12-06 05:05:33'),
(4, 'Slider title 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias consequuntur labore maxime 2', 'https::/www.example.com', 'public/images/sliders/5fccba8ea9309.jpg', 1, '2020-12-06 05:03:42', '2020-12-06 05:05:48'),
(5, 'Slider title 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias consequuntur labore maxime 3', 'https::/www.example.com', 'public/images/sliders/5fccbadd401cb.jpg', 1, '2020-12-06 05:05:01', '2020-12-06 05:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `icon`, `link`, `status`, `is_admin`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'facebook', 'fa fa-facebook', 'https://www.facebook.com/scp.ecen.bd', 1, 1, 0, '2020-12-01 02:55:17', '2020-12-01 02:55:17'),
(3, 'Youtube', 'fa fa-youtube', 'http://youtuble.com/abutaleb.gmtt', 1, 1, 0, '2020-12-01 04:06:15', '2020-12-01 04:06:15'),
(4, 'instagram', 'fa fa-instagram', 'https://www.instagram.com/scp.ecen.bdasd', 1, 1, 0, '2020-12-01 04:06:52', '2020-12-01 04:06:52'),
(5, 'Google', 'fa fa-google', 'https://www.google.com/scp.ecen.b', 1, 1, 0, '2020-12-01 04:07:26', '2020-12-01 04:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) DEFAULT NULL,
  `useruid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `useruid`, `name`, `mobile`, `email`, `email_verified_at`, `remember_token`, `password`, `address`, `photo`, `type`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, '10000', 'Md Abu Taleb', '01779327718', 'abutalebgmtt@gmail.com', NULL, NULL, '$2y$12$OJCKsoznUV4DA9zCliFy.ue3bxPXfpUNQp6BGF9DL6E9QGNdz3L0q', NULL, NULL, 0, 0, 0, NULL, NULL),
(2, 1, '10001', 'Admin', '01711123858', 'admin@gmail.com', NULL, NULL, '$2y$12$xunLra/1smu9s22o99gk9eCD..1o0xPXJkUQlQE7ifev5B0ocF6SK', NULL, NULL, 0, 0, 0, NULL, NULL),
(3, 2, '10002', 'Imran Ahmed', '01755430927', 'customer@gmail.com', NULL, NULL, '$2y$12$xunLra/1smu9s22o99gk9eCD..1o0xPXJkUQlQE7ifev5B0ocF6SK', 'Baliadangi', NULL, 0, 0, 0, NULL, NULL),
(7, 2, NULL, 'Imran Ahmed', '017554309275', 'imranemon.developer@gmail.com', NULL, NULL, '$2y$10$DxZwfo1VRMA4e1Dll.FvF.fN5JpwrSiNlKP.5bXn7fgyQhEe4bBv6', 'asdf', 'public/uploaded/user_image/5fc7925a9e5a1.jpg', 0, 0, 0, '2020-12-02 07:10:50', '2020-12-02 07:10:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_cat_slug_unique` (`cat_slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `site_settings_email_unique` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
