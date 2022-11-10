-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2022 at 04:16 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`) VALUES
(37, 13, 59),
(38, 13, 83),
(39, 13, 74);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(13, '2022-11-10 11:12:23', 'win', 'onsri', 'kasetsart', '0957778888');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `image`, `price`) VALUES
(53, 'เมาส์เกมมิ่ง G502 X', 'G502 X คือผลิตภัณฑ์รุ่นใหม่ล่าสุดของตระกูล G502 ในตำนาน ออกแบบใหม่เพื่อให้มีน้ำหนักลดลงอย่างน่าประทับใจเหลือเพียง 89 กรัม มาพร้อมสวิตช์ไฮบริดออปติคอล-แมกคานิคอล LIGHTFORCE รุ่นแรกและเซ็นเซอร์ซับไมครอน HERO 25K', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-corded/gallery/g502x-corded-gallery-1-white.png?v=1', 2690),
(54, 'เมาส์เกมมิ่ง G502 X PLUS', 'G502 X PLUS คือผลิตภัณฑ์รุ่นใหม่ล่าสุดของตระกูล G502 ในตำนาน คิดค้นขึ้นใหม่ด้วยสวิตช์ไฮบริด LIGHTFORCE รุ่นแรกของเรา, ระบบไร้สายเกรดโปร LIGHTSPEED LIGHTSYNC RGB, เซ็นเซอร์ HERO 25K และอีกมากมาย', 'https://resource.logitechg.com/w_692,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-white.png?v=1', 5490),
(55, 'เมาส์เกมมิ่งไร้สาย G502 X LIGHTSPEED', 'G502 X LIGHTSPEED คือผลิตภัณฑ์รุ่นใหม่ล่าสุดของตระกูล G502 ในตำนาน มาพร้อมสวิตช์ไฮบริดออปติคอล-แมกคานิคอล LIGHTFORCE รุ่นแรกของเรา และโพรโตคอลไร้สาย LIGHTSPEED รุ่นปรับปรุงที่มีการตอบสนองเร็วขึ้น 68% เทียบกับรุ่นก่อน', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-lightspeed/gallery/g502x-lightspeed-gallery-1-black.png?v=1', 2690),
(56, 'G705 เมาส์เกมมิ่งไร้สาย', 'เมาส์เกมมิ่งไร้สาย G705 จาก Aurora Collection มีส่วนโค้งที่จับสบายและให้การควบคุมที่ดีด้วยการออกแบบที่ตั้งใจให้เหมาะกับทุกคน แม้แต่มือขนาดเล็ก มาพร้อมระบบไร้สายเกรดเกมมิ่ง LIGHTSPEED, LIGHTSYNC RGB และเทคโนโลยีเกมมิ่งขั้นสูง', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/mouse/g705-wireless-mouse/gallery/g705-gallery-1.png?v=1', 1490),
(57, 'LOGITECH G303 SHROUD EDITION \r\nเมาส์เกมมิ่งไร้สาย', 'ตั้งเป้าสูงขึ้นด้วยเมาส์รุ่นยอดนิยมที่พลิกโฉมใหม่ ออกแบบร่วมกับ Shroud และปรับตามความต้องการของเขา ระบบไร้สาย LIGHTSPEED, เซ็นเซอร์ HERO 25K และแบตเตอรี่เล่นเกมได้นาน 145 ชั่วโมง', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/shroud-g303/shroud-g303-gallery-1.png?v=1', 4390),
(58, 'เมาส์ไร้สาย PRO\r\n高精度デジタルペンシル', 'ロジクールCrayonは、生産性を高め、創造性を解き放つための、汎用的なピクセル精度のデジタルペンシルで、すべてのiPad（2018年以降）に対応しています。PDFのマークアップ、手書きのメモを取る、または図をスケッチ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/lol-pro-wireless-mouse/gallery/league-of-legends-pro-wireless-gaming-mouse-gallery-1.png?v=1', 4190),
(59, 'PRO X\r\nSUPERLIGHT', 'ไม่ถึง 63 กรัม ระบบไร้สาย LIGHTSPEED ขั้นสูงความหน่วงแฝงต่ำ ความแม่นยำระดับซับไมครอนด้วยเซ็นเซอร์ HERO 25K ขจัดทุกอุปสรรคด้วยเมาส์ PRO ที่เร็วที่สุดและเบาที่สุดของเรา', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-x-superlight/magenta-update/bazooka-magenta-gallery-1.png?v=1', 4730),
(60, 'G102\r\nLIGHTSYNC', 'ใช้เวลาเล่นให้คุ้มค่าที่สุดด้วยเมาส์เกมมิ่ง G102 ที่มีตัวเลือกในรูปแบบสีสันสดใสมากมาย เทคโนโลยี LIGHTSYNC คือเซ็นเซอร์เกรดเกมมิ่งพร้อมดีไซน์ 6 ปุ่มแบบคลาสสิกที่จะเติมไฟให้กับเกมและโต๊ะของคุณ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/refreshed-g203/g203-white-gallery-1.png?v=1', 790),
(61, 'G403\r\nเมาส์เกมมิ่ง HERO', 'G403 ออกแบบมาเพื่อความสบายด้วยทรงโค้งมียางจับด้านข้างที่เพิ่มการควบคุม เซ็นเซอร์ HERO 25K ให้คุณติดตามในระดับซับไมครอน LIGHTSYNC RGB ทุกสเปกตรัมและปุ่มตั้งโปรแกรมได้ 6 ปุ่มมอบการควบคุมในมือคุณ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/g403/g403-wired-gallery-1-nb.png?v=1', 890),
(62, 'G703\r\nเมาส์เกมมิ่งไร้สาย LIGHTSPEED มาพร้อมกับเซ็นเซอร์ HERO', 'มาพร้อมกับเซ็นเซอร์เกมมิ่ง HERO 25K ขั้นสูงเพื่อการติดตามระดับซับไมครอน และประสิทธิภาพมากกว่ารุ่นก่อนหน้าถึง 10 เท่า ระบบไร้สาย LIGHTSPEED เกรดโปรมีความหน่วงแฝงต่ำพิเศษเพื่อศักยภาพสูงสุด', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g703/g703-gallery-1.png?v=1', 1090),
(63, 'G903\r\nเมาส์เกมมิ่งไร้สาย LIGHTSPEED มาพร้อมกับเซ็นเซอร์ HERO', 'สุดยอดเมาส์เกมมิ่ง ระบบไร้สาย LIGHTSPEED ความหน่วงแฝงต่ำพิเศษ เซ็นเซอร์ HERO 25K ที่มีการติดตามระดับซับไมครอน การออกแบบที่ใช้ถนัดทั้งสองมือ ล้อเลื่อน Hyper-Fast ความเข้ากันได้ POWERPLAY เพื่อการชาร์จไร้สายต่อเนื่อง', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g903/g903-gallery-1.png?v=1', 4990),
(64, 'G502\r\nLIGHTSPEED Wireless Gaming Mouse', 'G502 รุ่นยอดนิยมออกแบบมาเพื่อรวมเข้ากับระบบไร้สาย LIGHTSPEED เกรดโปร เพื่อการเชื่อมต่อที่เร็วพิเศษและน่าเชื่อถือ เซ็นเซอร์ HERO 25K โดดเด่นด้วยการติดตามระดับซับไมครอน ความเข้ากันได้ POWERPLAY เพื่อการชาร์จต่อเนื่องขณะพักและเล่น', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502-lightspeed-gaming-mouse/g502-lightspeed-gallery-1.png?v=1', 2790),
(65, 'G502 HERO\r\nเมาส์เกมมิ่งประสิทธิภาพสูง', 'การออกแบบทางวิศวกรรมเพื่อประสิทธิภาพการเล่นเกมขั้นสูง G502 HERO มีเซ็นเซอร์เกมมิ่ง HERO 25K ที่มอบการติดตั้งที่แม่นยำระดับซับไมครอน, ไฟ LIGHTSYNC RGB ปรับแต่งได้, โปรไฟล์ออนบอร์ด, น้ำหนักเสริมปรับตำแหน่งได้ และอื่น ๆ อีกมากมาย', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/hyjal-g502-hero/g502-hero-gallery-1-nb.png?v=1', 2790),
(66, 'PRO\r\nเมาส์เกมมิ่งไร้สาย', 'Logitech G ร่วมมือกับผู้เล่นระดับมืออาชีพ 50 คน เพื่อค้นหารูปทรง น้ำหนัก และความรู้สึกที่สมบูรณ์แบบที่สุด เมื่อรวมเข้ากับเทคโนโลยีไร้สาย LIGHTSPEED และเซ็นเซอร์ HERO 25K ผลลัพธ์: นี่คือหนึ่งในเมาส์ยอดนิยมที่สุดในวงการอีสปอร์ต', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-wireless-gaming-mouse/pro-wireless-carbon-gallery-1.png?v=1', 4590),
(67, 'PRO\r\nเมาส์เกมมิ่ง PRO', 'เมาส์เกมมิ่ง PRO สร้างขึ้นมาโดยมีเป้าหมายเดียว เพื่อช่วยคุณประสบความสำเร็จในสภาพแวดล้อมที่แข่งขันสูงและเปลี่ยนแปลงรวดเร็วของวงการอีสปอร์ต เสริมด้วยเซ็นเซอร์ HERO เพื่อความเร็วและความแม่นยำที่จำเป็นในการคว้าชัยชนะ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-gaming-mouse/plasma-hero-carbon-gallery-4.png?v=1', 4490),
(68, 'G304\r\nเมาส์เกมมิ่งไร้สาย LIGHTSPEED', 'เมาส์เกมมิ่งไร้สาย LIGHTSPEED ที่ที่ได้รับการออกแบบมาเพื่อมอบประสิทธิภาพอย่างแท้จริงด้วยนวัตกรรมทางเทคโนโลยีล่าสุดในราคาที่ย่อมเยา อายุแบตเตอรี่ยาวนานถึง 250 ชั่วโมง มีตัวเลือกในรูปแบบสีสันสดใส', 'https://www.logitechg.com/th-th/products/gaming-mice/g304-lightspeed-wireless-gaming-mouse.910-005284.html', 1690),
(69, 'G302 DAEDALUS PRIME\r\nAudífonos inalámbricos + Estación base', 'การลากเมาส์\r\nความละเอียด: 200 – 4,000 dpi\r\nไม่ต้องปรับความราบรื่น/การเร่งความเร็ว/การกรอง\r\nการเร่งความเร็วสูงสุด: >20 กรัม 1ทดสอบกับ Logitech G240 Gaming Mouse Pad\r\nความเร็วสูงสุด: >120 IPS 2ทดสอบกับ Logitech G240 Gaming Mouse Pad', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g302/g302-gallery-1.png?v=1', 1890),
(70, 'G713\r\nคีย์บอร์ดเกมมิ่ง', 'G713 จาก Aurora Collection คือคีย์บอร์ดแมกคานิคอลไร้แป้นตัวเลขขนาดกะทัดรัดแบบใช้สายที่ออกแบบมาเพื่อความสบาย และมีที่วางพักผ่ามือนุ่มรูปเมฆมาด้วย คุณสมบัติครบถ้วนด้วยแสงไฟ RGB นุ่มนวลและสวิตช์แมกคานิคอล GX ที่คุณเลือก มาในสีขาว White Mist อุปกรณ์เสริมสีสันมีจำหน่ายแยก', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/keyboards/g713-keyboard/gallery/g713-gallery-1.png?v=1', 2590),
(71, 'G715\r\n คีย์บอร์ดเกมมิ่งไร้สาย', 'G715 จาก Aurora Collection คือคีย์บอร์ดไร้สายเกรดเกมมิ่ง LIGHTSPEED และ Bluetooth® ที่ออกแบบมาเพื่อความสบายที่มาพร้อมกับที่วางพักฝ่ามือนุ่มรูปเมฆ คุณสมบัติครบถ้วนด้วยแสงไฟ RGB และสวิตช์แมกคานิคอล GX มาในสีขาว White Mist อุปกรณ์เสริมสีสันมีจำหน่ายแยก', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/keyboards/g715-wireless-keyboard/gallery/g715-gallery-1.png?v=1', 2990),
(72, 'คีย์บอร์ด PRO\r\nLeague of Legends Edition', 'เราตกแต่งคีย์บอร์ด PRO ที่ผ่านการทดสอบในการแข่งขันแล้วด้วยสีสัน League of Legends อันโดดเด่น ดีไซน์ไร้ปุ่มตัวเลขขนาดกะทัดรัดและสวิตช์ Tactile ระดับโปรทำให้นี่คืออาวุธทรงพลังสำหรับ League of Legends และเกมอื่นๆ อีกมากมาย', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/lol-pro-x-keyboard/gallery/league-of-legends-pro-x-gaming-keyboard-gallery-1.png?v=1', 4190),
(73, 'G913 TKL\r\nLogitech G915 TKL Tenkeyless LIGHTSPEED Wireless RGB Mechanical Gaming Keyboard', 'การออกแบบและงานวิศวกรรมที่ก้าวกระโดด ระบบไร้สายเกรดมือโปร LIGHTSPEED, ระบบ LIGHTSYNC RGB ขั้นสูง และสวิตช์แมกคานิคอลโครงต่ำเกรดโปร สร้างขึ้นจากวัสดุพรีเมียม มีให้เลือกในสีดำหรือสีขาว', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g915-tkl/g915-tkl-gallery/kor-g915-tkl-carbon-gallery-topdown.png?v=1', 6990),
(74, 'PRO X\r\nคีย์บอร์ด', 'ดีไซน์ PRO ที่ผ่านการพิสูจน์มาแล้วในการแข่งขัน ขณะนี้มาพร้อมสวิตช์แมกคานิคอล GX เกรดมือโปรที่เปลี่ยนได้ตามที่คุณเลือก Clicky, Tactile และ Linear สร้างมาเพื่อชัยชนะในความร่วมมือกับนักกีฬาอีสปอร์ตชั้นนำของโลก', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-x-keyboard/pro-x-keyboard-gallery-1.png?v=1', 5490),
(75, 'ชุดสวิตช์ PRO X\r\nสวิตช์', 'เพียงแค่สลับเปลี่ยนสวิตช์ที่ใส่กับคีย์บอร์ด PRO X ไว้อยู่แล้วเป็นสวิตช์ที่คุณต้องการ และปรับแต่งสไตล์การตอบสนองแบบ clicky, linear หรือ tactile ทุกสวิตช์ผ่านการทดสอบคุณภาพระดับโปร', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-x-switch-kit/pro-x-accessories-kit-gallery-1.png?v=1', 890),
(76, 'G813\r\nคีย์บอร์ดเกมมิ่งเชิงกล LIGHTSYNC RGB', 'เทคโนโลยีเกมมิ่งล่าสุด ดีไซน์เพรียวบางพิเศษ LIGHTSYNC RGB และ G-keys เฉพาะ ออกแบบมาเพื่อการเล่นเกมประสิทธิภาพสูงด้วยสวิตช์เชิงกล GL โครงต่ำในแบบ Clicky Tactile และ Linear', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g815/g815-gallery-1.png?v=1', 4790),
(77, 'G913\r\nคีย์บอร์ดเกมมิ่งเชิงกล LIGHTSPEED Wireless RGB', 'การออกแบบและงานวิศวกรรมที่ก้าวกระโดด ระบบไร้สายเกรดมือโปร LIGHTSPEED, ระบบ LIGHTSYNC RGB ขั้นสูง และสวิตช์แมกคานิคอลโครงต่ำเกรดโปรที่คุณเลือก เพรียบพร้อมด้วยปุ่ม G ตั้งโปรแกรมได้\r\n\r\nสเปคและรายละเอียด', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g913/g913-gallery-1.png?v=1', 5890),
(78, 'G512 CARBON\r\nRGB Mechanical Gaming Keyboard', 'คือคีย์บอร์ดเกมมิ่งประสิทธิภาพสูงที่มาพร้อมกับตัวเลือกสวิตช์แมกคานิคอล GX ขั้นสูงที่คุณเลือก มีอัตราการรายงาน 1 ms, USB passthrough, LIGHTYSNC RGB และโครงสร้างอะลูมิเนียมอัลลอย', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/flying-v-mx-g512/g512-keyboard-gallery-2-2x-nb.png?v=1', 3590),
(79, 'G613\r\nคีย์บอร์ดสำหรับเล่นเกมไร้สาย', 'คีย์บอร์ดไร้สายรุ่นใหม่ออกแบบมาเพื่อเกมเมอร์ที่ต้องการทั้งประสิทธิภาพสูงของสวิตช์แมกคานิคอล และอิสระของการเล่นเกมไร้สาย\r\n\r\nสเปคและรายละเอียด', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g613/g613-gallery-1.png?v=1', 2490),
(80, 'G413\r\nMechanical Backlit Gaming Keyboard', 'ออกแบบมาเพื่อสมรรถนะขั้นสูงพร้อมชุดคุณสมบัติที่ใช่ โครงทรงดาบผลิตจากอะลูมิเนียมอัลลอยแข็งแรงสูง พร้อม USB passthrough, ปุ่มมีไฟส่องหลัง, สวิตช์แมกคานิคอล Romer-G tactile และอื่น ๆ อีกมากมาย', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/g413-firebird/g413-gallery-1-nb.png?v=1', 1490),
(81, 'G213\r\nคีย์บอร์ดเล่นเกม RGB', 'ทนทานพร้อมสมรรถนะระดับเกมมิ่ง สวิตช์ปุ่ม Tactile Mech-Dome กันน้ำหกใส่ แสงไฟ LIGHTSYNC RGB ปรับแต่งได้ ที่วางพักฝ่ามือและขาตั้งปรับได้ในตัว ส่วนควบคุมสื่อเฉพาะ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/g213-finch/g213-gallery-1-nb.png?v=1', 1190),
(82, 'G810\r\nคีย์บอร์ดเล่นเกม RGB', 'Благодаря ярко освещенным клавишам на клавиатуре K740 с подсветкой удобно печатать и днем, и ночью. Система PerfectStroke обеспечивает равномерное распределение усилия по поверхности клавиш, плавное нажатие и непревзойденное удобство работы.', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/products/gaming/keyboards/g810-orion-spectrum-rgb-gaming-keyboard/920-007757/g810-orion-spectrum-rgb-mechanical-keyboard13.png?v=1', 4890),
(83, 'FITS\r\nหูฟังเกมมิ่งแบบเอียร์บัด True Wireless', 'หูฟังเกมมิ่งแบบเอียร์บัด FITS true wireless ให้ความกระชับที่ใช่สำหรับการเล่น ระบบไร้สาย LIGHTSPEED เกรดโปร + Bluetooth® ความหน่วงแฝงต่ำช่วยให้คุณเล่นข้ามอุปกรณ์ได้ เทคโนโลยีขึ้นรูป LIGHTFORM ให้ความกระชับเฉพาะบุคคล', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/fits/gallery/gallery-1-black.png?v=1', 7690),
(84, 'G735\r\nชุดหูฟังเกมมิ่งไร้สาย', 'G735 จาก Aurora Collection เพิ่มความสบายสูงสุดให้กับเกมเมอร์ทุกคน รวมถึงผู้ที่มีศีรษะขนาดเล็ก เล่นอย่างสบายด้วยแถบคาดศีรษะนุ่มดุจปุยเมฆและนวมครอบหูหมุนได้ เหมาะสำหรับพีซีและอุปกรณ์มือถือด้วยระบบไร้สาย LIGHTSPEED และ Bluetooth® มาในสีขาว White Mist อุปกรณ์เสริมสีสันมีจำหน่ายแยก', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/audio/g735-wireless-headset/gallery/g735-gallery-1.png?v=1', 4490),
(85, 'ชุดหูฟังเกมมิ่ง PRO X\r\nLeague of Legends Edition', 'อิดิชันพิเศษของชุดหูฟังเกมมิ่ง PRO X ในสีสันที่โดดเด่นสไตล์ League of Legends อย่างเป็นทางการ รับรองเสียงที่คมชัดและการสื่อสารระดับมือโปรสำหรับประสิทธิภาพที่ดีที่สุดในการเล่น League of Legends', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/lol-pro-x-headset/gallery/league-of-legends-pro-x-gaming-headset-gallery-1.png?v=1', 4790),
(86, 'G435\r\nชุดหูฟังเกมมิ่งไร้สาย LIGHTSPEED', 'เล่นเกมและฟังเพลงด้วยความเบาสบายราวขนนกและเสียงเปี่ยมพลังและชัดใส ไมค์ดูอัลบีมฟอร์มมิ่งลดเสียงรบกวนพื้นหลัง เชื่อมต่ออุปกรณ์ผ่านระบบไร้สาย LIGHTSPEED เกรดเกมมิ่งและ Bluetooth®\r\n', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g435/swatches/g435-gaming-headset-gallery-2-1-white.png?v=1', 2390),
(87, 'G335\r\nชุดหูฟังเกมมิ่งใช้สาย', 'ชุดหูฟังใช้สายน้ำหนักเบาสุดเท่ มีดีไซน์แถบคาดศีรษะกันกระเทือนที่มีสายคาดปรับได้เพื่อการสวมใส่ที่กระชับ ต่อง่ายและใช้ได้ทันทีและการควบคุมในตัว เพียงแค่เลือกสีให้เหมาะกับสไตล์ของคุณ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g335/g335-black-gallery-1.png?v=1', 1790),
(88, 'G333\r\nหูฟังเกมมิ่ง', 'ดื่มด่ำกับเกมไม่ว่าคุณจะเล่นที่ไหน เสียงความเที่ยงตรงสูงและการสื่อสารที่ชัดเจนบนหลายอุปกรณ์ ทั้งพีซี, มือถือ, Xbox™, PlayStation® , Nintendo® และอีกมากมาย มีขั้วต่อ 3.5 มม.และอะแดปเตอร์ USB-C ให้มา', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g333-gaming-earphones/g333-black-gallery-1.png?v=1', 1690),
(89, 'G733\r\nชุดหูฟังเกมมิ่ง LIGHTSPEED Wireless RGB', 'ชุดหูฟังเกมมิ่งไร้สายออกแบบมาเพื่อประสิทธิภาพและความสบาย ชุดหูฟังติดตั้งมาพร้อมกับระบบเสียงรอบทิศทาง ตัวกรองเสียง และไฟที่ล้ำสมัยที่คุณต้องจะมอง ได้ยิน และเล่นให้มีสไตล์มากกว่าที่เคย', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g733/gallery/g733-white-gallery-1.png?v=1', 1890),
(90, 'PRO X\r\nชุดหูฟังเกมมิ่ง', 'ออกแบบมาร่วมกับและสำหรับมือโปร เสียงเซอร์ราวด์ 7.1 รุ่นถัดไปและไดรเวอร์ PRO-G 50 มม.รับรองเสียงเกมมิ่งพรีเมียม เสียงไมค์น่าทึ่งด้วยการ์ดเสียง USB ภายนอกพร้อมฟิลเตอร์ Blue VO!CE broadcast', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-x/pro-headset-gallery-1.png?v=1', 4890),
(91, 'ชุดหูฟัง PRO\r\nชุดหูฟังเกมมิ่ง PRO', 'ออกแบบมาร่วมกับและสำหรับมือโปร มีจุดเด่นที่เสียงเซอร์ราวด์ 7.1 รุ่นถัดไป, ไดรเวอร์ PRO-G 50 มม., ไมค์ PRO ยาว 6 มม. และโปรไฟล์ EQ เสียงปรับจูนระดับโปร ใช้งานได้ผ่านซอฟต์แวร์เกมมิ่ง G HUB', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-x/pro-headset-gallery-1.png?v=1', 4590),
(92, 'G633S\r\nชุดหูฟังเกมมิ่ง 7.1 Surround Sound LIGHTSYNC', 'ไดรเวอร์เสียง PRO-G ขนาด 50 มม. และ DTS Headphone:X 2.01 สร้างภูมิทัศน์เสียงที่กว้าง เก็บรายละเอียด และลุ่มลึก ปรับแต่งได้เต็มที่ด้วย G HUB - ตั้งแต่แสงไฟ LIGHTSYNC RGB จนถึงปุ่ม G เพื่อการกำหนดค่าเสียง 1 DTS Headphone:X 2.0 surround sound และพรีเซ็ต EQ พร้อมใช้งานสำหรับ Windows® OS เท่านั้น และต้องใช้ซอฟต์แวร์เกมมิ่ง Logitech G HUB', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/non-braid/sylvanas-g635/g635-gallery-1-nb.png?v=1', 1890),
(93, 'PRO RACING PEDALS\r\nเบรกโหลดเซลล์ ดีไซน์ปรับแต่งได้อย่างเต็มที่', 'ออกแบบทางวิศวกรรมมาเพื่อการเชื่อมต่อเข้ากับการแข่งขันระดับมืออาชีพ ด้วยเบรกโหลดเซลล์, สปริงเปลี่ยนได้, เซ็นเซอร์ผลกระทบฮอลล์แบบไม่สัมผัส และโมดูลคันเหยียบถอดได้ ขับสู่ชัยชนะ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-racing/pro-racing-pedals/gallery/gallery-1-pedals.png?v=1', 17190),
(94, 'PRO RACING WHEEL\r\nDirect Drive และเทคโนโลยีการตอบสนอง TRUEFORCE สำหรับ PC, PlayStation หรือ Xbox', 'พวงมาลัยแข่งรถ Logitech G PRO ให้การเชื่อมต่อเกรดมืออาชีพเข้ากับการแข่งขันด้วย Direct Drive และเทคโนโลยีการตอบสนอง TRUEFORCE มีจุดเด่นที่เค้าโครงปุ่ม “ล้อเลื่อนนิ้วโป้ง” PRO ที่ผ่านการทดสอบอย่างหนักหน่วง พร้อมคันเปลี่ยนเกียร์แม่เหล็ก คันคลัตช์คู่ และการติดตั้งที่ง่ายดาย สำหรับ PC, PlayStation หรือ Xbox ขับสู่ชัยชนะ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/pro-racing/pro-racing-wheel/gallery-xbox/gallery-1-pc-xbox.png?v=1', 8990),
(95, 'G920/G29\r\n พวงมาลัยแข่งรถสำหรับ Xbox, Playstation และพีซี', 'งานวิศวกรรมที่ออกแบบมาเพื่อประสบการณ์การขับขี่ที่สมบูรณ์แบบด้วยการตอบสนองแรงด้วยมอเตอร์คู่, คันเหยียบสเตนเลสสตีล และพวงมาลัยหนังเย็บด้วยมือ คันเหยียบบนพื้นปรับได้ช่วยให้คุณเร่งความเร็ว เบรก และเปลี่ยนเกียร์ได้ด้วยความรู้สึกสมจริง', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/drivingforce/g920-gallery-1-2.png?v=1', 11990),
(96, 'DRIVING FORCE SHIFTER\r\nสำหรับพวงมาลัยแข่งรถ G923, G29 และ G920', 'จับคู่กับพวงมาลัยและคันเหยียบ G923, G29 และ G920 ก้านเกียร์เหล็กกล้า, กล่องเกียร์ก้านสั้น 6 เกียร์ และลูกบิดและบูตหนัง, Driving Force Shifter สร้างมาเพื่อความแม่นยำและความน่าเชื่อถือ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/driving-force-shifter/shifter-gallery-1.png?v=1', 7890),
(97, 'LOGITECH G740\r\nเมาส์แพดเกมมิ่งแบบผ้าหนาขนาดใหญ่', 'เมาส์แพดหนา 5 มม.ที่ปรับมาให้เหมาะกับเซ็นเซอร์เมาส์เกมมิ่ง Logitech G และการเคลื่อนที่ที่ฉับไวทั้งหมดของเกม DPI ต่ำ', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g740-large-cloth-mouse-pad/galley/g740-gallery-1.png?v=1', 890),
(98, 'เมาส์แพดเกมมิ่ง G840 XL\r\nLeague of Legends Edition', 'ดีไซน์ League of Legends พิเศษเฉพาะอย่างเป็นทางการ พาตัวเองดำดิ่งสู่ Summoner’s RIft และใช้งานแผ่นรองเมาส์ที่คลุมยาวทั้งโต๊ะ พื้นผิวที่ปรับมาเพื่อประสิทธิภาพ ฐานยางวางแผ่นรองเมาส์มั่นคงอยู่กับที่', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/lol-g840/gallery/league-of-legends-g840-gaming-mousepad-gallery-1.png?v=1', 1690),
(99, 'G840 K/DA\r\nเมาส์แพดเกมมิ่ง XL', 'เมาส์แพดเกมมิ่งแบบยาวตลอดโต๊ะ มีพื้นที่เพื่อการจัดวางในแบบที่คุณต้องการ พื้นผิวมีลายปรับมาเพื่อศักยภาพสำหรับเมาส์ Logitech G ฐานยางอยู่กับที่เพื่อสมาธิและการควบคุมภายในเกม', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g840/g840-gallery-1-new.png?v=1', 690),
(100, 'G440\r\nเมาส์แพดแบบแข็งสำหรับการเล่นเกม', 'พื้นผิวแข็งมีแรงเสียดทางต่ำ ทำให้ขยับเมาส์ได้รวดเร็วและลื่นไหล ฐานยางอยู่กับที่ แม้ในเกมที่หนักหน่วง พื้นผิวลวดลายสร้างมาเพื่อศักยภาพในการเล่นเกมสูงสุดของเมาส์ Logitech G', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g440/g440-gallery-1-new.png?v=1', 890),
(101, 'F310\r\nเกมแพด', 'D-Pad 4 สวิตช์เพื่อการควบคุมที่แม่นยำและแผนผังคอนโซลที่คุ้นเคย ต่อและใช้ได้ทันทีบนพีซี', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/f310/f310-gallery-1.png?v=1', 1290),
(102, 'F710\r\nเกมแพดไร้สาย', 'D-pad สี่ปุ่มเพื่อการควบคุมที่แม่นยำ ระบบไร้สาย 2.4 GHz ที่รวดเร็วผ่านตัวรับสัญญาณนาโน USB การสั่นตอบสนองด้วยมอเตอร์คู่ ใช้งานได้กับพีซี', 'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/f710/f710-gallery-1.png?v=1', 1990);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
