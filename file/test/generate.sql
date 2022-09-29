CREATE TABLE `answer` (
  `UserID` char(8) NOT NULL,
  `dbName` varchar(50) NOT NULL,
  `ansNum` int(255) DEFAULT NULL,
  `ansForm` char(3) DEFAULT NULL,
  `ansDetail` varchar(500) DEFAULT NULL
)

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`UserID`, `dbName`, `ansNum`, `ansForm`, `ansDetail`) VALUES
('28737', 'dbga_questional', 1, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\");'),
('28737', 'dbga_questional', 2, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\");'),
('28737', 'dbga_questional', 3, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\");'),
('28737', 'dbga_questional', 4, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-006\", 730 );'),
('28737', 'dbga_questional', 5, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-006\", 730 );'),
('28737', 'dbga_questional', 6, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-006\", 730 );'),
('28737', 'dbga_questional', 7, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-21\", 268 , \"CU-006\");'),
('28737', 'dbga_questional', 8, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-21\", 268 , \"CU-006\");'),
('28737', 'dbga_questional', 9, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-21\", 268 , \"CU-006\");'),
('28737', 'dbga_questional', 10, '1', 'INSERT INTO product  VALUES (\"005\", \"SAMSUNG\", 394 , 64 );'),
('28737', 'dbga_questional', 11, '1', 'INSERT INTO product  VALUES (\"005\", \"SAMSUNG\", 394 , 64 );'),
('28737', 'dbga_questional', 12, '1', 'INSERT INTO product  VALUES (\"005\", \"SAMSUNG\", 394 , 64 );'),
('28737', 'dbga_questional', 13, '1', 'INSERT INTO customer  VALUES (\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\");'),
('28737', 'dbga_questional', 14, '1', 'INSERT INTO customer  VALUES (\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\");'),
('28737', 'dbga_questional', 15, '1', 'INSERT INTO customer  VALUES (\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\");'),
('28737', 'dbga_questional', 16, '1', 'INSERT INTO order_details  VALUES (\"006\", \"OR-005\", 889 );'),
('28737', 'dbga_questional', 17, '1', 'INSERT INTO order_details  VALUES (\"006\", \"OR-005\", 889 );'),
('28737', 'dbga_questional', 18, '1', 'INSERT INTO order_details  VALUES (\"006\", \"OR-005\", 889 );'),
('28737', 'dbga_questional', 19, '1', 'INSERT INTO orders  VALUES (\"OR-006\", \"2017-10-08\", 247 , \"CU-004\");'),
('28737', 'dbga_questional', 20, '1', 'INSERT INTO orders  VALUES (\"OR-006\", \"2017-10-08\", 247 , \"CU-004\");'),
('28737', 'dbga_questional', 21, '1', 'INSERT INTO orders  VALUES (\"OR-006\", \"2017-10-08\", 247 , \"CU-004\");'),
('28737', 'dbga_questional', 22, '1', 'INSERT INTO product  VALUES (\"004\", \"NOKIA\", 245 , 854 );'),
('28737', 'dbga_questional', 23, '1', 'INSERT INTO product  VALUES (\"004\", \"NOKIA\", 245 , 854 );'),
('28737', 'dbga_questional', 24, '1', 'INSERT INTO product  VALUES (\"004\", \"NOKIA\", 245 , 854 );'),
('28737', 'dbga_questional', 25, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\");'),
('28737', 'dbga_questional', 26, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\");'),
('28737', 'dbga_questional', 27, '1', 'INSERT INTO customer  VALUES (\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\");'),
('28737', 'dbga_questional', 28, '1', 'INSERT INTO order_details  VALUES (\"005\", \"OR-007\", 920 );'),
('28737', 'dbga_questional', 29, '1', 'INSERT INTO order_details  VALUES (\"005\", \"OR-007\", 920 );'),
('28737', 'dbga_questional', 30, '1', 'INSERT INTO order_details  VALUES (\"005\", \"OR-007\", 920 );'),
('28737', 'dbga_questional', 31, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-08\", 705 , \"CU-003\");'),
('28737', 'dbga_questional', 32, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-08\", 705 , \"CU-003\");'),
('28737', 'dbga_questional', 33, '1', 'INSERT INTO orders  VALUES (\"OR-008\", \"2017-10-08\", 705 , \"CU-003\");'),
('28737', 'dbga_questional', 34, '1', 'INSERT INTO product  VALUES (\"006\", \"SAMSUNG\", 204 , 708 );'),
('28737', 'dbga_questional', 35, '1', 'INSERT INTO product  VALUES (\"006\", \"SAMSUNG\", 204 , 708 );'),
('28737', 'dbga_questional', 36, '1', 'INSERT INTO product  VALUES (\"006\", \"SAMSUNG\", 204 , 708 );'),
('28737', 'dbga_questional', 37, '1', 'INSERT INTO customer  VALUES (\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\");'),
('28737', 'dbga_questional', 38, '1', 'INSERT INTO customer  VALUES (\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\");'),
('28737', 'dbga_questional', 39, '1', 'INSERT INTO customer  VALUES (\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\");'),
('28737', 'dbga_questional', 40, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-007\", 995 );'),
('28737', 'dbga_questional', 41, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-007\", 995 );'),
('28737', 'dbga_questional', 42, '1', 'INSERT INTO order_details  VALUES (\"003\", \"OR-007\", 995 );'),
('28737', 'dbga_questional', 43, '1', 'INSERT INTO orders  VALUES (\"OR-005\", \"2017-10-31\", 7 , \"CU-005\");'),
('28737', 'dbga_questional', 44, '1', 'INSERT INTO orders  VALUES (\"OR-005\", \"2017-10-31\", 7 , \"CU-005\");'),
('28737', 'dbga_questional', 45, '1', 'INSERT INTO orders  VALUES (\"OR-005\", \"2017-10-31\", 7 , \"CU-005\");'),
('28737', 'dbga_questional', 46, '1', 'INSERT INTO product  VALUES (\"005\", \"NOKIA\", 231 , 336 );'),
('28737', 'dbga_questional', 47, '1', 'INSERT INTO product  VALUES (\"005\", \"NOKIA\", 231 , 336 );'),
('28737', 'dbga_questional', 48, '1', 'INSERT INTO product  VALUES (\"005\", \"NOKIA\", 231 , 336 );');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `dbName` varchar(50) NOT NULL,
  `picName` char(255) NOT NULL
)

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`dbName`, `picName`) VALUES
('dbga_datatest', 'http://localhost/Project01/Picture/property.JPG'),
('dbga_questional', 'http://localhost/Project01/Picture/dbpic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `UserID` char(8) NOT NULL,
  `dbName` varchar(50) NOT NULL,
  `tempName` varchar(50) DEFAULT NULL,
  `questNum` int(255) NOT NULL,
  `questDetail` varchar(500) DEFAULT NULL,
  `questType` varchar(50) DEFAULT NULL
)

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`UserID`, `dbName`, `tempName`, `questNum`, `questDetail`, `questType`) VALUES
('28737', 'dbga_questional', 'template_insert', 1, 'ให้แทรกข้อมูลลงในตาราง customer โดยประกอบไปด้วยชุดข้อมูล (\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 2, 'ให้แทรกข้อมูลใหม่ ดังนี้(\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\") ลงในตาราง  customer .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 3, 'ให้แทรกข้อมูล(\"CU-006\", \"สมหมาย\", \"91/2 ม.9\", \"ขอนแก่น\", \"080-0000001\") ไปยังตาราง customer.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 4, 'ให้แทรกรายการข้อมูลลงในตาราง order_details โดยประกอบไปด้วยชุดข้อมูล (\"003\", \"OR-006\", 730 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 5, 'ให้แทรกรายการข้อมูลใหม่ ดังนี้(\"003\", \"OR-006\", 730 ) ลงในตาราง  order_details .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 6, 'ให้แทรกรายการข้อมูล(\"003\", \"OR-006\", 730 ) ไปยังตาราง order_details.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 7, 'ให้แทรกรายการข้อมูลลงในตาราง orders โดยประกอบไปด้วยชุดข้อมูล (\"OR-008\", \"2017-10-21\", 268 , \"CU-006\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 8, 'ให้แทรกรายการข้อมูลใหม่ ดังนี้(\"OR-008\", \"2017-10-21\", 268 , \"CU-006\") ลงในตาราง  orders .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 9, 'ให้แทรกรายการข้อมูล(\"OR-008\", \"2017-10-21\", 268 , \"CU-006\") ไปยังตาราง orders.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 10, 'ให้แทรกข้อมูลลงในตาราง product โดยประกอบไปด้วยชุดข้อมูล (\"005\", \"SAMSUNG\", 394 , 64 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 11, 'ให้แทรกข้อมูลใหม่ ดังนี้(\"005\", \"SAMSUNG\", 394 , 64 ) ลงในตาราง  product .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 12, 'ให้แทรกข้อมูล(\"005\", \"SAMSUNG\", 394 , 64 ) ไปยังตาราง product.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 13, 'เพิ่มข้อมูลลงในตาราง customer โดยประกอบไปด้วยชุดข้อมูล (\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 14, 'เพิ่มข้อมูลใหม่ ดังนี้(\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\") ลงในตาราง  customer .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 15, 'เพิ่มข้อมูล(\"CU-005\", \"สมหมาย\", \"555 ม.3\", \"กรุงเทพ\", \"089-8765432\") ไปยังตาราง customer.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 16, 'เพิ่มรายการข้อมูลลงในตาราง order_details โดยประกอบไปด้วยชุดข้อมูล (\"006\", \"OR-005\", 889 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 17, 'เพิ่มรายการข้อมูลใหม่ ดังนี้(\"006\", \"OR-005\", 889 ) ลงในตาราง  order_details .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 18, 'เพิ่มรายการข้อมูล(\"006\", \"OR-005\", 889 ) ไปยังตาราง order_details.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 19, 'เพิ่มข้อมูลลงในตาราง orders โดยประกอบไปด้วยชุดข้อมูล (\"OR-006\", \"2017-10-08\", 247 , \"CU-004\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 20, 'เพิ่มข้อมูลใหม่ ดังนี้(\"OR-006\", \"2017-10-08\", 247 , \"CU-004\") ลงในตาราง  orders .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 21, 'เพิ่มข้อมูล(\"OR-006\", \"2017-10-08\", 247 , \"CU-004\") ไปยังตาราง orders.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 22, 'เพิ่มรายการข้อมูลลงในตาราง product โดยประกอบไปด้วยชุดข้อมูล (\"004\", \"NOKIA\", 245 , 854 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 23, 'เพิ่มรายการข้อมูลใหม่ ดังนี้(\"004\", \"NOKIA\", 245 , 854 ) ลงในตาราง  product .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 24, 'เพิ่มรายการข้อมูล(\"004\", \"NOKIA\", 245 , 854 ) ไปยังตาราง product.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 25, 'กรอกข้อมูลลงในตาราง customer โดยประกอบไปด้วยชุดข้อมูล (\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 26, 'กรอกข้อมูลใหม่ ดังนี้(\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\") ลงในตาราง  customer .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 27, 'กรอกข้อมูล(\"CU-006\", \"สมพร\", \"555 ม.3\", \"เชียงใหม่\", \"081-2345678\") ไปยังตาราง customer.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 28, 'กรอกรายการข้อมูลลงในตาราง order_details โดยประกอบไปด้วยชุดข้อมูล (\"005\", \"OR-007\", 920 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 29, 'กรอกรายการข้อมูลใหม่ ดังนี้(\"005\", \"OR-007\", 920 ) ลงในตาราง  order_details .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 30, 'กรอกรายการข้อมูล(\"005\", \"OR-007\", 920 ) ไปยังตาราง order_details.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 31, 'กรอกข้อมูลลงในตาราง orders โดยประกอบไปด้วยชุดข้อมูล (\"OR-008\", \"2017-10-08\", 705 , \"CU-003\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 32, 'กรอกข้อมูลใหม่ ดังนี้(\"OR-008\", \"2017-10-08\", 705 , \"CU-003\") ลงในตาราง  orders .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 33, 'กรอกข้อมูล(\"OR-008\", \"2017-10-08\", 705 , \"CU-003\") ไปยังตาราง orders.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 34, 'กรอกรายการข้อมูลลงในตาราง product โดยประกอบไปด้วยชุดข้อมูล (\"006\", \"SAMSUNG\", 204 , 708 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 35, 'กรอกรายการข้อมูลใหม่ ดังนี้(\"006\", \"SAMSUNG\", 204 , 708 ) ลงในตาราง  product .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 36, 'กรอกรายการข้อมูล(\"006\", \"SAMSUNG\", 204 , 708 ) ไปยังตาราง product.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 37, 'ใส่รายการข้อมูลลงในตาราง customer โดยประกอบไปด้วยชุดข้อมูล (\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 38, 'ใส่รายการข้อมูลใหม่ ดังนี้(\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\") ลงในตาราง  customer .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 39, 'ใส่รายการข้อมูล(\"CU-003\", \"สมพร\", \"555 ม.3\", \"ขอนแก่น\", \"089-8765432\") ไปยังตาราง customer.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 40, 'ใส่ข้อมูลลงในตาราง order_details โดยประกอบไปด้วยชุดข้อมูล (\"003\", \"OR-007\", 995 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 41, 'ใส่ข้อมูลใหม่ ดังนี้(\"003\", \"OR-007\", 995 ) ลงในตาราง  order_details .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 42, 'ใส่ข้อมูล(\"003\", \"OR-007\", 995 ) ไปยังตาราง order_details.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 43, 'ใส่ข้อมูลลงในตาราง orders โดยประกอบไปด้วยชุดข้อมูล (\"OR-005\", \"2017-10-31\", 7 , \"CU-005\") .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 44, 'ใส่ข้อมูลใหม่ ดังนี้(\"OR-005\", \"2017-10-31\", 7 , \"CU-005\") ลงในตาราง  orders .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 45, 'ใส่ข้อมูล(\"OR-005\", \"2017-10-31\", 7 , \"CU-005\") ไปยังตาราง orders.', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 46, 'ใส่รายการข้อมูลลงในตาราง product โดยประกอบไปด้วยชุดข้อมูล (\"005\", \"NOKIA\", 231 , 336 ) .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 47, 'ใส่รายการข้อมูลใหม่ ดังนี้(\"005\", \"NOKIA\", 231 , 336 ) ลงในตาราง  product .', 'ความจำ,ความเข้าใจ'),
('28737', 'dbga_questional', 'template_insert', 48, 'ใส่รายการข้อมูล(\"005\", \"NOKIA\", 231 , 336 ) ไปยังตาราง product.', 'ความจำ,ความเข้าใจ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` char(8) NOT NULL,
  `UserFull` varchar(255) DEFAULT NULL,
  `UserPass` varchar(50) DEFAULT NULL,
  `UserStatusId` char(1) DEFAULT NULL,
  `UserDate` date DEFAULT NULL,
  `UserEmail` varchar(255) DEFAULT NULL
)

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserFull`, `UserPass`, `UserStatusId`, `UserDate`, `UserEmail`) VALUES
('007', 'testinput', '81dc9bdb52d04dc20036dbd8313ed055', '2', '2018-08-02', 'test007@hotmail.com'),
('07540629', 'apiwat naunkhaw', 'fd2c5e4680d9a01dba3aada5ece22270', '2', '2017-03-25', 'apiwat1765@hotmail.co.th'),
('28737', 'อภิวัฒน์', '81dc9bdb52d04dc20036dbd8313ed055', '1', '2017-10-23', 'apiwat1765@hotmail.co.th'),
('58309202', 'mink', '81dc9bdb52d04dc20036dbd8313ed055', '1', '2016-10-10', 'mi@hotmail.com'),
('admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2', '2018-07-12', 'admin@gmail.com'),
('ap01', 'ผู้ทดสอบ1', '81dc9bdb52d04dc20036dbd8313ed055', '2', '2018-06-20', 'ap01@hotmail.com'),
('big', 'บิ๊ก สุดหล่อ', '81dc9bdb52d04dc20036dbd8313ed055', '2', '2018-07-04', 'big@gmail.com'),
('test01', 'name001', '81dc9bdb52d04dc20036dbd8313ed055', '1', '2018-06-06', 'abcd@gmail.com'),
('test02', 'name002', '81dc9bdb52d04dc20036dbd8313ed055', '2', '2018-06-06', 'test02@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD KEY `user_db_detail_1` (`UserID`,`dbName`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`dbName`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`UserID`,`dbName`,`questNum`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`UserID`,`dbName`) REFERENCES `quest` (`UserID`, `dbName`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
