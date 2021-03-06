-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2019 at 11:24 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bh_banggood`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `add_line1` varchar(1000) NOT NULL,
  `add_line2` varchar(1000) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `add_line1`, `add_line2`, `pincode`, `city`, `state`) VALUES
(1, 1, 'Sakti Soc', 'Rajkot', '360003', 'Rajkot', 'Gujarat'),
(2, 4, 'Athva Arket', 'Mariln Line', '987776', 'SURAT', 'GUJRAT'),
(3, 6, 'S . G High Way', 'Near High Court', '360003', 'Rajkot', 'Gujarat'),
(4, 8, '13 Shakti Society', 'Rajkot', '360003', 'Rajkot', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `name`, `value`) VALUES
(1, 1, 'cart', '[{\"pro_id\":\"29\",\"qty\":1}]'),
(2, 6, 'cart', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `name`, `parent`, `description`) VALUES
(1, 'MOBILE', 0, ''),
(2, 'LAPTOP', 0, ''),
(3, 'ACCESSORIES', 0, ''),
(4, 'MI', 1, ''),
(5, 'SAMSUNG', 1, ''),
(6, 'MOTOROLA', 1, ''),
(7, 'GOOGLE', 1, ''),
(8, 'DELL', 2, ''),
(9, 'LENOVO', 2, ''),
(10, 'HP', 2, ''),
(11, 'APPLE', 2, ''),
(12, 'SANDISK', 3, ''),
(13, 'SONY', 3, ''),
(14, 'MI', 3, ''),
(15, 'BOAT', 3, ''),
(16, 'NOKIA', 1, ''),
(17, 'ONE PLUSE', 1, ''),
(18, 'VIVO', 1, ''),
(19, 'Mobiistar', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`cid`, `name`, `email`, `contact_no`, `subject`, `message`) VALUES
(1, 'Harsh', 'hchhatbar86@gmail.com', 90000099999, 'Order', 'temp'),
(2, 'HARSH CHHATBAR', 'hchhatbar86@gmail.com', 7383252596, 'Testing Purpose', 'Good Work  Best Of Luck...!  '),
(3, 'Ram Rabari', 'rambhai@ramleela.com', 9001990019, 'Packing of Product', 'Pracking of Product is not product is not proper while it has been delivered.\r\n ');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `status_list` text NOT NULL,
  `is_delivered` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `user_id`, `ord_id`, `status_list`, `is_delivered`) VALUES
(1, 3, 3, 'a:5:{i:0;a:3:{s:3:\"key\";s:1:\"1\";s:11:\"description\";s:24:\"Hello World Replace This\";s:4:\"date\";s:11:\"24-Nov-2019\";}i:1;a:3:{s:3:\"key\";s:1:\"2\";s:11:\"description\";s:24:\"Hello World Replace This\";s:4:\"date\";s:11:\"24-Nov-2019\";}i:2;a:3:{s:3:\"key\";s:1:\"2\";s:11:\"description\";s:19:\"Please Stay At Home\";s:4:\"date\";s:11:\"24-Nov-2019\";}i:3;a:3:{s:3:\"key\";s:1:\"3\";s:11:\"description\";s:19:\"Please Stay At Home\";s:4:\"date\";s:11:\"24-Nov-2019\";}i:4;a:3:{s:3:\"key\";s:1:\"4\";s:11:\"description\";s:8:\"Aaj Avse\";s:4:\"date\";s:11:\"24-Nov-2019\";}}', 'No'),
(5, 3, 4, 'a:4:{i:0;a:3:{s:3:\"key\";s:1:\"1\";s:11:\"description\";s:3:\"1\r\n\";s:4:\"date\";s:11:\"25-Nov-2019\";}i:1;a:3:{s:3:\"key\";s:1:\"2\";s:11:\"description\";s:1:\"2\";s:4:\"date\";s:11:\"25-Nov-2019\";}i:2;a:3:{s:3:\"key\";s:1:\"3\";s:11:\"description\";s:3:\"3\r\n\";s:4:\"date\";s:11:\"25-Nov-2019\";}i:3;a:3:{s:3:\"key\";s:1:\"4\";s:11:\"description\";s:1:\"4\";s:4:\"date\";s:11:\"25-Nov-2019\";}}', 'No'),
(7, 3, 1, 'a:4:{i:0;a:3:{s:3:\"key\";s:1:\"2\";s:11:\"description\";s:1:\"1\";s:4:\"date\";s:11:\"26-Nov-2019\";}i:1;a:3:{s:3:\"key\";s:1:\"3\";s:11:\"description\";s:3:\"2\r\n\";s:4:\"date\";s:11:\"26-Nov-2019\";}i:2;a:3:{s:3:\"key\";s:1:\"4\";s:11:\"description\";s:1:\"3\";s:4:\"date\";s:11:\"26-Nov-2019\";}i:3;a:3:{s:3:\"key\";s:1:\"5\";s:11:\"description\";s:1:\"4\";s:4:\"date\";s:11:\"26-Nov-2019\";}}', 'No'),
(8, 3, 6, 'a:0:{}', 'No'),
(10, 3, 7, 'a:4:{i:0;a:3:{s:3:\"key\";s:1:\"2\";s:11:\"description\";s:10:\"Approved\r\n\";s:4:\"date\";s:11:\"26-Dec-2019\";}i:1;a:3:{s:3:\"key\";s:1:\"3\";s:11:\"description\";s:14:\"At 2nd Place\r\n\";s:4:\"date\";s:11:\"26-Dec-2019\";}i:2;a:3:{s:3:\"key\";s:1:\"4\";s:11:\"description\";s:6:\"at 3rd\";s:4:\"date\";s:11:\"26-Dec-2019\";}i:3;a:3:{s:3:\"key\";s:1:\"5\";s:11:\"description\";s:7:\"finally\";s:4:\"date\";s:11:\"26-Dec-2019\";}}', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact_num` bigint(20) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `deli_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `user_id`, `name`, `address`, `contact_num`, `order_status`, `deli_id`, `payment_type`, `payment_status`, `order_note`) VALUES
(1, 1, 'HARSH CHHATBAR', '1', 9187264391, 'Approved', 0, 'COD', 'Remain', 'Call Before Deliver'),
(6, 6, 'Rahul Gandhi', '3', 9010901090, 'Approved', 0, 'COD', 'Remain', 'Gift Wrap'),
(7, 8, 'Tejash Patel', '4', 9019090190, 'Need Approval', 0, 'COD', 'Remain', 'Call Before Come to Home'),
(8, 8, 'Tejash Patel', '4', 9019090190, 'Need Approval', 0, 'COD', 'Remain', 'Call Before Come');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `ord_id`, `pro_id`, `qty`, `price`) VALUES
(1, 1, 8, 1, 32400),
(2, 2, 20, 2, 229500),
(3, 3, 17, 1, 42000),
(4, 4, 29, 1, 13999),
(5, 5, 9, 1, 9899),
(6, 6, 18, 1, 28709),
(7, 7, 19, 1, 42075),
(9, 8, 23, 1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `pay_using` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `mrp` bigint(20) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(1000) NOT NULL,
  `qty` int(11) NOT NULL,
  `can_buy` tinyint(1) NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `name`, `cat_id`, `brand`, `mrp`, `discount`, `description`, `images`, `qty`, `can_buy`, `tags`) VALUES
(1, 'Samsung Galaxy J7', 1, 5, 13000, 1, '<p><em>3500mah Bettery</em><br /> <strong>Android 9</strong></p> ', 'a:1:{i:0;s:16:\"./images/si1.jpg\";}', 20, 1, 'SAMSUNG,Mobile'),
(2, 'Nokia 6.1Pluse', 1, 16, 10000, 10, '<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 YearManufacturer Warranty</p> <ul> <li>8 GB RAM | 64 GB ROM | Expandable Upto 128GB</li> <li>display_inch inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3400mAh Battery</li> <li>Snapdragan Octa Core 636GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:1:{i:0;s:18:\"./images/n6_1p.jpg\";}', 20, 1, 'Nokia,MOBILE'),
(3, 'Redmi Note 7', 1, 4, 14500, 1, '<p><em>6.5&#39; Display</em><strong>Android 9</strong></p> ', 'a:1:{i:0;s:17:\"./images/min7.jpg\";}', 20, 1, 'Redmi,MI,MOBILE'),
(4, 'Redmi Go', 1, 4, 4500, 10, '<p><em>Loud Speaker</em><strong>Android 8</strong></p> ', 'a:1:{i:0;s:17:\"./images/migo.jpg\";}', 20, 1, 'Redmi,MI,MOBILE'),
(5, 'Samsung Galaxy S10', 1, 5, 30000, 1, '<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 YearManufacturer Warranty</p> <ul> <li>8 GB RAM | 64 GB ROM | Expandable Upto 128GB</li> <li>display_inch inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3400mAh Battery</li> <li>Snapdragan Octa Core 636GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:1:{i:0;s:18:\"./images/sgs10.jpg\";}', 10, 1, 'Samsung,Mobile'),
(6, 'OnePluse 7 Pro', 1, 17, 34000, 50, '<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 YearManufacturer Warranty</p> <ul> <li>8 GB RAM | 64 GB ROM | Expandable Upto 128GB</li> <li>display_inch inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3400mAh Battery</li> <li>Snapdragan Octa Core 636GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:2:{i:0;s:19:\"./images/op7p_1.jpg\";i:1;s:19:\"./images/op7p_2.jpg\";}', 20, 1, 'Oneplus,Mobile'),
(7, 'Redmi 8', 1, 4, 7999, 1, '<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 YearManufacturer Warranty</p> <ul> <li>8 GB RAM | 64 GB ROM | Expandable Upto 128GB</li> <li>display_inch inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3400mAh Battery</li> <li>Snapdragan Octa Core 636GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:1:{i:0;s:16:\"./images/mi8.jpg\";}', 20, 1, 'mi,MI,Mobile'),
(8, 'Google Pixel 4', 1, 7, 36000, 10, '<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 YearManufacturer Warranty</p> <ul> <li>8 GB RAM | 128 GB ROM | Expandable Upto 128GB</li> <li>display_inch inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3400mAh Battery</li> <li>Snapdragan Octa Core 636GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:1:{i:0;s:16:\"./images/gp4.jpg\";}', 20, 1, 'Google,Mobile'),
(9, 'Motorola One Macro (Space Blue, 64 GB)  (4 GB RAM)', 1, 6, 9999, 1, '<ul> <li> Cash on Delivery Eligible. </li>\r\n <li> Shipping Speed to Delivery. </li> <li> EMIs from emi_worth/month. </li> <li> Bank OfferExtra 5% off* with Axis Bank Buzz Credit Card</li> </ul> <hr /> <h3>1 YearManufacturer Warranty</h3> <ul> <li> 4 GB RAM | 64 GB ROM | Expandable Upto 256GB</li> <li> 5.0inch Full HD Display </li> <li> 6MP Rear Camera | 12 MP Front Camera </li> <li> 5000mAh Battery </li> <li> Octa Core 855GHz Processor </li> </ul> <h4>Credit/ Debit/ ATM card </h4> ', 'a:1:{i:0;s:16:\"./images/m1m.jpg\";}', 20, 1, 'MOTOROLA,Mobile'),
(16, 'Redmi Y2 (Blue, 4GB RAM, 64GB Storage)', 1, 4, 4999, 50, '.<h3>&nbsp;</h3> <ul> <li>Cash on Delivery Eligible.</li> <li>Shipping Speed to Delivery.</li> <li>EMIs from emi_worth/month.</li> <li>Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&amp;C</li> </ul> <hr /> <p>1 \r\nYearManufacturer Warranty</p> <ul> <li>4 GB RAM | 64 GB ROM | Expandable Upto 128GB</li> <li>4.0inch Full HD Display</li> <li>8MP Rear Camera | 12MP Front Camera</li> <li>3100mAh Battery</li> <li>Snapdragan Octa Core 225GHz Processor</li> </ul> <p>Net banking &amp; Credit/ Debit/ ATM card</p> ', 'a:3:{i:0;s:17:\"./images/y2_2.jpg\";i:1;s:17:\"./images/y2_3.jpg\";i:2;s:17:\"./images/y2_1.jpg\";}', 20, 1, 'Redmi y2,Y2,Mobile'),
(17, 'Dell LATITUDE e7440', 2, 8, 42000, 20, '<p>&nbsp;</p> <ul> <li>4th Gen Intel Core i5-4300U Processor (1.9 GHz, 3M, Dual Core)</li> <li>Windows 7 Professional, 14 Inch HD (1366x768) LED-backlit LCD non-Touch Panel (WiGig compatible)</li> <li>4GB1 DDR3L at 1600MHz, 500GB (5.400 Rpm) Serial ATA Hard Drive, Intel HD Graphics 4400</li> <li>3 years warranty</li> </ul> <p>&nbsp;</p> <hr /> <h3>Available On EMI</h3> ', 'a:3:{i:0;s:22:\"./images/dle7440_1.jpg\";i:1;s:22:\"./images/dle7440_2.jpg\";i:2;s:22:\"./images/dle7440_3.jpg\";}', 10, 1, 'Dell,LAPTOP'),
(18, 'HP 15 Core i3 7th gen 15.6-inch Laptop ', 2, 10, 28999, 1, '.<ul> <li>Processor: 7th Gen Intel Core i3-7100U processor, 2.4GHz base processor speed, 2 cores, 3MB cache</li> <li>Operating System: Pre-loaded Windows 10 Home with lifetime validity</li> <li>Display: 15.6-inch Full HD (1920x1080) WLED display, Display Features: Diagonal FHD SVA Anti-Glare WLED-backlit Display</li> <li>Memory &amp; Storage: 4GB DDR4 RAM Intel HD Graphics 620 | Storage: 1TB HDD, HDD Speed(RPM): 5400 RPM</li> <li>Design &amp; battery: Multi-touch gesture support | Thin and light design | Laptop weight: 2.2 kg | Average battery life = 7 hours, HP Fast Charge battery, Battery: 3 Cell, Li-Ion, Power Supply: 41 W AC Adapter W</li> <li>Warranty: This genuine HP laptop comes with a 1-year domestic warranty from HP covering manufacturing defects and not covering physical damage. For more details, see Warranty section below</li> <li>Preinstalled Software: Windows 10 Home | In the Box: Laptop with included battery and charger Ports &amp; CD drive: 1 HDMI, 2 USB 3.0, 1 USB 2.0, 1 Audio-output | With CD drive Other features: Anti Glare Display</li> </ul> ', 'a:3:{i:0;s:19:\"./images/hp15_1.jpg\";i:1;s:19:\"./images/hp15_2.jpg\";i:2;s:19:\"./images/hp15_3.jpg\";}', 20, 1, 'HP,hp,LAPTOP'),
(19, 'Lenovo Ideapad S145', 2, 9, 42500, 1, '.<ul> <li>Processor: 8th Generation Core Intel I5-8265U processor, 1.6 Ghz base speed, 3.9 Ghz max speed, 4 cores, 6Mb Smart Cache</li> <li>Operating System: Pre-loaded Windows 10 Home with lifetime validity</li> <li>Display: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology</li> <li>Memory and Storage: 8 GB RAM | Storage 1 TB HDD</li> <li>Design and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark</li> <li>This genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section</li> <li>Inside the box: Laptop, Charger, User Manual</li> <li>Ports and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive</li> </ul> ', 'a:4:{i:0;s:19:\"./images/lipl_4.jpg\";i:1;s:19:\"./images/lipl_3.jpg\";i:2;s:19:\"./images/lipl_2.jpg\";i:3;s:19:\"./images/lipl_1.jpg\";}', 19, 1, 'LENOVO,LAPTOP'),
(20, 'Apple MacBook Pro ', 2, 11, 229500, 1, '<p>.</p> <ul> <li>2.3 GHz Quad-core Intel Core i5 processor</li> <li>Brilliant Retina display with True Tone technology</li> <li>Touch Bar and Touch ID</li> <li>Intel Iris Plus Graphics 655</li> <li>Ultrafast SSD</li> <li>Four Thunderbolt 3 (USB-C) ports</li> <li>Up to 10 hours of battery life</li> </ul> ', 'a:4:{i:0;s:19:\"./images/mbpl_4.jpg\";i:1;s:19:\"./images/mbpl_1.jpg\";i:2;s:19:\"./images/mbpl_2.jpg\";i:3;s:19:\"./images/mbpl_3.jpg\";}', 20, 1, 'MACBOOK,APPLE,LAPTOP'),
(21, 'Wired Keyboard and Wired Mouse Bundle Pack', 3, 15, 849, 1, '.<ul> <li>Low-profile keys provide a quiet, comfortable typing experience</li> <li>Hotkeys enable easy access for Media, My Computer, mute, volume down, volume Up andcalculator; 4 function keys control previous track, Stop, Play/Pause, Next track on your media player</li> <li>Simple wired USB connection; works with Windows 2000, XP, Vista and 7</li> <li>Smooth, precise and affordable USB-connected 3-button optical mouse for the desktop PC</li> <li>High-definition (1000 dpi) optical tracking enables responsive cursor control for precise tracking and easy text selection</li> <li>1 year limited warranty</li> <li>For customer service and warranty related queries please contact_us: [1800-419-0416] (available Monday to Saturday from 9:30 AM to 6:00 PM except national holidays)</li> </ul> ', 'a:3:{i:0;s:17:\"./images/kbm2.jpg\";i:1;s:17:\"./images/kbm3.jpg\";i:2;s:17:\"./images/kbm1.jpg\";}', 20, 1, 'Computer,ACCESSORIES,accessories'),
(22, 'boAt Rugged v3 Extra Tough Unbreakable Braided Micro USB Cable 1.5 Meter (Black)', 3, 15, 299, 1, '<p>.</p> <ul> <li>The boAt rugged cable features our special toughest polyethylene braided jacket and this unique jacket provides greater protection than anything else you have seen in its class</li> <li>Extra tough polyethylene terephthalate cable skin ensures 10000 plus bend lifespan, stress and stretch resistance.</li> <li>The boAt rugged Micro USB cable is compatible with most android smartphones, windows phone, tablets, PC peripherals and other micro USB compatible devices</li> <li>2.4A rapid charge, fast data transmission and rapid speed to sync your device at the speed up to 480mbps</li> <li>BoAt rugged micro USB cable offers a perfect 1.5 meters in length, optimized for an easy use for your comfort at home or office</li> <li>2 years manufacturer warranty</li> </ul> ', 'a:3:{i:0;s:20:\"./images/pkbl1_2.jpg\";i:1;s:20:\"./images/pkbl1_3.jpg\";i:2;s:20:\"./images/pkbl1_1.jpg\";}', 20, 1, 'Mobile,ACCESSORIES,CHARGER'),
(23, 'Micro USB OTG to USB 2.0 Adapter for Smartphones and Tablets - Set of 3', 3, 15, 75, 1, '.<ul> <li>Micro USB OTG Supported Phones &amp; Tablets ( Android OS ) - Set of 3</li> <li>Can be used only for original Pen Drive, Keyboard, Mouse, EXT.HDD</li> <li>USB 2.0 Compatible , Qty 3 Pcs Multicolour</li> <li>OK Tested Connector, All Works well, Easy to transfer files</li> <li>Compatible with Only Android &amp; OTG Supported Device</li> </ul> ', 'a:3:{i:0;s:19:\"./images/otg1_2.jpg\";i:1;s:19:\"./images/otg1_3.jpg\";i:2;s:19:\"./images/otg1_1.jpg\";}', 19, 1, 'Mobile,accessories,OTG'),
(24, 'SanDisk 32GB Class 10 Micro SDHC Memory Card with Adapter', 3, 12, 399, 1, '.<ul> <li>Water proof</li> <li>Temperature proof For customer support contact 1800 102 2055</li> <li>Shock proof, X-Ray proof</li> <li>Read Speed: up to 100MB/s</li> <li>Ideal for android-based smartphones and tablets</li> </ul> ', 'a:3:{i:0;s:19:\"./images/sm32_2.jpg\";i:1;s:19:\"./images/sm32_3.jpg\";i:2;s:19:\"./images/sm32_1.jpg\";}', 20, 1, 'Mobile,ACCESSORIES,memoryCard'),
(25, 'Mi 20000mAH Li-Polymer Power Bank 2i (Sandstone Black) with 18W Fast Charging', 3, 14, 1499, 1, '.<ul> <li>20000mAh Li-Polymer Battery: Mi Power Bank comes with high-density advanced Li-polymer batteries that makes it more durable and optimizes charging efficiency. It can charge Redmi K20 - 3 times, iPhone 8 - 7.2 times &amp; Redmi Note 7 Pro - 3 times</li> <li>18W Fast Charging: The new Mi Power Bank 2i comes with a never heard before 18W Fast Charging. It supports 5V/2A, 9V/ 2A and 12V/1.5A charging outputs that ensures efficient and quick charging for your devices</li> <li>Black Sandstone Finish: Crafted with quality in mind, the power bank uses PC + ABS material and provides a superior and comfortable hand feel. The new sandstone finish adds a classic yet stylish look to the power bank</li> <li>9 Layers of Protection: Mi Power Bank comes with advanced level of chipset protection that ensures protection against short-circuit, over-current, over-voltage, over-charge &amp; discharge, etc</li> <li>Dual USB Output with smart charging: Mi Power Bank 2i intelligently adjusts power output up to 18W to deliver fast and efficient charging for each connected device</li> <li>Two-way Quick Charge: The feature ensures faster charging for Power Bank and connected devices; Charging time: Approx 6.7 hours (18W charger, standard USB cable), Approx 10 hours ( 10W charger, standard USB cable)</li> <li>Universal Compatibility: Now charge not just mobiles but tablets, BT speakers, earphones, headsets, fitness bands etc</li> </ul> ', 'a:4:{i:0;s:19:\"./images/mipb_2.jpg\";i:1;s:19:\"./images/mipb_3.jpg\";i:2;s:19:\"./images/mipb_4.jpg\";i:3;s:19:\"./images/mipb_1.jpg\";}', 20, 1, 'PowerBank,Accessories'),
(26, 'Sony HD-B1 1TB External Slim Hard Disk (Black)', 3, 13, 4500, 1, '.<ul> <li>1TB Capacity with NTFS formatted</li> <li>USB 3.0 High Speed Transfers</li> <li>Windows and Mac OS Compatible</li> <li>3 years Warranty toll-free number(1800-103-7799) for better assistance</li> <li>Operating Temperature: +5&ndash;+40 â„ƒ (Non-condensing) ; Storage temperature: -20 â„ƒ&ndash;+60 â„ƒ (Non-condensing) ; Power Supply: DC 5 V (USB bus powered), Max. 900 mA</li> </ul> ', 'a:2:{i:0;s:21:\"./images/sony_hd2.jpg\";i:1;s:21:\"./images/sony_hd1.jpg\";}', 20, 1, 'Hard,Disk,Computer,Accessories'),
(29, 'Samsung Galaxy M30s (4GB RAM, 64GB Storage)', 1, 5, 13999, 1, '<p>.</p> <ul> <li>48MP + 8MP + 5MP triple rear camera | 16MP front facing camera</li> <li>16.21 centimeters (6.4-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution 16M color support</li> <li>Memory, Storage &amp; SIM: 4GB RAM | 64GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)</li> <li>Android v9.0 Pie operating system with 2.3GHz + 1.7GHz Exynos 9611 octa core processor</li> <li>6000mAH lithium-ion battery with fast charging | 15W Type-C fast charger in the box</li> <li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li> <li>Box also includes: Travel Adapter, USB Cable, Ejection Pin, User Manual</li> <li>Brand customer care number: 1800-507-267-864</li> </ul> ', 'a:2:{i:0;s:33:\"images/product/product_233517.jpg\";i:1;s:33:\"images/product/product_249986.jpg\";}', 20, 1, 'Mobile,Samsung,M30s,Mobile'),
(30, 'Mobiistar C1 (2GB Ram 16GB ROM) ', 1, 19, 4600, 0, '.<ul> <li>Fullview Screen (18:9), 5.34 &#39;&#39; FWVGA + IPS, 2.75 D glass OTG</li> <li>8MP Selfie Camera with 7 Level Face Beauty</li> <li>5MP Rear Camera, 7 level Face Beauty, HDR, Panorama, Night Mode, Quad core 1.28 Ghz</li> <li>2.75D Glass OTG, 2GB+ 16GB , Android 8.1</li> <li>4G LTE Volte/Vilte, 3000 mAh</li> </ul> ', 'a:2:{i:0;s:32:\"images/product/product_18850.jpg\";i:1;s:32:\"images/product/product_78224.jpg\";}', 20, 1, 'Mobiistar,mobile,c1,C1');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `profile_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `birth_date`, `gender`, `profile_img`) VALUES
(7, 'rahul gandhi', '17-09-19974', 'Male', '\r\n/images/profile1.png'),
(8, 'Tejash Patel', '09/09/1992', 'Male', 'images/profile1.png'),
(21, 'Salman Khan', '1999-06-15', 'Male', 'images/profile/profile_image_595224.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `creation_date` date NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `mobile_no`, `creation_date`, `role`) VALUES
(1, 'bhavin_sanchaniya', 'bhavin', 'bhavin@banggoods.com', 9018090180, '2019-10-22', 'ADMIN'),
(2, 'harsh_chhatbar', '0987', 'harsh@banggoods.com', 7383252596, '2019-11-08', 'ADMIN'),
(3, 'hchhatbar', '54321', 'harsh@gmail.com', 7383252596, '2019-11-17', 'DELIVERY'),
(4, 'Raj_Kumar', '12345', 'rajkumar@gamil.com', 9018090180, '2019-11-25', 'CUSTOMER'),
(7, 'rahul_gandhi', 'rahul', 'rahul@gmail.com', 9018990189, '2019-12-25', 'CUSTOMER'),
(8, 'tejash_patel', '12345', 'tejash@gmail.com', 9012390123, '2019-12-26', 'CUSTOMER'),
(9, 'mahira.sharma', '12345', 'mahira@gmail.com', 9012390123, '2019-12-26', 'CUSTOMER'),
(10, 'kalpesh_popat', '12345', 'k@gmail.com', 9012390123, '2019-12-26', 'CUSTOMER'),
(21, 'salman_khan', '1234', 'sallu@gmail.com', 9012390123, '2019-12-26', 'CUSTOMER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`),
  ADD UNIQUE KEY `cate_id` (`cate_id`),
  ADD KEY `cate_id_2` (`cate_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
