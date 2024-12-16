-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 23, 2024 lúc 04:38 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkho056`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkho056`
--

CREATE TABLE `tblkho056` (
  `Makho056` varchar(10) NOT NULL,
  `Tenkho056` varchar(50) NOT NULL,
  `Diadiem056` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblvattu056`
--

CREATE TABLE `tblvattu056` (
  `MaVT056` varchar(10) NOT NULL,
  `TenVt056` varchar(50) DEFAULT NULL,
  `Soluong056` int(11) DEFAULT NULL,
  `Dongia056` double DEFAULT NULL,
  `Donvitinh056` varchar(20) DEFAULT NULL,
  `MaKho056` varchar(10) NOT NULL,
  `Anh056` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblkho056`
--
ALTER TABLE `tblkho056`
  ADD PRIMARY KEY (`Makho056`);

--
-- Chỉ mục cho bảng `tblvattu056`
--
ALTER TABLE `tblvattu056`
  ADD PRIMARY KEY (`MaVT056`,`MaKho056`),
  ADD KEY `MaKho056` (`MaKho056`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblvattu056`
--
ALTER TABLE `tblvattu056`
  ADD CONSTRAINT `tblvattu056` FOREIGN KEY (`MaVT056`) REFERENCES `tblkho056` (`Makho056`),
  ADD CONSTRAINT `tblvattu056_ibfk_1` FOREIGN KEY (`MaKho056`) REFERENCES `tblkho056` (`Makho056`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
