USE [master]
GO
/****** Object:  Database [Nhom15_WebVanPhongPham]    Script Date: 12/23/2021 10:28:55 PM ******/
CREATE DATABASE [Nhom15_WebVanPhongPham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nhom15_WebVanPhongPham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Nhom15_WebVanPhongPham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nhom15_WebVanPhongPham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Nhom15_WebVanPhongPham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nhom15_WebVanPhongPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET  MULTI_USER 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET QUERY_STORE = OFF
GO
USE [Nhom15_WebVanPhongPham]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[TieuDe] [nvarchar](250) NULL,
	[ngay] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_DH]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DH](
	[MaSp] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[SLBan] [int] NULL,
 CONSTRAINT [PK_ChiTiet_DH] PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaTk] [int] NOT NULL,
	[NgayDat] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSp] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NOT NULL,
	[KhoiLuong] [float] NULL,
	[SLcon] [int] NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[Anh] [varchar](100) NULL,
	[Gia] [float] NOT NULL,
	[SLDat] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MoTa] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/23/2021 10:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTk] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](12) NULL,
	[TenDN] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Ma], [Anh], [NoiDung], [TieuDe], [ngay]) VALUES (1, N'blog1.jpg', N'20h tối 07/08/2021, Bài hát "Khi con thành cha" đã chính thức được phát hành trên kênh YouTube Văn phòng phẩm Hồng Hà.

"Khi con thành cha" là ca khúc đặc biệt khi có sự kết hợp của 3 rapper Rica x Pháo x Piggy và diva thế hệ mới - Lâm Bảo Ngọc. Mỗi người một phong cách, cá tính khác nhau nhưng đã cùng tạo nên bài hát hoàn hảo, lấy đi cảm xúc của bao người.

Một ca khúc về gia đình dành cho mọi lứa tuổi.

Một giai điệu chỉ cần nghe là thấm

Ai nói rap là phải xập xình, phải nổi loạn?

Cùng lắng nghe và cảm nhận nhé

Link bài hát: Khi con thành cha', N'MV "KHI CON THÀNH CHA" CHÍNH THỨC LÊN SÓNG', CAST(N'2021-07-08' AS Date))
INSERT [dbo].[Blog] ([Ma], [Anh], [NoiDung], [TieuDe], [ngay]) VALUES (2, N'blog2.jpg', N'Sáng ngày 27/04/2021 vừa qua, cửa hàng Nhà sách Bưu điện – Hồng Hà đầu tiên đã ra đời và tọa lạc tại số 01 Chu Văn An, phường Yết Kiêu, quận Hà Đông, TP. Hà Nội.


   Nhà sách Bưu điện – Hồng Hà là “thành quả” hợp tác giữa Công ty Cổ phần Văn phòng phẩm Hồng Hà và Tổng Công ty Bưu điện Việt Nam. Với mong muốn đáp ứng được tối đa nhu cầu và tạo sự tiện lợi cho khách hàng, Nhà sách Bưu điện – Hồng Hà hứa hẹn sẽ xuất hiện tại nhiều địa điểm và nhiều tỉnh thành trong tương lai, như Cần Thơ, Hồ Chí Minh, Bình Định, Ninh Bình, Lào Cai, Bạc Liêu, Hà Giang,…', N'Mừng khai trương Nhà sách Bưu điện – Hồng Hà đầu tiên', CAST(N'2021-07-03' AS Date))
INSERT [dbo].[Blog] ([Ma], [Anh], [NoiDung], [TieuDe], [ngay]) VALUES (3, N'blog3.jpg', N'"CHÚC xuân an vui khắp mọi nhà
MỪNG thọ ông bà với mẹ cha
NĂM cũ vừa qua xin cầu chúc
MỚI trọn tình xuân đẹp mặn mà"


Vậy là chỉ còn vài ngày ngắn ngủi nữa thôi, cả đất nước sẽ cùng hân hoan bước sang năm mới hứa hẹn nhiều thành công và đổi mới tích cực.


Nhân dịp Xuân Tân Sửu 2021, Công ty Cổ phần Văn phòng phẩm Hồng Hà xin kính chúc Quý khách hàng năm mới Vạn sự như ý - An khang thịnh vượng.


Cũng nhân dịp này, Hồng Hà chân thành gửi lời cảm ơn, lời tri ân sâu sắc cho sự đồng hành của Quý khách hàng trong thời gian qua.

Thay cho lời cam kết đáp lại niềm tin và sự ủng hộ của Quý khách hàng, Hồng Hà sẽ tiếp tục mang đến những sản phẩm và dịch vụ chất lượng, đúng theo những chiến lược và phương châm hoạt động của Hồng Hà.

 

Ngoài ra, để thuận tiện cho Quý khách hàng mua sắm trong dịp Tết Nguyên Đán 2021, Hồng Hà xin được gửi lịch nghỉ lễ như sau:
📛 Thời gian nghỉ lễ: 10/02 - 16/02/2021

📛 Thời gian làm việc trở lại: ngày 17/02/2021 (tức mùng 06 Tết)

📛 Các đơn hàng nội thành Hà Nội đặt qua website Hồng Hà sẽ gửi đến Quý khách trước thời gian nghỉ Tết

📛 Các đơn hàng ngoại tỉnh từ ngày 05/02/2021 vẫn sẽ được tiếp nhận, tuy nhiên các đơn vị vận chuyển sẽ giao hàng đến Quý khách sau thời gian nghỉ Tết', N'Thông báo lịch nghỉ Tết Nguyên Đán 2021 - Tân Sửu Bình An', CAST(N'2021-05-02' AS Date))
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (1, N'Bút')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (2, N'Sổ-Vở')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (3, N'Đồ dùng văn phòng')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (4, N'Đồ dùng học sinh')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (5, N'Balo-Túi cặp')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (4, 1, 500, 120, N'Văn phòng phẩm Hồng Hà', N'But1.png', 52000, 0, N'Bút bi cao cấp Hồng Hà 291-1 B04 | Bút quà tặng - 9029', N'Bút bi cao cấp Hồng Hà 291-1 B04 - 9029 là sản phẩm thuộc dòng bút cao cấp của công ty CP Văn phòng phẩm Hồng Hà. Bút ký cao cấp Hồng Hà sẽ là sự lựa chọn hàng đầu nếu bạn đang tìm đến một cây bút ký sang trọng, chất lượng với mức giá thành hợp lý.

1. Đặc điểm nổi bật của Bút bi cao cấp Hồng Hà 291-1 B04 - 9029
- Kiểu dáng thiết kế hiện đại, tinh tế.
- Hộp đựng tre vừa truyền thống nhưng không kém phần tinh tế và sang trọng.
- Kích thước nhỏ gọn, vừa tay cầm
- Vỏ bút thiết kế bằng hợp kim sang trọng.
- Nét viết trơn êm, mực ra đều.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (5, 1, 500, 100, N'Văn phòng phẩm Hồng Hà', N'But2.png', 50000, 0, N'Bút dạ bi cao cấp Hồng Hà 220', N'Bút dạ bi cao cấp Hồng Hà 220 | Bút ký quà tặng - 9012 là sản phẩm thuộc dòng bút cao cấp của công ty CP Văn phòng phẩm Hồng Hà. Bút ký cao cấp Hồng Hà sẽ là sự lựa chọn hàng đầu nếu bạn đang tìm đến một cây bút ký sang trọng, chất lượng với mức giá thành hợp lý.

')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (6, 1, 500, 50, N'Văn phòng phẩm Hồng Hà', N'But3.png', 45000, 0, N'Bút máy cao cấp Hồng Hà 319/HDN13', N'Bút máy cao cấp Hồng Hà 319/HDN13 - 9036 là sản phẩm thuộc dòng bút cao cấp của công ty CP Văn phòng phẩm Hồng Hà. Bút ký cao cấp Hồng Hà sẽ là sự lựa chọn hàng đầu nếu bạn đang tìm đến một cây bút ký sang trọng, chất lượng với mức giá thành hợp lý.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (7, 1, 500, 0, N'Hồng Hà ', N'But4.png', 40000, 0, N'Bút bi cao cấp Hồng Hà Delus R01 W027', N'Bút dạ bi cao cấp Hồng Hà 9026 là sản phẩm thuộc dòng bút cao cấp của công ty CP Văn phòng phẩm Hồng Hà. Bút ký cao cấp Hồng Hà sẽ là sự lựa chọn hàng đầu nếu bạn đang tìm đến một cây bút ký sang trọng, chất lượng với mức giá thành hợp lý.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (9, 1, 200, 16, N'Văn phòng phẩm Hồng Hà', N'But5.png', 44000, 0, N'Bút máy văn phòng cao cấp Trường Sơn Gold TS01 9039', N'Bút máy văn phòng cao cấp Trường Sơn Gold TS01 9039
Phong cách thiết kế đẳng cấp được phát triển từ mẫu bút máy Trường Sơn Hồng Hà sản xuất năm 1959. Hộp bút sang trọng được làm từ vật liệu tre thân thiện môi trường - mang đậm dấu ấn người Việt.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (11, 5, 400, 42, N'Hồng Hà', N'balohocsinh.png', 269000, 0, N'Balo học sinh Hồng Hà Oringa HS03 3717', N'Balo học sinh Oringa HS03 3717 sử dụng chất liệu vải cao cấp, có khả năng chống thấm nước và bụi bẩn hiệu quả, khóa kéo chắc chắn, phù hợp với lứa tuổi sử dụng. Kết cấu bền – nhẹ, thiết kế sinh động, đảm bảo thân thiện với sức khỏe học sinh tiểu học.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (15, 5, 300, 12, N'Hồng Hà', N'balomamnon.png', 249000, 0, N'Balo mầm non DC KIDS03 3714', N'Balo mầm non DC KIDS03 3714 sử dụng chất liệu vải cao cấp, có khả năng chống thấm nước, kết cấu khoa học, khóa kéo chắc chắn, phù hợp với lứa tuổi sử dụng. Thiết kế ngộ nghĩnh, màu sắc tươi sáng, kích thước nhỏ gọn, phù hợp cho các bé đựng đồ dùng cá nhân.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (16, 5, 400, 28, N'Hồng Hà', N'balospider.png', 289000, 0, N'Balo học sinh DC HS02 3716', N'Balo học sinh DC HS02 3716 sử dụng chất liệu vải cao cấp, có khả năng chống thấm nước và bụi bẩn hiệu quả, khóa kéo chắc chắn, phù hợp với lứa tuổi sử dụng. Kết cấu bền – nhẹ, thiết kế sinh động, đảm bảo thân thiện với sức khỏe học sinh tiểu học.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (17, 5, 300, 19, N'HỒNG HÀ', N'capnhua.jpg', 115000, 0, N'Cặp nhựa học sinh Cozy 3864', N'Cặp học sinh Hồng Hà mang tên Cozy thiết kế đẹp, bắt mắt. Sản phẩm làm bằng chất liệu PP bền đẹp, dễ dàng lưu trữ tài liệu, phù hợp cho các bạn học sinh, sinh viên. Sản phẩm ngoài thiết kế để đựng sách, vở còn thêm tính năng độc đáo kèm hộp bút tiện dụng')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (18, 5, 100, 15, N'Văn phòng phẩm Hồng Hà', N'tuimyclear.png', 4000, 0, N'Túi Myclear A4 Hồng Hà - 6685 (1 chiếc)', N'1. Thông số kỹ thuật của Túi Myclear A4 Hồng Hà 
- Kích thước: 325x235mm

- Màu sắc: Trong suốt, bề mặt in họa tiết

- Chất liệu: Màng PP trong độ dày 0.12mm

- Quy cách đóng gói: 10chiếc/ túi OPP, 500 chiếc. thùng')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (20, 4, 100, 62, N'Hồng Hà ', N'compa.jpg', 21000, 0, N'Compa chì gỗ SM 05', N'Compa chì gỗ SM 05 với thiết kế nhỏ gọn, trọng lượng nhẹ, dễ cầm và dễ sử dụng.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (21, 4, 60, 45, N'HỒNG HÀ', N'giaythucong.jpg', 10000, 0, N'Giấy thủ công 12 màu Hồng Hà 3363', N'Giấy thủ công Hồng Hà 3363 dành cho học sinh tiểu học cắt dán hình thủ công. Chắc chắn Bộ giấy thủ công 12 màu của Hồng Hà sẽ giúp các bé tỉ mỉ hơn và hoàn thành tốt môn học.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (22, 4, 400, 32, N'Văn phòng phẩm Hồng Hà ', N'mauve.png', 41000, 0, N'Bút lông màu Oringa 18 màu Hồng Hà - 8111', N'Bút lông màu Oringa 18 màu Hồng Hà - 8111 được thiết kế với hình ảnh bản quyền vịt Oringa dễ thương, màu sắc chuẩn mỹ thuật tươi sáng. Bao bì túi PVC nhỏ gọn, in hình bản quyền dễ thương , ngộ nghĩnh, có cúc bấm tiện lợi. Không độc hại, an toàn cho trẻ.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (23, 4, 300, 45, N'HỒNG HÀ', N'maytinh.png', 750000, 0, N'Máy tính CASIO FX580VN X', N'Máy tính FX 580VNX hính hãng do Hồng Hà phân phối.
Thông tin chi tiết sản phẩm:
✔ Máy được trang bị màn hình LCD có độ phân giải cao
✔ Đây là dòng sản phẩm khoa học có hiệu suất cao, tốc độ tính toán nhanh
✔ Hỗ trợ tăng lượng thông tin hiển thị cũng như cải thiện tính tiện dụng của sản phẩm')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (25, 4, 30, 42, N'Văn phòng phẩm Hồng Hà', N'thuocke.png', 7500, 0, N'Thước kẻ tre 15cm Hồng Hà 3492', N'Thước kẻ tre 15cm Hồng Hà 3492 được sản xuất với công nghệ hiện đại, độ bền cao, không mối mọt, thân thiện với môi trường. Sản phẩm đạt tiêu chuẩn: TCCS 03: 2007/VPPHH')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (26, 3, 2, 12, N'Hồng Hà', N'ddvp1.png', 48000, 0, N'Trình ký trong Plastic A4 S10 6618', N'Trình ký trong Plastic A4 S10 6618 có kiểu dáng trang nhã, sang trọng rất phù hợp để sử dụng trong văn phòng. Trình ký có thiết kế chắc chắn, không cong vênh, luôn giữ hồ sơ phẳng, lịch sự và tạo cảm giác thoải mái khi sử dụng.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (27, 3, 50, 32, N'Hồng Hà', N'ddvp2.jpg', 16000, 0, N'Giấy phân trang 4 màu Hồng Hà HS-PT5', N'Giấy phân trang 4 màu HS-PT2 6667 được làm từ chất liệu giấy tốt, màu sắc tươi sáng bền đẹp theo thời gian.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (28, 3, 150, 41, N'Đang cập nhật', N'ddvp3.jpg', 36000, 0, N'Cặp càng cua A4 6506', N'Cặp càng cua A4 6506 được làm từ nguyên liệu nhựa PP cao cấp có khóa còng lớn bằng thép mạ chắc chắn. Thuận tiện trong việc lưu trữ và bảo quản tài liệu lâu dài. Có thể lưu giữ được tối đa 300 tờ giấy.

Bảo quản và sử dụng Bảo quản trong môi trường thoáng mát - tránh xa nguồn nhiệt và dầu mỡ')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (29, 3, 3, 31, N'Hồng Hà', N'ddvp4.jpg', 94000, 0, N'File nan 3 ngăn A4 S11 6619', N'File nan 3 ngăn A4 S11 6619 là sản phẩm tiện dụng thường được dùng trong các văn phòng, trường học để cất giữ, bảo quản, phân loại các giấy tờ, tài liệu. Với thiết kế 3 ngăn có thể đựng được nhiều tài liệu khác nhau giúp bàn làm việc được gọn gàng, ngăn nắp.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (30, 2, 120, 17, N'Hồng Hà', N'So4.jpg', 8000, 0, N'Sổ lò xo ngang 200 trang A7 Oringa 4165', N'Sổ lò xo ngang 200 trang A7 Oringa 4165 là bộ sản phẩm sử dụng hình ảnh bản quyền Oringa của Hồng Hà. Sản phẩm được lấy cảm hứng thiết kế từ những loài động vật đáng yêu, ngộ nghĩnh phù hợp xu hướng giới trẻ, giúp khơi gợi cảm hứng cho các bạn học sinh - sinh viên trong học tập và làm việc.')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (31, 2, 250, 24, N'Hồng Hà ', N'So5.jpg', 24000, 0, N'Sổ lò xo kẻ ngang Funny Pet A5 200 trang 4164', N'Sổ lò xo kẻ ngang Funny Pet A5 200 trang được tiếp tục phát triển theo chủ đề tình yêu dành cho thú cưng mà các bạn học sinh - sinh viên rất ưa thích. Sổ được thiết kế nhỏ gọn, tiện lợi với chất lượng giấy tốt, chắc chắn sẽ trở thành người bạn đồng hành trên mọi chặng đường của các bạn.

')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (32, 2, 150, 15, N'Đang cập nhật', N'So3.jpg', 23000, 0, N'Sổ lò xo dọc 200 trang A5 Oringa 4167', N'Sổ lò xo dọc 200 trang A5 Oringa 4167 được lấy cảm hứng từ những loài động vật đáng yêu, ngộ nghĩnh. Hình ảnh những loài động vật Oringa được Hồng Hà thiết kế độc quyền theo xu hướng mới nhất, giúp khơi gợi nhiều cảm hứng cho các bạn học sinh - sinh viên trong học tập.

')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (33, 2, 200, 0, N'Hồng Hà', N'So2.jpg', 13000, 0, N'Sổ lò xo kẻ ngang Funny Pet A6 200 trang 4163', N'Sổ lò xo kẻ ngang Funny Pet A6 200 trang 4163 Hồng Hà tiếp tục phát triển theo chủ đề tình yêu dành cho thú cưng đang được các bạn học sinh - sinh viên yêu thích. ')
INSERT [dbo].[SanPham] ([MaSp], [MaDM], [KhoiLuong], [SLcon], [ThuongHieu], [Anh], [Gia], [SLDat], [TenSP], [MoTa]) VALUES (34, 2, 180, 19, N'Hồng Hà', N'So1.jpg', 33000, 0, N'Sổ lò xo dọc 200 trang B5 Oringa 4168', N'Sổ lò xo dọc 200 trang B5 Oringa 4168 được lấy cảm hứng từ những loài động vật đáng yêu, ngộ nghĩnh. Hình ảnh những loài động vật Oringa được Hồng Hà thiết kế độc quyền theo xu hướng mới nhất, giúp khơi gợi nhiều cảm hứng cho các bạn học sinh - sinh viên trong học tập.')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTk], [HoTen], [Email], [DiaChi], [Sdt], [TenDN], [MatKhau], [Quyen]) VALUES (1, N'Trần Thúy Nga', N'ngat35137@gmail.com', N'Thái Nguyên', N'0961362470', N'ngacute', N'123456', N'ADMIN')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[ChiTiet_DH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_DH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTiet_DH] CHECK CONSTRAINT [FK_ChiTiet_DH_DonHang]
GO
ALTER TABLE [dbo].[ChiTiet_DH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_DH_SanPham] FOREIGN KEY([MaDH])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
ALTER TABLE [dbo].[ChiTiet_DH] CHECK CONSTRAINT [FK_ChiTiet_DH_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaTk])
REFERENCES [dbo].[TaiKhoan] ([MaTk])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
USE [master]
GO
ALTER DATABASE [Nhom15_WebVanPhongPham] SET  READ_WRITE 
GO
