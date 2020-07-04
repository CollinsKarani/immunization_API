-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 05:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsoft_pharm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin`
--

CREATE TABLE `ci_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_role_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `image` varchar(300) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_verify` tinyint(4) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_supper` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_admin`
--

INSERT INTO `ci_admin` (`admin_id`, `admin_role_id`, `username`, `firstname`, `lastname`, `email`, `mobile_no`, `image`, `password`, `last_login`, `is_verify`, `is_admin`, `is_active`, `is_supper`, `token`, `password_reset_code`, `last_ip`, `created_at`, `updated_at`) VALUES
(24, 1, 'superadmin', 'SuperAdmin', 'User', 'sa@g.com', '324234234', 'ff993fc6bcf2d42a9f4e42446d8e45ea.png', '$2y$10$7Oi1GNFZbgD0W5/hiqw3Auu1wAsbBHHI.VugQamXAwvd4xO51XedK', '2019-01-04 11:18:36', 1, 1, 1, 1, '', '', '', '2018-03-17 00:00:00', '2019-01-26 08:01:50'),
(25, 2, 'admin', 'Admin', 'User', 'admin@gmail.com', '544354353', '', '$2y$10$qlAzDhBEqkKwP3OykqA7N.ZQk6T67fxD9RHfdv3zToxa9Mtwu9C/e', '2019-01-09 00:00:00', 1, 1, 1, 0, '', '', '', '2018-03-19 00:00:00', '2019-01-16 23:33:26'),
(26, 3, 'bush', 'jorge', 'bush', 'bush@gmail.com', '5446546545665', '1c576d254c9f8a23c9243702bdb45a11.png', '$2y$10$qlAzDhBEqkKwP3OykqA7N.ZQk6T67fxD9RHfdv3zToxa9Mtwu9C/e', '2018-11-01 09:46:23', 1, 1, 1, 0, '', '', '', '2018-03-19 00:00:00', '2019-01-26 02:01:11'),
(27, 5, 'schoo43543', 'rewr', 'erew', 'erew@dfsfs', 'ewre43543', '', '0a7eab610f12cb73aa0a4aa7c0acf691', '2019-01-02 00:00:00', 1, 1, 1, 0, '', '', '', '2018-03-18 00:00:00', '2019-01-16 23:33:26'),
(29, 4, 'mangoman', 'Mango', 'Man', 'mangoman@gmail.com', '06985214562', '', '698d51a19d8a121ce581499d7b701668', '2019-01-03 00:00:00', 1, 1, 1, 0, '', '', '', '2018-03-15 00:00:00', '2019-01-26 02:01:16'),
(30, 2, 'johnsmith', 'John', 'Smith', 'johnsmith@gmail.com', '9940314725', '38f33530cd54631c5e43a8fca3510a10.jpg', 'f15e7aff5767e72157587302eea58bf4', '2018-04-05 17:00:47', 1, 1, 1, 0, '', '', '', '2018-04-04 00:00:00', '2019-01-27 08:01:44'),
(31, 6, 'naumanit', 'Nauman', 'Ahmed', 'naumanahmedcs@gmail.com', '123456', '', '$2y$10$Yic.I/YRnKVycqPIJW5O2er1wTiHtIt7SMXQnNI6oH9XH5Ap8vrgS', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-01-16 06:01:58', '2019-01-26 09:01:31'),
(34, 2, 'shwetamv', 'shweta', 'vastrad', 'shweta@quadraforcetech.com', '', '', '$2y$10$a8Hd5cOKUsMdM5R3s6bSJePRqRhHetu.PXSUMaUWcfZGQIfMca2eO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-10 00:00:00', '2019-06-10 00:00:00'),
(35, 2, 'Heracles', 'Bogdan', 'Danilov', 'phpmaster@outlook.com', '', '', '$2y$10$kmhDwgfOtu8.LSO3nOxjVuXdmbknk1Eh5Y9/1YVfovWX1pISNcscm', '0000-00-00 00:00:00', 0, 1, 1, 0, '41f1f19176d383480afa65d325c06ed0', '', '', '2019-06-10 00:00:00', '2019-06-10 00:00:00'),
(36, 2, 'teste', 'Tes', 'Te', 'tete@gmail.com', '', '', '$2y$10$tbGaRzXuf4vVyNPtRgA4JOdtyNvPoH0Xqug/EedMgwKNOjHRdp/xm', '0000-00-00 00:00:00', 0, 1, 1, 0, '81e74d678581a3bb7a720b019f4f1a93', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(37, 2, 'bgilman', 'brendan', 'gilman', 'sdoand@aol.com', '', '', '$2y$10$jiJnXce3IYQ5huCm8vENoujalcYJU6L/AZqHEo4s82uvFeeLrvyta', '0000-00-00 00:00:00', 0, 1, 1, 0, '217eedd1ba8c592db97d0dbe54c7adfc', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(38, 2, 'aayushi', 'Aayushi', 'Dixit', 'aayushidixit23@gmail.com', '', '', '$2y$10$v/1H5Ps9.ELHRiq7BdOUVO.hdBobDU7q9yCfn4.ynARRpygSaFDhW', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(39, 2, 'vicky', 'vicky', 'vicky', 'vicky@gmail.com', '', '', '$2y$10$JQHJYexQ7LEo8j7cqI2Km.zoqPqB5./Vw322lA2WtMUWLTsPEAAy2', '0000-00-00 00:00:00', 0, 1, 1, 0, '4daa3db355ef2b0e64b472968cb70f0d', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(40, 2, 'ragav', 'ragav', 'ragav', 'ragav@gmail.com', '', '', '$2y$10$MWTI2cit8GEKmZhCEtAIg.UITAeoXJ792oa9Nq9KCytruS0ddtzBy', '0000-00-00 00:00:00', 0, 1, 1, 0, 'eaae339c4d89fc102edd9dbdb6a28915', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(41, 2, 'vicky003', 'vicky', 'ragav', 'vicky.techleaf@gmail.com', '', '', '$2y$10$yhWEhn30hhMlwgiUErL2iubWOW553vLdUX/CZ.Fu8KXbko9L4vXNO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(42, 2, 'daniel.bjuhr', 'Daniel', 'Bjuhr', 'daniel@crossnet.net', '', '', '$2y$10$WjwSUs1PA0fyfY67fFTHH.3QcFzSbY6u/iu3tjW1DhG96td0PiZa6', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ab817c9349cf9c4f6877e1894a1faa00', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(43, 4, 'gia1', 'gia1', 'gia1', 'gia1@email.com', '34234234', '', '$2y$10$C4K38pvsLXPj3MBXNBvYsO1IP0CN/5jJo.tVw588sLQdMCDRyXkRa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(44, 2, 'kollasr', 'srinivasa rao', 'kolla', 'kolla@mail.com', '', '', '$2y$10$79iesJ8RqHDS5NhEBvfjNO5XMe9AV5aLq7Owp9ABbP.be0wdwT/PS', '0000-00-00 00:00:00', 0, 1, 1, 0, '8d3bba7425e7c98c50f52ca1b52d3735', '', '', '2019-06-13 00:00:00', '2019-06-13 00:00:00'),
(45, 2, 'kollaksr', 'siva kumar', 'kolla', 'kollaksr@gmail.com', '', '', '$2y$10$v3TqNz7RLL9TRx5HvFhunOGP6NKmj3Wvhc0MH0f/hlvqNxb2WMgEa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-13 00:00:00', '2019-06-13 00:00:00'),
(46, 2, 'Test', 'User', 'Name', 'archanau@itpathsolutions.in', '', '', '$2y$10$IbrFT6IHSb7IVEVUh0DEluuevswirXszYe1nciRTcyNRwI2ZgIlji', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-14 00:00:00', '2019-06-14 00:00:00'),
(47, 2, 'abc', 'abc', 'xyz', 'abc@gmail.com', '', '', '$2y$10$H2YFJxiacl65cFbiA0/lteq1YyFLNqaUo3Qj6WrwpXsjtROkO6b7q', '0000-00-00 00:00:00', 0, 1, 1, 0, 'a8baa56554f96369ab93e4f3bb068c22', '', '', '2019-06-14 00:00:00', '2019-06-14 00:00:00'),
(48, 2, 'zeeshan', 'shani', 'ali', 'zali5252@gmail.com', '', '', '$2y$10$BWO9ChxxTahIzVMI1trX3.mhapVCDtXQeuaRLu9Qb5TChQTdb0Dj2', '0000-00-00 00:00:00', 0, 1, 1, 0, '37f0e884fbad9667e38940169d0a3c95', '', '', '2019-06-15 00:00:00', '2019-06-15 00:00:00'),
(49, 2, 'gerberrisco', 'Gerber', 'Risco', 'gerber.risco@gmail.com', '', '', '$2y$10$S2dn7xs846au7W8RBUdBLeCfjAh5.4ga8ExxWBQjhbmyvz.fH1Bcm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-15 00:00:00', '2019-06-15 00:00:00'),
(50, 2, '12345678', 'Lucio', 'Savristao', 'lucio.sacristao@gmail.com', '', '', '$2y$10$SdxibGGveoZYVyukLGzYk.4SJ25TJESkn5crpdIAZfJHkjtDL938.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-16 00:00:00', '2019-06-16 00:00:00'),
(51, 2, 'silknet', 'James', 'Brohiem', 'brohiem@gmx.com', '', '', '$2y$10$mkA1yG6hFpuJ8SNGSO.EP.BuWhkA1caLrnR33BkgCp1bY9aj2ltgW', '0000-00-00 00:00:00', 0, 1, 1, 0, 'b6f0479ae87d244975439c6124592772', '', '', '2019-06-16 00:00:00', '2019-06-16 00:00:00'),
(52, 2, 'trupti', 'trupti', 'shende', 'trupti.shende50@gmail.com', '', '', '$2y$10$2AqoTTSN5lPiVimv.Uwyo.p7Xen/3Gecs7lSYsL8ztxmyYV.fmeOK', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(53, 2, 'Nuke42', 'Nuke', 'Atom', 'Ase@posteo.de', '', '', '$2y$10$CJ5VbC9rkKWeI4QRIpuhpe/SNfQrvEpj4m1fNvUq4987MW9Bt.CGe', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(54, 2, 'abcd', 'abcd', 'abcd', 'abc@yahoo.com', '', '', '$2y$10$9aFFeuHvdyYd1FpqY.njh.oqCONXgBdiFpGiLT9PJ1OTYuiM3t9.2', '0000-00-00 00:00:00', 0, 1, 1, 0, 'b056eb1587586b71e2da9acfe4fbd19e', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(55, 2, 'qqq', 'qqq', 'qqq', 'excelxp@yahoo.com', '', '', '$2y$10$cFW1HXztFjB/kzvrvEIUTeZrwcsxV.AtjpdMacgRhO0rerj6jrPc.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(56, 2, 'tempuser', 'temp', 'temp', 'temp@email.com', '', '', '$2y$10$0hfMYXxRbZg3i4g3vjuO/.Bi60qB6l0H7d.Y.96A8aNnni7ybrqy6', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ebd9629fc3ae5e9f6611e2ee05a31cef', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(57, 2, 'faucetspro', 'faucetspro', 'temp', 'dhar.kg@gmail.com', '', '', '$2y$10$HDhf3UsC8fQMr4qhqnW4IOG9s3zSNzxYXwCz6c9kVl1qgllC2sy3O', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(58, 2, 'biswajitn198', 'Biswajit', 'Nayak', 'biswajitn198@gmail.com', '', '', '$2y$10$H238KhmgjtStlVszj9roGOVGZbEvi7u8wtkC15PpkuFHAqGKulR7O', '0000-00-00 00:00:00', 0, 1, 1, 0, '069059b7ef840f0c74a814ec9237b6ec', '6e8a1355fecf26e9af392e9fa9c5a164', '', '2019-06-20 00:00:00', '2019-06-20 00:00:00'),
(59, 2, 'Kele', 'kelechi', 'ojobor', 'okwisoftltd@gmail.com', '', '', '$2y$10$3dRr5JO1F2ao5nBJ8p53selea2NjAxtJ6W6nn46YzaRtTtyGfjE.K', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-20 00:00:00', '2019-06-20 00:00:00'),
(60, 2, 'the bro', 'kelechi', 'ojobs', 'beebixinc@gmail.com', '', '', '$2y$10$Zhv8Z4htxvc1I/GhfYnjUe5V6uaFBmbDPJF2xhbmAlH76GzhNdlWe', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-20 00:00:00', '2019-06-20 00:00:00'),
(61, 2, 'wijoAdvocate2', 'William', 'Joshua', 'williamjoshua9455@gmail.com', '', '', '$2y$10$qIuC78MzB2IkTfDAX51tH.GpDoQeaRABnxBhiN7kwfKC69XRjXAG6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-20 00:00:00', '2019-06-20 00:00:00'),
(62, 6, 'test12314', 'wer', 'qwer', 'hksdfilfasdocfasdfo@gmail.com', '12345678', '', '$2y$10$2soPvtko80EouxT2jqTeFue4oWUtz7SvsNoL0u0ZiRKECFdzNuNy6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-21 00:00:00', '2019-06-21 00:00:00'),
(63, 2, 'taifu', 'tai', 'fu', 'taifu95@hotmail.com', '', '', '$2y$10$FqpZiKiv1j1hnIZqbEL2IuvHJLGKUiS6WuHxhDFfOCZeo93/NO0y.', '0000-00-00 00:00:00', 0, 1, 1, 0, '6d0f846348a856321729a2f36734d1a7', '', '', '2019-06-21 00:00:00', '2019-06-21 00:00:00'),
(64, 2, 'abc', 'ABBB', 'CCCC', 'admin@simega.lk', '0710755262', '', '$2y$10$BkPk/wt7KiCHLDiGIOMAAOXA6M0ktibGEg5btKOq0VrqBcuCFrU7a', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-21 00:00:00', '2019-06-21 00:00:00'),
(65, 2, 'shweta', 's', 'v', 's@gmail.com', '', '', '$2y$10$mZW1DW6MfKC4xy25coFlUO2sy1MWStPcwohrp8EaQHwAk.NuI.tpy', '0000-00-00 00:00:00', 0, 1, 1, 0, 'dc6a70712a252123c40d2adba6a11d84', '', '', '2019-06-22 00:00:00', '2019-06-22 00:00:00'),
(66, 2, 'sh', 's', 'v', 'sweta@gmail.com', '', '', '$2y$10$8J4/68laenjNDlvCzdcOkO4k1q62RpcqzhPzWOaFJPRNqPXKbZ7yq', '0000-00-00 00:00:00', 0, 1, 1, 0, '53e3a7161e428b65688f14b84d61c610', '', '', '2019-06-22 00:00:00', '2019-06-22 00:00:00'),
(67, 2, 's_v', 'shweta', 'vachhani', 'shweta.kmphasis@gmail.com', '', '', '$2y$10$oBNdYVwm4JN.LOasQNaUPeAGb4mllnKTQVbeddV6KVYllKm.IBZlO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-22 00:00:00', '2019-06-22 00:00:00'),
(68, 2, 'brazil', 'Nome', 'Sobrenome', 'nome@sobrenome.com', '62989898585', '', '$2y$10$Umip/5ND6Po7wnslY0aBjeIVR5CE9cDqF/8VDC.ihw6iOKDiCZiMq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-22 00:00:00', '2019-06-22 00:00:00'),
(69, 2, 'mariomaya98', 'mario', 'maya', 'sodom1998@gmail.com', '', '', '$2y$10$kUPX2TpwIiw.crLEw9JR2.SQv1wzZxK71uwS1y/vCJKu8bdkfIBCu', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-22 00:00:00', '2019-06-22 00:00:00'),
(70, 2, 'tes1', 'teslo', 'ohyeah', 'tes@gmail.com', '', '', '$2y$10$OEpnlLjgE.CkxrSvZwhlOe6j4v1q1dz8wjjV79docrWJk7PpuN9zy', '0000-00-00 00:00:00', 0, 1, 1, 0, '55b37c5c270e5d84c793e486d798c01d', '', '', '2019-06-23 00:00:00', '2019-06-23 00:00:00'),
(71, 2, 'kb_zaman', 'Kawser', 'Zaman', 'kbzaman320@gmail.com', '', '', '$2y$10$BE0RP5GmeRetFJNIUSWpsOMv9iVUb61lsm1Z15Zp.JSSDF7sGBUtm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-23 00:00:00', '2019-06-23 00:00:00'),
(72, 2, 'Santhosh.velpoor', 'Santhu', 'Kumar', 'santhosh.velpoor@gmail.com', '', '', '$2y$10$H4K2y.zFPmPalpiAEqM.oevrqoYmliQAoYQcBUl08WNCFibtelAAG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(73, 2, 'sabirboh', 'sabir', 'bouhad', 'bouhad96sabir@gmail.com', '', '', '$2y$10$2o2NL/7rKFw.Tl0llWDb4eyWt7fNE7SmIJooxsYbtKJtXdD8RhAjq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(74, 2, 'test123', 'test', 'test', 'test@gmail.com', '', '', '$2y$10$/tlrWpkYXJcvOb5bLezb4.16oD/KRwn9Pcxc.ZKeItVvjUFGn7Kby', '0000-00-00 00:00:00', 0, 1, 1, 0, '069d3bb002acd8d7dd095917f9efe4cb', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(75, 2, 'ajit', 'Anurag', 'Sharma', 'sharma.shanu012@gmail.com', '', '', '$2y$10$7NwdtCz9Axoj1Zl96wv01ulGIBCtgV9AlcK6R72RDVnFsggTRMFNq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(76, 2, 'anurag', 'anurag', 'Sharma', 'a3visions.12@gmail.com', '', '', '$2y$10$/98gQlMAf8hn8X3EiYjsRO27RbW04ljOGg.71A/ehjknWfEfIZ4.m', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(77, 2, 'sharma12', 'Anurag', 'Sharma', 'amarkumar.raj16@gmail.com', '', '', '$2y$10$CK04mFuwV5hNJbvN2UKzb.f3LVWFEdmsGSnmrWWmRRtmgcKDbdt92', '0000-00-00 00:00:00', 0, 1, 1, 0, '2d6cc4b2d139a53512fb8cbb3086ae2e', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(78, 2, 'amilsin', 'md', 'iq', 'amilsin@gmail.com', '', '', '$2y$10$YyXu9NT2A013OYAWKlg5POAW/7wUcgli8XV9bu2uK8rSWyUrNgm7W', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-24 00:00:00', '2019-06-24 00:00:00'),
(79, 2, 'as', 'a', 's', 'asd@gmail.com', '', '', '$2y$10$2qXz0sk4YiSJsmRw/TjZyO/tdIfKxfVtZv/rGHnK6qvZ5csfQcq1q', '0000-00-00 00:00:00', 0, 1, 1, 0, '2b8a61594b1f4c4db0902a8a395ced93', '', '', '2019-06-25 00:00:00', '2019-06-25 00:00:00'),
(80, 12, 'Fred', 'Fred', 'Flintstone', 'd@d.com', '11111111', '', '$2y$10$jHdl2fPO.5kpnzEH/niUTO/wmh3VPyort3qUBZMOLiH.b6hBsA4Ja', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-25 00:00:00', '2019-06-25 00:00:00'),
(81, 2, 'b3rman', 'Berman', 'Lastopich', 'mecek@voemail.com', '', '', '$2y$10$8WsMvk9/5qeeHjCzHv8yUOrX2SYPjmYFhj9HmkdrkhikTaLgsDViW', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-26 00:00:00', '2019-06-26 00:00:00'),
(82, 2, 'yash86', 'yash', 'shah', 'admin@gmailfb.com', '', '', '$2y$10$SSUXfeCCoP30A92J2kaTkO3o4v.KYqiuc8ecAgorLr137Dp/6PkJW', '0000-00-00 00:00:00', 0, 1, 1, 0, '918317b57931b6b7a7d29490fe5ec9f9', '', '', '2019-06-26 00:00:00', '2019-06-26 00:00:00'),
(83, 2, 'adminss', 'i', 'i', 'q@ss.com', '', '', '$2y$10$ugLqNy6t9LM3ykS1t/DK4ugAD4iP4fd.x.5BgVDWj5WRFwn9ehRQq', '0000-00-00 00:00:00', 0, 1, 1, 0, '10a7cdd970fe135cf4f7bb55c0e3b59f', '', '', '2019-06-27 00:00:00', '2019-06-27 00:00:00'),
(84, 2, 'quamer', 'quamer', 'quamer', 'quamer@mailinator.com', '', '', '$2y$10$UpS74Cyt2zlmTdZNGlgI2uOdHqj0YGv90rqjmxfAc2pMKVjYIXFze', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-28 00:00:00', '2019-06-28 00:00:00'),
(85, 2, 'Noor khan', 'Noorullah', 'sanghar', 'noorkhansanghar@gmail.com', '', '', '$2y$10$61li8hx.uqO57fV0Wh3yz.TctN9cdaVksBXHOBDBCUHDGYXa0VJHy', '0000-00-00 00:00:00', 0, 1, 1, 0, '59b90e1005a220e2ebc542eb9d950b1e', '', '', '2019-06-28 00:00:00', '2019-06-28 00:00:00'),
(86, 2, 'kontoljembut', 'danu', 'praass', 'bangsat@gmail.com', '', '', '$2y$10$QECvMTyj0Shkaw49B4KZq..hfCwoR76gCnhKIsvx7UJZ91VK9UI26', '0000-00-00 00:00:00', 0, 1, 1, 0, '9232fe81225bcaef853ae32870a2b0fe', '', '', '2019-06-28 00:00:00', '2019-06-28 00:00:00'),
(87, 2, 'bishie_10', 'mic', 'asd', 'anao_michael@yahoo.com', '', '', '$2y$10$QllzfAH2QnOQ2FrDKSKvMutE1RSA8kdxGvdPSx.UTO1AT3CcX9Dgm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-06-29 00:00:00', '2019-06-29 00:00:00'),
(88, 2, 'pk995566@', 'pankaj', 'kumar', 'pk99@gmail.com', '', '', '$2y$10$xchUnT/SV3UUDzouS5Di.eDe0G0BppLNAGFJWmneOY5SY5i1CsIbS', '0000-00-00 00:00:00', 0, 1, 1, 0, '019d385eb67632a7e958e23f24bd07d7', '', '', '2019-07-01 00:00:00', '2019-07-01 00:00:00'),
(89, 2, 'Raheel Ahmed SIddiqui', 'Hussain', 'Ravjani', 'ceo@ransintl.com', '', '', '$2y$10$kYqxIi2bFATBPlYacuSEpOXjc2wJo2KrdR4rHNA3CCbb9RIqkyTPS', '0000-00-00 00:00:00', 0, 1, 1, 0, '58e4d44e550d0f7ee0a23d6b02d9b0db', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(90, 2, 'syed_ali', 'ali', 'rizvi', 'techisyed@gmail.com', '', '', '$2y$10$IotZYkeLMFXLe2721dljMujdUdy480ZSmLG3y/07ydmPvl5JZyn0m', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(91, 2, 'abhijith13', 'Abhijit', 'Howal', 'ajthecool.2812@gmail.com', '', '', '$2y$10$LNIvInP4944u8XMiNAbsruOIXq3chL00KkyoJTPD5LYdrEDSdj5G6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(92, 2, 'test1', 'Gary', 'Prince', 'garyprince66@hotmail.com', '', '', '$2y$10$rWSMIPgOUNPopuwcvp6wcupBBpSBbImmGfWzNDPVoOvy2OdZwqZm6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(93, 2, 'ali', 'ali', 'raza', 'alirazagcufit@gmail.com', '', '', '$2y$10$jxYHfVmMrxF1XGFZSzGkUuECSqm9c9KnPVxlqTwrs8VRMCKQbIx5.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(94, 2, 'HAHAHA', 'hahaha', 'hihihi', 'haha@gmail.com', '', '', '$2y$10$85IJ7Sk5eGnF9o5oIwALCO2z2FdIBo2ttxf20fcdC6wZ0CBpg3Twu', '0000-00-00 00:00:00', 0, 1, 1, 0, '2ab56412b1163ee131e1246da0955bd1', '4d051fd50a4a48731b96e6df73367ef3', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00'),
(95, 2, 'meet', 'meet', 'sachani', 'meet.sachani@dnkmail.in', '', '', '$2y$10$koIlsPiAMMRVJjNMfFe3Du8VYvWCYBFkRzIvW4EFhVe.RpPYpl8TW', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-03 00:00:00', '2019-07-03 00:00:00'),
(96, 2, 'uri', 'urias', 'valle', 'uriasvalleteyuco1a@gmail.com', '', '', '$2y$10$bghWTJypKGkwm4Ch5wIbgeI9qKSJ7jxWYNmWNVxUhlDiw89Oz1ObC', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-03 00:00:00', '2019-07-03 00:00:00'),
(97, 2, 'kokilagayathri16@gmail.com', 'dfg', 'ery', 'kokilagayathri16@gmail.com', '', '', '$2y$10$d0O8yXK3WzWMHF0MmFX5J.45p1wRbsUHDvTxQQzBOcH6Etywq6iLi', '0000-00-00 00:00:00', 0, 1, 1, 0, 'e995f98d56967d946471af29d7bf99f1', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00'),
(98, 2, 'loket', 'Bintang', 'Kevin', 'bintangkevin29@gmail.com', '', '', '$2y$10$dask9bO2ZmJeBbzpwx/ks.2nnG2WeKCJWoTWEAxtGyyofBh24k8nu', '0000-00-00 00:00:00', 0, 1, 1, 0, '9cc138f8dc04cbf16240daa92d8d50e2', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00'),
(99, 2, 'Rama', 'Rama', 'Ls', 'Rachmanals7@gmail.com', '', '', '$2y$10$gZAGIuMn.YQnd/3Cg75txu1mA8tTTO7Ufj4c7F1QUbYygl/JIfAca', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00'),
(100, 2, 'Keval', 'Keval', 'Tanna', 'K@gmail.com', '', '', '$2y$10$xAqR1..iONJXzIVVf6/KQ.lb23CdMDN3H.3jRFO5fM2./ZuZu2/Jy', '0000-00-00 00:00:00', 0, 1, 1, 0, '1f0e3dad99908345f7439f8ffabdffc4', '', '', '2019-07-06 00:00:00', '2019-07-06 00:00:00'),
(101, 2, 'RaMzEsS', 'Pavel', 'Tsarev', 'ramzess_1337@mail.ru', '', '', '$2y$10$8btBj6PUZlZfWWet.Jtn3uVDYuZ8GSjnBs4XOpQCVR/EaDVuf8kba', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-07 00:00:00', '2019-07-07 00:00:00'),
(102, 2, '2113', 'Logan', 'Ballls', 'Ballss@balls.com', '', '', '$2y$10$K9iWYqoD5kl.JIBYg5sYru4miiL7Z7ccDkUAEOroYK5QjAirMBD.m', '0000-00-00 00:00:00', 0, 1, 1, 0, 'eb160de1de89d9058fcb0b968dbbbd68', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(103, 2, 'Loganvasquez21', 'Logan', 'Basquez', 'loganvasquez21@gmail.com', '', '', '$2y$10$KCWorGlEOaqsavW76YOumekqZPwpUcP6Lm5L2PTMITuRGy7ljIGtS', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(104, 2, 'bhimt31', 'Bhim', 'Thakur', 'bhim@gmail.com', '', '', '$2y$10$cb13tjdDqnru4qp0CIsefu48wrQPJpZxuXvZNiLoy..N8Dn3oOgk2', '0000-00-00 00:00:00', 0, 1, 1, 0, '4c5bde74a8f110656874902f07378009', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(105, 2, 'Bhimt@123', 'Bhim', 'Thakur', 'bhim31@gmail.com', '', '', '$2y$10$5dY4KDQYJAnHohs./.hu0.Cy87w4uMDeBcVO4gtmBVGQHdYQW6x62', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ce78d1da254c0843eb23951ae077ff5f', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(106, 3, 'test', 'tester1', 'tee', 'stse@test.com', '012020210120', '', '$2y$10$K4MLScPI89KrejaLJ9/b/ObsLPRI3YegxXSTd5DHv/sohxFoHyoPy', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(107, 2, 'Hent', 'oa', 'za', 'he@gmail.com', '', '', '$2y$10$Qa.dZx.nnJyhfjOfI5/ncehXoECZ1rRWZmNhOydu9hWI/iDI/gYCK', '0000-00-00 00:00:00', 0, 1, 1, 0, '45fbc6d3e05ebd93369ce542e8f2322d', '', '', '2019-07-09 00:00:00', '2019-07-09 00:00:00'),
(108, 2, 'codeglamour', 'code', 'glamour', 'codeglamour1@gmail.com', '', '', '$2y$10$JmW6SneAho5c7hAHwnSewOa7ynC8KpFvN4wolyd/npPAnjfvTQTvO', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd554f7bb7be44a7267068a7df88ddd20', '', '', '2019-07-10 00:00:00', '2019-07-10 00:00:00'),
(109, 2, 'mylaundromate', 'name', 'last', 'chourasiyap223@gmail.com', '', '', '$2y$10$9ut5b1MaW0vy/6UgnHpLdedULHKkUlPwwFSFUGX7rAJDAHdHIZg6C', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-13 00:00:00', '2019-07-13 00:00:00'),
(110, 2, 'Leon S', 'Leon', 'Snajdr', 'leonsnajdr05mz@gmail.com', '', '', '$2y$10$k5dv3VNIUHofgmAkhRVpb.lruxWY.RHnTpWEpp3akUKZCf9gNg7bi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-13 00:00:00', '2019-07-13 00:00:00'),
(111, 2, 'asdf', 'asdf', 'asdf', 'asdf@asdf.se', '', '', '$2y$10$yGDQlspR4/KXt1SCXakjveJpTxL7VczVF.xG/Ey4XaJLI08ZjXQAm', '0000-00-00 00:00:00', 0, 1, 1, 0, '389bc7bb1e1c2a5e7e147703232a88f6', '', '', '2019-07-13 00:00:00', '2019-07-13 00:00:00'),
(112, 2, 'sonali', 'sona', 'rathore', 'sonali123@gmail.com', '', '', '$2y$10$VHWYhZTuMo8bVOPEqQElY.zZ36zNUXWbJXqgHmDslZnGFhnAGqhh2', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-15 00:00:00', '2019-07-15 00:00:00'),
(113, 2, 'mugenryuk', 'andre', 'andre', 'a@a.a', '', '', '$2y$10$ZH6tVt7GfB5dlhmrJ9F8IeJK67qOUyYBAhuzQDRAbXlO18wqlN1dW', '0000-00-00 00:00:00', 0, 1, 1, 0, '18d8042386b79e2c279fd162df0205c8', '', '', '2019-07-15 00:00:00', '2019-07-15 00:00:00'),
(114, 2, 'andres8810', 'andres', 'andres', 'andres8810@gmail.com', '', '', '$2y$10$kwBsn0XvwDtSvuUVUZt6a.QRx7PhViSSEDQ2YM08/Qg9cXCtP1MpG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-15 00:00:00', '2019-07-15 00:00:00'),
(115, 2, 'jaya', 'jaya', 'jaya', 'jaya@yahoo.com', '123123', '', '$2y$10$7I9E/TNSzeT3KwW7Q64vouS32JRc6wW9QxPl8GVLmdkCZykYfhZQi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-15 00:00:00', '2019-07-15 00:00:00'),
(116, 2, 'Kannan', 'Kannan', 'Kannan', 'ktk49.malar@gmail.com', '', '', '$2y$10$JNFV64INeZy3giBUp.fxxeaJMsOBgkeBYn4FzEs9DjGVa22dmIS4K', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-16 00:00:00', '2019-07-16 00:00:00'),
(117, 2, 'User', 'asd', 'dsa', 'sdsa@as.com', '989', '', '$2y$10$euchzwhovYVSNluklmb3je4ydK07NRQGYtyeL8eihbRo6Df93m9He', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-16 00:00:00', '2019-07-16 00:00:00'),
(118, 2, 'EDGAR_ANGEL', 'EDGAR', 'ANGEL', 'edgar.angelm@misena.edu.co', '', '', '$2y$10$mV0h85F191ja0.0UQ/w58OQPCypZ0rBC4VC2BT5qdwWK8dJngENEa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-16 00:00:00', '2019-07-16 00:00:00'),
(119, 2, 'paragon94', 'krzysztof', 'todle', 'qrisss04@gmail.com', '', '', '$2y$10$PY.ELSNJMwtgak9rSj92Yu7Iegu/bjjn5Wkedk3xBXP7JZbCwLyjW', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-17 00:00:00', '2019-07-17 00:00:00'),
(120, 2, 'burak', 'test', 'test', 'info@creativesolve.pl', '', '', '$2y$10$WUOYEwKXMauwMDG9MdN9JeTLE4RHlLdOsVHKMH.u7GJWxzZK8N27u', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-17 00:00:00', '2019-07-17 00:00:00'),
(121, 2, 'testas', 'Jonas', 'Santana', 'magodns7@gmail.com', '', '', '$2y$10$p1r7D3Gw5GFFUnRDhLUBleqRE80pFg28H6qlSDzYbAmxG7fADhkjG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-17 00:00:00', '2019-07-17 00:00:00'),
(122, 2, 'projectadmin', 'vivekobroy', 'trump', 'vivek@gmail.com', '', '', '$2y$10$YU0qdFzVjhMxDrv4.lzjo.2EljhNETjE5vBOUQWdnZ5ee6JETcYvW', '0000-00-00 00:00:00', 0, 1, 1, 0, 'e836d813fd184325132fca8edcdfb40e', '7891b7ef37d4bffee5cb10cb5bee4cb7', '', '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(123, 2, 'pri', 'vivekobroy', 'Davolio', 'vivek09@gmail.com', '', '', '$2y$10$/v.hxDPswt8mRTxhJ0B35edaQwxMC/4wrOX0usCcZzvMdUE9kDvqa', '0000-00-00 00:00:00', 0, 1, 1, 0, 'a516a87cfcaef229b342c437fe2b95f7', '', '', '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(124, 2, 'chinna', 'chinna', 'chinna', 'chinna09@gmail.com', '', '', '$2y$10$twm23.jHGqPbGUzemeJzX.cD1nQzSxDjOgYLeMMRpJz.Rghf85lXK', '0000-00-00 00:00:00', 0, 1, 1, 0, '7634ea65a4e6d9041cfd3f7de18e334a', '', '', '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(125, 2, 'ram', 'janu', 'kumar', 'ramkumar@gmail.com', '', '', '$2y$10$5McuADS3Ww7/5QcfRqeucekwvgQAF90F2xjvnWKWc9DUGVQGPWrgm', '0000-00-00 00:00:00', 0, 1, 1, 0, '5fd0b37cd7dbbb00f97ba6ce92bf5add', '', '', '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(126, 2, 'jai', 'sri', 'ram', 'jaisriram123@gmail.com', '', '', '$2y$10$nIgqYwpg6e.uOdw64ot7WelXF64lGNGJjPYQNynMmJ4SmoQ7.tqL.', '0000-00-00 00:00:00', 0, 1, 1, 0, '912d2b1c7b2826caf99687388d2e8f7c', '', '', '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(127, 2, 'ynandan55@gmail.com', 'Ram', 'Sham', 'davinderminhas@gmail.com', '', '', '$2y$10$tnC75ZQsDUfGPdLrTTU8q.o7mY6T826JBOLadMNTN0AEKeKIgr5TC', '0000-00-00 00:00:00', 0, 1, 1, 0, '4fac9ba115140ac4f1c22da82aa0bc7f', '', '', '2019-07-20 00:00:00', '2019-07-20 00:00:00'),
(128, 2, 'jggrsdf', 'erwrwerwer', 'jrtrttrrrww', 'mailprotect5-test@yahoo.de', '', '', '$2y$10$AFWFKLCQFddQGGeFvT6uduoLGEwaQQ2lHb9ORs/YsJJNOnXL32UWW', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-20 00:00:00', '2019-07-20 00:00:00'),
(129, 2, 'belle', 'dadada', 'dadada', 'nolievippaa@gmail.com', '', '', '$2y$10$e73WbTr5uC8AvUGISM3meOhSqnnfo9wVDbYkcLpsyABX5fbO/NoRm', '0000-00-00 00:00:00', 0, 1, 1, 0, '8d5e957f297893487bd98fa830fa6413', '', '', '2019-07-21 00:00:00', '2019-07-21 00:00:00'),
(130, 2, 'belle2', 'dadada', 'dadada', 'nolievip2@gmail.com', '', '', '$2y$10$yHtW0LMaIubW90.FJ5/iRuVYaPTwwoWY5MQl1YHvQdu2ohGKIuBbK', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-21 00:00:00', '2019-07-21 00:00:00'),
(131, 2, 'sanjay', 'sanjay', 'sanjaay', 'webdeveloper.digikart@gmail.com', '', '', '$2y$10$l3p8q3xoVfCuVT3CnzXUPu3Z9sGI12Y7UeyFe0kRQhDuCcJObhMFq', '0000-00-00 00:00:00', 0, 1, 1, 0, '0e65972dce68dad4d52d063967f0a705', '', '', '2019-07-22 00:00:00', '2019-07-22 00:00:00'),
(132, 2, 'csehelal', 'Helal', 'Uddin', 'test@bst.com', '', '', '$2y$10$IJI.xJJPWxWiQkTFGLYw6.Hsh1ydwcaf3zD6cEBq9T20DdhJaKfIa', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd7a728a67d909e714c0774e22cb806f2', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(133, 2, 'csehelal19', 'Hela', 'Uddin', 'enghelaluddin@gmail.com', '', '', '$2y$10$hMWBYnJzPdZAxcuKMpO8wOwF/J2zspPZjyKEsqBHMko329Uep0I/O', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(134, 2, 'safdad', 'asdf', 'asdf', 'asdf@gmail.com', '', '', '$2y$10$5.w.W5x.Ngdb.hH5EJkmoOD4n2PP6GecmTUQMx3Jbl5W8hNCifnJW', '0000-00-00 00:00:00', 0, 1, 1, 0, '13f3cf8c531952d72e5847c4183e6910', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(135, 2, 'asdfa', 'dfa', 'adsf', 'asdfasd@gmail.com', '', '', '$2y$10$0X5x.wdetUIuBQ/58j1gc.xSfgyD3asyynixmxKEBvTfoFU9cR0JO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(136, 2, 'Ray', 'Raya', 'Lea', 'essaykor@gmail.com', '', '', '$2y$10$fedeHdYLMmMOOyLdGM8eY.FCzbukV5OKbUw9pPPlCRg1rn6p0/kSm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(137, 2, 'bbjones', 'Bobby', 'jones', 'bb@sample.com', '', '', '$2y$10$OIK9nVUjLB5Pgdhv09J9Y.2OxCERU9I5YUOsxDQv84lZXXA3WZQrm', '0000-00-00 00:00:00', 0, 1, 1, 0, '42e7aaa88b48137a16a1acd04ed91125', '', '', '2019-07-23 00:00:00', '2019-07-23 00:00:00'),
(138, 2, 'pinki', 'pinki', 'thakur', 'pinkithakur04@gmail.com', '', '', '$2y$10$YZwctxnsDGPKxbk.24eL8uQpSPXPuU8Y.ks33OQqyyi8dA1yHhlvm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-25 00:00:00', '2019-07-25 00:00:00'),
(139, 2, 'nimbleesolutions123@gmail.com', 'test', 'Nimble', 'nimbleesolutions123@gmail.com', '', '', '$2y$10$M15y4P.s8GgWjVJAGEJmiucBPZRm3gFtupokvr4117yb68B65FTmm', '0000-00-00 00:00:00', 0, 1, 1, 0, 'cfcd208495d565ef66e7dff9f98764da', '', '', '2019-07-26 00:00:00', '2019-07-26 00:00:00'),
(140, 4, 'thales_xav', 'Thales', 'Xavier', 'xavier.thales@gmail.com', '9999999999', '', '$2y$10$mQprY5k2ysNP14g6YDBHR.1Yfe4T9BrrRXest4XsfhM6RF0KkZmSG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-26 00:00:00', '2019-07-26 00:00:00'),
(141, 1, '123teste1', 'qs', '2s', 'admin@teste.com', '9241241241', '', '$2y$10$6e17qLyodFe35PgMRh7N3.29ow6PS..K7RKM9Y3QsG8wpw019rW3q', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-28 00:00:00', '2019-07-28 00:00:00'),
(142, 2, 'xyz', 'Brajmohan', 'xyz', 'raj.yourwellwisher@gmail.com', '', '', '$2y$10$ZEXfn5/5sM0fPE00fan.HOHSKUSVWrfAqhQ2NCMh2IX0N3YrJlIym', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-29 00:00:00', '2019-07-29 00:00:00'),
(143, 2, 'Gostomysl', 'Vydyuk', 'And', 'hostik2025@gmail.com', '', '', '$2y$10$dg66pg8sPcDVicGgIYSVq.I90W3XU9yd0n0AXTtNsmbA0xkJizXvi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-29 00:00:00', '2019-07-29 00:00:00'),
(144, 2, 'LaurentV', 'laurent', 'ddd', 'dvdtenret@free.fr', '', '', '$2y$10$Y217l6CZZulutMn9MF2oMOMZJwyJHHA6BcIE7YCoH6Dow4UUT2FSu', '0000-00-00 00:00:00', 0, 1, 1, 0, '9dcb88e0137649590b755372b040afad', '', '', '2019-07-30 00:00:00', '2019-07-30 00:00:00'),
(145, 6, 'aaaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aaaaaaaaaaa@aaaaaaaaaaaa.aa', '11111111111111111111111', '', '$2y$10$xPv7qYeofyOyYL6stloOy.yKtUGQqXGunQjI68AEwNjjD3oku4XR.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-30 00:00:00', '2019-07-30 00:00:00'),
(146, 18, 'dfbeaw', 'ghearg', 'erhgr', 'ygergwer@dfger.yi', '1423245346', '', '$2y$10$SeI2nAhhrKnhKuCcc/3GaOTy5zPgwgij1j3vBSe/qmFQ3uxZPGioi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-30 00:00:00', '2019-07-30 00:00:00'),
(147, 2, 'testuser123', 'testuser123', 'testuser123', 'testuser123@yopmail.com', '', '', '$2y$10$SZNNxrWrNTK3luClJtg9m.0HYQmW5AeMDJ1z0X98w3E1zEwiklk6a', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-30 00:00:00', '2019-07-30 00:00:00'),
(148, 2, 'shazmina', 'shaz', 'mina', 'shazminabutt@gmail.com', '', '', '$2y$10$ZLzR21Mez9bc/WHbMYhQm.xZCslAPuJXuwhPwkpevr.r7MwjLCuSO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-31 00:00:00', '2019-07-31 00:00:00'),
(149, 1, 'superadminfsf', 'fsfsf', 'sfsf', 'sfsfsfsf@gmail.com', '353535353535', '', '$2y$10$sJ6zyPJ9P4nvX.fC1kPYS.iFMhOuzG2JIaofk6DPJ54hW0XJeV/aa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-07-31 00:00:00', '2019-07-31 00:00:00'),
(150, 2, 'Test12345', 'Test', 'Tête de', 'Admin@test.com', '', '', '$2y$10$Zk49572e1s2jc8mjSFr7pOe84CrnrryWJFfNQJAYu9HUzC9.UExsG', '0000-00-00 00:00:00', 0, 1, 1, 0, 'f5deaeeae1538fb6c45901d524ee2f98', '', '', '2019-07-31 00:00:00', '2019-07-31 00:00:00'),
(151, 2, 'amisha', 'amisha', 'jain', 'amisha@gmail.com', '', '', '$2y$10$BoX.C4pCsJXalT2CZobrOud/rNwjl7Xrnwxq1KqEb4rQrEw1IKLaS', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-01 00:00:00', '2019-08-01 00:00:00'),
(152, 2, 'Ddd', 'Dff', 'Ggh', 'Ddd@abv.bg', '', '', '$2y$10$/p1Krwgi4umN9jAiYGRH/.O7oy8.SAvOOMCRvS9VMDrkQK6P.Aw5S', '0000-00-00 00:00:00', 0, 1, 1, 0, 'b1a59b315fc9a3002ce38bbe070ec3f5', '', '', '2019-08-02 00:00:00', '2019-08-02 00:00:00'),
(153, 2, 'schooladmin', 'school', 'admin', 'subhasmita@cybrain.co.in', '', '', '$2y$10$jx1mIoU19PVBpxPVT.Maj.DMq4F8ckQ5n/28o1NjOyi0XixMqf0v.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-03 00:00:00', '2019-08-03 00:00:00'),
(154, 6, 'superadminx', 'muhammad', 'ilham', 'adaillank@gmail.com', '8117222108', '', '$2y$10$1cbo9L46eLrQlSAaVWm06ObWSuHW.UlRCjoq38.blwaoN1hVbQX6S', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-04 00:00:00', '2019-08-04 00:00:00'),
(155, 6, 'superadminx', 'muhammad', 'ilham', 'adaillank@gmail.com', '8117222108', '', '$2y$10$Iv7bGMhvWWGmtax2mzx0.up.c2fUzg.bWKgdmq.U0KekanuCEBJDu', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-04 00:00:00', '2019-08-04 00:00:00'),
(156, 5, 'superadminx', 'muhammad', 'ilham', 'adaillank@gmail.com', '8117222108', '', '$2y$10$KVN2VJ8ldPFD.a1kWDd4j.dHwi0gBakSO7VNoVBajjfUr8hDBJ3m.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-04 00:00:00', '2019-08-04 00:00:00'),
(157, 2, 'mohdtalhafarooq', 'muhammad', 'talha', 'mohdtalhafarooq@gmail.com', '', '', '$2y$10$BmmO867yQASeefJa9fSDLelB5sDhmLU/8EW/o68kP443qIc2ghRFS', '0000-00-00 00:00:00', 0, 1, 1, 0, '3cf166c6b73f030b4f67eeaeba301103', '', '', '2019-08-05 00:00:00', '2019-08-05 00:00:00'),
(158, 2, 'Yunus', 'Yunus', 'Kamal', 'yunuskm4@gmail.com', '', '', '$2y$10$.62FCABkpWq1yd8iLA5Tye4k4csfTcEtx7imU7ZsnRgyBBBwTZQT6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-05 00:00:00', '2019-08-05 00:00:00'),
(159, 2, 'testuser', 'Test', 'User', 'sivavaidya@yahoo.com', '', '', '$2y$10$AFM.ONVtNZxh.21HiUfH6eonThAMuTp4idrh9NgllM/CkrswO2866', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-08 00:00:00', '2019-08-08 00:00:00'),
(160, 2, 'frefre', 'ferfreff', 'erferf', 'newpapercommunity@gmail.com', '', '', '$2y$10$0EumNyW5C69Jbh61g6xEHObLWfB9VWbE5DfHuor7h.2kDjkcFzvd6', '0000-00-00 00:00:00', 0, 1, 1, 0, 'b6a1085a27ab7bff7550f8a3bd017df8', '', '', '2019-08-09 00:00:00', '2019-08-09 00:00:00'),
(161, 2, 'matlas', 'mat', 'las', 'truc@truccccc.fr', '', '', '$2y$10$e.ANGVQ4oQD2522rbfSw9OLchJ7i4J9M1kukErTPZLFaeu7tF7cSS', '0000-00-00 00:00:00', 0, 1, 1, 0, '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '', '', '2019-08-09 00:00:00', '2019-08-09 00:00:00'),
(162, 29, 'admin', 'Sanjay', 'Kushwaha', 'sanjaykush83@gmail.com', '9651869162', '', '$2y$10$Q1jAUfA/ky3YH4tuAs3Vi..N2Lw/VpJcKZ15nZyhbvPkWlrzE9.qa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-11 00:00:00', '2019-08-11 00:00:00'),
(163, 2, 'psjallah', 'paa', 'ss', 'psjallah1@gmail.com', '', '', '$2y$10$GYZ/Q7W9PwoLAhL7Rw/3Su3soZuzqJXOGcklHy8.9OXohvx/3WRFS', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-11 00:00:00', '2019-08-11 00:00:00'),
(164, 2, 'sid', 'sid', 'sid', 'sadafawan909@gmail.com', '', '', '$2y$10$fm.0lQFUrdIPxWG/cZihxuvarF/EwPWTvIfz5Fp5FGfrgm97KZOLi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-12 00:00:00', '2019-08-12 00:00:00'),
(165, 2, 'BLUMAX', 'ARATI', 'PRAJAPATI', 'arati.mca2812@gmail.com', '', '', '$2y$10$8.xoayFI/eXaeexgVEDPNOIk8wJycFcERLdV3Q6qxq.92BVNatge6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-12 00:00:00', '2019-08-12 00:00:00'),
(166, 2, 'PRAKASH', 'PAKA', 'DANTANI', 'admin123@gmail.com', '', '', '$2y$10$.EhsnRiOiAhXTqVGrfvygOD1I.LtN6498Xrvs42FvK2KW5GbMV2ZC', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ccb1d45fb76f7c5a0bf619f979c6cf36', '', '', '2019-08-12 00:00:00', '2019-08-12 00:00:00'),
(167, 2, 'bart', 'bart', 'test', 'bartvandeleur@hotmail.com', '', '', '$2y$10$/HysEBTPqTOxuFcRGuGQPOweXlXci/sX0jPb5co5JHfUp7EwQKb6m', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-12 00:00:00', '2019-08-12 00:00:00'),
(168, 2, 'btttno1', 'btttno1', 'btttno1', 'btttno1@mx2shop.com', '', '', '$2y$10$uni3B2zTdjDMcJ6aPVHcXuIkq7j.BKpHhutCaZZPEdF/vu..PtRb6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-13 00:00:00', '2019-08-13 00:00:00'),
(169, 2, 'manuel@summitdigital.com.mx', 'Manuel Gerardo', 'Schega', 'manuel@summitdigital.com.mx', '', '', '$2y$10$BQGbmEDtsb6t3K9i7LCPPu6U05efgwwmunXLIjRbFAQALnXuy09Zi', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-13 00:00:00', '2019-08-13 00:00:00'),
(170, 2, 'yujejifi', 'yujejifi', 'vmail', 'yujejifi@vmailpro.net', '', '', '$2y$10$0lSsPfqsSwqFosLZEs2vo.ROVr/9nW3uWjhoz5QWl542Yrz3A7Nbq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-15 00:00:00', '2019-08-15 00:00:00'),
(171, 2, 'bappa.extra', 'bappa', 'mahata', 'bappa.extra@gmail.com', '', '', '$2y$10$u2pNPtoOeeO6vpk2e6W3aOiPSclyd5nnskPp/85I1AE8lzuJpc9xS', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-15 00:00:00', '2019-08-15 00:00:00'),
(172, 2, 'sadfsadf', 'asdfasdfas', 'dfasdfas', '123admin@gmail.com', '', '', '$2y$10$HQT/rzpjz3XHZYGcdywIweI2G7blsXV171pJfwwqDfwIXWg3mNzRO', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd96409bf894217686ba124d7356686c9', '', '', '2019-08-16 00:00:00', '2019-08-16 00:00:00'),
(173, 2, 'raaa', 'adsa', 'asdfasds', 'admin786@gmail.com', '', '', '$2y$10$CZzcLBXgPadahaGALm3i1.RSZB4.AAjMLEDorOpVHwJ7xb9wrxeQC', '0000-00-00 00:00:00', 0, 1, 1, 0, '99c5e07b4d5de9d18c350cdf64c5aa3d', '', '', '2019-08-16 00:00:00', '2019-08-16 00:00:00'),
(174, 2, 'n', 'z', 'f', 'nourasayedlotas@gmail.com', '', '', '$2y$10$ybX7SU9vQnbcY/5DGYq3dOkIAKwYEtLixzg6nJIIwiLkkRDUBF9Ku', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-16 00:00:00', '2019-08-16 00:00:00'),
(175, 2, 'qwerty@qwerty.com', 'qwerty@qwerty.com', 'qwerty@qwerty.com', 'qwerty@qwerty.com', '', '', '$2y$10$F.WSvshrq5/4iZ.IKtGhtueY62KpL5mrkqZzwr2qMKPvx7P9i88XS', '0000-00-00 00:00:00', 0, 1, 1, 0, '5ea1649a31336092c05438df996a3e59', '', '', '2019-08-16 00:00:00', '2019-08-16 00:00:00'),
(176, 2, 'nitin24', 'nitin', 'monga', 'nitinmonga14@gmail.com', '', '', '$2y$10$Tu/1vxdPJFNqWi3oGaCdHeZfxZipT7x.IkVkdL2UeTqo7sXHSjXSG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(177, 2, 'renzhaxor', 'Renz', 'Haxor', 'renz.haxor@gmail.com', '', '', '$2y$10$KBY9P3J5WiTnW1dKeoIYWO7SbmOMnLJSj0Je3x/0IMKst9vxxf/ES', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(178, 2, 'amgo', 'amgo', 'gos', 'amgo@gmail.com', '', '', '$2y$10$GGhaJWFLti59Ns8q5Zt3M.r3IxxAj4vXg3lzQTOjdVKOOu7PiIUxe', '0000-00-00 00:00:00', 0, 1, 1, 0, 'da0d1111d2dc5d489242e60ebcbaf988', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(179, 2, 'amgggg', 'ammmm', 'aaskldfa', 'ewalls.cloud@gmail.com', '', '', '$2y$10$UYTr20erva.vHorxt1vhjOmY.VUoyd/0SMrrv7jMXUy1ALG7wH8Zm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(180, 2, 'singh', 'singh', 'raaz', 'raaz@gmail.com', '', '', '$2y$10$ztbHE55nDJUWbtfQrmcezu1zB5y8et6sjdDMiS.vG8XLkDsw.bvHW', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ab817c9349cf9c4f6877e1894a1faa00', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(181, 2, 'admin12', 'test', 'ci', 'test@ci.com', '', '', '$2y$10$/odeDQeeQP60adNbZPmj0OyKPM69I4OBOChmXmsMujuv.lLO.HVUS', '0000-00-00 00:00:00', 0, 1, 1, 0, '67e103b0761e60683e83c559be18d40c', '', '', '2019-08-17 00:00:00', '2019-08-17 00:00:00'),
(182, 2, 'no', 'no', 'no', 'noura@justmentionit.com', '', '', '$2y$10$TDdl73DmcKI8JVhtXTy0BuSktRiv0fqTgPw3ODVS2rfdlhszLIEcq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-18 00:00:00', '2019-08-18 00:00:00'),
(183, 2, 'test2222', 'tetts', 'test', 'test@test.com', '4535454353453', '', '$2y$10$BZmLmVuWE9ujE3yPoprhR.t03YC2ot8vtollzxHto0NGa7V46EEcO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-18 00:00:00', '2019-08-18 00:00:00'),
(184, 2, 'rahulsaini', 'Rahul', 'Saini', 'sainirahul77@gmail.com', '', '', '$2y$10$Oz5E/F8hNv6igUn0RMU0ae9yjybwcRLGTf2GU3UPQViHUz0K8D/LK', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-19 00:00:00', '2019-08-19 00:00:00'),
(185, 2, 'maman', 'momon', 'memen', 'maman@maman.com', '', '', '$2y$10$rcRjr/vS9Km8Wc4VAtUD2.hThTgbXzrynvf0sXX9rx5B6s3fw3GSC', '0000-00-00 00:00:00', 0, 1, 1, 0, '67f7fb873eaf29526a11a9b7ac33bfac', '', '', '2019-08-19 00:00:00', '2019-08-19 00:00:00'),
(186, 2, 'qodar', 'q', 'd', 'qodar@gmail.com', '', '', '$2y$10$V/3WV9Ov0jNof8BW19LqfehIogNndqkM3SDOPrrh6ws1hMOtQh4ma', '0000-00-00 00:00:00', 0, 1, 1, 0, 'b2f627fff19fda463cb386442eac2b3d', '', '', '2019-08-19 00:00:00', '2019-08-19 00:00:00'),
(187, 2, '7vadmin', 'Bhagwat', 'Singh', 'info@codeglamour.com', '09602277726', '', '$2y$10$2kVez01Quslgh/IGV95Z6eckyRYZ8Q02nxvm0T8nYMG/Y3ZfzAxM.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-19 00:00:00', '2019-08-19 00:00:00'),
(188, 2, 'a', 'a', 'a', 'a@g.com', '123456789', '', '$2y$10$P8Mkk0N27ibce6RdKf4f1u0Z36wxqKDL5OYBgifF2JLApHvXxvP2e', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-21 00:00:00', '2019-08-21 00:00:00'),
(189, 2, 'Essaadani', 'Mohamed', 'Essaadani', 'essaadani80@gmail.com', '', '', '$2y$10$0P7xrrlvri7pIFLvodL69.5zBlLVDWQUTqthM7sJyLTMFamgLNW2K', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-21 00:00:00', '2019-08-21 00:00:00'),
(190, 2, 'sunil001212', 'sunil', 'patil', 'chinnuks2504@gmail.com', '', '', '$2y$10$pD9dOTYrvghEMMpNhTmmYulRyKuriFb3SUUrby8FfyY3DoLhuUVpe', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-22 00:00:00', '2019-08-22 00:00:00'),
(191, 2, 'rajaram', 'raja', 'ram', 'rajaram@gmail.com', '', '', '$2y$10$B4d3U6G8.CpAmpffYVDTg.6SKA0QSmw2iViLGUcMAu6wXk53GRTui', '0000-00-00 00:00:00', 0, 1, 1, 0, 'ff4d5fbbafdf976cfdc032e3bde78de5', '5ece2b626d67a0b95fb0d1c4cb9516a8', '', '2019-08-22 00:00:00', '2019-08-22 00:00:00'),
(192, 2, 'alejandro1494', 'Alejandro', 'Camba', 'alejandrocamb@hotmail.com', '', '', '$2y$10$gx.vy9uje225Wmlv30M29.LWWjR8vgk7XcpBNobemOjymW2uBsYuC', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd645920e395fedad7bbbed0eca3fe2e0', '', '', '2019-08-22 00:00:00', '2019-08-22 00:00:00'),
(193, 2, 'Rikie', 'Kays', 'kaliyati', 'reggieanesukaliyati@gmail.com', '', '', '$2y$10$6jWKS9wRaK0bVWvppRmRMOwKwpONTUAuMNFWxIsZwVQo.VbrNJwRy', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-23 00:00:00', '2019-08-23 00:00:00'),
(194, 5, 'irfan', 'irfan', 'khan', 'demo19611@gmail.com', '09958210815', '', '$2y$10$FMtwyFt7NrsOhB8nvCnwiuakTsb1N15Mj8.j8YW0NEwzveOBmyVCG', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-24 00:00:00', '2019-08-24 00:00:00'),
(195, 2, 'manish_tt', 'Nitesh', 'Patidar', 'virendra@gmail.com', '', '', '$2y$10$7q/7pbKCFKKGwPS4ehcgpOp0yfXq3BRKPeGCtOOu7T94vFHPwdlwu', '0000-00-00 00:00:00', 0, 1, 1, 0, '7f1de29e6da19d22b51c68001e7e0e54', '', '', '2019-08-24 00:00:00', '2019-08-24 00:00:00'),
(196, 2, 'ebietsy', 'Ebiet', 'Sy', 'ebiet17si@mahasiswa.pcr.ac.id', '', '', '$2y$10$MWq42FOQe2AzTq/Qe.43j./jrexZusQCruKBAaNYkplh.A8/OFKr6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-24 00:00:00', '2019-08-24 00:00:00'),
(197, 2, 'SnillocTV', 'Jack', 'Collins', 'gamer2505@gmx.de', '', '', '$2y$10$yNzzJ4LpM.xzdynQxohdoenf.6Z98XMZHDtg0Jj5oiJCSZ.ZNWtR6', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-24 00:00:00', '2019-08-24 00:00:00'),
(198, 2, 'uniqueadmin12', 'admin', 'lte', 'admin@admin.com', '', '', '$2y$10$uG7g.E/HhOzL50N5b8MMS.TUs2ELg/mliAv0F6mXetIaosi5TgIGi', '0000-00-00 00:00:00', 0, 1, 1, 0, '89f0fd5c927d466d6ec9a21b9ac34ffa', '', '', '2019-08-25 00:00:00', '2019-08-25 00:00:00'),
(199, 2, 'AlemdeBeykoz', 'Yusuf', 'Demirk?ran', 'j3eykoz@gmail.com', '', '', '$2y$10$YCa/66bCn0PZRDwlJYe.kuphvdgb1mEHyN4hxnbPlRtUjyeLS3Ugm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-25 00:00:00', '2019-08-25 00:00:00'),
(200, 2, 'hisham', 'hisham', 'hisham', 'samira.yaqoub@gmail.com', '', '', '$2y$10$Cq6WqHiteGZymdjH/RxZZeAr25K766f6U9RzTB6XVPs0aBnxEEwz.', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-26 00:00:00', '2019-08-26 00:00:00'),
(201, 2, 'priti', 'Anuradha', 'Goswami', '123456@gmail.com', '', '', '$2y$10$kZ0KL4ZLzOvl7xF3mMSJxeJY9ZR.4TVoKnpCOrFRY222lBbmehA62', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd1c38a09acc34845c6be3a127a5aacaf', '', '', '2019-08-26 00:00:00', '2019-08-26 00:00:00'),
(202, 2, 'Rohit', 'rohit', 'verma', 'rohit@gmail.com', '', '', '$2y$10$IHW8.Tl91avMdV4yR8RFD.YicZb5iP40Kcep.qsFkaVbwKPGnMps.', '0000-00-00 00:00:00', 0, 1, 1, 0, '8c6744c9d42ec2cb9e8885b54ff744d0', '', '', '2019-08-27 00:00:00', '2019-08-27 00:00:00'),
(203, 2, 'rohit17219', 'rohit', 'verma', 'rohit123@gmail.com', '', '', '$2y$10$qlJdAjLIr7TnP6c6vmokF.0aCQq6MPsRLZ4fMmyqhPmJGExVaCQKm', '0000-00-00 00:00:00', 0, 1, 1, 0, 'd840cc5d906c3e9c84374c8919d2074e', '', '', '2019-08-27 00:00:00', '2019-08-27 00:00:00'),
(204, 2, 'roanz', 'Waqas', 'Rana', 'roanz.com@gmail.com', '03007866771', '', '$2y$10$Vrn0xGM7B4i7FD99EoqefOnBMdCSWv6pzR/wSzJkRdeaSfekSdQ8G', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-27 00:00:00', '2019-08-27 00:00:00'),
(205, 2, 'icodz', 'laklara', 'fsd', 'icodz2@protonmail.com', '', '', '$2y$10$crK8STnZfSnXmFHQ7LDpG.SINZ4etzE5ntrt2EeD/yrk2FdtwH0du', '0000-00-00 00:00:00', 0, 1, 1, 0, '18d8042386b79e2c279fd162df0205c8', '', '', '2019-08-27 00:00:00', '2019-08-27 00:00:00'),
(206, 2, 'vignesh', 'vignesh', 'vicky', 'vigneshdm1993@gmail.com', '', '', '$2y$10$9gFicEYkpW8/Sr5WJn17ieikTT35x44o1vjBGzaEyM/y7MgKGF0wq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-28 00:00:00', '2019-08-28 00:00:00'),
(207, 2, 'gurukruparaut5@gmail.com', 'NAMDEV', 'RAUT', 'gurukruparaut5@gmail.com', '', '', '$2y$10$ZrhxuFKO/x7gKnM9Jb7slurZ0jlJ8PHtflyGfkOPwGHzAL9rLqJ2i', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-29 00:00:00', '2019-08-29 00:00:00'),
(208, 5, 'school', 'S', 'L', 'admin@rpixy.com', '5445263', '', '$2y$10$ZRkUVEBfZ3kNu1YO8yPFD.dKVBtpKl8dFaAKy6bbFjhcq8nOlAQjm', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-08-31 00:00:00', '2019-08-31 00:00:00'),
(209, 2, 'Raaj', 'Raaj', 'Gulati', 'ideashub.india@gmail.com', '', '', '$2y$10$XlqEfU85lrThBKSVE5s5iuA41FFPAoQ2Ah.lGu78h4ZvuYLSZehsi', '0000-00-00 00:00:00', 0, 1, 1, 0, '7f24d240521d99071c93af3917215ef7', '', '', '2019-09-02 00:00:00', '2019-09-02 00:00:00'),
(210, 2, 'elope', 'Ed', 'Lo', 'lope.edmund@gmail.com', '', '', '$2y$10$3A7mMT6pXzMjSAGFNPpSv.PEKYTqmrTIn21J6K4xdysINLTGbg8Bu', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-05 00:00:00', '2019-09-05 00:00:00'),
(211, 2, 'fauzanabdullah123', 'Fauzan', 'Abdullah', 'uzhantheforev@gmail.com', '', '', '$2y$10$d2TCK6hXaj6I/yPBsOBpuemo7d288WkT2E6TGOJ2YI6l8/wluYuQa', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-05 00:00:00', '2019-09-05 00:00:00'),
(212, 2, 'junaidashiq123', 'junaid', 'ashiq', 'junaidashiq001@gmail.com', '', '', '$2y$10$QePxVk3Z12Fayda3TLx5AuXDBWwWuNRe/sdPh5XdBRI/Mm2kCGaFi', '0000-00-00 00:00:00', 0, 1, 1, 0, '2ba596643cbbbc20318224181fa46b28', '', '', '2019-09-06 00:00:00', '2019-09-06 00:00:00'),
(213, 2, 'junaidashiq677', 'junaid', 'ashiq', 'junaidashiq677@gmail.com', '', '', '$2y$10$oNIaXIpAnxnhvC0LRX8yNubMV8np2W2tinNXCaznrVDyOqOZRodoW', '0000-00-00 00:00:00', 0, 1, 1, 0, '301ad0e3bd5cb1627a2044908a42fdc2', '', '', '2019-09-06 00:00:00', '2019-09-06 00:00:00'),
(214, 2, 'Beto', 'Beto', 'Beto', 'portalbr@gmail.com', '', '', '$2y$10$Fg6iSwloH6htyQPTu0MnjetxG4cw1kd/aSsvnL4RaHlZBzc5N3ZtO', '0000-00-00 00:00:00', 0, 1, 1, 0, '19b650660b253761af189682e03501dd', '', '', '2019-09-06 00:00:00', '2019-09-06 00:00:00'),
(215, 2, 'StarkJarvis', 'Alex', 'Vishwa', 'lxvishwakarma@gmail.com', '', '', '$2y$10$sTsmqYfelEpg26vxgAMp7.g7KzofwYRqNKrcnBCGAt2SWE6tn9w0m', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-07 00:00:00', '2019-09-07 00:00:00'),
(216, 2, 'steep', 'Ste', 'Te', 'stephanie.ragsdale.2013@gmail.com', '', '', '$2y$10$HdOeAYqRRV28/bEbcs9p5OOC65QilmCvNBSg.EYBBGJdJGe55yWTO', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-07 00:00:00', '2019-09-07 00:00:00'),
(217, 2, 'BackTrack', 'Andiol', 'Cekini', 'cekiniandi2041989@hotmail.com', '', '', '$2y$10$eX1M7TqRpSYNAeX3nT6YSeTzK/nrdB7OZU/mOSoAQatDaB.ZhmvUq', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-07 00:00:00', '2019-09-07 00:00:00'),
(218, 2, 'aj', 'alex', 'jones', 'aj@mailinator.com', '', '', '$2y$10$WuboO0.uMJdxCzC32/FvkOXIHqBxqJ50IFSpjBFhL2MvF7fzgz6Ca', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-08 00:00:00', '2019-09-08 00:00:00'),
(219, 2, 'alakhpreet', 'alakhpreet', 'singh', 'alakhpreet@gmail.com', '', '', '$2y$10$Uckz.LAMDCMojA6t7NaOJO2Fgmn5wE4oTKDR/N10LdWo4FppKhPMe', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-08 00:00:00', '2019-09-08 00:00:00'),
(220, 2, 'sarwar', 'sarwar', 'alam', 'sarwaralamdarji@gmail.com', '', '', '$2y$10$cLADAPywiYj3EcmATVH60O20uNXUZBa22S7tfWDViyCtOBzKUSC62', '0000-00-00 00:00:00', 1, 1, 1, 0, '', '', '', '2019-09-08 00:00:00', '2019-09-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin_roles`
--

CREATE TABLE `ci_admin_roles` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_title` varchar(30) CHARACTER SET utf8 NOT NULL,
  `admin_role_status` int(11) NOT NULL,
  `admin_role_created_by` int(1) NOT NULL,
  `admin_role_created_on` datetime NOT NULL,
  `admin_role_modified_by` int(11) NOT NULL,
  `admin_role_modified_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_admin_roles`
--

INSERT INTO `ci_admin_roles` (`admin_role_id`, `admin_role_title`, `admin_role_status`, `admin_role_created_by`, `admin_role_created_on`, `admin_role_modified_by`, `admin_role_modified_on`) VALUES
(1, 'Super Admin', 1, 0, '2018-03-15 12:48:04', 0, '2018-03-17 12:53:16'),
(2, 'Admin', 1, 0, '2018-03-15 12:53:19', 0, '2019-01-26 08:27:34'),
(3, 'Accountant', 1, 0, '2018-03-15 01:46:54', 0, '2019-01-26 02:17:38'),
(4, 'Operator', 1, 0, '2018-03-16 05:52:45', 0, '2019-01-26 02:17:52'),
(5, 'customer', 1, 0, '2019-06-12 01:34:39', 0, '0000-00-00 00:00:00'),
(6, 'test', 1, 0, '2019-06-15 03:47:34', 0, '0000-00-00 00:00:00'),
(7, 'teste', 1, 0, '2019-06-17 09:43:02', 0, '0000-00-00 00:00:00'),
(8, 'azul', 1, 0, '2019-06-19 03:48:22', 0, '0000-00-00 00:00:00'),
(9, 'Tes', 1, 0, '2019-06-20 03:50:12', 0, '0000-00-00 00:00:00'),
(10, 'XXXXXXXXX', 0, 0, '2019-06-22 09:12:01', 0, '0000-00-00 00:00:00'),
(11, 'admin', 1, 0, '2019-06-23 08:00:38', 0, '0000-00-00 00:00:00'),
(12, 'ytyt', 0, 0, '2019-06-25 03:30:48', 0, '0000-00-00 00:00:00'),
(13, 'test1111', 0, 0, '2019-06-29 10:09:26', 0, '0000-00-00 00:00:00'),
(14, 'test123', 0, 0, '2019-06-30 05:22:24', 0, '0000-00-00 00:00:00'),
(15, '1234', 0, 0, '2019-07-07 05:39:11', 0, '0000-00-00 00:00:00'),
(16, 'mestre', 0, 0, '2019-07-12 03:24:29', 0, '0000-00-00 00:00:00'),
(17, 'dthtrfgv', 0, 0, '2019-07-13 02:22:16', 0, '0000-00-00 00:00:00'),
(18, 'aaaa', 0, 0, '2019-07-18 04:59:51', 0, '0000-00-00 00:00:00'),
(19, '44', 0, 0, '2019-07-18 04:12:25', 0, '0000-00-00 00:00:00'),
(20, 'jkj', 1, 0, '2019-07-19 08:11:45', 0, '0000-00-00 00:00:00'),
(21, 'asdasd', 0, 0, '2019-07-22 05:18:03', 0, '0000-00-00 00:00:00'),
(22, 'sasassa', 0, 0, '2019-07-22 02:37:25', 0, '0000-00-00 00:00:00'),
(23, 'DRIVER', 0, 0, '2019-07-27 01:36:33', 0, '0000-00-00 00:00:00'),
(24, 'accuntwnt', 0, 0, '2019-07-31 11:37:41', 0, '0000-00-00 00:00:00'),
(25, 'khrisna', 0, 0, '2019-08-01 02:02:57', 0, '0000-00-00 00:00:00'),
(26, 'vxcvxc', 1, 0, '2019-08-02 02:39:52', 0, '0000-00-00 00:00:00'),
(27, 'Supporter', 1, 0, '2019-08-03 11:56:40', 0, '0000-00-00 00:00:00'),
(28, 'eee', 1, 0, '2019-08-06 08:22:02', 0, '0000-00-00 00:00:00'),
(29, 'jj', 1, 0, '2019-08-07 08:46:58', 0, '0000-00-00 00:00:00'),
(30, 'vbvcbvcbvcb', 1, 0, '2019-08-08 01:48:36', 0, '0000-00-00 00:00:00'),
(31, 'test', 1, 0, '2019-08-14 04:08:16', 0, '0000-00-00 00:00:00'),
(32, 'hvssms', 1, 0, '2019-08-14 02:28:14', 0, '0000-00-00 00:00:00'),
(33, 'aa', 1, 0, '2019-08-17 10:56:44', 0, '0000-00-00 00:00:00'),
(34, 'megri', 1, 0, '2019-08-18 02:16:40', 0, '0000-00-00 00:00:00'),
(35, 'aaa', 1, 0, '2019-08-23 01:35:27', 0, '0000-00-00 00:00:00'),
(36, 'Br', 1, 0, '2019-08-23 02:48:27', 0, '0000-00-00 00:00:00'),
(37, 'Test', 1, 0, '2019-08-24 04:46:44', 0, '0000-00-00 00:00:00'),
(38, 'Spieler', 1, 0, '2019-08-24 10:31:30', 0, '0000-00-00 00:00:00'),
(39, 'fffgthgf', 1, 0, '2019-08-25 03:58:26', 0, '0000-00-00 00:00:00'),
(40, 'Reklam', 1, 0, '2019-08-25 08:07:23', 0, '0000-00-00 00:00:00'),
(41, 'shelf stacker', 1, 0, '2019-08-27 12:14:26', 0, '0000-00-00 00:00:00'),
(42, 'Test', 1, 0, '2019-08-30 03:18:33', 0, '0000-00-00 00:00:00'),
(43, 'abujanda', 1, 0, '2019-09-03 10:22:40', 0, '0000-00-00 00:00:00'),
(44, 'Ttfdtft', 1, 0, '2019-09-04 07:58:16', 0, '0000-00-00 00:00:00'),
(45, 'cutomer', 1, 0, '2019-09-06 12:49:48', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_companies`
--

CREATE TABLE `ci_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_companies`
--

INSERT INTO `ci_companies` (`id`, `name`, `email`, `mobile_no`, `address1`, `address2`, `created_date`) VALUES
(9, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2018-04-26 09:04:18'),
(8, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2018-04-26 09:04:30'),
(7, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-06-11 01:06:17'),
(6, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444  United State LLC', '', '2017-12-11 08:12:15'),
(10, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-01-27 10:01:18'),
(11, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-06-12 01:06:44'),
(12, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-06-15 06:06:14'),
(13, 'Danny Bromley', 'codeglamour1@gmail.com', '44785566952', '102 Goldview Drive', '', '2019-08-28 07:08:37'),
(14, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-07-05 12:07:52'),
(15, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-07-09 11:07:59'),
(16, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-07-27 09:07:03'),
(17, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-07-14 12:07:55'),
(18, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', 'engineering hostel no 2', '2019-07-16 06:07:19'),
(19, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-31 12:08:17'),
(20, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-09 09:08:08'),
(21, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-15 11:08:52'),
(22, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-17 07:08:25'),
(23, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-19 08:08:36'),
(24, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-25 02:08:18'),
(25, 'samira', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-08-26 02:08:18'),
(26, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-09-01 06:09:58'),
(27, 'Codeglamour', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State ', '', '2019-09-06 12:09:46'),
(28, 'Codeglamourzxc', 'codeglamour1@gmail.com', '44785566952', '27 new jersey - Level 58 - CA 444 United State zczcx', '', '2019-09-07 02:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_payments`
--

CREATE TABLE `ci_payments` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `items_detail` longtext NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `total_tax` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `client_note` longtext NOT NULL,
  `termsncondition` longtext NOT NULL,
  `due_date` date NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_payments`
--

INSERT INTO `ci_payments` (`id`, `admin_id`, `user_id`, `company_id`, `invoice_no`, `txn_id`, `items_detail`, `sub_total`, `total_tax`, `discount`, `grand_total`, `currency`, `payment_method`, `payment_status`, `client_note`, `termsncondition`, `due_date`, `created_date`, `updated_date`) VALUES
(4, 3, 34, 9, 'INV-2001', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:17:\"Samsung Galaxy S3\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:4:\"1000\";}s:3:\"tax\";a:1:{i:0;s:1:\"2\";}s:5:\"total\";a:1:{i:0;s:7:\"1000.00\";}}', '1000.00', '20.00', '5.00', '1015.00', 'USD', '', 'Paid', 'Will be delivered within next 24 hours', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-11-29', '2017-12-06', '2018-04-26'),
(2, 24, 32, 7, 'INV-1001', '', 'a:5:{s:19:\"product_description\";a:6:{i:0;s:9:\"Galaxy S6\";i:1;s:9:\"Galaxy S5\";i:2;s:3:\"234\";i:3;s:3:\"234\";i:4;s:3:\"234\";i:5;s:3:\"234\";}s:8:\"quantity\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";}s:5:\"price\";a:6:{i:0;s:4:\"1000\";i:1;s:3:\"800\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}s:3:\"tax\";a:6:{i:0;s:1:\"5\";i:1;s:1:\"5\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}s:5:\"total\";a:6:{i:0;s:7:\"1000.00\";i:1;s:6:\"800.00\";i:2;s:4:\"0.00\";i:3;s:4:\"0.00\";i:4;s:4:\"0.00\";i:5;s:4:\"0.00\";}}', '1800.00', '90.00', '2.00', '1888.00', 'USD', '', 'Paid', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-12-20', '2017-12-12', '2019-06-11'),
(3, 3, 33, 8, 'INV-2002', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:17:\"Samsung Galaxy S3\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:2:\"10\";}s:3:\"tax\";a:1:{i:0;s:1:\"2\";}s:5:\"total\";a:1:{i:0;s:5:\"10.00\";}}', '10.00', '0.20', '1.00', '9.20', 'USD', '', 'Paid', 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-12-06', '2017-12-06', '2018-04-26'),
(5, 24, 3, 10, '10021', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:9:\"Galaxy S7\";i:1;s:9:\"Galaxy S8\";}s:8:\"quantity\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}s:5:\"price\";a:2:{i:0;s:3:\"300\";i:1;s:3:\"700\";}s:3:\"tax\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"2\";}s:5:\"total\";a:2:{i:0;s:6:\"300.00\";i:1;s:7:\"2100.00\";}}', '2400.00', '42.00', '1.00', '2441.00', 'USD', '', 'Paid', 'Will be delivered on next Friday', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-04-20', '2018-04-11', '2019-01-27'),
(6, 24, 39, 11, 'fdfd', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:5:\"dsffs\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:4:\"1212\";}s:3:\"tax\";a:1:{i:0;s:1:\"0\";}s:5:\"total\";a:1:{i:0;s:7:\"1212.00\";}}', '1212.00', '0.00', '0.00', '1212.00', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-14', '2019-06-06', NULL),
(7, 24, 33, 12, '10000', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:4:\"Demo\";i:1;s:1:\"a\";}s:8:\"quantity\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}s:5:\"price\";a:2:{i:0;s:3:\"100\";i:1;s:0:\"\";}s:3:\"tax\";a:2:{i:0;s:2:\"18\";i:1;s:0:\"\";}s:5:\"total\";a:2:{i:0;s:6:\"200.00\";i:1;s:4:\"0.00\";}}', '200.00', '36.00', '10.00', '226.00', 'USD', '', 'Paid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-25', '2019-06-25', '2019-06-15'),
(8, 24, 47, 13, '002', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:2:\"df\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:3:\"100\";}s:3:\"tax\";a:1:{i:0;s:2:\"18\";}s:5:\"total\";a:1:{i:0;s:6:\"100.00\";}}', '100.00', '18.00', '0.00', '118.00', 'USD', '', 'Paid', 'lميبنتسمنبتمينستبمسينتبمسيتمبيس', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-05-28', '2019-05-28', '2019-08-28'),
(9, 24, 3, 14, ' ds', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:5:\"gngfn\";i:1;s:4:\"tdhy\";}s:8:\"quantity\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:5:\"price\";a:2:{i:0;s:2:\"22\";i:1;s:4:\"5868\";}s:3:\"tax\";a:2:{i:0;s:3:\"252\";i:1;s:2:\"52\";}s:5:\"total\";a:2:{i:0;s:5:\"22.00\";i:1;s:7:\"5868.00\";}}', '5890.00', '3106.80', '50.00', '8946.80', 'USD', '', 'Unpaid', 'sfbgnh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-18', '2019-07-10', NULL),
(10, 24, 33, 15, '3344fgg', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:5:\"dsdfs\";i:1;s:6:\"fdgdfg\";}s:8:\"quantity\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:5:\"price\";a:2:{i:0;s:3:\"500\";i:1;s:3:\"150\";}s:3:\"tax\";a:2:{i:0;s:2:\"19\";i:1;s:2:\"19\";}s:5:\"total\";a:2:{i:0;s:6:\"500.00\";i:1;s:6:\"300.00\";}}', '800.00', '152.00', '0.00', '952.00', 'USD', '', 'Paid', 'dsfsfd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-10', '2019-07-10', NULL),
(11, 24, 45, 16, 'DFD', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:2:\"df\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:1:\"5\";}s:3:\"tax\";a:1:{i:0;s:1:\"5\";}s:5:\"total\";a:1:{i:0;s:4:\"5.00\";}}', '5.00', '0.25', '0.00', '5.25', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-30', '2019-07-19', '2019-07-27'),
(12, 25, 34, 17, '54543', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:8:\"retetret\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:4:\"5345\";}s:3:\"tax\";a:1:{i:0;s:6:\"534543\";}s:5:\"total\";a:1:{i:0;s:7:\"5345.00\";}}', '5345.00', '28571323.35', '6546.00', '28570122.35', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-12', '2019-07-24', NULL),
(13, 24, 3, 18, 'inv 004', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:6:\"chawal\";i:1;s:3:\"dal\";}s:8:\"quantity\";a:2:{i:0;s:1:\"3\";i:1;s:1:\"1\";}s:5:\"price\";a:2:{i:0;s:3:\"200\";i:1;s:2:\"50\";}s:3:\"tax\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:5:\"total\";a:2:{i:0;s:6:\"600.00\";i:1;s:5:\"50.00\";}}', '650.00', '13.50', '4.00', '659.50', 'USD', '', 'Unpaid', 'sf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-23', '2019-07-18', NULL),
(14, 24, 3, 19, '11212', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:3:\"ert\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:7:\"1233121\";}s:3:\"tax\";a:1:{i:0;s:1:\"0\";}s:5:\"total\";a:1:{i:0;s:10:\"1233121.00\";}}', '1233121.00', '0.00', '0.00', '1233121.00', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-07-10', '2019-07-02', '2019-08-31'),
(15, 24, 33, 20, 'wwede', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:7:\"ededewd\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:2:\"23\";}s:3:\"tax\";a:1:{i:0;s:2:\"21\";}s:5:\"total\";a:1:{i:0;s:5:\"23.00\";}}', '23.00', '4.83', '213.00', '-185.17', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullaeemco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-14', '2019-08-09', NULL),
(16, 24, 38, 21, '56', '', 'a:5:{s:19:\"product_description\";a:2:{i:0;s:6:\"asdsad\";i:1;s:5:\"sadas\";}s:8:\"quantity\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:5:\"price\";a:2:{i:0;s:2:\"13\";i:1;s:2:\"44\";}s:3:\"tax\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:5:\"total\";a:2:{i:0;s:5:\"26.00\";i:1;s:6:\"132.00\";}}', '158.00', '0.00', '10.00', '148.00', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-09-05', '2019-08-28', '2019-08-15'),
(17, 24, 35, 22, 'dsfsf', '', 'a:5:{s:19:\"product_description\";a:5:{i:0;s:5:\"dfdsf\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";}s:8:\"quantity\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:2:\"60\";i:4;s:1:\"1\";}s:5:\"price\";a:5:{i:0;s:2:\"50\";i:1;s:4:\"6950\";i:2;s:4:\"3200\";i:3;s:3:\"650\";i:4;s:3:\"100\";}s:3:\"tax\";a:5:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:2:\"30\";i:4;s:2:\"60\";}s:5:\"total\";a:5:{i:0;s:5:\"50.00\";i:1;s:7:\"6950.00\";i:2;s:7:\"3200.00\";i:3;s:8:\"39000.00\";i:4;s:6:\"100.00\";}}', '49300.00', '11760.00', '600.00', '60460.00', 'USD', '', 'Paid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-22', '2019-08-15', NULL),
(18, 24, 3, 23, '85258', '', 'a:5:{s:19:\"product_description\";a:10:{i:0;s:7:\"safagsg\";i:1;s:9:\"asggaasdg\";i:2;s:9:\"asdgsadhh\";i:3;s:9:\"ahhashsah\";i:4;s:7:\"ahsdhsh\";i:5;s:10:\"sdahsdhsdh\";i:6;s:8:\"sahsadhs\";i:7;s:7:\"hashsdh\";i:8;s:6:\"hsdsdh\";i:9;s:18:\"asdsdhashddhsahsad\";}s:8:\"quantity\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:5:\"price\";a:10:{i:0;s:4:\"1000\";i:1;s:4:\"1000\";i:2;s:2:\"14\";i:3;s:5:\"12515\";i:4;s:6:\"125125\";i:5;s:4:\"1515\";i:6;s:4:\"1512\";i:7;s:4:\"1252\";i:8;s:5:\"12512\";i:9;s:4:\"1525\";}s:3:\"tax\";a:10:{i:0;s:2:\"10\";i:1;s:2:\"10\";i:2;s:1:\"5\";i:3;s:1:\"5\";i:4;s:1:\"5\";i:5;s:1:\"5\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";}s:5:\"total\";a:10:{i:0;s:7:\"1000.00\";i:1;s:7:\"1000.00\";i:2;s:5:\"14.00\";i:3;s:8:\"12515.00\";i:4;s:9:\"125125.00\";i:5;s:7:\"1515.00\";i:6;s:7:\"1512.00\";i:7;s:7:\"1252.00\";i:8;s:8:\"12512.00\";i:9;s:7:\"1525.00\";}}', '157970.00', '7998.50', '4.00', '165964.50', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-31', '2019-08-06', NULL),
(19, 24, 40, 24, '12333', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:3:\"Yeo\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:5:\"20000\";}s:3:\"tax\";a:1:{i:0;s:1:\"0\";}s:5:\"total\";a:1:{i:0;s:8:\"20000.00\";}}', '20000.00', '0.00', '0.00', '20000.00', 'USD', '', 'Paid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-26', '2019-08-20', NULL),
(20, 200, 33, 25, 'inv-002', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:6:\"samira\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:4:\"1000\";}s:3:\"tax\";a:1:{i:0;s:2:\"50\";}s:5:\"total\";a:1:{i:0;s:7:\"1000.00\";}}', '1000.00', '500.00', '100.00', '1400.00', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-08', '2019-07-30', NULL),
(21, 24, 95, 26, 'Inv-001', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:14:\"Conference Fee\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:3:\"500\";}s:3:\"tax\";a:1:{i:0;s:2:\"10\";}s:5:\"total\";a:1:{i:0;s:6:\"500.00\";}}', '500.00', '50.00', '0.00', '550.00', 'USD', '', 'Unpaid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-09-10', '2019-09-10', NULL),
(22, 24, 97, 27, 'INV-1002', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:4:\"test\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:3:\"100\";}s:3:\"tax\";a:1:{i:0;s:2:\"12\";}s:5:\"total\";a:1:{i:0;s:6:\"100.00\";}}', '100.00', '12.00', '0.00', '112.00', 'USD', '', 'Paid', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-09-04', '2019-09-04', NULL),
(23, 24, 44, 28, 'zxczxc32', '', 'a:5:{s:19:\"product_description\";a:1:{i:0;s:5:\"saasd\";}s:8:\"quantity\";a:1:{i:0;s:1:\"1\";}s:5:\"price\";a:1:{i:0;s:5:\"32414\";}s:3:\"tax\";a:1:{i:0;s:3:\"132\";}s:5:\"total\";a:1:{i:0;s:8:\"32414.00\";}}', '32414.00', '42786.48', '12.00', '75188.48', 'USD', '', 'Paid', 'zxczxczxczxc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-09-25', '2019-09-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_users`
--

CREATE TABLE `ci_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_users`
--

INSERT INTO `ci_users` (`id`, `username`, `firstname`, `lastname`, `email`, `mobile_no`, `password`, `address`, `role`, `is_active`, `is_verify`, `is_admin`, `token`, `password_reset_code`, `last_ip`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin', 'admin', 'admin@admin.com', '12345', '$2y$10$qlAzDhBEqkKwP3OykqA7N.ZQk6T67fxD9RHfdv3zToxa9Mtwu9C/e', '27 new jersey - Level 58 - CA 444 \r\nUnited State ', 1, 1, 1, 1, '', '', '', '2017-09-29 10:09:44', '2017-12-14 10:12:41'),
(32, 'user', 'user', 'user', 'user@user.com', '44897866462', '$2y$10$sU5msVdifYie7cZbCEnyku6hLH8Sef0VCHqO9UIOg6rsBsDtsLcyS', '', 1, 1, 1, 0, '352fe25daf686bdb4edca223c921acea', '', '', '2018-04-24 07:04:07', '2019-01-26 03:01:30'),
(33, 'john123', 'john', 'smith', 'johnsmith@gmail.com', '445889654656', '$2y$10$CcBiQrcW597s5muOP2blhOev48gzBv2VvAVp83NsXbLo7cZM7tjGm', 'USA', 7, 1, 0, 0, '', '', '', '2018-04-25 06:04:25', '2019-01-24 04:01:33'),
(34, 'naumancs', 'nauman', 'ahmed', 'nacreativeprogrammer@gmail.com', '4456545632215', '$2y$10$Mo6FHIusHr9oDWZxJPaTC.DWZBRom7SfEryk66BbXs25OLYsmKkrK', '', 1, 1, 1, 0, '', '', '', '2018-04-25 07:04:12', '2018-04-25 07:04:28'),
(35, 'alire', 'ali', 'raza', 'ali@gmail.com', '12345', '$2y$10$SlQ89Aezoh1k1.vLCBFiE.0XAL/.nJhojPFnolMCMayi.caAkppXW', 'wwe', 1, 1, 0, 0, '', '', '', '2019-01-24 05:01:14', '2019-06-11 00:00:00'),
(36, 'zohaib', 'zohaib', 'rana', 'zohaibrana@gmail.com', '12345988444', '$2y$10$UGpdlIob/e1gBsE2yQ/OEeqKwGGymuYFlhHogw19/SgQYRo2OqA/S', 'wwe', 1, 1, 0, 0, '', '', '', '2019-01-24 05:01:01', '2019-01-24 05:01:01'),
(37, 'd', 's', 's', 's2333@gmail.com', '9999993344', '$2y$10$3UUFDhknEIIbtY6bRfd/DORe0XTcC/xTlasNZtZfoZBz2JeUOyc2a', 'sdfadsfasd', 1, 1, 0, 0, '', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(38, 'gia', 'gia', 'gia', 'gia@email.com', '768769809809', '$2y$10$WkYB9vXJR4sc86l6pFcifejYbIQpMNaIaS5pjzERYI.djsWqCDbB6', 'alsdka', 1, 1, 0, 0, '', '', '', '2019-06-11 00:00:00', '2019-06-11 00:00:00'),
(39, 'test', 'test', 'test', 'test@gmail.com', '9879089080', '$2y$10$7xcsuPBLHv9BjKLOfDJfJ.nflJNVRCAJw4mfOWe/VJ9kct5u0EPya', 'gjjkjkl', 1, 1, 0, 0, '', '', '', '2019-06-12 00:00:00', '2019-06-12 00:00:00'),
(40, 'BlackHats', 'Annoymous', '23', 'github23@gmail.com', '9116587985687', '$2y$10$Kaqj.MWr7ErDw79yc2/6eug5zSYYaDVbz1IMxfUQ2IfmeSl5cc2Ta', '', 1, 0, 0, 0, '', '', '', '2019-06-12 00:00:00', '2019-06-12 00:00:00'),
(41, 'vignesh288', 'Vignesh', 'Raghavan', 'vickyraghav794@gmail.com', '8667200540', '$2y$10$ZM9kKHcXCbdYjtc2v0RscOK3BCeFaYs95u8831qD8olcFCnmI8yo6', 'd/288, 7th cross, dheeran nagar, trichy-9.', 1, 1, 0, 0, '', '', '', '2019-06-12 00:00:00', '2019-06-12 00:00:00'),
(42, 'aa', 'aa', 'aa', 'aa@aa.com', '11112', '$2y$10$12YTfm0trDnc7gbzQ92.IuO/EgTkP5kljLDX4iYHpKuBLSX4AQaEK', '', 1, 1, 0, 0, '', '', '', '2019-06-12 00:00:00', '2019-08-24 00:00:00'),
(43, 'kaviksr', 'kava krishna', 'rao', 'hydkolla@gmail.com', '9573846326', '$2y$10$kt2rVbJKpVcKtde/So1lu.H3GfIYJ0Qb4C8tN8E3g90uVQb0mwkpi', 'miyapur, hyderabad', 1, 1, 0, 0, '', '', '', '2019-06-13 00:00:00', '2019-06-15 00:00:00'),
(44, 'drew', 'drew', 'johnson', 'drewjobasdf@asdf.com', '9999999999999', '$2y$10$nTg1D.8wwb98PqK7xjb.T.oTJYUk/r.4ZWn/BgJ7T9tgetRmN/3Qi', '111111', 1, 1, 0, 0, '', '', '', '2019-06-15 00:00:00', '2019-06-15 00:00:00'),
(45, '_BuTowka_', 'Alexey', 'Medvedev', 'butowkayt@gmail.com', '8', '$2y$10$yODZpktaXwxRcGWZDsRabOkL3/7UiKnyUCfJaKPHa3jvGWNH1vq6K', '1', 1, 1, 0, 0, '', '', '', '2019-06-16 00:00:00', '2019-06-16 00:00:00'),
(46, 'sujaymondal9@gmail.com', 'Sujay', 'Mondal', 'sujaymondal9@gmail.com', '990349510', '$2y$10$pzMxNEBwetYvMzDHBKGyyeFm.yivpyVdQjhPQfXBtR26gKgZLK8Ne', 'Narendrapur', 1, 0, 0, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(47, 'AAAA', 'AAAA', 'BBBB', 'aaa@yahoo.com', '123456789', '$2y$10$rBWX70pEGujElAIQoOzCYeKNo1YGdEUn/UtXx9yPv1hrTJsbDi7r6', 'abc', 1, 0, 0, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(48, 'abc', 'abc', 'abc', 'xyz@yahoo.com', '123456789', '$2y$10$iL9yhqcaGAVVwzPKzIRfTuiVu0msUX4yyebMJJmQcq8vCXRmqxQ6.', 'abc', 1, 1, 0, 0, '', '', '', '2019-06-17 00:00:00', '2019-07-31 00:00:00'),
(49, 'teste', 'teste', 'teste', 'teste@teste.com', '12321312', '$2y$10$K0sjiisfe5o14H5sK/iPtuZRg6yn9.t3nSeiOhxsM29MpXNhoIaPa', '', 1, 1, 0, 0, '', '', '', '2019-06-17 00:00:00', '2019-06-17 00:00:00'),
(50, 'icelandic', 'icelandic', 'icelandic', 'icelandic@icelandic.com', '6513213564', '$2y$10$y42qm1IgDwJ1YH/RdTnN4ekupririOvh3txFLMI8FjW4aRuoJnQHi', 'asdasd', 1, 0, 0, 0, '', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(51, 'pisipc', 'pisipc', 'pisipc', 'pisipc@pisipc.com', '902154678541', '$2y$10$aYMiWGZ0zZh1UvyN.KVQguZBZQsEDF5jFlpibTQjzj2xhlVNsXt6.', 'sajkadhklsjdh', 1, 0, 0, 0, '', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(52, 'majid', 'msad', 'asdasmd', 'asdasd@asad.ri', '516189451', '$2y$10$u1InTQvM9z39LF1u1T.kh.ql8hqDewTguXNyfVgUpIRkW2Va0TzX6', 'asdasd', 1, 0, 0, 0, '', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(53, 'raj', 'bab', 'babba', 'gg@gmail.com', '87878787878799', '$2y$10$rbwVAMoIiZXGI8hsR6QQS.3h3KK2B0yaRu3h8zyKcPnO4aM4Fyqqe', 'india', 1, 0, 0, 0, '', '', '', '2019-06-19 00:00:00', '2019-06-19 00:00:00'),
(54, 'U001', 'U001', 'U', 'USER1@ADMIN.COM', '875237334', '$2y$10$mc.9XLtblMIXsHGlAluiEuC1FA7KewblZfoRXKrr3EinEaRuL6yJy', 'INDIA', 1, 1, 0, 0, '', '', '', '2019-06-20 00:00:00', '2019-06-21 00:00:00'),
(55, 'User', 'Ua', 'Za', 'uaza@admin.com', '82466458214', '$2y$10$LIN5I/KTkSDc0GiKFRyITOOEK0tisMaBGlg8krno4NooM/Xx5Siba', '', 1, 1, 0, 0, '', '', '', '2019-06-21 00:00:00', '2019-08-30 00:00:00'),
(56, 'shabaka', 'shabaka', 'shabaka', 'asikakomfort@gmail.com', '8929696633', '$2y$10$zkTPiy4pj0PwFhrYJgR2Ou78fan4TrzZNJhuKavL5sd7n9KxWdmyW', 'Ул.Строителей 2', 1, 1, 0, 0, '', '', '', '2019-06-23 00:00:00', '2019-06-26 00:00:00'),
(57, 'Yuri2', 'Yuri', '12', 'xinerds10@hotmail.com', '12', '$2y$10$Krk.28wME/1x9r15C.E/Bev.n.gudbZzOG6qq3CJXjKJWx45pR8X6', '12', 1, 1, 0, 0, '', '', '', '2019-06-27 00:00:00', '2019-07-02 00:00:00'),
(58, 'unos', 'dos', 'tres', 'aaa@yahoo.com', '33444444', '$2y$10$5EUyRzwIwGmXj1LO5tjyAOSUcQfog1OLeAvXrSmWvgR/y3OpmVrIK', 'dadadad', 1, 1, 0, 0, '', '', '', '2019-07-03 00:00:00', '2019-07-05 00:00:00'),
(59, 'pappu', 'pappu', 'panwala', 'dipal1000@yahoo.com', '12345780', '$2y$10$czGS2Yq4x0jAw1WZZ0JYMetveRwuRe.3VmRGu2SqolBj6PaKrwqbi', 'abcd1234', 1, 1, 0, 0, '', '', '', '2019-07-03 00:00:00', '2019-07-03 00:00:00'),
(60, 'husnu', 'husnu', 'gaddar', 'husnu@gaddar.com', '9676', '$2y$10$Misc/mUPxh440omsNuzEg.sJKuQIeDPbooyYq7dPQU/rq8Ksdh7ra', 'jklhkjh', 1, 1, 0, 0, '', '', '', '2019-07-08 00:00:00', '2019-07-08 00:00:00'),
(61, 'tester', 'test', 'test', 'test@test.com', '123456', '$2y$10$jWvxdNLrqQ6MPvUMpAOY/uyL.kYH6HTQlHq9nwlfg5JIJXCqKvJrW', '123', 1, 0, 0, 0, '', '', '', '2019-07-09 00:00:00', '2019-07-12 00:00:00'),
(62, 'jokowi', '1', '2', 'jokowi@gmail.com', '0812345678', '$2y$10$NzoM5wdcR/dCekHVdlQB3ODXjz1UDWhBUp2GtwrxZOafJftQEDr8i', 'abc', 1, 0, 0, 0, '', '', '', '2019-07-12 00:00:00', '2019-07-27 00:00:00'),
(63, 'Fabian Schwolow', 'Fabian', 'Schwolow', 'fs@die-auktionshalle-berlin.de', '015168828345', '$2y$10$TQAV6SUf3ODJ/4xlfjaiHur/zB8vlG4fJNtlSO3vCJillw7grlNhm', 'Am Stener Berg 41e', 1, 1, 0, 0, '', '', '', '2019-07-15 00:00:00', '2019-07-15 00:00:00'),
(64, '12345@test.com', '123', '345', '12345@test.com', '1222333444555', '$2y$10$zNpivrHakx1.AQ70j37d0.tVachdvTmjbUJ.hhIRh/yoRSqBZLOAy', 'Yyyyyyyyyy', 1, 1, 0, 0, '', '', '', '2019-07-17 00:00:00', '2019-07-19 00:00:00'),
(65, 'testando', 'testando', 'testando', 'testando@gmail.com', '1192773882', '$2y$10$9Hpi4FbNtCHrwSMxBMc/je.ZMWyaqLqciWvEtJ/VfpSahPGFg1gMO', 'kdsskd jdskjad', 1, 1, 0, 0, '', '', '', '2019-07-17 00:00:00', '2019-07-21 00:00:00'),
(66, 'vikas', 'kkk', 'kkkk', 'vkas@gmi.com', '1111111111', '$2y$10$PZVpOX7aew8uS3272kmIFe3kxcD3Wldl8IiSPZIs.cpRUV9KZPJMa', '123', 1, 1, 0, 0, '', '', '', '2019-07-20 00:00:00', '2019-07-22 00:00:00'),
(67, 'balbeer', 'balbeer', 'nishad', 'nishad@gmail.com', '7878787878', '$2y$10$T8Wq1GK8DuR7nvs76go6q.7drwANgKQx/4YwZKzPLYazS8Ug5aF.i', 'jsdf', 1, 1, 0, 0, '', '', '', '2019-07-20 00:00:00', '2019-07-20 00:00:00'),
(68, 'mbk007', 'Mahesh', 'Kaushik', 'mahesh@gmail.com', '9898989898', '$2y$10$iyRtpGfniLBrKYdi3asUFu/k2EGInj8U2F6BeAPPJV6K.DDrdeDVC', 'India', 1, 1, 0, 0, '', '', '', '2019-07-23 00:00:00', '2019-07-27 00:00:00'),
(69, 'gov401', 'Krishna', 'Govender', 'krishgkrish@gmail.com', '0835065108', '$2y$10$LgMSTUjTcEQNRGb1bWEkpeN0U13RWGP3FvqHbRZu9FpkWLqTiUluu', '9 Marula Way', 1, 1, 0, 0, '', '', '', '2019-07-27 00:00:00', '2019-07-27 00:00:00'),
(70, 'asas', 'asas', 'asas', 'admin@ynext.com', '1212', '$2y$10$ooeIWsfmpCQNZmos17P5zew2htfc0fmGgk3jD6kdBci4M4hMGowFC', '123', 1, 1, 0, 0, '', '', '', '2019-07-27 00:00:00', '2019-07-27 00:00:00'),
(71, 'victortest', 'victortest', 'victortest', 'victortest@victortest.com', '1231234567', '$2y$10$3WlUjnEDxDtCk/qQTbl4ZO2LVIzv8mRHdfb1Wv2GpBuBF46w8d66G', '', 1, 1, 0, 0, '', '', '', '2019-07-29 00:00:00', '2019-07-29 00:00:00'),
(72, 'admin1', 'a', 'a', 'mostafagoda199@gmail.com', '23', '$2y$10$4Rc912nbxVljeWMqEAaMLuaXCI5N6CI3oafc.3sGi2hQRKRN/FzYa', '123123', 1, 0, 0, 0, '', '', '', '2019-07-31 00:00:00', '2019-07-31 00:00:00'),
(73, 'admin', 'a', 'a', 'mostafagoda199@gmail.com', '23', '$2y$10$q8WqDDa2LvEiPLjy5mm0ge9nMWGSIilMAXn8O/IteDi6OLM17I/NG', '123123', 1, 1, 0, 0, '', '', '', '2019-07-31 00:00:00', '2019-08-06 00:00:00'),
(74, 'profihorst', 'rapunzel', 'doe', 'b6216160@urhen.com', '012345679', '$2y$10$85zegyi9wp5E3/3mwBORs.SY/hE97A6BvuwYuiyP1r8QBsTYA5bFG', '', 1, 1, 0, 0, '', '', '', '2019-08-02 00:00:00', '2019-08-02 00:00:00'),
(75, 'sf', 'sdf', 'sdf', 'df@gmail.com', '09079775244', '$2y$10$g38c.NwBTnFJbTrv/xQHzunJwO.K8YXhi7rafsw3lB3VzwjFylBwa', 'Ajmer', 1, 1, 0, 0, '', '', '', '2019-08-02 00:00:00', '2019-08-02 00:00:00'),
(76, 'sf', 'sdf', 'sdf', 'df@gmail.com', '09079775244', '$2y$10$743G0XmpzTWtXOC7zlMTbuGZSg7Hg4kM7hgdxpJUlwBqPMAhClgcS', 'Ajmer', 1, 0, 0, 0, '', '', '', '2019-08-02 00:00:00', '2019-08-02 00:00:00'),
(77, 'efdsrg', 'dfg', 'dgdf', 'gdfgd@ff.com', '656654656', '$2y$10$JtBDIWY.9CFgbSSNbp9Lyua5k8Z47WJgn0UqAVOI00I2swVky20Yi', 'efdsg', 1, 1, 0, 0, '', '', '', '2019-08-05 00:00:00', '2019-08-22 00:00:00'),
(78, 'rj', 'raj', 'd', 'rj@gmail.com', '2313122434', '$2y$10$SgovlJ03YlRKMoB5pHMN3eXuOBbzFWvlhVdliGnIw2gy9PGPQMCiW', '12345', 1, 1, 0, 0, '', '', '', '2019-08-06 00:00:00', '2019-08-17 00:00:00'),
(79, 'puroamor', 'robinson', 'loreto', 'loretoruiz@hotmail.com', '54554545', '$2y$10$5suuu9LzgxuNy7XDk9KmUOU.oGDN/aPiIYjT4UBW7aDAZ2rr/phau', '21212', 1, 0, 0, 0, '', '', '', '2019-08-06 00:00:00', '2019-08-06 00:00:00'),
(80, 'ivanbasoj', 'Ivan lkasdjf', 'Baso', 'ivanbaso@yahoo.com', '85216492550', '$2y$10$KHoo5CM/NB6gKz2ejiWL/OzhMkV.8kO8WQ4CbkIBVsYQUtlB4nqnC', 'ivanbaso@wordpress.com', 1, 1, 0, 0, '', '', '', '2019-08-08 00:00:00', '2019-08-17 00:00:00'),
(81, 'teste', 'teste', 'teste', 'teste@teste.com', '21965423263', '$2y$10$8kA.UhyAAuvaU.TZS7BdXODYlZBIGqxOh2OwB9FplUaEiXhUkvpQu', 'teste', 1, 1, 0, 0, '', '', '', '2019-08-08 00:00:00', '2019-08-08 00:00:00'),
(82, 'Testing', 'Marco', 'Polo', 'asd@asd.aa', '3333333333', '$2y$10$rtm/DI8GgMIIsoEQ2hOf6ek0ZZiIfDjvSml2n5d9FldZF7IKkpwW.', '', 1, 1, 0, 0, '', '', '', '2019-08-18 00:00:00', '2019-08-18 00:00:00'),
(83, 'test222', 'test', 'test', 'test@test.com', '43443543543', '$2y$10$/HGVtiZlI/NnBeRhrlWDYO5xr8lrDi9E9Rsv51nLnnIJy5xIBziPi', 'fgdgsfgdfgdgs', 1, 1, 0, 0, '', '', '', '2019-08-18 00:00:00', '2019-08-18 00:00:00'),
(84, 'nai', 'ni', 'ff', 'blckdel606@homail.com', '9611245', '$2y$10$ObJ8grD5S6xcF8sQdvwkAOMzdTTckI70rTR4gNIPt6CSrEHKjiA6.', '1234', 1, 1, 0, 0, '', '', '', '2019-08-19 00:00:00', '2019-08-19 00:00:00'),
(85, 'maman', 'momon', 'memen', 'maman@maman.com', '2', '$2y$10$DOl38HyWvT354tGaoetaPeVzVjN5xIqbYMAFPlUK3ruoMcewM/UsO', 'maman', 1, 1, 0, 0, '', '', '', '2019-08-19 00:00:00', '2019-08-20 00:00:00'),
(86, 'hs777', 'Hussein', 'Saad', 'hs777it@gmail.com', '60909090', '$2y$10$RRVpoobPQLi8/DW.BSvVFed0vvNcKlsCTbrtzk21K8bwrETu8XRb6', '108', 1, 1, 0, 0, '', '', '', '2019-08-20 00:00:00', '2019-08-30 00:00:00'),
(87, 'SnillocTV', 'Jack', 'Collins', 'gamer2505@gmx.de', '56456465', '$2y$10$J4b9pqEZzTFJdem7eHbmxeuo8Hq.HzlM23wbOKYW2gDl5SVBgP2cS', 'Flurstraße 48', 1, 1, 0, 0, '', '', '', '2019-08-24 00:00:00', '2019-08-25 00:00:00'),
(88, 'david', 'david', 'dvto', 'topkunlex@gmail.com', '89238989398', '$2y$10$gevDVndoOeR03V5UAtk.6OIOA1y0D72JNIAOGQ/prgccL.sA35gmK', 'Acedemy Ibadan', 1, 0, 0, 0, '', '', '', '2019-08-25 00:00:00', '2019-08-25 00:00:00'),
(89, 'samirayaqoub', 'Samira', 'Yaqoub', 'samira.yaqoub@gmail.com', '05356504257', '$2y$10$OHiRdn0A51OK3EncHK0hyuSLMxAL1EA9v5ai7T2e4reIfZ3uHZXwO', 'Istanbul', 1, 0, 0, 0, '', '', '', '2019-08-25 00:00:00', '2019-08-25 00:00:00'),
(90, 'hisham', 'hisham', 'hisham', 'samira.yaqoub@gmail.com', '1234556', '$2y$10$ArkDtSr77qpv4JqpKuTo8u3lOqLgGs.AgqNw3ayQfnsht6JN19N6G', 'ıstanbul turkey', 1, 0, 0, 0, '', '', '', '2019-08-26 00:00:00', '2019-08-27 00:00:00'),
(91, '1234', '1234', '1234', '1234@1234.com', '1234', '$2y$10$5iup3/ApBH1z.YCeBDSjducNIsQdIsmEXBEsmyL6S9Wo9n4i.zUsW', '', 1, 0, 0, 0, '', '', '', '2019-08-28 00:00:00', '2019-08-29 00:00:00'),
(92, 'joao', 'João', 'Silva', 'joao@hotmail.com', '11', '$2y$10$nb.Jogd7IL02dfjjJFJDvu3aV3ierarP9Ms/dt1wSdz0ezYUW5miq', '13', 1, 0, 0, 0, '', '', '', '2019-08-29 00:00:00', '2019-08-30 00:00:00'),
(93, 'demouser', 'demouser', 'demouser', 'demouser@demo.com', '11234567', '$2y$10$X1C4KTODK4Vqah79dcEK2.ikkyYiwI2ZZOMpX4SYrJl3OI6pi.61i', '1341431 ', 1, 1, 0, 0, '', '', '', '2019-08-30 00:00:00', '2019-08-30 00:00:00'),
(94, 'demouser1', 'demouser1', 'demouser1', 'demouser1@demouser1.com', '2323232323', '$2y$10$a8M1.2u/KhPmiAYHUlDhi.yj6DS1JhE6cObNOk9V0FCiwRw8l9TXe', 'sdfvdsfvsdfq1', 1, 1, 0, 0, '', '', '', '2019-08-30 00:00:00', '2019-08-30 00:00:00'),
(95, 'ismailbal', 'Ismail', 'Bal', 'ismailbal@gmail.com', '05323918776', '$2y$10$yItlHr3ggKcoz5EIysRb.ucgn4P/p.YJEdOe9e6XQS8gbQNldxEY.', 'Deneme', 1, 1, 0, 0, '', '', '', '2019-09-01 00:00:00', '2019-09-02 00:00:00'),
(96, 'Raaj', 'R', 'K', 'ideashub.india@gmail.com', '9415338665', '$2y$10$zuA6h9fmcOnlQLIL/gOCPe5gdRDxyfzXkYQVdh98D1OwUMVg5pVe2', 'IIIrd Floor, Aditi Apptts.52 Tashkand Marg', 1, 1, 0, 0, '', '', '', '2019-09-02 00:00:00', '2019-09-06 00:00:00'),
(97, 'test12', 'test', 'test', 'test12@test.com', '9177169523', '$2y$10$nsZi3oN0yxRd1djekf5tK.14RugE29YlSiy0NV4k1jwIdfLnfH6s6', '12345', 1, 1, 0, 0, '', '', '', '2019-09-06 00:00:00', '2019-09-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `controller_name` varchar(255) NOT NULL,
  `fa_icon` varchar(100) NOT NULL,
  `operation` text NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `controller_name`, `fa_icon`, `operation`, `sort_order`) VALUES
(1, 'Admin List', 'admin', '', 'view|add|edit|delete|change_status|access', 0),
(2, 'Role & Permissions', 'admin_roles', '', 'view|add|edit|delete|change_status|access', 0),
(3, 'User Manage', 'users', '', 'view|add|edit|delete|change_status|access', 0),
(4, 'Invoice List', 'invoices', '', 'view|add|edit|delete|access', 0),
(5, 'CI Examples', 'example', '', 'access', 0),
(6, 'Joins', 'joins', '', 'access', 0),
(7, 'Export', 'export', '', 'access', 0);

-- --------------------------------------------------------

--
-- Table structure for table `module_access`
--

CREATE TABLE `module_access` (
  `id` int(11) NOT NULL,
  `admin_role_id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `operation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_access`
--

INSERT INTO `module_access` (`id`, `admin_role_id`, `module`, `operation`) VALUES
(1, 1, 'admin', 'view'),
(2, 1, 'admin', 'add'),
(3, 1, 'admin', 'edit'),
(4, 1, 'admin', 'delete'),
(5, 1, 'admin', 'change_status'),
(6, 1, 'admin', 'access'),
(7, 1, 'admin_roles', 'view'),
(8, 1, 'admin_roles', 'add'),
(9, 1, 'admin_roles', 'edit'),
(10, 1, 'admin_roles', 'delete'),
(11, 1, 'admin_roles', 'change_status'),
(12, 1, 'admin_roles', 'access'),
(13, 1, 'users', 'view'),
(14, 1, 'users', 'add'),
(15, 1, 'users', 'edit'),
(16, 1, 'users', 'delete'),
(17, 1, 'users', 'change_status'),
(18, 1, 'users', 'access'),
(23, 1, 'invoices', 'view'),
(24, 1, 'invoices', 'add'),
(25, 1, 'invoices', 'edit'),
(26, 1, 'invoices', 'delete'),
(27, 1, 'invoices', 'access'),
(28, 1, 'example', 'access'),
(29, 1, 'joins', 'access'),
(30, 1, 'export', 'access'),
(51, 3, 'users', 'delete'),
(53, 3, 'users', 'access'),
(57, 3, 'invoices', 'delete'),
(58, 3, 'invoices', 'edit'),
(63, 4, 'users', 'add'),
(64, 4, 'users', 'edit'),
(65, 4, 'users', 'delete'),
(66, 4, 'users', 'access'),
(67, 4, 'users', 'change_status'),
(69, 4, 'invoices', 'add'),
(71, 4, 'invoices', 'delete'),
(72, 4, 'invoices', 'access'),
(88, 5, 'invoices', 'view'),
(144, 10, 'admin', 'view'),
(146, 10, 'admin_roles', 'view'),
(148, 10, 'export', 'access'),
(149, 10, 'joins', 'access'),
(150, 10, 'example', 'access'),
(151, 10, 'invoices', 'access'),
(152, 10, 'invoices', 'view'),
(153, 10, 'users', 'change_status'),
(154, 10, 'invoices', 'add'),
(155, 10, 'invoices', 'edit'),
(156, 10, 'invoices', 'delete'),
(157, 10, 'users', 'delete'),
(158, 10, 'users', 'edit'),
(159, 10, 'users', 'add'),
(160, 10, 'admin_roles', 'access'),
(161, 10, 'users', 'access'),
(162, 10, 'admin', 'access'),
(163, 10, 'admin', 'add'),
(164, 10, 'admin', 'edit'),
(165, 10, 'admin', 'delete'),
(166, 10, 'admin_roles', 'delete'),
(167, 10, 'admin_roles', 'add'),
(168, 10, 'admin_roles', 'edit'),
(169, 10, 'admin_roles', 'change_status'),
(202, 7, 'invoices', 'view'),
(206, 4, 'users', 'view'),
(209, 9, 'admin_roles', 'change_status'),
(210, 9, 'admin_roles', 'view'),
(230, 3, 'admin_roles', 'access'),
(233, 3, 'admin_roles', 'delete'),
(234, 3, 'users', 'edit'),
(235, 3, 'users', 'add'),
(245, 5, 'example', 'access'),
(254, 17, 'admin', 'view'),
(255, 17, 'admin', 'edit'),
(256, 17, 'admin', 'access'),
(257, 17, 'admin', 'change_status'),
(258, 17, 'admin', 'delete'),
(259, 17, 'admin', 'add'),
(260, 17, 'admin_roles', 'view'),
(261, 17, 'admin_roles', 'access'),
(262, 17, 'admin_roles', 'change_status'),
(263, 17, 'admin_roles', 'add'),
(264, 17, 'admin_roles', 'edit'),
(265, 17, 'admin_roles', 'delete'),
(266, 17, 'users', 'add'),
(267, 17, 'users', 'access'),
(268, 17, 'users', 'change_status'),
(269, 17, 'users', 'view'),
(270, 17, 'users', 'edit'),
(271, 17, 'users', 'delete'),
(272, 17, 'invoices', 'view'),
(273, 17, 'invoices', 'access'),
(274, 17, 'invoices', 'add'),
(275, 17, 'invoices', 'edit'),
(276, 17, 'invoices', 'delete'),
(277, 17, 'example', 'access'),
(278, 17, 'joins', 'access'),
(279, 17, 'export', 'access'),
(282, 10, 'admin', 'change_status'),
(288, 21, 'admin', 'view'),
(289, 21, 'admin', 'access'),
(290, 21, 'admin', 'edit'),
(294, 10, 'users', 'view'),
(308, 5, 'export', 'access'),
(331, 4, 'joins', 'access'),
(345, 3, 'admin_roles', 'view'),
(347, 3, 'admin', 'delete'),
(348, 3, 'admin', 'add'),
(349, 3, 'joins', 'access'),
(350, 3, 'admin', 'view'),
(351, 3, 'admin', 'change_status'),
(352, 27, 'admin', 'view'),
(353, 27, 'admin', 'change_status'),
(354, 27, 'admin_roles', 'view'),
(355, 27, 'admin_roles', 'change_status'),
(356, 27, 'users', 'view'),
(357, 27, 'users', 'change_status'),
(358, 27, 'invoices', 'view'),
(359, 27, 'invoices', 'access'),
(360, 27, 'example', 'access'),
(361, 27, 'joins', 'access'),
(362, 27, 'export', 'access'),
(363, 27, 'admin', 'add'),
(364, 27, 'admin', 'access'),
(365, 27, 'admin_roles', 'add'),
(366, 27, 'admin_roles', 'access'),
(367, 27, 'users', 'add'),
(368, 27, 'users', 'access'),
(369, 27, 'invoices', 'add'),
(370, 27, 'admin', 'edit'),
(371, 27, 'admin_roles', 'edit'),
(372, 27, 'users', 'edit'),
(373, 27, 'invoices', 'edit'),
(374, 27, 'invoices', 'delete'),
(375, 27, 'users', 'delete'),
(376, 27, 'admin_roles', 'delete'),
(377, 27, 'admin', 'delete'),
(400, 28, 'users', 'view'),
(401, 28, 'users', 'add'),
(402, 28, 'users', 'edit'),
(403, 28, 'users', 'delete'),
(407, 2, 'admin_roles', 'add'),
(408, 2, 'admin_roles', 'access'),
(412, 2, 'users', 'access'),
(413, 2, 'users', 'add'),
(416, 3, 'users', 'change_status'),
(417, 3, 'admin_roles', 'edit'),
(439, 5, 'joins', 'access'),
(440, 2, 'admin_roles', 'edit'),
(448, 7, 'users', 'change_status'),
(449, 3, 'admin_roles', 'add'),
(450, 3, 'admin_roles', 'change_status'),
(451, 3, 'users', 'view'),
(452, 4, 'invoices', 'view'),
(458, 4, 'example', 'access'),
(476, 25, 'example', 'access'),
(477, 25, 'joins', 'access'),
(479, 25, 'invoices', 'access'),
(480, 25, 'invoices', 'view'),
(481, 25, 'users', 'view'),
(482, 25, 'users', 'add'),
(483, 25, 'users', 'access'),
(484, 25, 'users', 'change_status'),
(485, 25, 'users', 'edit'),
(486, 25, 'users', 'delete'),
(487, 12, 'invoices', 'view'),
(488, 6, 'admin', 'view'),
(489, 6, 'admin', 'change_status'),
(493, 36, 'export', 'access'),
(494, 36, 'invoices', 'delete'),
(496, 39, 'invoices', 'access'),
(497, 39, 'example', 'access'),
(498, 39, 'joins', 'access'),
(499, 39, 'export', 'access'),
(500, 39, 'invoices', 'view'),
(502, 39, 'users', 'view'),
(503, 39, 'admin_roles', 'change_status'),
(504, 39, 'admin_roles', 'view'),
(505, 39, 'admin', 'change_status'),
(506, 39, 'users', 'change_status'),
(507, 39, 'invoices', 'add'),
(508, 39, 'users', 'access'),
(509, 39, 'users', 'add'),
(510, 39, 'admin_roles', 'access'),
(511, 39, 'admin_roles', 'add'),
(512, 39, 'admin_roles', 'edit'),
(513, 39, 'users', 'edit'),
(514, 39, 'invoices', 'edit'),
(515, 39, 'admin', 'add'),
(516, 39, 'admin', 'access'),
(517, 39, 'admin', 'edit'),
(518, 39, 'admin', 'delete'),
(519, 39, 'admin_roles', 'delete'),
(520, 39, 'users', 'delete'),
(521, 39, 'invoices', 'delete'),
(526, 40, 'admin', 'change_status'),
(527, 40, 'admin_roles', 'view'),
(528, 3, 'admin', 'access'),
(529, 3, 'admin', 'edit'),
(530, 41, 'admin', 'delete'),
(531, 41, 'users', 'delete'),
(532, 41, 'users', 'add'),
(537, 2, 'users', 'delete'),
(539, 42, 'admin', 'view'),
(540, 42, 'admin', 'change_status'),
(541, 42, 'admin', 'access'),
(542, 42, 'admin', 'add'),
(543, 42, 'admin', 'edit'),
(544, 42, 'admin', 'delete'),
(545, 42, 'admin_roles', 'delete'),
(546, 42, 'admin_roles', 'edit'),
(547, 42, 'admin_roles', 'add'),
(548, 42, 'admin_roles', 'view'),
(549, 42, 'admin_roles', 'change_status'),
(550, 42, 'users', 'view'),
(551, 42, 'users', 'change_status'),
(552, 42, 'users', 'access'),
(553, 42, 'users', 'add'),
(554, 42, 'admin_roles', 'access'),
(555, 42, 'users', 'edit'),
(556, 42, 'users', 'delete'),
(557, 42, 'invoices', 'delete'),
(558, 42, 'invoices', 'edit'),
(559, 42, 'invoices', 'add'),
(560, 42, 'invoices', 'view'),
(561, 42, 'invoices', 'access'),
(562, 42, 'example', 'access'),
(563, 42, 'joins', 'access'),
(564, 42, 'export', 'access'),
(566, 2, 'admin', 'add'),
(567, 2, 'admin', 'delete'),
(574, 2, 'admin_roles', 'view'),
(575, 2, 'admin_roles', 'change_status'),
(576, 3, 'example', 'access'),
(580, 2, 'invoices', 'access'),
(581, 2, 'example', 'access'),
(582, 2, 'admin', 'edit'),
(583, 3, 'export', 'access'),
(584, 2, 'admin', 'view'),
(585, 2, 'users', 'view'),
(586, 2, 'users', 'change_status'),
(587, 2, 'users', 'edit'),
(588, 2, 'admin_roles', 'delete'),
(589, 2, 'invoices', 'delete'),
(590, 2, 'invoices', 'edit'),
(592, 2, 'invoices', 'view'),
(593, 2, 'joins', 'access'),
(594, 2, 'export', 'access'),
(595, 2, 'invoices', 'add'),
(596, 2, 'admin', 'change_status');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_births`
--

CREATE TABLE `tbl_births` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `other_names` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `place_of_birth` text DEFAULT NULL,
  `hospital_id` int(11) NOT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_births`
--

INSERT INTO `tbl_births` (`id`, `surname`, `other_names`, `dob`, `place_of_birth`, `hospital_id`, `parent_name`, `created_date`) VALUES
(1, 'Christine', 'Lovie', '2020-06-06', 'Kakanega Referral', 1, 'Jemimah Kariuki', '2020-07-04 01:34:21'),
(3, 'Christopher', 'Kayando', '2020-01-01', 'Kisumu Central', 1, 'Maria', '2020-07-04 10:49:35'),
(4, 'Obonyo', 'David', '2020-07-04', 'Kakamega', 1, 'Elizabeth Akinyi', '2020-07-04 16:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `id` int(11) NOT NULL,
  `subcounty_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`id`, `subcounty_id`, `ward_id`, `hospital_name`, `level`, `created_date`) VALUES
(1, 1, 1, 'Kakamega General Hospital', 'Level 4', '2020-07-04 00:25:45'),
(3, 1, 1, 'Administration Police Dispensary', 'Level 1', '2020-07-04 10:13:39'),
(4, 1, 1, 'Mmust Tunza Clinic', 'Level 2', '2020-07-04 15:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_immunization`
--

CREATE TABLE `tbl_immunization` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `vaccine_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `dated` date NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_immunization`
--

INSERT INTO `tbl_immunization` (`id`, `child_id`, `vaccine_id`, `hospital_id`, `dated`, `created_date`) VALUES
(1, 1, 1, 1, '2020-07-02', '2020-07-04 01:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcounty`
--

CREATE TABLE `tbl_subcounty` (
  `id` int(11) NOT NULL,
  `subcounty_name` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcounty`
--

INSERT INTO `tbl_subcounty` (`id`, `subcounty_name`, `created_date`) VALUES
(1, 'Lurambi', '2020-07-03 23:06:40'),
(3, 'Mumias East', '2020-07-03 23:28:30'),
(4, 'Lugari', '2020-07-04 10:04:45'),
(5, 'Butere', '2020-07-04 10:05:29'),
(6, 'Likuyani', '2020-07-04 14:41:00'),
(7, 'Malava', '2020-07-04 14:41:13'),
(8, 'Navakholo', '2020-07-04 14:41:25'),
(9, 'Mumias West', '2020-07-04 14:41:37'),
(10, 'Khwisero', '2020-07-04 14:41:52'),
(11, 'Ikolomani', '2020-07-04 14:42:12'),
(12, 'Shinyalu', '2020-07-04 15:18:13'),
(13, 'Group2', '2020-07-04 16:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vaccines`
--

CREATE TABLE `tbl_vaccines` (
  `id` int(11) NOT NULL,
  `vaccine_name` varchar(100) DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vaccines`
--

INSERT INTO `tbl_vaccines` (`id`, `vaccine_name`, `period`, `description`, `created_date`) VALUES
(1, 'Polio', 'At Birth', 'Given at birth', '2020-07-04 00:48:46'),
(3, 'Testing', 'Testing', 'Testing', '2020-07-04 10:26:26'),
(4, 'BCG', 'At birth', 'Bacille Calmette-Guerin vaccine', '2020-07-04 16:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ward`
--

CREATE TABLE `tbl_ward` (
  `id` int(11) NOT NULL,
  `subcounty_id` int(11) NOT NULL,
  `ward_name` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ward`
--

INSERT INTO `tbl_ward` (`id`, `subcounty_id`, `ward_name`, `created_date`) VALUES
(1, 1, 'Mahiakhalo', '2020-07-03 23:40:00'),
(3, 1, 'Sheywe', '2020-07-04 09:46:16'),
(5, 1, 'Butsotso East', '2020-07-04 14:42:50'),
(7, 1, 'Butsotso South', '2020-07-04 14:45:44'),
(8, 1, 'Butsotso Central', '2020-07-04 14:46:41'),
(9, 1, 'Shirere', '2020-07-04 15:01:47'),
(10, 3, 'Lusenya', '2020-07-04 15:02:18'),
(11, 3, 'Mahala', '2020-07-04 15:02:40'),
(12, 3, 'East Wanga', '2020-07-04 15:02:52'),
(13, 4, 'Mautuma', '2020-07-04 15:03:32'),
(14, 4, 'Lugari', '2020-07-04 15:03:47'),
(15, 4, 'Lumakanda', '2020-07-04 15:04:04'),
(16, 4, 'Chekalini', '2020-07-04 15:04:19'),
(17, 4, 'Chevaywa', '2020-07-04 15:04:33'),
(18, 4, 'Luwandeti', '2020-07-04 15:04:55'),
(19, 5, 'Marama West', '2020-07-04 15:05:21'),
(20, 5, 'Marama Central', '2020-07-04 15:05:40'),
(21, 5, 'Marenyo-Shianda', '2020-07-04 15:06:01'),
(22, 5, 'Maram North', '2020-07-04 15:06:24'),
(23, 5, 'Maram South', '2020-07-04 15:06:37'),
(24, 6, 'Likuyani', '2020-07-04 15:07:02'),
(25, 6, 'Songo', '2020-07-04 15:07:13'),
(26, 6, 'Songo', '2020-07-04 15:07:23'),
(27, 6, 'Kongoni', '2020-07-04 15:07:45'),
(28, 6, 'Nzoia', '2020-07-04 15:07:58'),
(29, 6, 'Sinoko', '2020-07-04 15:08:11'),
(30, 7, 'West Kabras', '2020-07-04 15:08:30'),
(31, 7, 'Chemuche', '2020-07-04 15:08:48'),
(32, 7, 'Butali', '2020-07-04 15:09:53'),
(33, 7, 'Shivanga', '2020-07-04 15:10:17'),
(34, 7, 'Shirungu-Mugai', '2020-07-04 15:10:42'),
(35, 7, 'South Kabras', '2020-07-04 15:10:57'),
(36, 8, 'Ingotse-Mathia', '2020-07-04 15:11:21'),
(37, 8, 'Shinoyi-Shikomari', '2020-07-04 15:11:45'),
(38, 8, 'Esumeyia', '2020-07-04 15:12:00'),
(39, 8, 'Bunyala', '2020-07-04 15:12:19'),
(40, 8, 'Bunyala West', '2020-07-04 15:12:46'),
(41, 8, 'Bunyala Central', '2020-07-04 15:12:59'),
(42, 9, 'Mumias North', '2020-07-04 15:13:38'),
(43, 9, 'Mumias Central', '2020-07-04 15:13:52'),
(44, 9, 'Etenje', '2020-07-04 15:14:02'),
(45, 9, 'Musanda', '2020-07-04 15:14:17'),
(46, 10, 'Kisa North', '2020-07-04 15:14:36'),
(47, 10, 'Kisa East', '2020-07-04 15:14:51'),
(48, 10, 'Kisa West', '2020-07-04 15:15:14'),
(49, 10, 'Kisa Central', '2020-07-04 15:15:31'),
(50, 11, 'Idakho South', '2020-07-04 15:17:09'),
(51, 11, 'Idakho East', '2020-07-04 15:17:25'),
(52, 11, 'Idakho North', '2020-07-04 15:17:39'),
(53, 11, 'Idakho Central', '2020-07-04 15:17:52'),
(54, 12, 'Isukha North', '2020-07-04 15:18:34'),
(55, 12, 'Isukha Central', '2020-07-04 15:18:56'),
(56, 12, 'Isukha South', '2020-07-04 15:19:11'),
(57, 12, 'Isukha East', '2020-07-04 15:19:32'),
(58, 12, 'Isukha West', '2020-07-04 15:19:53'),
(59, 12, 'Murhanda', '2020-07-04 15:20:07'),
(60, 12, 'Murhanda', '2020-07-04 15:20:09'),
(61, 13, 'Brandon', '2020-07-04 16:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `test_user`
--

CREATE TABLE `test_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_user`
--

INSERT INTO `test_user` (`id`, `username`, `email`, `mobile_no`) VALUES
(1, 'nauman', 'naumanahmedcs@gmail.com', '3468548054'),
(2, 'ahmed', 'ahmed@gmail.com', '445684332545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_admin`
--
ALTER TABLE `ci_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ci_admin_roles`
--
ALTER TABLE `ci_admin_roles`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `ci_companies`
--
ALTER TABLE `ci_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_payments`
--
ALTER TABLE `ci_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_users`
--
ALTER TABLE `ci_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_access`
--
ALTER TABLE `module_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RoleId` (`admin_role_id`);

--
-- Indexes for table `tbl_births`
--
ALTER TABLE `tbl_births`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_immunization`
--
ALTER TABLE `tbl_immunization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcounty`
--
ALTER TABLE `tbl_subcounty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vaccines`
--
ALTER TABLE `tbl_vaccines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ward`
--
ALTER TABLE `tbl_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_user`
--
ALTER TABLE `test_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_admin`
--
ALTER TABLE `ci_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `ci_admin_roles`
--
ALTER TABLE `ci_admin_roles`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ci_companies`
--
ALTER TABLE `ci_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ci_payments`
--
ALTER TABLE `ci_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ci_users`
--
ALTER TABLE `ci_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `module_access`
--
ALTER TABLE `module_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `tbl_births`
--
ALTER TABLE `tbl_births`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_immunization`
--
ALTER TABLE `tbl_immunization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subcounty`
--
ALTER TABLE `tbl_subcounty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_vaccines`
--
ALTER TABLE `tbl_vaccines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ward`
--
ALTER TABLE `tbl_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `test_user`
--
ALTER TABLE `test_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
