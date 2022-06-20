-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220619.196dad2777
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2022 lúc 09:26 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `batdongsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `batdongsan`
--

CREATE TABLE `batdongsan` (
  `maBatDongSan` int(10) NOT NULL,
  `maNguoiDung` int(10) NOT NULL,
  `maHangMuc` int(10) NOT NULL,
  `maHinhThuc` int(10) NOT NULL,
  `maLoaiTinDang` int(10) NOT NULL,
  `tieuDe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngayBatDau` date NOT NULL,
  `ngayKetThuc` date NOT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dienTich` int(15) NOT NULL,
  `giaTien` int(15) NOT NULL,
  `moTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thongTinPhapLy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `soPhongNgu` int(15) NOT NULL,
  `soPhongVeSinh` int(15) NOT NULL,
  `soTang` int(15) NOT NULL,
  `huongNha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matTien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notThat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maHinhAnh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `maGiaoDich` int(10) NOT NULL,
  `maNguoiDung` int(10) NOT NULL,
  `gia` int(15) NOT NULL,
  `noiDung` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thoiGianGiaoDich` date NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maHinhAnh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangmuc`
--

CREATE TABLE `hangmuc` (
  `maHangMuc` int(10) NOT NULL,
  `tieuDe` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `moTa` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangmuc`
--

INSERT INTO `hangmuc` (`maHangMuc`, `tieuDe`, `moTa`) VALUES
(1, 'Bất động sản có đầu tư xây dựng', 'Gồm những bất động sản chính như sau:\r\n– Bất động sản nhà đất ( bao gồm đất đai và các tài sản gắn liền với đất đai )\r\n– Bất động sản nhà xưởng và công trình thương mại – dịch vụ.\r\n– Bất động sản hạ tầng, bất động sản trụ sở làm việc, v..v..'),
(2, 'Bất động sản không đầu tư xây dựng', '– Đất nông nghiệp\r\n– Đất nuôi trồng thủy sản\r\n– Đất làm muối\r\n– Đất hiếm\r\n – Đất chưa sử dụng'),
(3, 'Bất động sản đặc biệt', '– Các công trình bảo tồn quốc gia\r\n– Di sản văn hóa vật thể\r\n– Nhà thờ họ, đình chùa, miếu mạo.\r\n– Nghĩa trang, ...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `maHinhAnh` int(10) NOT NULL,
  `hinhAnh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`maHinhAnh`, `hinhAnh`) VALUES
(1, 'hinh1.jpg'),
(2, 'hinh2.jpg'),
(3, 'hinh3.jpg'),
(4, 'hinh4.jpg'),
(5, 'hinh5.jpg'),
(6, 'hinh6.jpg'),
(7, 'hinh7.jpg'),
(8, 'hinh8.jpg'),
(9, 'hinh9.jpg'),
(10, 'hinh10.jpg'),
(11, 'hinh11.jpg'),
(12, 'hinh12.jpg'),
(13, 'hinh13.jpg'),
(14, 'hinh14.jpg'),
(15, 'hinh15.jpg'),
(16, 'hinh16.jpg'),
(17, 'hinh17.jpg'),
(18, 'hinh18.jpg'),
(19, 'hinh19.jpg'),
(20, 'hinh20.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthuc`
--

CREATE TABLE `hinhthuc` (
  `maHinhThuc` int(10) NOT NULL,
  `tenHinhThuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitindang`
--

CREATE TABLE `loaitindang` (
  `maLoaiTinDang` int(10) NOT NULL,
  `tenLoaiTinDang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(15) NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `maNguoiDung` int(10) NOT NULL,
  `maPhanQuyen` int(10) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioiTinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `canCuocCongDan` int(14) NOT NULL,
  `matKhau` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soDu` int(11) NOT NULL,
  `facebook` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `maPhuongXa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `maPhanQuyen` int(10) NOT NULL,
  `tenPhanQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `moTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongxa`
--

CREATE TABLE `phuongxa` (
  `maPhuongXa` int(10) NOT NULL,
  `tenPhuongXa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maQuanHuyen` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `maQuanHuyen` int(10) NOT NULL,
  `tenQuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maTinhThanh` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhthanh`
--

CREATE TABLE `tinhthanh` (
  `maTinhThanh` int(10) NOT NULL,
  `tenTinhThanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `maTinTuc` int(10) NOT NULL,
  `maHangMuc` int(10) NOT NULL,
  `tieuDe` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `noiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `huongDan` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maHinhAnh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`maTinTuc`, `maHangMuc`, `tieuDe`, `noiDung`, `huongDan`, `maHinhAnh`) VALUES
(2, 1, 'Shop VinWonders Phú Quốc mở bán phân khu Palma từ Q2/2022', 'Sau thành công ấn tượng từ Giai đoạn 1 Shop thương mại ngay cửa ngõ bước vào công viên VinWonder – công viên chủ đề lớn nhất Việt Nam tại Phú Quốc, giữa năm 2021, CĐT Vinpearl đã đóng giỏ hàng cuối cùng của GĐ1 trong tháng 12/2021 và Giai đoạn 2 đầu tháng 4/2022. Trong Q2/2022, CĐT sẽ mở bán Giai đoạn 3 những căn shop cuối cùng thuộc GĐ3 – phân khu Palma. Đây là bước phát triển tiếp theo của Vingroup trên Đảo Ngọc Phú Quốc.\r\n\r\nVới hàng loạt các tiện ích đã được hoàn thiện như Sân Golf, VinPearl Safari, Công viên chủ đề VinWonders (khai trương chính thức vào tháng 6/2020) và Casino Corona. Đặc biệt, việc đi vận hành PHÚ QUỐC UNITED CENTER – “TRUNG TÂM GIẢI TRÍ NGHỈ DƯỠNG KHÔNG NGỦ” HÀNG ĐẦU KHU VỰC từ tháng 4/2021, dự án VinWonders chính là mảnh ghép hoàn hảo cho hàng triệu du khách tới Phú Quốc hàng năm.\r\n\r\n\r\nShop Palma Town – Phú Quôc United Center\r\nChuỗi shop tọa lạc ngay khu vực cửa ngõ của Công viên chủ đề lớn ở Việt Nam – VinWonders Phú Quốc và bám dọc theo mặt đường huyết mạch DT45. Vị trí này được đánh giá là điểm bắt đầu cũng là điểm kết thúc của cuộc hành trình khám phá thiên đường vui chơi giải trí của khu vực. Chính vì vậy, các căn Shop VinWonders được gọi là Bất động sản đầu tư “vùng xanh”.\r\n\r\nBĐS vùng xanh là khái niệm chỉ những vùng đất tiềm năng, an toàn, quy tụ đủ 3 yếu tố gồm: hạ tầng giao thông phát triển, không gian thiên nhiên lý tưởng và sở hữu công trình tầm cỡ, sáng giá để bất kỳ nhà đầu tư nào cũng có thể an tâm xuống tiền.\r\n\r\n\r\nDo vậy, Shop VinWonders hội tụ đầy đủ các yếu tố đảm bảo đầu tư chắc thắng gồm: Quy Mô, Quy Hoạch rõ ràng và Vận Hành chuyên nghiệp, cụ thể:\r\n\r\n? QUY MÔ BAO QUANH THIÊN ĐƯỜNG GIẢI TRÍ VINWONDERS\r\n\r\nDự án với quy mô 729 căn shop bao quanh công viên chủ đề – là nơi thu hút lượng lớn khách du lịch đến Phú Quốc. Các căn shop được thiết kế phong cách thị trấn cổ tích mầu sắc lãng mạn, trái tim giao thương sầm uất ngay cửa ngõ bước vào xứ sở thần tiên VinWonders Phú Quốc.\r\n\r\n? QUY HOẠCH TRONG SIÊU QUẦN THỂ DU LỊCH KHÔNG NGỦ\r\n\r\nShop Vinwonders nằm trong thiên đường giải trí VinWonders với sức hút hàng chục nghìn lượt khách mỗi ngày. Hơn nữa VinWonders còn là thành viên trong bộ tứ quyền lực tại Phú Quốc United Center – giúp gia tăng lượt tham quan đồng đều tại mỗi khu là tiền đề quan trọng thúc đẩy hoạt động kinh doanh của siêu quần thể du lịch.\r\n\r\nPhú Quốc United Center\r\n? VẬN HÀNH CHUYÊN NGHIỆP BỞI VINCOM RETAIL\r\n\r\nShop VinWonders được vận hành bởi Vincom Retail – đơn vị vận hành uy tín với 17 năm kinh nghiệm vận hành chuỗi trung tâm thương mại khắp cả nước – bảo đảm cho các thương hiệu mua sắm, vui chơi trải trí hàng đầu, mang đến trải nghiệm xứng tầm có một không hai tại Shop VinWonders. Đồng thời Vincom Retail đóng vai trò quản lý khu shop để luôn đảm bảo chất lượng hoạt động tốt nhất đến với khách hàng.\r\n\r\nBởi vậy, Shop VinWonders hứa hẹn sẽ là nền kinh tế đêm hoạt động trơn tru, mượt mà, đem lại nguồn thu khủng, mở ra cơ hội đầu tư không thể bỏ lỡ những ai muốn tìm một sản phẩm an nhiên sinh lời.\r\n\r\nNhững điểm nổi bật trong chính sách bán hàng:\r\n\r\n– Giá bán dự kiến GĐ3 từ 12,5 tỷ đồng/căn ++ => vốn ban đầu chỉ từ 3,65 tỷ (~30%)\r\n– Chủ đầu tư cam kết thu nhập tối thiểu 5%/năm trong 2 năm đầu.\r\n– Ngân hàng cho vay lên đến 70% (bao gồm VAT) và được ân hạn gốc và hỗ trợ lãi suất, phí trả nợ trước hạn 0% đến 24 tháng. Ân hạn gốc tối đa 5 năm.\r\n=> Dự kiến bàn giao từ Q1/2023 do vậy khách hàng mua xong nhận nhà để ở và kinh doanh sau hơn 1 năm mới bắt đầu trả lãi và 3-4 năm sau mới trả gốc cho ngân hàng!\r\n– Tặng voucher VinFast lên đến 200 triệu đồng.\r\n– Chiết khấu mua sớm lên đến 8%.\r\n\r\nCác lưu ý khi giữ chỗ chính thức để mua Shop VinWonders:\r\n\r\nGiai đoạn 3 – The Palma Town: vị trí tại ngay tuyến đường vào Casino và biệt thự biển cũng như khách sạn VinOasis. Hiện đang nhận booking và dự kiến mở bán tiểu khu Cochem từ đầu T5/2022.\r\n\r\nTiền cọc thiện chí vào CĐT: 100 triệu/căn (CĐT sẽ sắp xếp thứ tự ưu tiên cho cọc thiện chí sớm)\r\nĐại lý nhận cọc và bán chính thức: Ann Home – F1 phân phối dự án\r\nKhách hàng giữ chỗ sớm sẽ được ưu tiên chọn căn đẹp và giá gốc CĐT.\r\nGiai đoạn 1 – The Fairy Town: Mở bán chỉ 210 căn ngay cổng vào công viên VinWonders – lớn nhất Việt Nam và là 1 trong 4 điểm đến hấp dẫn nhất Phú Quốc. Đã bán hết đầu T12/2021.\r\n\r\nGiai đoạn 2 – The Greek Town: Mở bán 231 căn tại ngay tuyến đường vào Casino và biệt thự biển cũng như khách sạn VinOasis. Đã bán hết đầu T4/2022.\r\n\r\nThông tin tổng quan\r\nPhát triển dự án	Tập đoàn Vingroup\r\nVị trí:	Khu vực cổng vào VinWonders và mặt ngoài VinWonders, nằm dọc từ Vinmec đến hết Sân Golf Vinpearl Phú Quốc.\r\nQuy mô	– 729 căn shophouse\r\n– Diện tích đất: 37m2, 75m2 – 129m2\r\n– Diện tích xây dựng: TB 220m2\r\n– Mỗi căn được thiết kế từ 2-3 tầng\r\n– Phân bổ tại các phân khu:\r\nGiai đoạn 1: Fairy Town – 210 căn\r\n1. Shop quảng trường Grimm\r\n2. Shop thị trấn Garish\r\n3. Shop làng Colmar\r\n4. Shop làng European\r\nGiai đoạn 2: Greek Town – 231 căn\r\n5. Shop làng Cochem\r\n6. Shop làng OIA\r\n7. Shop làng Kazan\r\nGiai đoạn 3: Palma Town – 280 căn\r\n8. Notting Hill – London\r\n9.Centara – Địa Trung Hải\r\nThời gian mở bán	Chia làm các giai đoạn:\r\n– Giai đoạn 1: mở bán 210 căn Fairy Town ngay trong T4-12/2021 => Đã bán hết\r\nĐợt 1: từ 9/4/2021 (VW1-2-3-4-5)\r\nĐợt 2: từ 27/4/2021 (VW7-8-9)\r\nĐợt 3: từ cuối Q2/2021 (VW15-16-17)\r\nĐợt cuối: 32 căn shop nằm trong phân khu European Avenue.\r\n– Giai đoạn 2: mở bán 231 căn Greek Town trong Q1/2022=> Đã bán hết\r\nĐợt 1: từ 4/1/2022 (Shop OIA)', 'Tiến độ triển khai VinWonders Phú Quốc:\r\n\r\nĐã hoàn thiện và đang cho vận hành thử các hạng mục trò chơi\r\nNgày 1/6/2020 đã chính thức khai trương công viên chủ đề lớn nhất Việt Nam.\r\nNgày 30/4/2021: show “Once” lừng danh sẽ trình diễn tại quảng trường Phượng Hoàng lửa của Công viên chủ đề lớn nhất Việt Nam VinWonders Phú Quốc. Đây là show diễn thực cảnh đa phương tiện hoành tráng hàng đầu Châu Á, được đầu tư gần 12 triệu đô, do Quantum Creative (Mỹ) – đơn vị chuyên về show, nhạc kịch, nhạc hội cho các công viên chủ đề hàng đầu và các nghệ sỹ nổi tiếng – thiết kế và chỉ đạo trình diễn.\r\n\r\nTại sao VinWonders là bước ngoặt khiến du lịch Phú Quốc lên một tầm cao mới\r\nSự thiếu vắng các quần thể vui chơi giải trí tầm vóc quốc tế chính là nguyên nhân khiến du lịch Việt Nam một thời gian dài chưa thể cất cánh, dù rất tiềm năng.\r\n\r\nChính vì vậy, năm 2020 chính là bước ngoặt, đánh dấu du lịch trong nước tiến lên một đẳng cấp mới với sự xuất hiện của VinWonders Phú Quốc. Sau VinWonders Nha Trang, ', 8),
(3, 2, 'Những vướng mắc pháp lý, chính sách liên quan tới bất động sản nông nghiệp', 'Một trong những vướng mắc hiện nay để có thể phát triển thị trường bất động sản nông nghiệp là vấn đề hạn điền. Theo quy định hiện tại, hạn điền chỉ từ 2ha đến 3ha. Nếu tập trung vượt quá 10 lần sẽ chuyển sang thuê của Nhà nước. Việc thế chấp đất chỉ dựa trên số tiền thuê của Nhà nước. Vì vậy, các chủ thể tích tụ, tập trung ruộng đất gặp khó khăn trong việc tạo lập và tìm kiếm nguồn vốn để đầu tư, kinh doanh. Bên cạnh đó, các quy định về chủ thể có thể được mua quyền sử dụng đất cũng đang là một hạn chế cho các nhà đầu tư vào nông nghiệp trong việc tiếp cận đất đai.\r\n\r\nViệc tập trung ruộng đất cũng còn nhiều vấn đề cần giải quyết, bao gồm lợi ích các bên liên quan (người dân có đất nông nghiệp, chủ doanh nghiệp đầu tư vào nông nghiệp, Nhà nước có tham gia thu hồi và giao đất không hay tự các bên doanh nghiệp và người dân quyết định) sẽ có vai trò, trách nhiệm như thế nào? Khi doanh nghiệp không tiếp tục đầu tư nông nghiệp nữa thì việc trao trả lại đất cho các chủ sử dụng đất được thực hiện ra sao? Mặc dù còn nhiều tiềm năng nâng cao giá trị sử dụng đất nông nghiệp và chính người nông dân cũng chưa sử dụng triệt để tư liệu sản xuất của mình, thậm chí là bỏ ruộng. Nhưng khi các doanh nghiệp bắt tay đầu tư vào lĩnh vực nông nghiệp, chuyển sử dụng đất từ “tiểu điền” sang “đại điền”, thì lại mắc kẹt trong vấn đề tiếp cận đất để sản xuất.\r\n\r\nThị trường chuyển đổi đất nông nghiệp sang đất phi nông nghiệp còn nhiều bất cập về cách thức thu hồi, về giá đất đền bù giải tỏa, thu hồi, về giao đất có hay không có đấu thầu…, cùng nhiều vướng mắc khác cần giải quyết để bảo đảm hài hòa giữa phát triển và ổn định.\r\n\r\nViệc đô thị hóa là tất yếu của quá trình phát triển kinh tế – xã hội. Tuy nhiên, tiến trình đô thị hóa và quy hoạch đất, nhất là đất nông nghiệp và địa bàn nông thôn trong quá trình đô thị hóa, lại đặt ra không ít vấn đề, như đô thị hóa theo hướng mở rộng tiệm cận hay đô thị hóa theo hướng đi tắt đón đầu; vấn đề xử lý giá trị đất nông nghiệp khi đô thị hóa trở thành đất đô thị… Thực tế hiện nay, cùng với việc ra đời của Luật Quy hoạch, nhiều vấn đề được giải quyết, trong đó có quy hoạch tổng thể phát triển kinh tế – xã hội và quy hoạch sử dụng đất. Tuy nhiên, quy hoạch phát triển đô thị vẫn tuân theo Luật Phát triển đô thị, vì vậy, vấn đề quy hoạch chuyển dịch đất nông nghiệp thành đất đô thị vẫn được chế tài cùng lúc bởi hai luật này.\r\n\r\nVấn đề phân chia lợi ích trong khu vực có lợi ích gia tăng do đầu tư các công trình hạ tầng được các văn bản quy phạm pháp luật điều chỉnh dựa trên thực tế. Nếu theo phương hướng này, về cơ bản, sẽ không có nhiều vấn đề phát sinh, nhưng nguồn vốn đầu tư hạ tầng sẽ ngày một lớn và không có cơ chế và nguồn bù đắp. Có nhiều ý kiến, quan điểm cho rằng, cần điều chỉnh các lợi ích tạo ra khi có công trình hạ tầng một cách hài hòa; mà một trong những phương thức được đề xuất là tạo quỹ đất hành lang công trình hạ tầng để tạo vốn phát triển kết cấu hạ tầng.\r\n\r\nTiềm năng thị trường BĐS nông nghiệp?\r\nThị trường bất động sản nông nghiệp ở Việt Nam có thời gian phát triển còn ngắn, thể chế chưa hoàn thiện, các yếu tố cấu thành thị trường còn thiếu… Tuy nhiên, cùng với chủ trương đẩy mạnh công nghiệp hóa, hiện đại hóa nông nghiệp, đầu tư nông nghiệp công nghệ cao của Đảng, Nhà nước, thị trường bất động sản nông nghiệp cũng cần được chính thức hóa và phát triển.\r\n\r\nSự hình thành mô hình kinh doanh này, ban đầu chỉ nhằm mục đích kinh doanh dưới mô hình trang trại, chăn nuôi hoặc trồng cấy… như trồng hoa có giá trị cao, chăn nuôi bò, cừu, đà điểu, trâu, cá tôm, cá sấu, nuôi trai lấy ngọc, thủy hải sản, rừng trồng… Theo đó, bất động sản nông nghiệp do chính các nhà đầu tư bỏ vốn đầu tư xây dựng để cho thuê phục vụ khách du lịch nghỉ dưỡng khi có nhu cầu.\r\n\r\nMặt khác, các nhà đầu tư thứ cấp có thể đầu tư một khoản tài chính để thu lợi nhuận xuất phát từ việc có được các vườn cây, vườn hoa để khách hàng có nhu cầu quay phim, chụp ảnh… sau đó là kết hợp nghỉ dưỡng gia đình, tập thể, đồng thời cho khách thuê làm nơi thăm quan du lịch.\r\n\r\nCần nhận diện để làm rõ bất động sản nông nghiệp, chủ bất động sản có thể kết hợp kinh doanh với tham quan du lịch để có thể quảng cáo và thu lợi nhuận từ cả hai nguồn sản xuất và kinh doanh du lịch sinh thái.\r\n\r\nBất động sản nông nghiệp là phần bất động sản được chỉ định hoặc được phép thực hiện hoạt động nông nghiệp. Thị trường bất động sản nông nghiệp là thị trường ở đó bất động sản nông nghiệp và dịch vụ bất động sản nông nghiệp được giao dịch.\r\n\r\nCác bất động sản nông nghiệp có thể được giao dịch thuần túy trong nông nghiệp, cũng có thể được giao dịch để rời khỏi khu vực nông nghiệp sang các khu vực khác. Quá trình mà đất, quyền sử dụng đất, các bất động sản nông nghiệp chuyển từ khu vực nông nghiệp sang khu vực đô thị, khu vực dịch vụ, khu vực công nghiệp cũng là một bộ phận của thị trường bất động sản nông nghiệp.\r\n\r\nCó 3 thị trường bộ phận của thị trường bất động sản nông nghiệp, trước hết là thị trường quyền sử dụng đất nông nghiệp. Đây là thị trường giao dịch các thửa đất nông nghiệp trong qua trình dồn điền, đổi thửa và tập trung tích tụ ruộng đất. Phân mảng thị trường này không làm thay đổi mục đích sử dụng đất, chỉ làm thay đổi chủ sử dụng đất hoặc thay đổi diện tích thửa đất.\r\n\r\nThị trường chuyển nhượng đất nông nghiệp, mua bán rừng cây, vườn cây… phát triển góp phần nâng cao hiệu quả của nền nông nghiệp sản xuất hàng hóa. Thị trường bộ phận thứ hai của bất động sản nông nghiệp là thị trường đất ở nông thôn. Phân mảng thị trường này không làm thay đổi mục đích sử dụng đất, chỉ làm thay đổi chủ sử dụng đất (sang nhượng, tập trung hoặc chia nhỏ), hoặc thay đổi loại đất, từ đất ở nông thôn sang đất ở thành thị (trong quá trình đô thị hóa).\r\n\r\nThị trường bộ phận thứ ba là phân mảng thị trường đất nông nghiệp có yếu tố chuyển đổi mục đích sử dụng đất. Chẳng hạn, từ đất nông nghiệp sang đất công nghiệp, dịch vụ, đô thị. Bộ phận thị trường này diễn ra khá rộng khắp ở những nơi công nghiệp hóa, đô thị hóa và chuyển đổi ngành nghề kinh doanh. Các bên liên quan trong phân mảng thị trường này cũng khá đa dạng, bao gồm các chủ sử dụng đất nông nghiệp, các chủ nhận sử dụng đất và Nhà nước như một bên trong thị trường (đứng ra thu hồi, giao đất, cho thuê đất).', 'Giải pháp phát triển bền vững thị trường bất động sản nông nghiệp tại Việt Nam\r\nThị trường bất động sản nông nghiệp là một bộ phận của thị trường bất động sản. Tuy nhiên, do tính đặc thù của nền kinh tế thị trường định hướng xã hội chủ nghĩa ở Việt Nam, của thị trường bất động sản nông nghiệp (liên quan đến quyền sử dụng đất nông nghiệp – vừa là công cụ sản xuất, vừa phải bảo đảm an ninh lương thực, ổn định xã hội và phát triển bền vững môi trường) nên cần thực hiện đồng bộ nhiều giải pháp để phát triển bền vững thị trường bất động sản nông nghiệp Việt Nam:\r\n\r\nMột là, cần hoàn thiện thể chế, nhất là cần thống nhất tránh chồng chéo các quy định về bất động sản nông nghiệp trong Luật Đất đai, Luật Nhà ở, Luật Quy hoạch, Luật Kinh doanh bất động sản, Luật Phát triển đô thị, Luật Đầu tư công, Luật Đầu tư, Luật Doanh nghiệp, Luật Đấu thầu, Luật Thuế (nghiên cứu trình ban hành các luật thuế chưa có, theo thông lệ quốc tế, đặc biệt luật thuế chống đầu cơ bất động sản), Luật Các tổ chức tín dụ', 2),
(4, 2, 'Phát triển bất động sản nông nghiệp nhìn từ thế giới', 'Theo TS. Lê Xuân Nghĩa, Nguyên Phó Chủ tịch Ủy ban Giám sát tài chính Quốc gia, tại một số quốc gia trên thế giới có rất nhiều mô hình mà nước ta có thể học tập để tập trung, tích tụ ruộng đất  sản xuất quy mô lớn.\r\n\r\nỞ các nước Đông Nam Á như Thái Lan, Malaysia, Indonesia, Philippines… không có quá trình cải cách ruộng đất, không chia ruộng cho nông dân nên diện tích ruộng phần lớn vẫn nằm trong tay các điền chủ và nông dân chỉ đi làm thuê.\r\n\r\nChính vì thế, đất đai coi như đã được tập trung. Chính phủ quy hoạch đất thành từng vùng như đất đô thị, đất công nghiệp, đất thương mại dịch vụ và đất nông nghiệp. Trong đó, đất nông nghiệp được quản lý chặt chẽ nhất. Điều này có nghĩa, việc chuyển đổi mục đích sử dụng đất rất hãn hữu, trừ những trường hợp thực sự đặc biệt, song cũng phải trải qua rất nhiều khâu thẩm định.\r\n\r\nBất động sản nông nghiệp là gì? Tiềm năng thị trường BĐS nông nghiệp?\r\nĐất nông nghiệp ở các nước Đông Nam Á được quản lý chặt chẽ.\r\n\r\nBên cạnh đó, do đất đai được tập trung trước nên thuận tiện khi đi vào sản xuất lớn, không phải dồn điền, đổi thửa như ở Việt Nam. Tuy vậy, có một nhược điểm là nông dân không được chia ruộng, nên nông dân không tối đa hóa được sản lượng của nông nghiệp. Do đó, không tối đa hóa được thu nhập của nông dân, kéo theo, họ không có sức mua hàng công nghiệp, cứ đi làm thuê, cứ nghèo mãi. Đó cũng là một trong những lý do khiến những nước này không phát triển được công nghiệp.\r\n\r\nNgược lại, ở các nước Đông Bắc Á như Hàn Quốc, Trung Quốc, nông dân được chia ruộng. Có một lợi thế suốt một thời gian dài, họ đã tối đa hóa được sản lượng nông nghiệp, nâng cao rất nhanh thu nhập của nông dân, tạo ra sức mua rất lớn cho nông dân với hàng công nghiệp. Nói cách khác, họ đã tạo ra nguồn lực tài chính cho quá trình công nghiệp hóa, tạo ra thị trường nội địa cho công nghiệp. Song, cũng có một nhược điểm là đã đến thời điểm phải tiến hành công cuộc mới là dồn điền, đổi thửa, tập trung đất đai.  Điều đó dẫn đến hình thành thị trường mua bán, chuyển nhượng đất nông nghiệp.\r\n\r\nỞ Việt Nam, có một số điểm cần nghiên cứu và học tập kinh nghiệm nước ngoài, cụ thể: Thứ nhất, quy hoạch đất nông nghiệp và các khu vực khác của Việt Nam tương đối lỏng lẻo. Nguyên nhân là do quá trình đô thị hóa cần rất nhiều đất cho công nghiệp, thương mại dịch vụ, đất làm nhà ở. Song cũng xuất phát câu chuyện: Cầu về nhà ở rất lớn, nên nảy sinh hiện tượng đầu cơ đất đai rất phổ biến. Ngoài ra, nhà ở trên đất nông nghiệp mọc lên tự phát và chính quyền cũng tìm cách hợp thức hóa. Nguồn hàng trên thị trường cũng không minh bạch, không rõ ràng.\r\n\r\nTiếp theo, mua bán không thông qua môi giới, cũng không thông qua tư vấn để điều tra về hiện trạng hàng hóa. Do đó, các mua bán phi chính thức, trao tay, giao dịch ngầm, làm thị trường ngày càng trở nên không minh bạch.\r\n\r\nBất động sản nông nghiệp là gì? Tiềm năng thị trường BĐS nông nghiệp?\r\nQuy hoạch đất nông nghiệp và các khu vực khác của Việt Nam tương đối lỏng lẻo.\r\n\r\nĐồng thời, không có bảo hiểm về quyền sở hữu đất nông nghiệp. Khi mua bán một mảnh đất rất rắc rối về quyền sở hữu: Từ bố mẹ, con cái cho đến dòng họ, hàng xóm… Các nước có bảo hiểm nên việc mua bán rất rõ ràng, minh bạch, được tiến hành thuận lợi. Phân tích như vậy để thấy, thị trường bất động sản nông nghiệp của Việt Nam có nhiều yếu tố không minh bạch, không rõ ràng và chưa có tính ổn định lâu dài, sự vững chắc về mặt pháp lý. Người mua rất ngại, vì họ có thể phải đối diện với những rủi ro pháp lý bất cứ lúc nào.\r\n\r\nTheo TS. Lê Xuân Nghĩa cho rằng, phải khẳng định phát triển bất động sản nông nghiệp là xu hướng tất yếu, gắn với tái cấu trúc nền kinh tế theo hướng phát triển thương mại – dịch vụ và công nghiệp. Vấn đề đặt ra là chính phủ phải có một chiến lược toàn diện về việc giải quyết vấn đề bất động sản trong nông nghiệp như thế nào. Quan trọng nhất phải có đẩy đủ nền tảng pháp lý, phải an toàn, dài hạn cho nhà đầu tư. Trên cơ sở đó, mới tập trung được nguồn lực đất đai để đi vào sản xuất lớn.\r\n\r\nDo đó, phải để ruộng trở thành tài sản đảm bảo để nông dân có thể vay vốn. Đồng thời, phải có đạo luật, bảo hiểm về quyền sở hữu. Đó là cơ sở để mua bán, chuyển nhượng, thế chấp, cho thuê đất nông nghiệp.\r\n\r\nThực ra, cơ chế tín dụng không quan trọng bằng cơ chế pháp lý. Khi có pháp lý sẽ hình thành thị trường minh bạch, tức là có thanh khoản. Khi đã có thanh khoản thì ngân hàng sẽ sẵn sàng nhận đất nông nghiệp như một tài sản thế chấp.', 'Kinh nghiệm đầu tư bất động sản nông nghiệp hiệu quả?\r\nViệc đầu tư vào đất nông nghiệp, nếu không nắm rõ kiến thức về pháp luật sẽ rất mạo hiểm. Dưới đây một số kinh nghiệm mua đất nông nghiệp an toàn, tránh rủi ro.\r\n\r\n1. Xác định mảnh đất có nằm trong quy hoạch không\r\n\r\nHầu hết các loại đất nông nghiệp nằm khá nhiều trong các dự án xây dựng của nhà nước. Nếu mảnh đất đó bạn đang định mua có trong dự án, chắn bạn sẽ không thể được phép sử dụng cho mục đích sinh sống.\r\n\r\nĐể giải quyết vấn đề này cách tốt nhất bạn nên chủ động lên UBND quận/huyện để hỏi về kế hoạch sử dụng đất hàng năm. Nó giúp bạn tránh gặp rủi ro khi chẳng may mua phải mảnh đất này\r\n\r\nNếu mảnh đất nông nghiệp bạn đang tìm hiểu chưa quy hoạch, nhưng cũng chưa được quy hoạch làm đất ở thì việc chuyển đổi gần như không thể. Do đó cũng không nên mạnh tay đầu tư vào mua mảnh đất này.\r\n\r\n\r\n\r\nNhiều người chọn mua đất nông nghiệp làm lĩnh vực đầu tư bất động sản với hi vọng chuyển đổi mục đích sử dụng lên đất thổ cư, hưởng lợi', 19),
(6, 3, 'Bán lô đất khu nghỉ dưỡng, trang trại lưng tựa núi tại huyện Ba Vì, Hà Nội. Dt 13576m2 - Giá 5tr/m2', 'Thông tin mô tả\r\nBán lô đất khu nghỉ dưỡng, trang trại lưng tựa núi tại huyện Ba Vì, Hà Nội. Dt 13576m2 - Giá 5tr/m2.\r\n- Lô đất nghỉ dưỡng, đường vào Khoang Xanh, nằm trong quần thể khu du lịch sinh thái Hồ Thiên Nga - Ba Vì, cạnh Villa de Montana. Lưng tựa núi dưới có hồ nước, phong thủy hữu tình, phù hợp làm khu du lịch sinh thái, homestay, nghỉ dưỡng.\r\n+ Liên hệ xem: 0983776*** - Quang Nghĩa (Không có phí môi giới, môi giới tránh làm phiền).\r\n- Đường vào đã trải nhựa, bê tông 2 oto tránh nhau, đường đi vào rất đẹp cho.\r\n- Xung quanh đã có 4 khu Villa và Resort vận hành khai thác cho thuê nghỉ dưỡng.\r\n- Địa chỉ:, Thôn Bài, Xã Yên Bài, Huyện Ba Vì, Hà Nội.\r\n- Vị trí đất nằm trong khu vực trung tâm của khu du lịch.\r\n- Tiện ích xung quanh đầy đủ, đường sá rộng dễ đi.\r\n- Diện tích: 13576 m2, có 1200m2 đất ở, hiện đang tách 4 sổ đỏ riêng.\r\n- Giá bán: 5tr /m2.', '+ Liên hệ xem: 0983776543 - Quang Nghĩa (Không có phí môi giới, môi giới tránh làm phiền).', 16),
(7, 3, 'Chính chủ bán đất mặt hồ Suối Hai cực đẹp! DT 29.300m2 pháp lý rõ ràng, LH 0902436888', 'Thông tin mô tả\r\nDiện tích: 29.300m2.\r\nGiá: 1.8tr/m2 (18 tỉ/ha).\r\nHiện trạng: Vườn cây ăn quả, cây bóng mát, khu trang trại 3.000m2, nhà điều hành, nhà nhân viên, hệ thống tưới tiêu,\r\nPháp lý: Hợp đồng giao khoán trồng cây 50 năm, có đất ở (ONT) ghi trên hợp đồng.\r\nĐất có kế hoạch chuyển giao cho địa phương, cấp sổ đỏ.\r\nQuy hoạch: Quy hoạch đất ONT.\r\n(Quy hoạch Huyện Ba Vì đến 2030 đã được Thủ tướng phê duyệt).', 'Liên hệ làm việc chính chủ: 0902436888.', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeucau`
--

CREATE TABLE `yeucau` (
  `maYeuCau` int(10) NOT NULL,
  `maNguoiDung` int(10) NOT NULL,
  `maBatDongSan` int(10) NOT NULL,
  `thoiGianYeuCau` date NOT NULL,
  `trangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `batdongsan`
--
ALTER TABLE `batdongsan`
  ADD PRIMARY KEY (`maBatDongSan`),
  ADD KEY `maNguoiDung` (`maNguoiDung`),
  ADD KEY `maHangMuc` (`maHangMuc`),
  ADD KEY `maHinhThuc` (`maHinhThuc`),
  ADD KEY `maLoaiTinDang` (`maLoaiTinDang`),
  ADD KEY `maHinhAnh` (`maHinhAnh`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`maGiaoDich`),
  ADD KEY `maNguoiDung` (`maNguoiDung`),
  ADD KEY `maHinhAnh` (`maHinhAnh`);

--
-- Chỉ mục cho bảng `hangmuc`
--
ALTER TABLE `hangmuc`
  ADD PRIMARY KEY (`maHangMuc`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`maHinhAnh`);

--
-- Chỉ mục cho bảng `hinhthuc`
--
ALTER TABLE `hinhthuc`
  ADD PRIMARY KEY (`maHinhThuc`);

--
-- Chỉ mục cho bảng `loaitindang`
--
ALTER TABLE `loaitindang`
  ADD PRIMARY KEY (`maLoaiTinDang`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`maNguoiDung`),
  ADD KEY `maPhanQuyen` (`maPhanQuyen`),
  ADD KEY `maPhuongXa` (`maPhuongXa`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`maPhanQuyen`);

--
-- Chỉ mục cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  ADD PRIMARY KEY (`maPhuongXa`),
  ADD KEY `maQuanHuyen` (`maQuanHuyen`);

--
-- Chỉ mục cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD PRIMARY KEY (`maQuanHuyen`),
  ADD KEY `maTinhThanh` (`maTinhThanh`);

--
-- Chỉ mục cho bảng `tinhthanh`
--
ALTER TABLE `tinhthanh`
  ADD PRIMARY KEY (`maTinhThanh`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`maTinTuc`),
  ADD KEY `maHangMuc` (`maHangMuc`),
  ADD KEY `maHinhAnh` (`maHinhAnh`);

--
-- Chỉ mục cho bảng `yeucau`
--
ALTER TABLE `yeucau`
  ADD PRIMARY KEY (`maYeuCau`),
  ADD KEY `maNguoiDung` (`maNguoiDung`),
  ADD KEY `maBatDongSan` (`maBatDongSan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `batdongsan`
--
ALTER TABLE `batdongsan`
  MODIFY `maBatDongSan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `maGiaoDich` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hangmuc`
--
ALTER TABLE `hangmuc`
  MODIFY `maHangMuc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `maHinhAnh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `hinhthuc`
--
ALTER TABLE `hinhthuc`
  MODIFY `maHinhThuc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaitindang`
--
ALTER TABLE `loaitindang`
  MODIFY `maLoaiTinDang` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `maNguoiDung` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `maPhanQuyen` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  MODIFY `maPhuongXa` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  MODIFY `maQuanHuyen` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinhthanh`
--
ALTER TABLE `tinhthanh`
  MODIFY `maTinhThanh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `maTinTuc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `yeucau`
--
ALTER TABLE `yeucau`
  MODIFY `maYeuCau` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `batdongsan`
--
ALTER TABLE `batdongsan`
  ADD CONSTRAINT `batdongsan_ibfk_1` FOREIGN KEY (`maNguoiDung`) REFERENCES `nguoidung` (`maNguoiDung`),
  ADD CONSTRAINT `batdongsan_ibfk_2` FOREIGN KEY (`maHangMuc`) REFERENCES `hangmuc` (`maHangMuc`),
  ADD CONSTRAINT `batdongsan_ibfk_3` FOREIGN KEY (`maHinhThuc`) REFERENCES `hinhthuc` (`maHinhThuc`),
  ADD CONSTRAINT `batdongsan_ibfk_4` FOREIGN KEY (`maLoaiTinDang`) REFERENCES `loaitindang` (`maLoaiTinDang`),
  ADD CONSTRAINT `batdongsan_ibfk_5` FOREIGN KEY (`maHinhAnh`) REFERENCES `hinhanh` (`maHinhAnh`);

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `giaodich_ibfk_1` FOREIGN KEY (`maNguoiDung`) REFERENCES `nguoidung` (`maNguoiDung`),
  ADD CONSTRAINT `giaodich_ibfk_2` FOREIGN KEY (`maHinhAnh`) REFERENCES `hinhanh` (`maHinhAnh`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`maPhanQuyen`) REFERENCES `phanquyen` (`maPhanQuyen`),
  ADD CONSTRAINT `nguoidung_ibfk_2` FOREIGN KEY (`maPhuongXa`) REFERENCES `phuongxa` (`maPhuongXa`);

--
-- Các ràng buộc cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  ADD CONSTRAINT `phuongxa_ibfk_1` FOREIGN KEY (`maQuanHuyen`) REFERENCES `quanhuyen` (`maQuanHuyen`);

--
-- Các ràng buộc cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD CONSTRAINT `quanhuyen_ibfk_1` FOREIGN KEY (`maTinhThanh`) REFERENCES `tinhthanh` (`maTinhThanh`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`maHangMuc`) REFERENCES `hangmuc` (`maHangMuc`),
  ADD CONSTRAINT `tintuc_ibfk_2` FOREIGN KEY (`maHinhAnh`) REFERENCES `hinhanh` (`maHinhAnh`);

--
-- Các ràng buộc cho bảng `yeucau`
--
ALTER TABLE `yeucau`
  ADD CONSTRAINT `yeucau_ibfk_1` FOREIGN KEY (`maNguoiDung`) REFERENCES `nguoidung` (`maNguoiDung`),
  ADD CONSTRAINT `yeucau_ibfk_2` FOREIGN KEY (`maBatDongSan`) REFERENCES `batdongsan` (`maBatDongSan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



