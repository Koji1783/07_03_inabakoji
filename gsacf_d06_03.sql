-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 01 日 16:37
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_03`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `sns_table`
--

CREATE TABLE `sns_table` (
  `id` int(12) NOT NULL,
  `g_id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hashtag` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `commentdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `sns_table`
--

INSERT INTO `sns_table` (`id`, `g_id`, `username`, `comment`, `hashtag`, `commentdate`) VALUES
(1, 3, 'test', '課題の合体', '#トムブラウン', '2020-06-30 16:11:36');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, '挨拶をする', '2020-06-20', '2020-06-20 15:27:56', '2020-06-20 15:27:56'),
(2, '愛を叫ぶ', '2020-12-31', '2020-06-20 15:29:16', '2020-06-20 15:29:16'),
(3, 'セカイをかえる', '2020-09-30', '2020-06-20 15:30:24', '2020-06-20 15:30:24'),
(4, '美女と付き合う', '2020-10-19', '2020-06-20 15:31:44', '2020-06-20 15:31:44'),
(5, 'ゴミを拾う', '2020-08-01', '2020-06-20 15:32:34', '2020-06-20 15:32:34'),
(6, '編集する', '2020-06-28', '2020-06-20 16:49:55', '2020-06-27 16:09:12'),
(7, 'PHP欠席', '2020-06-13', '2020-06-20 17:18:16', '2020-06-20 17:18:16'),
(8, '講義中', '2020-06-27', '2020-06-27 14:42:29', '2020-06-27 14:42:29'),
(9, '寝る', '2020-06-27', '2020-06-27 15:06:56', '2020-06-27 15:06:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'kanri', 'kanri', 1, 0, '2020-06-27 23:42:28', '2020-06-30 17:59:32'),
(3, 'test', 'test', 0, 0, '2020-06-30 18:07:32', '2020-06-30 18:07:32'),
(4, 'test1', 'test1', 0, 1, '2020-06-30 18:13:34', '2020-06-30 18:47:08');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `sns_table`
--
ALTER TABLE `sns_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `sns_table`
--
ALTER TABLE `sns_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
