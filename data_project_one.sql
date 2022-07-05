-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 05:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_project_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `img`, `email`, `password`, `phone`, `address`, `gender`) VALUES
(11, 'Nguyễn Ngọc Uy', 'z2945087169368_439040a7c582e6c81834d67f63eb5a20.jpg', 'uynguyen12345@fpt.edu.vn', '12345678', '0349791128', 'Hương Sơn-Mỹ Đức-Hà Nội', 0),
(12, 'Ngọc Tín', '8a2e4c79a1b9c983dc6bf8d6cbada43a.gif', 'tinnguyen@gmail.com', '1234567', '0962471128', 'Hương sơn-Mỹ Đức - Hà Nội', 0),
(13, 'Văn giang ', '5-meo-su-dung-mau-sac-de-cai-thien-hinh-anh-1.jpg', 'vangiang123@gmail.com', '$2y$10$tnipRg.cW6O3.0liUy5bk.2OFKYsuaJWb8aHTszFx6NScAcP84w2O', '0349791128', 'Hương sơn-Mỹ Đức - Hà Nội', 1),
(14, 'binh123@gmail', '244662968_4179789968816366_5055210922193364731_n.jpg', 'binh123@gmail.com', '$2y$10$O6K4dEeToNJwLvIcxHz3M.u78mEAwjWA7zENh1hNxW1h2n7Yl8Iyy', '1234567890', 'Yên Kiện-Hà Nội', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assess`
--

CREATE TABLE `assess` (
  `assess_id` int(11) NOT NULL,
  `assess_content` text COLLATE utf8_unicode_ci NOT NULL,
  `assess_star` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assess_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assess`
--

INSERT INTO `assess` (`assess_id`, `assess_content`, `assess_star`, `subject_id`, `student_id`, `assess_status`) VALUES
(2, 'Khóa học rất hay rất bổ ích , nó đã đem lại cho tôi rất nhiều kiến thức mới về ngôn nhữ css . Tôi cảm ơn nhiều nhé :)))      ', 5, 7, 11, 1),
(4, 'Tôi là người mới học về CNTT ko biết rõ về ngành này nhưng nhờ có khóa học mà tôi đã hiểu hơn kiến thức để đi được trong ngành.', 5, 7, 14, 1),
(6, '                không hài lòng\r\n', 4, 8, 22, 0),
(7, '             good       ', 5, 8, 21, 0),
(8, '                    gfj', 4, 7, 21, 0),
(9, '              good      ', 5, 13, 21, 0),
(10, '                good\r\n    ', 5, 7, 19, 0),
(11, '                   good ', 5, 16, 19, 0),
(12, '                    good', 5, 9, 21, 0),
(13, '                    good', 5, 16, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_text` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `banner_title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_text`, `banner_img`, `banner_title`) VALUES
(80, 'Bạn đang quan tâm tới ngành lập trình viên nhưng không rõ lập trình viên học ngành gì, cần chuẩn bị những gì, học như thế nào và học ở đâu?', '8a2e4c79a1b9c983dc6bf8d6cbada43a.gif', 'Học lập trình để đi làm !!!');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `student_id` int(11) NOT NULL,
  `transfer_time` datetime NOT NULL,
  `note_bill` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `code_vnpay` int(11) NOT NULL,
  `code_back` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `monney` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`student_id`, `transfer_time`, `note_bill`, `code_vnpay`, `code_back`, `monney`, `bill_id`, `subject_id`) VALUES
(19, '2021-12-01 15:50:00', 'thanh toan khoa hoc Java', 199, 'NCB', 30000, 12, 9),
(19, '2021-12-01 07:00:00', 'thanh toan khoa hoc C++', 1917, 'NCB', 500000, 13, 17),
(19, '2021-12-02 08:00:00', 'thanh toan khoa hoc Python', 1916, 'NCB', 300000, 14, 16),
(22, '2021-12-02 11:00:55', 'thanh toan khoa hoc Python', 2216, 'NCB', 300000, 17, 16),
(22, '2021-12-02 11:01:25', 'thanh toan khoa hoc C++', 2217, 'NCB', 500000, 18, 17),
(21, '2021-12-03 20:47:47', 'thanh toan khoa hoc Java', 219, 'NCB', 30000, 19, 9),
(22, '2021-12-08 13:37:24', 'thanh toan khoa hoc Scss', 2211, 'NCB', 300000, 38, 11);

-- --------------------------------------------------------

--
-- Table structure for table `catesubject`
--

CREATE TABLE `catesubject` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catesubject`
--

INSERT INTO `catesubject` (`cate_id`, `cate_name`, `cate_slug`, `date_create`) VALUES
(2, 'Ứng dụng phần mềm ', 'ung-dung-phan-mem', '2021-11-18'),
(6, 'Thiết kế website', 'thiet-ke-website', '2021-11-07'),
(10, 'Lập trình AI', 'lap-trinh-ai', '2021-11-23'),
(19, 'Thiết kế đồ họa', 'thiet-ke-do-hoa', '2021-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `lesson_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_cmtt` date NOT NULL,
  `cmtt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`lesson_id`, `student_id`, `comment_content`, `date_cmtt`, `cmtt_id`) VALUES
(10, 11, 'ok bình', '2021-11-22', 52),
(19, 11, 'scscscscscscscsc', '2021-11-25', 59),
(19, 11, 'Bài học rất oke', '2021-11-25', 60),
(20, 11, 'Bài học rất oke', '2021-11-25', 61);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date_start` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sum_lesson` int(11) NOT NULL DEFAULT 0,
  `history_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`student_id`, `subject_id`, `date_start`, `sum_lesson`, `history_id`) VALUES
(19, 17, '2021-12-07 00:00:00', 0, 45),
(19, 15, '2021-12-07 00:00:00', 0, 46),
(19, 16, '2021-12-07 17:00:09', 5, 47),
(19, 14, '2021-12-07 00:00:00', 0, 52),
(19, 7, '2021-12-07 16:58:22', 4, 53),
(21, 9, '2021-12-08 13:21:03', 5, 54),
(22, 11, '2021-12-09 23:23:31', 1, 55),
(22, 15, '2021-12-08 00:00:00', 0, 56),
(22, 7, '2021-12-08 00:00:00', 0, 57),
(22, 17, '2021-12-09 23:23:57', 1, 58),
(22, 16, '2021-12-09 23:25:58', 5, 59),
(22, 14, '2021-12-08 00:00:00', 0, 60),
(22, 13, '2021-12-08 00:00:00', 0, 61),
(22, 8, '2021-12-08 00:00:00', 0, 62),
(21, 15, '2021-12-11 00:00:00', 0, 63),
(21, 8, '2021-12-11 00:00:00', 0, 64);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_link` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_post` date NOT NULL,
  `lesson_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_status` int(11) NOT NULL DEFAULT 0,
  `subject_id` int(11) NOT NULL,
  `lesson_introduce` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_img`, `lesson_link`, `date_post`, `lesson_slug`, `lesson_status`, `subject_id`, `lesson_introduce`) VALUES
(10, 'Hướng dẫn cài đặt bootstrap + jquery', 'z2927408023528_5b03ec3c6a7b549c9bd2ef169b9386b3.jpg', 'BoKfLOotlCQ', '2021-11-24', 'huong-dan-cai-dat-bootstrap-jquery', 0, 8, 'ghjnkml'),
(18, 'Học bootstrap qua ví dụ 2', 'z2927408023528_5b03ec3c6a7b549c9bd2ef169b9386b3.jpg', 'bdaWTOjR_Us', '2021-11-24', 'hoc-bootstrap-qua-vi-du-2', 0, 8, 'cscscssvsvsvsvsv'),
(19, ' Học bootstrap qua ví dụ 3', 'z2927408023528_5b03ec3c6a7b549c9bd2ef169b9386b3.jpg', 'I3RnTyckxzc', '2021-11-24', 'hoc-bootstrap-qua-vi-du-3', 0, 8, 'cscscscscscscscscs'),
(20, 'Thao tác lên tags html bằng jquery', 'z2927408023528_5b03ec3c6a7b549c9bd2ef169b9386b3.jpg', 'elAhvjqFO4s', '2021-11-24', 'thao-tac-len-tags-html-bang-jquery', 0, 8, 'cscscscscscs'),
(21, 'CSS module là gì? Dùng NTN?', 'z2927414273671_cc548fba465c53e649884fadcf7e9eaf.jpg', 'RAWAskUjIZ8', '2021-11-18', 'css-module-la-gi-dung-ntn', 0, 7, 'scscscscscscscscs'),
(22, 'Sử dụng CSS trong dự án ReactJS', 'z2927414273671_cc548fba465c53e649884fadcf7e9eaf.jpg', 'Q-G-0XT8t_c', '2021-11-24', 'su-dung-css-trong-du-an-reactjs', 0, 7, 'cscscscscscsc'),
(23, ' Chỉnh Ảnh Nhanh', 'z2937825249129_56da30b31f3dc98fc89810c6bfe0ae9f.jpg', 'FwjMFFMBzeg', '2021-11-18', 'chinh-anh-nhanh', 0, 15, 'bài học dạy cách chỉnh nhanh với photoshop'),
(24, 'Cách chỉnh da, bóp mặt và dàn trang Photobook', 'z2937825249129_56da30b31f3dc98fc89810c6bfe0ae9f.jpg', 'Z9pn7kJSW-s', '2021-11-18', 'cach-chinh-da-bop-mat-va-dan-trang-photobook', 0, 15, ''),
(25, ' Làm quen với các công cụ trong Photoshop ', 'z2937825249129_56da30b31f3dc98fc89810c6bfe0ae9f.jpg', '6mqIJOsq3-I', '2021-12-08', 'lam-quen-voi-cac-cong-cu-trong-photoshop', 0, 15, ''),
(26, 'Làm việc với Layer trong Photoshop ', 'Group 1459.png', 'myBiRy_H37E', '2021-12-08', 'lam-viec-voi-layer-trong-photoshop', 0, 15, 'js'),
(27, 'Cách nắm vững Responsive cơ bản ', 'z2927414273671_cc548fba465c53e649884fadcf7e9eaf.jpg', 'o6zQyl8lSUA', '2021-11-18', 'cach-nam-vung-responsive-co-ban', 0, 7, ''),
(31, 'Hướng dẫn học CSS Flexbox cơ bản phần 1 với evondev', 'z2927414273671_cc548fba465c53e649884fadcf7e9eaf.jpg', 'o6zQyl8lSUA', '2021-11-25', 'huong-dan-hoc-css-flexbox-co-ban-phan-1-voi-evondev', 0, 7, ''),
(32, 'Biến trong Java', 'Group 1463.png', 'G2mCSTtBojM', '2021-12-05', 'bien-trong-java', 0, 9, 'hiểu được cách ử dụng biến trong java'),
(33, 'Kiểu dữ liệu trong Java', 'Group 1463.png', '4k_5vWY2wps', '2021-12-05', 'kieu-du-lieu-trong-java', 0, 9, 'hiểu được kiểu dữ liệu'),
(34, 'Toán tử trong Java ', 'Group 1463.png', 'H9FmP010A_Q', '2021-12-05', 'toan-tu-trong-java', 0, 9, '....'),
(35, 'Vòng lặp While trong Java', 'Group 1463.png', 'tDfQ33fmmvs', '2021-12-05', 'vong-lap-while-trong-java', 0, 9, 'hdkhsdlkas'),
(36, 'Mảng trong Java', 'Group 1463.png', '0LX_B3-0XuU', '2021-12-06', 'mang-trong-java', 0, 9, 'ffrefe'),
(37, 'Giới thiệu về C++', 'c-cong.jpg', 'ILr_rU-lISk', '2021-12-06', 'gioi-thieu-ve-c', 0, 17, 'c++'),
(38, 'Xây dựng chương trình C++ đầu tiên ', 'c-cong.jpg', 'q8UGqw6Cbnk', '2021-12-06', 'xay-dung-chuong-trinh-c-dau-tien', 0, 17, 'c++\r\n'),
(39, 'Cấu trúc một chương trình C++ ', 'c-cong.jpg', 'IXzH3pYM_bg', '2021-12-06', 'cau-truc-mot-chuong-trinh-c', 0, 17, 'c++'),
(40, 'Kinh nghiệm về Ghi chú trong C++ ', 'c-cong.jpg', 'Z-laY5MmTIE', '2021-12-06', 'kinh-nghiem-ve-ghi-chu-trong-c', 0, 17, 'c++'),
(41, ' Biến trong C++ (Variables in C++)', 'c-cong.jpg', 'i3nJyEt42Y8', '2021-12-06', 'bien-trong-c-variables-in-c', 0, 17, 'c++'),
(42, 'Lớp và đối tượng', 'python.jpg', 'RUVdcNEqOUE', '2021-12-06', 'lop-va-doi-tuong', 0, 16, 'python'),
(43, 'Thuộc tính của lớp', 'python.jpg', 'oZIu0ch-8M4', '2021-12-06', 'thuoc-tinh-cua-lop', 0, 16, 'python'),
(44, 'Method', 'python.jpg', 'ZK1MPUEnt4U', '2021-12-06', 'method', 0, 16, 'python'),
(45, ' Kế thừa', 'python.jpg', 'lfxEYreA6ow', '2021-12-06', 'ke-thua', 0, 16, 'python'),
(46, 'Special methods', 'python.jpg', 'cWTO6vy9of4', '2021-12-06', 'special-methods', 0, 16, 'python'),
(47, ' Làm quen với Javascript', 'js-basic.jpg', '-sMbAvgg7mY', '2021-12-07', 'lam-quen-voi-javascript', 0, 13, 'js'),
(48, ' Sử dụng Biến', 'js-basic.jpg', 'FjPNtRRyd2E', '2021-12-07', 'su-dung-bien', 0, 13, 'js'),
(49, 'Kiểu dữ liệu', 'js-basic.jpg', 'SrqmsJLIc7g', '2021-12-07', 'kieu-du-lieu', 0, 13, 'js'),
(50, 'Hàm trong Javascript', 'js-basic.jpg', 'Ccspp-lV9Iw', '2021-12-07', 'ham-trong-javascript', 0, 13, 'js\r\n'),
(51, 'Toán tử trong Javascript ', 'js-basic.jpg', 'o5QMg94hovU', '2021-12-07', 'toan-tu-trong-javascript', 0, 13, 'js'),
(52, 'Giới thiệu ruby cơ bản', 'Group 1464.png', 'J7H4_KDMB7w', '2021-12-07', 'gioi-thieu-ruby-co-ban', 0, 14, 'ruby'),
(53, 'Block - Proc - Lambda', 'Group 1464.png', '2eTLlNy8aH0', '2021-12-07', 'block-proc-lambda', 0, 14, 'ruby'),
(54, ' Ruby OOP - Hướng đối tượng trong ruby', 'Group 1464.png', '9QXADOSBtik', '2021-12-07', 'ruby-oop-huong-doi-tuong-trong-ruby', 0, 14, 'ruby\r\n'),
(55, ' Tạo drag-and-drop markdown editor ', 'Group 1464.png', '8raGsDQhBwQ', '2021-12-07', 'tao-drag-and-drop-markdown-editor', 0, 14, 'ruby'),
(56, 'Giới Thiệu Khóa Học SCSS', 'Group 1460.png', '8CdXHWAz68g', '2021-12-08', 'gioi-thieu-khoa-hoc-scss', 0, 11, 'scss'),
(57, ' Cài Đặt Môi Trường & Khởi Tạo Project Đầu Tiên', 'Group 1460.png', 'GI3HfnK84DI', '2021-12-08', 'cai-dat-moi-truong-khoi-tao-project-dau-tien', 0, 11, 'scss'),
(58, 'Khởi Tạo Project SCSS Đầu Tiên', 'Group 1460.png', '3LxNyKkC6N8', '2021-12-08', 'khoi-tao-project-scss-dau-tien', 0, 11, 'scss'),
(59, ' Sử Dụng Koala', 'Group 1460.png', 'g5U4sCa7Vks', '2021-12-08', 'su-dung-koala', 0, 11, 'scss'),
(60, 'CSS Extensions : Nested Rules', 'Group 1460.png', 'LMjAF2Qtz5I', '2021-12-08', 'css-extensions-nested-rules', 0, 11, 'scss'),
(61, 'Vẽ, cắt hình với công cụ Pen trong Photoshop', 'Group 1459.png', 'pBMdVup_wzQ', '2021-12-08', 've-cat-hinh-voi-cong-cu-pen-trong-photoshop', 0, 15, 'pts');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `menu_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `menu_index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_slug`, `menu_index`) VALUES
(10, 'Khóa học', 'khoa-hoc', 2),
(14, 'Giới thiệu', 'gioi-thieu', 3),
(17, 'Trang chủ', './', 1),
(18, 'Liên hệ', 'lien-he', 4);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `lesson_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `content_note` text COLLATE utf8_unicode_ci NOT NULL,
  `note_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `question_img` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `answer_one` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_two` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer_three` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_four` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question`, `question_img`, `answer`, `lesson_id`, `answer_one`, `answer_two`, `answer_three`, `answer_four`) VALUES
(15, '<p>Engine nào là nền tảng chính của PHP?<br></p>', 'gif-4mb.gif', '4', 19, 'ZEDAT', ' ZEDAT', 'ZEDAT', 'ZEDAT'),
(17, '<p>cscscscs</p>', NULL, '1/2/3', 19, 'cscscs', 'cscscs', 'cscscs', 'cscscs'),
(18, '<p>&nbsp;Lệnh nào trong các lệnh sau cho phép đã chuyển tới một nơi nào đó đã được gán nhãn.<br></p>', NULL, '3', 10, 'break ', 'goto', 'continue', 'exit'),
(19, '<p>Trong ngôn ngữ C, khai báo “int array[3][5]” có nghĩa là:<br></p>', 'rp.gif', '2', 10, 'Các phần tử của mảng là các số nguyên\r\n', '\r\nLà một mảng hai chiều tối đa là 15 phần tử và mỗi phần tử là một số nguyên\r\n', '\r\narray[3][5] là một phần tử của mảng\r\n', '\r\nTất cả đều sai '),
(25, '<p>bài 4 :</p>', NULL, '2', 10, '1', '2', '3', '4'),
(26, '<p>Làm thế nào thay màu nền của chữ (text)?<br></p>', NULL, '3', 21, 'Text-color=', 'Fgcolor:', 'Color:', 'Text-color:'),
(27, '<p>Làm sao để hiển thị liên kết mà ko có gạch chân bên dưới?<br></p>', NULL, '2', 21, ' A {decoration:no underline}', ' A {text-decoration:no underline}', ' A {underline:none}', 'A {text-decoration:none}'),
(28, '<p>Làm sao để mỗi từ trong 1 dòng đều viết hoa ở đầu từ?<br></p>', 'hinh-anh-bang-chu-cai-tieng-anh-in-hoa_120007673.jpg', '2', 21, 'Text-transform:capitalize', 'Text-transform:uppercase', ' You can’t do that with css', 'Text-color:'),
(29, '<p>Thuộc tính nào thay đổi kích cỡ chữ?<br></p>', NULL, '2', 22, ' Font-style', 'Font-size', 'Text-style', 'Text-size'),
(30, '<p>Nút lệnh(button) nào.dưới đây cho phép gửi thông tin trên form tới server khi được click Chuột?<br></p>', NULL, '4', 22, 'Reset', 'Send', 'Form', 'Submit'),
(31, '<p>Câu lệnh nào cho phép trả về phần tử đầu tiên trong mảng và xóa phần tử đó khỏi mảng?<br></p>', NULL, '4', 27, 'ssds', 'dsdsd', 'dsds', 'dsdsdsd'),
(32, '<p>Khi tạo file mới, màu của file mới tạo là màu:</p><p><br></p><p><br></p>', NULL, '3', 23, 'Trắng (white)', '\r\nTrong suốt\r\n', 'Tuỳ chọn trong hộp thoại', 'Màu đen'),
(34, '<p>Mức độ ưu tiên khi áp dụng CSS là:<br></p>', NULL, '2', 27, ' External CSS < Internal CSS < Inline CSS', ' Inline CSS < Internal CSS < External CSS', 'Internal CSS < External CSS < Inline CSS', ' Inline CSS < External CSS < Internal CSS'),
(35, '<p>Thuộc tính z-index dùng để<br></p>', NULL, '4', 27, 'Định vị tương đối cho một thành phần', 'Quy định kiểu viền của một đối tượng web', 'Tạo hiệu ứng màu sắc cho liên lết', 'Đặt các thành phần web ở các lớp khác nhau'),
(36, '<p>Trong mã màu RGB dạng hệ thập lục, #FFFFFF là màu gì?<br></p>', '5-meo-su-dung-mau-sac-de-cai-thien-hinh-anh-1.jpg', '2', 31, 'Đen ', 'Trắng ', 'Đỏ ', 'Xanh'),
(37, '<p>aptech\".length trả lại giá trị là ____.<br></p>', NULL, '3', 31, '5', '6', '7', 'error'),
(38, '<p>Thuộc tính text-indent dùng để?<br></p>', NULL, '3', 31, 'Thiết lập khoảng cách thụt đầu dòng\r\n', 'Thiết lập chế độ canh văn bản', 'Thêm hiệu ứng đặc biệt cho văn bản', 'Tất cả đều sai'),
(39, '<p>Row và col có dụng công dụng gì khi sử dụng Bootstrap ?</p>', NULL, '4', 18, 'Để căn lề', 'Để chia hàng', 'Để chia hàng', 'Chia hàng và cột'),
(41, '<p>Container-fluid có độ rộng bao nhiêu ?<br></p>', '1ca74946ed770bb635e4de4711bd861f.gif', '1/2', 18, '100%', '100px', '100rem', '100ph'),
(42, 'Trong bootstrap có hỗ trợ css group form nào ?&nbsp;', NULL, '1/2/3', 20, 'input checkbox', ' input radio', 'input text', 'input renger'),
(43, '<p>Bootrap là công nghệ có giúp cúng ta thực hiện chức năng gì</p>', NULL, '1/2/3', 20, 'Css giao diện', 'Chia lay out html', 'Thực hiện backend web', 'ffs'),
(44, '<p><span style=\"color: rgb(20, 20, 20); font-family: &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Helvetica, Roboto, Oxygen, Ubuntu, Cantarell, &quot;fira sans&quot;, &quot;droid sans&quot;, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\">&nbsp;Java chạy trên hệ điều hành nào sau đây?</span><br></p>', NULL, '4', 32, 'Microsoft Windows', 'Linux', 'Sun Solaris OS', 'Tất cả các đáp án đều đúng.'),
(45, '<p><span style=\"color: rgb(20, 20, 20); font-family: &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Helvetica, Roboto, Oxygen, Ubuntu, Cantarell, &quot;fira sans&quot;, &quot;droid sans&quot;, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\">File chứa mã nguồn java sau khi được biên dịch có đuôi là gì?</span><br></p>', NULL, '2', 32, '.java', '.class', '.jav', '.exe'),
(46, '<p><span style=\"color: rgb(20, 20, 20); font-family: &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Helvetica, Roboto, Oxygen, Ubuntu, Cantarell, &quot;fira sans&quot;, &quot;droid sans&quot;, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\">Có bao nhiêu loại biến trong Java?</span><br></p>', NULL, '4', 32, '1', '2', '3', '4'),
(47, '<p><span style=\"color: rgb(20, 20, 20); font-family: &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Helvetica, Roboto, Oxygen, Ubuntu, Cantarell, &quot;fira sans&quot;, &quot;droid sans&quot;, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\">Trường dữ liệu là các biến dạng nào sau đây?</span><br></p>', NULL, '2', 33, 'Biến thay mặt và Tham số', 'Biến thay mặt và biến lớp', 'Biến thay mặt và biến cục bộ', 'Biến lớp và Tham số'),
(48, '<p><span style=\"color: rgb(20, 20, 20); font-family: &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Helvetica, Roboto, Oxygen, Ubuntu, Cantarell, &quot;fira sans&quot;, &quot;droid sans&quot;, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\">Có bao nhiêu kiểu dữ liệu cơ sở trong Java?</span><br></p>', NULL, '4', 33, '5', '6', '7', '8'),
(49, '<p><span style=\"font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Đâu không phải là một kiểu dữ liệu nguyên thủy trong Java?</span><br></p>', NULL, '4', 33, 'double ', 'int', 'float', 'log'),
(50, '<p>Biểu thức nào có giá trị khác&nbsp; các biểu thức còn lại trong các biểu thức sau?<br></p>', NULL, '4', 34, 'true ', 'x==true', '1==1', '!x'),
(51, '<p>Với giá trị nào của x, biểu thức sau trả về giá trị true(x thuộc kiểu int).<br></p>', NULL, '4', 34, '2', '7', '4', '9'),
(52, '<p>Đọc đoạn mã lệnh sau. Sau khi thực thi chương trình sẽ in ra kết quả gì ?</p><div class=\"line number1 index0 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">public</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">class</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">Test {</code></div><div class=\"line number2 index1 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">public</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">static</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">void</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">main(String[] args) {</code></div><div class=\"line number3 index2 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">int</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">a = </code><code class=\"java value\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 153, 0) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">20</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">;</code></div><div class=\"line number4 index3 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">int</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">b = </code><code class=\"java value\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 153, 0) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">3</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">;</code></div><div class=\"line number5 index4 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\">&nbsp;</div><div class=\"line number6 index5 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">String s = (a % b == </code><code class=\"java value\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 153, 0) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">0</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">) ? </code><code class=\"java string\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: blue !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">\"a chia het cho b\"</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">: </code><code class=\"java string\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: blue !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">\"a khong chia het cho b\"</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">;</code></div><div class=\"line number7 index6 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">System.out.println(s);</code></div><div class=\"line number8 index7 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">}</code></div><div class=\"line number9 index8 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">}</code></div><p><br></p>', NULL, '1', 34, 'a khong chia het cho b', 'a  chia het cho b', 'cả 2 đáp án đều đúng', 'cả 2 đáp án đều sai');
INSERT INTO `question` (`question_id`, `question`, `question_img`, `answer`, `lesson_id`, `answer_one`, `answer_two`, `answer_three`, `answer_four`) VALUES
(53, '<div class=\"line number1 index0 alt2\" style=\"box-sizing: content-box !important; border-radius: 0px !important; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important;\"><span style=\"background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; box-sizing: content-box !important; border-style: initial !important; border-color: initial !important; border-image: initial !important; line-height: 1.1em !important; outline-color: initial !important; outline-style: initial !important;\"><b>Chọn đáp án đúng ?</b></span></div><div class=\"line number1 index0 alt2\" style=\"box-sizing: content-box !important; border-radius: 0px !important; background-image: none !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important;\"><span style=\"background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; box-sizing: content-box !important; border-style: initial !important; border-color: initial !important; border-image: initial !important; line-height: 1.1em !important; outline-color: initial !important; outline-style: initial !important;\"><b><br></b></span></div><div class=\"line number1 index0 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">public</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">class</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">WhileExample1 {</code></div><div class=\"line number2 index1 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;</code><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">public</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">static</code> <code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">void</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">main(String[] args) {</code></div><div class=\"line number3 index2 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;</code><code class=\"java keyword\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 102, 153) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">int</code> <code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">i = </code><code class=\"java value\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: rgb(0, 153, 0) !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">1</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">;</code></div><div class=\"line number4 index3 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;</code><code class=\"java keyword\" style=\"color: rgb(0, 102, 153) !important; box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; font-weight: bold !important; box-shadow: none !important; display: inline !important;\">while</code><font color=\"#333333\"> </font><code class=\"java plain\" style=\"color: black !important; box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">(i &lt;= </code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\"><font color=\"#009900\">3</font></code><code class=\"java plain\" style=\"color: black !important; box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">) {</code></div><div class=\"line number5 index4 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">System.out.println(i);</code></div><div class=\"line number6 index5 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">i++;</code></div><div class=\"line number7 index6 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">}</code></div><div class=\"line number8 index7 alt1\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java spaces\" style=\"color: rgb(199, 37, 78); box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">&nbsp;</code><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">}</code></div><div class=\"line number9 index8 alt2\" style=\"font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace; color: rgb(51, 51, 51); box-sizing: content-box !important; border-radius: 0px !important; background: none white !important; border: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; margin: 0px !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; vertical-align: baseline !important; width: auto !important; direction: ltr !important; box-shadow: none !important; white-space: pre !important;\"><code class=\"java plain\" style=\"box-sizing: content-box !important; font-family: Monaco, Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace !important; font-size: 1em !important; color: black !important; padding: 0px !important; background: none !important; border: 0px !important; border-radius: 0px !important; margin: 0px !important; inset: auto !important; float: none !important; height: auto !important; line-height: 1.1em !important; outline: 0px !important; overflow: visible !important; position: static !important; vertical-align: baseline !important; width: auto !important; box-shadow: none !important; display: inline !important;\">}</code></div>', NULL, '2', 35, ' 1,2,3,4,5', '1,2,3', '3,4,5,6,7', '3,4,2,5,3'),
(54, '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Arial, sans-serif; font-size: 15px; font-weight: 700; background-color: rgb(255, 255, 255);\">Phương thức nào dùng để tìm kiếm một chuỗi trong một chuỗi khác trong class String của Java?</span><br></p>', NULL, '1', 35, 'astIndexOf()', '\r\ntoString()\r\n', 'substring()', 'Không đáp án nào '),
(55, '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Arial, sans-serif; font-size: 15px; font-weight: 700; background-color: rgb(255, 255, 255);\">&nbsp;Chức năng của vòng lặp while là gì?</span><br></p>', NULL, '2', 35, 'Kiểm tra kết quả của biểu thức boolean\r\n\r\n', 'Tránh mâu thuẫn giữa bên trong và bên ngoài switch', 'Lặp lại khối lệnh chứng nào điều kiện là đúng', 'Không đáp án nào đúng '),
(56, '<p><span style=\"font-size: 1rem;\">Cách khai báo mảng nào sau đây là đúng?</span><br></p>', NULL, '4', 36, 'int[] a;\r\n', 'int a[];\r\n', 'int a[] = new int[10];\r\n', 'Cả 3 khai báo đều đúng '),
(57, '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Arial, sans-serif; font-size: 15px; font-weight: 700; background-color: rgb(255, 255, 255);\">Có bao nhiêu đổi tham chiếu của đối tượng mảng và biến tồn tại sau khi thực hiện khối lệnh?</span></p><pre class=\"prettyprint prettyprinted\" id=\"pre0\" style=\"margin-bottom: 0px; padding: 5px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Menlo, &quot;Bitstream Vera Sans Mono&quot;, &quot;DejaVu Sans Mono&quot;, Monaco, Consolas, monospace; max-width: 100%; max-height: 600px; background: rgb(244, 251, 244); border-radius: 5px; color: rgba(0, 0, 0, 0.87); border: 1px solid rgb(221, 221, 221) !important;\"><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(61, 98, 245);\">String</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">[]</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> students </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">=</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(173, 43, 238);\">new</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(61, 98, 245);\">String</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">[</span><span class=\"lit\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(135, 113, 29);\">10</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">];</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(61, 98, 245);\">String</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> studentName </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">=</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">“</span><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(61, 98, 245);\">Peter</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"typ\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(61, 98, 245);\">Parker</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">”;</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">students</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">[</span><span class=\"lit\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(135, 113, 29);\">0</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">]</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">=</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> studentName</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">;</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">studentName </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">=</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(173, 43, 238);\">null</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">;</span></pre><p><br></p>', NULL, '2', 36, '1', '2', '3', '4'),
(58, '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Arial, sans-serif; font-size: 15px; font-weight: 700; background-color: rgb(255, 255, 255);\">&nbsp;Lệnh nào ngừng vòng lặp hiện thời và bắt đầu vòng lặp tiếp theo?</span><br></p>', NULL, '1', 36, 'continue\r\n', 'break', 'cease', 'end'),
(59, '<p>Chọn cách khai báo biến đúng?<br></p>', NULL, '2', 37, 'nt a;b;c;\r\n\r\n\r\n', 'int a,b,c;', 'int:a,b,c;', 'var a,b,c:integer;'),
(60, '<p>Bộ nhớ lưu trữ 1 giá trị của kiểu&nbsp; long là?<br></p>', NULL, '2', 37, '\r\n1 byte\r\n\r\n', '\r\n8 byte', '4 byte', '2 byte'),
(61, '<p>Trong ngôn ngữ lập trình C++, câu lệnh nào sau đây là&nbsp;<span style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\">đúng</span>&nbsp;?<br></p>', NULL, '2', 37, 'if (biểu thức logic) ; câu_lệnh_1 ; else câu_lệnh_2 ;', '\r\nif (biểu thức logic) câu_lệnh_1 ; else câu_lệnh_2 ;', 'if (biểu thức logic) ; câu_lệnh_1 else câu_lệnh_2 ;', '﻿if (biểu thức logic) câu_lệnh_1 else câu_lệnh_2 ;'),
(62, '<p>Cú pháp lệnh đưa dữ liệu ra màn hình trong C++ là<br></p>', NULL, '4', 38, '\r\ncout<<tenbien;', '\r\ncout<<bieuthuc;', '\r\ncout<<hằng;', '\r\nTất cả các phương án'),
(63, '<p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">Hãy cho biết kết quả của đoạn chương trình sau:</p><p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">int a=-2, b=3; float x;</p><p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">if(a!=0) {x=-b/a; cout&lt;&lt;”pt co nghiem x=”&lt;&lt;x;}</p><p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">else cout&lt;&lt;”ptvn”;</p>', NULL, '2', 38, '-1.5', '1', '-1', '1.5'),
(64, '<p><div class=\"relative bg-light-1 mb-4 h-px\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; position: relative; margin-bottom: 1rem; height: 1px; --tw-bg-opacity:1; background-color: rgba(242, 242, 242, var(--tw-bg-opacity)); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"flex items-center mb-4\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-bottom: 1rem; display: flex; align-items: center; orphans: 2; text-align: start; text-indent: 0px; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"text-sm flex overflow-hidden text-dark-2\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; display: flex; overflow: hidden; line-height: 1.5rem; --tw-text-opacity:1;\"><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin: 0px;\">Chọn phát biểu đúng về câu lệnh lặp với số lần không biết trước:&nbsp;<font color=\"rgba(0, 0, 0, 0)\" face=\"Open Sans, sans-serif, Helvetica, Arial, Symbola\"><span style=\"font-size: 0.875rem; font-weight: bolder; letter-spacing: -0.01em; background-color: rgb(255, 255, 255); border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\">while(</span></font><span style=\"border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\">điều kiện</span>) {<span style=\"border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\">Câu lệnh</span>;}&nbsp;trong các phát biểu dưới đây :</p></span></div></div>', NULL, '4', 38, 'Biểu thức điều kiện được tính và kiểm tra, nếu biểu thức đó sai thì câu lệnh được thực hiện.', 'Câu lệnh bao giờ cũng được thực hiện ít nhất một lần.', 'điều kiện trong cấu trúc lặp while có thể là một biểu thức kiểu nguyên hoặc kiểu kí tự.', 'Khi xác định được trước số lần lặp vẫn có thể dùng cấu trúc lặp while.'),
(65, '<p><div class=\"relative bg-light-1 mb-4 h-px\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; position: relative; margin-bottom: 1rem; height: 1px; --tw-bg-opacity:1; background-color: rgba(242, 242, 242, var(--tw-bg-opacity)); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"flex items-center mb-4\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-bottom: 1rem; display: flex; align-items: center; orphans: 2; text-align: start; text-indent: 0px; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"text-sm flex overflow-hidden text-dark-2\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; display: flex; overflow: hidden; line-height: 1.5rem; --tw-text-opacity:1;\"><font color=\"rgba(0, 0, 0, 0)\" face=\"Open Sans, sans-serif, Helvetica, Arial, Symbola\"><span style=\"font-size: 0.875rem; letter-spacing: -0.01em; background-color: rgb(255, 255, 255);\">&nbsp;</span></font><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin: 0px;\">Chọn khai báo đúng, để khai báo mảng a gồm 20 số nguyên?</p></span></div></div>', NULL, '1', 39, 'int a[20];\r\n', '\r\nint a\r\n;', 'int a[0. . 19];', 'int a[1. . 20];'),
(66, '<p>Cho biến v là biến để biểu diễn vận tốc của 1 chiếc ô tô. Hãy cho biết khai báo biến nào dưới đây là đúng và hợp lý nhất<br></p>', NULL, '4', 39, 'log V', 'Int v', 'char v', 'float v'),
(67, '<p><span style=\"color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">&nbsp;</span><span style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin: 0px;\">Cho biến m là biến dùng để biểu diễn số dân của Phường Bãi Cháy năm 2019 khoảng 30280 người. Hãy lựa chọn cách khai báo biến m là đúng và hợp lý nhất</p>', NULL, '3', 40, 'log m', 'int m', 'short int m', 'float m'),
(68, '<p><div class=\"relative bg-light-1 mb-4 h-px\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; position: relative; margin-bottom: 1rem; height: 1px; --tw-bg-opacity:1; background-color: rgba(242, 242, 242, var(--tw-bg-opacity)); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"flex items-center mb-4\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-bottom: 1rem; display: flex; align-items: center; orphans: 2; text-align: start; text-indent: 0px; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"text-sm flex overflow-hidden text-dark-2\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; display: flex; overflow: hidden; line-height: 1.5rem; --tw-text-opacity:1;\"><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin: 0px;\">Phạm vi giá trị của kiểu kí tự là:</p></span></div></div>', NULL, '3', 40, 'Từ -255 đến 255', 'Từ 0 đến 100', '\r\nTừ -128 đến 127', '\r\nTừ -127 đến 127');
INSERT INTO `question` (`question_id`, `question`, `question_img`, `answer`, `lesson_id`, `answer_one`, `answer_two`, `answer_three`, `answer_four`) VALUES
(69, '<p><span style=\"color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, sans-serif, Helvetica, Arial, Symbola; font-size: 14px; letter-spacing: -0.14px; background-color: rgb(255, 255, 255);\">Để thực hiện vòng lặp N lần, cách viết nào sau đây là đúng?</span><br></p>', NULL, '4', 40, '\r\nfor(int i=1;i<=N;i++)', '\r\nfor(int i=N;i>0;i--)', '\r\nfor(int i=0;i<N;i++)', 'tất cả đều đúng'),
(70, '<p>Khai báo hằng xâu nào dưới dây là đúng<br></p>', NULL, '3', 41, '\r\nconst char TRUONG=\"Uong Bi\";', 'const TRUONG=\"Uong Bi\";', 'const string TRUONG=\"Uong Bi\";', '\r\nconst TRUONG= Uong Bi;'),
(71, '<p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Hãy cho biết giá trị của biến i khi thực hiện đoạn chương trình sau: int a[10]={4, 1, 0, 9, 7, 8, 3, 9, 7, 4};</p><p style=\"border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">int N=10; i=0; x=9; while(x!=a[i] &amp;&amp;i&lt;N) i=i+1;</p>', NULL, '3', 41, '4', '8', '3', '1'),
(72, '<p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59, 130, 246, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin: 0px;\">Cho khai báo int a[10]={4, 1, 0, 9, 7, 8, 3, 9, 7, 4}; Hãy chọn mệnh đề đúng trong các mệnh đề sau</p>', NULL, '2', 41, 'a[1]=4', 'a[4]=7', '\r\na[5]=7', '\r\na[10]=4'),
(73, '<p>&nbsp;Khẳng định nào sau đây về Python là đúng?<br></p>', NULL, '4', 42, 'Python là ngôn ngữ lập trình cao cấp', 'Python là ngôn ngữ lập trình thông dịch', 'Python là ngôn ngữ lập trình hướng đối tượng', 'tất cả đều đúng'),
(74, '<p><a href=\"https://doctailieu.com/trac-nghiem/ki-hieu-nao-dung-de-xac-dinh-cac-khoi-lenh-khoi-lenh-cua-ham-vong-lap-35026\" title=\"Xem chi tiết câu hỏi\" style=\"color: rgb(34, 34, 34); text-decoration: none; font-family: Roboto, sans-serif; font-weight: 400; text-align: justify;\"><span class=\"underline\" style=\"color: rgb(1, 0, 130); font-weight: bold;\">Kí hiệu nào dùng để xác định các khối lệnh (khối lệnh của hàm, vòng lặp,...) trong Python?</span></a><br></p>', NULL, '3', 42, 'Dấu ngoặc nhọn { }', 'Dấu ngoặc vuông [ ]', 'Thụt lề', 'Dầu ngoặc đơn ( )'),
(75, '<p><a href=\"https://doctailieu.com/trac-nghiem/khang-dinh-nao-la-dung-ve-chu-thich-trong-python-d-tat-ca-cac-dap-an-tren-35027\" title=\"Xem chi tiết câu hỏi\" style=\"color: rgb(34, 34, 34); text-decoration: none; font-family: Roboto, sans-serif; font-weight: 400; text-align: justify;\"><span class=\"underline\" style=\"color: rgb(1, 0, 130); font-weight: bold;\">Khẳng định nào là đúng về chú thích trong Python?</span></a><br></p>', NULL, '4', 42, 'Chú thích giúp cho các lập trình viên hiểu rõ hơn về chương trình.', 'Trình thông dịch Python sẽ bỏ qua những chú thích.', ' Có thể viết chú thích trên cùng một dòng với lệnh/biểu thức hoặc viết trên nhiều dòng mà không vấn đề gì cả', 'Tất cả các đáp án trên.\r\n\r\n'),
(76, '<p><a href=\"https://doctailieu.com/trac-nghiem/dau-la-quy-tac-dung-khi-dat-ten-cho-bien-trong-python-a-ten-bien-co-the-bat-35028\" title=\"Xem chi tiết câu hỏi\" style=\"color: rgb(34, 34, 34); text-decoration: none; font-family: Roboto, sans-serif; font-weight: 400; text-align: justify;\"><span class=\"underline\" style=\"color: rgb(1, 0, 130); font-weight: bold;\">Đâu là quy tắc đúng khi đặt tên cho biến trong Python?</span></a><br></p>', NULL, '1', 43, 'Tên biến có thể bắt đầu bằng dấu gạch dưới \" _ \".', 'Có thể sử dụng keyword làm tên biến.', 'Tên biến có thể bắt đầu bằng một chữ số.', 'Tên biến có thể có các ký hiệu như !, @, #, $, %,...'),
(77, '<p><a href=\"https://doctailieu.com/trac-nghiem/khang-dinh-nao-sau-day-la-dung-a-lop-class-la-mot-ke-hoach-chi-tiet-cho-doi-35037\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><span class=\"underline\" style=\"\">Khẳng định nào sau đây là đúng?</span></a><br></p>', NULL, '1', 43, 'Lớp (class) là một kế hoạch chi tiết cho đối tượng.', 'Chỉ có thể tạo một đối tượng duy nhất từ lớp đã cho.', 'Cả hai đáp án trên đều đúng.', 'Không có đáp án chính xác.'),
(78, '<p><a href=\"https://doctailieu.com/trac-nghiem/numbers-2-3-4numbers-2-3-4printnumbers-ket-qua-cua-doan-code-duoi-day-35032\" title=\"Xem chi tiết câu hỏi\" style=\"box-sizing: border-box; orphans: 2; text-align: justify; text-indent: 0px; widows: 2;\"><font color=\"#000000\">numbers = [2, 3, 4]</font><br style=\"box-sizing: border-box;\"></a></p><div class=\"content_simple_notice_1\" style=\"box-sizing: border-box; border: 1px solid rgb(68, 165, 0); margin: 10px 0px; border-radius: 5px; padding: 8px 5px 10px;\"><div class=\"notice_text\" style=\"box-sizing: border-box;\">numbers = [2, 3, 4]<br style=\"box-sizing: border-box;\">print(numbers)</div></div><p><a href=\"https://doctailieu.com/trac-nghiem/numbers-2-3-4numbers-2-3-4printnumbers-ket-qua-cua-doan-code-duoi-day-35032\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><font color=\"#000000\"><br>Kết quả của đoạn code dưới đây là:</font></a><br></p>', NULL, '3', 44, '2, 3, 4', '2 3 4', '[2, 3, 4]', ' [2 3 4]'),
(79, '<p><a href=\"https://doctailieu.com/trac-nghiem/mot-lop-duoc-thua-huong-thuoc-tinh-tu-hai-lop-khac-nhau-duoc-goi-la-gi-b-da-35042\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><span class=\"underline\" style=\"\"><font color=\"#000000\">Một lớp được thừa hưởng thuộc tính từ hai lớp khác nhau được gọi là gì?</font></span></a><br></p>', NULL, '2', 44, 'Kế thừa đa cấp (Multilevel Inheritance)', 'Đa kế thừa (Multiple Inheritance)', 'Kế thừa phân cấp (Hierarchical Inheritance)', 'Kế thừa (Inheritance)\r\n\r\n'),
(80, '<p><a href=\"https://doctailieu.com/trac-nghiem/n-5n-5-n-trong-doan-sau-la-kieu-du-lieu-nao-b-string-trac-nghiem-mon-35029\" title=\"Xem chi tiết câu hỏi\" style=\"font-family: Roboto, sans-serif; font-weight: 400; text-align: justify;\"><span class=\"underline\" style=\"font-weight: bold;\"><font color=\"#000000\" style=\"\">n = \'5\'<br>n trong đoạn sau là kiểu dữ liệu nào?</font></span></a><br></p>', NULL, '2', 44, 'integer', 'string', 'tuple', 'operator'),
(81, '<p><a href=\"https://doctailieu.com/trac-nghiem/print3-3print3-3-output-cua-lenh-la-b-true-trac-nghiem-mon-lap-trinh-35034\" title=\"Xem chi tiết câu hỏi\" style=\"box-sizing: border-box; orphans: 2; text-align: justify; text-indent: 0px; widows: 2;\">print(3 &gt;= 3)<br style=\"box-sizing: border-box;\"></a></p><div class=\"content_simple_notice_1\" style=\"box-sizing: border-box; border: 1px solid rgb(68, 165, 0); margin: 10px 0px; border-radius: 5px; padding: 8px 5px 10px;\"><div class=\"notice_text\" style=\"box-sizing: border-box;\"><span style=\"background-color: rgb(255, 255, 255);\">print(3 &gt;= 3)</span></div></div><p><a href=\"https://doctailieu.com/trac-nghiem/print3-3print3-3-output-cua-lenh-la-b-true-trac-nghiem-mon-lap-trinh-35034\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><br>Output của lệnh là:</a><br></p>', NULL, '2', 45, '3 >= 3', 'True', 'None', 'False'),
(82, '<p><a href=\"https://doctailieu.com/trac-nghiem/khang-dinh-nao-sau-day-la-dung-a-lop-class-la-mot-ke-hoach-chi-tiet-cho-doi-35037\" title=\"Xem chi tiết câu hỏi\" style=\"outline: -webkit-focus-ring-color auto 0px; text-align: justify;\"><span class=\"underline\" style=\"\"><font color=\"#000000\">Khẳng định nào sau đây là đúng?</font></span></a><br></p>', NULL, '1', 45, 'Lớp (class) là một kế hoạch chi tiết cho đối tượng.', 'Lớp (class) là một kế hoạch chi tiết cho đối tượng.', 'Cả hai đáp án trên đều đúng.', 'Cả hai đáp án trên đều sai.'),
(83, '<p><a href=\"https://doctailieu.com/trac-nghiem/class-aclass-adef-initselfselfx-1selfy-1def-getyselfreturn-35058\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><font color=\"#000000\"><br></font></a></p><p><a href=\"https://doctailieu.com/trac-nghiem/class-aclass-adef-initselfselfx-1selfy-1def-getyselfreturn-35058\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><em style=\"font-family: Roboto, sans-serif; background-color: rgb(255, 251, 226);\"><font color=\"#000000\">class A:<br>def __init__(self):<br>self.x = 1<br>self.__y = 1<br>def getY(self):<br>return self.__y<br><br>a = A()<br>a.x = 45<br>print(a.x)</font></em><font color=\"#000000\"><br></font></a></p><p><a href=\"https://doctailieu.com/trac-nghiem/class-aclass-adef-initselfselfx-1selfy-1def-getyselfreturn-35058\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><font color=\"#000000\">Khẳng định nào là đúng về chương trình dưới đây?</font></a><br></p>', NULL, '4', 45, 'Chương trình có lỗi xảy ra vì \' x \' là thuộc tính private, không thể truy cập được từ bên ngoài lớp.', 'Chương trình chạy bình thường và kết quả được in ra là 1.', 'Chương trình có lỗi xảy ra vì \' __y \' là thuộc tính private, không thể truy cập được từ bên ngoài lớp.', ' Chương trình chạy bình thường và kết quả được in ra là 45.'),
(84, '<p><a href=\"https://doctailieu.com/trac-nghiem/ngoai-le-nao-xay-ra-khi-phat-hien-thay-loi-khong-thuoc-bat-ky-danh-muc-nao-khac-35054\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><span class=\"underline\" style=\"\"><font color=\"#000000\">Ngoại lệ nào xảy ra khi phát hiện thấy lỗi không thuộc bất kỳ danh mục nào khác?</font></span></a><br></p>', NULL, '2', 46, 'ReferenceError', 'SystemError', 'RuntimeError', ' LookupError'),
(85, '<p><a href=\"https://doctailieu.com/trac-nghiem/class-fooclass-foodef-printlineself-line-pythonprintlineo1-35038\" title=\"Xem chi tiết câu hỏi\" style=\"box-sizing: border-box; color: rgb(34, 34, 34); text-decoration: none; font-family: Roboto, sans-serif; font-size: 16px; font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 251, 226);\"><em style=\"box-sizing: border-box;\">class Foo:<br style=\"box-sizing: border-box;\"></em></a></p><div class=\"content_simple_notice_1\" style=\"box-sizing: border-box; border: 1px solid rgb(68, 165, 0); color: rgb(85, 85, 85); margin: 10px 0px; border-radius: 5px; background-color: rgb(255, 251, 226); padding: 8px 5px 10px;\"><div class=\"notice_text\" style=\"box-sizing: border-box; text-align: justify;\"><em style=\"box-sizing: border-box;\">class Foo:<br style=\"box-sizing: border-box;\">def printLine(self, line = \'Python\'):<br style=\"box-sizing: border-box;\">print(line)<br style=\"box-sizing: border-box;\">o1 = Foo()<br style=\"box-sizing: border-box;\">o1.printLine(\'Java\')</em></div></div><p><a href=\"https://doctailieu.com/trac-nghiem/class-fooclass-foodef-printlineself-line-pythonprintlineo1-35038\" title=\"Xem chi tiết câu hỏi\" style=\"text-align: justify;\"><br><font color=\"#000000\">Đâu là kết quả của đoạn code dưới đây?</font></a><br></p>', NULL, '4', 46, 'Python', 'js', 'line', 'java'),
(86, '<p><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">&nbsp;JavaScript là ngôn ngữ xử lý ở:</span><br></p>', NULL, '1', 47, 'Client', 'Server', 'Server/client', 'Không có dạng nào.'),
(87, '<p>Thẻ &lt;input type=”Radio” …&gt; dùng để làm gì?<br></p>', NULL, '2', 47, '\r\nTạo một ô text để nhập dữ liệu\r\n\r\n\r\n', 'Tạo một nhóm đối tượng chọn nhưng  chọn duy nhất ', 'Tạo một  cùng có nhiều cột nhiều dòng', 'Tất cả các ý trên'),
(88, '<p>Thẻ &lt;input type=”button” …&gt; dùng để làm gì?<br></p>', NULL, '2', 47, 'Tạo một ô text để nhập dữ liệu', 'Tạo một nút lệnh lên trên form', 'Tạo một  cùng có nhiều cột nhiều dòng', 'Tất cả ý kiến trên '),
(89, '<p>Lệnh lặp for có dạng như thế nào?<br></p>', NULL, '1', 48, ' for ( biến = Giá trị đầu; Điều kiện; Giá trị tăng) ', ' for ( biến = Giá trị đầu; Giá trị tăng; điều kiện)', ' for ( biến = Điều kiện; Giá trị tăng; Giá trị cuối)', ' Tất cả các dạng trên'),
(90, '<p>Vòng lặp While là dạng vòng lặp?<br></p>', NULL, '1', 48, 'Không xác định và xét điều kiện rồi mới lặp ', 'Không xác định và  lặp rồi mới xét điều kiện', 'Cả hai dạng trên', 'Không tồn tại dạng nào ở trên'),
(91, '<p>Vòng lặp (Do.. while) là dạng vòng lặp?<br></p>', NULL, '2', 48, 'Không xác định và xét điều kiện rồi mới lặp', 'Không xác định và lặp rồi mới xét điều kiện ', 'Cả hai dạng trên', 'Không có dạng nào'),
(92, '<p>&nbsp;Lệnh break kết hợp với vòng for dùng để?<br></p>', NULL, '1', 49, 'Ngưng vòng for nếu gặp lệnh này ', 'Không có ý nghĩa trong vòng lặp', 'Nhảy đến một tập lệnh khác', ' Không thể kết hợp được'),
(93, '<p>àm alert() dùng để làm gì?<br></p>', NULL, '1', 49, 'Dùng để hiện một thông điệp ', ' Dùng để hiện một thông báo nhập', 'Dùng để chuyển đổi số sang chữ', '  Tất cả các dạng trên'),
(94, '<p>Thẻ &lt;Frameset cols&gt; &lt;/frameset&gt;<br></p>', NULL, '2', 49, 'Dùng để chia trang web ra nhiều phần theo dòng', 'Dùng để chia trang web ra nhiều phần theo cột ', ' Tất cả dạng trên', 'Không có ý nào ở trên'),
(95, '<p>&nbsp;Sự kiện nào xảy ra khi người dùng kích vào một phần tử HTML trên trang?<br></p>', NULL, '1', 50, 'onclick', 'onmouseclick', 'onmouseover', 'onchange'),
(96, '<p>Cách nào tạo một hàm trong JavaScript?<br></p>', NULL, '2', 50, 'function:myFunction()', 'function myFunction()', 'function = myFunction()', 'tất cả đều đúng'),
(97, '<p>Trong Javascript đoạn mã sau cho ra kết quả gì?</p><pre class=\"prettyprint prettyprinted\" id=\"pre0\" style=\"margin-bottom: 0px; padding: 5px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Menlo, &quot;Bitstream Vera Sans Mono&quot;, &quot;DejaVu Sans Mono&quot;, Monaco, Consolas, monospace; max-width: 100%; max-height: 600px; background: rgb(244, 251, 244); border-radius: 5px; color: rgba(0, 0, 0, 0.87); border: 1px solid rgb(221, 221, 221) !important;\"><span class=\"tag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(230, 25, 60);\">&lt;script&gt;</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"kwd\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(173, 43, 238);\">function</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> kiemtra</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">(){</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">window</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">.</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">open</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">(</span><span class=\"str\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(41, 163, 41);\">\"http://Quantrimang.com\"</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">,</span><span class=\"str\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(41, 163, 41);\">\"Chao\"</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">);</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">}</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"tag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(230, 25, 60);\">&lt;/script&gt;</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"tag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(230, 25, 60);\">&lt;/head&gt;</span><br style=\"margin: 0px; padding: 0px;\"><br style=\"margin: 0px; padding: 0px;\"><span class=\"tag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(230, 25, 60);\">&lt;body</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"atn\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(135, 113, 29);\">onload</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\"> </span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">=</span><span class=\"atv\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(25, 153, 179);\">\"</span><span class=\"pln\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">kiemtra</span><span class=\"pun\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(19, 21, 19);\">()</span><span class=\"atv\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(25, 153, 179);\">\"</span><span class=\"tag\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(230, 25, 60);\">&gt;&lt;/body&gt;</span></pre>', NULL, '1', 51, 'Khi chạy thì một trang khác (VNN) được hiện ra', ' Không chạy được vì sai', ' Khi kết thúc thì một site khác hiện ra', 'Hiện một trang vnn duy nhất'),
(98, '<p>Thẻ &lt;input type=\'Password\'&gt; dùng để làm gì?<br></p>', NULL, '2', 51, ' Tạo một ô text để nhập dữ liệu 1 dòng', ' Tạo một ô password ', 'Tạo một  textbox cho phép nhập liệu nhiều dòng', 'Tất cả các ý trên'),
(99, '<p>Hàm prompt(…) trong JavaScript dùng để làm gì?<br></p>', NULL, '3', 51, 'Chuyển một chuỗi thành số', 'Hiển thị một thông báo Yes, No', 'Hiển thị thông báo nhập thông tin', 'Không phương án nào đúng'),
(100, '<h5 id=\"1-có-mấy-loại-biến-khác-nhau-trong-ruby-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Có mấy loại biến khác nhau trong Ruby ?</h5>', NULL, '1', 52, '4', '5', '6', '7'),
(101, '<h5 id=\"2-đoạn-code-dưới-đây-cho-ra-kết-quả-nào-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: 17px; line-height: 24px; font-family: &quot;open sans&quot;, sans-serif; vertical-align: baseline; color: rgb(24, 24, 24); background-color: rgb(255, 255, 255);\">&nbsp;Đoạn code dưới đây cho ra kết quả nào ?</h5><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: &quot;open sans&quot;, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><img src=\"http://blog.thiennk.net/assets/img/ruby-knowledge-quiz/q2.png\" alt=\"\" style=\"margin: 8px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\"></p>', NULL, '2', 52, '1', '2', 'True', 'False'),
(102, '<h5 id=\"4-câu-lệnh-lấy-object_id-của-một-object-trong-ruby-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Câu lệnh lấy object_id của một Object trong Ruby ?</h5>', NULL, '3/4', 53, ' object.object_id', 'object.get(:object_id)', ' object.method(:object_id).call', 'object.send(:object_id)'),
(103, '<h5 id=\"6-phát-biểu-nào-dưới-đây-chỉ-ra-sự-khác-nhau-giữa-blocks-và-procs-trong-ruby-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Phát biểu nào dưới đây chỉ ra sự khác nhau giữa Blocks và Procs trong Ruby ?</h5>', NULL, '2/4', 53, 'List tham số truyền vào của 1 function, có thể có nhiều Procs nhưng chỉ tối đa là 1 Blocks', 'Blocks là một đối tượng , Procs không phải là một đối tượng', ' Procs là một đối tượng , Blocks không phải là một đối tượng', ' Chỉ Blocks là không thể gán cho cho tham số, còn Procs thì gán được'),
(104, '<h5 id=\"5-đoạn-code-dưới-đây-cho-ra-kết-quả-nào-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">&nbsp;Đoạn code dưới đây cho ra kết quả nào ?</h5><h5 id=\"5-đoạn-code-dưới-đây-cho-ra-kết-quả-nào-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5; font-family: &quot;open sans&quot;, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><img src=\"http://blog.thiennk.net/assets/img/ruby-knowledge-quiz/q5.png\" alt=\"\" style=\"margin: 8px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\"></p></h5>', NULL, '2', 53, '30', '10', '20', 'error'),
(105, '<h5 id=\"9-hàm-nào-để-xáo-trộn-thứ-tự-các-phần-tử-trong-mảng-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">&nbsp;Hàm nào để xáo trộn thứ tự các phần tử trong mảng ?</h5>', NULL, '4', 54, 'scramble', 'randomize', ' sort', 'shuffle'),
(106, '<h5 id=\"7-include-code-của-file-lib_modulerb-vào-một-class-a-thì-cách-dùng-nào-sau-đây-mỗi-khi-gọi-class-a-thì-lại-đọc-lại-file-lib_modulerb-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Include code của file lib_module.rb vào một class A, thì cách dùng nào sau đây mỗi khi gọi Class A thì lại đọc lại file lib_module.rb ?</h5><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: &quot;open sans&quot;, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><img src=\"http://blog.thiennk.net/assets/img/ruby-knowledge-quiz/q7.png\" alt=\"\" style=\"margin: 8px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\"></p>', NULL, '1', 54, 'load “lib_module.rb”', ' require “lib_module”', ' include LibModule', 'extend LibModule'),
(107, '<h5 id=\"3-đoạn-code-dưới-đây-cho-ra-kết-quả-nào-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Đoạn code dưới đây cho ra kết quả nào ?</h5><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: &quot;open sans&quot;, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><img src=\"http://blog.thiennk.net/assets/img/ruby-knowledge-quiz/q3.png\" alt=\"\" style=\"margin: 8px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: block; max-width: 100%;\"></p>', NULL, '4', 54, '22', '12', '20', 'error'),
(108, '<h5 id=\"10-operator-nào-dưới-đây-không-có-trong-ruby-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Operator nào dưới đây không có trong Ruby ?</h5>', NULL, '2', 55, '‘<=>’', '‘=%’', ' ‘!=’', ' ‘==’'),
(109, '<h5 id=\"17-câu-lệnh-sql-nào-sẽ-được-thực-thi-khi-ta-gọi-lênh-usertake-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Câu lệnh SQL nào sẽ được thực thi khi ta gọi lênh User.take ?</h5>', NULL, '2', 55, ' SELECT “users”.* FROM “users” ORDER BY id ASC', 'SELECT “users”.* FROM “users” LIMIT 1', ' SELECT “users”.* FROM “users” ORDER BY id DESC', 'SELECT “users”.* FROM “users” ORDER BY id ASC LIMIT 1'),
(110, '<h5 id=\"11-lệnh-rollback-một-file-migration-trong-rails-\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline;\">Lệnh rollback một file migration trong rails ?</h5>', NULL, '2', 55, 'rake db:migrate:redo', ' rake db:migrate:down', 'rake db:rollback', 'rake db:migrate:reset'),
(111, '<p>Dòng nào tuân theo đúng cú pháp của CSS?<br></p>', NULL, '1', 56, 'body {color: black}', '{body;color:black}', 'body:color=black', '{body:color=black(body}'),
(112, '<p>&nbsp;Dòng nào thể hiện đúng một comment (lời chú thích) trong CSS?<br></p>', NULL, '2', 56, '// this is a comment //', '/* this is a comment */', '“this is a comment”', ' // this is a comment'),
(113, '<p>Làm thế nào thêm màu nền cho tất cả các phần tử &lt;h1&gt;?<br></p>', NULL, '2', 56, 'h1.all {background-color:#FFFFFF}', 'h1 {background-color:#FFFFFF}', ' all.h1 {background-color:#FFFFFF}', 'Tất cả đều đúng'),
(114, '<p>a:hover là:<br></p>', NULL, '4', 57, 'Liên kết chưa thăm', 'Kích hoạt một thành phần', 'Liên kết đã thăm', 'Di chuột một thành phần'),
(115, '<p>Dòng nào đặt ảnh hinh.jpg làm ảnh nền trang web?<br></p>', NULL, '3', 57, 'bg-image:hinh.jpg', 'background-image:hinh.jpg}', 'background-image:url(hinh.jpg)one}\r\n', 'background-image:url=hinh.jpg'),
(116, '<p>Dòng nào để thiết lập canh đều cho văn bản?<br></p>', NULL, '2', 58, 'text-align: center', 'text-align: justify', 'font-align: center', 'font-align: justify'),
(117, '<p>Nhóm các đối tượng có cùng thuộc tính và có thể được sử dụng nhiều lần là:<br></p>', NULL, '1', 58, 'class', 'id', 'Cả A và B đều đúng', 'Cả A và B đều sai'),
(118, '<p>&nbsp;Để liên kết tới External Style sheet ta sử dụng thẻ:<br></p>', NULL, '3', 58, '<STYLE>', '<A>', '<LINK>', '<CSS>'),
(119, '<p>Thuộc tính nào làm chữ trong tag p trở thành chữ đậm?<br></p>', NULL, '4', 59, '{text-size:bold}', '<p style=\"font-size:bold\">\r\n', '<p style=\"text-size:bold\">', 'p {font-weight:bold}'),
(120, '<p>Làm sao để tạo chữ đậm?<br></p>', NULL, '3', 59, 'font-weight:bold', 'style:bold', 'font:b', 'Tất cả các câu trên đều đúng'),
(121, '<p>Làm thế nào để hiển thị viền 1 phần tử với kích thước đường viền như sau: The top border = 10 pixels The bottom border = 5 pixels The left border = 20 pixels The right border = 1pixel?<br></p>', NULL, '3', 60, 'border-width:5px 20px 10px 1px', 'border-width:10px 5px 20px 1px', 'border-width:10px 1px 5px 20px', 'border-width:10px 20px 5px 1px'),
(122, '<p>Làm sao để thay đổi lề trái của một phần tử?<br></p>', NULL, '1', 60, 'margin-left:', 'text-indent:', 'margin:', 'indent:'),
(123, '<p>Làm thế nào để hình ở đầu mỗi dung của 1list (danh sách) có hình vuông?<br></p>', NULL, '4', 60, 'type: 2', 'type: square', 'list-type: square', 'list-style-type: square'),
(124, '<p>Định dạng file chuẩn của Photoshop là?<br></p>', NULL, '3', 23, 'JPG', 'PST', 'PSD', 'tất cả các định dạng file ảnh'),
(125, '<p>Để bật/tắt tools box ta chọn lệnh<br></p>', NULL, '2', 23, 'Window\\ tool box', 'Window\\ tools', 'Window\\ Navigator', 'Cả A và B đều đúng'),
(126, '<p>&nbsp;Để cuộn xem hình ảnh mà kích thước hình ảnh lớn hơn cửa sổ hiển thị nó:<br></p>', NULL, '3', 24, 'Dùng công cụ Hand (phím tắt H)', 'Đè thanh Space bar trên bàn phím', 'Đáp án A và B đều đúng', 'Đáp án A và B đều sai'),
(127, '<p>Phát biểu nào dưới đây không đúng<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Arial, sans-serif; font-size: 15px; font-weight: 700; background-color: rgb(255, 255, 255);\">:</span><br></p>', NULL, '2', 24, 'Ctrl + Z', 'Ctrl+Alt + Z', 'Cả A và B đều sai', 'Cả A và B đều đúng'),
(128, '<p>&nbsp;Phát biểu nào dưới đây không đúng<br></p>', NULL, '4', 24, 'Rotate 90° CW: Xoay 90° cùng chiều kim đồng hồ', 'Rotate 90° CCW: Xoay 90° ngược chiều kim đồng hồ', 'Flip Horizontal: Lật đối tượng theo chiều ngang đối xứng', 'Flip Vertical: Lật đối tượng theo chiều ngang đối xứng'),
(129, '<p>Phần mềm Photoshop có thể:<br></p>', NULL, '4', 25, 'Cắt ghép hình ảnh', 'Phục chế ảnh', 'Thiết kế giao diện Web', 'Tất cả các đáp án trên'),
(130, '<p>&nbsp;Bộ công cụ Marquee có thể tạo vùng chọn theo:<br></p>', NULL, '3', 25, 'Hình chữ nhật', 'Hình elip', 'Cả A và B đều đúng', 'Cả A và B đều sai '),
(131, '<p>Công cụ Lasso Tool là:<br></p>', NULL, '1', 25, 'Công cụ tạo vùng chọn tự do', 'Công cụ chọn vùng dựa theo màu sắc', 'Công cụ bám dính', 'Công cụ di chuyển'),
(132, '<p>&nbsp;Công cụ Move Tool có tác dụng:<br></p>', NULL, '2', 26, 'Sao chép ảnh', 'Để di chuyển đối tượng và gióng hàng các đối tượng trên các Layer', 'Tạo viền vùng chọn', 'Tô vẽ hình ảnh'),
(133, '<p>&nbsp;Muốn tạo độ Feather sau khi tạo vùng chọn sử dụng:<br></p>', NULL, '2', 26, 'Ctrl+D', 'Ctrl+Alt+D', 'Không tạo được ', 'Cả A và B đều được'),
(134, '<p>Muốn tạo vùng chọn theo màu sắc tương đổng sử dụng công cụ:<br></p>', NULL, '2', 61, 'Polygonal Lasso tool', 'Magic Wand Tool', 'Magnetic Lasso Tool', 'Move Tool(phím tắt V)'),
(135, '<div class=\"quiz-section-title\" style=\"margin: 0px; padding: 10px 20px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.12); border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 24px;\">Để tạo vùng chọn là vùng hình ảnh của 1 layer làm cách nào dưới đây?</div>', NULL, '1', 61, 'Giữ phím Ctrl và Click vào biểu tượng Layer cần tạo vùng chọn', 'Giữ phím Shift và Click vào biểu tượng Layer cần tạo vùng chọn', 'Giữ phím Alt và Click vào biểu tượng Layer cần tạo vùng chọn', 'Giữ phím Ctrl và phím Space'),
(136, '<p>Phát biểu nào sau đây là đúng khi dùng công cụ Pen vẽ ở chế độ Path<br></p>', NULL, '3', 61, 'Đường Path chỉ là đường mở', 'Đường Path chỉ là đường đóng', 'Đường Path có thể là đóng hoặc mở', 'Đường Path chỉ dùng để tạo vùng chọn');

-- --------------------------------------------------------

--
-- Table structure for table `questionstatus`
--

CREATE TABLE `questionstatus` (
  `question_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_status` int(11) NOT NULL DEFAULT 0,
  `question_point` int(11) NOT NULL,
  `question_dd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questionstatus`
--

INSERT INTO `questionstatus` (`question_id`, `student_id`, `question_status`, `question_point`, `question_dd`) VALUES
(73, 19, 1, 33, 339),
(74, 19, 1, 33, 340),
(75, 19, 1, 33, 341),
(26, 19, 1, 33, 342),
(27, 19, 1, 33, 343),
(28, 19, 1, 33, 344),
(29, 19, 1, 50, 345),
(30, 19, 1, 50, 346),
(31, 19, 1, 33, 347),
(34, 19, 1, 33, 348),
(35, 19, 1, 33, 349),
(36, 19, 1, 33, 350),
(37, 19, 1, 33, 351),
(38, 19, 1, 33, 352),
(76, 19, 1, 50, 353),
(77, 19, 1, 50, 354),
(78, 19, 1, 33, 355),
(79, 19, 1, 33, 356),
(80, 19, 1, 33, 357),
(81, 19, 1, 33, 358),
(82, 19, 1, 33, 359),
(83, 19, 1, 33, 360),
(84, 19, 1, 50, 361),
(85, 19, 1, 50, 362),
(44, 21, 1, 33, 363),
(45, 21, 1, 33, 364),
(46, 21, 1, 33, 365),
(47, 21, 1, 33, 366),
(48, 21, 1, 33, 367),
(49, 21, 1, 33, 368),
(50, 21, 1, 33, 369),
(51, 21, 1, 33, 370),
(52, 21, 1, 33, 371),
(53, 21, 1, 33, 372),
(54, 21, 1, 33, 373),
(55, 21, 1, 33, 374),
(56, 21, 1, 33, 375),
(57, 21, 1, 33, 376),
(58, 21, 1, 33, 377),
(111, 22, 1, 33, 378),
(112, 22, 1, 33, 379),
(113, 22, 1, 33, 380),
(59, 22, 1, 33, 381),
(60, 22, 1, 33, 382),
(61, 22, 1, 33, 383),
(73, 22, 1, 33, 384),
(74, 22, 1, 33, 385),
(75, 22, 1, 33, 386),
(76, 22, 1, 50, 387),
(77, 22, 1, 50, 388),
(78, 22, 1, 33, 389),
(79, 22, 1, 33, 390),
(80, 22, 1, 33, 391),
(81, 22, 1, 33, 392),
(82, 22, 1, 33, 393),
(83, 22, 1, 33, 394),
(84, 22, 1, 50, 395),
(85, 22, 1, 50, 396),
(18, 21, 1, 33, 397),
(19, 21, 1, 33, 398),
(32, 21, 1, 33, 399);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(11) NOT NULL,
  `type_pay` int(11) NOT NULL DEFAULT 0,
  `date_pay` date NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `student_avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `student_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `student_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `student_story` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_avatar`, `student_email`, `student_password`, `student_story`, `student_phone`) VALUES
(3, 'uynnp', './public/img/103160_man_512x512.png', 'uynph1505@fpt.edu.vn', '$2y$10$BX7ne8q5tuzMoXRR.xfsYu8sOpc/XzfHFAwZhn1T07h5SLEU1Tkb.', '', NULL),
(10, 'Văn Mạnh', './public/img/103160_man_512x512.png', 'manhnguyen@gmail.com', '$2y$10$MDE9BbMLUXHz7Sp2cJaDEOoupKSDOLRVvZL3fFl73Z6eRW0SOF3f6', '', NULL),
(11, 'Vuong', './public/img/103160_man_512x512.png', 'vuong1234@gmail.com', '$2y$10$ejjgSadopNuQGwSdxp01AuwpFPznkz1npOzqbFq6WO9XNGkvRBqXG', '', NULL),
(12, 'Ngọc anh', '103160_man_512x512.png', 'ngocanh123@gmail.com', '$2y$10$JG1yQLGIxDqmvRi8uqfQPe.7dkjOwLQpXt3Hvp9o9.OBmtdMa0GKG', NULL, NULL),
(13, 'Thắng Nguyễn', '103160_man_512x512.png', 'thang1234@gmail.com', '$2y$10$v7cuHphsWZ5gdQKPZi485uzp9Rp9.4qxD.xvOWQFKQba7k6rRfEj6', NULL, NULL),
(14, 'Hoàng Nguyễn', './public/img/8a2e4c79a1b9c983dc6bf8d6cbada43a.gif', 'hoangtienmai@gmail.com', '$2y$10$ODvfZ9S7P5rd17DF3YC1jeSlg8dKMPBIoMjvoECuCuGjfcpuPz/Iy', NULL, NULL),
(15, 'Nguyen Ngoc Uy', './public/img/8a2e4c79a1b9c983dc6bf8d6cbada43a.gif', 'uynnph15055@fpt.edu.vn', '', 'Học lập trình ', '0962471128'),
(16, 'uy', 'https://lh3.googleusercontent.com/a-/AOh14Gg3AXhWyRCV2wIYCRh7SPZ2ilAJKf61ERKZbrmo=s96-c', 'uyhuongson123@gmail.com', '', NULL, NULL),
(18, 'binhndph15107', './public/img/103160_man_512x512.png', 'binh123@gmail.com', '$2y$10$jVOXj0QBioEjUoUedSi0T.pYN35oEUL/2DbdQxRppaxO0slZ/C08W', NULL, NULL),
(19, 'Bình', './public/img/photos-livelikeaflower4 (1).jpg', 'binhnguyen29102001@gmail.com', '', NULL, NULL),
(21, 'Nguyen Duc Binh', './public/img/240831222_4056228457839185_7263101594585735546_n.jpg', 'binhndph15107@fpt.edu.vn', '', NULL, NULL),
(22, 'Anh', 'https://lh3.googleusercontent.com/a-/AOh14GhWGQoziyuVhhDdz0Y73RXctufU1V5ZZTS4rY14=s96-c', 'qanhh962k@gmail.com', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subject_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subject_description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_status` int(11) NOT NULL DEFAULT 0,
  `date_post` date NOT NULL,
  `subject_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `subject_price` float DEFAULT NULL,
  `subject_sale` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_slug`, `subject_description`, `subject_status`, `date_post`, `subject_img`, `cate_id`, `type_id`, `subject_price`, `subject_sale`) VALUES
(7, 'Css', 'css', 'CSS viết tắt của từ Cascading Style Sheets, được dùng để trang trí, định dạng, bố cục cho trang web, không có ý nghĩa trong việc thể hiện nội dung.', 0, '2021-11-24', 'css.jpg', 6, 0, 600000, 300000),
(8, 'Bootrap', 'bootrap', 'Bootstrap là một nền tảng (framework) miễn phí, mã nguồn mở, dựa trên HTML, CSS & Javascript, nó được tạo ra để xây dựng các giao diện Website tương thích với tất cả các thiết bị có kích thước màn hình khác nhau.', 0, '2021-11-24', 'Group 1465.png', 2, 0, 0, 0),
(9, 'Java', 'java', 'Lập trình hướng đối tượng (Object Oriented Programming – OOP) là một trong những kỹ thuật lập trình rất quan trọng và sử dụng nhiều hiện nay. Hầu hết các ngôn ngữ lập trình hiện nay như Java, PHP, .NET, Ruby, Python… đều hỗ trợ OOP. Vậy lập trình hướng đối tượng là gì? Và các nguyên lý cơ bản trong OOP cần biết là gì?', 0, '2021-11-24', 'Group 1463.png', 2, 1, 600000, 30000),
(11, 'Scss', 'scss', 'CSS Preprocessors là ngôn ngữ tiền xử lý CSS. Là một ngôn ngữ kịch bản mở rộng của CSS và được biên dịch thành cú pháp CSS giúp bạn viết CSS nhanh hơn và có cấu trúc rõ ràng hơn. CSS Preprocessor có thể giúp bạn tiết kiệm thời gian viết CSS, dễ dàng bảo trì và phát triển CSS.', 0, '2021-11-24', 'Group 1460.png', 6, 1, 700000, 300000),
(13, 'Js Basic', 'js-basic', 'JavaScript là một loại ngôn ngữ lập trình được sử dụng chủ yếu trong HTML và website với mục đích phát triển các ứng dụng internet được chạy trên server và client. \nNó có khả năng hỗ trợ bởi hầu hết mọi trình duyệt web và nó bao gồm:  ngôn ngữ lập trình được áp dụng chủ yếu trong HTML và web  nhằm phát triển Chrome, Safari, Firefox, Explorer, Opera,…', 0, '2021-11-24', 'js-basic.jpg', 6, 0, 0, 0),
(14, 'Ruby', 'ruby', 'Đối với mỗi developer, đặc biệt là các PHP developer chắc hẳn ai cũng biết đến Laravel một open source framework đứng đầu về số lượt download trên Packagist cũng như số lượng sao đạt được trên Github.', 0, '2021-11-24', 'Group 1464.png', 2, 0, 0, 0),
(15, 'Photoshop', 'photoshop', 'Giới thiệu về photoshop, phần mềm photoshop cho máy tính này xuất hiện năm 1988 do hãng Adobe System xây dựng và phát triển.', 0, '2021-11-24', 'Group 1459.png', 19, 0, 0, 0),
(16, 'Python', 'python', 'Python là ngôn ngữ lập trình hướng đối tượng, cấp cao, mạnh mẽ, được tạo ra bởi Guido van Rossum. Nó dễ dàng để tìm hiểu và đang nổi lên như một trong những ngôn ngữ lập trình nhập môn tốt nhất cho người lần đầu tiếp xúc với ngôn ngữ lập trình.', 0, '2021-11-23', 'python.jpg', 10, 1, 700000, 300000),
(17, 'C++', 'c', 'C++ là một ngôn ngữ lập trình tiến tiến, mạnh trong các ngôn ngữ lập trình hiện nay, nó được sử dụng bởi hàng triệu lập trình viên trên thế giới. Nó là một trong những ngôn ngữ phổ biến để viết các ứng dụng máy tính – và ngôn ngữ thông dụng nhất để lập ...', 0, '2021-11-23', 'c-cong.jpg', 10, 1, 600000, 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assess`
--
ALTER TABLE `assess`
  ADD PRIMARY KEY (`assess_id`),
  ADD KEY `FK_subject_assess` (`subject_id`),
  ADD KEY `FK_student_assess` (`student_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `catesubject`
--
ALTER TABLE `catesubject`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmtt_id`),
  ADD KEY `FK_student` (`student_id`),
  ADD KEY `FK_lesson_comment` (`lesson_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `Fk_student_history` (`student_id`),
  ADD KEY `FK_subject_id` (`subject_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `FK_subject_lesson` (`subject_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `FK_lesson_note` (`lesson_id`),
  ADD KEY `FK_student_note` (`student_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `FK_lesson_question` (`lesson_id`);

--
-- Indexes for table `questionstatus`
--
ALTER TABLE `questionstatus`
  ADD PRIMARY KEY (`question_dd`),
  ADD KEY `FK_question` (`question_id`),
  ADD KEY `FK_student_question` (`student_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `FK_subject_receipt` (`subject_id`),
  ADD KEY `Fk_student_id` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `FK_category` (`cate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `assess`
--
ALTER TABLE `assess`
  MODIFY `assess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `catesubject`
--
ALTER TABLE `catesubject`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cmtt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `questionstatus`
--
ALTER TABLE `questionstatus`
  MODIFY `question_dd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assess`
--
ALTER TABLE `assess`
  ADD CONSTRAINT `FK_student_assess` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_subject_assess` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_lesson_comment` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_student_history` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_subject_lesson` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `FK_lesson_note` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_note` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_lesson_question` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questionstatus`
--
ALTER TABLE `questionstatus`
  ADD CONSTRAINT `FK_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_question` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `FK_subject_receipt` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `FK_category` FOREIGN KEY (`cate_id`) REFERENCES `catesubject` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
