-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 22 2023 г., 15:11
-- Версия сервера: 10.6.7-MariaDB-log
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dialogs`
--

CREATE TABLE `dialogs` (
  `dialog_id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED NOT NULL,
  `user2_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dialogs`
--

INSERT INTO `dialogs` (`dialog_id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2023-09-22 04:46:13', '2023-09-22 04:46:13'),
(2, 4, 3, '2023-09-22 04:46:13', '2023-09-22 04:46:13'),
(3, 3, 2, '2023-09-22 04:47:08', '2023-09-22 04:47:08'),
(4, 2, 3, '2023-09-22 04:47:08', '2023-09-22 04:47:08'),
(5, 3, 1, '2023-09-22 04:47:28', '2023-09-22 04:47:28'),
(6, 1, 3, '2023-09-22 04:47:28', '2023-09-22 04:47:28'),
(7, 4, 1, '2023-09-22 04:47:48', '2023-09-22 04:47:48'),
(8, 1, 4, '2023-09-22 04:47:48', '2023-09-22 04:47:48'),
(9, 4, 2, '2023-09-22 04:47:59', '2023-09-22 04:47:59'),
(10, 2, 4, '2023-09-22 04:47:59', '2023-09-22 04:47:59'),
(11, 2, 1, '2023-09-22 04:48:10', '2023-09-22 04:48:10'),
(12, 1, 2, '2023-09-22 04:48:10', '2023-09-22 04:48:10'),
(13, 5, 4, '2023-09-22 04:48:55', '2023-09-22 04:48:55'),
(14, 4, 5, '2023-09-22 04:48:55', '2023-09-22 04:48:55'),
(15, 5, 3, '2023-09-22 04:49:07', '2023-09-22 04:49:07'),
(16, 3, 5, '2023-09-22 04:49:07', '2023-09-22 04:49:07'),
(17, 2, 5, '2023-09-22 04:49:49', '2023-09-22 04:49:49'),
(18, 5, 2, '2023-09-22 04:49:49', '2023-09-22 04:49:49'),
(19, 5, 1, '2023-09-22 04:50:28', '2023-09-22 04:50:28'),
(20, 1, 5, '2023-09-22 04:50:28', '2023-09-22 04:50:28'),
(21, 6, 2, '2023-09-22 11:35:35', '2023-09-22 11:35:35'),
(22, 2, 6, '2023-09-22 11:35:35', '2023-09-22 11:35:35'),
(23, 6, 4, '2023-09-22 11:35:38', '2023-09-22 11:35:38'),
(24, 4, 6, '2023-09-22 11:35:38', '2023-09-22 11:35:38');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dialog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `dialog_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'Привет', '2023-09-22 04:46:22', '2023-09-22 04:46:22'),
(2, 2, 4, 'как твои дела?', '2023-09-22 04:46:26', '2023-09-22 04:46:26'),
(3, 1, 3, 'да все норм', '2023-09-22 04:46:55', '2023-09-22 04:46:55'),
(4, 3, 3, 'Это тестовое сообщение', '2023-09-22 04:47:36', '2023-09-22 04:47:36'),
(5, 5, 3, 'и это тест', '2023-09-22 04:47:43', '2023-09-22 04:47:43'),
(6, 4, 2, 'поняла', '2023-09-22 04:48:16', '2023-09-22 04:48:16'),
(7, 13, 5, 'хай', '2023-09-22 04:49:05', '2023-09-22 04:49:05'),
(8, 15, 5, 'проблема в чате', '2023-09-22 04:49:44', '2023-09-22 04:49:44'),
(9, 17, 2, 'это плохо', '2023-09-22 04:49:57', '2023-09-22 04:49:57'),
(10, 11, 2, 'ошибка', '2023-09-22 04:50:16', '2023-09-22 04:50:16'),
(11, 18, 5, 'согласен', '2023-09-22 06:05:00', '2023-09-22 06:05:00'),
(12, 13, 5, 'время', '2023-09-22 06:36:52', '2023-09-22 06:36:52'),
(13, 13, 5, 'время', '2023-09-22 06:37:17', '2023-09-22 06:37:17'),
(14, 13, 5, 'время 1', '2023-09-22 06:37:29', '2023-09-22 06:37:29'),
(15, 13, 5, 'время 2', '2023-09-22 06:38:09', '2023-09-22 06:38:09'),
(16, 13, 5, 'hi', '2023-09-22 06:42:28', '2023-09-22 06:42:28'),
(17, 13, 5, 'hi', '2023-09-22 06:43:48', '2023-09-22 06:43:48'),
(18, 19, 5, 'время', '2023-09-22 06:51:01', '2023-09-22 06:51:01'),
(19, 19, 5, 'время', '2023-09-22 06:55:42', '2023-09-22 06:55:42'),
(20, 19, 5, 'время', '2023-09-22 06:57:26', '2023-09-22 06:57:26'),
(21, 19, 5, 'время 1', '2023-09-22 06:57:41', '2023-09-22 06:57:41'),
(22, 19, 5, 'время 12', '2023-09-22 06:57:59', '2023-09-22 06:57:59'),
(23, 19, 5, 'привет', '2023-09-22 06:59:44', '2023-09-22 06:59:44'),
(24, 19, 5, 'привет', '2023-09-22 07:00:05', '2023-09-22 07:00:05'),
(25, 11, 2, 'привет', '2023-09-22 07:00:31', '2023-09-22 07:00:31'),
(26, 11, 2, 'проверка', '2023-09-22 07:01:01', '2023-09-22 07:01:01'),
(27, 17, 2, 'время', '2023-09-22 07:02:47', '2023-09-22 07:02:47'),
(28, 17, 2, 'время', '2023-09-22 07:06:00', '2023-09-22 07:06:00'),
(29, 17, 2, 'время 1', '2023-09-22 07:11:04', '2023-09-22 07:11:04'),
(30, 17, 2, 'время 2', '2023-09-22 07:13:13', '2023-09-22 07:13:13'),
(31, 17, 2, 'привет меня щовут Ксения', '2023-09-22 07:13:50', '2023-09-22 07:13:50'),
(32, 17, 2, 'еще одно тестовое', '2023-09-22 07:14:45', '2023-09-22 07:14:45'),
(33, 17, 2, 'и еще одно', '2023-09-22 07:15:52', '2023-09-22 07:15:52'),
(34, 17, 2, 'проверка размера времени', '2023-09-22 07:16:08', '2023-09-22 07:16:08'),
(35, 17, 2, 'время размером 11px', '2023-09-22 07:16:27', '2023-09-22 07:16:27'),
(36, 4, 2, 'привет это тест отображения времени', '2023-09-22 07:31:22', '2023-09-22 07:31:22'),
(37, 4, 2, 'Изменил часовой пояс', '2023-09-22 10:33:02', '2023-09-22 10:33:02'),
(38, 19, 5, 'время на 3 часа раньше', '2023-09-22 10:37:48', '2023-09-22 10:37:48'),
(39, 19, 5, 'проверка времени', '2023-09-22 10:50:56', '2023-09-22 10:50:56'),
(40, 15, 5, 'привет, снова тестовое сообщение', '2023-09-22 11:07:21', '2023-09-22 11:07:21'),
(41, 3, 3, 'сколько время?!', '2023-09-22 11:10:38', '2023-09-22 11:10:38'),
(42, 3, 3, 'еще раз', '2023-09-22 11:10:49', '2023-09-22 11:10:49'),
(43, 15, 5, 'проверка', '2023-09-22 11:11:58', '2023-09-22 11:11:58'),
(44, 15, 5, 'проверка', '2023-09-22 11:12:14', '2023-09-22 11:12:14'),
(45, 15, 5, 'проверка', '2023-09-22 11:14:25', '2023-09-22 11:14:25'),
(46, 15, 5, 'проверка', '2023-09-22 11:14:34', '2023-09-22 11:14:34'),
(47, 15, 5, 'проверка', '2023-09-22 11:15:00', '2023-09-22 11:15:00'),
(48, 15, 5, 'еще один тест', '2023-09-22 11:15:14', '2023-09-22 11:15:14'),
(49, 16, 3, 'Получилось настроить асинхронную отправку сообщения!', '2023-09-22 11:15:48', '2023-09-22 11:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_20_192028_create_dialogs_table', 1),
(6, '2023_09_20_192408_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ксения', 'Витко', 'zakh@mail.ru', NULL, '$2y$10$OwZlVHhVohwNukVZHX75yuOdrEiEgEonF/xMMkWAeZYxLSrtjDUIS', NULL, '2023-09-22 04:43:47', '2023-09-22 04:43:47'),
(2, 'Ксения', 'Филатова', 'filatova@mail.ru', NULL, '$2y$10$cJplzoh.KnJWh2Cr46Rynuz9y2PFRhm4RBcgZKtMdFVScNquGsfCO', 'v9YzYpSR76LnWAfNUlSvZktFgner6j1gdKDUVZOSMubp3HDYMNfUdbGdI9wb', '2023-09-22 04:44:29', '2023-09-22 04:44:29'),
(3, 'Андрей', 'Сороко', 'games.soroko@mail.ru', NULL, '$2y$10$dvOYP9XThCqN31CXjsUvAec0nE3dOvqSIHplei41Kgxnw6NR7cmCK', NULL, '2023-09-22 04:45:22', '2023-09-22 04:45:22'),
(4, 'Илья', 'Ильницкий', 'ilnita@mail.ru', NULL, '$2y$10$rp4nqBkicN2IzWzMFfM0wuqoqScGORVEqTb3Xe5qWXpJiIWIOnxO6', NULL, '2023-09-22 04:46:02', '2023-09-22 04:46:02'),
(5, 'Леша', 'Наумович', 'naum@mail.ru', NULL, '$2y$10$o2QuFoz3npfJEJAawvZViO0.3M6BADqxDMOVl.1Kps6wFfXPv/HdK', NULL, '2023-09-22 04:48:50', '2023-09-22 04:48:50'),
(6, 'Саша', 'Прохоров', 'sasha@mail.ru', NULL, '$2y$10$4yiS9.LA15XONoyCZamyq.hAIbiCcmXuBanaeMagvOlOYFMoAbmGC', NULL, '2023-09-22 11:35:30', '2023-09-22 11:35:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dialogs`
--
ALTER TABLE `dialogs`
  ADD PRIMARY KEY (`dialog_id`),
  ADD KEY `dialogs_user1_id_foreign` (`user1_id`),
  ADD KEY `dialogs_user2_id_foreign` (`user2_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_dialog_id_foreign` (`dialog_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dialogs`
--
ALTER TABLE `dialogs`
  MODIFY `dialog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dialogs`
--
ALTER TABLE `dialogs`
  ADD CONSTRAINT `dialogs_user1_id_foreign` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dialogs_user2_id_foreign` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_dialog_id_foreign` FOREIGN KEY (`dialog_id`) REFERENCES `dialogs` (`dialog_id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `dialogs` (`user1_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
