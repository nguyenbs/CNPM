-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2017 lúc 06:09 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlivieclam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet`
--

CREATE TABLE `bai_viet` (
  `ma_bai_viet` int(11) NOT NULL,
  `ten_bai_viet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_cong_ty` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_cong_ty` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh_cong_ty` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_viec_lam` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `muc_luong` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kinh_nghiem` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bang_cap` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `dia_diem` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chuc_vu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_thuc_lam_viec` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thoi_gian_thu_viec` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yeu_cau_cong_viec` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yeu_cau_khac` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_cong_viec` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quyen_loi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ho_so` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `han_nop_ho_so` date NOT NULL,
  `nguoi_lien_he` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_lien_he` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_lien_he` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai_lien_he` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nhom_nghe` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nhom_luong` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khu_vuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_viet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_viet` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bai_viet`
--

INSERT INTO `bai_viet` (`ma_bai_viet`, `ten_bai_viet`, `ma_cong_ty`, `ten_cong_ty`, `anh_cong_ty`, `ten_viec_lam`, `muc_luong`, `kinh_nghiem`, `bang_cap`, `so_luong`, `dia_diem`, `chuc_vu`, `hinh_thuc_lam_viec`, `thoi_gian_thu_viec`, `yeu_cau_cong_viec`, `yeu_cau_khac`, `mo_ta_cong_viec`, `quyen_loi`, `ho_so`, `han_nop_ho_so`, `nguoi_lien_he`, `dia_chi_lien_he`, `email_lien_he`, `dien_thoai_lien_he`, `nhom_nghe`, `nhom_luong`, `khu_vuc`, `nguoi_viet`, `ngay_viet`) VALUES
(1, 'THÔNG BÁO TUYỂN DỤNG', 'VHC', 'CÔNG TY CỔ PHẦN PHẦN MỀM CÔNG NGHỆ CAO VHCSOFT JSC', 'resources/image/congty_1.jpg', 'Lập trình viên', '11 triệu', '2 năm kinh nghiệm lập trình Java Web', 'Bằng đại học trở lên chuyên ngành công nghệ thông tin, toán-tin, công nghệ phần mềm', 5, 'Số 9 Ngõ Quan Thổ 1 - Đống Đa - Hà Nội', 'Nhân viên', 'Full time', '3 tháng', 'Có kiến thức tốt về lập trình Java, HTML, CSS, JavaScript. Tiếng Anh, tiếng Nhật là một lợi thế', 'Ưu tiên cựu sinh viên các trường đại học Khoa học tự  nhiên, Bách khoa, Công nghệ', 'Tham gia các dự án Java Spring, làm việc với Oracle', 'Chế độ đãi ngộ hấp dẫn.\nTham gia du lịch, team buiding 2 lần / năm', 'Sơ yếu lí lịch\nBằng cấp, chứng chỉ\nĐơn xin việc làm', '2017-11-30', 'Nguyễn Hữu Đoài', 'Thanh Xuân - Hà Nội', 'doainh@vhc.com.vn', '0904616491', 'Công nghệ thông tin', '10 - 12 triệu', 'Hà Nội', 'doainguyen1997', '2017-11-27'),
(2, 'THÔNG BÁO TUYỂN DỤNG', 'TPC', 'CÔNG TY DƯỢC PHẨM TRAPHACO VIỆT NAM', 'resources/image/congty_2.jpg', 'Nhân viên kinh doanh bất động sản', '7 triệu', 'Không', 'Tốt nghiệp Trung học phổ thông trở lên', 10, 'Số 556 -\n Tố Hữu -\n Quận 1 -\n TP. Hồ Chí Minh', 'Nhân viên', 'Full time', '1 tháng', 'Nhanh nhẹn, có khả năng giao tiếp khách hàng tốt', 'Tiếng Anh là một lợi thế', 'Trao đổi công việc với khách hàng, tư vấn sản phẩm.', 'Hưởng lương 13 tháng / năm\r\nĐược đóng các chế độ theo quy định hiện hành', 'Bằng tốt nghiệp THPT, sơ yếu lí lịch\r\nĐơn xin việc', '2017-12-03', 'Nguyễn Thị Kim', 'Quận 1 - TP. Hồ Chí Minh', 'kimnt@traphaco.vn', '0129873412', 'Nhân viên kinh doanh', '7 - 10 triệu', 'TP. Hồ Chí Minh', 'doainguyen1997', '2017-11-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_ty`
--

CREATE TABLE `cong_ty` (
  `ma_cong_ty` int(11) NOT NULL,
  `ten_cong_ty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `linh_vuc_kinh_doanh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cong_viec` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `lien_lac` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `vai_tro` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_viec`
--

CREATE TABLE `cong_viec` (
  `ma_cong_viec` int(11) NOT NULL,
  `ten_cong_viec` varchar(300) NOT NULL,
  `luong` varchar(300) NOT NULL,
  `noi_lam_viec` varchar(300) NOT NULL,
  `yeu_cau` varchar(300) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `kinh_nghiem` varchar(300) NOT NULL,
  `bang_cap` varchar(300) NOT NULL,
  `loai_cong_viec` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_viet_bai`
--

CREATE TABLE `nguoi_viet_bai` (
  `ma_nguoi_viet` int(11) NOT NULL,
  `ten_nguoi_viet` varchar(100) NOT NULL,
  `gioi_tinh` varchar(5) NOT NULL,
  `dia_chi` varchar(300) NOT NULL,
  `dien_thoai` varchar(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `vai_tro` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `ma_tai_khoan` int(11) NOT NULL,
  `ten_dang_nhap` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ho_ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`ma_tai_khoan`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `ngay_sinh`, `email`, `gioi_tinh`, `dia_chi`, `so_dien_thoai`) VALUES
(1, 'doainguyen1997', 'doai1997k60', 'Nguyễn Hữu Đoài', '2017-01-15', 'doainh@vhc.com.vn', 'Nam', 'Hưng Yên', '0904616491');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`ma_bai_viet`);

--
-- Chỉ mục cho bảng `cong_ty`
--
ALTER TABLE `cong_ty`
  ADD PRIMARY KEY (`ma_cong_ty`),
  ADD KEY `ten_cong_ty` (`ten_cong_ty`);

--
-- Chỉ mục cho bảng `cong_viec`
--
ALTER TABLE `cong_viec`
  ADD PRIMARY KEY (`ma_cong_viec`);

--
-- Chỉ mục cho bảng `nguoi_viet_bai`
--
ALTER TABLE `nguoi_viet_bai`
  ADD PRIMARY KEY (`ma_nguoi_viet`),
  ADD KEY `ten_nguoi_viet` (`ten_nguoi_viet`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`ma_tai_khoan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cong_ty`
--
ALTER TABLE `cong_ty`
  MODIFY `ma_cong_ty` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `cong_viec`
--
ALTER TABLE `cong_viec`
  MODIFY `ma_cong_viec` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `nguoi_viet_bai`
--
ALTER TABLE `nguoi_viet_bai`
  MODIFY `ma_nguoi_viet` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
