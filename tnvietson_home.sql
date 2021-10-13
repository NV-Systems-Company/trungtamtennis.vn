-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 13, 2021 lúc 04:03 PM
-- Phiên bản máy phục vụ: 10.5.11-MariaDB
-- Phiên bản PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tnvietson_home`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_authors`
--

CREATE TABLE `nv_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `susp_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_authors`
--

INSERT INTO `nv_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '412d83f84666bd1b4c6116d360264ce9', 1631272307, '14.187.187.16', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/97.0.206 Chrome/91.0.4472.206 Safari/537.36'),
(2, 'ckeditor', 3, 'adobe,archives,audio,documents,flash,images,real,video|0|1|0', 'aa', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', 'a2e48d29322608e60f80594de131dc6c', 1623215512, '14.187.61.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_authors_config`
--

CREATE TABLE `nv_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_authors_module`
--

CREATE TABLE `nv_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_authors_module`
--

INSERT INTO `nv_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '1e105670fd614e210f412ddb43e79bdd'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '2898d7e828566319a7cc66dab6fb77de'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '9aa723caa5dd36502784b8e01bbd3389'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '0046d6efaa5f613c8e316bb6e00865a7'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, 'f996681c0b76924e30518b96b71e5284'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '9f4190e4e372d29263a0faee7aa7c01d'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '54d365b19e06edf6994708986252f3be'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '54cc3f04fcb82e0d3cee8fcae9b8634a'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, 'd4a798761ea73f1e5cf43f8fe6b66cfc'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '9b4bb92774185ddbeb9820b2adf8603a'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '8f6f2ea93c9526d39550922fc16b3343');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_authors_oauth`
--

CREATE TABLE `nv_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_banip`
--

CREATE TABLE `nv_banip` (
  `id` mediumint(8) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_banners_click`
--

CREATE TABLE `nv_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_banners_plans`
--

CREATE TABLE `nv_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) DEFAULT '',
  `title` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `form` varchar(100) NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_banners_plans`
--

INSERT INTO `nv_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, '', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, '', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, '', '', 0),
(4, '', 'Slider', '', 'sequential', 1080, 395, 1, 0, '', '', 0),
(5, '', 'Bản đồ hành chính', '', 'sequential', 230, 313, 1, 0, '', '', 0),
(6, '', 'Liên kết', '', 'sequential', 230, 94, 1, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_banners_rows`
--

CREATE TABLE `nv_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `file_name` varchar(255) NOT NULL,
  `file_ext` varchar(100) NOT NULL,
  `file_mime` varchar(100) NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `file_alt` varchar(255) DEFAULT '',
  `imageforswf` varchar(255) DEFAULT '',
  `click_url` varchar(255) DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_banners_rows`
--

INSERT INTO `nv_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1546504163, 1546504163, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1546504163, 1546504163, 0, 0, 1, 1),
(5, 'hc1', 5, 1, 'bandohc.jpg', 'jpg', 'image/jpeg', 230, 312, '', '', '', '_blank', '', 1498725937, 1498725900, 0, 0, 1, 1),
(6, 'Văn bản chỉ đạo điều hành', 6, 0, 'qc1.jpg', 'jpg', 'image/jpeg', 249, 102, '', '', 'http://egov-demo.nukeviet.vn/laws/', '_blank', '', 1498791748, 1498791748, 0, 2, 1, 1),
(7, 'Dịch vụ công trực tuyến', 6, 0, 'qc2.jpg', 'jpg', 'image/jpeg', 249, 102, '', '', 'http://www.chinhphu.vn/portal/page/portal/chinhphu/congdan/dichvucong', '_blank', '', 1498791768, 1498791768, 0, 2, 1, 2),
(8, 'Thủ tục hành chính', 6, 0, 'qc3.jpg', 'jpg', 'image/jpeg', 250, 93, '', '', 'http://csdl.thutuchanhchinh.vn/Pages/trang-chu.aspx', '_blank', '', 1498791775, 1498791775, 0, 1, 1, 3),
(9, 'Trả lời cử chi', 6, 0, 'qc4.jpg', 'jpg', 'image/jpeg', 249, 95, '', '', 'http://media.chinhphu.vn/video/chuyen-muc-dan-hoi--bo-truong-tra-loi-4', '_blank', '', 1498791789, 1498791789, 0, 2, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_config`
--

CREATE TABLE `nv_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_config`
--

INSERT INTO `nv_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', ''),
('sys', 'site', 'smtp_ssl', '0'),
('sys', 'site', 'smtp_port', ''),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', ''),
('sys', 'site', 'smtp_password', 'FZCCtcnHY50lm3nE5HeKYg,,'),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '104857600'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'none'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '1048576'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1631268744'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '1.2.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '1440'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre, svg, defs, filter, dropshadow, fegaussianblur, sourcealpha, stddeviation, result, blur, feoffset, in, dx, dy, offsetblur, feflood, fecomposite, offsetcolor, operator, feblend, sourcegraphic, in2, g, transform, rect, x, y, rx, ry, xmlns, fill, stroke, translate, opacity, height, width, all, foreignobject, font, face, path, d, visibility, style, lineargradient, x1, x2, y1, y2, id, stop, offset, script, type'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Trung Tâm Dạy Tennis Việt Sơn TP Hồ Chí Minh'),
('vi', 'global', 'site_logo', 'uploads/logo-1-dark.png'),
('vi', 'global', 'site_banner', 'uploads/banner_1.jpg'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'câu lạc bộ tennis Việt Sơn trên 40 năm kinh nghiệm giảng dạy'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'beauty'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', 'uploads/logo_nukevietegov.png'),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1634107036'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '1'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_none'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '170'),
('vi', 'news', 'homeheight', '170'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '600'),
('vi', 'news', 'copyright', ''),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', 'uploads/no-image.jpg'),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', 'admin'),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'laws', 'view_comm', '6'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'admin@nukeviet.vn'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'admin@nukeviet.vn'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'trungtamtennis.vn'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_s0n8C9'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '1'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'hDXTbp3-Q9qubVWqbTadZYQ1026d_kParm1Vqm02nWU,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('vi', 'laws', 'allowed_comm', '6'),
('vi', 'laws', 'auto_postcomm', '0'),
('vi', 'laws', 'setcomm', '4'),
('vi', 'laws', 'activecomm', '0'),
('vi', 'laws', 'emailcomm', '0'),
('vi', 'laws', 'adminscomm', ''),
('vi', 'laws', 'sortcomm', '0'),
('vi', 'laws', 'captcha', '1'),
('vi', 'laws', 'perpagecomm', '5'),
('vi', 'laws', 'timeoutcomm', '360'),
('vi', 'opinions', 'view_comm', '6'),
('vi', 'opinions', 'allowed_comm', '6'),
('vi', 'opinions', 'auto_postcomm', '0'),
('vi', 'opinions', 'setcomm', '4'),
('vi', 'opinions', 'activecomm', '1'),
('vi', 'opinions', 'emailcomm', '0'),
('vi', 'opinions', 'adminscomm', ''),
('vi', 'opinions', 'sortcomm', '0'),
('vi', 'opinions', 'captcha', '1'),
('vi', 'opinions', 'perpagecomm', '5'),
('vi', 'opinions', 'timeoutcomm', '360'),
('vi', 'laws', 'allowattachcomm', '0'),
('vi', 'laws', 'alloweditorcomm', '0'),
('vi', 'opinions', 'allowattachcomm', '1'),
('vi', 'opinions', 'alloweditorcomm', '1'),
('vi', 'professionals', 'next_execute', '0'),
('vi', 'videos', 'fb_admin', ''),
('vi', 'videos', 'fb_comm', '1'),
('vi', 'videos', 'facebookappid', ''),
('vi', 'videos', 'config_source', '0'),
('vi', 'videos', 'show_no_image', ''),
('vi', 'videos', 'allowed_rating_point', '1'),
('vi', 'videos', 'indexfile', 'viewgrid_by_cat'),
('vi', 'videos', 'per_page', '20'),
('vi', 'videos', 'st_links', '10'),
('vi', 'videos', 'per_line', '3'),
('vi', 'videos', 'homewidth', '270'),
('vi', 'videos', 'homeheight', '200'),
('vi', 'videos', 'blockwidth', '150'),
('vi', 'videos', 'blockheight', '100'),
('vi', 'videos', 'titlecut', '75'),
('vi', 'videos', 'copyright', ''),
('vi', 'videos', 'timecheckstatus', '0'),
('vi', 'videos', 'socialbutton', '1'),
('vi', 'videos', 'alias_lower', '1'),
('vi', 'videos', 'tags_alias', '0'),
('vi', 'videos', 'auto_tags', '0'),
('vi', 'videos', 'tags_remind', '1'),
('vi', 'videos', 'structure_upload', 'Ym'),
('vi', 'videos', 'allow_user_plist', '1'),
('vi', 'videos', 'playlist_moderate', '1'),
('vi', 'videos', 'playlist_allow_detele', '1'),
('vi', 'videos', 'playlist_max_items', '20'),
('vi', 'videos', 'youtube_api', ''),
('vi', 'videos', 'jwplayer_license', 'NqPyv5C3s2LTybLMlqx3nfOJTvmRqu9cuQPTrQ=='),
('vi', 'videos', 'jwplayer_autoplay', 'false'),
('vi', 'videos', 'jwplayer_loop', 'false'),
('vi', 'videos', 'jwplayer_controlbar', 'true'),
('vi', 'videos', 'jwplayer_mute', 'false'),
('vi', 'videos', 'jwplayer_skin', 'five'),
('vi', 'videos', 'jwplayer_sharing', '0'),
('vi', 'videos', 'jwplayer_sharingsite', 'facebook,twitter,googleplus'),
('vi', 'videos', 'jwplayer_logo', '0'),
('vi', 'videos', 'jwplayer_logo_file', ''),
('vi', 'videos', 'jwplayer_position', 'top-right'),
('vi', 'videos', 'auto_postcomm', '1'),
('vi', 'videos', 'allowed_comm', '-1'),
('vi', 'videos', 'view_comm', '6'),
('vi', 'videos', 'setcomm', '4'),
('vi', 'videos', 'activecomm', '1'),
('vi', 'videos', 'emailcomm', '0'),
('vi', 'videos', 'adminscomm', ''),
('vi', 'videos', 'sortcomm', '0'),
('vi', 'videos', 'captcha', '1'),
('vi', 'videos', 'perpagecomm', '5'),
('vi', 'videos', 'timeoutcomm', '360'),
('vi', 'course', 'auto_postcomm', '1'),
('vi', 'course', 'allowed_comm', '-1'),
('vi', 'course', 'view_comm', '6'),
('vi', 'course', 'setcomm', '4'),
('vi', 'course', 'activecomm', '1'),
('vi', 'course', 'emailcomm', '0'),
('vi', 'course', 'adminscomm', ''),
('vi', 'course', 'sortcomm', '0'),
('vi', 'course', 'captcha', '1'),
('vi', 'course', 'perpagecomm', '5'),
('vi', 'course', 'timeoutcomm', '360'),
('vi', 'course', 'allowattachcomm', '0'),
('vi', 'course', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_cookies`
--

CREATE TABLE `nv_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_counter`
--

CREATE TABLE `nv_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_counter`
--

INSERT INTO `nv_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1634110771, 0),
('total', 'hits', 1634110771, 6509, 6509),
('year', '2020', 1609417977, 663, 663),
('year', '2021', 1634110771, 5846, 5846),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('month', 'Jan', 1612105911, 138, 138),
('month', 'Feb', 1614455828, 122, 122),
('month', 'Mar', 1617206834, 139, 139),
('month', 'Apr', 1619798777, 127, 127),
('month', 'May', 1622471419, 256, 256),
('month', 'Jun', 1625071780, 682, 682),
('month', 'Jul', 1627742261, 751, 751),
('month', 'Aug', 1630428130, 819, 819),
('month', 'Sep', 1633018873, 2121, 2121),
('month', 'Oct', 1634110771, 691, 691),
('month', 'Nov', 1606746107, 0, 0),
('month', 'Dec', 1609417977, 0, 0),
('day', '01', 1633104408, 44, 44),
('day', '02', 1633193806, 50, 50),
('day', '03', 1633275823, 48, 48),
('day', '04', 1633362668, 83, 83),
('day', '05', 1633453192, 57, 57),
('day', '06', 1633529729, 36, 36),
('day', '07', 1633624579, 66, 66),
('day', '08', 1633707333, 39, 39),
('day', '09', 1633795662, 81, 81),
('day', '10', 1633879134, 66, 66),
('day', '11', 1633969217, 53, 53),
('day', '12', 1634057887, 46, 46),
('day', '13', 1634110771, 22, 22),
('day', '14', 1631638150, 0, 0),
('day', '15', 1631723094, 0, 0),
('day', '16', 1631811139, 0, 0),
('day', '17', 1631894852, 0, 0),
('day', '18', 1631981135, 0, 0),
('day', '19', 1632070650, 0, 0),
('day', '20', 1632154714, 0, 0),
('day', '21', 1632236514, 0, 0),
('day', '22', 1632327575, 0, 0),
('day', '23', 1632415442, 0, 0),
('day', '24', 1632501270, 0, 0),
('day', '25', 1632586803, 0, 0),
('day', '26', 1632673969, 0, 0),
('day', '27', 1632760748, 0, 0),
('day', '28', 1632847845, 0, 0),
('day', '29', 1632934444, 0, 0),
('day', '30', 1633018873, 0, 0),
('day', '31', 1630428130, 0, 0),
('dayofweek', 'Sunday', 1633879134, 923, 923),
('dayofweek', 'Monday', 1633969217, 957, 957),
('dayofweek', 'Tuesday', 1634057887, 997, 997),
('dayofweek', 'Wednesday', 1634110771, 896, 896),
('dayofweek', 'Thursday', 1633624579, 813, 813),
('dayofweek', 'Friday', 1633707333, 868, 868),
('dayofweek', 'Saturday', 1633795662, 1055, 1055),
('hour', '00', 1634060386, 1, 1),
('hour', '01', 1634063965, 1, 1),
('hour', '02', 1634065337, 1, 1),
('hour', '03', 1634071814, 10, 10),
('hour', '04', 1633988825, 0, 0),
('hour', '05', 1634078519, 1, 1),
('hour', '06', 1633995766, 0, 0),
('hour', '07', 1634086444, 1, 1),
('hour', '08', 1634002699, 0, 0),
('hour', '09', 1634006157, 0, 0),
('hour', '10', 1634010343, 0, 0),
('hour', '11', 1634100192, 2, 2),
('hour', '12', 1634015728, 0, 0),
('hour', '13', 1634108120, 3, 3),
('hour', '14', 1634110771, 2, 2),
('hour', '15', 1633941767, 0, 0),
('hour', '16', 1634031655, 0, 0),
('hour', '17', 1633949486, 0, 0),
('hour', '18', 1634039795, 0, 0),
('hour', '19', 1634043275, 0, 0),
('hour', '20', 1634046888, 0, 0),
('hour', '21', 1634050244, 0, 0),
('hour', '22', 1633965896, 0, 0),
('hour', '23', 1634057887, 0, 0),
('bot', 'googlebot', 1634108120, 639, 639),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 1632411928, 1, 1),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 1634107337, 32, 32),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1632051324, 116, 116),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 1634071814, 741, 741),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 1624068273, 17, 17),
('browser', 'iphone', 1633969217, 89, 89),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1634108900, 1700, 1700),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 1633973071, 420, 420),
('browser', 'googlebot', 1634108120, 639, 639),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 1634110771, 2527, 2527),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 1634100192, 132, 132),
('os', 'unknown', 1634110771, 4032, 4032),
('os', 'win', 1625705813, 5, 5),
('os', 'win10', 1634046888, 157, 157),
('os', 'win8', 1633242199, 2, 2),
('os', 'win7', 1634107337, 58, 58),
('os', 'win2003', 1631107382, 4, 4),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 1630689120, 30, 30),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 1633430073, 31, 31),
('os', 'linux', 1631754161, 114, 114),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 1633969217, 94, 94),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 1613053720, 1, 1),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1634108900, 1981, 1981),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 1634022523, 542, 542),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 1631743034, 1, 1),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 1632297616, 5, 5),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 1633945570, 14, 14),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 1627502654, 2, 2),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 1632124583, 3, 3),
('country', 'IE', 1632355273, 11, 11),
('country', 'IL', 0, 0, 0),
('country', 'IN', 1631617092, 1, 1),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 1633973071, 6, 6),
('country', 'IS', 0, 0, 0),
('country', 'IT', 1627732310, 1, 1),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 1630876682, 1, 1),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 1627283262, 2, 2),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 1633379796, 1, 1),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 1631016926, 88, 88),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 1632051324, 30, 30),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 1634006157, 6, 6),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 1625747198, 1, 1),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 1634110771, 4655, 4655),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 1634057061, 508, 508),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1634071814, 631, 631),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_cronjobs`
--

CREATE TABLE `nv_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) NOT NULL,
  `run_func` varchar(255) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_cronjobs`
--

INSERT INTO `nv_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1546504163, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1634106736, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1546504163, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1634046888, 1, 'Tự động lưu CSDL'),
(3, 1546504163, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1634106736, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1546504163, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1634106736, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1546504163, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1634046888, 1, 'Xóa các file error_log quá hạn'),
(6, 1546504163, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1546504163, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1634106736, 1, 'Xóa các referer quá hạn'),
(8, 1546504163, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1634106736, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1546504163, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1634046888, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_extension_files`
--

CREATE TABLE `nv_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_ips`
--

CREATE TABLE `nv_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_ips`
--

INSERT INTO `nv_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '127.0.0.1', 0, 1, 1588734706, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_language`
--

CREATE TABLE `nv_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `langtype` varchar(50) NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) NOT NULL,
  `lang_en` text DEFAULT NULL,
  `update_en` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_language_file`
--

CREATE TABLE `nv_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) NOT NULL,
  `admin_file` varchar(200) NOT NULL DEFAULT '0',
  `langtype` varchar(50) NOT NULL DEFAULT 'lang_module',
  `author_en` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_logs`
--

CREATE TABLE `nv_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_logs`
--

INSERT INTO `nv_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.72.54', '', 0, 1599032273),
(2, 'vi', 'themes', 'Sửa block', 'Name : global text banner', '', 1, 1599033566),
(3, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1599034152),
(4, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:27.78.222.53', '', 0, 1601465399),
(5, 'vi', 'users', 'log_add_user', 'userid 2', '', 1, 1601466103),
(6, 'vi', 'authors', 'Thêm Quản trị', 'Username: adminv2', '', 1, 1601466160),
(7, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:27.78.222.53', '', 0, 1601467974),
(8, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:1.52.109.151', '', 0, 1601914683),
(9, 'vi', 'banners', 'log_del_banner', 'bannerid 10', '', 1, 1601914787),
(10, 'vi', 'banners', 'log_del_banner', 'bannerid 4', '', 1, 1601914793),
(11, 'vi', 'themes', 'Thiết lập giao diện theme: \"beauty\"', '', '', 1, 1601915526),
(12, 'vi', 'themes', 'Kích hoạt theme: \"beauty\"', '', '', 1, 1601915532),
(13, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1601915577),
(14, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1601915844),
(15, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1601915847),
(16, 'vi', 'themes', 'Thêm block', 'Name : Slider', '', 1, 1601915975),
(17, 'vi', 'modules', 'Cài lại module \"slider\"', '', '', 1, 1601916099),
(18, 'vi', 'modules', 'Cài lại module \"slider\"', '', '', 1, 1601916455),
(19, 'vi', 'modules', 'Cài lại module \"slider\"', '', '', 1, 1601916471),
(20, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/tennis_video-home-page_tennis-home_video_213_c3vzyw5hx3rlbmlzxzaynw1.mp4', '', 1, 1601916683),
(21, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/slide3_bg-100x50.jpg', '', 1, 1601916792),
(22, 'vi', 'slider', 'Add', ' ', '', 1, 1601917177),
(23, 'vi', 'themes', 'Thêm block', 'Name : a', '', 1, 1601917256),
(24, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917333),
(25, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917347),
(26, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917636),
(27, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917658),
(28, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917757),
(29, 'vi', 'themes', 'Sửa block', 'Name : a', '', 1, 1601917789),
(30, 'vi', 'themes', 'Thêm block', 'Name : ẻ', '', 1, 1601917852),
(31, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/tennisvieton1.png', '', 1, 1601918837),
(32, 'vi', 'slider', 'Edit', 'ID: 1', '', 1, 1601918847),
(33, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/tennisvietson2.png', '', 1, 1601918951),
(34, 'vi', 'slider', 'Add', ' ', '', 1, 1601918979),
(35, 'vi', 'upload', 'Upload file', 'uploads/logo-1-dark.png', '', 1, 1601919146),
(36, 'vi', 'themes', 'Sửa block', 'Name : Thông tin Liên Hệ', '', 1, 1601919263),
(37, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1601919932),
(38, 'vi', 'about', 'Delete', 'ID: 1', '', 1, 1601919935),
(39, 'vi', 'modules', 'Thiết lập module mới freecontent', '', '', 1, 1601920021),
(40, 'vi', 'modules', 'Sửa module &ldquo;freecontent&rdquo;', '', '', 1, 1601920040),
(41, 'vi', 'freecontent', 'Add Block', 'Trung tâm Việt Sơn', '', 1, 1601920061),
(42, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about4.png', '', 1, 1601920160),
(43, 'vi', 'freecontent', 'Add Content', 'HỢP TÁC QUỐC TẾ', '', 1, 1601920165),
(44, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about3.png', '', 1, 1601920331),
(45, 'vi', 'freecontent', 'Add Content', 'ĐỘI NGŨ CHUYÊN GIA HÀNG ĐẦU', '', 1, 1601920335),
(46, 'vi', 'themes', 'Thêm block', 'Name : gt', '', 1, 1601920381),
(47, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/image-about3.png', '', 1, 1601920445),
(48, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about3.png', '', 1, 1601920455),
(49, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1601920458),
(50, 'vi', 'themes', 'Sửa block', 'Name : gt', '', 1, 1601920591),
(51, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.65.41', '', 0, 1601989076),
(52, 'vi', 'freecontent', 'Del Content', 'ID:1', '', 1, 1601989282),
(53, 'vi', 'freecontent', 'Del Content', 'ID:2', '', 1, 1601989286),
(54, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about1.png', '', 1, 1601989394),
(55, 'vi', 'freecontent', 'Add Content', 'KINH NGHIỆM 14 NĂM', '', 1, 1601989398),
(56, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about2.png', '', 1, 1601989602),
(57, 'vi', 'freecontent', 'Add Content', 'TIÊN PHONG NGHIÊN CỨU', '', 1, 1601989606),
(58, 'vi', 'freecontent', 'Add Content', 'ĐỘI NGŨ CHUYÊN GIA HÀNG ĐẦU', '', 1, 1601989736),
(59, 'vi', 'freecontent', 'Edit Content', 'ID: 5', '', 1, 1601989754),
(60, 'vi', 'freecontent', 'Add Content', 'HỢP TÁC QUỐC TẾ', '', 1, 1601989804),
(61, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/image-about3.png', '', 1, 1601990574),
(62, 'vi', 'upload', 'Upload file', 'uploads/freecontent/image-about33.png', '', 1, 1601990589),
(63, 'vi', 'freecontent', 'Edit Content', 'ID: 5', '', 1, 1601990593),
(64, 'vi', 'themes', 'Sửa block', 'Name : Thông tin Liên Hệ', '', 1, 1601991329),
(65, 'vi', 'themes', 'Thêm block', 'Name : global page dichvu', '', 1, 1601991464),
(66, 'vi', 'themes', 'Sửa block', 'Name : global page dichvu', '', 1, 1601991479),
(67, 'vi', 'themes', 'Sửa block', 'Name : Lý do bạn nên chon Việt Sơn', '', 1, 1601991518),
(68, 'vi', 'modules', 'Sửa module &ldquo;page&rdquo;', '', '', 1, 1601991546),
(69, 'vi', 'page', 'Delete', 'ID: 5', '', 1, 1601991562),
(70, 'vi', 'page', 'Add', ' ', '', 1, 1601991654),
(71, 'vi', 'page', 'Add', ' ', '', 1, 1601991675),
(72, 'vi', 'page', 'Add', ' ', '', 1, 1601991697),
(73, 'vi', 'page', 'Add', ' ', '', 1, 1601991714),
(74, 'vi', 'upload', 'Upload file', 'uploads/page/image-service5.png', '', 1, 1601991771),
(75, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1601991775),
(76, 'vi', 'page', 'Edit', 'ID: 7', '', 1, 1601991782),
(77, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1601991789),
(78, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1601991796),
(79, 'vi', 'themes', 'Thêm block', 'Name : module block newscenter', '', 1, 1601991995),
(80, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1601992012),
(81, 'vi', 'modules', 'Thêm module ảo professionals', '', '', 1, 1601992116),
(82, 'vi', 'modules', 'Thiết lập module mới professionals', '', '', 1, 1601992122),
(83, 'vi', 'modules', 'Sửa module &ldquo;professionals&rdquo;', '', '', 1, 1601992134),
(84, 'vi', 'professionals', 'Add Block', 'Khách hàng dánh giá trung tâm', '', 1, 1601992163),
(85, 'vi', 'upload', 'Upload file', 'uploads/professionals/image-service5.png', '', 1, 1601992196),
(86, 'vi', 'professionals', 'Add Content', 'Nguyễn Hoàng', '', 1, 1601992199),
(87, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:1.52.109.151', '', 0, 1601994942),
(88, 'vi', 'themes', 'Thêm block', 'Name : khách hàng đánh giá', '', 1, 1601995541),
(89, 'vi', 'themes', 'Sửa block', 'Name : Hoạt động - Tin tức', '', 1, 1601995805),
(90, 'vi', 'news', 'log_edit_blockcat', 'blockid 1', '', 1, 1601995845),
(91, 'vi', 'page', 'Add', ' ', '', 1, 1601995931),
(92, 'vi', 'page', 'Add', ' ', '', 1, 1601995949),
(93, 'vi', 'page', 'Add', ' ', '', 1, 1601995971),
(94, 'vi', 'page', 'Add', ' ', '', 1, 1601995986),
(95, 'vi', 'page', 'Add', ' ', '', 1, 1601996015),
(96, 'vi', 'slider', 'Edit', 'ID: 2', '', 1, 1601996137),
(97, 'vi', 'slider', 'Edit', 'ID: 1', '', 1, 1601996148),
(98, 'vi', 'news', 'Xóa bài viêt', 'NukeViet bất ngờ tung ra phiên bản phần mềm Cổng thông tin cho cơ quan nhà nước, Thời gian đánh giá hồ sơ dự thầu theo nghị định hay thông tư?, Hậu TPP&#x3A; Việt Nam có tới 6 kế hoạch phòng xa, Quyết tâm cao để đẩy mạnh CCHC thực chất, hiệu quả hơn, Nghiên cứu, phát triển sản phẩm CNTT phục vụ Chính phủ điện tử, 11 lĩnh vực quan trọng cần ưu tiên bảo đảm an toàn thông tin mạng, Thủ tướng chỉ thị tăng cường năng lực tiếp cận cuộc Cách mạng CN lần thứ 4, Cách mạng 4.0 và bàn tay Chính phủ, “Điểm mặt” 9 nhầm lẫn thường gặp về phần mềm nguồn mở, Bộ Thông tin và Truyền thông ban hành Phương pháp đánh giá mức độ ứng dụng công nghệ thông tin của cơ quan nhà nước năm 2016, Tuyên dương 34 công trình sáng tạo trẻ, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', '', 1, 1601996236),
(99, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Thông tin kinh tế - xã hội', '', 1, 1601996267),
(100, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Mua sắm - mời thầu', '', 1, 1601996276),
(101, 'vi', 'upload', 'Upload file', 'uploads/news/2020_10/khoa-hoc.png', '', 1, 1601996482),
(102, 'vi', 'news', 'Thêm bài viết', 'KHAI GIẢNG CÁC KHÓA HỌC TRỌN GÓI', '', 1, 1601996589),
(103, 'vi', 'page', 'Edit', 'ID: 14', '', 1, 1601996634),
(104, 'vi', 'page', 'Edit', 'ID: 13', '', 1, 1601996641),
(105, 'vi', 'page', 'Edit', 'ID: 12', '', 1, 1601996649),
(106, 'vi', 'page', 'Edit', 'ID: 11', '', 1, 1601996658),
(107, 'vi', 'page', 'Edit', 'ID: 10', '', 1, 1601996666),
(108, 'vi', 'professionals', 'Add Block', 'Huấn Luyện Viên', '', 1, 1601996790),
(109, 'vi', 'professionals', 'Add Content', 'Thầy Việt Sơn Việt Sơn', '', 1, 1601996833),
(110, 'vi', 'professionals', 'Edit Content', 'ID: 2', '', 1, 1601996849),
(111, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1601997023),
(112, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1601997037),
(113, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1601997207),
(114, 'vi', 'themes', 'Thêm block', 'Name : Huấn Luyện Viên', '', 1, 1601997356),
(115, 'vi', 'modules', 'Thiết lập module mới videoclips', '', '', 1, 1601997386),
(116, 'vi', 'modules', 'Sửa module &ldquo;videoclips&rdquo;', '', '', 1, 1601997389),
(117, 'vi', 'videoclips', 'Thêm thể loại mới', 'ID 1', '', 1, 1601997428),
(118, 'vi', 'videoclips', 'Thêm thể loại mới', 'ID 2', '', 1, 1601997452),
(119, 'vi', 'upload', 'Upload file', 'uploads/khoa-hoc.png', '', 1, 1601997494),
(120, 'vi', 'upload', 'Upload file', 'uploads/videoclips/images/khoa-hoc.png', '', 1, 1601997525),
(121, 'vi', 'videoclips', 'Thêm video-clip', 'Id: 1', '', 1, 1601997534),
(122, 'vi', 'themes', 'Thêm block', 'Name : VIDEOS NGƯỜI THẬT - VIỆC THẬT', '', 1, 1601997585),
(123, 'vi', 'videoclips', 'Sửa video-clip', 'Id: 1', '', 1, 1601997656),
(124, 'vi', 'videoclips', 'Thêm video-clip', 'Id: 2', '', 1, 1601997753),
(125, 'vi', 'modules', 'Xóa module \"videoclips\"', '', '', 1, 1601997976),
(126, 'vi', 'modules', 'Thiết lập module mới videos', '', '', 1, 1601997983),
(127, 'vi', 'modules', 'Sửa module &ldquo;videos&rdquo;', '', '', 1, 1601997986),
(128, 'vi', 'videos', 'Thêm chuyên mục', 'Khóa học người lớn', '', 1, 1601998010),
(129, 'vi', 'videos', 'Thêm chuyên mục', 'Khóa học thiếu nhi', '', 1, 1601998025),
(130, 'vi', 'upload', 'Upload file', 'uploads/videos/img/2020_10/khoa-hoc.png', '', 1, 1601998080),
(131, 'vi', 'videos', 'Thêm bảng Uploader', 'nvholding.vn', '', 1, 1601998113),
(132, 'vi', 'videos', 'Thêm Videos', 'Buổi dạy khóa 1', '', 1, 1601998113),
(133, 'vi', 'videos', 'Thêm Videos', 'Buổi dạy khóa 1', '', 1, 1601998223),
(134, 'vi', 'themes', 'Thêm block', 'Name : VIDEOS NGƯỜI THẬT - VIỆC THẬT', '', 1, 1601998290),
(135, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:1.52.109.151', '', 0, 1602026853),
(136, 'vi', 'themes', 'Thêm block', 'Name : menu site', '', 1, 1602027024),
(137, 'vi', 'themes', 'Sửa block', 'Name : menu site', '', 1, 1602027071),
(138, 'vi', 'themes', 'Sửa block', 'Name : menu site', '', 1, 1602027190),
(139, 'vi', 'menu', 'Delete menu item', 'Item ID 124', '', 1, 1602027278),
(140, 'vi', 'menu', 'Delete menu item', 'Item ID 125', '', 1, 1602027278),
(141, 'vi', 'menu', 'Delete menu item', 'Item ID 126', '', 1, 1602027278),
(142, 'vi', 'menu', 'Delete menu item', 'Item ID 127', '', 1, 1602027278),
(143, 'vi', 'menu', 'Delete menu item', 'Item ID 138', '', 1, 1602027294),
(144, 'vi', 'menu', 'Delete menu item', 'Item ID 139', '', 1, 1602027294),
(145, 'vi', 'professionals', 'Add Content', 'Thầy Việt Sơn', '', 1, 1602028380),
(146, 'vi', 'professionals', 'Edit Content', 'ID: 3', '', 1, 1602028392),
(147, 'vi', 'professionals', 'Add Content', 'Thầy Việt Sơn', '', 1, 1602028453),
(148, 'vi', 'professionals', 'Add Content', 'Nguyễn Huân', '', 1, 1602028843),
(149, 'vi', 'themes', 'Sửa block', 'Name : khách hàng đánh giá', '', 1, 1602029156),
(150, 'vi', 'themes', 'Sửa block', 'Name : khách hàng đánh giá', '', 1, 1602029779),
(151, 'vi', 'professionals', 'Edit Content', 'ID: 1', '', 1, 1602029949),
(152, 'vi', 'professionals', 'Edit Content', 'ID: 5', '', 1, 1602030018),
(153, 'vi', 'professionals', 'Add Content', 'Kim Thanh', '', 1, 1602030141),
(154, 'vi', 'videos', 'Thêm Videos', 'Khoa học Ngưới lớn', '', 1, 1602030654),
(155, 'vi', 'videos', 'Thêm Videos', 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', '', 1, 1602030736),
(156, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.173.191.224', '', 0, 1602034024),
(157, 'vi', 'themes', 'Thêm block', 'Name : Trung tâm Việt Sơn', '', 1, 1602034168),
(158, 'vi', 'themes', 'Sửa block', 'Name : Trung tâm Việt Sơn', '', 1, 1602034349),
(159, 'vi', 'themes', 'Sửa block', 'Name : Trung tâm Việt Sơn', '', 1, 1602034697),
(160, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.173.191.224', '', 0, 1602039909),
(161, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.173.191.224', '', 0, 1602057057),
(162, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.173.191.224', '', 0, 1602065089),
(163, 'vi', 'themes', 'Sửa block', 'Name : Lý do bạn nên chon Việt Sơn', '', 1, 1602065131),
(164, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1602065301),
(165, 'vi', 'page', 'Edit', 'ID: 7', '', 1, 1602065321),
(166, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1602065343),
(167, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1602065397),
(168, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1602065442),
(169, 'vi', 'page', 'Edit', 'ID: 7', '', 1, 1602065474),
(170, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1602065496),
(171, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1602065508),
(172, 'vi', 'page', 'Edit', 'ID: 10', '', 1, 1602065571),
(173, 'vi', 'page', 'Edit', 'ID: 11', '', 1, 1602065600),
(174, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1602065622),
(175, 'vi', 'page', 'Edit', 'ID: 7', '', 1, 1602065628),
(176, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1602065675),
(177, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1602065681),
(178, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1602065691),
(179, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1602065700),
(180, 'vi', 'page', 'Edit', 'ID: 10', '', 1, 1602065711),
(181, 'vi', 'page', 'Edit', 'ID: 11', '', 1, 1602065727),
(182, 'vi', 'page', 'Edit', 'ID: 12', '', 1, 1602065798),
(183, 'vi', 'page', 'Edit', 'ID: 13', '', 1, 1602065879),
(184, 'vi', 'page', 'Edit', 'ID: 14', '', 1, 1602065922),
(185, 'vi', 'professionals', 'Add Content', 'Ngân Thu Thu', '', 1, 1602066370),
(186, 'vi', 'professionals', 'Add Content', 'Meo TV', '', 1, 1602066392),
(187, 'vi', 'professionals', 'Add Content', 'Duy Anh Phương Dao', '', 1, 1602066470),
(188, 'vi', 'professionals', 'Edit Content', 'ID: 9', '', 1, 1602066544),
(189, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:1.52.109.151', '', 0, 1602068347),
(190, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.65.41', '', 0, 1602077128),
(191, 'vi', 'modules', 'Thêm module ảo course', '', '', 1, 1602077614),
(192, 'vi', 'modules', 'Thiết lập module mới course', '', '', 1, 1602077619),
(193, 'vi', 'modules', 'Sửa module &ldquo;course&rdquo;', '', '', 1, 1602077633),
(194, 'vi', 'upload', 'Upload file', 'uploads/course/nganthuthu.jpg', '', 1, 1602077702),
(195, 'vi', 'course', 'Add', ' ', '', 1, 1602077721),
(196, 'vi', 'upload', 'Upload file', 'uploads/course/tennisvietson2.png', '', 1, 1602077768),
(197, 'vi', 'course', 'Add', ' ', '', 1, 1602077789),
(198, 'vi', 'upload', 'Upload file', 'uploads/course/khoa-hoc.png', '', 1, 1602077819),
(199, 'vi', 'course', 'Add', ' ', '', 1, 1602077840),
(200, 'vi', 'themes', 'Thêm block', 'Name : khóa học tennis', '', 1, 1602077927),
(201, 'vi', 'themes', 'Thiết lập layout theme: \"beauty\"', '', '', 1, 1602078197),
(202, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:42.119.230.198', '', 0, 1604418218),
(203, 'vi', 'professionals', 'Edit Content', 'ID: 2', '', 1, 1604418265),
(204, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/0ae7852b3adbc4859dca.jpg', '', 1, 1604418412),
(205, 'vi', 'slider', 'Add', ' ', '', 1, 1604418424),
(206, 'vi', 'upload', 'Upload file', 'uploads/professionals/0ae7852b3adbc4859dca.jpg', '', 1, 1604418523),
(207, 'vi', 'professionals', 'Edit Content', 'ID: 2', '', 1, 1604418589),
(208, 'vi', 'upload', 'Upload file', 'uploads/course/tennis-viet-son-tre-em.jpg', '', 1, 1604418689),
(209, 'vi', 'course', 'Edit', 'ID: 3', '', 1, 1604418696),
(210, 'vi', 'course', 'Edit', 'ID: 1', '', 1, 1604418757),
(211, 'vi', 'course', 'Edit', 'ID: 1', '', 1, 1604418949),
(212, 'vi', 'professionals', 'Edit Content', 'ID: 3', '', 1, 1604419058),
(213, 'vi', 'upload', 'Upload file', 'uploads/professionals/0ae7852b3adbc4859dca_1.jpg', '', 1, 1604419139),
(214, 'vi', 'professionals', 'Edit Content', 'ID: 3', '', 1, 1604419185),
(215, 'vi', 'professionals', 'Edit Content', 'ID: 4', '', 1, 1604419230),
(216, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:42.119.230.198', '', 0, 1604421031),
(217, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:42.119.230.198', '', 0, 1604446297),
(218, 'vi', 'videos', 'Sửa Video', 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', '', 1, 1604446318),
(219, 'vi', 'videos', 'Sửa Video', 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', '', 1, 1604446337),
(220, 'vi', 'videos', 'Sửa Video', 'Khoa học Ngưới lớn', '', 1, 1604446372),
(221, 'vi', 'videos', 'Sửa Video', 'Buổi dạy khóa 1', '', 1, 1604446446),
(222, 'vi', 'upload', 'Upload file', 'uploads/videos/img/2020_11/vieton-trem.jpg', '', 1, 1604446526),
(223, 'vi', 'videos', 'Sửa Video', 'Buổi dạy khóa 1', '', 1, 1604446531),
(224, 'vi', 'upload', 'Upload file', 'uploads/news/2020_10/vieton-trem.jpg', '', 1, 1604446565),
(225, 'vi', 'news', 'Sửa bài viết', 'KHAI GIẢNG CÁC KHÓA HỌC TRỌN GÓI', '', 1, 1604446572),
(226, 'vi', 'news', 'Sửa bài viết', 'KHAI GIẢNG CÁC KHÓA HỌC TRỌN GÓI', '', 1, 1604446638),
(227, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.92.23', '', 0, 1604664224),
(228, 'vi', 'freecontent', 'Edit Content', 'ID: 3', '', 1, 1604664254),
(229, 'vi', 'freecontent', 'Edit Content', 'ID: 5', '', 1, 1604664288),
(230, 'vi', 'freecontent', 'Edit Content', 'ID: 5', '', 1, 1604664424),
(231, 'vi', 'upload', 'Upload file', 'uploads/professionals/0ae7852b3adbc4859dca_2.jpg', '', 1, 1604664473),
(232, 'vi', 'professionals', 'Edit Content', 'ID: 4', '', 1, 1604664533),
(233, 'vi', 'professionals', 'Add Content', 'Trung tâm Việt Sơn', '', 1, 1604664576),
(234, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/tennis-viet-son-tre-em.jpg', '', 1, 1604664652),
(235, 'vi', 'slider', 'Add', ' ', '', 1, 1604664657),
(236, 'vi', 'upload', 'Upload file', 'uploads/slider/2020/vieton-trem.jpg', '', 1, 1604664679),
(237, 'vi', 'slider', 'Add', ' ', '', 1, 1604664684),
(238, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:42.116.121.63', '', 0, 1604877039),
(239, 'vi', 'upload', 'Upload file', 'uploads/professionals/2b2e8a18843a7f64262b.jpg', '', 1, 1604877104),
(240, 'vi', 'professionals', 'Edit Content', 'ID: 1', '', 1, 1604877167),
(241, 'vi', 'upload', 'Upload file', 'uploads/professionals/11058069_822289434510225_1635129924412990146_n.jpg', '', 1, 1604877306),
(242, 'vi', 'professionals', 'Edit Content', 'ID: 5', '', 1, 1604877320),
(243, 'vi', 'upload', 'Upload file', 'uploads/professionals/70587424_2216177058681637_2195047881067462656_n.jpg', '', 1, 1604877423),
(244, 'vi', 'professionals', 'Edit Content', 'ID: 6', '', 1, 1604877428),
(245, 'vi', 'upload', 'Upload file', 'uploads/professionals/48112645_151667862468108_4942576844441387008_n.jpg', '', 1, 1604877663),
(246, 'vi', 'professionals', 'Edit Content', 'ID: 7', '', 1, 1604877719),
(247, 'vi', 'upload', 'Upload file', 'uploads/professionals/94330236_131414321811769_1694092159906480128_o.jpg', '', 1, 1604877967),
(248, 'vi', 'professionals', 'Edit Content', 'ID: 8', '', 1, 1604877972),
(249, 'vi', 'upload', 'Upload file', 'uploads/professionals/117392494_1365457303644795_1549462266218863114_n.jpg', '', 1, 1604878237),
(250, 'vi', 'professionals', 'Edit Content', 'ID: 9', '', 1, 1604878323),
(251, 'vi', 'upload', 'Upload file', 'uploads/page/ruxnodc1mzuzmjy.jpg', '', 1, 1604878887),
(252, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1604878897),
(253, 'vi', 'page', 'Edit', 'ID: 6', '', 1, 1604878910),
(254, 'vi', 'page', 'Edit', 'ID: 7', '', 1, 1604878922),
(255, 'vi', 'page', 'Edit', 'ID: 8', '', 1, 1604878945),
(256, 'vi', 'page', 'Edit', 'ID: 9', '', 1, 1604878963),
(257, 'vi', 'page', 'Edit', 'ID: 10', '', 1, 1604878977),
(258, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:42.116.121.63', '', 0, 1604880777),
(259, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.236.132', '', 0, 1604897151),
(260, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:113.172.236.132', '', 0, 1604898953),
(261, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:113.172.236.132', '', 0, 1604907502),
(262, 'vi', 'professionals', 'Del Content', 'ID:3', '', 1, 1604907536),
(263, 'vi', 'professionals', 'Del Content', 'ID:4', '', 1, 1604907541),
(264, 'vi', 'professionals', 'Del Content', 'ID:10', '', 1, 1604907549),
(265, 'vi', 'login', '[nvholding.vn] Đăng nhập Thất bại', ' Client IP:42.118.140.13', '', 0, 1610333666),
(266, 'vi', 'login', '[nvholding.vn] Đăng nhập Thất bại', ' Client IP:42.118.140.13', '', 0, 1610333678),
(267, 'vi', 'login', '[nvholding.vn] Đăng nhập Thất bại', ' Client IP:42.118.140.13', '', 0, 1610333696),
(268, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:1.53.44.79', '', 0, 1619013406),
(269, 'vi', 'upload', 'Upload file', 'uploads/professionals/2d3eca7c2b9dd9c3808c.jpg', '', 1, 1619013472),
(270, 'vi', 'upload', 'Upload file', 'uploads/professionals/69d5f3851c64ee3ab775.jpg', '', 1, 1619013472),
(271, 'vi', 'upload', 'Upload file', 'uploads/professionals/034861b38252700c2943.jpg', '', 1, 1619013473),
(272, 'vi', 'professionals', 'Add Content', 'Trung tâm Việt Sơn', '', 1, 1619013663),
(273, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/2d3eca7c2b9dd9c3808c-567x714_195_245.jpg', '', 1, 1619013791),
(274, 'vi', 'professionals', 'Add Content', 'Trung tâm Việt Sơn', '', 1, 1619013798),
(275, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/034861b38252700c2943_436_245.jpg', '', 1, 1619013931),
(276, 'vi', 'professionals', 'Add Content', 'Trung tâm Việt Sơn', '', 1, 1619014296),
(277, 'vi', 'professionals', 'Del Content', 'ID:12', '', 1, 1619014305),
(278, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:42.115.143.186', '', 0, 1622543883),
(279, 'vi', 'professionals', 'Edit Content', 'ID: 13', '', 1, 1622543962),
(280, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/034861b38252700c2943_436_245-108x165_139_212.jpg', '', 1, 1622544026),
(281, 'vi', 'professionals', 'Edit Content', 'ID: 13', '', 1, 1622544045),
(282, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/034861b38252700c2943_436_245-108x165_139_212_161_245.jpg', '', 1, 1622544106),
(283, 'vi', 'professionals', 'Edit Content', 'ID: 13', '', 1, 1622544206),
(284, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/69d5f3851c64ee3ab775-128x244_158_245.jpg', '', 1, 1622544421),
(285, 'vi', 'professionals', 'Edit Content', 'ID: 11', '', 1, 1622544469),
(286, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:42.115.143.186', '', 1, 1622544553),
(287, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:113.185.76.229', '', 0, 1622556093),
(288, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:113.185.76.235', '', 0, 1622601804),
(289, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622617514),
(290, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622618712),
(291, 'vi', 'login', '[adminv2] Đăng nhập Thất bại', ' Client IP:113.185.76.235', '', 0, 1622619187),
(292, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:113.185.76.235', '', 0, 1622619220),
(293, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:113.185.76.235', '', 0, 1622619535),
(294, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622627329),
(295, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622627509),
(296, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622627857),
(297, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622631498),
(298, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622636081),
(299, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622646422),
(300, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622780927),
(301, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/6a20bf3e-b124-41ac-8b78-951eba08a716.jpeg', '', 2, 1622780999),
(302, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/6947063e-ba85-4016-96b7-bc17930e731c.jpeg', '', 2, 1622781111),
(303, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/b4323552-a88f-4999-874b-1fd80dced16f.jpeg', '', 2, 1622781242),
(304, 'vi', 'news', 'Thêm bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622781300),
(305, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622781414),
(306, 'vi', 'login', '[adminv2] Thoát khỏi tài khoản Quản trị', ' Client IP:14.187.61.225', '', 0, 1622783358),
(307, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1622783547),
(308, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1538.jpg', '', 2, 1622783597),
(309, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1539.jpg', '', 2, 1622783620),
(310, 'vi', 'news', 'Thêm bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622783655),
(311, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622783694),
(312, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622784014),
(313, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622784166),
(314, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785001),
(315, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785039),
(316, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1542.jpg', '', 2, 1622785293),
(317, 'vi', 'news', 'Thêm bài viết', 'Lớp học tennis căn bản', '', 2, 1622785311),
(318, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785371),
(319, 'vi', 'news', 'Xóa bài viêt', 'Lớp học tennis căn bản', '', 2, 1622785401),
(320, 'vi', 'news', 'Xóa bài viêt', 'Lớp học thiếu nhi căn bản', '', 2, 1622785404),
(321, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1538_1.jpg', '', 2, 1622785431),
(322, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1539_1.jpg', '', 2, 1622785452),
(323, 'vi', 'news', 'Thêm bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785475),
(324, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1539_2.jpg', '', 2, 1622785561),
(325, 'vi', 'news', 'Thêm bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785593),
(326, 'vi', 'news', 'Sửa bài viết', 'Lớp học thiếu nhi căn bản', '', 2, 1622785679),
(327, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1542_1.jpg', '', 2, 1622785755),
(328, 'vi', 'news', 'Thêm bài viết', 'Lớp học tennis căn bản', '', 2, 1622785765),
(329, 'vi', 'news', 'Sửa bài viết', 'Lớp học tennis căn bản', '', 2, 1622786244),
(330, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/1622785958390.mp4', '', 2, 1622786633),
(331, 'vi', 'news', 'Thêm bài viết', 'Bài tập volley nâng cao', '', 2, 1622786808),
(332, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1623154426),
(333, 'vi', 'news', 'Xóa bài viêt', 'Bài tập volley nâng cao', '', 2, 1623154557),
(334, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/1622785958390_1.mp4', '', 2, 1623155255),
(335, 'vi', 'news', 'Thêm bài viết', 'Bài tập volley nâng cao', '', 2, 1623155327),
(336, 'vi', 'news', 'Xóa bài viêt', 'Bài tập volley nâng cao', '', 2, 1623155383),
(337, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/untitled.png', '', 2, 1623155567),
(338, 'vi', 'news', 'Thêm bài viết', 'Bài tập volley nâng cao', '', 2, 1623155596),
(339, 'vi', 'news', 'Xóa bài viêt', 'Bài tập volley nâng cao', '', 2, 1623155619),
(340, 'vi', 'news', 'Thêm bài viết', 'Bài tập volley nâng cao', '', 2, 1623155678),
(341, 'vi', 'news', 'Xóa bài viêt', 'Bài tập volley nâng cao', '', 2, 1623155733),
(342, 'vi', 'news', 'Thêm bài viết', 'Bài tập volley nâng cao', '', 2, 1623155824),
(343, 'vi', 'news', 'Sửa bài viết', 'Bài tập volley nâng cao', '', 2, 1623155921),
(344, 'vi', 'login', '[adminv2] Đăng nhập Thất bại', ' Client IP:14.187.61.225', '', 0, 1623215459),
(345, 'vi', 'login', '[adminv2] Đăng nhập', ' Client IP:14.187.61.225', '', 0, 1623215512),
(346, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1563.jpg', '', 2, 1623215916),
(347, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1563_1.jpg', '', 2, 1623215946),
(348, 'vi', 'news', 'Thêm bài viết', 'Huấn luyện viên và học viên mới', '', 2, 1623215959),
(349, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1564.jpg', '', 2, 1623216002),
(350, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1564_1.jpg', '', 2, 1623216017),
(351, 'vi', 'news', 'Thêm bài viết', 'Trước giờ thi đấu', '', 2, 1623216033),
(352, 'vi', 'news', 'Xóa bài viêt', 'Bài tập volley nâng cao', '', 2, 1623216085),
(353, 'vi', 'news', 'Sửa bài viết', 'Trước giờ thi đấu', '', 2, 1623216118),
(354, 'vi', 'upload', 'Upload file', 'uploads/news/2021_06/img_1564_2.jpg', '', 2, 1623216152),
(355, 'vi', 'news', 'Sửa bài viết', 'Trước giờ thi đấu', '', 2, 1623216166),
(356, 'vi', 'login', '[tennisvietson_vs] Đăng nhập Thất bại', ' Client IP:116.99.211.149', '', 0, 1628973875),
(357, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:14.187.187.16', '', 0, 1630938787),
(358, 'vi', 'professionals', 'Edit Content', 'ID: 11', '', 1, 1630938833),
(359, 'vi', 'upload', 'Upload file', 'uploads/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16.jpg', '', 1, 1630938976),
(360, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_157_245.jpg', '', 1, 1630939104),
(361, 'vi', 'professionals', 'Edit Content', 'ID: 11', '', 1, 1630939113),
(362, 'vi', 'professionals', 'Edit Content', 'ID: 13', '', 1, 1630939139),
(363, 'vi', 'professionals', 'Edit Content', 'ID: 13', '', 1, 1630939192),
(364, 'vi', 'professionals', 'Edit Content', 'ID: 11', '', 1, 1630939240),
(365, 'vi', 'upload', 'Công cụ ảnh', 'uploads/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_192_300.jpg', '', 1, 1630939395),
(366, 'vi', 'professionals', 'Edit Content', 'ID: 11', '', 1, 1630939404),
(367, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:14.187.187.16', '', 0, 1631268564),
(368, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1631268714),
(369, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1631268744),
(370, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:14.187.187.16', '', 0, 1631270596),
(371, 'vi', 'login', '[nvholding.vn] Đăng nhập', ' Client IP:14.187.187.16', '', 0, 1631272307),
(372, 'vi', 'about', 'Add', ' ', '', 1, 1631272691),
(373, 'vi', 'upload', 'Upload file', 'uploads/about/0ae7852b3adbc4859dca.jpg', '', 1, 1631272990),
(374, 'vi', 'upload', 'Đổi tên file', 'uploads/about/0ae7852b3adbc4859dca.jpg -> uploads/about/day-tennis-binhthanh.jpg', '', 1, 1631273019),
(375, 'vi', 'about', 'Add', ' ', '', 1, 1631273026),
(376, 'vi', 'about', 'Edit', 'ID: 4', '', 1, 1631273050),
(377, 'vi', 'about', 'Edit', 'ID: 3', '', 1, 1631273196),
(378, 'vi', 'login', '[nvholding.vn] Thoát khỏi tài khoản Quản trị', ' Client IP:14.187.187.16', '', 0, 1631275036),
(379, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:113.163.187.102', '', 0, 1634010357),
(380, 'vi', 'login', '[adminv2] Đăng nhập Thất bại', ' Client IP:113.163.187.102', '', 0, 1634010404);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_notification`
--

CREATE TABLE `nv_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) NOT NULL DEFAULT '' COMMENT 'danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) NOT NULL,
  `module` varchar(50) NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_plugin`
--

CREATE TABLE `nv_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_plugin`
--

INSERT INTO `nv_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_sessions`
--

CREATE TABLE `nv_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_sessions`
--

INSERT INTO `nv_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('785ab875d2b08244bd45e274ec666012', 0, 'bot:Bing Bot', 1634106723),
('0302dcd508285d5193693bb23e2f4d8f', 0, 'bot:Bing Bot', 1634110771),
('56d6386cbff2138bc2a213e336d4375b', 0, 'guest', 1634108900),
('ab42a08e8e71e738ba039a0c85f61c41', 0, 'bot:GoogleBot', 1634108120),
('3938e076d4cc0f1304095b97b32d8311', 0, 'guest', 1634107337);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_setup_extensions`
--

CREATE TABLE `nv_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) NOT NULL DEFAULT '',
  `table_prefix` varchar(55) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text NOT NULL,
  `note` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_setup_extensions`
--

INSERT INTO `nv_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(28, 'module', 'faq', 0, 1, 'faq', 'faq', '4.3.04 1546504163', 1498555548, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.4.02 1592816400', 1546504163, 'VINADES (contact@vinades.vn)', ''),
(254, 'module', 'laws', 0, 1, 'laws', 'laws', '4.3.04 1546504163', 1498555548, 'VINADES (contact@vinades.vn)', 'Modules văn bản pháp luật'),
(391, 'theme', 'egov', 0, 0, 'egov', 'egov', '4.3.04 1546504163', 1510912800, 'VINADES (contact@vinades.vn)', 'egov'),
(0, 'module', 'about', 0, 0, 'page', 'about', '4.4.02 1592816400', 1500862887, '', ''),
(374, 'module', 'organs', 0, 1, 'organs', 'organs', '4.3.04 1546504163', 1506565060, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'co-cau-to-chuc', 0, 0, 'organs', 'co_cau_to_chuc', '4.3.04 1546504163', 1506565068, '', ''),
(0, 'module', 'opinions', 0, 0, 'laws', 'opinions', '4.3.04 1546504163', 1506570465, '', ''),
(392, 'theme', 'mobile_egov', 0, 0, 'mobile_egov', 'mobile_egov', '4.3.04 1546504163', 1510912800, 'VINADES (contact@vinades.vn)', 'Đây là giao diện mặc định cho mobile'),
(64, 'module', 'videoclips', 0, 1, 'videoclips', 'videoclips', '4.3.04 1546504163', 1510884305, 'VINADES (contact@vinades.vn)', 'Module playback of video-clips'),
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.1.02 1501865999', 1601915835, 'Việt Tí (quocvietposcovn@gmail.com)', ''),
(0, 'module', 'professionals', 0, 0, 'freecontent', 'professionals', '', 1601992116, '', ''),
(0, 'module', 'videos', 0, 1, 'videos', 'videos', '1.0.01 1557129600', 1601997980, 'KENNYNGUYEN (nguyentiendat713@gmail.com)', 'Compatible with NukeViet 4.1'),
(0, 'theme', 'beauty', 0, 0, 'beauty', 'beauty', '1.2.02 1602039946', 1602039946, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'module', 'course', 0, 0, 'page', 'course', '', 1602077614, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_setup_language`
--

CREATE TABLE `nv_setup_language` (
  `lang` char(2) NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_setup_language`
--

INSERT INTO `nv_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_upload_dir`
--

CREATE TABLE `nv_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_upload_dir`
--

INSERT INTO `nv_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1601916622, 0, 0, 0, 0),
(2, 'uploads/about', 1631272947, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/co-cau-to-chuc', 0, 0, 0, 0, 0),
(6, 'uploads/co-cau-to-chuc/2017_09', 0, 0, 0, 0, 0),
(7, 'uploads/comment', 0, 0, 0, 0, 0),
(8, 'uploads/contact', 0, 0, 0, 0, 0),
(9, 'uploads/freecontent', 1601920150, 0, 0, 0, 0),
(10, 'uploads/laws', 0, 0, 0, 0, 0),
(11, 'uploads/menu', 0, 0, 0, 0, 0),
(12, 'uploads/news', 0, 0, 0, 0, 0),
(13, 'uploads/news/2017_08', 0, 0, 0, 0, 0),
(14, 'uploads/news/source', 1622786321, 0, 0, 0, 0),
(15, 'uploads/news/temp_pic', 1622786322, 0, 0, 0, 0),
(16, 'uploads/news/topics', 0, 0, 0, 0, 0),
(17, 'uploads/opinions', 0, 0, 0, 0, 0),
(18, 'uploads/page', 1604878835, 0, 0, 0, 0),
(19, 'uploads/siteterms', 0, 0, 0, 0, 0),
(20, 'uploads/users', 0, 0, 0, 0, 0),
(21, 'uploads/users/groups', 0, 0, 0, 0, 0),
(22, 'uploads/news/2020_09', 0, 0, 0, 0, 0),
(23, 'uploads/slider', 0, 0, 0, 0, 0),
(24, 'uploads/slider/image', 0, 0, 0, 0, 0),
(25, 'uploads/slider/2020', 1601916581, 0, 0, 0, 0),
(26, 'uploads/professionals', 1619013486, 0, 0, 0, 0),
(27, 'uploads/news/2020_10', 1601996471, 0, 0, 0, 0),
(35, 'uploads/videos/img/playlists', 0, 0, 0, 0, 0),
(34, 'uploads/videos/vid', 0, 0, 0, 0, 0),
(33, 'uploads/videos/img', 0, 0, 0, 0, 0),
(32, 'uploads/videos', 0, 0, 0, 0, 0),
(36, 'uploads/videos/img/groups', 0, 0, 0, 0, 0),
(37, 'uploads/videos/thumbs', 0, 0, 0, 0, 0),
(38, 'uploads/videos/img/2020_10', 1601998070, 0, 0, 0, 0),
(39, 'uploads/videos/vid/2020_10', 0, 0, 0, 0, 0),
(40, 'uploads/course', 1602077671, 0, 0, 0, 0),
(41, 'uploads/videos/img/2020_11', 1604446517, 0, 0, 0, 0),
(42, 'uploads/videos/vid/2020_11', 0, 0, 0, 0, 0),
(43, 'uploads/news/2020_11', 1623215842, 0, 0, 0, 0),
(44, 'uploads/news/2021_06', 1622780985, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_upload_file`
--

CREATE TABLE `nv_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_upload_file`
--

INSERT INTO `nv_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('banner_1.jpg', 'jpg', 'image', 97161, 'assets/banner_1.jpg', 80, 10, '1078|134', 1, 1599031151, 1, 'banner_1.jpg', 'banner 1'),
('logo.png', 'png', 'image', 15841, 'assets/logo.png', 80, 80, '107|107', 1, 1599031151, 1, 'logo.png', 'logo'),
('logo_nukev...png', 'png', 'image', 3650, 'assets/logo_nukevietegov.png', 80, 21, '189|49', 1, 1599031151, 1, 'logo_nukevietegov.png', 'logo nukevietegov'),
('no-image.jpg', 'jpg', 'image', 4903, 'assets/no-image.jpg', 80, 63, '230|180', 1, 1599031151, 1, 'no-image.jpg', 'no image'),
('tennis_vid...mp4', 'mp4', 'file', 37491904, 'assets/images/file.gif', 32, 32, '|', 1, 1601916683, 25, 'tennis_video-home-page_tennis-home_video_213_c3vzyw5hx3rlbmlzxzaynw1.mp4', 'Tennis Video Home Page Tennis Home Video 213 c3VzYW5hX3RlbmlzXzAyNw1'),
('slide3_bg-...jpg', 'jpg', 'image', 2835, 'assets/slider/2020/slide3_bg-100x50.jpg', 80, 40, '100|50', 1, 1601916792, 25, 'slide3_bg-100x50.jpg', 'slide3 bg 100x50'),
('tennisvieton1.png', 'png', 'image', 2862374, 'assets/slider/2020/tennisvieton1.png', 80, 60, '1500|1125', 1, 1601918840, 25, 'tennisvieton1.png', 'tennisviéton1'),
('tennisviet...png', 'png', 'image', 2892587, 'assets/slider/2020/tennisvietson2.png', 80, 60, '1500|1125', 1, 1601918954, 25, 'tennisvietson2.png', 'tennisvietson2'),
('logo-1-dark.png', 'png', 'image', 8426, 'assets/logo-1-dark.png', 80, 14, '291|50', 1, 1601919146, 1, 'logo-1-dark.png', 'logo 1х dark'),
('cms.jpg', 'jpg', 'image', 29026, 'assets/freecontent/cms.jpg', 80, 44, '130|71', 1, 1599031153, 9, 'cms.jpg', 'cms'),
('edugate.jpg', 'jpg', 'image', 28008, 'assets/freecontent/edugate.jpg', 80, 44, '130|71', 1, 1599031153, 9, 'edugate.jpg', 'edugate'),
('portal.jpg', 'jpg', 'image', 25973, 'assets/freecontent/portal.jpg', 80, 44, '130|71', 1, 1599031153, 9, 'portal.jpg', 'portal'),
('shop.jpg', 'jpg', 'image', 26352, 'assets/freecontent/shop.jpg', 80, 44, '130|71', 1, 1599031153, 9, 'shop.jpg', 'shop'),
('toa-soan-d...jpg', 'jpg', 'image', 28737, 'assets/freecontent/toa-soan-dien-tu.jpg', 80, 44, '130|71', 1, 1599031153, 9, 'toa-soan-dien-tu.jpg', 'toa soan dien tu'),
('image-about4.png', 'png', 'image', 7088, 'assets/freecontent/image-about4.png', 80, 80, '167|168', 1, 1601920160, 9, 'image-about4.png', 'image about4'),
('image-about33.png', 'png', 'image', 6535, 'assets/freecontent/image-about33.png', 80, 80, '168|168', 1, 1601990589, 9, 'image-about33.png', 'image about33'),
('image-about1.png', 'png', 'image', 7056, 'assets/freecontent/image-about1.png', 80, 80, '167|168', 1, 1601989394, 9, 'image-about1.png', 'image about1'),
('image-about2.png', 'png', 'image', 7630, 'assets/freecontent/image-about2.png', 80, 80, '167|168', 1, 1601989602, 9, 'image-about2.png', 'image about2'),
('image-serv...png', 'png', 'image', 16735, 'assets/page/image-service5.png', 80, 80, '195|195', 1, 1601991771, 18, 'image-service5.png', 'image service5'),
('image-serv...png', 'png', 'image', 16735, 'assets/professionals/image-service5.png', 80, 80, '195|195', 1, 1601992196, 26, 'image-service5.png', 'image service5'),
('khoa-hoc.png', 'png', 'image', 1059937, 'assets/news/2020_10/khoa-hoc.png', 80, 67, '859|718', 1, 1601996482, 27, 'khoa-hoc.png', 'khoa hoc'),
('khoa-hoc.png', 'png', 'image', 1059937, 'assets/khoa-hoc.png', 80, 67, '859|718', 1, 1601997494, 1, 'khoa-hoc.png', 'khoa hoc'),
('khoa-hoc.png', 'png', 'image', 1059937, 'assets/videos/img/2020_10/khoa-hoc.png', 80, 67, '859|718', 1, 1601998080, 38, 'khoa-hoc.png', 'khoa hoc'),
('nganthuthu.jpg', 'jpg', 'image', 147972, 'assets/course/nganthuthu.jpg', 80, 54, '1163|782', 1, 1602077702, 40, 'nganthuthu.jpg', 'nganthuthu'),
('tennisviet...png', 'png', 'image', 2892587, 'assets/course/tennisvietson2.png', 80, 60, '1500|1125', 1, 1602077772, 40, 'tennisvietson2.png', 'tennisvietson2'),
('khoa-hoc.png', 'png', 'image', 1059937, 'assets/course/khoa-hoc.png', 80, 67, '859|718', 1, 1602077819, 40, 'khoa-hoc.png', 'khoa hoc'),
('0ae7852b3a...jpg', 'jpg', 'image', 444330, 'assets/slider/2020/0ae7852b3adbc4859dca.jpg', 80, 46, '1500|844', 1, 1604418413, 25, '0ae7852b3adbc4859dca.jpg', '0ae7852b3adbc4859dca'),
('0ae7852b3a...jpg', 'jpg', 'image', 58044, 'assets/professionals/0ae7852b3adbc4859dca.jpg', 61, 80, '172|225', 1, 1604419035, 26, '0ae7852b3adbc4859dca.jpg', '0ae7852b3adbc4859dca'),
('0ae7852b3a...jpg', 'jpg', 'image', 46620, 'assets/professionals/0ae7852b3adbc4859dca-139x245.jpg', 46, 80, '139|245', 0, 1604418583, 26, '0ae7852b3adbc4859dca-139x245.jpg', '0ae7852b3adbc4859dca 139x245'),
('tennis-vie...jpg', 'jpg', 'image', 73501, 'assets/course/tennis-viet-son-tre-em.jpg', 80, 45, '720|404', 1, 1604418689, 40, 'tennis-viet-son-tre-em.jpg', 'tennis viet son tre em'),
('tennisviet...png', 'png', 'image', 211858, 'assets/course/tennisvietson2-300x422.png', 57, 80, '300|422', 0, 1604418753, 40, 'tennisvietson2-300x422.png', 'tennisvietson2 300x422'),
('tennisviet...png', 'png', 'image', 636919, 'assets/course/tennisvietson2-519x752.png', 55, 80, '519|752', 0, 1604418941, 40, 'tennisvietson2-519x752.png', 'tennisvietson2 519x752'),
('0ae7852b3a...jpg', 'jpg', 'image', 44958, 'assets/professionals/0ae7852b3adbc4859dca_1.jpg', 44, 80, '129|235', 1, 1604419180, 26, '0ae7852b3adbc4859dca_1.jpg', '0ae7852b3adbc4859dca'),
('vieton-trem.jpg', 'jpg', 'image', 161792, 'assets/videos/img/2020_11/vieton-trem.jpg', 45, 80, '720|1280', 1, 1604446526, 41, 'vieton-trem.jpg', 'viéton trêm'),
('vieton-trem.jpg', 'jpg', 'image', 161792, 'assets/news/2020_10/vieton-trem.jpg', 45, 80, '720|1280', 1, 1604446565, 27, 'vieton-trem.jpg', 'viéton trêm'),
('0ae7852b3a...jpg', 'jpg', 'image', 444330, 'assets/professionals/0ae7852b3adbc4859dca_2.jpg', 80, 46, '1500|844', 1, 1604664474, 26, '0ae7852b3adbc4859dca_2.jpg', '0ae7852b3adbc4859dca'),
('0ae7852b3a...jpg', 'jpg', 'image', 65340, 'assets/professionals/0ae7852b3adbc4859dca_2-141x318.jpg', 36, 80, '141|318', 0, 1604664529, 26, '0ae7852b3adbc4859dca_2-141x318.jpg', '0ae7852b3adbc4859dca 2 141x318'),
('tennis-vie...jpg', 'jpg', 'image', 73501, 'assets/slider/2020/tennis-viet-son-tre-em.jpg', 80, 45, '720|404', 1, 1604664652, 25, 'tennis-viet-son-tre-em.jpg', 'tennis viet son tre em'),
('vieton-trem.jpg', 'jpg', 'image', 161792, 'assets/slider/2020/vieton-trem.jpg', 45, 80, '720|1280', 1, 1604664679, 25, 'vieton-trem.jpg', 'viéton trêm'),
('2b2e8a1884...jpg', 'jpg', 'image', 520639, 'assets/professionals/2b2e8a18843a7f64262b.jpg', 60, 80, '960|1280', 1, 1604877105, 26, '2b2e8a18843a7f64262b.jpg', '2b2e8a18843a7f64262b'),
('2b2e8a1884...jpg', 'jpg', 'image', 511704, 'assets/professionals/2b2e8a18843a7f64262b-725x725.jpg', 80, 80, '725|725', 0, 1604877160, 26, '2b2e8a18843a7f64262b-725x725.jpg', '2b2e8a18843a7f64262b 725x725'),
('11058069_8...jpg', 'jpg', 'image', 46320, 'assets/professionals/11058069_822289434510225_1635129924412990146_n.jpg', 80, 80, '582|582', 1, 1604877306, 26, '11058069_822289434510225_1635129924412990146_n.jpg', '11058069 822289434510225 1635129924412990146 n'),
('70587424_2...jpg', 'jpg', 'image', 73362, 'assets/professionals/70587424_2216177058681637_2195047881067462656_n.jpg', 80, 80, '640|640', 1, 1604877423, 26, '70587424_2216177058681637_2195047881067462656_n.jpg', '70587424 2216177058681637 2195047881067462656 n'),
('48112645_1...jpg', 'jpg', 'image', 184052, 'assets/professionals/48112645_151667862468108_4942576844441387008_n.jpg', 80, 80, '720|720', 1, 1604877713, 26, '48112645_151667862468108_4942576844441387008_n.jpg', '48112645 151667862468108 4942576844441387008 n'),
('94330236_1...jpg', 'jpg', 'image', 370349, 'assets/professionals/94330236_131414321811769_1694092159906480128_o.jpg', 80, 80, '1440|1440', 1, 1604877967, 26, '94330236_131414321811769_1694092159906480128_o.jpg', '94330236 131414321811769 1694092159906480128 o'),
('117392494_...jpg', 'jpg', 'image', 360359, 'assets/professionals/117392494_1365457303644795_1549462266218863114_n.jpg', 80, 80, '720|720', 1, 1604878316, 26, '117392494_1365457303644795_1549462266218863114_n.jpg', '117392494 1365457303644795 1549462266218863114 n'),
('ruxnodc1mz...jpg', 'jpg', 'image', 692090, 'assets/page/ruxnodc1mzuzmjy.jpg', 80, 60, '1500|1126', 1, 1604878887, 18, 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;'),
('2d3eca7c2b...jpg', 'jpg', 'image', 167082, 'assets/professionals/2d3eca7c2b9dd9c3808c.jpg', 80, 46, '1280|720', 1, 1619013472, 26, '2d3eca7c2b9dd9c3808c.jpg', '2d3eca7c2b9dd9c3808c'),
('69d5f3851c...jpg', 'jpg', 'image', 186660, 'assets/professionals/69d5f3851c64ee3ab775.jpg', 36, 80, '576|1280', 1, 1619013472, 26, '69d5f3851c64ee3ab775.jpg', '69d5f3851c64ee3ab775'),
('034861b382...jpg', 'jpg', 'image', 204357, 'assets/professionals/034861b38252700c2943.jpg', 80, 46, '1280|720', 1, 1619013473, 26, '034861b38252700c2943.jpg', '034861b38252700c2943'),
('69d5f3851c...jpg', 'jpg', 'image', 61844, 'assets/professionals/69d5f3851c64ee3ab775-208x224.jpg', 74, 80, '208|224', 0, 1619013539, 26, '69d5f3851c64ee3ab775-208x224.jpg', '69d5f3851c64ee3ab775 208x224'),
('69d5f3851c...jpg', 'jpg', 'image', 37823, 'assets/professionals/69d5f3851c64ee3ab775-128x244.jpg', 52, 80, '128|199', 1, 1622544388, 26, '69d5f3851c64ee3ab775-128x244.jpg', '69d5f3851c64ee3ab775 128x244'),
('2d3eca7c2b...jpg', 'jpg', 'image', 357193, 'assets/professionals/2d3eca7c2b9dd9c3808c-567x714.jpg', 64, 80, '567|714', 0, 1619013758, 26, '2d3eca7c2b9dd9c3808c-567x714.jpg', '2d3eca7c2b9dd9c3808c 567x714'),
('2d3eca7c2b...jpg', 'jpg', 'image', 17591, 'assets/professionals/2d3eca7c2b9dd9c3808c-567x714_195_245.jpg', 64, 80, '195|245', 1, 1619013791, 26, '2d3eca7c2b9dd9c3808c-567x714_195_245.jpg', ''),
('034861b382...jpg', 'jpg', 'image', 38477, 'assets/professionals/034861b38252700c2943_436_245.jpg', 45, 80, '136|244', 1, 1619014291, 26, '034861b38252700c2943_436_245.jpg', ''),
('034861b382...jpg', 'jpg', 'image', 25894, 'assets/professionals/034861b38252700c2943_436_245-108x165.jpg', 53, 80, '108|165', 0, 1622543958, 26, '034861b38252700c2943_436_245-108x165.jpg', '034861b38252700c2943 436 245 108x165'),
('034861b382...jpg', 'jpg', 'image', 10636, 'assets/professionals/034861b38252700c2943_436_245-108x165_139_212.jpg', 53, 80, '139|212', 1, 1622544026, 26, '034861b38252700c2943_436_245-108x165_139_212.jpg', ''),
('034861b382...jpg', 'jpg', 'image', 12188, 'assets/professionals/034861b38252700c2943_436_245-108x165_139_212_161_245.jpg', 53, 80, '161|245', 1, 1622544106, 26, '034861b38252700c2943_436_245-108x165_139_212_161_245.jpg', ''),
('034861b382...jpg', 'jpg', 'image', 31179, 'assets/professionals/034861b38252700c2943_436_245-108x165_139_212_161_245-135x245.jpg', 44, 80, '135|245', 0, 1622544200, 26, '034861b38252700c2943_436_245-108x165_139_212_161_245-135x245.jpg', '034861b38252700c2943 436 245 108x165 139 212 161 245 135x245'),
('2d3eca7c2b...jpg', 'jpg', 'image', 102749, 'assets/professionals/2d3eca7c2b9dd9c3808c-567x714-283x356.jpg', 64, 80, '283|356', 0, 1622544349, 26, '2d3eca7c2b9dd9c3808c-567x714-283x356.jpg', '2d3eca7c2b9dd9c3808c 567x714 283x356'),
('69d5f3851c...jpg', 'jpg', 'image', 18089, 'assets/professionals/69d5f3851c64ee3ab775-128x244_158_245.jpg', 52, 80, '158|245', 1, 1622544421, 26, '69d5f3851c64ee3ab775-128x244_158_245.jpg', ''),
('69d5f3851c...jpg', 'jpg', 'image', 43453, 'assets/professionals/69d5f3851c64ee3ab775-128x244_158_245-135x243.jpg', 45, 80, '135|243', 0, 1622544463, 26, '69d5f3851c64ee3ab775-128x244_158_245-135x243.jpg', '69d5f3851c64ee3ab775 128x244 158 245 135x243'),
('6a20bf3e-...jpeg', 'jpeg', 'image', 85873, 'assets/news/2021_06/6a20bf3e-b124-41ac-8b78-951eba08a716.jpeg', 80, 45, '720|404', 2, 1622780999, 44, '6a20bf3e-b124-41ac-8b78-951eba08a716.jpeg', '6A20BF3E B124 41AC 8B78 951EBA08A716'),
('6947063e-...jpeg', 'jpeg', 'image', 85873, 'assets/news/2021_06/6947063e-ba85-4016-96b7-bc17930e731c.jpeg', 80, 45, '720|404', 2, 1622781111, 44, '6947063e-ba85-4016-96b7-bc17930e731c.jpeg', '6947063e ba85 4016 96b7 bc17930e731c'),
('b4323552-...jpeg', 'jpeg', 'image', 253791, 'assets/news/2021_06/b4323552-a88f-4999-874b-1fd80dced16f.jpeg', 80, 67, '1280|1067', 2, 1622781242, 44, 'b4323552-a88f-4999-874b-1fd80dced16f.jpeg', 'b4323552 a88f 4999 874b 1fd80dced16f'),
('img_1538.jpg', 'jpg', 'image', 73553, 'assets/news/2021_06/img_1538.jpg', 80, 45, '720|404', 2, 1622783597, 44, 'img_1538.jpg', 'img 1538'),
('img_1539.jpg', 'jpg', 'image', 236170, 'assets/news/2021_06/img_1539.jpg', 80, 67, '1280|1067', 2, 1622783620, 44, 'img_1539.jpg', 'img 1539'),
('img_1542.jpg', 'jpg', 'image', 331962, 'assets/news/2021_06/img_1542.jpg', 80, 46, '1500|844', 2, 1622785294, 44, 'img_1542.jpg', 'img 1542'),
('img_1538_1.jpg', 'jpg', 'image', 73553, 'assets/news/2021_06/img_1538_1.jpg', 80, 45, '720|404', 2, 1622785431, 44, 'img_1538_1.jpg', 'img 1538 1'),
('img_1539_1.jpg', 'jpg', 'image', 236170, 'assets/news/2021_06/img_1539_1.jpg', 80, 67, '1280|1067', 2, 1622785452, 44, 'img_1539_1.jpg', 'img 1539 1'),
('img_1539_2.jpg', 'jpg', 'image', 236170, 'assets/news/2021_06/img_1539_2.jpg', 80, 67, '1280|1067', 2, 1622785561, 44, 'img_1539_2.jpg', 'img 1539 2'),
('img_1542_1.jpg', 'jpg', 'image', 331962, 'assets/news/2021_06/img_1542_1.jpg', 80, 46, '1500|844', 2, 1622785755, 44, 'img_1542_1.jpg', 'img 1542 1'),
('1622785958390.mp4', 'mp4', 'file', 3808452, 'assets/images/file.gif', 32, 32, '|', 2, 1622786633, 44, '1622785958390.mp4', '1622785958390'),
('1622785958...mp4', 'mp4', 'file', 3808452, 'assets/images/file.gif', 32, 32, '|', 2, 1623155255, 44, '1622785958390_1.mp4', '1622785958390'),
('untitled.png', 'png', 'image', 1372860, 'assets/news/2021_06/untitled.png', 80, 46, '1366|768', 2, 1623155567, 44, 'untitled.png', 'Untitled'),
('img_1563.jpg', 'jpg', 'image', 104240, 'assets/news/2021_06/img_1563.jpg', 80, 60, '1080|810', 2, 1623215916, 44, 'img_1563.jpg', 'IMG 1563'),
('img_1563_1.jpg', 'jpg', 'image', 104240, 'assets/news/2021_06/img_1563_1.jpg', 80, 60, '1080|810', 2, 1623215947, 44, 'img_1563_1.jpg', 'img 1563 1'),
('img_1564.jpg', 'jpg', 'image', 145814, 'assets/news/2021_06/img_1564.jpg', 80, 60, '1080|810', 2, 1623216002, 44, 'img_1564.jpg', 'IMG 1564'),
('img_1564_1.jpg', 'jpg', 'image', 145814, 'assets/news/2021_06/img_1564_1.jpg', 80, 60, '1080|810', 2, 1623216017, 44, 'img_1564_1.jpg', 'img 1564 1'),
('img_1564_2.jpg', 'jpg', 'image', 145814, 'assets/news/2021_06/img_1564_2.jpg', 80, 60, '1080|810', 2, 1623216152, 44, 'img_1564_2.jpg', 'img 1564 2'),
('z274078356...jpg', 'jpg', 'image', 206179, 'assets/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16.jpg', 80, 46, '1280|720', 1, 1630938977, 26, 'z2740783568849_f343ddecfe135f4bd2f5576834341b16.jpg', 'z2740783568849 f343ddecfe135f4bd2f5576834341b16'),
('z274078356...jpg', 'jpg', 'image', 106291, 'assets/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490.jpg', 52, 80, '314|490', 0, 1630939066, 26, 'z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490.jpg', 'z2740783568849 f343ddecfe135f4bd2f5576834341b16 314x490'),
('z274078356...jpg', 'jpg', 'image', 12092, 'assets/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_157_245.jpg', 52, 80, '157|245', 1, 1630939104, 26, 'z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_157_245.jpg', ''),
('z274078356...jpg', 'jpg', 'image', 15731, 'assets/professionals/z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_192_300.jpg', 52, 80, '192|299', 1, 1630939395, 26, 'z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_192_300.jpg', ''),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1628782899, 2, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1628782899, 2, 'w.png', 'w'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1628782899, 2, 'nukevietcms.png', 'nukevietcms'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1628782899, 2, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1628782899, 2, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1628782899, 2, 'nukevietvn.png', 'nukevietvn'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1628782899, 2, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1628782899, 2, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('day-tennis...jpg', 'jpg', 'image', 356841, 'assets/about/day-tennis-binhthanh.jpg', 80, 46, '1500|844', 1, 1631272992, 2, 'day-tennis-binhthanh.jpg', 'day-tennis-binhthanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users`
--

CREATE TABLE `nv_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_users`
--

INSERT INTO `nv_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'root', '444444444444445555', '', '', 'ssss', '', '', '', 0, '', 1599032250, '', '', '', 0, 1, '1', 1, 0, '', '', 1599032250, '', '', '', 0, 0, 0, '', -3, 'SYSTEM'),
(2, 3, 'admin', '02d98143e414fb06bd386s3f04dddf278', '', 'admin@abc.com', 'ád', '', 'M', '', 494614800, '', 1601466103, 'adss', 'ádsa', '', 0, 1, '4,3', 1, 0, '', '', 0, '', '', '', 0, 0, 0, '', -1, 'SYSTEM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_backupcodes`
--

CREATE TABLE `nv_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_config`
--

CREATE TABLE `nv_users_config` (
  `config` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_config`
--

INSERT INTO `nv_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:7:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:15:\"access_viewlist\";a:3:{i:1;i:1;i:2;i:1;i:3;i:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1546504163),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1546504163),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1546504163),
('avatar_width', '80', 1546504163),
('avatar_height', '80', 1546504163),
('active_group_newusers', '0', 1546504163),
('min_old_user', '16', 1546504163),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129),
('active_editinfo_censor', '0', 1588735322);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_edit`
--

CREATE TABLE `nv_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_field`
--

CREATE TABLE `nv_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') NOT NULL DEFAULT 'textbox',
  `field_choices` text NOT NULL,
  `sql_choices` text NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) NOT NULL DEFAULT '',
  `func_callback` varchar(75) NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) NOT NULL,
  `language` text NOT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_field`
--

INSERT INTO `nv_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_groups`
--

CREATE TABLE `nv_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) NOT NULL,
  `email` varchar(100) DEFAULT '',
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) NOT NULL,
  `group_avatar` varchar(255) NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `config` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_groups`
--

INSERT INTO `nv_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1546504163, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1546504163, 0, 2, 1, 0, 4, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1546504163, 0, 3, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1546504163, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1546504163, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1546504163, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1546504163, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1546504163, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1546504163, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1546504163, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_groups_users`
--

CREATE TABLE `nv_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_groups_users`
--

INSERT INTO `nv_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 0, 0),
(3, 2, 0, 1, '0', 1601466160, 1601466160);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_info`
--

CREATE TABLE `nv_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_info`
--

INSERT INTO `nv_users_info` (`userid`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_openid`
--

CREATE TABLE `nv_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `opid` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_question`
--

CREATE TABLE `nv_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_users_question`
--

INSERT INTO `nv_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_users_reg`
--

CREATE TABLE `nv_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `gender` char(1) NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text DEFAULT NULL,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `checknum` varchar(50) NOT NULL DEFAULT '',
  `users_info` text DEFAULT NULL,
  `openid_info` text DEFAULT NULL,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_about`
--

CREATE TABLE `nv_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_about`
--

INSERT INTO `nv_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(3, 'Dạy tennis tại thành phố Hồ Chí Minh', 'Day-tennis-tai-thanh-pho-Ho-Chi-Minh', '', '', 0, 'Nếu đang cần tìm kiếm một địa chỉ đào tạo quần vợt chuyên nghiệp và chất lượng thì bạn nên tìm đến Trung tâm dạy tennis Vina. Đây là cái tên đứng đầu trong danh sách những đơn vị huấn luyện và giảng dạy môn thể thao này tại TPHCM', 'Học đánh Tennis để tăng cường sức khỏe và giảm stress một cách hiệu quả ⭐️<br />\r\nGiảm 15% cho nhóm đăng ký học chung từ 3 người trở lên ⭐️<br />\r\nĐảm bảo 100% học viên BIẾT ĐÁNH ⭐️<br />\r\nĐội ngũ HLV Tennis giỏi có mặt tại tất cả các Quận, Huyện ⭐️<br />\r\nCó HLV dạy kèm riêng ⭐️<br />\r\nCó HLV Nam và nữ ⭐️<br />\r\nHệ thống sân tập đạt chuẩn ⭐️<br />\r\nThời gian học linh động ⭐️<br />\r\nBiết đánh Tennis trong thời gian ngắn nhất ⭐️&nbsp;<br />\r\nNhiều khóa học phù hợp cho nhiều đối tượng ⭐️<br />\r\nKhai giảng khóa mới liên tục trong tuần ⭐️\r\n<h1>Liên hệ&nbsp; đăng ký học :&nbsp;<span style=\"color:rgb(230, 126, 34);\"><strong>&nbsp;0989005368</strong></span></h1>', 'thành phố', 1, '4', '', 1, 1, 1631272691, 1631273196, 1, 78, 0),
(4, 'Đội ngũ dạy tennis quận Bình Thạnh', 'Doi-ngu-day-tennis-quan-Binh-Thanh', 'day-tennis-binhthanh.jpg', 'day-tennis-binhthanh', 0, 'Khoá học Tennis Căn bản dành cho bạn hiểu cơ bản về Tennis và có thể chơi được Tennis', 'Mục tiêu của khóa quần vợt dành cho người mới bắt đầu:&nbsp;<br />\r\n<br />\r\nĐào tạo cho những học viên lần đầu tiếp xúc với tennis những kiến thức, kỹ năng cơ bản để có thể bắt đầu môn thể thao tuyệt vời này một cách dễ dàng nhất<br />\r\nGiáo viên có trình độ sư phạm và chuyên môn cao của chúng tôi luôn đưa ra những giáo án cho từng học viên để bạn có thể dễ dàng nắm bắt, xoay vòng và học đầy đủ các thế đánh cơ bản nhất<br />\r\nTạo sự say mê và khuyến khích giúp học viên hứng thú và hưng phấn giảm stress sau 1 ngày làm việc<br />\r\nTạo sự tương tác trực tiếp với học viên, được huấn luyện kèm cặp sát sao<br />\r\nTổ chức những cuộc đấu nhỏ trong lúc học để tăng tính cạnh tranh và hấp dẫn trong lúc luyện tập', '', 1, '4', '', 2, 1, 1631273026, 1631273050, 1, 19, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_about_config`
--

CREATE TABLE `nv_vi_about_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_about_config`
--

INSERT INTO `nv_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_blocks_groups`
--

CREATE TABLE `nv_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) NOT NULL,
  `module` varchar(55) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `template` varchar(55) DEFAULT NULL,
  `position` varchar(55) DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `groups_view` varchar(255) DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_blocks_groups`
--

INSERT INTO `nv_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:56:\"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:14:\"+84-4-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(100, 'egov', 'theme', 'global.bootstrap.php', 'global bootstrap', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:4:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;s:13:\"submenu_width\";i:200;s:8:\"wraptext\";i:0;}'),
(101, 'egov', 'menu', 'global.menutop.php', 'global menutop', '', 'no_title', '[MENU_TOP]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:7;s:12:\"title_length\";i:0;}'),
(102, 'egov', 'theme', 'global.text_banner.php', 'global text banner', '', 'no_title', '[TEXT_BANNER]', 0, '1', 1, '6', 1, 1, 'a:3:{s:10:\"site_title\";s:17:\"Cổng thông tin\";s:16:\"site_description\";s:11:\"Việt Sơn\";s:12:\"use_sitename\";i:1;}'),
(103, 'egov', 'theme', 'global.sliders.php', 'global sliders', '', 'no_title', '[HEADER]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:4;}'),
(104, 'egov', 'theme', 'global.news_center.php', 'global news center', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:11:{s:9:\"selectmod\";s:4:\"news\";s:6:\"numrow\";i:4;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:0;s:5:\"width\";i:320;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(105, 'egov', 'banners', 'global.banners.php', 'BẢN ĐỒ HÀNH CHÍNH', '', 'map_title', '[RIGHT]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(106, 'egov', 'menu', 'global.slimmenu.php', 'global slimmenu', '', 'no_title', '[NEWS_1]', 0, '1', 1, '6', 0, 1, 'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:0;}'),
(107, 'egov', 'theme', 'global.news_cat_slide_tab.php', 'global news cat slide tab', '', 'no_title', '[NEWS_1]', 0, '1', 1, '6', 0, 2, 'a:7:{s:9:\"selectmod\";s:4:\"news\";s:5:\"catid\";a:3:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"6\";}s:6:\"numrow\";i:8;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";}'),
(108, 'egov', 'theme', 'global.news_cat_titlebox.php', 'CHỈ ĐẠO', '', 'icon_title', '[NEWS_5]', 0, '1', 1, '6', 0, 1, 'a:8:{s:9:\"selectmod\";s:4:\"news\";s:5:\"catid\";a:1:{i:0;s:1:\"2\";}s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:9:\"show_type\";i:1;}'),
(109, 'egov', 'theme', 'global.laws.php', 'Văn bản mới', '', 'icon_title', '[NEWS_6]', 0, '1', 1, '6', 0, 1, 'a:10:{s:9:\"selectmod\";s:4:\"laws\";s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:9:\"show_code\";i:1;s:9:\"direction\";s:2:\"up\";s:8:\"duration\";i:10000;s:12:\"pauseOnHover\";i:1;s:10:\"duplicated\";i:1;s:5:\"order\";i:1;s:11:\"textdisplay\";s:39:\"Văn bản - Chỉ đạo điều hành\";}'),
(110, 'egov', 'menu', 'global.slimmenu.php', 'global slimmenu', '', 'no_title', '[FOOTER_2]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:4;s:12:\"title_length\";i:0;}'),
(111, 'egov', 'menu', 'global.superfish.php', 'global metismenu', '', 'no_title', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:6;s:12:\"title_length\";i:0;}'),
(112, 'egov', 'theme', 'global.news_groups.php', 'Thủ tướng chính phủ', '/index.php?language=vi&nv=news&op=groups/thu-tuong-chinh-phu', 'no_title', '[RIGHT_1]', 0, '1', 1, '6', 0, 3, 'a:8:{s:9:\"selectmod\";s:4:\"news\";s:7:\"blockid\";i:2;s:6:\"numrow\";i:1;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:9:\"show_type\";i:0;}'),
(113, 'egov', 'theme', 'global.news_groups.php', 'Lãnh đạo, Chỉ đạo', '/index.php?language=vi&nv=news&op=groups/lanh-dao-chi-dao', 'panel_primary', '[RIGHT_1]', 0, '1', 1, '6', 0, 4, 'a:8:{s:9:\"selectmod\";s:4:\"news\";s:7:\"blockid\";i:1;s:6:\"numrow\";i:4;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:9:\"show_type\";i:1;}'),
(114, 'egov', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[RIGHT_1]', 0, '1', 1, '6', 1, 5, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(115, 'egov', 'voting', 'global.voting.php', 'Thăm dò ý kiến', '', 'border_title', '[RIGHT_1]', 0, '1', 1, '6', 1, 6, 'a:1:{s:3:\"vid\";i:3;}'),
(116, 'egov', 'statistics', 'global.counter.php', 'Thống kê truy cập', '', 'border_title', '[RIGHT_1]', 0, '1', 1, '6', 1, 7, ''),
(117, 'egov', 'laws', 'module.block_search.php', 'Tìm kiếm văn bản', '', 'border_title', '[RIGHT_1]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"style\";s:8:\"vertical\";s:14:\"search_advance\";i:0;}'),
(118, 'egov', 'news', 'global.block_category.php', 'Danh mục', '', 'panel_primary_left', '[RIGHT_1]', 0, '1', 1, '6', 0, 2, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(119, 'egov', 'contact', 'global.department.php', 'global department', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"departmentid\";i:1;}'),
(120, 'mobile_egov', 'contact', 'global.department.php', 'global department', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"departmentid\";i:1;}'),
(121, 'mobile_egov', 'theme', 'global.news_center.php', 'global news center', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:11:{s:9:\"selectmod\";s:4:\"news\";s:6:\"numrow\";i:4;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:0;s:5:\"width\";i:400;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(122, 'mobile_egov', 'theme', 'global.news_cat_slide_tab.php', 'global news cat slide tab', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:7:{s:9:\"selectmod\";s:4:\"news\";s:5:\"catid\";a:2:{i:0;s:1:\"6\";i:1;s:1:\"7\";}s:6:\"numrow\";i:8;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";}'),
(123, 'mobile_egov', 'theme', 'global.text_banner.php', 'global text banner', '', 'no_title', '[TEXT_BANNER]', 0, '1', 1, '6', 1, 1, 'a:3:{s:10:\"site_title\";s:30:\"Cổng thông tin điện tử\";s:16:\"site_description\";s:17:\"UBND Thành Phố\";s:12:\"use_sitename\";i:0;}'),
(124, 'mobile_egov', 'menu', 'global.metismenu.php', 'global metismenu', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(125, 'egov', 'page', 'global.html.php', 'global html', '', 'no_title', '[COPYRIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:428:\"<div style=\"text-align: center;\">© 2017 - Bản quyền&nbsp;thuộc về Trugn tâm tennis Việt Sơn<br />Ghi rõ nguồn &quot;Trugn tâm tennis Việt Sơn&quot; và dẫn đến URL nguồn tin khi phát hành lại thông tin từ website này.<br /><a href=\"/siteterms/terms-and-conditions.html\">Điều khoản sử dụng</a> | <a href=\"/siteterms/privacy.html\">Chính sách bảo mật (Quyền riêng tư)</a></div>\";}'),
(127, 'egov', 'theme', 'global.btns_tool.php', 'global btns tool', '', 'no_title', '[SITE_BTN_TOOL]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:33:\"https://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(128, 'egov', 'opinions', 'module.block_search.php', 'Tìm kiếm', '', 'no_title', '[RIGHT_1]', 0, '1', 1, '6', 0, 8, 'a:2:{s:5:\"style\";s:8:\"vertical\";s:14:\"search_advance\";i:0;}'),
(129, 'egov', 'contact', 'global.department.php', 'global department', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"departmentid\";i:1;}'),
(131, 'beauty', 'theme', 'global.company_info.php', 'Thông tin Liên Hệ', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:35:\"Trung tâm dạy tennis Việt Sơn\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:20:\"Quận Bình Thạnh\";s:15:\"company_showmap\";i:0;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:10:\"0989005368\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:0:\"\";s:15:\"company_website\";s:24:\"http://trungtamtennis.vn\";}'),
(132, 'beauty', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(133, 'beauty', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:10:\"NV Systems\";s:10:\"design_url\";s:20:\"http://nguyenvan.vn/\";s:13:\"siteterms_url\";s:42:\"/THAMMY/index.php?language=vi&nv=siteterms\";}'),
(134, 'beauty', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(135, 'beauty', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(136, 'beauty', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(137, 'beauty', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(138, 'beauty', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(141, 'beauty', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 5, ''),
(142, 'beauty', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(143, 'beauty', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(144, 'beauty', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(145, 'beauty', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(146, 'beauty', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(147, 'beauty', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(148, 'beauty', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(153, 'beauty', 'slider', 'global.banner_slider.php', 'ẻ', '', 'no_title', '[SLIDER]', 0, '1', 1, '6', 1, 1, 'a:3:{s:6:\"size_w\";i:980;s:6:\"size_h\";i:380;s:10:\"responsive\";i:1;}'),
(155, 'beauty', 'theme', 'global.page_dichvu.php', 'Lý do bạn nên chon Việt Sơn', '', 'no_title', '[DICHVU]', 0, '1', 1, '6', 0, 1, 'a:5:{s:9:\"selectmod\";s:4:\"page\";s:6:\"numrow\";i:20;s:12:\"title_length\";i:60;s:18:\"description_length\";i:200;s:6:\"dichvu\";s:27:\"Giới thiệu ngắn gọn\";}'),
(156, 'beauty', 'theme', 'global.news_tinhot.php', 'Hoạt động - Tin tức', '/index.php?language=vi&nv=news&op=groups/lanh-dao-chi-dao', 'no_title', '[TINHOT]', 0, '1', 1, '6', 0, 1, 'a:4:{s:9:\"selectmod\";s:4:\"news\";s:7:\"blockid\";i:1;s:6:\"numrow\";i:4;s:12:\"title_length\";i:0;}'),
(157, 'beauty', 'professionals', 'global.rate.php', 'khách hàng đánh giá', '', 'no_title', '[DOINGU_BACSI]', 0, '1', 1, '6', 0, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:10;}'),
(158, 'beauty', 'about', 'global.html.php', 'global about', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:\"htmlcontent\";s:967:\"<p>Trung tâm dạy học tennis Việt Sơn&nbsp;xin kính chào quý khách! Ra đời với sứ mệnh mang đến sức khỏe, lan tỏa niềm đam mê thể thao cho người Việt. Chúng tôi chuyên mở các khóa học đào tạo đánh tennis từ cơ bản đến nâng cao uy tín tại Việt Nam. Với phương châm: “vui – khoẻ – có ích” cùng đội ngũ giảng viên, HLV trên 30&nbsp;năm kinh nghiệm, chỉ dẫn tận tình, chu đáo.</p><p>Việt Sơn&nbsp; cam kết mang đến những khóa học bổ ích, trải nghiệm tuyệt vời sau những giờ làm việc căng thẳng, mệt mỏi và đảm bảo tất cả những học viên tham gia gia đều biết chơi. Mọi thông tin khóa học và chương trình khuyến mãi xin liên hệ hotline: 0989005368 hoặc website: trungtamtennis.ivn. “Tennis Việt Sơn&nbsp; – Vì cuộc sống chất lượng hơn”. Xin trân trọng cảm ơn!</p>\";}'),
(159, 'beauty', 'professionals', 'global.professionals.php', 'Huấn Luyện Viên', '', 'no_title', '[SANPHAM]', 0, '1', 1, '6', 0, 1, 'a:2:{s:7:\"blockid\";i:2;s:7:\"numrows\";i:6;}'),
(161, 'beauty', 'videos', 'global.block_video_nthatvthat.php', 'VIDEOS NGƯỜI THẬT - VIỆC THẬT', '', 'no_title', '[VIDEOS]', 0, '1', 1, '6', 0, 1, 'a:3:{s:5:\"catid\";i:1;s:6:\"numrow\";i:5;s:9:\"gioithieu\";s:29:\"video học viên đang học\";}'),
(162, 'beauty', 'theme', 'global.bootstrap_seek.php', 'menu site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(163, 'beauty', 'freecontent', 'global.gioithieu.php', 'Trung tâm Việt Sơn', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:4:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:4;s:11:\"title_profe\";s:22:\"Trung tâm Việt Sơn\";s:9:\"gioithieu\";s:259:\"Đội ngũ HLV đông đảo và chất lượng luôn sẵn sàng đáp ứng nhu cầu học tennis của bạn ở bất cứ khu vực, quận huyện nào tại TP.HCM và vào bất cứ khung giờ nào từ 5:00 đến 21:00, kể cả cuối tuần.\";}'),
(164, 'beauty', 'theme', 'global.page_dichvu.php', 'khóa học tennis', '', 'no_title', '[THAMMY_TS]', 0, '1', 1, '6', 0, 1, 'a:5:{s:9:\"selectmod\";s:6:\"course\";s:6:\"numrow\";i:5;s:12:\"title_length\";i:60;s:18:\"description_length\";i:200;s:6:\"dichvu\";s:43:\"Các khóa học hiên tại ở trung tâm\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_blocks_weight`
--

CREATE TABLE `nv_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_blocks_weight`
--

INSERT INTO `nv_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 41, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 60, 1),
(16, 63, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 51, 1),
(16, 62, 1),
(16, 54, 1),
(16, 55, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 57, 1),
(16, 58, 1),
(16, 59, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 61, 1),
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 60, 1),
(18, 63, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 51, 1),
(18, 62, 1),
(18, 54, 1),
(18, 55, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 57, 1),
(18, 58, 1),
(18, 59, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 61, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 60, 1),
(11, 63, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 51, 1),
(11, 62, 1),
(11, 54, 1),
(11, 55, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 57, 1),
(11, 58, 1),
(11, 59, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 61, 1),
(12, 1, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 60, 2),
(12, 63, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 51, 2),
(12, 62, 2),
(12, 54, 2),
(12, 55, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 57, 2),
(12, 58, 2),
(12, 59, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 61, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 60, 1),
(5, 63, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 51, 1),
(5, 62, 1),
(5, 54, 1),
(5, 55, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 57, 1),
(5, 58, 1),
(5, 59, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 61, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 60, 2),
(6, 63, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 51, 2),
(6, 62, 2),
(6, 54, 2),
(6, 55, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 57, 2),
(6, 58, 2),
(6, 59, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 61, 2),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 60, 1),
(20, 63, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 51, 1),
(20, 62, 1),
(20, 54, 1),
(20, 55, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 57, 1),
(20, 58, 1),
(20, 59, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 61, 1),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 60, 1),
(17, 63, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 51, 1),
(17, 62, 1),
(17, 54, 1),
(17, 55, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 57, 1),
(17, 58, 1),
(17, 59, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 61, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 60, 1),
(15, 63, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 51, 1),
(15, 62, 1),
(15, 54, 1),
(15, 55, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 57, 1),
(15, 58, 1),
(15, 59, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 61, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 60, 1),
(13, 63, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 51, 1),
(13, 62, 1),
(13, 54, 1),
(13, 55, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 57, 1),
(13, 58, 1),
(13, 59, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 61, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 60, 2),
(14, 63, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 51, 2),
(14, 62, 2),
(14, 54, 2),
(14, 55, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 57, 2),
(14, 58, 2),
(14, 59, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 61, 2),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 60, 2),
(8, 63, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 51, 2),
(8, 62, 2),
(8, 54, 2),
(8, 55, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 57, 2),
(8, 58, 2),
(8, 59, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 61, 2),
(9, 1, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 60, 3),
(9, 63, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 51, 3),
(9, 62, 3),
(9, 54, 3),
(9, 55, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 57, 3),
(9, 58, 3),
(9, 59, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 61, 3),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 60, 4),
(10, 63, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 51, 4),
(10, 62, 4),
(10, 54, 4),
(10, 55, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 57, 4),
(10, 58, 4),
(10, 59, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(10, 61, 4),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 60, 1),
(19, 63, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 51, 1),
(19, 62, 1),
(19, 54, 1),
(19, 55, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 57, 1),
(19, 58, 1),
(19, 59, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 61, 1),
(1, 4, 1),
(2, 4, 2),
(16, 66, 1),
(16, 64, 1),
(16, 65, 1),
(18, 66, 1),
(18, 64, 1),
(18, 65, 1),
(11, 66, 1),
(11, 64, 1),
(11, 65, 1),
(12, 66, 2),
(12, 64, 2),
(12, 65, 2),
(5, 66, 1),
(5, 64, 1),
(5, 65, 1),
(6, 66, 2),
(6, 64, 2),
(6, 65, 2),
(20, 66, 1),
(20, 64, 1),
(20, 65, 1),
(17, 66, 1),
(17, 64, 1),
(17, 65, 1),
(15, 66, 1),
(15, 64, 1),
(15, 65, 1),
(13, 66, 1),
(13, 64, 1),
(13, 65, 1),
(14, 66, 2),
(14, 64, 2),
(14, 65, 2),
(8, 66, 2),
(8, 64, 2),
(8, 65, 2),
(9, 66, 3),
(9, 64, 3),
(9, 65, 3),
(10, 66, 4),
(10, 64, 4),
(10, 65, 4),
(19, 66, 1),
(19, 64, 1),
(19, 65, 1),
(16, 72, 1),
(16, 71, 1),
(16, 74, 1),
(16, 69, 1),
(16, 70, 1),
(16, 77, 1),
(16, 75, 1),
(18, 72, 1),
(18, 71, 1),
(18, 74, 1),
(18, 69, 1),
(18, 70, 1),
(18, 77, 1),
(18, 75, 1),
(11, 72, 1),
(11, 71, 1),
(11, 74, 1),
(11, 69, 1),
(11, 70, 1),
(11, 77, 1),
(11, 75, 1),
(12, 72, 2),
(12, 71, 2),
(12, 74, 2),
(12, 69, 2),
(12, 70, 2),
(12, 77, 2),
(12, 75, 2),
(5, 72, 1),
(5, 71, 1),
(5, 74, 1),
(5, 69, 1),
(5, 70, 1),
(5, 77, 1),
(5, 75, 1),
(6, 72, 2),
(6, 71, 2),
(6, 74, 2),
(6, 69, 2),
(6, 70, 2),
(6, 77, 2),
(6, 75, 2),
(20, 72, 1),
(20, 71, 1),
(20, 74, 1),
(20, 69, 1),
(20, 70, 1),
(20, 77, 1),
(20, 75, 1),
(17, 72, 1),
(17, 71, 1),
(17, 74, 1),
(17, 69, 1),
(17, 70, 1),
(17, 77, 1),
(17, 75, 1),
(15, 72, 1),
(15, 71, 1),
(15, 74, 1),
(15, 69, 1),
(15, 70, 1),
(15, 77, 1),
(15, 75, 1),
(13, 72, 1),
(13, 71, 1),
(13, 74, 1),
(13, 69, 1),
(13, 70, 1),
(13, 77, 1),
(13, 75, 1),
(14, 72, 2),
(14, 71, 2),
(14, 74, 2),
(14, 69, 2),
(14, 70, 2),
(14, 77, 2),
(14, 75, 2),
(8, 72, 2),
(8, 71, 2),
(8, 74, 2),
(8, 69, 2),
(8, 70, 2),
(8, 77, 2),
(8, 75, 2),
(9, 72, 3),
(9, 71, 3),
(9, 74, 3),
(9, 69, 3),
(9, 70, 3),
(9, 77, 3),
(9, 75, 3),
(10, 72, 4),
(10, 71, 4),
(10, 74, 4),
(10, 69, 4),
(10, 70, 4),
(10, 77, 4),
(10, 75, 4),
(19, 72, 1),
(19, 71, 1),
(19, 74, 1),
(19, 69, 1),
(19, 70, 1),
(19, 77, 1),
(19, 75, 1),
(16, 79, 1),
(16, 82, 1),
(16, 78, 1),
(18, 79, 1),
(18, 82, 1),
(18, 78, 1),
(11, 79, 1),
(11, 82, 1),
(11, 78, 1),
(12, 79, 2),
(12, 82, 2),
(12, 78, 2),
(5, 79, 1),
(5, 82, 1),
(5, 78, 1),
(6, 79, 2),
(6, 82, 2),
(6, 78, 2),
(20, 79, 1),
(20, 82, 1),
(20, 78, 1),
(17, 79, 1),
(17, 82, 1),
(17, 78, 1),
(15, 79, 1),
(15, 82, 1),
(15, 78, 1),
(13, 79, 1),
(13, 82, 1),
(13, 78, 1),
(14, 79, 2),
(14, 82, 2),
(14, 78, 2),
(8, 79, 2),
(8, 82, 2),
(8, 78, 2),
(9, 79, 3),
(9, 82, 3),
(9, 78, 3),
(10, 79, 4),
(10, 82, 4),
(10, 78, 4),
(19, 79, 1),
(19, 82, 1),
(19, 78, 1),
(16, 92, 1),
(16, 93, 1),
(16, 89, 1),
(16, 84, 1),
(16, 83, 1),
(16, 90, 1),
(16, 85, 1),
(16, 94, 1),
(16, 95, 1),
(16, 87, 1),
(16, 88, 1),
(18, 92, 1),
(18, 93, 1),
(18, 89, 1),
(18, 84, 1),
(18, 83, 1),
(18, 90, 1),
(18, 85, 1),
(18, 94, 1),
(18, 95, 1),
(18, 87, 1),
(18, 88, 1),
(11, 92, 1),
(11, 93, 1),
(11, 89, 1),
(11, 84, 1),
(11, 83, 1),
(11, 90, 1),
(11, 85, 1),
(11, 94, 1),
(11, 95, 1),
(11, 87, 1),
(11, 88, 1),
(12, 92, 2),
(12, 93, 2),
(12, 89, 2),
(12, 84, 2),
(12, 83, 2),
(12, 90, 2),
(12, 85, 2),
(12, 94, 2),
(12, 95, 2),
(12, 87, 2),
(12, 88, 2),
(5, 92, 1),
(5, 93, 1),
(5, 89, 1),
(5, 84, 1),
(5, 83, 1),
(5, 90, 1),
(5, 85, 1),
(5, 94, 1),
(5, 95, 1),
(5, 87, 1),
(5, 88, 1),
(6, 92, 2),
(6, 93, 2),
(6, 89, 2),
(6, 84, 2),
(6, 83, 2),
(6, 90, 2),
(6, 85, 2),
(6, 94, 2),
(6, 95, 2),
(6, 87, 2),
(6, 88, 2),
(20, 92, 1),
(20, 93, 1),
(20, 89, 1),
(20, 84, 1),
(20, 83, 1),
(20, 90, 1),
(20, 85, 1),
(20, 94, 1),
(20, 95, 1),
(20, 87, 1),
(20, 88, 1),
(17, 92, 1),
(17, 93, 1),
(17, 89, 1),
(17, 84, 1),
(17, 83, 1),
(17, 90, 1),
(17, 85, 1),
(17, 94, 1),
(17, 95, 1),
(17, 87, 1),
(17, 88, 1),
(15, 92, 1),
(15, 93, 1),
(15, 89, 1),
(15, 84, 1),
(15, 83, 1),
(15, 90, 1),
(15, 85, 1),
(15, 94, 1),
(15, 95, 1),
(15, 87, 1),
(15, 88, 1),
(13, 92, 1),
(13, 93, 1),
(13, 89, 1),
(13, 84, 1),
(13, 83, 1),
(13, 90, 1),
(13, 85, 1),
(13, 94, 1),
(13, 95, 1),
(13, 87, 1),
(13, 88, 1),
(14, 92, 2),
(14, 93, 2),
(14, 89, 2),
(14, 84, 2),
(14, 83, 2),
(14, 90, 2),
(14, 85, 2),
(14, 94, 2),
(14, 95, 2),
(14, 87, 2),
(14, 88, 2),
(8, 92, 2),
(8, 93, 2),
(8, 89, 2),
(8, 84, 2),
(8, 83, 2),
(8, 90, 2),
(8, 85, 2),
(8, 94, 2),
(8, 95, 2),
(8, 87, 2),
(8, 88, 2),
(9, 92, 3),
(9, 93, 3),
(9, 89, 3),
(9, 84, 3),
(9, 83, 3),
(9, 90, 3),
(9, 85, 3),
(9, 94, 3),
(9, 95, 3),
(9, 87, 3),
(9, 88, 3),
(10, 92, 4),
(10, 93, 4),
(10, 89, 4),
(10, 84, 4),
(10, 83, 4),
(10, 90, 4),
(10, 85, 4),
(10, 94, 4),
(10, 95, 4),
(10, 87, 4),
(10, 88, 4),
(19, 92, 1),
(19, 93, 1),
(19, 89, 1),
(19, 84, 1),
(19, 83, 1),
(19, 90, 1),
(19, 85, 1),
(19, 94, 1),
(19, 95, 1),
(19, 87, 1),
(19, 88, 1),
(18, 118, 1),
(16, 107, 1),
(16, 118, 1),
(16, 114, 1),
(18, 109, 1),
(18, 119, 1),
(16, 106, 1),
(16, 112, 1),
(16, 119, 1),
(16, 109, 1),
(16, 117, 1),
(16, 105, 1),
(16, 99, 1),
(16, 98, 1),
(16, 101, 1),
(16, 96, 1),
(16, 97, 1),
(16, 104, 1),
(16, 102, 1),
(18, 99, 1),
(18, 98, 1),
(18, 101, 1),
(18, 96, 1),
(18, 97, 1),
(18, 104, 1),
(18, 102, 1),
(11, 99, 1),
(11, 98, 1),
(11, 101, 1),
(11, 96, 1),
(11, 97, 1),
(11, 104, 1),
(11, 102, 1),
(12, 99, 2),
(12, 98, 2),
(12, 101, 2),
(12, 96, 2),
(12, 97, 2),
(12, 104, 2),
(12, 102, 2),
(5, 99, 1),
(5, 98, 1),
(5, 101, 1),
(5, 96, 1),
(5, 97, 1),
(5, 104, 1),
(5, 102, 1),
(6, 99, 2),
(6, 98, 2),
(6, 101, 2),
(6, 96, 2),
(6, 97, 2),
(6, 104, 2),
(6, 102, 2),
(20, 99, 1),
(20, 98, 1),
(20, 101, 1),
(20, 96, 1),
(20, 97, 1),
(20, 104, 1),
(20, 102, 1),
(17, 99, 1),
(17, 98, 1),
(17, 101, 1),
(17, 96, 1),
(17, 97, 1),
(17, 104, 1),
(17, 102, 1),
(15, 99, 1),
(15, 98, 1),
(15, 101, 1),
(15, 96, 1),
(15, 97, 1),
(15, 104, 1),
(15, 102, 1),
(13, 99, 1),
(13, 98, 1),
(13, 101, 1),
(13, 96, 1),
(13, 97, 1),
(13, 104, 1),
(13, 102, 1),
(14, 99, 2),
(14, 98, 2),
(14, 101, 2),
(14, 96, 2),
(14, 97, 2),
(14, 104, 2),
(14, 102, 2),
(8, 99, 1),
(8, 98, 1),
(8, 101, 1),
(8, 96, 1),
(8, 97, 1),
(8, 104, 1),
(8, 102, 1),
(9, 99, 2),
(9, 98, 2),
(9, 101, 2),
(9, 96, 2),
(9, 97, 2),
(9, 104, 2),
(9, 102, 2),
(10, 99, 3),
(10, 98, 3),
(10, 101, 3),
(10, 96, 3),
(10, 97, 3),
(10, 104, 3),
(10, 102, 3),
(19, 99, 1),
(19, 98, 1),
(19, 101, 1),
(19, 96, 1),
(19, 97, 1),
(19, 104, 1),
(19, 102, 1),
(18, 127, 1),
(11, 126, 1),
(18, 126, 1),
(12, 126, 2),
(11, 127, 1),
(16, 126, 1),
(16, 127, 1),
(18, 107, 1),
(18, 106, 1),
(18, 114, 1),
(18, 105, 1),
(18, 117, 1),
(18, 112, 1),
(11, 109, 1),
(11, 119, 1),
(11, 118, 1),
(11, 107, 1),
(11, 106, 1),
(11, 114, 1),
(11, 105, 1),
(11, 117, 1),
(11, 112, 1),
(12, 109, 2),
(12, 119, 2),
(12, 118, 2),
(12, 107, 2),
(12, 106, 2),
(12, 114, 2),
(12, 105, 2),
(12, 117, 2),
(12, 112, 2),
(5, 109, 1),
(5, 119, 1),
(5, 118, 1),
(5, 107, 1),
(5, 106, 1),
(5, 114, 1),
(5, 105, 1),
(5, 117, 1),
(5, 112, 1),
(6, 109, 2),
(6, 119, 2),
(6, 118, 2),
(6, 107, 2),
(6, 106, 2),
(6, 114, 2),
(6, 105, 2),
(6, 117, 2),
(6, 112, 2),
(20, 109, 1),
(20, 119, 1),
(20, 118, 1),
(20, 107, 1),
(20, 106, 1),
(20, 114, 1),
(20, 105, 1),
(20, 117, 1),
(20, 112, 1),
(17, 109, 1),
(17, 119, 1),
(17, 118, 1),
(17, 107, 1),
(17, 106, 1),
(17, 114, 1),
(17, 105, 1),
(17, 117, 1),
(17, 112, 1),
(15, 109, 1),
(15, 119, 1),
(15, 118, 1),
(15, 107, 1),
(15, 106, 1),
(15, 114, 1),
(15, 105, 1),
(15, 117, 1),
(15, 112, 1),
(13, 109, 1),
(13, 119, 1),
(13, 118, 1),
(13, 107, 1),
(13, 106, 1),
(13, 114, 1),
(13, 105, 1),
(13, 117, 1),
(13, 112, 1),
(14, 109, 2),
(14, 119, 2),
(14, 118, 2),
(14, 107, 2),
(14, 106, 2),
(14, 114, 2),
(14, 105, 2),
(14, 117, 2),
(14, 112, 2),
(8, 109, 1),
(8, 119, 1),
(8, 118, 1),
(8, 107, 1),
(8, 106, 1),
(8, 114, 1),
(8, 105, 1),
(8, 117, 1),
(8, 112, 1),
(9, 109, 2),
(9, 119, 2),
(9, 118, 2),
(9, 107, 2),
(9, 106, 2),
(9, 114, 2),
(9, 105, 2),
(9, 117, 2),
(9, 112, 2),
(10, 109, 3),
(10, 119, 3),
(10, 118, 3),
(10, 107, 3),
(10, 106, 3),
(10, 114, 3),
(10, 105, 3),
(10, 117, 3),
(10, 112, 3),
(19, 109, 1),
(19, 119, 1),
(19, 118, 1),
(19, 107, 1),
(19, 106, 1),
(19, 114, 1),
(19, 105, 1),
(19, 117, 1),
(19, 112, 1),
(16, 120, 1),
(16, 121, 1),
(18, 120, 1),
(18, 121, 1),
(11, 120, 1),
(11, 121, 1),
(12, 120, 2),
(12, 121, 2),
(5, 120, 1),
(5, 121, 1),
(6, 120, 2),
(6, 121, 2),
(20, 120, 1),
(20, 121, 1),
(17, 120, 1),
(17, 121, 1),
(15, 120, 1),
(15, 121, 1),
(13, 120, 1),
(13, 121, 1),
(14, 120, 2),
(14, 121, 2),
(8, 120, 1),
(8, 121, 1),
(9, 120, 2),
(9, 121, 2),
(10, 120, 3),
(10, 121, 3),
(19, 120, 1),
(19, 121, 1),
(16, 123, 1),
(16, 124, 1),
(18, 123, 1),
(18, 124, 1),
(11, 123, 1),
(11, 124, 1),
(12, 123, 2),
(12, 124, 2),
(5, 123, 1),
(5, 124, 1),
(6, 123, 2),
(6, 124, 2),
(20, 123, 1),
(20, 124, 1),
(17, 123, 1),
(17, 124, 1),
(15, 123, 1),
(15, 124, 1),
(13, 123, 1),
(13, 124, 1),
(14, 123, 2),
(14, 124, 2),
(8, 123, 1),
(8, 124, 1),
(9, 123, 2),
(9, 124, 2),
(10, 123, 3),
(10, 124, 3),
(19, 123, 1),
(19, 124, 1),
(12, 127, 2),
(5, 126, 1),
(5, 127, 1),
(6, 126, 2),
(6, 127, 2),
(20, 126, 1),
(20, 127, 1),
(17, 126, 1),
(17, 127, 1),
(15, 126, 1),
(15, 127, 1),
(13, 126, 1),
(13, 127, 1),
(14, 126, 2),
(14, 127, 2),
(8, 126, 1),
(8, 127, 1),
(9, 126, 2),
(9, 127, 2),
(10, 126, 3),
(10, 127, 3),
(19, 126, 1),
(19, 127, 1),
(100, 4, 1),
(100, 5, 1),
(100, 6, 1),
(100, 12, 1),
(100, 8, 1),
(100, 11, 1),
(100, 7, 1),
(100, 9, 1),
(100, 10, 1),
(100, 120, 1),
(100, 121, 1),
(16, 139, 1),
(16, 140, 1),
(100, 72, 1),
(100, 71, 1),
(100, 74, 1),
(100, 69, 1),
(100, 70, 1),
(100, 77, 1),
(100, 75, 1),
(100, 19, 1),
(100, 20, 1),
(100, 21, 1),
(100, 22, 1),
(100, 23, 1),
(100, 24, 1),
(100, 25, 1),
(100, 26, 1),
(100, 27, 1),
(100, 28, 1),
(100, 29, 1),
(100, 60, 1),
(100, 31, 1),
(100, 32, 1),
(100, 33, 1),
(100, 34, 1),
(100, 35, 1),
(100, 36, 1),
(100, 37, 1),
(100, 61, 1),
(100, 38, 1),
(100, 39, 1),
(100, 40, 1),
(100, 41, 1),
(100, 62, 1),
(100, 63, 1),
(100, 51, 1),
(100, 47, 1),
(100, 48, 1),
(100, 49, 1),
(100, 50, 1),
(100, 54, 1),
(100, 55, 1),
(100, 57, 1),
(100, 58, 1),
(100, 59, 1),
(16, 129, 1),
(16, 130, 1),
(18, 129, 1),
(18, 130, 1),
(11, 129, 1),
(11, 130, 1),
(12, 129, 2),
(12, 130, 2),
(5, 129, 1),
(5, 130, 1),
(6, 129, 2),
(6, 130, 2),
(20, 129, 1),
(20, 130, 1),
(17, 129, 1),
(17, 130, 1),
(15, 129, 1),
(15, 130, 1),
(13, 129, 1),
(13, 130, 1),
(14, 129, 2),
(14, 130, 2),
(8, 129, 1),
(8, 130, 1),
(9, 129, 2),
(9, 130, 2),
(10, 129, 3),
(10, 130, 3),
(19, 129, 1),
(19, 130, 1),
(101, 4, 1),
(101, 5, 1),
(101, 6, 1),
(101, 12, 1),
(101, 8, 1),
(101, 11, 1),
(101, 7, 1),
(101, 9, 1),
(101, 10, 1),
(101, 120, 1),
(101, 121, 1),
(101, 126, 1),
(101, 127, 1),
(101, 72, 1),
(101, 71, 1),
(101, 74, 1),
(101, 69, 1),
(101, 70, 1),
(101, 77, 1),
(101, 75, 1),
(101, 109, 1),
(101, 119, 1),
(101, 118, 1),
(101, 107, 1),
(101, 106, 1),
(101, 114, 1),
(101, 105, 1),
(101, 117, 1),
(101, 112, 1),
(101, 129, 1),
(101, 130, 1),
(101, 19, 1),
(101, 20, 1),
(101, 21, 1),
(101, 22, 1),
(101, 23, 1),
(101, 24, 1),
(101, 25, 1),
(101, 26, 1),
(101, 27, 1),
(101, 28, 1),
(101, 29, 1),
(101, 60, 1),
(101, 31, 1),
(101, 32, 1),
(101, 33, 1),
(101, 34, 1),
(101, 35, 1),
(101, 36, 1),
(101, 37, 1),
(101, 61, 1),
(101, 38, 1),
(101, 39, 1),
(101, 40, 1),
(101, 41, 1),
(101, 62, 1),
(101, 63, 1),
(101, 51, 1),
(101, 47, 1),
(101, 48, 1),
(101, 49, 1),
(101, 50, 1),
(101, 54, 1),
(101, 55, 1),
(101, 57, 1),
(101, 58, 1),
(101, 59, 1),
(101, 123, 1),
(101, 124, 1),
(102, 4, 1),
(102, 5, 1),
(102, 6, 1),
(102, 12, 1),
(102, 8, 1),
(102, 11, 1),
(102, 7, 1),
(102, 9, 1),
(102, 10, 1),
(102, 120, 1),
(102, 121, 1),
(102, 72, 1),
(102, 71, 1),
(102, 74, 1),
(102, 69, 1),
(102, 70, 1),
(102, 77, 1),
(102, 75, 1),
(102, 19, 1),
(102, 20, 1),
(102, 21, 1),
(102, 22, 1),
(102, 23, 1),
(102, 24, 1),
(102, 25, 1),
(102, 26, 1),
(102, 27, 1),
(102, 28, 1),
(102, 29, 1),
(102, 60, 1),
(102, 31, 1),
(102, 32, 1),
(102, 33, 1),
(102, 34, 1),
(102, 35, 1),
(102, 36, 1),
(102, 37, 1),
(102, 61, 1),
(102, 38, 1),
(102, 39, 1),
(102, 40, 1),
(102, 41, 1),
(102, 62, 1),
(102, 63, 1),
(102, 51, 1),
(102, 47, 1),
(102, 48, 1),
(102, 49, 1),
(102, 50, 1),
(102, 54, 1),
(102, 55, 1),
(102, 57, 1),
(102, 58, 1),
(102, 59, 1),
(103, 4, 1),
(104, 4, 1),
(105, 4, 1),
(106, 4, 1),
(107, 4, 2),
(108, 4, 1),
(109, 4, 1),
(110, 4, 1),
(111, 4, 1),
(112, 4, 1),
(113, 4, 2),
(114, 4, 3),
(114, 5, 2),
(114, 6, 2),
(114, 12, 2),
(114, 8, 2),
(114, 11, 2),
(114, 7, 2),
(114, 9, 2),
(114, 10, 2),
(114, 120, 2),
(114, 121, 2),
(114, 126, 2),
(114, 127, 2),
(114, 72, 2),
(114, 71, 2),
(114, 74, 2),
(114, 69, 2),
(114, 70, 2),
(114, 77, 2),
(114, 75, 2),
(114, 109, 2),
(114, 119, 2),
(114, 118, 2),
(114, 107, 2),
(114, 106, 2),
(114, 114, 2),
(114, 105, 2),
(114, 117, 2),
(114, 112, 2),
(114, 129, 2),
(114, 130, 2),
(114, 19, 2),
(114, 20, 2),
(114, 21, 2),
(114, 22, 2),
(114, 23, 2),
(114, 24, 2),
(114, 25, 2),
(114, 26, 2),
(114, 27, 2),
(114, 28, 2),
(114, 29, 2),
(114, 60, 2),
(114, 31, 2),
(114, 32, 2),
(114, 33, 2),
(114, 34, 2),
(114, 35, 2),
(114, 36, 2),
(114, 37, 2),
(114, 61, 2),
(114, 38, 2),
(114, 39, 2),
(114, 40, 2),
(114, 41, 2),
(114, 62, 2),
(114, 63, 2),
(114, 51, 2),
(114, 47, 2),
(114, 48, 2),
(114, 49, 2),
(114, 50, 2),
(114, 54, 2),
(114, 55, 2),
(114, 57, 2),
(114, 58, 2),
(114, 59, 2),
(114, 123, 2),
(114, 124, 2),
(115, 4, 4),
(115, 5, 3),
(115, 6, 3),
(115, 12, 3),
(115, 8, 3),
(115, 11, 3),
(115, 7, 3),
(115, 9, 3),
(115, 10, 3),
(115, 120, 3),
(115, 121, 3),
(115, 126, 3),
(115, 127, 3),
(115, 72, 3),
(115, 71, 3),
(115, 74, 3),
(115, 69, 3),
(115, 70, 3),
(115, 77, 3),
(115, 75, 3),
(115, 109, 3),
(115, 119, 3),
(115, 118, 3),
(115, 107, 3),
(115, 106, 3),
(115, 114, 3),
(115, 105, 3),
(115, 117, 3),
(115, 112, 3),
(115, 19, 3),
(115, 20, 3),
(115, 21, 3),
(115, 22, 3),
(115, 23, 3),
(115, 24, 3),
(115, 25, 3),
(115, 26, 3),
(115, 27, 3),
(115, 28, 3),
(115, 29, 3),
(115, 60, 3),
(115, 31, 3),
(115, 32, 3),
(115, 33, 3),
(115, 34, 3),
(115, 35, 3),
(115, 36, 3),
(115, 37, 3),
(115, 61, 3),
(115, 38, 3),
(115, 39, 3),
(115, 40, 3),
(115, 41, 3),
(115, 62, 3),
(115, 63, 3),
(115, 51, 3),
(115, 47, 3),
(115, 48, 3),
(115, 49, 3),
(115, 50, 3),
(115, 54, 3),
(115, 55, 3),
(115, 57, 3),
(115, 58, 3),
(115, 59, 3),
(116, 4, 5),
(116, 5, 4),
(116, 6, 4),
(116, 12, 4),
(116, 8, 4),
(116, 11, 4),
(116, 7, 4),
(116, 9, 4),
(116, 10, 4),
(116, 120, 4),
(116, 121, 4),
(116, 126, 4),
(116, 127, 4),
(116, 72, 4),
(116, 71, 4),
(116, 74, 4),
(116, 69, 4),
(116, 70, 4),
(116, 77, 4),
(116, 75, 4),
(116, 109, 4),
(116, 119, 4),
(116, 118, 4),
(116, 107, 4),
(116, 106, 4),
(116, 114, 4),
(116, 105, 4),
(116, 117, 4),
(116, 112, 4),
(116, 129, 3),
(116, 130, 3),
(116, 19, 4),
(116, 20, 4),
(116, 21, 4),
(116, 22, 4),
(116, 23, 4),
(116, 24, 4),
(116, 25, 4),
(116, 26, 4),
(116, 27, 4),
(116, 28, 4),
(116, 29, 4),
(116, 60, 4),
(116, 31, 4),
(116, 32, 4),
(116, 33, 4),
(116, 34, 4),
(116, 35, 4),
(116, 36, 4),
(116, 37, 4),
(116, 61, 4),
(116, 38, 4),
(116, 39, 4),
(116, 40, 4),
(116, 41, 4),
(116, 62, 4),
(116, 63, 4),
(116, 51, 4),
(116, 47, 4),
(116, 48, 4),
(116, 49, 4),
(116, 50, 4),
(116, 54, 4),
(116, 55, 4),
(116, 57, 4),
(116, 58, 4),
(116, 59, 4),
(116, 123, 3),
(116, 124, 3),
(117, 72, 1),
(117, 71, 1),
(117, 74, 1),
(117, 69, 1),
(117, 70, 1),
(117, 77, 1),
(117, 75, 1),
(118, 5, 1),
(118, 6, 1),
(118, 12, 1),
(118, 8, 1),
(118, 11, 1),
(118, 7, 1),
(118, 9, 1),
(118, 10, 1),
(118, 120, 1),
(118, 121, 1),
(118, 126, 1),
(118, 127, 1),
(119, 12, 1),
(119, 8, 1),
(119, 6, 1),
(119, 7, 1),
(119, 11, 1),
(119, 5, 1),
(118, 109, 1),
(118, 119, 1),
(118, 118, 1),
(118, 107, 1),
(118, 106, 1),
(118, 114, 1),
(118, 105, 1),
(118, 117, 1),
(118, 112, 1),
(118, 129, 1),
(118, 130, 1),
(118, 19, 1),
(118, 20, 1),
(118, 21, 1),
(118, 22, 1),
(118, 23, 1),
(118, 24, 1),
(118, 25, 1),
(118, 26, 1),
(118, 27, 1),
(118, 28, 1),
(118, 29, 1),
(118, 60, 1),
(118, 31, 1),
(118, 32, 1),
(118, 33, 1),
(118, 34, 1),
(118, 35, 1),
(118, 36, 1),
(118, 37, 1),
(118, 61, 1),
(118, 38, 1),
(118, 39, 1),
(118, 40, 1),
(118, 41, 1),
(118, 62, 1),
(118, 63, 1),
(118, 51, 1),
(118, 47, 1),
(118, 48, 1),
(118, 49, 1),
(118, 50, 1),
(118, 54, 1),
(118, 55, 1),
(118, 57, 1),
(118, 58, 1),
(118, 59, 1),
(118, 123, 1),
(118, 124, 1),
(119, 9, 1),
(119, 10, 1),
(119, 120, 1),
(119, 121, 1),
(119, 126, 1),
(119, 127, 1),
(119, 72, 1),
(119, 71, 1),
(119, 74, 1),
(119, 69, 1),
(119, 70, 1),
(119, 77, 1),
(119, 75, 1),
(119, 109, 1),
(119, 119, 1),
(119, 118, 1),
(119, 107, 1),
(119, 106, 1),
(119, 114, 1),
(119, 105, 1),
(119, 117, 1),
(119, 112, 1),
(119, 129, 1),
(119, 130, 1),
(119, 19, 1),
(119, 20, 1),
(119, 21, 1),
(119, 22, 1),
(119, 23, 1),
(119, 24, 1),
(119, 25, 1),
(119, 26, 1),
(119, 27, 1),
(119, 28, 1),
(119, 29, 1),
(119, 60, 1),
(119, 31, 1),
(119, 32, 1),
(119, 33, 1),
(119, 34, 1),
(119, 35, 1),
(119, 36, 1),
(119, 37, 1),
(119, 61, 1),
(119, 38, 1),
(119, 39, 1),
(119, 40, 1),
(119, 41, 1),
(119, 62, 1),
(119, 63, 1),
(119, 51, 1),
(119, 47, 1),
(119, 48, 1),
(119, 49, 1),
(119, 50, 1),
(119, 54, 1),
(119, 55, 1),
(119, 57, 1),
(119, 58, 1),
(119, 59, 1),
(119, 123, 1),
(119, 124, 1),
(120, 4, 1),
(120, 5, 1),
(120, 6, 1),
(120, 12, 1),
(120, 8, 1),
(120, 11, 1),
(120, 7, 1),
(120, 9, 1),
(120, 10, 1),
(120, 120, 1),
(120, 121, 1),
(120, 126, 1),
(120, 127, 1),
(120, 72, 1),
(120, 71, 1),
(120, 74, 1),
(120, 69, 1),
(120, 70, 1),
(120, 77, 1),
(120, 75, 1),
(120, 109, 1),
(120, 119, 1),
(120, 118, 1),
(120, 107, 1),
(120, 106, 1),
(120, 114, 1),
(120, 105, 1),
(120, 117, 1),
(120, 112, 1),
(120, 129, 1),
(120, 130, 1),
(120, 19, 1),
(120, 20, 1),
(120, 21, 1),
(120, 22, 1),
(120, 23, 1),
(120, 24, 1),
(120, 25, 1),
(120, 26, 1),
(120, 27, 1),
(120, 28, 1),
(120, 29, 1),
(120, 60, 1),
(120, 31, 1),
(120, 32, 1),
(120, 33, 1),
(120, 34, 1),
(120, 35, 1),
(120, 36, 1),
(120, 37, 1),
(120, 61, 1),
(120, 38, 1),
(120, 39, 1),
(120, 40, 1),
(120, 41, 1),
(120, 62, 1),
(120, 63, 1),
(120, 51, 1),
(120, 47, 1),
(120, 48, 1),
(120, 49, 1),
(120, 50, 1),
(120, 54, 1),
(120, 55, 1),
(120, 57, 1),
(120, 58, 1),
(120, 59, 1),
(120, 123, 1),
(120, 124, 1),
(121, 4, 1),
(122, 4, 2),
(123, 4, 1),
(123, 5, 1),
(123, 6, 1),
(123, 12, 1),
(123, 8, 1),
(123, 11, 1),
(123, 7, 1),
(123, 9, 1),
(123, 10, 1),
(123, 120, 1),
(123, 121, 1),
(123, 126, 1),
(123, 127, 1),
(123, 72, 1),
(123, 71, 1),
(123, 74, 1),
(123, 69, 1),
(123, 70, 1),
(123, 77, 1),
(123, 75, 1),
(123, 109, 1),
(123, 119, 1),
(123, 118, 1),
(123, 107, 1),
(123, 106, 1),
(123, 114, 1),
(123, 105, 1),
(123, 117, 1),
(123, 112, 1),
(123, 19, 1),
(123, 20, 1),
(123, 21, 1),
(123, 22, 1),
(123, 23, 1),
(123, 24, 1),
(123, 25, 1),
(123, 26, 1),
(123, 27, 1),
(123, 28, 1),
(123, 29, 1),
(123, 60, 1),
(123, 31, 1),
(123, 32, 1),
(123, 33, 1),
(123, 34, 1),
(123, 35, 1),
(123, 36, 1),
(123, 37, 1),
(123, 61, 1),
(123, 38, 1),
(123, 39, 1),
(123, 40, 1),
(123, 41, 1),
(123, 62, 1),
(123, 63, 1),
(123, 51, 1),
(123, 47, 1),
(123, 48, 1),
(123, 49, 1),
(123, 50, 1),
(123, 54, 1),
(123, 55, 1),
(123, 57, 1),
(123, 58, 1),
(123, 59, 1),
(124, 4, 1),
(124, 5, 1),
(124, 6, 1),
(124, 12, 1),
(124, 8, 1),
(124, 11, 1),
(124, 7, 1),
(124, 9, 1),
(124, 10, 1),
(124, 120, 1),
(124, 121, 1),
(124, 126, 1),
(124, 127, 1),
(124, 72, 1),
(124, 71, 1),
(124, 74, 1),
(124, 69, 1),
(124, 70, 1),
(124, 77, 1),
(124, 75, 1),
(124, 109, 1),
(124, 119, 1),
(124, 118, 1),
(124, 107, 1),
(124, 106, 1),
(124, 114, 1),
(124, 105, 1),
(124, 117, 1),
(124, 112, 1),
(124, 129, 1),
(124, 130, 1),
(124, 19, 1),
(124, 20, 1),
(124, 21, 1),
(124, 22, 1),
(124, 23, 1),
(124, 24, 1),
(124, 25, 1),
(124, 26, 1),
(124, 27, 1),
(124, 28, 1),
(124, 29, 1),
(124, 60, 1),
(124, 31, 1),
(124, 32, 1),
(124, 33, 1),
(124, 34, 1),
(124, 35, 1),
(124, 36, 1),
(124, 37, 1),
(124, 61, 1),
(124, 38, 1),
(124, 39, 1),
(124, 40, 1),
(124, 41, 1),
(124, 62, 1),
(124, 63, 1),
(124, 51, 1),
(124, 47, 1),
(124, 48, 1),
(124, 49, 1),
(124, 50, 1),
(124, 54, 1),
(124, 55, 1),
(124, 57, 1),
(124, 58, 1),
(124, 59, 1),
(124, 123, 1),
(124, 124, 1),
(125, 4, 1),
(125, 5, 1),
(125, 6, 1),
(125, 12, 1),
(125, 8, 1),
(125, 11, 1),
(125, 7, 1),
(125, 9, 1),
(125, 10, 1),
(125, 120, 1),
(125, 121, 1),
(125, 72, 1),
(125, 71, 1),
(125, 74, 1),
(125, 69, 1),
(125, 70, 1),
(125, 77, 1),
(125, 75, 1),
(125, 19, 1),
(125, 20, 1),
(125, 21, 1),
(125, 22, 1),
(125, 23, 1),
(125, 24, 1),
(125, 25, 1),
(125, 26, 1),
(125, 27, 1),
(125, 28, 1),
(125, 29, 1),
(125, 60, 1),
(125, 31, 1),
(125, 32, 1),
(125, 33, 1),
(125, 34, 1),
(125, 35, 1),
(125, 36, 1),
(125, 37, 1),
(125, 61, 1),
(125, 38, 1),
(125, 39, 1),
(125, 40, 1),
(125, 41, 1),
(125, 62, 1),
(125, 63, 1),
(125, 51, 1),
(125, 47, 1),
(125, 48, 1),
(125, 49, 1),
(125, 50, 1),
(125, 54, 1),
(125, 55, 1),
(125, 57, 1),
(125, 58, 1),
(125, 59, 1),
(127, 120, 1),
(127, 121, 1),
(127, 126, 1),
(127, 127, 1),
(127, 72, 1),
(127, 71, 1),
(127, 74, 1),
(127, 69, 1),
(127, 70, 1),
(127, 77, 1),
(127, 75, 1),
(127, 4, 1),
(127, 5, 1),
(127, 6, 1),
(127, 12, 1),
(127, 8, 1),
(127, 11, 1),
(127, 7, 1),
(127, 9, 1),
(127, 10, 1),
(127, 109, 1),
(127, 119, 1),
(127, 118, 1),
(127, 107, 1),
(127, 106, 1),
(127, 114, 1),
(127, 105, 1),
(127, 117, 1),
(127, 112, 1),
(127, 19, 1),
(127, 20, 1),
(127, 21, 1),
(127, 22, 1),
(127, 23, 1),
(127, 24, 1),
(127, 25, 1),
(127, 26, 1),
(127, 27, 1),
(127, 28, 1),
(127, 29, 1),
(127, 60, 1),
(127, 31, 1),
(127, 32, 1),
(127, 33, 1),
(127, 34, 1),
(127, 35, 1),
(127, 36, 1),
(127, 37, 1),
(127, 61, 1),
(127, 38, 1),
(127, 39, 1),
(127, 40, 1),
(127, 41, 1),
(127, 62, 1),
(127, 63, 1),
(127, 51, 1),
(127, 47, 1),
(127, 48, 1),
(127, 49, 1),
(127, 50, 1),
(127, 54, 1),
(127, 55, 1),
(127, 57, 1),
(127, 58, 1),
(127, 59, 1),
(16, 132, 1),
(16, 134, 1),
(16, 133, 1),
(16, 136, 1),
(18, 132, 1),
(18, 134, 1),
(18, 133, 1),
(18, 136, 1),
(11, 132, 1),
(11, 134, 1),
(11, 133, 1),
(11, 136, 1),
(12, 132, 2),
(12, 134, 2),
(12, 133, 2),
(12, 136, 2),
(5, 132, 1),
(5, 134, 1),
(5, 133, 1),
(5, 136, 1),
(6, 132, 2),
(6, 134, 2),
(6, 133, 2),
(6, 136, 2),
(20, 132, 1),
(20, 134, 1),
(20, 133, 1),
(20, 136, 1),
(17, 132, 1),
(17, 134, 1),
(17, 133, 1),
(17, 136, 1),
(15, 132, 1),
(15, 134, 1),
(15, 133, 1),
(15, 136, 1),
(13, 132, 1),
(13, 134, 1),
(13, 133, 1),
(13, 136, 1),
(14, 132, 2),
(14, 134, 2),
(14, 133, 2),
(14, 136, 2),
(8, 132, 1),
(8, 134, 1),
(8, 133, 1),
(8, 136, 1),
(9, 132, 2),
(9, 134, 2),
(9, 133, 2),
(9, 136, 2),
(10, 132, 3),
(10, 134, 3),
(10, 133, 3),
(10, 136, 3),
(19, 132, 1),
(19, 134, 1),
(19, 133, 1),
(19, 136, 1),
(125, 132, 1),
(125, 134, 1),
(125, 133, 1),
(125, 136, 1),
(119, 132, 1),
(119, 134, 1),
(119, 133, 1),
(119, 136, 1),
(100, 132, 1),
(100, 134, 1),
(100, 133, 1),
(100, 136, 1),
(101, 132, 1),
(101, 134, 1),
(101, 133, 1),
(101, 136, 1),
(114, 132, 1),
(114, 134, 1),
(114, 133, 1),
(114, 136, 1),
(115, 132, 2),
(115, 134, 2),
(115, 133, 2),
(115, 136, 2),
(116, 132, 3),
(116, 134, 3),
(116, 133, 3),
(116, 136, 3),
(127, 132, 1),
(127, 134, 1),
(127, 133, 1),
(127, 136, 1),
(102, 132, 1),
(102, 134, 1),
(102, 133, 1),
(102, 136, 1),
(120, 132, 1),
(120, 134, 1),
(120, 133, 1),
(120, 136, 1),
(124, 132, 1),
(124, 134, 1),
(124, 133, 1),
(124, 136, 1),
(123, 132, 1),
(123, 134, 1),
(123, 133, 1),
(123, 136, 1),
(16, 142, 1),
(16, 137, 1),
(16, 138, 1),
(16, 145, 1),
(16, 143, 1),
(18, 140, 1),
(18, 139, 1),
(18, 142, 1),
(18, 137, 1),
(18, 138, 1),
(18, 145, 1),
(18, 143, 1),
(11, 140, 1),
(11, 139, 1),
(11, 142, 1),
(11, 137, 1),
(11, 138, 1),
(11, 145, 1),
(11, 143, 1),
(12, 140, 2),
(12, 139, 2),
(12, 142, 2),
(12, 137, 2),
(12, 138, 2),
(12, 145, 2),
(12, 143, 2),
(5, 140, 1),
(5, 139, 1),
(5, 142, 1),
(5, 137, 1),
(5, 138, 1),
(5, 145, 1),
(5, 143, 1),
(6, 140, 2),
(6, 139, 2),
(6, 142, 2),
(6, 137, 2),
(6, 138, 2),
(6, 145, 2),
(6, 143, 2),
(20, 140, 1),
(20, 139, 1),
(20, 142, 1),
(20, 137, 1),
(20, 138, 1),
(20, 145, 1),
(20, 143, 1),
(17, 140, 1),
(17, 139, 1),
(17, 142, 1),
(17, 137, 1),
(17, 138, 1),
(17, 145, 1),
(17, 143, 1),
(15, 140, 1),
(15, 139, 1),
(15, 142, 1),
(15, 137, 1),
(15, 138, 1),
(15, 145, 1),
(15, 143, 1),
(13, 140, 1),
(13, 139, 1),
(13, 142, 1),
(13, 137, 1),
(13, 138, 1),
(13, 145, 1),
(13, 143, 1),
(14, 140, 2),
(14, 139, 2),
(14, 142, 2),
(14, 137, 2),
(14, 138, 2),
(14, 145, 2),
(14, 143, 2),
(8, 140, 1),
(8, 139, 1),
(8, 142, 1),
(8, 137, 1),
(8, 138, 1),
(8, 145, 1),
(8, 143, 1),
(9, 140, 2),
(9, 139, 2),
(9, 142, 2),
(9, 137, 2),
(9, 138, 2),
(9, 145, 2),
(9, 143, 2),
(10, 140, 3),
(10, 139, 3),
(10, 142, 3),
(10, 137, 3),
(10, 138, 3),
(10, 145, 3),
(10, 143, 3),
(19, 140, 1),
(19, 139, 1),
(19, 142, 1),
(19, 137, 1),
(19, 138, 1),
(19, 145, 1),
(19, 143, 1),
(125, 140, 1),
(125, 139, 1),
(125, 142, 1),
(125, 137, 1),
(125, 138, 1),
(125, 145, 1),
(125, 143, 1),
(119, 140, 1),
(119, 139, 1),
(119, 142, 1),
(119, 137, 1),
(119, 138, 1),
(119, 145, 1),
(119, 143, 1),
(100, 140, 1),
(100, 139, 1),
(100, 142, 1),
(100, 137, 1),
(100, 138, 1),
(100, 145, 1),
(100, 143, 1),
(101, 140, 1),
(101, 139, 1),
(101, 142, 1),
(101, 137, 1),
(101, 138, 1),
(101, 145, 1),
(101, 143, 1),
(114, 140, 2),
(114, 139, 1),
(114, 142, 1),
(114, 137, 1),
(114, 138, 1),
(114, 145, 1),
(114, 143, 1),
(115, 140, 3),
(115, 139, 2),
(115, 142, 2),
(115, 137, 2),
(115, 138, 2),
(115, 145, 2),
(115, 143, 2),
(116, 140, 4),
(116, 139, 3),
(116, 142, 3),
(116, 137, 3),
(116, 138, 3),
(116, 145, 3),
(116, 143, 3),
(127, 140, 1),
(127, 139, 1),
(127, 142, 1),
(127, 137, 1),
(127, 138, 1),
(127, 145, 1),
(127, 143, 1),
(102, 140, 1),
(102, 139, 1),
(102, 142, 1),
(102, 137, 1),
(102, 138, 1),
(102, 145, 1),
(102, 143, 1),
(120, 140, 1),
(120, 139, 1),
(120, 142, 1),
(120, 137, 1),
(120, 138, 1),
(120, 145, 1),
(120, 143, 1),
(124, 140, 1),
(124, 139, 1),
(124, 142, 1),
(124, 137, 1),
(124, 138, 1),
(124, 145, 1),
(124, 143, 1),
(123, 140, 1),
(123, 139, 1),
(123, 142, 1),
(123, 137, 1),
(123, 138, 1),
(123, 145, 1),
(123, 143, 1),
(16, 146, 1),
(18, 146, 1),
(11, 146, 1),
(12, 146, 2),
(5, 146, 1),
(6, 146, 2),
(20, 146, 1),
(17, 146, 1),
(15, 146, 1),
(13, 146, 1),
(14, 146, 2),
(8, 146, 1),
(9, 146, 2),
(10, 146, 3),
(19, 146, 1),
(125, 146, 1),
(119, 146, 1),
(100, 146, 1),
(101, 146, 1),
(114, 146, 1),
(115, 146, 2),
(116, 146, 3),
(127, 146, 1),
(102, 146, 1),
(120, 146, 1),
(124, 146, 1),
(123, 146, 1),
(111, 120, 1),
(111, 121, 1),
(111, 5, 1),
(111, 6, 1),
(111, 12, 1),
(111, 8, 1),
(111, 11, 1),
(111, 7, 1),
(111, 9, 1),
(111, 10, 1),
(111, 132, 1),
(111, 134, 1),
(111, 133, 1),
(111, 136, 1),
(111, 72, 1),
(111, 71, 1),
(111, 74, 1),
(111, 69, 1),
(111, 70, 1),
(111, 77, 1),
(111, 75, 1),
(111, 140, 1),
(111, 139, 1),
(111, 142, 1),
(111, 137, 1),
(111, 138, 1),
(111, 145, 1),
(111, 143, 1),
(111, 146, 1),
(111, 19, 1),
(111, 20, 1),
(111, 21, 1),
(111, 22, 1),
(111, 23, 1),
(111, 24, 1),
(111, 25, 1),
(111, 26, 1),
(111, 27, 1),
(111, 28, 1),
(111, 29, 1),
(111, 60, 1),
(111, 31, 1),
(111, 32, 1),
(111, 33, 1),
(111, 34, 1),
(111, 35, 1),
(111, 36, 1),
(111, 37, 1),
(111, 61, 1),
(111, 38, 1),
(111, 39, 1),
(111, 40, 1),
(111, 41, 1),
(111, 62, 1),
(111, 63, 1),
(111, 51, 1),
(111, 47, 1),
(111, 48, 1),
(111, 49, 1),
(111, 50, 1),
(111, 54, 1),
(111, 55, 1),
(111, 57, 1),
(111, 58, 1),
(111, 59, 1),
(110, 120, 1),
(110, 121, 1),
(110, 5, 1),
(110, 6, 1),
(110, 12, 1),
(110, 8, 1),
(110, 11, 1),
(110, 7, 1),
(110, 9, 1),
(110, 10, 1),
(110, 132, 1),
(110, 134, 1),
(110, 133, 1),
(110, 136, 1),
(110, 72, 1),
(110, 71, 1),
(110, 74, 1),
(110, 69, 1),
(110, 70, 1),
(110, 77, 1),
(110, 75, 1),
(110, 140, 1),
(110, 139, 1),
(110, 142, 1),
(110, 137, 1),
(110, 138, 1),
(110, 145, 1),
(110, 143, 1),
(110, 146, 1),
(110, 19, 1),
(110, 20, 1),
(110, 21, 1),
(110, 22, 1),
(110, 23, 1),
(110, 24, 1),
(110, 25, 1),
(110, 26, 1),
(110, 27, 1),
(110, 28, 1),
(110, 29, 1),
(110, 60, 1),
(110, 31, 1),
(110, 32, 1),
(110, 33, 1),
(110, 34, 1),
(110, 35, 1),
(110, 36, 1),
(110, 37, 1),
(110, 61, 1),
(110, 38, 1),
(110, 39, 1),
(110, 40, 1),
(110, 41, 1),
(110, 62, 1),
(110, 63, 1),
(110, 51, 1),
(110, 47, 1),
(110, 48, 1),
(110, 49, 1),
(110, 50, 1),
(110, 54, 1),
(110, 55, 1),
(110, 57, 1),
(110, 58, 1),
(110, 59, 1),
(128, 140, 1),
(131, 120, 1),
(131, 121, 1),
(131, 38, 1),
(131, 39, 1),
(131, 40, 1),
(131, 41, 1),
(131, 132, 1),
(131, 134, 1),
(131, 133, 1),
(131, 136, 1),
(131, 47, 1),
(131, 48, 1),
(131, 49, 1),
(131, 50, 1),
(131, 60, 1),
(131, 146, 1),
(131, 63, 1),
(131, 72, 1),
(131, 71, 1),
(131, 74, 1),
(131, 69, 1),
(131, 70, 1),
(131, 77, 1),
(131, 75, 1),
(131, 4, 1),
(131, 5, 1),
(131, 6, 1),
(131, 12, 1),
(131, 8, 1),
(131, 11, 1),
(131, 7, 1),
(131, 9, 1),
(131, 10, 1),
(131, 140, 1),
(131, 139, 1),
(131, 142, 1),
(131, 137, 1),
(131, 138, 1),
(131, 145, 1),
(131, 143, 1),
(131, 51, 1),
(131, 62, 1),
(131, 54, 1),
(131, 55, 1),
(131, 31, 1),
(131, 32, 1),
(131, 33, 1),
(131, 34, 1),
(131, 35, 1),
(131, 36, 1),
(131, 37, 1),
(131, 57, 1),
(131, 58, 1),
(131, 59, 1),
(131, 19, 1),
(131, 20, 1),
(131, 21, 1),
(131, 22, 1),
(131, 23, 1),
(131, 24, 1),
(131, 25, 1),
(131, 26, 1),
(131, 27, 1),
(131, 28, 1),
(131, 29, 1),
(131, 61, 1),
(132, 120, 1),
(132, 121, 1),
(132, 38, 1),
(132, 39, 1),
(132, 40, 1),
(132, 41, 1),
(132, 132, 1),
(132, 134, 1),
(132, 133, 1),
(132, 136, 1),
(132, 47, 1),
(132, 48, 1),
(132, 49, 1),
(132, 50, 1),
(132, 60, 1),
(132, 146, 1),
(132, 63, 1),
(132, 72, 1),
(132, 71, 1),
(132, 74, 1),
(132, 69, 1),
(132, 70, 1),
(132, 77, 1),
(132, 75, 1),
(132, 4, 1),
(132, 5, 1),
(132, 6, 1),
(132, 12, 1),
(132, 8, 1),
(132, 11, 1),
(132, 7, 1),
(132, 9, 1),
(132, 10, 1),
(132, 140, 1),
(132, 139, 1),
(132, 142, 1),
(132, 137, 1),
(132, 138, 1),
(132, 145, 1),
(132, 143, 1),
(132, 51, 1),
(132, 62, 1),
(132, 54, 1),
(132, 55, 1),
(132, 31, 1),
(132, 32, 1),
(132, 33, 1),
(132, 34, 1),
(132, 35, 1),
(132, 36, 1),
(132, 37, 1),
(132, 57, 1),
(132, 58, 1),
(132, 59, 1),
(132, 19, 1),
(132, 20, 1),
(132, 21, 1),
(132, 22, 1),
(132, 23, 1),
(132, 24, 1),
(132, 25, 1),
(132, 26, 1),
(132, 27, 1),
(132, 28, 1),
(132, 29, 1),
(132, 61, 1),
(133, 120, 1),
(133, 121, 1),
(133, 38, 1),
(133, 39, 1),
(133, 40, 1),
(133, 41, 1),
(133, 132, 1),
(133, 134, 1),
(133, 133, 1),
(133, 136, 1),
(133, 47, 1),
(133, 48, 1),
(133, 49, 1),
(133, 50, 1),
(133, 60, 1),
(133, 146, 1),
(133, 63, 1),
(133, 72, 1),
(133, 71, 1),
(133, 74, 1),
(133, 69, 1),
(133, 70, 1),
(133, 77, 1),
(133, 75, 1),
(133, 4, 1),
(133, 5, 1),
(133, 6, 1),
(133, 12, 1),
(133, 8, 1),
(133, 11, 1),
(133, 7, 1),
(133, 9, 1),
(133, 10, 1),
(133, 140, 1),
(133, 139, 1),
(133, 142, 1),
(133, 137, 1),
(133, 138, 1),
(133, 145, 1),
(133, 143, 1),
(133, 51, 1),
(133, 62, 1),
(133, 54, 1),
(133, 55, 1),
(133, 31, 1),
(133, 32, 1),
(133, 33, 1),
(133, 34, 1),
(133, 35, 1),
(133, 36, 1),
(133, 37, 1),
(133, 57, 1),
(133, 58, 1),
(133, 59, 1),
(133, 19, 1),
(133, 20, 1),
(133, 21, 1),
(133, 22, 1),
(133, 23, 1),
(133, 24, 1),
(133, 25, 1),
(133, 26, 1),
(133, 27, 1),
(133, 28, 1),
(133, 29, 1),
(133, 61, 1),
(134, 120, 2),
(134, 121, 2),
(134, 38, 2),
(134, 39, 2),
(134, 40, 2),
(134, 41, 2),
(134, 132, 2),
(134, 134, 2),
(134, 133, 2),
(134, 136, 2),
(134, 47, 2),
(134, 48, 2),
(134, 49, 2),
(134, 50, 2),
(134, 60, 2),
(134, 146, 2),
(134, 63, 2),
(134, 72, 2),
(134, 71, 2),
(134, 74, 2),
(134, 69, 2),
(134, 70, 2),
(134, 77, 2),
(134, 75, 2),
(134, 4, 2),
(134, 5, 2),
(134, 6, 2),
(134, 12, 2),
(134, 8, 2),
(134, 11, 2),
(134, 7, 2),
(134, 9, 2),
(134, 10, 2),
(134, 140, 2),
(134, 139, 2),
(134, 142, 2),
(134, 137, 2),
(134, 138, 2),
(134, 145, 2),
(134, 143, 2),
(134, 51, 2),
(134, 62, 2),
(134, 54, 2),
(134, 55, 2),
(134, 31, 2),
(134, 32, 2),
(134, 33, 2),
(134, 34, 2),
(134, 35, 2),
(134, 36, 2),
(134, 37, 2),
(134, 57, 2),
(134, 58, 2),
(134, 59, 2),
(134, 19, 2),
(134, 20, 2),
(134, 21, 2),
(134, 22, 2),
(134, 23, 2),
(134, 24, 2),
(134, 25, 2),
(134, 26, 2),
(134, 27, 2),
(134, 28, 2),
(134, 29, 2),
(134, 61, 2),
(135, 4, 1),
(135, 5, 1),
(135, 6, 1),
(135, 12, 1),
(135, 8, 1),
(135, 11, 1),
(135, 7, 1),
(135, 9, 1),
(135, 10, 1),
(136, 19, 1),
(136, 20, 1),
(136, 21, 1),
(136, 22, 1),
(136, 23, 1),
(136, 24, 1),
(136, 25, 1),
(136, 26, 1),
(136, 27, 1),
(136, 28, 1),
(136, 31, 1),
(136, 32, 1),
(136, 33, 1),
(136, 34, 1),
(136, 35, 1),
(136, 36, 1),
(136, 37, 1),
(137, 120, 1),
(137, 121, 1),
(137, 38, 1),
(137, 39, 1),
(137, 40, 1),
(137, 41, 1),
(137, 132, 1),
(137, 134, 1),
(137, 133, 1),
(137, 136, 1),
(137, 47, 1),
(137, 48, 1),
(137, 49, 1),
(137, 50, 1),
(137, 60, 1),
(137, 146, 1),
(137, 63, 1),
(137, 72, 1),
(137, 71, 1),
(137, 74, 1),
(137, 69, 1),
(137, 70, 1),
(137, 77, 1),
(137, 75, 1),
(137, 4, 2),
(137, 5, 2),
(137, 6, 2),
(137, 12, 2),
(137, 8, 2),
(137, 11, 2),
(137, 7, 2),
(137, 9, 2),
(137, 10, 2),
(137, 140, 1),
(137, 139, 1),
(137, 142, 1),
(137, 137, 1),
(137, 138, 1),
(137, 145, 1),
(137, 143, 1),
(137, 51, 1),
(137, 62, 1),
(137, 54, 1),
(137, 55, 1),
(137, 31, 2),
(137, 32, 2),
(137, 33, 2),
(137, 34, 2),
(137, 35, 2),
(137, 36, 2),
(137, 37, 2),
(137, 57, 1),
(137, 58, 1),
(137, 59, 1),
(137, 19, 2),
(137, 20, 2),
(137, 21, 2),
(137, 22, 2),
(137, 23, 2),
(137, 24, 2),
(137, 25, 2),
(137, 26, 2),
(137, 27, 2),
(137, 28, 2),
(137, 29, 1),
(137, 61, 1),
(138, 120, 2),
(138, 121, 2),
(138, 38, 2),
(138, 39, 2),
(138, 40, 2),
(138, 41, 2),
(138, 132, 2),
(138, 134, 2),
(138, 133, 2),
(138, 136, 2),
(138, 47, 2),
(138, 48, 2),
(138, 49, 2),
(138, 50, 2),
(138, 60, 2),
(138, 146, 2),
(138, 63, 2),
(138, 72, 2),
(138, 71, 2),
(138, 74, 2),
(138, 69, 2),
(138, 70, 2),
(138, 77, 2),
(138, 75, 2),
(138, 4, 3),
(138, 5, 3),
(138, 6, 3),
(138, 12, 3),
(138, 8, 3),
(138, 11, 3),
(138, 7, 3),
(138, 9, 3),
(138, 10, 3),
(138, 140, 2),
(138, 139, 2),
(138, 142, 2),
(138, 137, 2),
(138, 138, 2),
(138, 145, 2),
(138, 143, 2),
(138, 51, 2),
(138, 62, 2),
(138, 54, 2),
(138, 55, 2),
(138, 31, 3),
(138, 32, 3),
(138, 33, 3),
(138, 34, 3),
(138, 35, 3),
(138, 36, 3),
(138, 37, 3),
(138, 57, 2),
(138, 58, 2),
(138, 59, 2),
(138, 19, 3),
(138, 20, 3),
(138, 21, 3),
(138, 22, 3),
(138, 23, 3),
(138, 24, 3),
(138, 25, 3),
(138, 26, 3),
(138, 27, 3),
(138, 28, 3),
(138, 29, 2),
(138, 61, 2),
(141, 120, 5),
(141, 121, 5),
(141, 38, 5),
(141, 39, 5),
(141, 40, 5),
(141, 41, 5),
(141, 132, 5),
(141, 134, 5),
(141, 133, 5),
(141, 136, 5),
(141, 47, 5),
(141, 48, 5),
(141, 49, 5),
(141, 50, 5),
(141, 60, 5),
(141, 146, 5),
(141, 63, 5),
(141, 72, 5),
(141, 71, 5),
(141, 74, 5),
(141, 69, 5),
(141, 70, 5),
(141, 77, 5),
(141, 75, 5),
(141, 4, 1),
(141, 5, 5),
(141, 6, 5),
(141, 12, 5),
(141, 8, 5),
(141, 11, 5),
(141, 7, 5),
(141, 9, 5),
(141, 10, 5),
(141, 140, 5),
(141, 139, 5),
(141, 142, 5),
(141, 137, 5),
(141, 138, 5),
(141, 145, 5),
(141, 143, 5),
(141, 51, 5),
(141, 62, 5),
(141, 54, 5),
(141, 55, 5),
(141, 31, 5),
(141, 32, 5),
(141, 33, 5),
(141, 34, 5),
(141, 35, 5),
(141, 36, 5),
(141, 37, 5),
(141, 57, 5),
(141, 58, 5),
(141, 59, 5),
(141, 19, 5),
(141, 20, 5),
(141, 21, 5),
(141, 22, 5),
(141, 23, 5),
(141, 24, 5),
(141, 25, 5),
(141, 26, 5),
(141, 27, 5),
(141, 28, 5),
(141, 29, 5),
(141, 61, 5),
(142, 120, 1),
(142, 121, 1),
(142, 38, 1),
(142, 39, 1),
(142, 40, 1),
(142, 41, 1),
(142, 132, 1),
(142, 134, 1),
(142, 133, 1),
(142, 136, 1),
(142, 47, 1),
(142, 48, 1),
(142, 49, 1),
(142, 50, 1),
(142, 60, 1),
(142, 146, 1),
(142, 63, 1),
(142, 72, 1),
(142, 71, 1),
(142, 74, 1),
(142, 69, 1),
(142, 70, 1),
(142, 77, 1),
(142, 75, 1),
(142, 4, 1),
(142, 5, 1),
(142, 6, 1),
(142, 12, 1),
(142, 8, 1),
(142, 11, 1),
(142, 7, 1),
(142, 9, 1),
(142, 10, 1),
(142, 140, 1),
(142, 139, 1),
(142, 142, 1),
(142, 137, 1),
(142, 138, 1),
(142, 145, 1),
(142, 143, 1),
(142, 51, 1),
(142, 62, 1),
(142, 54, 1),
(142, 55, 1),
(142, 31, 1),
(142, 32, 1),
(142, 33, 1),
(142, 34, 1),
(142, 35, 1),
(142, 36, 1),
(142, 37, 1),
(142, 57, 1),
(142, 58, 1),
(142, 59, 1),
(142, 19, 1),
(142, 20, 1),
(142, 21, 1),
(142, 22, 1),
(142, 23, 1),
(142, 24, 1),
(142, 25, 1),
(142, 26, 1),
(142, 27, 1),
(142, 28, 1),
(142, 29, 1),
(142, 61, 1),
(143, 120, 2),
(143, 121, 2),
(143, 38, 2),
(143, 39, 2),
(143, 40, 2),
(143, 41, 2),
(143, 132, 2),
(143, 134, 2),
(143, 133, 2),
(143, 136, 2),
(143, 47, 2),
(143, 48, 2),
(143, 49, 2),
(143, 50, 2),
(143, 60, 2),
(143, 146, 2),
(143, 63, 2),
(143, 72, 2),
(143, 71, 2),
(143, 74, 2),
(143, 69, 2),
(143, 70, 2),
(143, 77, 2),
(143, 75, 2),
(143, 4, 2),
(143, 5, 2),
(143, 6, 2),
(143, 12, 2),
(143, 8, 2),
(143, 11, 2),
(143, 7, 2),
(143, 9, 2),
(143, 10, 2),
(143, 140, 2),
(143, 139, 2),
(143, 142, 2),
(143, 137, 2),
(143, 138, 2),
(143, 145, 2),
(143, 143, 2),
(143, 51, 2),
(143, 62, 2),
(143, 54, 2),
(143, 55, 2),
(143, 31, 2),
(143, 32, 2),
(143, 33, 2),
(143, 34, 2),
(143, 35, 2),
(143, 36, 2),
(143, 37, 2),
(143, 57, 2),
(143, 58, 2),
(143, 59, 2),
(143, 19, 2),
(143, 20, 2),
(143, 21, 2),
(143, 22, 2),
(143, 23, 2),
(143, 24, 2),
(143, 25, 2),
(143, 26, 2),
(143, 27, 2),
(143, 28, 2),
(143, 29, 2),
(143, 61, 2),
(144, 120, 1),
(144, 121, 1),
(144, 38, 1),
(144, 39, 1),
(144, 40, 1),
(144, 41, 1),
(144, 132, 1),
(144, 134, 1),
(144, 133, 1),
(144, 136, 1),
(144, 47, 1),
(144, 48, 1),
(144, 49, 1),
(144, 50, 1),
(144, 60, 1),
(144, 146, 1),
(144, 63, 1),
(144, 72, 1),
(144, 71, 1),
(144, 74, 1),
(144, 69, 1),
(144, 70, 1),
(144, 77, 1),
(144, 75, 1),
(144, 4, 2),
(144, 5, 1),
(144, 6, 1),
(144, 12, 1),
(144, 8, 1),
(144, 11, 1),
(144, 7, 1),
(144, 9, 1),
(144, 10, 1),
(144, 140, 1),
(144, 139, 1),
(144, 142, 1),
(144, 137, 1),
(144, 138, 1),
(144, 145, 1),
(144, 143, 1),
(144, 51, 1),
(144, 62, 1),
(144, 54, 1),
(144, 55, 1),
(144, 31, 1),
(144, 32, 1),
(144, 33, 1),
(144, 34, 1),
(144, 35, 1),
(144, 36, 1),
(144, 37, 1),
(144, 57, 1),
(144, 58, 1),
(144, 59, 1),
(144, 19, 1),
(144, 20, 1),
(144, 21, 1),
(144, 22, 1),
(144, 23, 1),
(144, 24, 1),
(144, 25, 1),
(144, 26, 1),
(144, 27, 1),
(144, 28, 1),
(144, 29, 1),
(144, 61, 1),
(145, 120, 2),
(145, 121, 2),
(145, 38, 2),
(145, 39, 2),
(145, 40, 2),
(145, 41, 2),
(145, 132, 2),
(145, 134, 2),
(145, 133, 2),
(145, 136, 2),
(145, 47, 2),
(145, 48, 2),
(145, 49, 2),
(145, 50, 2),
(145, 60, 2),
(145, 146, 2),
(145, 63, 2),
(145, 72, 2),
(145, 71, 2),
(145, 74, 2),
(145, 69, 2),
(145, 70, 2),
(145, 77, 2),
(145, 75, 2),
(145, 4, 3),
(145, 5, 2),
(145, 6, 2),
(145, 12, 2),
(145, 8, 2),
(145, 11, 2),
(145, 7, 2),
(145, 9, 2),
(145, 10, 2),
(145, 140, 2),
(145, 139, 2),
(145, 142, 2),
(145, 137, 2),
(145, 138, 2),
(145, 145, 2),
(145, 143, 2),
(145, 51, 2),
(145, 62, 2),
(145, 54, 2),
(145, 55, 2),
(145, 31, 2),
(145, 32, 2),
(145, 33, 2),
(145, 34, 2),
(145, 35, 2),
(145, 36, 2),
(145, 37, 2),
(145, 57, 2),
(145, 58, 2),
(145, 59, 2),
(145, 19, 2),
(145, 20, 2),
(145, 21, 2),
(145, 22, 2),
(145, 23, 2),
(145, 24, 2),
(145, 25, 2),
(145, 26, 2),
(145, 27, 2),
(145, 28, 2),
(145, 29, 2),
(145, 61, 2),
(146, 120, 3),
(146, 121, 3),
(146, 38, 3),
(146, 39, 3),
(146, 40, 3),
(146, 41, 3),
(146, 132, 3),
(146, 134, 3),
(146, 133, 3),
(146, 136, 3),
(146, 47, 3),
(146, 48, 3),
(146, 49, 3),
(146, 50, 3),
(146, 60, 3),
(146, 146, 3),
(146, 63, 3),
(146, 72, 3),
(146, 71, 3),
(146, 74, 3),
(146, 69, 3),
(146, 70, 3),
(146, 77, 3),
(146, 75, 3),
(146, 4, 4),
(146, 5, 3),
(146, 6, 3),
(146, 12, 3),
(146, 8, 3),
(146, 11, 3),
(146, 7, 3),
(146, 9, 3),
(146, 10, 3),
(146, 140, 3),
(146, 139, 3),
(146, 142, 3),
(146, 137, 3),
(146, 138, 3),
(146, 145, 3),
(146, 143, 3),
(146, 51, 3),
(146, 62, 3),
(146, 54, 3),
(146, 55, 3),
(146, 31, 3),
(146, 32, 3),
(146, 33, 3),
(146, 34, 3),
(146, 35, 3),
(146, 36, 3),
(146, 37, 3),
(146, 57, 3),
(146, 58, 3),
(146, 59, 3),
(146, 19, 3),
(146, 20, 3),
(146, 21, 3),
(146, 22, 3),
(146, 23, 3),
(146, 24, 3),
(146, 25, 3),
(146, 26, 3),
(146, 27, 3),
(146, 28, 3),
(146, 29, 3),
(146, 61, 3),
(147, 120, 4),
(147, 121, 4),
(147, 38, 4),
(147, 39, 4),
(147, 40, 4),
(147, 41, 4),
(147, 132, 4),
(147, 134, 4),
(147, 133, 4),
(147, 136, 4),
(147, 47, 4),
(147, 48, 4),
(147, 49, 4),
(147, 50, 4),
(147, 60, 4),
(147, 146, 4),
(147, 63, 4),
(147, 72, 4),
(147, 71, 4),
(147, 74, 4),
(147, 69, 4),
(147, 70, 4),
(147, 77, 4),
(147, 75, 4),
(147, 4, 5),
(147, 5, 4),
(147, 6, 4),
(147, 12, 4),
(147, 8, 4),
(147, 11, 4),
(147, 7, 4),
(147, 9, 4),
(147, 10, 4),
(147, 140, 4),
(147, 139, 4),
(147, 142, 4),
(147, 137, 4),
(147, 138, 4),
(147, 145, 4),
(147, 143, 4),
(147, 51, 4),
(147, 62, 4),
(147, 54, 4),
(147, 55, 4),
(147, 31, 4),
(147, 32, 4),
(147, 33, 4),
(147, 34, 4),
(147, 35, 4),
(147, 36, 4),
(147, 37, 4),
(147, 57, 4),
(147, 58, 4),
(147, 59, 4),
(147, 19, 4),
(147, 20, 4),
(147, 21, 4),
(147, 22, 4),
(147, 23, 4),
(147, 24, 4),
(147, 25, 4),
(147, 26, 4),
(147, 27, 4),
(147, 28, 4),
(147, 29, 4),
(147, 61, 4),
(148, 120, 1),
(148, 121, 1),
(148, 38, 1),
(148, 39, 1),
(148, 40, 1),
(148, 41, 1),
(148, 132, 1),
(148, 134, 1),
(148, 133, 1),
(148, 136, 1),
(148, 47, 1),
(148, 48, 1),
(148, 49, 1),
(148, 50, 1),
(148, 60, 1),
(148, 146, 1),
(148, 63, 1),
(148, 72, 1),
(148, 71, 1),
(148, 74, 1),
(148, 69, 1),
(148, 70, 1),
(148, 77, 1),
(148, 75, 1),
(148, 4, 1),
(148, 5, 1),
(148, 6, 1),
(148, 12, 1),
(148, 8, 1),
(148, 11, 1),
(148, 7, 1),
(148, 9, 1),
(148, 10, 1),
(148, 140, 1),
(148, 139, 1),
(148, 142, 1),
(148, 137, 1),
(148, 138, 1),
(148, 145, 1),
(148, 143, 1),
(148, 51, 1),
(148, 62, 1),
(148, 54, 1),
(148, 55, 1),
(148, 31, 1),
(148, 32, 1),
(148, 33, 1),
(148, 34, 1),
(148, 35, 1),
(148, 36, 1),
(148, 37, 1),
(148, 57, 1),
(148, 58, 1),
(148, 59, 1),
(148, 19, 1),
(148, 20, 1),
(148, 21, 1),
(148, 22, 1),
(148, 23, 1),
(148, 24, 1),
(148, 25, 1),
(148, 26, 1),
(148, 27, 1),
(148, 28, 1),
(148, 29, 1),
(148, 61, 1),
(153, 120, 1),
(153, 121, 1),
(153, 4, 2),
(153, 5, 1),
(153, 6, 1),
(153, 12, 1),
(153, 8, 1),
(153, 11, 1),
(153, 7, 1),
(153, 9, 1),
(153, 10, 1),
(153, 132, 1),
(153, 134, 1),
(153, 133, 1),
(153, 136, 1),
(153, 72, 1),
(153, 71, 1),
(153, 74, 1),
(153, 69, 1),
(153, 70, 1),
(153, 77, 1),
(153, 75, 1),
(153, 140, 1),
(153, 139, 1),
(153, 142, 1),
(153, 137, 1),
(153, 138, 1),
(153, 145, 1),
(153, 143, 1),
(153, 146, 1),
(153, 19, 1),
(153, 20, 1),
(153, 21, 1),
(153, 22, 1),
(153, 23, 1),
(153, 24, 1),
(153, 25, 1),
(153, 26, 1),
(153, 27, 1),
(153, 28, 1),
(153, 29, 1),
(153, 60, 1),
(153, 31, 1),
(153, 32, 1),
(153, 33, 1),
(153, 34, 1),
(153, 35, 1),
(153, 36, 1),
(153, 37, 1),
(153, 61, 1),
(153, 38, 1),
(153, 39, 1),
(153, 40, 1),
(153, 41, 1),
(153, 62, 1),
(153, 63, 1),
(153, 51, 1),
(153, 47, 1),
(153, 48, 1),
(153, 49, 1),
(153, 50, 1),
(153, 54, 1),
(153, 55, 1),
(153, 57, 1),
(153, 58, 1),
(153, 59, 1),
(155, 4, 1),
(156, 4, 1),
(157, 4, 1),
(158, 4, 1),
(159, 4, 1),
(132, 151, 1),
(132, 154, 1),
(132, 150, 1),
(133, 151, 1),
(133, 154, 1),
(133, 150, 1),
(134, 151, 2),
(134, 154, 2),
(134, 150, 2),
(137, 151, 1),
(137, 154, 1),
(137, 150, 1),
(138, 151, 2),
(138, 154, 2),
(138, 150, 2),
(131, 151, 1),
(131, 154, 1),
(131, 150, 1),
(142, 151, 1),
(142, 154, 1),
(142, 150, 1),
(143, 151, 2),
(143, 154, 2),
(143, 150, 2),
(144, 151, 1),
(144, 154, 1),
(144, 150, 1),
(145, 151, 2),
(145, 154, 2),
(145, 150, 2),
(146, 151, 3),
(146, 154, 3),
(146, 150, 3),
(147, 151, 4),
(147, 154, 4),
(147, 150, 4),
(141, 151, 5),
(141, 154, 5),
(141, 150, 5),
(153, 151, 1),
(153, 154, 1),
(153, 150, 1),
(148, 151, 1),
(148, 154, 1),
(148, 150, 1),
(16, 151, 1),
(16, 154, 1),
(16, 150, 1),
(18, 151, 1),
(18, 154, 1),
(18, 150, 1),
(11, 151, 1),
(11, 154, 1),
(11, 150, 1),
(12, 151, 2),
(12, 154, 2),
(12, 150, 2),
(5, 151, 1),
(5, 154, 1),
(5, 150, 1),
(6, 151, 2),
(6, 154, 2),
(6, 150, 2),
(20, 151, 1),
(20, 154, 1),
(20, 150, 1),
(17, 151, 1),
(17, 154, 1),
(17, 150, 1),
(15, 151, 1),
(15, 154, 1),
(15, 150, 1),
(13, 151, 1),
(13, 154, 1),
(13, 150, 1),
(14, 151, 2),
(14, 154, 2),
(14, 150, 2),
(8, 151, 1),
(8, 154, 1),
(8, 150, 1),
(9, 151, 2),
(9, 154, 2),
(9, 150, 2),
(10, 151, 3),
(10, 154, 3),
(10, 150, 3),
(19, 151, 1),
(19, 154, 1),
(19, 150, 1),
(125, 151, 1),
(125, 154, 1),
(125, 150, 1),
(110, 151, 1),
(110, 154, 1),
(110, 150, 1),
(111, 151, 1),
(111, 154, 1),
(111, 150, 1),
(100, 151, 1),
(100, 154, 1),
(100, 150, 1),
(101, 151, 1),
(101, 154, 1),
(101, 150, 1),
(114, 151, 1),
(114, 154, 1),
(114, 150, 1),
(115, 151, 2),
(115, 154, 2),
(115, 150, 2),
(116, 151, 3),
(116, 154, 3),
(116, 150, 3),
(127, 151, 1),
(127, 154, 1),
(127, 150, 1),
(102, 151, 1),
(102, 154, 1),
(102, 150, 1),
(120, 151, 1),
(120, 154, 1),
(120, 150, 1),
(124, 151, 1),
(124, 154, 1),
(124, 150, 1),
(123, 151, 1),
(123, 154, 1),
(123, 150, 1),
(132, 158, 1),
(132, 172, 1),
(132, 160, 1),
(132, 168, 1),
(132, 159, 1),
(132, 156, 1),
(132, 155, 1),
(132, 164, 1),
(132, 169, 1),
(132, 170, 1),
(132, 167, 1),
(132, 162, 1),
(133, 158, 1),
(133, 172, 1),
(133, 160, 1),
(133, 168, 1),
(133, 159, 1),
(133, 156, 1),
(133, 155, 1),
(133, 164, 1),
(133, 169, 1),
(133, 170, 1),
(133, 167, 1),
(133, 162, 1),
(134, 158, 2),
(134, 172, 2),
(134, 160, 2),
(134, 168, 2),
(134, 159, 2),
(134, 156, 2),
(134, 155, 2),
(134, 164, 2),
(134, 169, 2),
(134, 170, 2),
(134, 167, 2),
(134, 162, 2),
(137, 158, 1),
(137, 172, 1),
(137, 160, 1),
(137, 168, 1),
(137, 159, 1),
(137, 156, 1),
(137, 155, 1),
(137, 164, 1),
(137, 169, 1),
(137, 170, 1),
(137, 167, 1),
(137, 162, 1),
(138, 158, 2),
(138, 172, 2),
(138, 160, 2),
(138, 168, 2),
(138, 159, 2),
(138, 156, 2),
(138, 155, 2),
(138, 164, 2),
(138, 169, 2),
(138, 170, 2),
(138, 167, 2),
(138, 162, 2),
(131, 158, 1),
(131, 172, 1),
(131, 160, 1),
(131, 168, 1),
(131, 159, 1),
(131, 156, 1),
(131, 155, 1),
(131, 164, 1),
(131, 169, 1),
(131, 170, 1),
(131, 167, 1),
(131, 162, 1),
(142, 158, 1),
(142, 172, 1),
(142, 160, 1),
(142, 168, 1),
(142, 159, 1),
(142, 156, 1),
(142, 155, 1),
(142, 164, 1),
(142, 169, 1),
(142, 170, 1),
(142, 167, 1),
(142, 162, 1),
(143, 158, 2),
(143, 172, 2),
(143, 160, 2),
(143, 168, 2),
(143, 159, 2),
(143, 156, 2),
(143, 155, 2),
(143, 164, 2),
(143, 169, 2),
(143, 170, 2),
(143, 167, 2),
(143, 162, 2),
(144, 158, 1),
(144, 172, 1),
(144, 160, 1),
(144, 168, 1),
(144, 159, 1),
(144, 156, 1),
(144, 155, 1),
(144, 164, 1),
(144, 169, 1),
(144, 170, 1),
(144, 167, 1),
(144, 162, 1),
(145, 158, 2),
(145, 172, 2),
(145, 160, 2),
(145, 168, 2),
(145, 159, 2),
(145, 156, 2),
(145, 155, 2),
(145, 164, 2),
(145, 169, 2),
(145, 170, 2),
(145, 167, 2),
(145, 162, 2),
(146, 158, 3),
(146, 172, 3),
(146, 160, 3),
(146, 168, 3),
(146, 159, 3),
(146, 156, 3),
(146, 155, 3),
(146, 164, 3),
(146, 169, 3),
(146, 170, 3),
(146, 167, 3),
(146, 162, 3),
(147, 158, 4),
(147, 172, 4),
(147, 160, 4),
(147, 168, 4),
(147, 159, 4),
(147, 156, 4),
(147, 155, 4),
(147, 164, 4),
(147, 169, 4),
(147, 170, 4),
(147, 167, 4),
(147, 162, 4),
(141, 158, 5),
(141, 172, 5),
(141, 160, 5),
(141, 168, 5),
(141, 159, 5),
(141, 156, 5),
(141, 155, 5),
(141, 164, 5),
(141, 169, 5),
(141, 170, 5),
(141, 167, 5),
(141, 162, 5),
(153, 158, 1),
(153, 172, 1),
(153, 160, 1),
(153, 168, 1),
(153, 159, 1),
(153, 156, 1),
(153, 155, 1),
(153, 164, 1),
(153, 169, 1),
(153, 170, 1),
(153, 167, 1),
(153, 162, 1),
(148, 158, 1),
(148, 172, 1),
(148, 160, 1),
(148, 168, 1),
(148, 159, 1),
(148, 156, 1),
(148, 155, 1),
(148, 164, 1),
(148, 169, 1),
(148, 170, 1),
(148, 167, 1),
(148, 162, 1),
(16, 158, 1),
(16, 172, 1),
(16, 160, 1),
(16, 168, 1),
(16, 159, 1),
(16, 156, 1),
(16, 155, 1),
(16, 164, 1),
(16, 169, 1),
(16, 170, 1),
(16, 167, 1),
(16, 162, 1),
(18, 158, 1),
(18, 172, 1),
(18, 160, 1),
(18, 168, 1),
(18, 159, 1),
(18, 156, 1),
(18, 155, 1),
(18, 164, 1),
(18, 169, 1),
(18, 170, 1),
(18, 167, 1),
(18, 162, 1),
(11, 158, 1),
(11, 172, 1),
(11, 160, 1),
(11, 168, 1),
(11, 159, 1),
(11, 156, 1),
(11, 155, 1),
(11, 164, 1),
(11, 169, 1),
(11, 170, 1),
(11, 167, 1),
(11, 162, 1),
(12, 158, 2),
(12, 172, 2),
(12, 160, 2),
(12, 168, 2),
(12, 159, 2),
(12, 156, 2),
(12, 155, 2),
(12, 164, 2),
(12, 169, 2),
(12, 170, 2),
(12, 167, 2),
(12, 162, 2),
(5, 158, 1),
(5, 172, 1),
(5, 160, 1),
(5, 168, 1),
(5, 159, 1),
(5, 156, 1),
(5, 155, 1),
(5, 164, 1),
(5, 169, 1),
(5, 170, 1),
(5, 167, 1),
(5, 162, 1),
(6, 158, 2),
(6, 172, 2),
(6, 160, 2),
(6, 168, 2),
(6, 159, 2),
(6, 156, 2),
(6, 155, 2),
(6, 164, 2),
(6, 169, 2),
(6, 170, 2),
(6, 167, 2),
(6, 162, 2),
(20, 158, 1),
(20, 172, 1),
(20, 160, 1),
(20, 168, 1),
(20, 159, 1),
(20, 156, 1),
(20, 155, 1),
(20, 164, 1),
(20, 169, 1),
(20, 170, 1),
(20, 167, 1),
(20, 162, 1),
(17, 158, 1),
(17, 172, 1),
(17, 160, 1),
(17, 168, 1),
(17, 159, 1),
(17, 156, 1),
(17, 155, 1),
(17, 164, 1),
(17, 169, 1),
(17, 170, 1),
(17, 167, 1),
(17, 162, 1),
(15, 158, 1),
(15, 172, 1),
(15, 160, 1),
(15, 168, 1),
(15, 159, 1),
(15, 156, 1),
(15, 155, 1),
(15, 164, 1),
(15, 169, 1),
(15, 170, 1),
(15, 167, 1),
(15, 162, 1),
(13, 158, 1),
(13, 172, 1),
(13, 160, 1),
(13, 168, 1),
(13, 159, 1),
(13, 156, 1),
(13, 155, 1),
(13, 164, 1),
(13, 169, 1),
(13, 170, 1),
(13, 167, 1),
(13, 162, 1),
(14, 158, 2),
(14, 172, 2),
(14, 160, 2),
(14, 168, 2),
(14, 159, 2),
(14, 156, 2),
(14, 155, 2),
(14, 164, 2),
(14, 169, 2),
(14, 170, 2),
(14, 167, 2),
(14, 162, 2),
(8, 158, 1),
(8, 172, 1),
(8, 160, 1),
(8, 168, 1),
(8, 159, 1),
(8, 156, 1),
(8, 155, 1),
(8, 164, 1),
(8, 169, 1),
(8, 170, 1),
(8, 167, 1),
(8, 162, 1),
(9, 158, 2),
(9, 172, 2),
(9, 160, 2),
(9, 168, 2),
(9, 159, 2),
(9, 156, 2),
(9, 155, 2),
(9, 164, 2),
(9, 169, 2),
(9, 170, 2),
(9, 167, 2),
(9, 162, 2),
(10, 158, 3),
(10, 172, 3),
(10, 160, 3),
(10, 168, 3),
(10, 159, 3),
(10, 156, 3),
(10, 155, 3),
(10, 164, 3),
(10, 169, 3),
(10, 170, 3),
(10, 167, 3),
(10, 162, 3),
(19, 158, 1),
(19, 172, 1),
(19, 160, 1),
(19, 168, 1),
(19, 159, 1),
(19, 156, 1),
(19, 155, 1),
(19, 164, 1),
(19, 169, 1),
(19, 170, 1),
(19, 167, 1),
(19, 162, 1),
(125, 158, 1),
(125, 172, 1);
INSERT INTO `nv_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(125, 160, 1),
(125, 168, 1),
(125, 159, 1),
(125, 156, 1),
(125, 155, 1),
(125, 164, 1),
(125, 169, 1),
(125, 170, 1),
(125, 167, 1),
(125, 162, 1),
(110, 158, 1),
(110, 172, 1),
(110, 160, 1),
(110, 168, 1),
(110, 159, 1),
(110, 156, 1),
(110, 155, 1),
(110, 164, 1),
(110, 169, 1),
(110, 170, 1),
(110, 167, 1),
(110, 162, 1),
(111, 158, 1),
(111, 172, 1),
(111, 160, 1),
(111, 168, 1),
(111, 159, 1),
(111, 156, 1),
(111, 155, 1),
(111, 164, 1),
(111, 169, 1),
(111, 170, 1),
(111, 167, 1),
(111, 162, 1),
(100, 158, 1),
(100, 172, 1),
(100, 160, 1),
(100, 168, 1),
(100, 159, 1),
(100, 156, 1),
(100, 155, 1),
(100, 164, 1),
(100, 169, 1),
(100, 170, 1),
(100, 167, 1),
(100, 162, 1),
(101, 158, 1),
(101, 172, 1),
(101, 160, 1),
(101, 168, 1),
(101, 159, 1),
(101, 156, 1),
(101, 155, 1),
(101, 164, 1),
(101, 169, 1),
(101, 170, 1),
(101, 167, 1),
(101, 162, 1),
(114, 158, 1),
(114, 172, 1),
(114, 160, 1),
(114, 168, 1),
(114, 159, 1),
(114, 156, 1),
(114, 155, 1),
(114, 164, 1),
(114, 169, 1),
(114, 170, 1),
(114, 167, 1),
(114, 162, 1),
(115, 158, 2),
(115, 172, 2),
(115, 160, 2),
(115, 168, 2),
(115, 159, 2),
(115, 156, 2),
(115, 155, 2),
(115, 164, 2),
(115, 169, 2),
(115, 170, 2),
(115, 167, 2),
(115, 162, 2),
(116, 158, 3),
(116, 172, 3),
(116, 160, 3),
(116, 168, 3),
(116, 159, 3),
(116, 156, 3),
(116, 155, 3),
(116, 164, 3),
(116, 169, 3),
(116, 170, 3),
(116, 167, 3),
(116, 162, 3),
(127, 158, 1),
(127, 172, 1),
(127, 160, 1),
(127, 168, 1),
(127, 159, 1),
(127, 156, 1),
(127, 155, 1),
(127, 164, 1),
(127, 169, 1),
(127, 170, 1),
(127, 167, 1),
(127, 162, 1),
(102, 158, 1),
(102, 172, 1),
(102, 160, 1),
(102, 168, 1),
(102, 159, 1),
(102, 156, 1),
(102, 155, 1),
(102, 164, 1),
(102, 169, 1),
(102, 170, 1),
(102, 167, 1),
(102, 162, 1),
(120, 158, 1),
(120, 172, 1),
(120, 160, 1),
(120, 168, 1),
(120, 159, 1),
(120, 156, 1),
(120, 155, 1),
(120, 164, 1),
(120, 169, 1),
(120, 170, 1),
(120, 167, 1),
(120, 162, 1),
(124, 158, 1),
(124, 172, 1),
(124, 160, 1),
(124, 168, 1),
(124, 159, 1),
(124, 156, 1),
(124, 155, 1),
(124, 164, 1),
(124, 169, 1),
(124, 170, 1),
(124, 167, 1),
(124, 162, 1),
(123, 158, 1),
(123, 172, 1),
(123, 160, 1),
(123, 168, 1),
(123, 159, 1),
(123, 156, 1),
(123, 155, 1),
(123, 164, 1),
(123, 169, 1),
(123, 170, 1),
(123, 167, 1),
(123, 162, 1),
(161, 4, 1),
(162, 120, 2),
(162, 121, 2),
(162, 4, 1),
(162, 5, 2),
(162, 6, 2),
(162, 12, 2),
(162, 8, 2),
(162, 11, 2),
(162, 7, 2),
(162, 9, 2),
(162, 10, 2),
(162, 132, 2),
(162, 134, 2),
(162, 133, 2),
(162, 136, 2),
(162, 72, 2),
(162, 71, 2),
(162, 74, 2),
(162, 69, 2),
(162, 70, 2),
(162, 77, 2),
(162, 75, 2),
(162, 140, 2),
(162, 139, 2),
(162, 142, 2),
(162, 137, 2),
(162, 138, 2),
(162, 145, 2),
(162, 143, 2),
(162, 146, 2),
(162, 19, 2),
(162, 20, 2),
(162, 21, 2),
(162, 22, 2),
(162, 23, 2),
(162, 24, 2),
(162, 25, 2),
(162, 26, 2),
(162, 27, 2),
(162, 28, 2),
(162, 29, 2),
(162, 60, 1),
(162, 31, 2),
(162, 32, 2),
(162, 33, 2),
(162, 34, 2),
(162, 35, 2),
(162, 36, 2),
(162, 37, 2),
(162, 61, 2),
(162, 38, 2),
(162, 39, 2),
(162, 40, 2),
(162, 41, 2),
(162, 62, 2),
(162, 63, 2),
(162, 51, 2),
(162, 47, 2),
(162, 48, 2),
(162, 49, 2),
(162, 50, 2),
(162, 54, 2),
(162, 55, 2),
(162, 57, 2),
(162, 58, 2),
(162, 59, 2),
(162, 158, 2),
(162, 172, 2),
(162, 160, 2),
(162, 168, 2),
(162, 159, 2),
(162, 156, 2),
(162, 155, 2),
(162, 164, 2),
(162, 169, 2),
(162, 170, 2),
(162, 167, 2),
(162, 162, 2),
(163, 4, 1),
(163, 51, 1),
(132, 173, 1),
(132, 174, 1),
(133, 173, 1),
(133, 174, 1),
(134, 173, 2),
(134, 174, 2),
(137, 173, 1),
(137, 174, 1),
(138, 173, 2),
(138, 174, 2),
(131, 173, 1),
(131, 174, 1),
(162, 173, 1),
(162, 174, 1),
(142, 173, 1),
(142, 174, 1),
(143, 173, 2),
(143, 174, 2),
(144, 173, 1),
(144, 174, 1),
(145, 173, 2),
(145, 174, 2),
(146, 173, 3),
(146, 174, 3),
(147, 173, 4),
(147, 174, 4),
(141, 173, 5),
(141, 174, 5),
(153, 173, 1),
(153, 174, 1),
(148, 173, 1),
(148, 174, 1),
(16, 173, 1),
(16, 174, 1),
(18, 173, 1),
(18, 174, 1),
(11, 173, 1),
(11, 174, 1),
(12, 173, 2),
(12, 174, 2),
(5, 173, 1),
(5, 174, 1),
(6, 173, 2),
(6, 174, 2),
(20, 173, 1),
(20, 174, 1),
(17, 173, 1),
(17, 174, 1),
(15, 173, 1),
(15, 174, 1),
(13, 173, 1),
(13, 174, 1),
(14, 173, 2),
(14, 174, 2),
(8, 173, 1),
(8, 174, 1),
(9, 173, 2),
(9, 174, 2),
(10, 173, 3),
(10, 174, 3),
(19, 173, 1),
(19, 174, 1),
(125, 173, 1),
(125, 174, 1),
(110, 173, 1),
(110, 174, 1),
(111, 173, 1),
(111, 174, 1),
(100, 173, 1),
(100, 174, 1),
(101, 173, 1),
(101, 174, 1),
(114, 173, 1),
(114, 174, 1),
(115, 173, 2),
(115, 174, 2),
(116, 173, 3),
(116, 174, 3),
(127, 173, 1),
(127, 174, 1),
(102, 173, 1),
(102, 174, 1),
(120, 173, 1),
(120, 174, 1),
(124, 173, 1),
(124, 174, 1),
(123, 173, 1),
(123, 174, 1),
(164, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_comment`
--

CREATE TABLE `nv_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `attach` varchar(255) NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_name` varchar(100) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(39) NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_contact_department`
--

CREATE TABLE `nv_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `others` text NOT NULL,
  `cats` text NOT NULL,
  `admins` text NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_contact_department`
--

INSERT INTO `nv_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Ban biên tập Cổng thông tin điện tử UBND thành phố', 'ban-bien-tap', '', '&#40;028&#41; 38.000.000&#91;+842838000000&#93;', '&#40;028&#41; 38.000.001', 'bbt@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '[]', 'Gửi góp ý|Gửi câu hỏi', '1/1/1/0;5/1/1/0', 1, 1, 1),
(3, 'Webmaster', 'webmaster', '', '&#40;024&#41; 38.000.000&#91;02438000000&#93;', '&#40;024&#41; 38.000.001', 'webmaster@mysite.com', '', '', '[]', 'Liên hệ với webmaster', '1/1/1/0;5/1/1/0', 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_contact_reply`
--

CREATE TABLE `nv_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reply_content` text DEFAULT NULL,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_contact_send`
--

CREATE TABLE `nv_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_name` varchar(100) NOT NULL,
  `sender_address` varchar(250) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_phone` varchar(20) DEFAULT '',
  `sender_ip` varchar(39) NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_contact_supporter`
--

CREATE TABLE `nv_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `others` text NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_course`
--

CREATE TABLE `nv_vi_course` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_course`
--

INSERT INTO `nv_vi_course` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Tennis Cơ Bản', 'tennis-co-ban', 'tennisvietson2-519x752.png', '', 0, 'ĐỘNG TÁC KỸ THUẬT CƠ BẢN', '.', '', 1, '4', '', 1, 1, 1602077721, 1604418949, 1, 178, 0),
(2, 'Tennis nâng cao', 'tennis-nang-cao', 'tennisvietson2.png', '', 0, 'BÀI TẬP KỸ THUẬT - CHIẾN THUẬT NÂNG CAO', '.', '', 1, '4', '', 2, 1, 1602077789, 1602077789, 1, 107, 0),
(3, 'Tennis Trẻ em', 'tennis-tre-em', 'tennis-viet-son-tre-em.jpg', '', 0, 'Cho trẻ em làm quen với tennis', '.', '', 1, '4', '', 3, 1, 1602077840, 1604418696, 1, 101, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_course_config`
--

CREATE TABLE `nv_vi_course_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_course_config`
--

INSERT INTO `nv_vi_course_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_co_cau_to_chuc_admins`
--

CREATE TABLE `nv_vi_co_cau_to_chuc_admins` (
  `userid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `organid` int(11) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `status_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_co_cau_to_chuc_config`
--

CREATE TABLE `nv_vi_co_cau_to_chuc_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_co_cau_to_chuc_config`
--

INSERT INTO `nv_vi_co_cau_to_chuc_config` (`config_name`, `config_value`) VALUES
('per_page', '10'),
('organ_view_type', '0'),
('organ_view_type_main', '0'),
('thumb_width', '80'),
('thumb_height', '100'),
('email_require', '0'),
('phone_require', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_co_cau_to_chuc_person`
--

CREATE TABLE `nv_vi_co_cau_to_chuc_person` (
  `personid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_ext` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` int(11) NOT NULL,
  `place_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `organid` int(11) NOT NULL,
  `weight` int(8) NOT NULL DEFAULT 0,
  `active` tinyint(2) NOT NULL DEFAULT 0,
  `dayinto` int(11) NOT NULL DEFAULT 0,
  `dayparty` int(11) NOT NULL DEFAULT 0,
  `marital_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `political` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_co_cau_to_chuc_person`
--

INSERT INTO `nv_vi_co_cau_to_chuc_person` (`personid`, `name`, `photo`, `phone_ext`, `mobile`, `email`, `position`, `position_other`, `address`, `phone`, `birthday`, `place_birth`, `description`, `addtime`, `edittime`, `organid`, `weight`, `active`, `dayinto`, `dayparty`, `marital_status`, `professional`, `political`) VALUES
(16, 'Phạm Văn M', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Chủ tịch', '', '', '', 0, '', '', 1506649196, 1506649196, 24, 1, 1, 0, 0, '', '', ''),
(17, 'Nguyễn Thị Minh P', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Phó chủ tịch', '', '', '', 0, '', '', 1506649233, 1506649233, 24, 2, 1, 0, 0, '', '', ''),
(15, 'Nguyễn Xuân B', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Phó Chủ tịch UBND', '', '', '', 0, '', '', 1506649132, 1506649132, 23, 2, 1, 0, 0, '', '', ''),
(14, 'Lê Khắc N', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Chủ tịch UBND', '', '', '', 0, '', '', 1506649065, 1506649065, 23, 1, 1, 0, 0, '', '', ''),
(13, 'Nguyễn Đình B', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Phó Chủ tịch Hội đồng nhân dân', '', '', '', 0, '', '', 1506648984, 1506648984, 22, 2, 1, 0, 0, '', '', ''),
(12, 'Lê Hoàng L', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Chủ tịch Hội đồng nhân dân', '', '', '', 0, '', '', 1506648915, 1506648915, 22, 1, 1, 0, 0, '', '', ''),
(11, 'Nguyễn Thị N', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Phó Bí thư', '', '', '', 0, '', '', 1506648738, 1506648738, 15, 2, 1, 0, 0, '', '', ''),
(10, 'Lê Văn T', '', '', '&#40;028&#41; 38.000', 'bbt@mysite.com', 'Bí thư', '', '', '', 0, '', '', 1506648686, 1506648924, 15, 1, 1, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_co_cau_to_chuc_rows`
--

CREATE TABLE `nv_vi_co_cau_to_chuc_rows` (
  `organid` mediumint(11) UNSIGNED NOT NULL,
  `parentid` mediumint(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `orders` int(8) NOT NULL DEFAULT 0,
  `numsub` int(8) NOT NULL DEFAULT 0,
  `suborgan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lev` int(8) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_ext` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numperson` int(8) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_co_cau_to_chuc_rows`
--

INSERT INTO `nv_vi_co_cau_to_chuc_rows` (`organid`, `parentid`, `title`, `alias`, `image`, `thumbnail`, `weight`, `orders`, `numsub`, `suborgan`, `lev`, `active`, `add_time`, `edit_time`, `address`, `email`, `phone`, `phone_ext`, `fax`, `website`, `numperson`, `description`, `view`) VALUES
(21, 15, 'Ban Nội chính', 'Ban-Noi-chinh', '', '', 6, 7, 0, '', 1, 1, 1506648421, 1506648421, '', '', '', '', '', '', 0, '', 1),
(22, 0, 'Hội đồng nhân dân', 'Hoi-dong-nhan-dan', '', '', 4, 10, 0, '', 0, 1, 1506648501, 1506649424, '', '', '', '', '', '', 2, '', 1),
(16, 15, 'Văn phòng', 'Van-phong', '', '', 1, 2, 0, '', 1, 1, 1506648342, 1506648342, '', '', '', '', '', '', 0, '', 1),
(18, 15, 'Ban Tuyên giáo', 'Ban-Tuyen-giao', '', '', 3, 4, 0, '', 1, 1, 1506648375, 1506648375, '', '', '', '', '', '', 0, '', 1),
(17, 15, 'Ban tổ chức', 'Ban-to-chuc', '', '', 2, 3, 0, '', 1, 1, 1506648357, 1506648357, '', '', '', '', '', '', 0, '', 1),
(20, 15, 'Ủy ban Kiểm tra', 'Uy-ban-Kiem-tra', '', '', 5, 6, 0, '', 1, 1, 1506648405, 1506648405, '', '', '', '', '', '', 0, '', 1),
(19, 15, 'Ban Dân vận', 'Ban-Dan-van', '', '', 4, 5, 0, '', 1, 1, 1506648385, 1506648385, '', '', '', '', '', '', 0, '', 1),
(15, 0, 'Thành ủy', 'Thanh-uy', '', '', 1, 1, 6, '16,17,18,19,20,21', 0, 1, 1506648301, 1506648301, '', '', '', '', '', '', 2, '', 1),
(23, 0, 'Ủy ban nhân dân', 'Uy-ban-nhan-dan', '', '', 2, 8, 0, '', 0, 1, 1506648516, 1506648516, '', '', '', '', '', '', 2, '', 1),
(24, 0, 'Ủy ban Mặt trận tổ quốc', 'Uy-ban-Mat-tran-to-quoc', '', '', 3, 9, 0, '', 0, 1, 1506648546, 1506648546, '', '', '', '', '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_faq`
--

CREATE TABLE `nv_vi_faq` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_faq`
--

INSERT INTO `nv_vi_faq` (`id`, `catid`, `title`, `alias`, `question`, `answer`, `weight`, `status`, `addtime`) VALUES
(1, 1, 'Không cấp lại bản chính văn bằng, chứng chỉ', 'Khong-cap-lai-ban-chinh-van-bang-chung-chi', 'Ông Nguyễn Ngọc Khương (Hải Dương) là học sinh trường THPT Nguyễn Bỉnh Khiêm niên học 2001-2004. Ông Khương bị mất bằng tốt nghiệp THPT và muốn xin cấp lại. Vậy, thủ tục cấp lại bằng tốt nghiệp như thế nào? Ông Khương hiện đi làm xa thì có thể nhờ chị gái làm thủ tục không, nếu được thì cần những giấy tờ gì?', '<p><em>Về vấn đề này, Bộ Giáo dục và Đào tạo trả lời như sau:</em></p><p>Khoản 3 Điều 2 Quy chế văn bằng, chứng chỉ của hệ thống giáo dục quốc dân ban hành kèm theo Quyết định số 33/2007/QĐ-BGDĐT ngày 20/6/2007 của Bộ Giáo dục và Đào tạo quy định bản chính văn bằng, chứng chỉ chỉ cấp một lần, không cấp lại.</p><p>Người bị mất bản chính văn bằng, chứng chỉ chỉ được cấp lại bản sao văn bằng, chứng chỉ từ sổ gốc.</p><p>Người yêu cầu cấp bản sao văn bằng, chứng chỉ từ sổ gốc có thể trực tiếp yêu cầu hoặc gửi yêu cầu của mình đến cơ quan có thẩm quyền cấp bản sao văn bằng, chứng chỉ từ sổ gốc qua bưu điện. Không hạn chế số lượng bản sao yêu cầu được cấp.</p>', 1, 1, 1506574376),
(2, 0, 'Nhiều hộ sống cùng một địa chỉ, tách hộ khẩu thế nào?', 'Nhieu-ho-song-cung-mot-dia-chi-tach-ho-khau-the-nao', 'Gia đình bà Lâm Tú Anh (Hà Nội) có 3 hộ sống chung. Bà hỏi, gia đình bà có thể tách riêng mỗi hộ 1 sổ hộ khẩu được không? Nếu được thì có quy định về số lượng sổ hộ khẩu trong cùng một chỗ ở hợp pháp không?', '<p><em>Về vấn đề này, Bộ Công an &nbsp;trả lời như sau:</em></p><p>Điều 27&nbsp;<a href=\"http://vanban.chinhphu.vn/portal/page/portal/chinhphu/hethongvanban?class_id=1&amp;_page=1&amp;mode=detail&amp;document_id=29515\">Luật Cư trú</a>&nbsp;quy định về trường hợp có cùng một chỗ ở hợp pháp được tách sổ hộ khẩu bao gồm: Người có năng lực hành vi dân sự đầy đủ và có nhu cầu tách sổ hộ khẩu; người ở chung một chỗ ở hợp pháp nhưng không có quan hệ gia đình là ông, bà, cha, mẹ, vợ, chồng, con và anh, chị, em ruột, cháu ruột nếu có đủ điều kiện quy định tại Điều 19, Điều 20 Luật Cư trú và được chủ hộ đồng ý cho nhập vào sổ hộ khẩu gia đình, sổ hộ khẩu cá nhân, khi người này muốn tách sổ hộ khẩu phải được chủ hộ đồng ý bằng văn bản.</p><p>Thủ tục tách sổ hộ khẩu bao gồm:</p><p>- Sổ hộ khẩu.</p><p>- Phiếu báo thay đổi hộ khẩu, nhân khẩu.</p><p>- Ý kiến đồng ý của chủ hộ nếu thuộc trường hợp quy định tại Điểm b, Khoản 1 Điều 27 Luật Cư trú là: Người ở chung một chỗ ở hợp pháp nhưng không có quan hệ gia đình là ông, bà, cha, mẹ, vợ, chồng, con và anh, chị, em ruột, cháu ruột nếu có đủ điều kiện quy định tại Điều 19, Điều 20 Luật Cư trú và được chủ hộ đồng ý cho nhập vào sổ hộ khẩu gia đình, sổ hộ khẩu cá nhân, khi người này muốn tách sổ hộ khẩu phải được chủ hộ đồng ý bằng văn bản.</p><p>Công dân được tách sổ hộ khẩu khi có đầy đủ điều kiện, thủ tục theo quy định của Luật Cư trú và các văn bản hướng dẫn thi hành. Nếu còn vấn đề gì vướng mắc đề nghị bà Lâm Tú Anh đến cơ quan Công an nơi đăng ký cư trú để được hướng dẫn cụ thể.</p>', 1, 1, 1506574492),
(3, 0, 'Điều kiện cấp chứng chỉ năng lực xây dựng làm khó DN nhỏ?', 'Dieu-kien-cap-chung-chi-nang-luc-xay-dung-lam-kho-DN-nho', 'Nếu đăng ký cấp chứng chỉ năng lực hoạt động xây dựng hạng III, DN cần tới tối thiểu 3 người chủ trì và 5 người trong bộ máy. Như vậy, để được cấp chứng chỉ năng lực cấp III với 3 chuyên ngành thì DN cần đến 24 người và phải trả lương, đóng BHXH cho 24 nhân sự, điều này quá khó khăn đối với DN nhỏ.', '<p><em>Về vấn đề này, Bộ Xây dựng có&nbsp;<a href=\"http://baodientu.chinhphu.vn/Uploaded/lethithuyan/2017_09_26/tl_savico_VQRY.PDF\">ý kiến</a>&nbsp;như sau:</em></p><p>Công trình xây dựng là loại sản phẩm hàng hóa đặc thù được hình thành trong tương lai, chất lượng và an toàn của công trình (liên quan đến an toàn cộng đồng) phụ thuộc chủ yếu vào năng lực của cá nhân, tổ chức tham gia vào các hoạt động xây dựng như lập quy hoạch xây dựng, khảo sát, thiết kế, thi công,… để tạo ra công trình. Do đó, năng lực của các tổ chức, cá nhân tham gia các hoạt động xây dựng được pháp luật quy định và quản lý chặt chẽ.</p><p>Theo quy định của pháp luật về xây dựng hiện hành, năng lực của tổ chức được đánh giá trên cơ sở xem xét một cách tổng thể các tiêu chí về nhân sự, kinh nghiệm thực hiện công việc, tài chính, quy trình quản lý chất lượng và khả năng huy động máy móc thiết bị.</p><p>Đối với các doanh nghiệp nhỏ hoặc mới thành lập hoàn toàn có thể đề nghị cấp chứng chỉ năng lực hoạt động xây dựng cấp III vì Nghị định số 59/2015/NĐ-CP ngày 18/6/2015 của Chính phủ về quản lý dự án đầu tư xây dựng chỉ yêu cầu tối thiểu về nhân sự của tổ chức, không yêu cầu về kinh nghiệm thực hiện công việc, tài chính,…</p><p>Trường hợp tổ chức chưa đủ điều kiện cấp chứng chỉ năng lực (kể cả hạng III) thì theo quy định tại Khoản 2, Điều 10 Thông tư số 17/2016/TT-BXD ngày 30/6/2016 của Bộ Xây dựng đã quy định tổ chức này được tham gia các hoạt động xây dựng đối với dự án chỉ yêu cầu lập báo cáo kinh tế - kỹ thuật đầu tư xây dựng công trình quy mô cấp IV; dự án sửa chữa, cải tạo, bảo trì công trình quy mô cấp IV.</p>', 2, 1, 1506574656),
(4, 0, 'Đóng trùng BHXH giữa hai công ty, giải quyết thế nào?', 'Dong-trung-BHXH-giua-hai-cong-ty-giai-quyet-the-nao', 'Công ty của bà Phạm Thị Huệ (Hà Nội) có trường hợp người lao động làm việc tại 1 công ty khác đến tháng 9/2010 và chốt sổ BHXH vào tháng này. Tháng 10/2010, người lao động này chuyển sang công ty của bà Huệ, nhưng kế toán khai đóng BHXH từ tháng 9/2010.<br /><br />Hiện công ty của bà Huệ đang làm thủ tục cấp lại sổ BHXH do bị mất, trong quá trình cấp lại sổ BHXH, cơ quan BHXH báo trường hợp của người lao động này bị trùng 1 tháng đóng BHXH giữa 2 công ty nên phải làm thủ tục thoái trùng.<br /><br />Bà Huệ hỏi, vậy công ty của bà cần chuẩn bị giấy tờ gì để giải quyết và làm thủ tục cấp lại sổ BHXH cho người lao động trên?', '<p><em>Về vấn đề này, BHXH TP. Hà Nội trả lời như sau:</em></p><p>Tại Điều 2&nbsp;Quyết định số 1111/QĐ-BHXH có quy định,<em>&nbsp;</em>“Hoàn trả: Là việc cơ quan BHXH chuyển trả lại số tiền được xác định là không phải tiền đóng hoặc đóng thừa, đóng trùng BHXH, BHYT, BHTN cho cơ quan, đơn vị, cá nhân đã nộp cho cơ quan BHXH…”.</p><p>Như vậy, theo quy định trên, khi người lao động bị đóng trùng BHXH thì cơ quan BHXH có nghĩa vụ hoàn trả lại số tiền đã đóng trùng đó.</p><p>Ngoài ra, tại Khoản 2, Điều 63 Quyết định số 1111/QĐ-BHXH quy định: “Một người có từ 2 sổ BHXH trở lên ghi thời gian đóng BHXH trùng nhau thì cơ quan BHXH hướng dẫn người lao động lựa chọn 1 sổ BHXH để tiếp tục ghi quá trình đóng BHXH, BHTN hoặc giải quyết các chế độ BHXH, BHTN. Các sổ BHXH còn lại thu hồi và thực hiện hoàn trả cho đơn vị, người lao động theo quy định tại Điểm 3.3, Khoản 3, Điều 48.</p><p>Trường hợp sổ BHXH bị thu hồi mà đơn vị đề nghị cấp sổ BHXH đã giải thể thì thực hiện giải quyết chế độ trợ cấp một lần cho người lao động. Khi thu hồi sổ BHXH, đồng thời phải thu hồi các khoản trợ cấp BHXH đã chi trả trước đó (nếu có)”.</p><p>Với thủ tục thoái thu gồm: Công văn của đơn vị; danh sách lao động tham gia BHXH, BHYT, BHTN (D02-TS); sổ BHXH.</p><p>Sau đó, công ty cũ của người lao động sẽ có trách nhiệm&nbsp;làm thoái thu đồng thời chốt sổ BHXH.</p>', 3, 1, 1506574809),
(5, 2, 'Hưởng quyền lợi BHYT theo đối tượng tham gia', 'Huong-quyen-loi-BHYT-theo-doi-tuong-tham-gia', 'Bố đẻ của bà Nguyễn Phương muốn tán sỏi thận nội soi bằng laser tại Bệnh viện Bình Dân, nhưng bố bà đăng ký khám chữa bệnh BHYT tại Bệnh viện Thống Nhất. Bà Phương hỏi, bố bà có được BHYT chi trả không? Việc chuyển viên trong trường hợp này có đúng tuyến không?', '<p><em>Về vấn đề này, BHXH &nbsp;trả lời như sau:</em></p><p>Trường hợp bố của bà được Bệnh viện Thống Nhất chuyển tuyến đến bệnh viện Bình Dân để tán sỏi qua nội soi thì sẽ được hưởng 100% chi phí khám chữa bệnh đúng tuyến nhân mức quyền lợi được hưởng (80%, 95%, 100% tùy theo đối tượng tham gia BHYT). Các chi phí dịch vụ, chi phí ngoài quy định, chi phí đồng chi trả bố của bà phải tự thanh toán với cơ sở khám chữa bệnh.</p>', 1, 1, 1506574893),
(6, 2, 'Tự chuyển viện để phẫu thuật, hưởng BHYT thế nào?', 'Tu-chuyen-vien-de-phau-thuat-huong-BHYT-the-nao', 'Bà nội của ông Hữu Trọng (Nghệ An) có thẻ BHYT đối tượng người có công với cách mạng. Bà của ông đã đi khám tại bệnh viện tuyến tỉnh, sau đó đến bệnh viện tại TP. Hà Nội để khám lại. Hiện bà của ông muốn được phẫu thuật ở bệnh viện tại TP. Hà Nội.<br />Gia đình ông Trọng đã xin giấy chuyển viện của bệnh viện tuyến tỉnh nhưng không được chấp thuận, trường hợp muốn có giấy chuyển viện thì gia đình phải chịu phí 3 triệu đồng.<br /><br />Ông Trọng hỏi, bệnh viện tuyến tỉnh thực hiện như vậy có đúng không? Bà của ông phẫu thuật tại bệnh viện ở TP. Hà Nội mà không có giấy chuyển tuyến thì có được hưởng 100% BHYT không?', '<p><em>Về vấn đề này, BHXH Việt Nam trả lời như sau:</em></p><p>Khi vượt quá khả năng chuyên môn, cơ sở khám, chữa bệnh có trách nhiệm phải chuyển người bệnh lên cơ sở tuyến trên để được khám và điều trị.</p><p>Việc chuyển tuyến thuộc thẩm quyền và trách nhiệm của cơ sở khám, chữa bệnh và người bệnh không phải chi trả bất cứ chi phí nào. Đối với bệnh viện thu phí khi cấp giấy chuyển tuyến, đề nghị ông phản ánh với Sở Y tế để được giải quyết.</p><p>Để được hưởng đầy đủ quyền lợi BHYT khi điều trị tại Hà Nội, người bệnh cần xuất trình Giấy chuyển tuyến của cơ sở khám, chữa bệnh tuyến dưới chuyển đến.</p><p>Trường hợp bà của ông tự đi mổ tại Hà Nội không có giấy chuyển tuyến thì chỉ được hưởng 60% chi phí điều trị nội trú tại cơ sở khám, chữa bệnh tuyến tỉnh và 40% chi phí điều trị nội trú tại cơ sở khám, chữa bệnh tuyến trung ương.</p>', 2, 1, 1506575035);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_faq_categories`
--

CREATE TABLE `nv_vi_faq_categories` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_faq_categories`
--

INSERT INTO `nv_vi_faq_categories` (`id`, `parentid`, `title`, `alias`, `description`, `groups_view`, `weight`, `status`, `keywords`) VALUES
(1, 0, 'Giáo dục và đào tạo', 'Giao-duc-va-dao-tao', '', '6', 1, 1, 'văn bằng,chứng chỉ,học sinh,nguyễn bỉnh khiêm,tốt nghiệp,thủ tục,như thế,đi làm,có thể,giấy tờ,vấn đề,giáo dục,đào tạo,trả lời,quy chế,hệ thống,quốc dân,ban hành,quyết định,quy định,bản sao'),
(2, 0, 'Dân sinh', 'Dan-sinh', '', '6', 2, 1, 'quyền lợi,tham gia,bình dân,đăng ký,thống nhất,trường hợp,vấn đề,chi phí,tùy theo,quy định,thanh toán,cơ sở,phẫu thuật,thế nào,của ông,cách mạng,sau đó,hà nội,chấp thuận,gia đình,thực hiện'),
(3, 0, 'Kinh Tế', 'Kinh-Te', '', '6', 3, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_faq_config`
--

CREATE TABLE `nv_vi_faq_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_faq_config`
--

INSERT INTO `nv_vi_faq_config` (`config_name`, `config_value`) VALUES
('type_main', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_faq_tmp`
--

CREATE TABLE `nv_vi_faq_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `question` text NOT NULL,
  `answer` mediumtext NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_freecontent_blocks`
--

CREATE TABLE `nv_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_freecontent_blocks`
--

INSERT INTO `nv_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Trung tâm Việt Sơn', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_freecontent_rows`
--

CREATE TABLE `nv_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_freecontent_rows`
--

INSERT INTO `nv_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(4, 1, 'TIÊN PHONG NGHIÊN CỨU', 'Trung tâm nghiên cứu phương pháp giảng dạy tiên tiến, giúp học viên nắm vững kỹ thuật đồng thời giúp học viên đạt sự chuyên nghiệp trong giới Tennis', '', '', 'image-about2.png', 1601989606, 0, 1),
(3, 1, 'KINH NGHIỆM 30 NĂM', 'Chúng tôi đam mê và cống hiến hết mình để trở thành một doanh nghiệp nhân văn, giữ vững cam kết chất lượng giảng dạy, xây dựng niềm tin cho mọi khách hàng về trung tâm tại Việt Nam.', '', '', 'image-about1.png', 1604664254, 0, 1),
(5, 1, 'ĐỘI NGŨ CHUYÊN GIA HÀNG ĐẦU', 'Việt Sơn với đội ngũ chuyên gia hàng đầu trong ngành tennis giúp học viên chuyên nghiệp hơn trong các trân đấu... nếu khách hàng không hài lòng sẽ được đền bù gấp 10 lần. Trung tâm tennis Viết Sơn huấn luyện học viên tại các quận 1.2.3.4.5.6.7.8.9.10. 11.12,quận Bình Thạnh, quận Tân Binh, quận Thủ Đức. và Bình Dương', '', '', 'image-about33.png', 1604664424, 0, 1),
(6, 1, 'HỢP TÁC QUỐC TẾ', 'Việt Sơn luôn chăm sóc và hỗ trợ khách hàng như chính người thân của mình. Chúng tôi nói đúng sự thật, lắng nghe chân thành, tư vấn dựa trên sự thấu hiểu và nhu cầu thiết thực của chính quý khách hàng.', '', '', 'image-about4.png', 1601989804, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_admins`
--

CREATE TABLE `nv_vi_laws_admins` (
  `userid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `subjectid` smallint(4) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_area`
--

CREATE TABLE `nv_vi_laws_area` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) NOT NULL,
  `title` varchar(249) NOT NULL,
  `introduction` mediumtext NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_area`
--

INSERT INTO `nv_vi_laws_area` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `addtime`, `weight`) VALUES
(1, 0, 'Van-ban-chi-dao-dieu-hanh', 'Văn bản chỉ đạo điều hành', '', '', 1502359548, 1),
(2, 0, 'Van-ban-phap-quy', 'Văn bản pháp quy', '', '', 1502359553, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_cat`
--

CREATE TABLE `nv_vi_laws_cat` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) NOT NULL,
  `title` varchar(249) NOT NULL,
  `introduction` mediumtext NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_cat`
--

INSERT INTO `nv_vi_laws_cat` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `newday`, `addtime`, `weight`) VALUES
(1, 0, 'Cong-van', 'Công văn', '', '', 5, 1502359512, 1),
(2, 0, 'Van-ban', 'Văn bản', '', '', 5, 1502359523, 2),
(3, 0, 'Thong-tu', 'Thông tư', '', '', 5, 1502359531, 3),
(4, 0, 'Nghi-dinh', 'Nghị định', '', '', 5, 1502359542, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_config`
--

CREATE TABLE `nv_vi_laws_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_config`
--

INSERT INTO `nv_vi_laws_config` (`config_name`, `config_value`) VALUES
('nummain', '50'),
('numsub', '50'),
('typeview', '0'),
('down_in_home', '1'),
('detail_other', 'a:1:{i:0;s:3:\"cat\";}'),
('detail_hide_empty_field', '1'),
('detail_show_link_cat', '1'),
('detail_show_link_area', '1'),
('detail_show_link_subject', '1'),
('detail_show_link_signer', '1'),
('detail_pdf_quick_view', '1'),
('other_numlinks', '5'),
('title_show_type', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_examine`
--

CREATE TABLE `nv_vi_laws_examine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_row`
--

CREATE TABLE `nv_vi_laws_row` (
  `id` int(10) NOT NULL,
  `replacement` varchar(255) NOT NULL DEFAULT '',
  `relatement` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `cid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `approval` tinyint(1) DEFAULT NULL,
  `sgid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` text NOT NULL,
  `introtext` text NOT NULL,
  `bodytext` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `groups_view` varchar(255) NOT NULL,
  `groups_download` varchar(255) NOT NULL,
  `files` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `publtime` int(11) NOT NULL DEFAULT 0,
  `start_comm_time` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `end_comm_time` int(11) DEFAULT NULL,
  `startvalid` int(11) NOT NULL DEFAULT 0,
  `exptime` int(11) NOT NULL DEFAULT 0,
  `view_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_add` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_edit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_row`
--

INSERT INTO `nv_vi_laws_row` (`id`, `replacement`, `relatement`, `title`, `alias`, `code`, `cid`, `sid`, `approval`, `sgid`, `note`, `introtext`, `bodytext`, `keywords`, `groups_view`, `groups_download`, `files`, `status`, `addtime`, `edittime`, `publtime`, `start_comm_time`, `eid`, `end_comm_time`, `startvalid`, `exptime`, `view_hits`, `download_hits`, `admin_add`, `admin_edit`) VALUES
(1, '', '', 'Công văn số 4622&#x002F;BGDĐT-CNTT về việc hướng dẫn thực hiện nhiệm vụ CNTT năm học 2016 – 2017', 'Cong-van-so-4622-BGDDT-CNTT-ve-viec-huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2016-2017-1', '4622&#x002F;BGDĐT-CNTT', 1, 1, NULL, 1, '', 'Công văn số 4622&#x002F;BGDĐT-CNTT về việc hướng dẫn thực hiện nhiệm vụ CNTT năm học 2016 – 2017', '', 'khai thác,sử dụng,tự do,quán triệt,triển khai,thông tư,quy định,cơ sở,tăng cường,nhà trường,danh sách,ban hành,nghiên cứu,áp dụng,hệ thống,xây dựng,thông tin', '6', '6', 'demo.pdf', 1, 1502359836, 1502811964, 1478538000, NULL, NULL, NULL, 0, 0, 18, 4, 1, 1),
(10, '', '', 'Thông tư số 01&#x002F;2011&#x002F;TT-BTTTT của Bộ Thông tin và Truyền thông &#x3A; Công bố Danh mục tiêu chuẩn kỹ thuật về ứng dụng công nghệ thông tin trong cơ quan nhà nước', 'Thong-tu-so-01-2011-TT-BTTTT-cua-Bo-Thong-tin-va-Truyen-thong-Cong-bo-Danh-muc-tieu-chuan-ky-thuat-ve-ung-dung-cong-nghe-thong-tin-trong-co-quan-nha-nuoc-10', '01&#x002F;2011&#x002F;TT-BTTTT', 3, 4, NULL, 6, '', 'Công bố Danh mục tiêu chuẩn kỹ thuật <br />về ứng dụng công nghệ thông tin trong cơ quan nhà nước', '', 'công bố,danh mục,tiêu chuẩn,kỹ thuật,ứng dụng,công nghệ,thông tin,cơ quan', '6', '6', 'demo.pdf', 1, 1502416130, 0, 1294074000, NULL, NULL, NULL, 0, 0, 6, 3, 1, 0),
(2, '', '', 'Thông tư số 08&#x002F;2010&#x002F;TT-BGDĐT của Bộ Giáo dục và Đào tạo &#x3A; Quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục', 'Thong-tu-so-08-2010-TT-BGDDT-cua-Bo-Giao-duc-va-Dao-tao-Quy-dinh-ve-su-dung-phan-mem-tu-do-ma-nguon-mo-trong-cac-co-so-giao-duc-2', '08&#x002F;2010&#x002F;TT-BGDĐT', 3, 1, NULL, 2, '', 'Thông tư số 08&#x002F;2010&#x002F;TT-BGDĐT của Bộ Giáo dục và Đào tạo &#x3A; Quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục', '', 'giáo dục,đào tạo,cộng hoà,xã hội,chủ nghĩa,độc lập,tự do,hạnh phúc,hà nội,sử dụng,cơ sở,công nghệ,thông tin,nghị định,phủ quy,nhiệm vụ,quyền hạn,tổ chức,ứng dụng,hoạt động,cơ quan', '6', '6', 'demo.pdf', 1, 1502359989, 1502812204, 1267376400, NULL, NULL, NULL, 0, 0, 8, 2, 1, 1),
(3, '', '', 'Công văn số 310&#x002F;BTTTT-ƯDCNTT ngày 10&#x002F;02&#x002F;2012 của Bộ Thông tin và Truyền thông về việc hướng dẫn áp dụng bộ tiêu chí đánh giá cổng thông tin điện tử của cơ quan nhà nước', 'Cong-van-so-310-BTTTT-UDCNTT-ngay-10-02-2012-cua-Bo-Thong-tin-va-Truyen-thong-ve-viec-huong-dan-ap-dung-bo-tieu-chi-danh-gia-cong-thong-tin-dien-tu-cua-co-quan-nha-nuoc-3', '310&#x002F;BTTTT-ƯDCNTT', 1, 2, NULL, 3, '', 'Văn bản hướng dẫn áp dụng bộ tiêu chí đánh giá cổng thông tin điện tử của cơ quan nhà nước', '', 'hướng dẫn,áp dụng,tiêu chí,đánh giá,thông tin,cơ quan', '6', '6', 'demo.pdf', 1, 1502414679, 0, 1328806800, NULL, NULL, NULL, 0, 0, 10, 3, 1, 0),
(4, '', '', 'Thông tư 20&#x002F;2014&#x002F;TT-BTTTT của Bộ TT&amp;TT ban hành ngày 05&#x002F;12&#x002F;2014 quy định về các sản phẩm phần mềm nguồn mở &#40;PMNM&#41; được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.', 'Thong-tu-20-2014-TT-BTTTT-cua-Bo-TT-TT-ban-hanh-ngay-05-12-2014-quy-dinh-ve-cac-san-pham-phan-mem-nguon-mo-PMNM-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc-4', '20&#x002F;2014&#x002F;TT-BTTTT', 3, 2, NULL, 4, '', 'Thông tư Quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', '', 'thông tư,quy định,sản phẩm,ưu tiên,mua sắm,sử dụng,cơ quan,tổ chức', '6', '6', 'demo.pdf', 1, 1502414811, 0, 1417712400, NULL, NULL, NULL, 1421686800, 0, 6, 4, 1, 0),
(5, '', '', 'Nghị định số 43&#x002F;2011&#x002F;NĐ-CP ngày 13&#x002F;6&#x002F;2011 của Chính phủ Quy định về việc cung cấp thông tin và dịch vụ công trực tuyến trên trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan Nhà nước', 'Nghi-dinh-so-43-2011-ND-CP-ngay-13-6-2011-cua-Chinh-phu-Quy-dinh-ve-viec-cung-cap-thong-tin-va-dich-vu-cong-truc-tuyen-tren-trang-thong-tin-dien-tu-hoac-cong-thong-tin-dien-tu-cua-co-quan-Nha-nuoc-5', '43&#x002F;2011&#x002F;NĐ-CP', 4, 3, NULL, 5, '', 'Quy định về việc cung cấp thông tin và dịch vụ công trực tuyến trên trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan nhà nước', '', 'cộng hòa,xã hội,chủ nghĩa,độc lập,tự do,hạnh phúc,hà nội,thông tin,cơ quan,tổ chức,công nghệ,đề nghị,phạm vi,quy định,sau đây,bảo đảm,hoạt động,tổng cục,tương đương,ủy ban,nhân dân', '6', '6', 'demo.pdf', 1, 1502415038, 1502812086, 1307898000, NULL, NULL, NULL, 0, 0, 6, 3, 1, 1),
(6, '', '', 'Văn bản số 1654&#x002F;BTTTT-UDCNTT của Bộ TT&amp;TT ban hành ngày 27&#x002F;05&#x002F;2008 Hướng dẫn các yêu cầu cơ bản về chức năng, tính năng kỹ thuật cho các dự án dùng chung theo Quyết định số 43&#x002F;2008&#x002F;QĐ-TTg &#40;Cổng thông tin điện tử&', 'Van-ban-so-1654-BTTTT-UDCNTT-cua-Bo-TT-TT-ban-hanh-ngay-27-05-2008-Huong-dan-cac-yeu-cau-co-ban-ve-chuc-nang-tinh-nang-ky-thuat-cho-cac-du-an-dung-chung-theo-Quyet-dinh-so-43-2008-QD-TTg-Cong-thong-tin-dien-tu-6', '1654&#x002F;BTTTT-UDCNTT', 2, 2, NULL, 6, '', 'Hướng dẫn các yêu cầu cơ bản về chức năng, tính năng kỹ thuật cho các dự án dùng chung theo Quyết định số 43&#x002F;2008&#x002F;QĐ-TTg &#40;Cổng thông tin điện tử&#41;', '', 'hướng dẫn,yêu cầu,cơ bản,tính năng,kỹ thuật,dự án,quyết định,thông tin', '6', '6', 'demo.pdf', 1, 1502415180, 0, 1211821200, NULL, NULL, NULL, 0, 0, 5, 2, 1, 0),
(7, '', '', 'Văn bản số&#x3A; 1790&#x002F;BTTTT-VNCERT ngày 20&#x002F;06&#x002F;2011 của Bộ TT&amp;TT về việc tăng cường công tác đảm bảo an toàn thông tin cho cổng&#x002F;trang thông tin điện tử', 'Van-ban-so-1790-BTTTT-VNCERT-ngay-20-06-2011-cua-Bo-TT-TT-ve-viec-tang-cuong-cong-tac-dam-bao-an-toan-thong-tin-cho-cong-trang-thong-tin-dien-tu-7', '1790&#x002F;BTTTT-VNCERT', 2, 2, NULL, 6, '', 'V&#x002F;v tăng cường công tác đảm bảo an toàn thông tin cho cổng&#x002F;trang thông tin điện tử', '', 'tăng cường,công tác,đảm bảo,an toàn,thông tin', '6', '6', 'demo.pdf', 1, 1502415276, 0, 1308502800, NULL, NULL, NULL, 0, 0, 4, 3, 1, 0),
(8, '', '', 'Văn bản số 2132&#x002F;BTTTT-VNCERT, ngày 18&#x002F;7&#x002F;2011, của Bộ Thông tin và Truyền thông về việc hướng dẫn bảo đảm an toàn thông tin cho các cổng&#x002F;trang thông tin điện tử', 'Van-ban-so-2132-BTTTT-VNCERT-ngay-18-7-2011-cua-Bo-Thong-tin-va-Truyen-thong-ve-viec-huong-dan-bao-dam-an-toan-thong-tin-cho-cac-cong-trang-thong-tin-dien-tu-8', '2132&#x002F;BTTTT-VNCERT', 2, 2, NULL, 6, '', 'Hướng dẫn đảm bảo an toàn thông tin cho các Cổng&#x002F;Trang thông tin điện tử', '', 'hướng dẫn,đảm bảo,an toàn,thông tin', '6', '6', 'demo.pdf', 1, 1502415396, 0, 1310922000, NULL, NULL, NULL, 0, 0, 5, 5, 1, 0),
(9, '', '', 'Thông tư số 24&#x002F;2011&#x002F;TT-BTTTT ngày 20&#x002F;9&#x002F;2011 của Bộ Thông tin và Truyền thông quy định về việc tạo lập, sử dụng và lưu trữ dữ liệu đặc tả trên trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan nhà nước', 'Thong-tu-so-24-2011-TT-BTTTT-ngay-20-9-2011-cua-Bo-Thong-tin-va-Truyen-thong-quy-dinh-ve-viec-tao-lap-su-dung-va-luu-tru-du-lieu-dac-ta-tren-trang-thong-tin-dien-tu-hoac-cong-thong-tin-dien-tu-cua-co-quan-nha-nuoc-9', '24&#x002F;2011&#x002F;TT-BTTTT', 3, 4, NULL, 7, '', 'Quy định về việc tạo lập, sử dụng và lưu trữ dữ liệu đặc tả trên trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan nhà nước', '', 'thông tin,thông số,cộng hoà,xã hội,chủ nghĩa,độc lập,tự do,hạnh phúc,hà nội,thông tư,quy định,tạo lập,sử dụng,lưu trữ,cơ quan,nhà nước,căn cứ,công nghệ,nghị định,ứng dụng,hoạt động', '6', '6', 'demo.pdf', 1, 1502415529, 1502812030, 1316451600, NULL, NULL, NULL, 0, 0, 9, 4, 1, 1),
(11, '', '', 'Nghị Định ứng dụng công nghệ thông tin trong hoạt động của cơ quan nhà nước CHÍNH PHỦ', 'Nghi-Dinh-ung-dung-cong-nghe-thong-tin-trong-hoat-dong-cua-co-quan-nha-nuoc-CHINH-PHU-11', '64&#x002F;2007&#x002F;NĐ-CP', 4, 4, NULL, 7, '', 'Ứng dụng công nghệ thông tin trong hoạt động của cơ quan nhà nước CHÍNH PHỦ', '', 'cộng hoà,xã hội,chủ nghĩa,độc lập,tự do,hạnh phúc,hà nội,nghị định,ứng dụng,công nghệ,thông tin,hoạt động,cơ quan,nhà nước,căn cứ,tổ chức,giao dịch,đề nghị,bưu chính,viễn thông,quy định', '6', '6', 'demo.pdf', 1, 1502416239, 1502812358, 1176138000, NULL, NULL, NULL, 0, 0, 4, 1, 1, 1),
(12, '', '', 'Thông tư 26&#x002F;2009&#x002F;TT-BTTTT Quy định về việc cung cấp thông tin và đảm bảo khả năng truy nhập thuận tiện đối với trang thông tin điện tử của Nhà nước', 'Thong-tu-26-2009-TT-BTTTT-Quy-dinh-ve-viec-cung-cap-thong-tin-va-dam-bao-kha-nang-truy-nhap-thuan-tien-doi-voi-trang-thong-tin-dien-tu-cua-Nha-nuoc-12', '26&#x002F;2009&#x002F;TT-BTTTT', 3, 2, NULL, 8, '', 'Quy định về việc cung cấp thông tin và đảm bảo khả năng truy nhập thuận tiện đối với trang thông tin điện tử của Nhà nước', '', 'thông tin', '6', '6', 'demo.pdf', 1, 1502416406, 0, 1248973200, NULL, NULL, NULL, 1252947600, 0, 5, 3, 1, 0),
(13, '', '', 'Thông tư số 19&#x002F;2011&#x002F;TT-BTTTT của Bộ Thông tin và Truyền thông &#x3A; Quy định về áp dụng tiêu chuẩn định dạng tài liệu mở trong cơ quan nhà nước', 'Thong-tu-so-19-2011-TT-BTTTT-cua-Bo-Thong-tin-va-Truyen-thong-Quy-dinh-ve-ap-dung-tieu-chuan-dinh-dang-tai-lieu-mo-trong-co-quan-nha-nuoc-13', '19&#x002F;2011&#x002F;TT-BTTTT', 3, 4, NULL, 6, '', 'Quy định về áp dụng tiêu chuẩn định dạng tài liệu mở trong cơ quan nhà nước', '', 'quy định,áp dụng,tiêu chuẩn,tài liệu,cơ quan', '6', '6', 'demo.pdf', 1, 1502416491, 0, 1309453200, NULL, NULL, NULL, 0, 0, 4, 1, 1, 0),
(14, '', '', 'Thông tư 28&#x002F;2009&#x002F;TT-BTTTT quy định việc áp dụng tiêu chuẩn, công nghệ hỗ trợ người khuyết tật tiếp cận, sử dụng công nghệ thông tin và truyền thông', 'Thong-tu-28-2009-TT-BTTTT-quy-dinh-viec-ap-dung-tieu-chuan-cong-nghe-ho-tro-nguoi-khuyet-tat-tiep-can-su-dung-cong-nghe-thong-tin-va-truyen-thong-14', '28&#x002F;2009&#x002F;TT-BTTTT', 3, 4, NULL, 7, '', 'Quy định về việc áp dụng tiêu chuẩn, công nghệ hỗ trợ người khuyết tật tiếp cận, sử dụng công nghệ thông tin và truyền thông', '', 'thông tin,thông số,cộng hoà,xã hội,chủ nghĩa,độc lập,tự do,hạnh phúc,hà nội,thông tư,quy định,áp dụng,tiêu chuẩn,công nghệ,hỗ trợ,tiếp cận,sử dụng,căn cứ,nghị định,phủ quy,nhiệm vụ', '6', '6', 'demo.pdf', 1, 1502416578, 1502812261, 1252861200, NULL, NULL, NULL, 0, 0, 7, 3, 1, 1),
(15, '', '', 'Quyết định số 80&#x002F;2014&#x002F;QĐ-TTg của Thủ tướng Chính phủ&#x3A; Quy định thí điểm về thuê dịch vụ công nghệ thông tin trong cơ quan nhà nước', 'Quyet-dinh-so-80-2014-QD-TTg-cua-Thu-tuong-Chinh-phu-Quy-dinh-thi-diem-ve-thue-dich-vu-cong-nghe-thong-tin-trong-co-quan-nha-nuoc-15', '80&#x002F;2014&#x002F;QĐ-TTg', 2, 3, NULL, 5, '', 'Quy định thí điểm về thuê dịch vụ công nghệ thông tin trong cơ quan nhà nước', '', 'quy định,thí điểm,công nghệ,thông tin,cơ quan', '6', '6', 'demo.pdf', 1, 1502416668, 1502770009, 1419872400, NULL, NULL, NULL, 1423933200, 0, 10, 4, 1, 1),
(16, '', '', 'Nghị định số 72&#x002F;2013&#x002F;NĐ-CP của Chính phủ &#x3A; Quản lý, cung cấp, sử dụng dịch vụ Internet và thông tin trên mạng', 'Nghi-dinh-so-72-2013-ND-CP-cua-Chinh-phu-Quan-ly-cung-cap-su-dung-dich-vu-Internet-va-thong-tin-tren-mang-16', '72&#x002F;2013&#x002F;NĐ-CP', 4, 3, NULL, 5, '', 'Quản lý, cung cấp, sử dụng dịch vụ Internet và thông tin trên mạng', '', 'quản lý,sử dụng,thông tin', '6', '6', 'demo.pdf', 1, 1502416748, 0, 1373821200, NULL, NULL, NULL, 0, 0, 5, 5, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_row_area`
--

CREATE TABLE `nv_vi_laws_row_area` (
  `row_id` int(10) UNSIGNED NOT NULL,
  `area_id` smallint(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_row_area`
--

INSERT INTO `nv_vi_laws_row_area` (`row_id`, `area_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 2),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 1),
(16, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_set_replace`
--

CREATE TABLE `nv_vi_laws_set_replace` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `oid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_signer`
--

CREATE TABLE `nv_vi_laws_signer` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `offices` varchar(255) NOT NULL,
  `positions` varchar(255) NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_signer`
--

INSERT INTO `nv_vi_laws_signer` (`id`, `title`, `offices`, `positions`, `addtime`) VALUES
(1, 'Phạm Mạnh Hùng', '', '', 1502359701),
(2, 'Phạm Vũ Luận', '', '', 1502359879),
(3, 'Nguyễn Thành Phúc', '', 'Cục trưởng Cục ứng dụng CNTT', 1502414600),
(4, 'Nguyễn Bắc Son', '', 'Bộ trưởng Bộ Thông tin và Truyền thông', 1502414717),
(5, 'Nguyễn Tấn Dũng', '', 'THỦ TƯỚNG', 1502414907),
(6, 'Nguyễn Minh Hồng', '', 'Thứ trưởng Bộ Thông tin và Truyền thông', 1502415109),
(7, 'Khác', '', '', 1502415450),
(8, 'Lê Doãn Hợp', '', 'Bộ trưởng Bộ Thông tin và Truyền thông', 1502416327);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_laws_subject`
--

CREATE TABLE `nv_vi_laws_subject` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `alias` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `introduction` mediumtext NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `numcount` int(10) NOT NULL DEFAULT 0,
  `numlink` tinyint(2) NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_laws_subject`
--

INSERT INTO `nv_vi_laws_subject` (`id`, `alias`, `title`, `introduction`, `keywords`, `numcount`, `numlink`, `addtime`, `weight`) VALUES
(1, 'Bo-GDDT', 'Bộ GDĐT', '', '', 2, 5, 1502359649, 1),
(2, 'Bo-Thong-tin-va-Truyen-thong', 'Bộ Thông tin và Truyền thông', '', '', 6, 5, 1502414470, 2),
(3, 'TM-CHINH-PHU', 'TM. CHÍNH PHỦ', '', '', 3, 5, 1502414952, 3),
(4, 'Khac', 'Khác', '', '', 5, 5, 1502415470, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_menu`
--

CREATE TABLE `nv_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_menu`
--

INSERT INTO `nv_vi_menu` (`id`, `title`) VALUES
(1, 'Menu chính'),
(3, 'Công báo - Lịch - Văn bản'),
(4, 'Góp ý - Lấy ý kiến của dân'),
(6, 'Menu &#40;Chân trang Website&#41;'),
(7, 'Menu &#40;Đăng nhập&#41;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_menu_rows`
--

CREATE TABLE `nv_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text DEFAULT NULL,
  `groups_view` varchar(255) DEFAULT '',
  `module_name` varchar(255) DEFAULT '',
  `op` varchar(255) DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_menu_rows`
--

INSERT INTO `nv_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(74, 0, 7, 'Liên kết', '/index.php?language=vi&nv=page&op=thong-bao.html', '', '', '', 4, 4, 0, '', '6', 'page', '', 1, '', 0, 1),
(73, 0, 7, 'Sơ đồ cổng', '/index.php?language=vi&nv=feeds', '', '', '', 3, 3, 0, '', '6', 'feeds', '', 1, '', 0, 1),
(72, 53, 6, 'Đoàn thanh niên Việt Nam', 'http://doanthanhnien.vn', '', '', '', 4, 17, 1, '', '6', '0', '', 2, '', 0, 1),
(152, 144, 6, 'Đảng Cộng sản Việt Nam', 'http://www.dangcongsan.vn/', '', '', '', 1, 20, 1, '', '6', '0', '', 2, '', 0, 1),
(70, 53, 6, 'Ngân hàng chính sách xã hội', 'http://vbsp.org.vn/', '', '', '', 3, 16, 1, '', '6', '0', '', 2, '', 0, 1),
(37, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '143,142', '6', 'about', '', 1, '', 0, 1),
(39, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 2, 4, 0, '112,113,114,117,119,120', '6', 'news', '', 1, '', 0, 1),
(45, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 4, 15, 0, '', '6', 'contact', '', 1, '', 0, 1),
(46, 0, 4, 'Lấy ý kiến người dân', '/index.php?language=vi&nv=opinions', 'lay-y-kien.png', '', '', 1, 1, 0, '', '6', 'opinions', '', 1, 'col-sm-12 col-md-5', 0, 1),
(47, 0, 4, 'Lấy ý kiến dự thảo văn bản', '/index.php?language=vi&nv=opinions', 'y-kien-du-thao.png', '', '', 2, 2, 0, '', '6', 'opinions', '', 1, 'col-sm-12 col-md-7 imgonright', 0, 1),
(48, 0, 4, 'Đường dây nóng', '/index.php?language=vi&nv=page&op=thongbao.html', 'duong-day-nong.png', '', 'Sở&#x002F; Ban ngành&#x002F; Quận&#x002F; Huyện', 3, 3, 0, '', '6', 'page', '', 1, 'col-sm-12 col-md-5 hasnote', 0, 1),
(49, 0, 4, 'Chỉ dẫn thủ tục hành chính', '/index.php?language=vi&nv=page&op=thongbao.html', 'chi-dan-thu-tuc.png', '', 'Hỗ trợ trực tuyến qua điện thoại', 4, 4, 0, '', '6', 'page', '', 1, 'col-sm-12 col-md-7 imgonright hasnote', 0, 1),
(50, 0, 6, 'Sở &#x002F; Ban ngành', '#', '', '', '', 1, 1, 0, '54,55,56,57,153', '6', '0', '', 1, '', 0, 1),
(52, 0, 6, 'Bộ &#x002F; ngành', '#', '', '', '', 2, 7, 0, '63,64,65,66,67', '6', '0', '', 1, '', 0, 1),
(53, 0, 6, 'Đoàn hội', '#', '', '', '', 3, 13, 0, '72,70,68,69,151', '6', '0', '', 1, '', 0, 1),
(54, 50, 6, 'Sở công thương', '#', '', '', '', 4, 5, 1, '', '6', '0', '', 1, '', 0, 1),
(55, 50, 6, 'Sở khoa học và công nghệ', '#', '', '', '', 2, 3, 1, '', '6', '0', '', 1, '', 0, 1),
(56, 50, 6, 'Sở NN&amp;PT Nông thôn', '#', '', '', '', 3, 4, 1, '', '6', '0', '', 1, '', 0, 1),
(57, 50, 6, 'Sở tài chính', '#', '', '', '', 5, 6, 1, '', '6', '0', '', 1, '', 0, 1),
(146, 144, 6, 'Báo điện tử Chính phủ', 'http://baochinhphu.vn/', '', '', '', 3, 22, 1, '', '6', '0', '', 2, '', 0, 1),
(145, 144, 6, 'Cổng thông tin Chính Phủ', 'http://chinhphu.vn/', '', '', '', 2, 21, 1, '', '6', 'page', '', 2, '', 0, 1),
(144, 0, 6, 'Liên kết Website', '#', '', '', '', 4, 19, 0, '152,146,145,147,148', '6', '0', '', 1, '', 0, 1),
(63, 52, 6, 'Bộ Nông Nghiệp', 'http://www.mard.gov.vn/', '', '', '', 1, 8, 1, '', '6', '0', '', 2, '', 0, 1),
(64, 52, 6, 'Bộ Giáo Dục', 'http://pbc.moet.gov.vn/', '', '', '', 2, 9, 1, '', '6', '0', '', 2, '', 0, 1),
(65, 52, 6, 'Bộ Tài Chính', 'http://vbpq.mof.gov.vn/', '', '', '', 3, 10, 1, '', '6', '0', '', 2, '', 0, 1),
(66, 52, 6, 'Bộ Giao thông vận tải', 'http://mt.gov.vn/', '', '', '', 4, 11, 1, '', '6', '0', '', 2, '', 0, 1),
(67, 52, 6, 'Bộ Y tế', 'http://moh.gov.vn/', '', '', '', 5, 12, 1, '', '6', '0', '', 2, '', 0, 1),
(68, 53, 6, 'Liên hiệp các hội KHKT', 'http://www.vusta.vn/', '', '', '', 1, 14, 1, '', '6', '0', '', 2, '', 0, 1),
(69, 53, 6, 'LH Các tổ chức hữu nghị', 'http://www.vietpeace.org.vn/', '', '', '', 2, 15, 1, '', '6', '0', '', 2, '', 0, 1),
(143, 37, 1, 'Sự hình thành và phát triển', '/index.php?language=vi&nv=about&op=Su-hinh-thanh-va-phat-trien.html', '', '', '', 2, 3, 1, '', '6', 'about', '', 1, '', 0, 1),
(142, 37, 1, 'Giới thiệu chung', '/index.php?language=vi&nv=about&op=Gioi-thieu-chung.html', '', '', '', 1, 2, 1, '', '6', 'about', '', 1, '', 0, 1),
(141, 0, 7, 'RSS', '/index.php?language=vi&nv=feeds', 'rss_1.png', '', '', 2, 2, 0, '', '6', 'feeds', '', 1, 'li-second-display', 0, 1),
(140, 0, 7, 'Thành viên', '/index.php?language=vi&nv=users', 'user_1.png', '', '', 1, 1, 0, '', '6', 'users', '', 1, 'li-first-menu', 0, 1),
(34, 0, 3, 'CÔNG BÁO CHÍNH PHỦ', '/index.php?language=vi&nv=laws&op=Cong-van', 'icon1.png', '', '', 1, 1, 0, '', '6', 'laws', 'Cong-van', 1, 'col-sm-12 col-md-8', 0, 1),
(35, 0, 3, 'LỊCH LÀM VIỆC', '/index.php?language=vi&nv=page&op=thong-bao.html', 'icon2.png', '', '', 2, 2, 0, '', '6', 'page', 'thong-bao.html', 1, 'col-sm-12 col-md-8', 0, 1),
(36, 0, 3, 'VĂN BẢN - CHỈ ĐẠO ĐIỀU HÀNH', '/index.php?language=vi&nv=laws', 'icon3.png', '', '', 3, 3, 0, '', '6', 'laws', '', 1, 'col-sm-12 col-md-8', 0, 1),
(117, 39, 1, 'Kế hoạch', '/index.php?language=vi&nv=news&amp;op=ke-hoach', '', '', '', 4, 8, 1, '', '6', 'news', 'ke-hoach', 1, '', 1, 1),
(156, 154, 1, 'Tennis nâng cao', '/index.php?language=vi&nv=course&amp;op=tennis-nang-cao.html', '', '', '', 2, 13, 1, '', '6', 'course', 'tennis-nang-cao.html', 1, '', 1, 1),
(157, 154, 1, 'Tennis Trẻ em', '/index.php?language=vi&nv=course&amp;op=tennis-tre-em.html', '', '', '', 3, 14, 1, '', '6', 'course', 'tennis-tre-em.html', 1, '', 1, 1),
(120, 39, 1, 'Thông tin Thống kê', '/index.php?language=vi&nv=news&amp;op=thong-tin-thong-ke', '', '', '', 6, 10, 1, '', '6', 'news', 'thong-tin-thong-ke', 1, '', 1, 1),
(119, 39, 1, 'Công trình - Đề tài', '/index.php?language=vi&nv=news&amp;op=cong-trinh-de-tai', '', '', '', 5, 9, 1, '', '6', 'news', 'cong-trinh-de-tai', 1, '', 1, 1),
(154, 0, 1, 'Khóa học Tennis', '/index.php?language=vi&nv=course', '', '', '', 3, 11, 0, '155,156,157', '6', 'course', '', 1, '', 0, 1),
(155, 154, 1, 'Tennis Cơ Bản', '/index.php?language=vi&nv=course&amp;op=tennis-co-ban.html', '', '', '', 1, 12, 1, '', '6', 'course', 'tennis-co-ban.html', 1, '', 1, 1),
(114, 39, 1, 'Thông tin tuyên truyền', '/index.php?language=vi&nv=news&amp;op=thong-tin-tuyen-truyen', '', '', '', 3, 7, 1, '', '6', 'news', 'thong-tin-tuyen-truyen', 1, '', 1, 1),
(113, 39, 1, 'Chỉ đạo điều hành', '/index.php?language=vi&nv=news&amp;op=chi-dao-dieu-hanh', '', '', '', 2, 6, 1, '', '6', 'news', 'chi-dao-dieu-hanh', 1, '', 1, 1),
(112, 39, 1, 'Tin hoạt động', '/index.php?language=vi&nv=news&amp;op=tin-hoat-dong', '', '', '', 1, 5, 1, '', '6', 'news', 'tin-hoat-dong', 1, '', 1, 1),
(147, 144, 6, 'Thông tấn xã Việt Nam', 'http://www.vnagency.com.vn/', '', '', '', 4, 23, 1, '', '6', '0', '', 2, '', 0, 1),
(148, 144, 6, 'Đài tiếng nói Việt Nam', 'http://www.vovnews.vn/', '', '', '', 5, 24, 1, '', '6', '0', '', 2, '', 0, 1),
(153, 50, 6, 'Sở Giáo Dục và Đào Tạo', '#', '', '', '', 1, 2, 1, '', '6', '0', '', 1, '', 0, 1),
(151, 53, 6, 'Hội tin học Việt Nam', 'http://vaip.org.vn', '', '', '', 5, 18, 1, '', '6', '0', '', 2, '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_modfuncs`
--

CREATE TABLE `nv_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) NOT NULL,
  `alias` varchar(55) NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) NOT NULL,
  `func_site_title` varchar(255) NOT NULL DEFAULT '',
  `in_module` varchar(50) NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT 1,
  `setting` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_modfuncs`
--

INSERT INTO `nv_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 7, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 8, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 9, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 6, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 4, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(52, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(53, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(54, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(55, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(56, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(57, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(58, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(59, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(60, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(61, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(69, 'area', 'area', 'Area', '', 'laws', 1, 1, 4, ''),
(70, 'cat', 'cat', 'Cat', '', 'laws', 1, 1, 5, ''),
(71, 'detail', 'detail', 'Detail', '', 'laws', 1, 1, 2, ''),
(72, 'main', 'main', 'Main', '', 'laws', 1, 1, 1, ''),
(73, 'rss', 'rss', 'Rss', '', 'laws', 0, 0, 0, ''),
(74, 'search', 'search', 'Search', '', 'laws', 1, 1, 3, ''),
(75, 'signer', 'signer', 'Signer', '', 'laws', 1, 1, 7, ''),
(76, 'sitemap', 'sitemap', 'Sitemap', '', 'laws', 0, 0, 0, ''),
(77, 'subject', 'subject', 'Subject', '', 'laws', 1, 1, 6, ''),
(148, 'sitemap', 'sitemap', 'Sitemap', '', 'faq', 0, 0, 0, ''),
(147, 'rss', 'rss', 'Rss', '', 'faq', 0, 0, 0, ''),
(146, 'main', 'main', 'Main', '', 'faq', 1, 0, 1, ''),
(120, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(121, 'rss', 'rss', 'Rss', '', 'about', 1, 0, 2, ''),
(122, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(133, 'person', 'person', 'Person', '', 'co-cau-to-chuc', 1, 0, 3, ''),
(132, 'main', 'main', 'Main', '', 'co-cau-to-chuc', 1, 0, 1, ''),
(134, 'vieworg', 'vieworg', 'Vieworg', '', 'co-cau-to-chuc', 1, 0, 2, ''),
(135, 'viewper', 'viewper', 'Viewper', '', 'co-cau-to-chuc', 0, 0, 0, ''),
(136, 'viewsearch', 'viewsearch', 'Viewsearch', '', 'co-cau-to-chuc', 1, 0, 4, ''),
(137, 'area', 'area', 'Area', '', 'opinions', 1, 1, 4, ''),
(138, 'cat', 'cat', 'Cat', '', 'opinions', 1, 1, 5, ''),
(139, 'detail', 'detail', 'Detail', '', 'opinions', 1, 1, 2, ''),
(140, 'main', 'main', 'Main', '', 'opinions', 1, 1, 1, ''),
(141, 'rss', 'rss', 'Rss', '', 'opinions', 0, 0, 0, ''),
(142, 'search', 'search', 'Search', '', 'opinions', 1, 1, 3, ''),
(143, 'signer', 'signer', 'Signer', '', 'opinions', 1, 1, 7, ''),
(144, 'sitemap', 'sitemap', 'Sitemap', '', 'opinions', 0, 0, 0, ''),
(145, 'subject', 'subject', 'Subject', '', 'opinions', 1, 1, 6, ''),
(149, 'down', 'down', 'Down', '', 'comment', 0, 0, 5, ''),
(157, 'list_playlist_cat', 'list_playlist_cat', 'List_playlist_cat', '', 'videos', 0, 0, 0, ''),
(156, 'groups', 'groups', 'Groups', '', 'videos', 1, 0, 6, ''),
(155, 'detail', 'detail', 'Detail', '', 'videos', 1, 0, 7, ''),
(158, 'main', 'main', 'Main', '', 'videos', 1, 0, 1, ''),
(159, 'player', 'player', 'Player', '', 'videos', 1, 0, 5, ''),
(160, 'playlists', 'playlists', 'Playlists', '', 'videos', 1, 0, 3, ''),
(161, 'rating', 'rating', 'Rating', '', 'videos', 0, 0, 0, ''),
(162, 'rss', 'rss', 'Rss', '', 'videos', 1, 1, 12, ''),
(163, 'savefile', 'savefile', 'Savefile', '', 'videos', 0, 0, 0, ''),
(164, 'search', 'search', 'Search', '', 'videos', 1, 1, 8, ''),
(165, 'sendmail', 'sendmail', 'Sendmail', '', 'videos', 0, 0, 0, ''),
(166, 'sitemap', 'sitemap', 'Sitemap', '', 'videos', 0, 0, 0, ''),
(167, 'tag', 'tag', 'Tag', '', 'videos', 1, 0, 11, ''),
(168, 'uploader', 'uploader', 'Uploader', '', 'videos', 1, 0, 4, ''),
(169, 'user-playlist', 'user-playlist', 'User-playlist', '', 'videos', 1, 1, 9, ''),
(170, 'user-video', 'user-video', 'User-video', '', 'videos', 1, 1, 10, ''),
(171, 'v_funcs', 'v_funcs', 'V_funcs', '', 'videos', 0, 0, 0, ''),
(172, 'viewcat', 'viewcat', 'Viewcat', '', 'videos', 1, 0, 2, ''),
(173, 'main', 'main', 'Main', '', 'course', 1, 0, 1, ''),
(174, 'rss', 'rss', 'Rss', '', 'course', 1, 0, 2, ''),
(175, 'sitemap', 'sitemap', 'Sitemap', '', 'course', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_modthemes`
--

CREATE TABLE `nv_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_modthemes`
--

INSERT INTO `nv_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'beauty'),
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_egov'),
(0, 'main-right', 'egov'),
(4, 'left-main-right', 'default'),
(4, 'main', 'egov'),
(4, 'main', 'mobile_egov'),
(4, 'main-home', 'beauty'),
(5, 'left-main-right', 'default'),
(5, 'main', 'egov'),
(5, 'main', 'mobile_egov'),
(5, 'main-right', 'beauty'),
(6, 'left-main-right', 'default'),
(6, 'main', 'egov'),
(6, 'main', 'mobile_egov'),
(6, 'main-right', 'beauty'),
(7, 'left-main-right', 'default'),
(7, 'main', 'egov'),
(7, 'main', 'mobile_egov'),
(7, 'main-right', 'beauty'),
(8, 'left-main-right', 'default'),
(8, 'main', 'egov'),
(8, 'main', 'mobile_egov'),
(8, 'main-right', 'beauty'),
(9, 'left-main-right', 'default'),
(9, 'main', 'egov'),
(9, 'main', 'mobile_egov'),
(9, 'main-right', 'beauty'),
(10, 'left-main-right', 'default'),
(10, 'main', 'egov'),
(10, 'main', 'mobile_egov'),
(10, 'main-right', 'beauty'),
(11, 'left-main-right', 'default'),
(11, 'main', 'egov'),
(11, 'main', 'mobile_egov'),
(11, 'main-right', 'beauty'),
(12, 'left-main-right', 'default'),
(12, 'main', 'egov'),
(12, 'main', 'mobile_egov'),
(12, 'main-right', 'beauty'),
(19, 'left-main-right', 'default'),
(19, 'main', 'egov'),
(19, 'main', 'mobile_egov'),
(19, 'main-right', 'beauty'),
(20, 'left-main-right', 'default'),
(20, 'main', 'egov'),
(20, 'main', 'mobile_egov'),
(20, 'main-right', 'beauty'),
(21, 'left-main-right', 'default'),
(21, 'main', 'egov'),
(21, 'main', 'mobile_egov'),
(21, 'main-right', 'beauty'),
(22, 'left-main-right', 'default'),
(22, 'main', 'egov'),
(22, 'main', 'mobile_egov'),
(22, 'main-right', 'beauty'),
(23, 'left-main-right', 'default'),
(23, 'main', 'egov'),
(23, 'main', 'mobile_egov'),
(23, 'main-right', 'beauty'),
(24, 'left-main-right', 'default'),
(24, 'main', 'egov'),
(24, 'main', 'mobile_egov'),
(24, 'main-right', 'beauty'),
(25, 'left-main', 'default'),
(25, 'main', 'egov'),
(25, 'main', 'mobile_egov'),
(25, 'main-right', 'beauty'),
(26, 'left-main-right', 'default'),
(26, 'main', 'egov'),
(26, 'main', 'mobile_egov'),
(26, 'main-right', 'beauty'),
(27, 'left-main-right', 'default'),
(27, 'main', 'egov'),
(27, 'main', 'mobile_egov'),
(27, 'main-right', 'beauty'),
(28, 'left-main-right', 'default'),
(28, 'main', 'egov'),
(28, 'main', 'mobile_egov'),
(28, 'main-right', 'beauty'),
(29, 'left-main', 'default'),
(29, 'main', 'egov'),
(29, 'main', 'mobile_egov'),
(29, 'main-right', 'beauty'),
(31, 'left-main', 'default'),
(31, 'main', 'egov'),
(31, 'main', 'mobile_egov'),
(31, 'main-right', 'beauty'),
(32, 'left-main', 'default'),
(32, 'main', 'egov'),
(32, 'main', 'mobile_egov'),
(32, 'main-right', 'beauty'),
(33, 'left-main', 'default'),
(33, 'main', 'egov'),
(33, 'main', 'mobile_egov'),
(33, 'main-right', 'beauty'),
(34, 'left-main', 'default'),
(34, 'main', 'egov'),
(34, 'main', 'mobile_egov'),
(34, 'main-right', 'beauty'),
(35, 'left-main', 'default'),
(35, 'main', 'egov'),
(35, 'main', 'mobile_egov'),
(35, 'main-right', 'beauty'),
(36, 'left-main', 'default'),
(36, 'main', 'egov'),
(36, 'main', 'mobile_egov'),
(36, 'main-right', 'beauty'),
(37, 'left-main', 'default'),
(37, 'main', 'egov'),
(37, 'main', 'mobile_egov'),
(37, 'main-right', 'beauty'),
(38, 'left-main-right', 'default'),
(38, 'main', 'egov'),
(38, 'main', 'mobile_egov'),
(38, 'main-right', 'beauty'),
(39, 'left-main-right', 'default'),
(39, 'main', 'egov'),
(39, 'main', 'mobile_egov'),
(39, 'main-right', 'beauty'),
(40, 'left-main-right', 'default'),
(40, 'main', 'egov'),
(40, 'main', 'mobile_egov'),
(40, 'main-right', 'beauty'),
(41, 'left-main-right', 'default'),
(41, 'main', 'egov'),
(41, 'main', 'mobile_egov'),
(41, 'main-right', 'beauty'),
(47, 'left-main-right', 'default'),
(47, 'main', 'egov'),
(47, 'main', 'mobile_egov'),
(47, 'main-right', 'beauty'),
(48, 'left-main-right', 'default'),
(48, 'main', 'egov'),
(48, 'main', 'mobile_egov'),
(48, 'main-right', 'beauty'),
(49, 'left-main-right', 'default'),
(49, 'main', 'egov'),
(49, 'main', 'mobile_egov'),
(49, 'main-right', 'beauty'),
(50, 'left-main-right', 'default'),
(50, 'main', 'egov'),
(50, 'main', 'mobile_egov'),
(50, 'main-right', 'beauty'),
(51, 'left-main', 'default'),
(51, 'main', 'egov'),
(51, 'main', 'mobile_egov'),
(51, 'main-right', 'beauty'),
(54, 'left-main-right', 'default'),
(54, 'main', 'egov'),
(54, 'main', 'mobile_egov'),
(54, 'main-right', 'beauty'),
(55, 'left-main-right', 'default'),
(55, 'main', 'egov'),
(55, 'main', 'mobile_egov'),
(55, 'main-right', 'beauty'),
(57, 'left-main-right', 'default'),
(57, 'main', 'egov'),
(57, 'main', 'mobile_egov'),
(57, 'main-right', 'beauty'),
(58, 'left-main-right', 'default'),
(58, 'main', 'egov'),
(58, 'main', 'mobile_egov'),
(58, 'main-right', 'beauty'),
(59, 'left-main-right', 'default'),
(59, 'main', 'egov'),
(59, 'main', 'mobile_egov'),
(59, 'main-right', 'beauty'),
(60, 'left-main', 'default'),
(60, 'main', 'egov'),
(60, 'main', 'mobile_egov'),
(60, 'main-right', 'beauty'),
(61, 'left-main', 'default'),
(61, 'main', 'egov'),
(61, 'main', 'mobile_egov'),
(61, 'main-right', 'beauty'),
(62, 'left-main-right', 'default'),
(62, 'main', 'egov'),
(62, 'main', 'mobile_egov'),
(62, 'main-right', 'beauty'),
(63, 'left-main-right', 'default'),
(63, 'main', 'egov'),
(63, 'main', 'mobile_egov'),
(63, 'main-right', 'beauty'),
(69, 'left-main-right', 'default'),
(69, 'main', 'egov'),
(69, 'main', 'mobile_egov'),
(69, 'main-right', 'beauty'),
(70, 'left-main-right', 'default'),
(70, 'main', 'egov'),
(70, 'main', 'mobile_egov'),
(70, 'main-right', 'beauty'),
(71, 'left-main-right', 'default'),
(71, 'main', 'egov'),
(71, 'main', 'mobile_egov'),
(71, 'main-right', 'beauty'),
(72, 'left-main-right', 'default'),
(72, 'main', 'egov'),
(72, 'main', 'mobile_egov'),
(72, 'main-right', 'beauty'),
(73, 'left-main-right', 'default'),
(74, 'left-main-right', 'default'),
(74, 'main', 'egov'),
(74, 'main', 'mobile_egov'),
(74, 'main-right', 'beauty'),
(75, 'left-main-right', 'default'),
(75, 'main', 'egov'),
(75, 'main', 'mobile_egov'),
(75, 'main-right', 'beauty'),
(76, 'left-main-right', 'default'),
(77, 'left-main-right', 'default'),
(77, 'main', 'egov'),
(77, 'main', 'mobile_egov'),
(77, 'main-right', 'beauty'),
(120, 'left-main-right', 'default'),
(120, 'main', 'egov'),
(120, 'main', 'mobile_egov'),
(120, 'main-right', 'beauty'),
(121, 'left-main-right', 'default'),
(121, 'main', 'egov'),
(121, 'main', 'mobile_egov'),
(121, 'main-right', 'beauty'),
(122, 'main-right', 'egov'),
(132, 'left-main-right', 'default'),
(132, 'main', 'egov'),
(132, 'main', 'mobile_egov'),
(132, 'main-right', 'beauty'),
(133, 'left-main-right', 'default'),
(133, 'main', 'egov'),
(133, 'main', 'mobile_egov'),
(133, 'main-right', 'beauty'),
(134, 'left-main-right', 'default'),
(134, 'main', 'egov'),
(134, 'main', 'mobile_egov'),
(134, 'main-right', 'beauty'),
(135, 'main-right', 'egov'),
(136, 'left-main-right', 'default'),
(136, 'main', 'egov'),
(136, 'main', 'mobile_egov'),
(136, 'main-right', 'beauty'),
(137, 'left-main-right', 'default'),
(137, 'main', 'egov'),
(137, 'main', 'mobile_egov'),
(137, 'main-right', 'beauty'),
(138, 'left-main-right', 'default'),
(138, 'main', 'egov'),
(138, 'main', 'mobile_egov'),
(138, 'main-right', 'beauty'),
(139, 'left-main-right', 'default'),
(139, 'main', 'egov'),
(139, 'main', 'mobile_egov'),
(139, 'main-right', 'beauty'),
(140, 'left-main-right', 'default'),
(140, 'main', 'egov'),
(140, 'main', 'mobile_egov'),
(140, 'main-right', 'beauty'),
(141, 'main-right', 'egov'),
(142, 'left-main-right', 'default'),
(142, 'main', 'egov'),
(142, 'main', 'mobile_egov'),
(142, 'main-right', 'beauty'),
(143, 'left-main-right', 'default'),
(143, 'main', 'egov'),
(143, 'main', 'mobile_egov'),
(143, 'main-right', 'beauty'),
(144, 'main-right', 'egov'),
(145, 'left-main-right', 'default'),
(145, 'main', 'egov'),
(145, 'main', 'mobile_egov'),
(145, 'main-right', 'beauty'),
(146, 'left-main-right', 'default'),
(146, 'main', 'egov'),
(146, 'main', 'mobile_egov'),
(146, 'main-right', 'beauty'),
(147, 'main-right', 'egov'),
(148, 'main-right', 'egov'),
(155, 'left-main-right', 'default'),
(155, 'main', 'mobile_egov'),
(155, 'main-right', 'beauty'),
(155, 'main-right', 'egov'),
(156, 'left-main-right', 'default'),
(156, 'main', 'mobile_egov'),
(156, 'main-right', 'beauty'),
(156, 'main-right', 'egov'),
(157, 'left-main-right', 'beauty'),
(158, 'left-main-right', 'default'),
(158, 'main', 'mobile_egov'),
(158, 'main-right', 'beauty'),
(158, 'main-right', 'egov'),
(159, 'left-main-right', 'default'),
(159, 'main', 'mobile_egov'),
(159, 'main-right', 'beauty'),
(159, 'main-right', 'egov'),
(160, 'left-main-right', 'default'),
(160, 'main', 'mobile_egov'),
(160, 'main-right', 'beauty'),
(160, 'main-right', 'egov'),
(161, 'left-main-right', 'beauty'),
(162, 'left-main-right', 'default'),
(162, 'main', 'mobile_egov'),
(162, 'main-right', 'beauty'),
(162, 'main-right', 'egov'),
(163, 'left-main-right', 'beauty'),
(164, 'left-main-right', 'default'),
(164, 'main', 'mobile_egov'),
(164, 'main-right', 'beauty'),
(164, 'main-right', 'egov'),
(165, 'left-main-right', 'beauty'),
(166, 'left-main-right', 'beauty'),
(167, 'left-main-right', 'default'),
(167, 'main', 'mobile_egov'),
(167, 'main-right', 'beauty'),
(167, 'main-right', 'egov'),
(168, 'left-main-right', 'default'),
(168, 'main', 'mobile_egov'),
(168, 'main-right', 'beauty'),
(168, 'main-right', 'egov'),
(169, 'left-main-right', 'default'),
(169, 'main', 'mobile_egov'),
(169, 'main-right', 'beauty'),
(169, 'main-right', 'egov'),
(170, 'left-main-right', 'default'),
(170, 'main', 'mobile_egov'),
(170, 'main-right', 'beauty'),
(170, 'main-right', 'egov'),
(171, 'left-main-right', 'beauty'),
(172, 'left-main-right', 'default'),
(172, 'main', 'mobile_egov'),
(172, 'main-right', 'beauty'),
(172, 'main-right', 'egov'),
(173, 'left-main-right', 'default'),
(173, 'main', 'mobile_egov'),
(173, 'main-right', 'beauty'),
(173, 'main-right', 'egov'),
(174, 'left-main-right', 'default'),
(174, 'main', 'mobile_egov'),
(174, 'main-right', 'beauty'),
(174, 'main-right', 'egov'),
(175, 'left-main-right', 'beauty');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_modules`
--

CREATE TABLE `nv_vi_modules` (
  `title` varchar(50) NOT NULL,
  `module_file` varchar(50) NOT NULL DEFAULT '',
  `module_data` varchar(50) NOT NULL DEFAULT '',
  `module_upload` varchar(50) NOT NULL DEFAULT '',
  `module_theme` varchar(50) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL DEFAULT '',
  `admin_title` varchar(255) NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `theme` varchar(100) DEFAULT '',
  `mobile` varchar(100) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `keywords` text DEFAULT NULL,
  `groups_view` varchar(255) NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` varchar(255) DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_modules`
--

INSERT INTO `nv_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1546504163, 1, 1, '', '', '', '', '6', 2, 1, '2', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1546504163, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1546504163, 1, 1, '', '', '', '', '6', 8, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1546504163, 1, 1, '', '', '', 'online, statistics', '6', 9, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1546504163, 1, 1, '', '', '', '', '6', 10, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1546504163, 1, 1, '', '', '', '', '6', 11, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1546504163, 1, 0, '', '', '', '', '6', 12, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1546504163, 0, 1, '', '', '', '', '6', 13, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1546504163, 1, 1, '', '', '', '', '6', 14, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Dịch vụ', '', '', 1546504163, 1, 1, '', '', '', '', '6', 15, 1, '', 1, 1),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1546504163, 0, 1, '', '', '', '', '6', 16, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1546504163, 1, 1, '', '', '', '', '6', 17, 1, '', 1, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1546504163, 1, 0, '', '', '', '', '6', 18, 1, '', 0, 1),
('laws', 'laws', 'laws', 'laws', 'laws', 'Văn bản', '', '', 1498555574, 1, 1, '', '', '', '', '6', 4, 1, '', 1, 1),
('faq', 'faq', 'faq', 'faq', 'faq', 'Các câu hỏi thường gặp', '', 'Các câu hỏi thường gặp', 1506573330, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1),
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1500862891, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('co-cau-to-chuc', 'organs', 'co_cau_to_chuc', 'co-cau-to-chuc', 'organs', 'Cơ cấu tổ chức', '', '', 1506565073, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('opinions', 'laws', 'opinions', 'opinions', 'laws', 'Lấy ý kiến người dân', '', 'Lấy ý kiến người dân', 1506570476, 1, 1, '', '', '', '', '6', 5, 1, '', 1, 1),
('slider', 'slider', 'slider', 'slider', 'slider', 'Slider', '', '', 1601915844, 0, 1, '', '', '', '', '6', 19, 1, '', 0, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu trung tâm Việt Sơn', '', '', 1601920021, 0, 1, '', '', '', '', '6', 20, 1, '', 0, 0),
('professionals', 'freecontent', 'professionals', 'professionals', 'freecontent', 'Đội ngũ chuyên gia', '', '', 1601992122, 0, 1, '', '', '', '', '6', 21, 1, '', 0, 0),
('course', 'page', 'course', 'course', 'page', 'Khóa học Tennis', '', '', 1602077619, 1, 1, '', '', '', '', '6', 23, 1, '', 1, 1),
('videos', 'videos', 'videos', 'videos', 'videos', 'Videos', '', '', 1601997983, 1, 1, '', '', '', '', '6', 22, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_1`
--

CREATE TABLE `nv_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_1`
--

INSERT INTO `nv_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(13, 1, '1', 0, 1, '', 0, 1601996589, 1604446638, 1, 1, 1601996280, 0, 2, 'KHAI GIẢNG CÁC KHÓA HỌC TRỌN GÓI', 'khai-giang-cac-khoa-hoc-tron-goi', 'Bắt đầu từ ngày 1 - 06 - 2015 khai giảng các khóa học tennis trọn gói như sau:', '2020_10/vieton-trem.jpg', 'viéton trêm', 1, 1, '4', 1, 0, 108, 0, 0, 0, 0, '', 0),
(14, 1, '1', 0, 2, '', 0, 1622781300, 1622781300, 4, 2, 1622781300, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/6947063e-ba85-4016-96b7-bc17930e731c.jpeg', '', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1', 0, 2, '', 0, 1622785475, 1622785475, 4, 3, 1622785475, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/img_1538_1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(18, 1, '1', 0, 2, '', 0, 1622785593, 1622785679, 1, 4, 1622785593, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/img_1538.jpg', '', 1, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(19, 1, '1', 0, 2, '', 0, 1622785765, 1622786244, 1, 5, 1622785765, 0, 2, 'Lớp học tennis căn bản', 'lop-hoc-tennis-can-ban', '', '2021_06/img_1542_1.jpg', '', 1, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(25, 1, '1', 0, 2, '', 0, 1623215959, 1623215959, 1, 6, 1623215959, 0, 2, 'Huấn luyện viên và học viên mới', 'huan-luyen-vien-va-hoc-vien-moi', '', '2021_06/img_1563.jpg', 'IMG 1563', 1, 1, '4', 1, 0, 34, 0, 0, 0, 0, '', 0),
(26, 1, '1', 0, 2, '', 0, 1623216033, 1623216166, 1, 7, 1623216033, 0, 2, 'Trước giờ thi đấu', 'truoc-gio-thi-dau', '', '2021_06/img_1564.jpg', 'IMG 1564', 1, 1, '4', 1, 0, 26, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_2`
--

CREATE TABLE `nv_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_3`
--

CREATE TABLE `nv_vi_news_3` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_5`
--

CREATE TABLE `nv_vi_news_5` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_6`
--

CREATE TABLE `nv_vi_news_6` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_8`
--

CREATE TABLE `nv_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_9`
--

CREATE TABLE `nv_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_10`
--

CREATE TABLE `nv_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_10`
--

INSERT INTO `nv_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_11`
--

CREATE TABLE `nv_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_11`
--

INSERT INTO `nv_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_12`
--

CREATE TABLE `nv_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_12`
--

INSERT INTO `nv_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 13, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_admins`
--

CREATE TABLE `nv_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_admins`
--

INSERT INTO `nv_vi_news_admins` (`userid`, `catid`, `admin`, `add_content`, `pub_content`, `edit_content`, `del_content`, `app_content`) VALUES
(2, 0, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_block`
--

CREATE TABLE `nv_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_block`
--

INSERT INTO `nv_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 13, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_block_cat`
--

CREATE TABLE `nv_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_block_cat`
--

INSERT INTO `nv_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'tin tiêu điểm', 'tin-tieu-diem', '', '', 1, '', 1502444849, 1601995845),
(2, 0, 4, 'Thủ tướng chính phủ', 'thu-tuong-chinh-phu', '', '', 2, '', 1502444862, 1502444862);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_cat`
--

CREATE TABLE `nv_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL,
  `titlesite` varchar(250) DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `descriptionhtml` text DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) NOT NULL DEFAULT '',
  `keywords` text DEFAULT NULL,
  `admins` text DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_cat`
--

INSERT INTO `nv_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin hoạt động', '', 'tin-hoat-dong', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502356995, 1502356995, '6', 1),
(2, 0, 'Chỉ đạo điều hành', '', 'chi-dao-dieu-hanh', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502357340, 1502357340, '6', 2),
(3, 0, 'Thông tin tuyên truyền', '', 'thong-tin-tuyen-truyen', '', '', '', 0, 3, 3, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502358086, 1502358086, '6', 2),
(5, 0, 'Chiến lược - Quy hoạch', '', 'chien-luoc-quy-hoach', '', '', '', 0, 4, 4, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502358445, 1502358445, '6', 1),
(6, 0, 'Kế hoạch', '', 'ke-hoach', '', '', '', 0, 5, 5, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502358532, 1502358532, '6', 1),
(8, 0, 'Công trình - Đề tài', '', 'cong-trinh-de-tai', '', '', '', 0, 6, 6, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502358729, 1502358729, '6', 1),
(9, 0, 'Thông tin Thống kê', '', 'thong-tin-thong-ke', '', '', '', 0, 7, 7, 0, 'viewcat_page_new', 0, '', 1, 2, 0, '', '', '', 1502358797, 1502358797, '6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_config_post`
--

CREATE TABLE `nv_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_config_post`
--

INSERT INTO `nv_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_detail`
--

CREATE TABLE `nv_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `sourcetext` varchar(255) DEFAULT '',
  `files` text DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_detail`
--

INSERT INTO `nv_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(13, '', '', 'khoá học tennis can ban 30 buổi tuỳ theo số lượng học viên có thế &nbsp; nhiều hoặc ít hơn .thời gian. thứ 246.hoac thứ 357.hoc phí &nbsp;250k &nbsp;1hoac 2 học viên trên 2 học viên 300k. liên hệ.0931017704 gặp anh Sơn', '', '', '', 2, '', 0, 1, 1, 1),
(14, '', '', '<div style=\"text-align:center\"><img alt=\"\" height=\"404\" src=\"/uploads/news/2021_06/6947063e-ba85-4016-96b7-bc17930e731c.jpeg\" width=\"720\" /></div>\r\n<img alt=\"\" height=\"1067\" src=\"/uploads/news/2021_06/b4323552-a88f-4999-874b-1fd80dced16f.jpeg\" width=\"1280\" />', '', '', '', 2, '', 0, 1, 1, 1),
(17, '', '', '<div style=\"text-align:center\"><img alt=\"\" height=\"404\" src=\"/uploads/news/2021_06/img_1538_1.jpg\" width=\"720\" /></div>\r\n<br />\r\n<img alt=\"\" height=\"1067\" src=\"/uploads/news/2021_06/img_1539_1.jpg\" width=\"1280\" />', '', '', '', 2, '', 0, 1, 1, 1),
(18, '', '', '<span style=\"font-size:14px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Lớp học tennis thiếu nhi căn bản nhận học viên mỗi ngày trong tuần.</span></span>\r\n<div style=\"text-align:center\"><img alt=\"\" height=\"1067\" src=\"/uploads/news/2021_06/img_1539_2.jpg\" width=\"1280\" /></div>', '', '', '', 2, '', 0, 1, 1, 1),
(19, '', '', 'Lớp học tennis căn bản', '', '', '', 2, '', 0, 1, 1, 1),
(25, '', '', '<div style=\"text-align:center\"><img alt=\"\" height=\"810\" src=\"/uploads/news/2021_06/img_1563_1.jpg\" width=\"1080\" /></div>\r\n&nbsp;', '', '', '', 0, '', 0, 1, 1, 1),
(26, '', '', 'Trước giờ thi đấu<br />\r\n<img alt=\"\" height=\"810\" src=\"/uploads/news/2021_06/img_1564_2.jpg\" style=\"float:left\" width=\"1080\" />', '', '', '', 0, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_logs`
--

CREATE TABLE `nv_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_rows`
--

CREATE TABLE `nv_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_rows`
--

INSERT INTO `nv_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(13, 1, '1', 0, 1, '', 0, 1601996589, 1604446638, 1, 1, 1601996280, 0, 2, 'KHAI GIẢNG CÁC KHÓA HỌC TRỌN GÓI', 'khai-giang-cac-khoa-hoc-tron-goi', 'Bắt đầu từ ngày 1 - 06 - 2015 khai giảng các khóa học tennis trọn gói như sau:', '2020_10/vieton-trem.jpg', 'viéton trêm', 1, 1, '4', 1, 0, 108, 0, 0, 0, 0, '', 0),
(14, 1, '1', 0, 2, '', 0, 1622781300, 1622781300, 4, 2, 1622781300, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/6947063e-ba85-4016-96b7-bc17930e731c.jpeg', '', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1', 0, 2, '', 0, 1622785475, 1622785475, 4, 3, 1622785475, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/img_1538_1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(18, 1, '1', 0, 2, '', 0, 1622785593, 1622785679, 1, 4, 1622785593, 0, 2, 'Lớp học thiếu nhi căn bản', 'lop-hoc-thieu-nhi-can-ban', '', '2021_06/img_1538.jpg', '', 1, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(19, 1, '1', 0, 2, '', 0, 1622785765, 1622786244, 1, 5, 1622785765, 0, 2, 'Lớp học tennis căn bản', 'lop-hoc-tennis-can-ban', '', '2021_06/img_1542_1.jpg', '', 1, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(25, 1, '1', 0, 2, '', 0, 1623215959, 1623215959, 1, 6, 1623215959, 0, 2, 'Huấn luyện viên và học viên mới', 'huan-luyen-vien-va-hoc-vien-moi', '', '2021_06/img_1563.jpg', 'IMG 1563', 1, 1, '4', 1, 0, 34, 0, 0, 0, 0, '', 0),
(26, 1, '1', 0, 2, '', 0, 1623216033, 1623216166, 1, 7, 1623216033, 0, 2, 'Trước giờ thi đấu', 'truoc-gio-thi-dau', '', '2021_06/img_1564.jpg', 'IMG 1564', 1, 1, '4', 1, 0, 26, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_sources`
--

CREATE TABLE `nv_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_news_sources`
--

INSERT INTO `nv_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'baochinhphu.vn', 'http://baochinhphu.vn', '', 1, 1502357163, 1502357163),
(2, 'mic.gov.vn', '', '', 2, 1502357918, 1502357918),
(3, 'ictnews.vn', 'http://ictnews.vn', '', 3, 1502358170, 1502358170),
(4, 'aita.gov.vn', 'http://aita.gov.vn', '', 4, 1502358287, 1502358287);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_tags`
--

CREATE TABLE `nv_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_tags_id`
--

CREATE TABLE `nv_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_tmp`
--

CREATE TABLE `nv_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_news_topics`
--

CREATE TABLE `nv_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_admins`
--

CREATE TABLE `nv_vi_opinions_admins` (
  `userid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `subjectid` smallint(4) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_area`
--

CREATE TABLE `nv_vi_opinions_area` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_area`
--

INSERT INTO `nv_vi_opinions_area` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `addtime`, `weight`) VALUES
(1, 0, 'Giao-duc-1', 'Giáo dục', '', '', 1412265295, 1),
(2, 0, 'Phap-quy-2', 'Pháp quy', '', '', 1412265295, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_cat`
--

CREATE TABLE `nv_vi_opinions_cat` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_cat`
--

INSERT INTO `nv_vi_opinions_cat` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `newday`, `addtime`, `weight`) VALUES
(1, 0, 'Cong-van', 'Công văn', '', '', 5, 1412265295, 1),
(2, 0, 'Thong-tu', 'Thông tư', '', '', 5, 1412265295, 2),
(3, 0, 'Quyet-dinh', 'Quyết định', '', '', 5, 1412265295, 3),
(4, 0, 'Nghi-dinh', 'Nghị định', '', '', 5, 1412265295, 4),
(5, 0, 'Thong-bao', 'Thông báo', '', '', 5, 1412998152, 5),
(6, 0, 'Huong-dan', 'Hướng dẫn', '', '', 5, 1412998170, 6),
(7, 0, 'Bao-cao', 'Báo cáo', '', '', 5, 1412998182, 7),
(8, 0, 'Chi-thi', 'Chỉ thị', '', '', 5, 1412998193, 8),
(9, 0, 'Ke-hoach', 'Kế hoạch', '', '', 5, 1412998208, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_config`
--

CREATE TABLE `nv_vi_opinions_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_config`
--

INSERT INTO `nv_vi_opinions_config` (`config_name`, `config_value`) VALUES
('nummain', '50'),
('numsub', '50'),
('typeview', '0'),
('down_in_home', '1'),
('detail_other', 'a:1:{i:0;s:3:\"cat\";}'),
('detail_hide_empty_field', '1'),
('detail_show_link_cat', '1'),
('detail_show_link_area', '1'),
('detail_show_link_subject', '1'),
('detail_show_link_signer', '1'),
('detail_pdf_quick_view', '1'),
('other_numlinks', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_examine`
--

CREATE TABLE `nv_vi_opinions_examine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_row`
--

CREATE TABLE `nv_vi_opinions_row` (
  `id` int(10) NOT NULL,
  `replacement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relatement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `approval` tinyint(1) DEFAULT NULL,
  `sgid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `publtime` int(11) NOT NULL DEFAULT 0,
  `start_comm_time` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `end_comm_time` int(11) DEFAULT NULL,
  `startvalid` int(11) NOT NULL DEFAULT 0,
  `exptime` int(11) NOT NULL DEFAULT 0,
  `view_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_add` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_edit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_row`
--

INSERT INTO `nv_vi_opinions_row` (`id`, `replacement`, `relatement`, `title`, `alias`, `code`, `cid`, `sid`, `approval`, `sgid`, `note`, `introtext`, `bodytext`, `keywords`, `groups_view`, `groups_download`, `files`, `status`, `addtime`, `edittime`, `publtime`, `start_comm_time`, `eid`, `end_comm_time`, `startvalid`, `exptime`, `view_hits`, `download_hits`, `admin_add`, `admin_edit`) VALUES
(1, '', '', 'Dự thảo Thông tư quy định tiêu chuẩn chức danh nghề nghiệp viên chức tư vấn viên dịch vụ việc làm', 'Du-thao-Thong-tu-quy-dinh-tieu-chuan-chuc-danh-nghe-nghiep-vien-chuc-tu-van-vien-dich-vu-viec-lam-1', '&#x002F;2017&#x002F;TT-BLĐTB&amp;XH', 2, 5, NULL, 1, '', 'Bộ Lao động - Thương binh và Xã hội đang soạn thảo dự thảo Thông tư quy định tiêu chuẩn chức danh nghề nghiệp viên chức tư vấn viên dịch vụ việc làm. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến', '', 'lao động,thương binh,xã hội,soạn thảo,thông tư,quy định,tiêu chuẩn,nghề nghiệp,viên chức,tư vấn,việc làm,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506571390, 1506571490, 0, 1504198800, NULL, 1514653200, 0, 0, 11, 5, 1, 1),
(2, '', '', 'Dự thảo Luật đơn vị hành chính - kinh tế đặc biệt', 'Du-thao-Luat-don-vi-hanh-chinh-kinh-te-dac-biet-2', '&#x002F;2017&#x002F;BKH&amp;DT', 2, 2, NULL, 5, '', 'Bộ Kế hoạch và Đầu tư đang soạn thảo dự thảo Luật đơn vị hành chính - kinh tế đặc biệt. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'kế hoạch,soạn thảo,đơn vị,kinh tế,đặc biệt,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506571915, 0, 0, 0, NULL, 0, 0, 0, 5, 3, 1, 0),
(3, '', '', 'Dự thảo Thông tư Sửa đổi Thông tư số 279&#x002F;2016&#x002F;TT-BTC ngày 14&#x002F;11&#x002F;2016 của Bộ Tài chính quy định mức thu, chế độ thu, nộp, quản lý và sử dụng phí trong công tác an toàn vệ sinh thực phẩm', 'Du-thao-Thong-tu-Sua-doi-Thong-tu-so-279-2016-TT-BTC-ngay-14-11-2016-cua-Bo-Tai-chinh-quy-dinh-muc-thu-che-do-thu-nop-quan-ly-va-su-dung-phi-trong-cong-tac-an-toan-ve-sinh-thuc-pham-3', '279&#x002F;2016&#x002F;TT-BTC', 1, 3, NULL, 1, '', 'Bộ Tài chính đang soạn thảo dự thảo Thông tư Sửa đổi Thông tư số 279&#x002F;2016&#x002F;TT-BTC ngày 14&#x002F;11&#x002F;2016  của Bộ Tài chính quy định mức thu, chế độ thu, nộp, quản lý  và sử dụng phí trong công tác an toàn vệ sinh thực phẩm. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'tài chính,soạn thảo,thông tư,sửa đổi,quy định,chế độ,quản lý,sử dụng,công tác,an toàn,vệ sinh,thực phẩm,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506572019, 1506572047, 0, 1504198800, NULL, 0, 0, 0, 7, 5, 1, 1),
(4, '', '', 'Dự thảo Nghị định quy định việc sắp xếp lại tài sản công', 'Du-thao-Nghi-dinh-quy-dinh-viec-sap-xep-lai-tai-san-cong-4', '279&#x002F;2016&#x002F;TT-BTC', 4, 3, NULL, 5, '', 'Bộ Tài chính đang soạn thảo dự thảo Thông tư Sửa đổi Thông tư số 279&#x002F;2016&#x002F;TT-BTC ngày 14&#x002F;11&#x002F;2016  của Bộ Tài chính quy định mức thu, chế độ thu, nộp, quản lý  và sử dụng phí trong công tác an toàn vệ sinh thực phẩm. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'tài chính,soạn thảo,thông tư,sửa đổi,quy định,chế độ,quản lý,sử dụng,công tác,an toàn,vệ sinh,thực phẩm,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506572225, 0, 0, 0, NULL, 1519750800, 0, 0, 7, 4, 1, 0),
(5, '', '', 'Dự thảo Nghị định sửa đổi, bổ sung một số quy định về cán bộ, công chức và người hoạt động không chuyên trách ở xã, phường, thị trấn', 'Du-thao-Nghi-dinh-sua-doi-bo-sung-mot-so-quy-dinh-ve-can-bo-cong-chuc-va-nguoi-hoat-dong-khong-chuyen-trach-o-xa-phuong-thi-tran-5', '&#x002F;2017&#x002F;BNV', 4, 6, NULL, 5, '', 'Bộ Nội vụ đang soạn thảo dự thảo Nghị định sửa đổi, bổ sung một số quy định về cán bộ, công chức và người hoạt động không chuyên trách ở xã, phường, thị trấn. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'nội vụ,soạn thảo,nghị định,sửa đổi,bổ sung,quy định,cán bộ,hoạt động,chuyên trách,thị trấn,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506572426, 1506572464, 0, 1496250000, NULL, 1517418000, 0, 0, 9, 5, 1, 1),
(6, '', '', 'Dự thảo Thông tư sửa đổi, bổ sung một số điều của Thông tư 36&#x002F;2014&#x002F;TT-NHNN ngày 20&#x002F;11&#x002F;2014 của Thống đốc Ngân hàng Nhà nước quy định các giới hạn, tỷ lệ bảo đảm an toàn trong hoạt động của TCTD, chi nhánh ngân hàng nước ngoài', 'Du-thao-Thong-tu-sua-doi-bo-sung-mot-so-dieu-cua-Thong-tu-36-2014-TT-NHNN-ngay-20-11-2014-cua-Thong-doc-Ngan-hang-Nha-nuoc-quy-dinh-cac-gioi-han-ty-le-bao-dam-an-toan-trong-hoat-dong-cua-TCTD-chi-nhanh-ngan-hang-nuoc-ngoai-6', '36&#x002F;2014&#x002F;TT-NHNN', 2, 3, 0, 5, '', 'Ngân hàng Nhà nước đang soạn thảo dự thảo Thông tư sửa đổi, bổ sung một số điều của Thông tư 36&#x002F;2014&#x002F;TT-NHNN ngày 20&#x002F;11&#x002F;2014 của Thống đốc Ngân hàng Nhà nước quy định các giới hạn, tỷ lệ bảo đảm an toàn trong hoạt động của TCTD, chi nhánh ngân hàng nước ngoài. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'ngân hàng,nhà nước,soạn thảo,thông tư,sửa đổi,bổ sung,thống đốc,quy định,giới hạn,tỷ lệ,bảo đảm,an toàn,hoạt động,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506572619, 1510830862, 0, 1504198800, 0, 1538240400, 0, 0, 4, 4, 1, 1),
(7, '', '', 'Dự thảo Thông tư hướng dẫn phòng và xử trí phản vệ', 'Du-thao-Thong-tu-huong-dan-phong-va-xu-tri-phan-ve-7', '&#x002F;2017&#x002F;BYT', 2, 4, 0, 5, '', 'Bộ Y tế đang soạn thảo dự thảo Thông tư hướng dẫn phòng và xử trí phản vệ. Cổng TTĐT Chính phủ xin giới thiệu toàn văn và đề nghị các cơ quan, tổ chức, cá nhân trong và ngoài nước nghiên cứu, đóng góp ý kiến.', '', 'y tế,soạn thảo,thông tư,hướng dẫn,xử trí,giới thiệu,đề nghị,cơ quan,tổ chức,cá nhân,nghiên cứu', '6', '6', 'demo.pdf', 1, 1506572792, 1510830855, 0, 1483203600, 0, 1504198800, 0, 0, 7, 3, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_row_area`
--

CREATE TABLE `nv_vi_opinions_row_area` (
  `row_id` int(10) UNSIGNED NOT NULL,
  `area_id` smallint(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_row_area`
--

INSERT INTO `nv_vi_opinions_row_area` (`row_id`, `area_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_set_replace`
--

CREATE TABLE `nv_vi_opinions_set_replace` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `oid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_signer`
--

CREATE TABLE `nv_vi_opinions_signer` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_signer`
--

INSERT INTO `nv_vi_opinions_signer` (`id`, `title`, `offices`, `positions`, `addtime`) VALUES
(1, 'Phạm Vũ Luận', '', 'Bộ trưởng', 1412265295),
(2, 'Bùi Văn Ga', '', 'Thứ trưởng', 1412265295),
(3, 'Nguyễn Thị Nghĩa', '', 'Thứ trưởng', 1412265295),
(4, 'Nguyễn Vinh Hiển', '', 'Thứ trưởng', 1412265295),
(5, 'Khác', '', '', 1412265295);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_opinions_subject`
--

CREATE TABLE `nv_vi_opinions_subject` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcount` int(10) NOT NULL DEFAULT 0,
  `numlink` tinyint(2) NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_opinions_subject`
--

INSERT INTO `nv_vi_opinions_subject` (`id`, `alias`, `title`, `introduction`, `keywords`, `numcount`, `numlink`, `addtime`, `weight`) VALUES
(1, 'Bo-GD-DT', 'Bộ GD&amp;ĐT', '', '', 1, 5, 1412265295, 1),
(2, 'Bo-Ke-hoach-va-Dau-tu', 'Bộ Kế hoạch và Đầu tư', '', '', 1, 5, 1412265295, 2),
(3, 'Bo-tai-chinh', 'Bộ tài chính', '', '', 3, 5, 1412265295, 3),
(4, 'Khac', 'Khác', '', '', 1, 5, 1412265295, 6),
(5, 'Phong-LDTB-XH', 'Phòng LĐTB&amp;XH', '', '', 1, 5, 1506571413, 4),
(6, 'Bo-noi-vu', 'Bộ nội vụ', '', '', 1, 5, 1506572448, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_page`
--

CREATE TABLE `nv_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_page`
--

INSERT INTO `nv_vi_page` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(6, 'KỸ THUẬT TENNIS HIỆN ĐẠI VÀ ĐẸP MẮT', 'KY-THUAT-TENNIS-HIEN-DAI-VA-DEP-MAT', 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;', 0, 'Khi tập tennis tại trung tâm tennis trungtamtennis.vn, bạn sẽ được học theo giáo trình quốc tế mới nhất, với các kỹ thuật được cập nhật liên tục theo xu thế của thế giới, do đó bạn sẽ có được kỹ thuật hiện đại và đẹp mắt sau khi kết thúc khóa học.', 'Khi tập tennis tại trung tâm tennis trungtamtennis.vn, bạn sẽ được học theo giáo trình quốc tế mới nhất, với các kỹ thuật được cập nhật liên tục theo xu thế của thế giới, do đó bạn sẽ có được kỹ thuật hiện đại và&nbsp;đẹp mắt sau khi kết thúc khóa học.', 'kỹ thuật,hiện đại', 1, '4', '', 1, 1, 1601991654, 1604878910, 1, 150, 0),
(7, 'NHANH CHÓNG THÀNH TÀI', 'NHANH-CHONG-THANH-TAI', 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;', 0, '.Các nơi khác học phí có thể thấp hơn nhưng thời gian tiến bộ sẽ lâu hơn và quan trọng nhất là kỹ thuật đánh tennis của học viên sau khi hoàn thành khóa học không hoàn thiện, đặc biệt là khả năng di chuyển kém, dẫn tới hệ quả là khi thi đấu thường bị vội hoặc di chuyển không hợp lý dẫn đến đánh hỏng và nguyên nhân thường là do người dạy chỉ có kỹ năng đánh tốt mà không có giáo trình, giáo án và phương pháp sư phạm chuẩn. Điều này không bao giờ xảy ra tại  trungtamtennis.vn vì với giáo trình cập nhật liên tục, giáo án cụ thể cho từng học viên, cộng với giáo viên nhiều kinh nghiệm, có khả năng sư phạm tốt, bạn sẽ tiếp thu các kỹ thuật tennis hoàn chỉnh, đẹp mắt, cũng như chiến thuật tennis chuẩn một cách nhanh chóng để có thể ra thi đấu tốt và giành nhiều thắng lợi.', '.Các nơi khác học phí có thể thấp hơn nhưng thời gian tiến bộ sẽ lâu hơn và&nbsp;quan trọng nhất là kỹ thuật đánh tennis của học viên sau khi hoàn thành khóa học&nbsp;không hoàn thiện, đặc biệt là khả năng di chuyển kém, dẫn tới hệ quả là khi thi đấu thường bị vội hoặc di chuyển không hợp lý dẫn đến đánh hỏng và nguyên nhân thường là do người dạy chỉ có kỹ năng&nbsp;đánh tốt mà không có giáo trình, giáo án và phương pháp sư phạm chuẩn. Điều này không bao&nbsp;giờ xảy ra tại&nbsp; trungtamtennis.vn vì với giáo trình cập&nbsp;nhật liên tục, giáo án cụ thể cho từng học viên,&nbsp;cộng với giáo viên nhiều kinh nghiệm, có khả năng sư phạm&nbsp;tốt, bạn sẽ tiếp thu các kỹ thuật tennis hoàn chỉnh, đẹp mắt, cũng như&nbsp;chiến thuật tennis chuẩn một cách&nbsp;nhanh chóng để có thể ra thi đấu tốt và giành nhiều thắng lợi.', 'nhanh chóng', 1, '4', '', 2, 1, 1601991675, 1604878922, 1, 78, 0),
(8, 'CHI PHÍ BAN ĐẦU THẤP', 'CHI-PHI-BAN-DAU-THAP', 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;', 0, '.Chi phí ban đầu của người tập tennis thường bao gồm tiền mua vợt, giầy, quần áo rồi tiền thuê sân và học phí. Trong các chi phí đó thì tiền mua vợt là một trong những chi phí ban đầu lớn nhất mà bạn cần phải chi, với vợt mới là từ 2,5 – hơn 3 triệu đồng, thậm chí hơn 4 triệu đồng, và đó có thể là rào cản ngăn bạn đến với tennis. Khác với đa số các thầy dạy khác bắt bạn phải tự mua vợt trước khi tập, trungtamtennis.vn sẽ giúp bạn giải quyết vấn đề này bằng cách cho mượn vợt trong suốt khóa học tennis tại trung tâm.', '.Chi&nbsp;phí ban đầu của người tập tennis thường bao gồm tiền mua vợt, giầy,&nbsp;quần áo rồi tiền thuê sân và học phí. Trong các chi phí đó thì tiền mua&nbsp;vợt là một trong những chi phí&nbsp;ban đầu lớn nhất mà bạn cần&nbsp;phải chi, với vợt mới là từ 2,5 – hơn 3 triệu đồng, thậm chí hơn 4&nbsp;triệu đồng, và đó có thể là rào cản ngăn bạn đến với tennis. Khác với đa số các thầy dạy khác bắt bạn phải tự mua vợt trước khi tập, trungtamtennis.vn sẽ giúp bạn giải quyết vấn đề này bằng cách&nbsp;cho mượn vợt trong suốt khóa học tennis tại trung tâm.', 'chi phí,ban đầu', 1, '4', '', 3, 1, 1601991697, 1604878945, 1, 92, 0),
(9, 'ĐỊA ĐIỂM HỌC LÝ TƯỞNG', 'DIA-DIEM-HOC-LY-TUONG', 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;', 0, '.Trung tâm trungtamtennis.vn sẽ bố trí sân tập tennis thuận tiện nhất cho bạn, tránh việc phải di chuyển quá xa khi đến sân. Xem thêm', '&nbsp;trungtamtennis.vn sẽ bố trí sân tập tennis thuận tiện nhất cho bạn, tránh việc phải di chuyển quá xa khi đến sân. Xem thêm', 'địa điểm', 1, '4', '', 4, 1, 1601991714, 1604878963, 1, 87, 0),
(10, 'LỚP HỌC VUI – CHẤT LƯỢNG CAO', 'LOP-HOC-VUI-CHAT-LUONG-CAO', 'ruxnodc1mzuzmjy.jpg', 'RUxNODc1MzUzMjY&#x3D;', 0, 'trungtamtennis.vn thường mở các lớp từ 4-6 người, như vậy bạn sẽ giảm được chi phí ban đầu (tiền thuê sân cố định sẽ được chia đều theo đầu người, như vậy càng đông sẽ càng rẻ), được quen thêm nhiều bạn chơi, lớp học vui vẻ, và sau khi hoàn thành khóa học các học viên sẽ có 1 nhóm chơi thân nhau luôn. Chúng tôi tự hào là với giáo trình, giáo án chuẩn và khả năng sư phạm của giáo viên, lớp học tennis tại trungtamtennis.vn tuy đông nhưng chất lượng thì luôn được đảm bảo ở mức cao nhất. Đây là sự khác biệt lớn nhất so với các nơi dạy tennis khác.', 'trungtamtennis.vn thường mở các lớp từ 4-6 người, như vậy bạn sẽ&nbsp;giảm được chi phí ban đầu (tiền thuê sân cố định sẽ được chia đều theo&nbsp;đầu người, như vậy càng đông sẽ càng rẻ), được quen thêm nhiều bạn&nbsp;chơi, lớp học vui vẻ, và sau khi hoàn thành khóa học các học viên sẽ có&nbsp;1 nhóm chơi thân nhau luôn. Chúng tôi tự hào là với giáo trình, giáo án&nbsp;chuẩn và khả năng sư phạm của giáo viên, lớp học tennis tại trungtamtennis.vn tuy đông nhưng chất lượng thì luôn được đảm bảo ở mức cao&nbsp;nhất. Đây là sự khác biệt lớn nhất so với các nơi dạy tennis khác.', 'lớp học', 1, '4', '', 5, 1, 1601995931, 1604878977, 1, 89, 0),
(11, 'THỜI GIAN HỌC ĐA DẠNG', 'THOI-GIAN-HOC-DA-DANG', 'image-service5.png', '', 0, '.Bạn sẽ được sắp xếp học theo nhu cầu của mình sao cho không ảnh hưởng nhiều đến gia đình, công việc và chi phí hợp lý. Chúng tôi có rất nhiều khóa học với các khung giờ khác nhau như ngoài giờ hành chính (trước 8:00 và sau 17:00), trong giờ hành chính (từ 8:00 – 17:00). Lưu ý, nếu bạn tập trong giờ hành chính thì chi phí thuê sân sẽ rẻ hơn nhiều so với tập ngoài giờ hành chính.', '.Bạn&nbsp;sẽ được sắp xếp học theo nhu cầu của mình sao cho không ảnh hưởng nhiều&nbsp;đến gia đình, công việc và chi phí hợp lý. Chúng tôi có rất nhiều khóa&nbsp;học với các khung giờ khác nhau như ngoài giờ hành chính (trước 8:00 và&nbsp;sau 17:00), trong giờ hành chính (từ 8:00 – 17:00). Lưu ý, nếu bạn tập&nbsp;trong giờ hành chính thì chi phí thuê sân sẽ rẻ hơn nhiều so với tập&nbsp;ngoài giờ hành chính.', 'thời gian', 1, '4', '', 6, 1, 1601995949, 1602065727, 1, 108, 0),
(12, 'ĐA DẠNG CÁC KHÓA HỌC TENNIS', 'DA-DANG-CAC-KHOA-HOC-TENNIS', 'image-service5.png', '', 0, 'Chúng tôi hiểu rằng bạn, một người chơi tennis, sẽ luôn muốn được tiến bộ để giành nhiều chiến thắng hơn, do đó chúng tôi cung cấp rất đa dạng các khóa học tennis, từ cơ bản tới nâng cao, học riêng và học theo nhóm để bạn luôn có thể tập bất kỳ lúc nào muốn nâng cao trình độ tennis của mình.', 'Chúng tôi hiểu rằng bạn, một người chơi tennis, sẽ luôn muốn được tiến bộ để giành nhiều chiến thắng hơn, do đó chúng tôi cung cấp rất đa dạng các khóa học tennis, từ cơ bản tới nâng cao, học riêng và học theo nhóm để bạn luôn có thể tập bất kỳ lúc nào muốn nâng cao trình độ tennis của mình.', '', 1, '4', '', 7, 1, 1601995971, 1602065798, 1, 72, 0),
(13, 'TƯ VẤN MIỄN PHÍ', 'TU-VAN-MIEN-PHI', 'image-service5.png', '', 0, 'Với đội ngũ giáo viên giàu kinh nghiệm và rất nhiệt tình, bạn sẽ được tư vấn mua giầy, trang phục tennis và tư vấn, hỗ trợ mua vợt phù hợp với thể trạng, kỹ thuật tennis và lối đánh, với chi phí hợp lý nhất sau khi bạn kết thúc khóa học tennis tại trungtamtennis.vn. Ngoài ra chúng tôi cũng có box mua bán vợt tennis cũ  cho các bạn muốn mua vợt tennis tốt với giá rẻ.', '.Với đội ngũ giáo viên giàu kinh nghiệm và rất nhiệt tình, bạn sẽ được tư vấn mua giầy, trang phục tennis và tư vấn, hỗ trợ mua vợt phù hợp với thể trạng, kỹ thuật tennis và lối đánh, với chi phí hợp lý nhất sau khi bạn kết thúc khóa học tennis tại trungtamtennis.vn. Ngoài ra chúng tôi cũng có box mua bán vợt tennis cũ &nbsp;cho các bạn muốn mua vợt tennis tốt với giá rẻ.', 'tư vấn', 1, '4', '', 8, 1, 1601995986, 1602065879, 1, 58, 0),
(14, 'GIAO LƯU GIỮA CÁC LỚP HỌC TENNIS', 'GIAO-LUU-GIUA-CAC-LOP-HOC-TENNIS', 'image-service5.png', '', 0, 'Chúng tôi hiểu rằng giao lưu tennis là một trong những mục tiêu của người tập tennis để nâng cao trình độ tennis và mở rộng quan hệ, do đó Hoctennis.net thường xuyên tổ chức các buổi giao lưu tennis giữa các lớp học tennis tại trung tâm. Đây là điểm đặc biệt chỉ có tại trung tâm Hoctennis.net. Do tại một thời điểm có nhiều lớp học diễn ra tại trung tâm, chúng tôi sẽ bố trí giao lưu tennis giữa các lớp dựa theo sự đánh giá của giáo viên về trình độ của các học viên cũng như thời gian học của các lớp tennis. Xem thêm ảnh giao lưu tennis  giữa 2 lớp tennis cơ bản tại trung tâm của chúng tôi.', '.Chúng tôi hiểu rằng giao lưu tennis là một trong những mục tiêu của người tập tennis để nâng cao trình độ tennis và mở rộng quan hệ, do đó Hoctennis.net thường xuyên tổ chức các buổi giao lưu tennis giữa các lớp học tennis tại trung tâm. Đây là điểm đặc biệt chỉ có tại trung tâm Hoctennis.net. Do tại một thời điểm có nhiều lớp học diễn ra tại trung tâm, chúng tôi sẽ bố trí giao lưu tennis giữa các lớp dựa theo sự đánh giá của giáo viên về trình độ của các học viên cũng như thời gian học của các lớp tennis. Xem thêm ảnh giao lưu tennis &nbsp;giữa 2 lớp tennis cơ bản tại trung tâm của chúng tôi.', 'giao lưu,lớp học', 1, '4', '', 9, 1, 1601996015, 1602065922, 1, 67, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_page_config`
--

CREATE TABLE `nv_vi_page_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_page_config`
--

INSERT INTO `nv_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_professionals_blocks`
--

CREATE TABLE `nv_vi_professionals_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_professionals_blocks`
--

INSERT INTO `nv_vi_professionals_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Khách hàng dánh giá trung tâm', ''),
(2, 'Huấn Luyện Viên', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_professionals_rows`
--

CREATE TABLE `nv_vi_professionals_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_professionals_rows`
--

INSERT INTO `nv_vi_professionals_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Nguyễn Hoàng', '&quot; Trước kia tôi đã liên hệ nhiều nơi để học tennis nhưng không có chỗ nào gần nhà cả. Nhờ một người bạn giới thiệu tôi đã liên hệ với trung tâm và tìm được lớp học gần nhà. Các thầy ở đây dạy rất nhiệt tình và vui vẻ. Bài tập dễ hiểu và vui nhộn nên hôm nào đi tập cũng rất vui. Chúc trung tâm ngày càng phát triển !!! &quot;', '', '', '2b2e8a18843a7f64262b-725x725.jpg', 1604877167, 0, 1),
(2, 2, 'Trung Tâm Việt Sơn', '30 năm kinh nghiệm giảng dạy tennis', '', '', '0ae7852b3adbc4859dca-139x245.jpg', 1604418589, 0, 1),
(5, 1, 'Nguyễn Huân', '&quot; Tôi đã chơi tennis được 4 năm nhưng sai rất nhiều kỹ thuật cơ bản nên đánh mãi không lên tay. Sau khi tham gia vào khóa học nâng cao tại trung tâm tôi đã hoàn thiện hơn rất nhiều. HLV không chỉ dạy tôi về kỹ thuật mà còn chỉ cho tôi cách để rèn luyện tâm lý vững vàng. Giờ đây tôi có thể tự tin đi giao lưu và đánh giải. Thật sự cám ơn trung tâm rất nhiều !&quot;', '', '', '11058069_822289434510225_1635129924412990146_n.jpg', 1604877320, 0, 1),
(6, 1, 'Kim Thanh', '&quot; Ban đầu thấy thông tin trên mạng tôi cũng hơi lo lắng nhưng khi đến sân và tham gia khóa học thì tôi thấy sân bãi sạch đẹp, HLV vui vẻ nhiệt tình, cách dạy rất dễ hiểu, chăm sóc khách hàng cũng rất tốt. Chấm cho trung tâm 10 điểm về chất lượng và dịch vụ. Chúc cho trung tâm ngày càng vững mạnh và phát triển để có thêm nhiều khóa học hữu ích.&quot;', '', '', '70587424_2216177058681637_2195047881067462656_n.jpg', 1604877428, 0, 1),
(7, 1, 'Ngân Thu Thu', 'Mình rất hài lòng về chất lượng và dịch vụ của trung tâm , các thầy dạy rất vui vẻ và nhiệt tình lại còn được mượn vợt tập và rất nhiều dụng cụ khác. Cám ơn trung tâm đã cho em những buổi học đầy thú vị. Chúc trung tâm ngày càng thành công hơn nữa', '', '', '48112645_151667862468108_4942576844441387008_n.jpg', 1604877719, 0, 1),
(8, 1, 'Meo TV', 'Mình đã học xong khoá cơ bản tại trung tâm và đã tham gia hội chơi đc 2 tháng. Ra sân bạn bè ai cũng khen mình đánh đẹp nên thích lắm. Cám ơn các thầy tại trung tâm đã chỉ dạy mình nhiệt tình. Chúc trung tâm ngày càng phát triển và có nhiều học viên mới hihi !!!!', '', '', '94330236_131414321811769_1694092159906480128_o.jpg', 1604877972, 0, 1),
(9, 1, 'Duy Anh Phương Dao', 'Mình là học viên đã từng học qua tennis căn bản nhưng cảm thấy thất vọng vì kỹ thuật căn bản bị sai. Biết đến trungtamtennis.vn thông qua fan page trên Facebook với hi vọng là sẽ cải thiện được những lỗi sai đang mắc phải , quả thật kết quả ngoài mong đợi khi được HLV tại trung tâm hướng dẫn tận tình và khắc phục được triệt để vấn đề kỹ thuật sai đang mắc phải. Bên cạnh đó, việc linh hoạt trong sắp xếp giờ học , sân tập tạo cho học viên sự thoải mái khi theo học cũng như linh động nhất có thể. Điểm ưng ý nhất là HLV cực kỳ tâm huyết , chuyên nghiệp và có sự chuẩn bị kỹ lưỡng về giáo trình phù hợp với trình độ của từng học viên khác nhau. Tâm huyết của HLV khiến cho mình cảm thấy cực kỳ hứng thú với từng buổi tập và tự tin hơn với bộ môn đòi hỏi sự kiên trì khéo léo và giàu tính thể lực này.', '', '', '117392494_1365457303644795_1549462266218863114_n.jpg', 1604878323, 0, 1),
(13, 2, 'Trung tâm Việt Sơn', 'Trên 40 năm kinh nghiệm', '', '', '034861b38252700c2943_436_245-108x165_139_212_161_245-135x245.jpg', 1630939192, 0, 1),
(11, 2, 'Trung tâm Việt Sơn', 'Trên 40 năm Kinh Nghiệm', '', '', 'z2740783568849_f343ddecfe135f4bd2f5576834341b16-314x490_192_300.jpg', 1630939404, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_referer_stats`
--

CREATE TABLE `nv_vi_referer_stats` (
  `host` varchar(250) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_referer_stats`
--

INSERT INTO `nv_vi_referer_stats` (`host`, `total`, `month01`, `month02`, `month03`, `month04`, `month05`, `month06`, `month07`, `month08`, `month09`, `month10`, `month11`, `month12`, `last_update`) VALUES
('mail-tester.com', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1500888181),
('ami.responsivedesign.is', 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1502702492),
('l.facebook.com', 5, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 1604896033),
('localhost', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1503128875),
('google.com', 434, 8, 5, 10, 36, 28, 47, 22, 58, 77, 21, 117, 5, 1634057061),
('google.com.vn', 28, 2, 0, 2, 2, 2, 6, 2, 1, 4, 2, 4, 1, 1633969217),
('m.facebook.com', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 1604898437),
('cjjaw.semxiu.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610373646),
('ehsim.semxiu.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610376560),
('earz.semxiu.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610378311),
('vwxi.semxiu.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610379891),
('jvusa.katuhana.com', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1612590336),
('oqil.kulekan.net', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1614947366),
('luqr.kulekan.net', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1615072485),
('coccoc.com', 53, 0, 0, 0, 1, 0, 3, 4, 18, 27, 0, 0, 0, 1631765748),
('caz.wbjm.net', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1629349842),
('', 5, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 0, 0, 1633379796),
('search.yahoo.com', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1632730076),
('baidu.com', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1634020676);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_searchkeys`
--

CREATE TABLE `nv_vi_searchkeys` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `skey` varchar(250) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_siteterms`
--

CREATE TABLE `nv_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` text DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_siteterms`
--

INSERT INTO `nv_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1546504163, 1546504163, 1, 10, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1546504163, 1546504163, 1, 9, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_siteterms_config`
--

CREATE TABLE `nv_vi_siteterms_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_siteterms_config`
--

INSERT INTO `nv_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_slider_blocks`
--

CREATE TABLE `nv_vi_slider_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_slider_blocks`
--

INSERT INTO `nv_vi_slider_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Home slider', 'Silder trang chủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_slider_rows`
--

CREATE TABLE `nv_vi_slider_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tên slide',
  `title1` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `more` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mô tả slide',
  `link_href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Liên kết',
  `link_target` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Trang hiện tại, 1: Cửa sổ mới',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Đường dẫn ảnh',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0: Dừng, 1: Hoạt động'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_slider_rows`
--

INSERT INTO `nv_vi_slider_rows` (`id`, `title`, `title1`, `title2`, `more`, `description`, `link_href`, `link_target`, `image`, `addtime`, `edittime`, `weight`, `status`) VALUES
(1, 'adsds', 'sdsd', 'sdsd', 'Xem chi tiết', '', '', 0, '2020/tennisvieton1.png', 1601917177, 1601996148, 1, 1),
(2, 'dạy tennis', 'sss', 'sdsd', 'Xem chi tiết', '', '', 0, '2020/tennisvietson2.png', 1601918979, 1601996137, 2, 1),
(4, '', '', '', '', '', '', 0, '2020/tennis-viet-son-tre-em.jpg', 1604664657, 1604664657, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_1`
--

CREATE TABLE `nv_vi_videos_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_videos_1`
--

INSERT INTO `nv_vi_videos_1` (`id`, `catid`, `listcatid`, `admin_id`, `admin_name`, `author`, `artist`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `vid_path`, `vid_type`, `vid_duration`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1', 1, 'nvholding.vn', '', '', 0, 1601998113, 1604446446, 1, 1601998020, 0, 2, 'Buổi dạy khóa 1', 'buoi-day-khoa-1', 'buỏi dạy 1', 'https://youtu.be/VqZBGK0dzMg', '2', '0:00:00', 'https://img.youtube.com/vi/VqZBGK0dzMg/0.jpg', '', 3, 1, '4', 1, 4, 0, 0, 0),
(2, 1, '1', 1, 'nvholding.vn', '', '', 0, 1601998223, 1604446531, 1, 1601998020, 0, 2, 'Buổi dạy khóa 1', 'buoi-day-khoa-1', 'buỏi dạy 1', 'https://www.youtube.com/watch?v=uc9G3dq40zc', '2', '0:00:00', '2020_11/vieton-trem.jpg', 'viéton trêm', 1, 1, '4', 1, 3, 0, 0, 0),
(3, 1, '1', 1, 'nvholding.vn', '', '', 0, 1602030654, 1604446372, 1, 1602030600, 0, 2, 'Khoa học Ngưới lớn', 'khoa-hoc-nguoi-lon', '', 'https://youtu.be/bd4G5u9VPVY', '2', '0:00:00', 'https://img.youtube.com/vi/bd4G5u9VPVY/0.jpg', '', 3, 1, '4', 1, 6, 0, 0, 0),
(4, 1, '1', 1, 'nvholding.vn', '', '', 0, 1602030736, 1604446337, 1, 1602030660, 0, 2, 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', 'huong-dan-tap-tennis-co-ban-cu-danh-tennis-thuan-tay', 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', 'https://youtu.be/8FiujMMKSs0', '2', '0:00:00', 'https://img.youtube.com/vi/8FiujMMKSs0/0.jpg', '', 3, 1, '4', 1, 6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_2`
--

CREATE TABLE `nv_vi_videos_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_admins`
--

CREATE TABLE `nv_vi_videos_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_block`
--

CREATE TABLE `nv_vi_videos_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_block_cat`
--

CREATE TABLE `nv_vi_videos_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_cat`
--

CREATE TABLE `nv_vi_videos_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_videos_cat`
--

INSERT INTO `nv_vi_videos_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Khóa học người lớn', '', 'Khoa-hoc-nguoi-lon', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1601998010, 1601998010, '6'),
(2, 0, 'Khóa học thiếu nhi', '', 'khoa-hoc-thieu-nhi', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1601998025, 1601998025, '6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_config_post`
--

CREATE TABLE `nv_vi_videos_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_detail`
--

CREATE TABLE `nv_vi_videos_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0,
  `gid` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_videos_detail`
--

INSERT INTO `nv_vi_videos_detail` (`id`, `bodyhtml`, `sourcetext`, `copyright`, `allowed_send`, `allowed_save`, `gid`) VALUES
(1, 'thay vVệt Sơn', '', 0, 1, 1, 0),
(2, 'thay vVệt Sơn', '', 0, 1, 1, 0),
(3, '.', '', 0, 1, 1, 0),
(4, '.', '', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_logs`
--

CREATE TABLE `nv_vi_videos_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_playlist`
--

CREATE TABLE `nv_vi_videos_playlist` (
  `playlist_id` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `playlist_sort` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_playlist_cat`
--

CREATE TABLE `nv_vi_videos_playlist_cat` (
  `playlist_id` smallint(5) UNSIGNED NOT NULL,
  `userid` smallint(5) UNSIGNED NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `private_mode` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `favorite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_rows`
--

CREATE TABLE `nv_vi_videos_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_videos_rows`
--

INSERT INTO `nv_vi_videos_rows` (`id`, `catid`, `listcatid`, `admin_id`, `admin_name`, `author`, `artist`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `vid_path`, `vid_type`, `vid_duration`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1', 1, 'nvholding.vn', '', '', 0, 1601998113, 1604446446, 1, 1601998020, 0, 2, 'Buổi dạy khóa 1', 'buoi-day-khoa-1', 'buỏi dạy 1', 'https://youtu.be/VqZBGK0dzMg', '2', '0:00:00', 'https://img.youtube.com/vi/VqZBGK0dzMg/0.jpg', '', 3, 1, '4', 1, 4, 0, 0, 0),
(2, 1, '1', 1, 'nvholding.vn', '', '', 0, 1601998223, 1604446531, 1, 1601998020, 0, 2, 'Buổi dạy khóa 1', 'buoi-day-khoa-1', 'buỏi dạy 1', 'https://www.youtube.com/watch?v=uc9G3dq40zc', '2', '0:00:00', '2020_11/vieton-trem.jpg', 'viéton trêm', 1, 1, '4', 1, 3, 0, 0, 0),
(3, 1, '1', 1, 'nvholding.vn', '', '', 0, 1602030654, 1604446372, 1, 1602030600, 0, 2, 'Khoa học Ngưới lớn', 'khoa-hoc-nguoi-lon', '', 'https://youtu.be/bd4G5u9VPVY', '2', '0:00:00', 'https://img.youtube.com/vi/bd4G5u9VPVY/0.jpg', '', 3, 1, '4', 1, 6, 0, 0, 0),
(4, 1, '1', 1, 'nvholding.vn', '', '', 0, 1602030736, 1604446337, 1, 1602030660, 0, 2, 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', 'huong-dan-tap-tennis-co-ban-cu-danh-tennis-thuan-tay', 'Hướng dẫn Tập tennis cơ bản - Cú đánh tennis thuận tay', 'https://youtu.be/8FiujMMKSs0', '2', '0:00:00', 'https://img.youtube.com/vi/8FiujMMKSs0/0.jpg', '', 3, 1, '4', 1, 6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_rows_favourite`
--

CREATE TABLE `nv_vi_videos_rows_favourite` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_rows_report`
--

CREATE TABLE `nv_vi_videos_rows_report` (
  `rid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_sources`
--

CREATE TABLE `nv_vi_videos_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_tags`
--

CREATE TABLE `nv_vi_videos_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_tags_id`
--

CREATE TABLE `nv_vi_videos_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_videos_uploaders`
--

CREATE TABLE `nv_vi_videos_uploaders` (
  `userid` mediumint(8) NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` mediumint(8) NOT NULL DEFAULT 1,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_videos_uploaders`
--

INSERT INTO `nv_vi_videos_uploaders` (`userid`, `group_id`, `status`, `username`, `md5username`, `email`, `first_name`, `last_name`, `description`, `view_mail`) VALUES
(1, 1, 1, 'nvholding.vn', '143844ec1adb123ea6f14a5352290d56', 'hoangnt@nguyenvan.vn', 'nvholding.vn', '', 'Giới thiệu về nvholding.vn', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_voting`
--

CREATE TABLE `nv_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(333) NOT NULL,
  `link` varchar(255) DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT 1,
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_voting`
--

INSERT INTO `nv_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv_vi_voting_rows`
--

CREATE TABLE `nv_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nv_vi_voting_rows`
--

INSERT INTO `nv_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 1),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nv_authors`
--
ALTER TABLE `nv_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `nv_authors_config`
--
ALTER TABLE `nv_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Chỉ mục cho bảng `nv_authors_module`
--
ALTER TABLE `nv_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Chỉ mục cho bảng `nv_authors_oauth`
--
ALTER TABLE `nv_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Chỉ mục cho bảng `nv_banip`
--
ALTER TABLE `nv_banip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `nv_banners_click`
--
ALTER TABLE `nv_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Chỉ mục cho bảng `nv_banners_plans`
--
ALTER TABLE `nv_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv_banners_rows`
--
ALTER TABLE `nv_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Chỉ mục cho bảng `nv_config`
--
ALTER TABLE `nv_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Chỉ mục cho bảng `nv_cookies`
--
ALTER TABLE `nv_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `nv_counter`
--
ALTER TABLE `nv_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Chỉ mục cho bảng `nv_cronjobs`
--
ALTER TABLE `nv_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Chỉ mục cho bảng `nv_extension_files`
--
ALTER TABLE `nv_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Chỉ mục cho bảng `nv_ips`
--
ALTER TABLE `nv_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Chỉ mục cho bảng `nv_language`
--
ALTER TABLE `nv_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`) USING BTREE;

--
-- Chỉ mục cho bảng `nv_language_file`
--
ALTER TABLE `nv_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Chỉ mục cho bảng `nv_logs`
--
ALTER TABLE `nv_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_notification`
--
ALTER TABLE `nv_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Chỉ mục cho bảng `nv_plugin`
--
ALTER TABLE `nv_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Chỉ mục cho bảng `nv_sessions`
--
ALTER TABLE `nv_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Chỉ mục cho bảng `nv_setup_extensions`
--
ALTER TABLE `nv_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv_setup_language`
--
ALTER TABLE `nv_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Chỉ mục cho bảng `nv_upload_dir`
--
ALTER TABLE `nv_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Chỉ mục cho bảng `nv_upload_file`
--
ALTER TABLE `nv_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv_users`
--
ALTER TABLE `nv_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `nv_users_backupcodes`
--
ALTER TABLE `nv_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Chỉ mục cho bảng `nv_users_config`
--
ALTER TABLE `nv_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Chỉ mục cho bảng `nv_users_edit`
--
ALTER TABLE `nv_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `nv_users_field`
--
ALTER TABLE `nv_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `nv_users_groups`
--
ALTER TABLE `nv_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv_users_groups_users`
--
ALTER TABLE `nv_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Chỉ mục cho bảng `nv_users_info`
--
ALTER TABLE `nv_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `nv_users_openid`
--
ALTER TABLE `nv_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nv_users_question`
--
ALTER TABLE `nv_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Chỉ mục cho bảng `nv_users_reg`
--
ALTER TABLE `nv_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `nv_vi_about`
--
ALTER TABLE `nv_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_about_config`
--
ALTER TABLE `nv_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_blocks_groups`
--
ALTER TABLE `nv_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv_vi_blocks_weight`
--
ALTER TABLE `nv_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Chỉ mục cho bảng `nv_vi_comment`
--
ALTER TABLE `nv_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Chỉ mục cho bảng `nv_vi_contact_department`
--
ALTER TABLE `nv_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_contact_reply`
--
ALTER TABLE `nv_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `nv_vi_contact_send`
--
ALTER TABLE `nv_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Chỉ mục cho bảng `nv_vi_contact_supporter`
--
ALTER TABLE `nv_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_course`
--
ALTER TABLE `nv_vi_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_course_config`
--
ALTER TABLE `nv_vi_course_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_co_cau_to_chuc_config`
--
ALTER TABLE `nv_vi_co_cau_to_chuc_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_co_cau_to_chuc_person`
--
ALTER TABLE `nv_vi_co_cau_to_chuc_person`
  ADD PRIMARY KEY (`personid`);

--
-- Chỉ mục cho bảng `nv_vi_co_cau_to_chuc_rows`
--
ALTER TABLE `nv_vi_co_cau_to_chuc_rows`
  ADD PRIMARY KEY (`organid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Chỉ mục cho bảng `nv_vi_faq`
--
ALTER TABLE `nv_vi_faq`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `nv_vi_faq_categories`
--
ALTER TABLE `nv_vi_faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_faq_config`
--
ALTER TABLE `nv_vi_faq_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_faq_tmp`
--
ALTER TABLE `nv_vi_faq_tmp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `nv_vi_freecontent_blocks`
--
ALTER TABLE `nv_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv_vi_freecontent_rows`
--
ALTER TABLE `nv_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_admins`
--
ALTER TABLE `nv_vi_laws_admins`
  ADD UNIQUE KEY `userid` (`userid`,`subjectid`);

--
-- Chỉ mục cho bảng `nv_vi_laws_area`
--
ALTER TABLE `nv_vi_laws_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_laws_cat`
--
ALTER TABLE `nv_vi_laws_cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_laws_config`
--
ALTER TABLE `nv_vi_laws_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_laws_examine`
--
ALTER TABLE `nv_vi_laws_examine`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_row`
--
ALTER TABLE `nv_vi_laws_row`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_row_area`
--
ALTER TABLE `nv_vi_laws_row_area`
  ADD UNIQUE KEY `alias` (`row_id`,`area_id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_set_replace`
--
ALTER TABLE `nv_vi_laws_set_replace`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_signer`
--
ALTER TABLE `nv_vi_laws_signer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_laws_subject`
--
ALTER TABLE `nv_vi_laws_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_menu`
--
ALTER TABLE `nv_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv_vi_menu_rows`
--
ALTER TABLE `nv_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Chỉ mục cho bảng `nv_vi_modfuncs`
--
ALTER TABLE `nv_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Chỉ mục cho bảng `nv_vi_modthemes`
--
ALTER TABLE `nv_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Chỉ mục cho bảng `nv_vi_modules`
--
ALTER TABLE `nv_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Chỉ mục cho bảng `nv_vi_news_1`
--
ALTER TABLE `nv_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_2`
--
ALTER TABLE `nv_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_3`
--
ALTER TABLE `nv_vi_news_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_5`
--
ALTER TABLE `nv_vi_news_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_6`
--
ALTER TABLE `nv_vi_news_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_8`
--
ALTER TABLE `nv_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_9`
--
ALTER TABLE `nv_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_10`
--
ALTER TABLE `nv_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_11`
--
ALTER TABLE `nv_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_12`
--
ALTER TABLE `nv_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_admins`
--
ALTER TABLE `nv_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `nv_vi_news_block`
--
ALTER TABLE `nv_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `nv_vi_news_block_cat`
--
ALTER TABLE `nv_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_news_cat`
--
ALTER TABLE `nv_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv_vi_news_config_post`
--
ALTER TABLE `nv_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `nv_vi_news_detail`
--
ALTER TABLE `nv_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_news_logs`
--
ALTER TABLE `nv_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `nv_vi_news_rows`
--
ALTER TABLE `nv_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv_vi_news_sources`
--
ALTER TABLE `nv_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv_vi_news_tags`
--
ALTER TABLE `nv_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_news_tags_id`
--
ALTER TABLE `nv_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `nv_vi_news_tmp`
--
ALTER TABLE `nv_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_news_topics`
--
ALTER TABLE `nv_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_admins`
--
ALTER TABLE `nv_vi_opinions_admins`
  ADD UNIQUE KEY `userid` (`userid`,`subjectid`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_area`
--
ALTER TABLE `nv_vi_opinions_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_cat`
--
ALTER TABLE `nv_vi_opinions_cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_config`
--
ALTER TABLE `nv_vi_opinions_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_examine`
--
ALTER TABLE `nv_vi_opinions_examine`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_row`
--
ALTER TABLE `nv_vi_opinions_row`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_row_area`
--
ALTER TABLE `nv_vi_opinions_row_area`
  ADD UNIQUE KEY `alias` (`row_id`,`area_id`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_set_replace`
--
ALTER TABLE `nv_vi_opinions_set_replace`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_signer`
--
ALTER TABLE `nv_vi_opinions_signer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_opinions_subject`
--
ALTER TABLE `nv_vi_opinions_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `weight` (`weight`);

--
-- Chỉ mục cho bảng `nv_vi_page`
--
ALTER TABLE `nv_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_page_config`
--
ALTER TABLE `nv_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_professionals_blocks`
--
ALTER TABLE `nv_vi_professionals_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv_vi_professionals_rows`
--
ALTER TABLE `nv_vi_professionals_rows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_referer_stats`
--
ALTER TABLE `nv_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `nv_vi_searchkeys`
--
ALTER TABLE `nv_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Chỉ mục cho bảng `nv_vi_siteterms`
--
ALTER TABLE `nv_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_siteterms_config`
--
ALTER TABLE `nv_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv_vi_slider_blocks`
--
ALTER TABLE `nv_vi_slider_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv_vi_slider_rows`
--
ALTER TABLE `nv_vi_slider_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv_vi_videos_1`
--
ALTER TABLE `nv_vi_videos_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv_vi_videos_2`
--
ALTER TABLE `nv_vi_videos_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv_vi_videos_admins`
--
ALTER TABLE `nv_vi_videos_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `nv_vi_videos_block`
--
ALTER TABLE `nv_vi_videos_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_block_cat`
--
ALTER TABLE `nv_vi_videos_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_videos_cat`
--
ALTER TABLE `nv_vi_videos_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Chỉ mục cho bảng `nv_vi_videos_config_post`
--
ALTER TABLE `nv_vi_videos_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_detail`
--
ALTER TABLE `nv_vi_videos_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_logs`
--
ALTER TABLE `nv_vi_videos_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `nv_vi_videos_playlist`
--
ALTER TABLE `nv_vi_videos_playlist`
  ADD UNIQUE KEY `playlist_id` (`playlist_id`,`id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_playlist_cat`
--
ALTER TABLE `nv_vi_videos_playlist_cat`
  ADD PRIMARY KEY (`playlist_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_videos_rows`
--
ALTER TABLE `nv_vi_videos_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv_vi_videos_rows_favourite`
--
ALTER TABLE `nv_vi_videos_rows_favourite`
  ADD UNIQUE KEY `fid` (`fid`,`id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_rows_report`
--
ALTER TABLE `nv_vi_videos_rows_report`
  ADD UNIQUE KEY `rid` (`rid`,`id`);

--
-- Chỉ mục cho bảng `nv_vi_videos_sources`
--
ALTER TABLE `nv_vi_videos_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv_vi_videos_tags`
--
ALTER TABLE `nv_vi_videos_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv_vi_videos_tags_id`
--
ALTER TABLE `nv_vi_videos_tags_id`
  ADD UNIQUE KEY `sid` (`id`,`tid`);

--
-- Chỉ mục cho bảng `nv_vi_videos_uploaders`
--
ALTER TABLE `nv_vi_videos_uploaders`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `nv_vi_voting`
--
ALTER TABLE `nv_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Chỉ mục cho bảng `nv_vi_voting_rows`
--
ALTER TABLE `nv_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nv_authors_config`
--
ALTER TABLE `nv_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_authors_module`
--
ALTER TABLE `nv_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nv_authors_oauth`
--
ALTER TABLE `nv_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_banip`
--
ALTER TABLE `nv_banip`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_banners_click`
--
ALTER TABLE `nv_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_banners_plans`
--
ALTER TABLE `nv_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv_banners_rows`
--
ALTER TABLE `nv_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nv_cronjobs`
--
ALTER TABLE `nv_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv_extension_files`
--
ALTER TABLE `nv_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_ips`
--
ALTER TABLE `nv_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv_language`
--
ALTER TABLE `nv_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_language_file`
--
ALTER TABLE `nv_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_logs`
--
ALTER TABLE `nv_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT cho bảng `nv_notification`
--
ALTER TABLE `nv_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_plugin`
--
ALTER TABLE `nv_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_upload_dir`
--
ALTER TABLE `nv_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `nv_users`
--
ALTER TABLE `nv_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_users_backupcodes`
--
ALTER TABLE `nv_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_users_field`
--
ALTER TABLE `nv_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv_users_groups`
--
ALTER TABLE `nv_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv_users_question`
--
ALTER TABLE `nv_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `nv_users_reg`
--
ALTER TABLE `nv_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_about`
--
ALTER TABLE `nv_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_blocks_groups`
--
ALTER TABLE `nv_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `nv_vi_comment`
--
ALTER TABLE `nv_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_contact_department`
--
ALTER TABLE `nv_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv_vi_contact_reply`
--
ALTER TABLE `nv_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_contact_send`
--
ALTER TABLE `nv_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_contact_supporter`
--
ALTER TABLE `nv_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_course`
--
ALTER TABLE `nv_vi_course`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv_vi_co_cau_to_chuc_person`
--
ALTER TABLE `nv_vi_co_cau_to_chuc_person`
  MODIFY `personid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nv_vi_co_cau_to_chuc_rows`
--
ALTER TABLE `nv_vi_co_cau_to_chuc_rows`
  MODIFY `organid` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `nv_vi_faq`
--
ALTER TABLE `nv_vi_faq`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv_vi_faq_categories`
--
ALTER TABLE `nv_vi_faq_categories`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv_vi_faq_tmp`
--
ALTER TABLE `nv_vi_faq_tmp`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_freecontent_blocks`
--
ALTER TABLE `nv_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv_vi_freecontent_rows`
--
ALTER TABLE `nv_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_area`
--
ALTER TABLE `nv_vi_laws_area`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_cat`
--
ALTER TABLE `nv_vi_laws_cat`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_row`
--
ALTER TABLE `nv_vi_laws_row`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_set_replace`
--
ALTER TABLE `nv_vi_laws_set_replace`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_signer`
--
ALTER TABLE `nv_vi_laws_signer`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nv_vi_laws_subject`
--
ALTER TABLE `nv_vi_laws_subject`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_menu`
--
ALTER TABLE `nv_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nv_vi_menu_rows`
--
ALTER TABLE `nv_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `nv_vi_modfuncs`
--
ALTER TABLE `nv_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_1`
--
ALTER TABLE `nv_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_2`
--
ALTER TABLE `nv_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_3`
--
ALTER TABLE `nv_vi_news_3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_5`
--
ALTER TABLE `nv_vi_news_5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_6`
--
ALTER TABLE `nv_vi_news_6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_8`
--
ALTER TABLE `nv_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_9`
--
ALTER TABLE `nv_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_10`
--
ALTER TABLE `nv_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_11`
--
ALTER TABLE `nv_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_12`
--
ALTER TABLE `nv_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_block_cat`
--
ALTER TABLE `nv_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_cat`
--
ALTER TABLE `nv_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_logs`
--
ALTER TABLE `nv_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_rows`
--
ALTER TABLE `nv_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_sources`
--
ALTER TABLE `nv_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_tags`
--
ALTER TABLE `nv_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_news_topics`
--
ALTER TABLE `nv_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_area`
--
ALTER TABLE `nv_vi_opinions_area`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_cat`
--
ALTER TABLE `nv_vi_opinions_cat`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_row`
--
ALTER TABLE `nv_vi_opinions_row`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_set_replace`
--
ALTER TABLE `nv_vi_opinions_set_replace`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_signer`
--
ALTER TABLE `nv_vi_opinions_signer`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nv_vi_opinions_subject`
--
ALTER TABLE `nv_vi_opinions_subject`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv_vi_page`
--
ALTER TABLE `nv_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nv_vi_professionals_blocks`
--
ALTER TABLE `nv_vi_professionals_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_professionals_rows`
--
ALTER TABLE `nv_vi_professionals_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nv_vi_siteterms`
--
ALTER TABLE `nv_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_slider_blocks`
--
ALTER TABLE `nv_vi_slider_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv_vi_slider_rows`
--
ALTER TABLE `nv_vi_slider_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_1`
--
ALTER TABLE `nv_vi_videos_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_2`
--
ALTER TABLE `nv_vi_videos_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_block_cat`
--
ALTER TABLE `nv_vi_videos_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_cat`
--
ALTER TABLE `nv_vi_videos_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_logs`
--
ALTER TABLE `nv_vi_videos_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_playlist_cat`
--
ALTER TABLE `nv_vi_videos_playlist_cat`
  MODIFY `playlist_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_rows`
--
ALTER TABLE `nv_vi_videos_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_sources`
--
ALTER TABLE `nv_vi_videos_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_videos_tags`
--
ALTER TABLE `nv_vi_videos_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv_vi_voting`
--
ALTER TABLE `nv_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv_vi_voting_rows`
--
ALTER TABLE `nv_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
