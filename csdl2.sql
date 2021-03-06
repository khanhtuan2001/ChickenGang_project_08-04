USE [master]
GO
/****** Object:  Database [Web_QuanLyBanHang]    Script Date: 08/04/2022 10:08:11 SA ******/
CREATE DATABASE [Web_QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web_QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\Web_QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Web_QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\Web_QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Web_QuanLyBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web_QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Web_QuanLyBanHang', N'ON'
GO
ALTER DATABASE [Web_QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [Web_QuanLyBanHang]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDat]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDat](
	[MaChiTietDonDat] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DiaChiGiaoHang] [nvarchar](max) NULL,
	[Sdt] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[Mota] [nvarchar](max) NULL,
	[Mota2] [nvarchar](max) NULL,
	[Mota3] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 08/04/2022 10:08:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
	[LoaiAccount] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDat] ON 

INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1, 2, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (2, 3, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (3, 3, 68, NULL, 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (4, 4, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (5, 4, 67, N'Combo Gà Rán', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (6, 5, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (7, 5, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (8, 6, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (9, 6, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (10, 7, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (11, 7, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (12, 8, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (13, 9, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (14, 9, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1013, 1009, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1014, 1010, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1015, 1011, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1016, 1012, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDat] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (2, CAST(N'2022-04-03T16:46:45.787' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (3, CAST(N'2022-04-03T16:53:51.650' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (4, CAST(N'2022-04-03T16:57:13.503' AS DateTime), 0, CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (5, CAST(N'2022-04-03T17:01:16.000' AS DateTime), 0, CAST(N'2022-04-09T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (6, CAST(N'2022-04-03T17:03:01.723' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, 5, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (7, CAST(N'2022-04-04T12:39:16.353' AS DateTime), 0, CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, 6, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (8, CAST(N'2022-04-04T12:54:13.933' AS DateTime), 0, CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (9, CAST(N'2022-04-04T21:24:05.667' AS DateTime), 0, CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1009, CAST(N'2022-04-06T08:32:46.583' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1007, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1010, CAST(N'2022-04-06T08:34:07.990' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1011, CAST(N'2022-04-06T08:54:04.843' AS DateTime), 0, CAST(N'2022-04-08T00:00:00.000' AS DateTime), 0, 1009, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1012, CAST(N'2022-04-06T08:54:52.040' AS DateTime), 0, CAST(N'2022-04-07T00:00:00.000' AS DateTime), 0, NULL, NULL, N'123 phạm văn đồng', NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1, N'phat', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (2, N'phat1', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (3, N'phat12', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (4, N'phat123', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (5, N'phat1233', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (6, N'phat1233', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (7, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1007, N'niên', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1008, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1009, N'niên', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1010, N'tuan', N'hcm', N'kk', N'12345678', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Combo 1 Người', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Combo Nhóm', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Gà Rán - Quay', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Cơm - Burger - Mì Ý', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'Thức Ăn Nhẹ - Món Thêm', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Tráng Miệng - Thức Uống', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'vip', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'thuong', NULL)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'tuan', N'hcm', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'tuan', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (66, N'Combo Gà Rán', CAST(63000 AS Decimal(18, 0)), NULL, N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền', N'1 Pepsi Lon', N'', N'Content/images/KFC/garan1.png', 12, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (67, N'Combo Gà Quay', CAST(75000 AS Decimal(18, 0)), NULL, N'1 Miếng Đùi Gà Quay Giấy Bạc / 1 Miếng Đùi Gà Quay Tiêu', N'1 Cơm Trắng', N'1 Pepsi Lon', N'Content/images/KFC/gaquay1.png', 12, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (68, N'Combo Mì Ý', CAST(68000 AS Decimal(18, 0)), NULL, N'1 Mì Ý Xốt Cà Gà Viên', N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống / 2 Xiên Gà Tenderods', N'1 Pepsi Lon', N'Content/images/KFC/miy1.png', 18, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (69, N'Combo Cơm Gà Rán', CAST(53000 AS Decimal(18, 0)), NULL, N'1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền', N'1 Súp Rong Biển', N'1 Pepsi Lon', N'Content/images//KFC/comga1.png', 20, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (70, N'Combo Burger', CAST(72000 AS Decimal(18, 0)), NULL, N'1 Burger Zinger / 1 Burger Tôm / 1 Burger Gà Quay Flava', N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống', N'1 Pepsi Lon', N'Content/images/KFC/burger1.png', 20, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (71, N'Combo Nhóm 1', CAST(132000 AS Decimal(18, 0)), NULL, N'3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống', N'1 Burger Zinger / 1 Burger Tôm / 1 Burger Gà Quay Flava', N'2 Pepsi Lon', N'Content/images/KFC/combo1.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (72, N'Combo Nhóm 2', CAST(146000 AS Decimal(18, 0)), NULL, N'4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Truyền thống', N'2 Thanh Bí Phô-mai', N'2 Pepsi Lon', N'Content/images/KFC/combo2.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (73, N'Combo Nhóm 3', CAST(175000 AS Decimal(18, 0)), NULL, N'5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống', N'1 Popcorn (Vừa) / 2 Xiên Gà Tenderods', N'3 Pepsi Lon', N'Content/images/KFC/combo3.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (74, N'Combo Gia Đình', CAST(272000 AS Decimal(18, 0)), NULL, N'5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống', N'2 Burger Zinger / 2 Burger Tôm / 1 Mì Ý Xốt Cà Gà Viên', N'4 Pepsi Lon', N'Content/images/KFC/combogiadinh.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (75, N'Gà Rán ( 1 Miếng )', CAST(35000 AS Decimal(18, 0)), NULL, N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống', NULL, NULL, N'Content/images/KFC/le_ga1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (76, N'Gà Rán ( 2 Miếng )', CAST(68000 AS Decimal(18, 0)), NULL, N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống', NULL, NULL, N'Content/images/KFC/le_ga2mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (77, N'Gà Rán ( 3 Miếng )', CAST(101000 AS Decimal(18, 0)), NULL, N'3 Miếng Gà Giòn Cay / 3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Không Cay', NULL, NULL, N'Content/images/KFC/le_ga3mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (78, N'Gà Rán ( 6 Miếng )', CAST(195000 AS Decimal(18, 0)), NULL, N'6 Miếng Gà Giòn Cay / 6 Miếng Gà Truyền thống / 6 Miếng Gà Giòn Không Cay', NULL, NULL, N'Content/images/KFC/le_ga6mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (79, N'Đùi Gà Quay ( 1 Miếng )', CAST(67000 AS Decimal(18, 0)), NULL, N'1 Miếng Đùi Gà Quay Giấy Bạc / 1 Miếng Đùi Gà Quay Tiêu', NULL, NULL, N'Content/images/KFC/le_gaquay1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (80, N'Phi-lê Gà Quay ( 1 Miếng )', CAST(35000 AS Decimal(18, 0)), NULL, N'1 Miếng Phi-lê Gà Quay Flava / 1 Miếng Phi-lê Gà Quay Tiêu', NULL, NULL, N'Content/images/KFC/le_philegaquay1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (81, N'Cơm Gà Rán ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Giòn Cay (1 Phần) / Cơm Gà Giòn Không Cay (1 Phần) / Cơm Gà Truyền Thống (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comga1phan.png', 20, 2, 10, 110, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (82, N'Cơm Gà Bít-tết ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Bít-tết (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comgabittet.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (83, N'Gà Bít-tết với Khoai tây chiên', CAST(42000 AS Decimal(18, 0)), NULL, N'Gà Bít-tết với Khoai tây chiên (1 Phần)', NULL, NULL, N'Content/images/KFC/le_gabitet+khoaitaychien.png', 20, 2, 21, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (84, N'Cơm Phi Lê Gà Quay ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Phi Lê Gà Quay Flava (1 Phần) / Cơm Phi Lê Gà Quay Tiêu (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comphilegaquay.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (85, N'Cơm Phi Lê Gà Giòn ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Phi Lê Gà Giòn (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comphilegagion.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (86, N'Cơm Gà Xiên Que (1 Phần)', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Xiên Que (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comgaxienque.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (87, N'Burger Tôm (1 Phần)', CAST(41000 AS Decimal(18, 0)), NULL, N'Burger Tôm (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgertom.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (88, N'Burger Gà Quay Flava (1 Phần)', CAST(47000 AS Decimal(18, 0)), NULL, N'Burger Gà Quay Flava (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgergaquay.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (89, N'Burger Zinger (1 Phần)', CAST(50000 AS Decimal(18, 0)), NULL, N'Burger Zinger (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgerzinger.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (90, N'Mì Ý Xốt Cà Gà Viên (1 Phần)', CAST(37000 AS Decimal(18, 0)), NULL, N'Mì Ý Xốt Cà Gà Viên (1 Phần)', NULL, NULL, N'Content/images/KFC/le_miysotca.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (91, N'Hot Wings (3 Miếng)', CAST(48000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_hotwings3.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (92, N'Hot Wings (5 Miếng)', CAST(75000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_hotwings5.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (93, N'Gà Popcorn (Vừa) (1 phần)', CAST(36000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_gapopcornM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (94, N'Gà Popcorn (Lớn) (1 Phần)', CAST(58000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_gapopcornL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (95, N'Phô mai viên (4 viên)', CAST(30000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_phomaivien4.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (96, N'Phô mai viên (6 viên)', CAST(41000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_phomaivien6.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (97, N'Cá Thanh (3 Thanh)', CAST(40000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_cathanh3.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (98, N'Gà Xiên Que (2 Thanh)', CAST(33000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_gaxienque2.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (99, N'Khoai Tây Chiên (Vừa)', CAST(17000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_khoaitaychienM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (100, N'Khoai Tây Chiên (Lớn)', CAST(28000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_khoaitaychienL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (101, N'Khoai Tây Chiên (Đại)', CAST(38000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_khoaitaychienXL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (102, N'Bắp cải trộn (Vừa)', CAST(12000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_bapcaitronM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (103, N'Bắp cải trộn (Lớn)', CAST(22000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_bapcaitronL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (104, N'Bắp Cải Trộn (Đại)', CAST(31000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_bapcaitronXL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (105, N'Cơm Trắng', CAST(10000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_comtrang.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (106, N'Súp rong biển (1 phần)', CAST(14000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_suprongbien.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (107, N'Bánh Trứng (1 cái)', CAST(17000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/bonus_banhtrung1.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (108, N'Bánh Trứng (4 Cái)', CAST(54000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/bonus_banhtrung4.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (109, N'Thanh Bí Phô-mai (2 Thanh)', CAST(26000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/bonus_thanhbi2.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (110, N'Thanh Bí Phô-mai (3 Thanh)', CAST(35000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/bonus_thanhbi3.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (111, N'Thanh Bí Phô-mai (5 Thanh)', CAST(55000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/bonus_thanhbi5.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (112, N'Pepsi Vị Chanh Không Calo Lon', CAST(17000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_pepsivichanh.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (113, N'Pepsi Lon', CAST(17000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_pepsilon.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (114, N'7Up Lon', CAST(17000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_7uplon.png', 210, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (115, N'Aquafina', CAST(15000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_aquafina.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (116, N'Trà đào', CAST(24000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, N'Content/images/KFC/le_tradao.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (117, N'BÁNH TRỨNG SÔ-CÔ-LA HẠNH NHÂN (1 CÁI)', CAST(19000 AS Decimal(18, 0)), NULL, N'1 Bánh Trứng Sô-Cô-La Hạnh Nhân', NULL, NULL, N'Content/images/KFC/monmoi1.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (118, N'BÁNH TRỨNG SÔ-CÔ-LA HẠNH NHÂN (4 CÁI)', CAST(61000 AS Decimal(18, 0)), NULL, N'4 Bánh Trứng Sô-Cô-La Hạnh Nhân', NULL, NULL, N'Content/images/KFC/monmoi2.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (2, N'tuan', N'1234', N'tuan', N'hcm', N'kk', N'12345678', N'ss', N'ss', 1, NULL)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonDat]  WITH CHECK ADD FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonDat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  READ_WRITE 
GO
