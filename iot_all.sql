-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2016 at 09:23 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1461392063),
('user', '2', 1461392249);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Адмістратор', NULL, NULL, 1461391977, 1461391977),
('user', 1, NULL, NULL, NULL, 1461392003, 1461392003);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL,
  `type` smallint(5) UNSIGNED DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `post`, `user_id`, `timestamp`, `image`, `type`, `active`, `tag_id`) VALUES
(324, 'nnn', 'nnn', 1, '2016-04-23 00:00:00', '/images/imag_571b404.jpg', 1, 1, 1),
(325, 'nnn', 'nnn', 2, '2016-04-23 12:20:14', 'Lighthouse.jpg', 3, 1, NULL),
(326, 'ggg', 'ggg', 2, '2016-04-23 12:21:25', 'Jellyfish.jpg', 1, 1, NULL),
(327, 'new titls', 'new titls', 1, '2016-04-23 12:26:30', '/images/imag_571b403.jpg', 1, 1, NULL),
(328, 'Встановлення Yii', '<p>Ви можете встановити Yii двома шляхами: використовуючи менеджер пакунків Composer або завантаживши файл архіву. Перший варіант є бажанішим, тому що дозволяє встановлювати нові розширення або оновлювати Yii простим виконанням однієї команди.</p>\r\n\r\n<p>Після стандартного встановлення Yii ми отримуємо як фреймворк, так і шаблон проекту. Шаблон проекту - це робочий проект Yii, в якому реалізовано деякий базовий функціонал, такий як система входу/виходу користувачів, форма зворотнього зв&rsquo;язку і т. д. Його код організовано в рекомендований спосіб. Таким чином, це може слугувати гарною відправною точкою для ваших проектів.</p>\r\n\r\n<p>У цьому та у наступних кількох розділах буде описано, як встановити Yii з так званим <em>Базовим шаблоном проекту</em> та як реалізувати нові можливості на базі цього шаблону. Також Yii надає інший шаблон із назвою Розширений шаблон проекту, який краще використовувати у середовищі розробки в команді для розробки складних додатків.</p>\r\n\r\n<blockquote>\r\n<p>Info: Базовий шаблон проекту підходить для розробки 90 відсотків веб-додатків. Він відрізняється від Розширеного шаблону проекту в основному організацією коду. Якщо ви малознайомі з Yii, наполегливо рекомендується використовувати Базовий шаблон проекту із-за його простоти, але й достатньої функціональності.</p>\r\n</blockquote>\r\n\r\n<h2>Встановлення за допомогою Composer</h2>\r\n\r\n<p>Якщо у вас все ще не встановлено Composer, то це можна зробити за допомогою інструкції на <a href="https://getcomposer.org/download/">getcomposer.org</a>. Користувачам Linux та Mac OS X потрібно виконати наступні команди:</p>\r\n\r\n<div class="highlight highlight-source-shell">\r\n<pre>\r\n    curl -sS https://getcomposer.org/installer | php\r\n    mv composer.phar /usr/local/bin/composer</pre>\r\n</div>\r\n\r\n<p>При роботі з Windows, необхідно завантажити та запустити <a href="https://getcomposer.org/Composer-Setup.exe">Composer-Setup.exe</a>.</p>\r\n\r\n<p>В разі наявності проблем або якщо вам необхідна додаткова інформація, зверніться до <a href="https://getcomposer.org/doc/">документації Composer</a>.</p>\r\n\r\n<p>Якщо ж Composer вже було встановлено раніше, переконайтесь, що використовуєте його останню версію. Ви можете оновити Composer простою командою <code>composer self-update</code>.</p>\r\n\r\n<p>Після встановлення Composer, встановити Yii можна виконавши наступну команду з директорії, яка доступна через Web:</p>\r\n\r\n<div class="highlight highlight-source-shell">\r\n<pre>\r\n    composer global require &quot;fxp/composer-asset-plugin:~1.1.1&quot;\r\n    composer create-project --prefer-dist yiisoft/yii2-app-basic basic</pre>\r\n</div>\r\n\r\n<p>Перша команда встановить <a href="https://github.com/francoispluchino/composer-asset-plugin/">плагін ресурсів composer (composer-asset-plugin)</a>, що дозволить керувати залежностями пакунків Bower та NPM за допомогою Composer. Цю команду потрібно виконати лише один раз. Друга команда встановить Yii у директорію під назвою <code>basic</code>. За бажанням, ви можете обрати інше ім&rsquo;я для директорії.</p>\r\n\r\n<blockquote>\r\n<p>Note: Під час встановлення може статися так, що Composer запитає облікові дані від вашого профілю на GitHub, через встановлені обмеження запитів GitHub API. Це є нормальним, оскільки Composer повинен отримати багато інформації для всіх пакунків із GitHub. Надання облікових даних профілю GitHub збільшить кількість запитів до API, потрібних для подальшої роботи Composer. Для більш детальної інформації, будь ласка, зверніться до <a href="https://getcomposer.org/doc/articles/troubleshooting.md#api-rate-limit-and-oauth-tokens">документації Composer</a>.</p>\r\n\r\n<p>Tip: Якщо ви хочете встановити останню нестабільну версію Yii, ви можете виконати наступну команду, яка додає опцію <a href="https://getcomposer.org/doc/04-schema.md#minimum-stability">stability</a>:</p>\r\n\r\n<div class="highlight highlight-source-shell">\r\n<pre>\r\n    composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-basic basic</pre>\r\n</div>\r\n\r\n<p>Варто зауважити, що нестабільну версію Yii не можна використовувати на робочому сервері, оскільки вона може порушити виконання робочого коду.</p>\r\n</blockquote>\r\n\r\n<h2>Встановлення з архіву</h2>\r\n\r\n<p>Встановлення Yii з архіву складається з трьох кроків:</p>\r\n\r\n<ol>\r\n	<li>Завантажте архів за адресою yiiframework.com;</li>\r\n	<li>Розпакуйте архів в директорію, доступну через Web.</li>\r\n	<li>\r\n	<p>Відредагуйте файл конфігурації <code>config/web.php</code> - необхідно ввести таємний ключ до пункту <code>cookieValidationKey</code> (це виконується автоматично при вставленні Yii через Composer):</p>\r\n\r\n	<div class="highlight highlight-text-html-php">\r\n	<pre>\r\n// !!! встановити таємний ключ до наступного пункту (якщо порожній) - це необхідно для перевірки кукі\r\n&#39;cookieValidationKey&#39; =&gt; &#39;enter your secret key here&#39;,</pre>\r\n	</div>\r\n	</li>\r\n</ol>\r\n\r\n<h2>Інші параметри встановлення</h2>\r\n\r\n<p>Вище наведені інструкції показують як встановити Yii та створити базовий веб-додаток, який працює &quot;з коробки&quot;. Цей підхід є гарною відправною точкою для більшості проектів, як малих так і великих. Це особливо підходить для тих, хто тільки розпочинає вивчати Yii.</p>\r\n\r\n<p>Але є ще й інші варіанти встановлення:</p>\r\n\r\n<ul>\r\n	<li>Якщо вам потрібен тільки один фреймворк і ви хотіли б створити додаток з нуля, використовуйте інструкцію, що описана у розділі <a href="https://github.com/yiisoft/yii2/blob/master/docs/guide-uk/tutorial-start-from-scratch.md">Створення додатка з нуля</a>.</li>\r\n	<li>Якщо ви хочете розпочати з більш складного додатка, який краще підходить для роботи в команді, використовуйте <a href="https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide-uk/README.md">Розширений шаблон проекту</a>.</li>\r\n</ul>\r\n\r\n<h2>Перевірка встановлення</h2>\r\n\r\n<p>Після успішного встановлення ви можете налаштувати свій веб-сервер (див. наступний розділ) або використати <a href="https://secure.php.net/manual/en/features.commandline.webserver.php">вбудований веб-сервер PHP</a>, виконавши наступну консольну команду із директорії <code>web</code>:</p>\r\n\r\n<div class="highlight highlight-source-shell">\r\n<pre>\r\nphp yii serve</pre>\r\n</div>\r\n\r\n<blockquote>\r\n<p>Note: За замовчуванням, HTTP-server буде прослуховувати порт 8080. Проте, якщо цей порт вже використовується, або ви бажаєте таким чинов використовувати кілька додатків одразу - ви можете встановити, який саме порт використовувати. Тільки додайтие аргумент --port:</p>\r\n</blockquote>\r\n\r\n<div class="highlight highlight-source-shell">\r\n<pre>\r\nphp yii serve --port=8888</pre>\r\n</div>\r\n\r\n<p>Тепер ви можете використати свій браузер для доступу до встановленого Yii додатку за наступним посиланням:</p>\r\n\r\n<pre>\r\n<code>http://localhost:8080/\r\n</code></pre>\r\n', 1, '2016-04-23 12:27:52', '/images/imag_571b442.jpg', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id_blog` int(10) UNSIGNED NOT NULL,
  `id_tag` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_type`
--

CREATE TABLE `blog_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_type`
--

INSERT INTO `blog_type` (`id`, `name`) VALUES
(1, 'Блог-людина'),
(5, 'Блог-магазин'),
(3, 'Огляд'),
(4, 'Стаття');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1460705703),
('m140209_132017_init', 1460705712),
('m140403_174025_create_account_table', 1460705719),
('m140504_113157_update_tables', 1460705722),
('m140504_130429_create_token_table', 1460705724),
('m140830_171933_fix_ip_field', 1460705725),
('m140830_172703_change_account_table_name', 1460705725),
('m141222_110026_update_ip_field', 1460705726),
('m141222_135246_alter_username_length', 1460705726),
('m150614_103145_update_social_account_table', 1460705728),
('m150623_212711_fix_username_notnull', 1460705729);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(2, 'блог'),
(1, 'стаття');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`) VALUES
(1, 'RezAV', 'rezni4enko94@yandex.ru', '$2y$10$rLMpe5hP.sVVBcZvllpzxe7OOLwx0boqj8r2104Ml2lFOIgOM/Rhe', 'jP24XeJ8A60OH45k-mzwUKu8Lh3eEaGP', 1460707977, NULL, NULL, '127.0.0.1', 1460707930, 1460707930, 0),
(2, 'mosv', 'mosv@ros.kpi.ua', '$2y$12$HBJLxRnIzX6WBPC7fa1UDORBblBeIp62gaV3dkkBYAY9WxQF6qwZ2', 'R3ZU4Gzc2ChipbOWABuzDg7SVSIteoYT', 1461392236, NULL, NULL, '127.0.0.1', 1461392236, 1461392236, 0),
(3, 'user', 'rezavua@gmail.com', '$2y$12$TuN0Rp6s5GUD.KrVxB8Kt.XVkGMitODvCv49Y5ySbmCnty8nUjGnK', 'EGGimregYAmRdZCEXrl9xXQQpvqL45fH', 1461396329, NULL, NULL, '127.0.0.1', 1461396330, 1461396330, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD UNIQUE KEY `id_tag` (`id_tag`,`id_blog`) USING BTREE;

--
-- Indexes for table `blog_type`
--
ALTER TABLE `blog_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD UNIQUE KEY `user_unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
--
-- AUTO_INCREMENT for table `blog_type`
--
ALTER TABLE `blog_type`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
