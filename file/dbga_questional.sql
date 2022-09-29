-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 19, 2018 at 11:17 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbga_questional`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` char(6) NOT NULL DEFAULT '' COMMENT 'หมายเลขลูกค้า,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],CU-003#CU-004#CU-005#CU-006',
  `custName` varchar(50) DEFAULT NULL COMMENT 'ชื่อลูกค้า,รายละเอียด,[LIKE/UPPER/BETWEEN/LOWER/GROUP BY/ORDER BY],สมศักดิ์#สมศรี#สมหมาย#สมพร',
  `custAddr` varchar(255) DEFAULT NULL COMMENT 'ที่พัก,รายละเอียด,[LIKE/UPPER/BETWEEN/LOWER/GROUP BY/ORDER BY],12 ม.1#555 ม.3#2/11 ม.9#91/2 ม.9',
  `custProvince` varchar(50) DEFAULT NULL COMMENT 'จังหวัด,รายละเอียด,[LIKE/UPPER/BETWEEN/LOWER/GROUP BY/ORDER BY],กรุงเทพ#เชียงใหม่#ชุมพร#ขอนแก่น',
  `custPhone` char(10) DEFAULT NULL COMMENT 'เบอร์ลูกค้า,โทรศัพท์,[COUNT/GROUP BY/ORDER BY],081-2345678#089-8765432#080-0000001#088-1111111'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `custName`, `custAddr`, `custProvince`, `custPhone`) VALUES
('CU-001', 'ทับทิม', '214 ม.12', 'ชุมพร', '0864364549'),
('CU-002', 'มรกต', '1/2 ม.1', 'จันทบุรี', '0479623181');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNo` char(6) NOT NULL DEFAULT '' COMMENT 'หมายเลขสั่งซื้อ,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],OR-005#OR-006#OR-007#OR-008',
  `orderDate` date DEFAULT NULL COMMENT 'วันที่สั่งซื้อ,เวลา,[GROUP BY/ORDER BY/BETWEEN/COUNT]',
  `orderTotal` int(11) DEFAULT NULL COMMENT 'จำนวนที่สั่งซื้อ, ตัวเลข,[GROUP BY/ORDER BY/AVG/MAX/MIN/SUM/COUNT/STD/HAVING]',
  `custID` char(6) DEFAULT NULL COMMENT 'หมายเลขลูกค้า,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],CU-003#CU-004#CU-005#CU-006'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNo`, `orderDate`, `orderTotal`, `custID`) VALUES
('OR-002', '2017-10-08', 5, 'CU-001'),
('OR-004', '2017-10-12', 89, 'CU-002');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `prodNo` char(3) NOT NULL DEFAULT '' COMMENT 'หมายเลขสินค้า,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],003#004#005#006',
  `orderNo` char(6) NOT NULL DEFAULT '' COMMENT 'หมายเลขสั่งซื้อ,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],OR-005#OR-006#OR-007#OR-008',
  `quantity` int(11) DEFAULT NULL COMMENT 'จำนวนสั่งซื้อ,ตัวเลข,[GROUP BY/ORDER BY/AVG/MAX/MIN/SUM/COUNT/STD/HAVING]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`prodNo`, `orderNo`, `quantity`) VALUES
('001', 'OR-002', 12),
('002', 'OR-002', 33);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodNo` char(3) NOT NULL DEFAULT '' COMMENT 'หมายเลขสินค้า,ตัวเลขรหัส,[LIKE/COUNT/BETWEEN/HAVING],003#004#005#006',
  `prodName` varchar(50) DEFAULT NULL COMMENT 'ชื่อสินค้า,รายละเอียด,[LIKE/UPPER/BETWEEN/LOWER/GROUP BY/ORDER BY],OPPO#NOKIA#SAMSUNG#APPLE',
  `prodPrice` int(11) DEFAULT NULL COMMENT 'ราคาสินค้า,ตัวเลข,[BETWEEN/GROUP BY/ORDER BY/AVG/MAX/MIN/SUM/COUNT/STD/HAVING]',
  `prodTotal` int(11) DEFAULT NULL COMMENT 'จำนวนสินค้า,ตัวเลข,[BETWEEN/GROUP BY/ORDER BY/AVG/MAX/MIN/SUM/COUNT/STD/HAVING]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodNo`, `prodName`, `prodPrice`, `prodTotal`) VALUES
('001', 'LUMIA', 61, 51),
('002', 'BARF', 33, 30),
('003', 'SVQTYFDHO', 61, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNo`),
  ADD KEY `Foreign Key` (`custID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderNo`,`prodNo`),
  ADD KEY `Foreign Key` (`prodNo`),
  ADD KEY `Foreign Key2` (`orderNo`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customer_details_ibfk_1` FOREIGN KEY (`custID`) REFERENCES `customer` (`custID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`orderNo`) REFERENCES `orders` (`orderNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_details_ibfk_1` FOREIGN KEY (`prodNo`) REFERENCES `product` (`prodNo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
