USE [master]
GO
/****** Object:  Database [QL_KS]    Script Date: 5/1/2017 3:26:48 PM ******/
CREATE DATABASE [QL_KS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_KS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.HUUTUYEN\MSSQL\DATA\QL_KS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_KS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.HUUTUYEN\MSSQL\DATA\QL_KS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QL_KS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_KS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_KS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_KS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_KS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_KS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_KS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_KS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_KS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_KS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_KS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_KS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_KS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_KS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_KS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_KS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_KS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_KS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_KS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_KS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_KS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_KS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_KS] SET  MULTI_USER 
GO
ALTER DATABASE [QL_KS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_KS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_KS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_KS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_KS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_KS] SET QUERY_STORE = OFF
GO
USE [QL_KS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QL_KS]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[MaDV] [nvarchar](10) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_tblDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaPhieuThue] [nvarchar](15) NULL,
	[NgayVao] [date] NULL,
	[NgayRa] [date] NULL,
	[ThanhTien] [int] NULL,
	[DonGiaHT] [int] NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GT] [nvarchar](3) NULL,
	[SoDT] [nvarchar](20) NULL,
	[CMND] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CMND] [nchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuThue]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuThue](
	[MaPhieu] [nvarchar](15) NOT NULL,
	[MaKH] [nvarchar](10) NULL,
	[MaPh] [nvarchar](10) NULL,
	[MaPT] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblPhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[MaPh] [nvarchar](10) NOT NULL,
	[SoPhong] [nvarchar](10) NULL,
	[TrangThai] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPhong] PRIMARY KEY CLUSTERED 
(
	[MaPh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhuongThucThue]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhuongThucThue](
	[MaPT] [nvarchar](10) NOT NULL,
	[TenPT] [nvarchar](20) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tblPhuongThucThue] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSuDungDV]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSuDungDV](
	[MaHD] [nvarchar](15) NOT NULL,
	[MaDV] [nvarchar](10) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_tblSuDungDV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[MaNV] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](20) NULL,
	[LoaiTK] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThietBi]    Script Date: 5/1/2017 3:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThietBi](
	[MaPh] [nvarchar](10) NOT NULL,
	[ThietBi] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[NhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblVatDung] PRIMARY KEY CLUSTERED 
(
	[MaPh] ASC,
	[ThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV01', N'Dọn phòng cao cấp', 50)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV02', N'Massage', 150)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV03', N'Chăm thú', 100)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV04', N'Xe chở', 200)
INSERT [dbo].[tblDichVu] ([MaDV], [TenDV], [Gia]) VALUES (N'DV05', N'Cao Cấp', 500)
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GT], [SoDT], [CMND], [DiaChi]) VALUES (N'KH01', N'Nguyễn Duy Hùng', CAST(N'1995-06-16' AS Date), N'Nam', N'0123654789', N'145872369', N'Ko có')
INSERT [dbo].[tblKhachHang] ([MaKH], [TenKH], [NgaySinh], [GT], [SoDT], [CMND], [DiaChi]) VALUES (N'KH02', N'Phạm CC', CAST(N'1995-06-05' AS Date), N'Nam', N'0123654789', N'254136987', N'HHHH')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'ADMIN', N'Đỗ Hữu Tuyến', CAST(N'1995-06-16' AS Date), N'Nam', N'123456789 ', N'Nam Định', N'987654321 ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV001', N'Nguyễn Đức mạnh', CAST(N'1996-04-19' AS Date), N'Nam', N'987654345 ', N'Bắc Ninh', N'098765435 ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV002', N'Nguyễn Anh Tuấn', CAST(N'1996-01-01' AS Date), N'Nam', N'345676678 ', N'Ninh Bình', N'098765567 ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV003', N'Phạm Thị Lan', CAST(N'1992-02-02' AS Date), N'Nữ', N'345678765 ', N'Hà Nam', N'098765477 ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV004', N'Ngọc Trinh', CAST(N'1996-06-06' AS Date), N'Nữ', N'696969696 ', N'Hà Nội', N'096969696 ')
INSERT [dbo].[tblPhong] ([MaPh], [SoPhong], [TrangThai]) VALUES (N'PH01', N'0101', N'Tốt')
INSERT [dbo].[tblPhong] ([MaPh], [SoPhong], [TrangThai]) VALUES (N'PH02', N'0102', N'Tốt')
INSERT [dbo].[tblPhong] ([MaPh], [SoPhong], [TrangThai]) VALUES (N'PH03', N'0201', N'Tốt')
INSERT [dbo].[tblPhong] ([MaPh], [SoPhong], [TrangThai]) VALUES (N'PH04', N'0202', N'Bình thường')
INSERT [dbo].[tblPhong] ([MaPh], [SoPhong], [TrangThai]) VALUES (N'PH05', N'0203', N'Tốt')
INSERT [dbo].[tblPhuongThucThue] ([MaPT], [TenPT], [DonGia]) VALUES (N'PT01', N'Ngày', 200)
INSERT [dbo].[tblPhuongThucThue] ([MaPT], [TenPT], [DonGia]) VALUES (N'PT02', N'Qua đêm', 150)
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'ADMIN', N'admin', N'1')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV001', N'abc123', N'0')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV002', N'123456', N'0')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV003', N'123456', N'1')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV004', N'123456', N'1')
INSERT [dbo].[tblThietBi] ([MaPh], [ThietBi], [SoLuong], [NhaSanXuat]) VALUES (N'PH01', N'Điều hòa', 1, N'Việt Nam')
INSERT [dbo].[tblThietBi] ([MaPh], [ThietBi], [SoLuong], [NhaSanXuat]) VALUES (N'PH01', N'Tủ lạnh', 1, N'Hàn Quốc')
INSERT [dbo].[tblThietBi] ([MaPh], [ThietBi], [SoLuong], [NhaSanXuat]) VALUES (N'PH02', N'Camera', 1, N'Việt Nam')
INSERT [dbo].[tblThietBi] ([MaPh], [ThietBi], [SoLuong], [NhaSanXuat]) VALUES (N'PH02', N'Ti vi', 1, N'Trung Quốc')
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblPhieuThue] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[tblPhieuThue] ([MaPhieu])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblPhieuThue]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblPhanQuyen] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblTaiKhoan] ([MaNV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblPhanQuyen]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblKhachHang]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblPhong] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhong] ([MaPh])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblPhong]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblPhuongThucThue] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhuongThucThue] ([MaPT])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblPhuongThucThue]
GO
ALTER TABLE [dbo].[tblSuDungDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSuDungDV_tblDichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDichVu] ([MaDV])
GO
ALTER TABLE [dbo].[tblSuDungDV] CHECK CONSTRAINT [FK_tblSuDungDV_tblDichVu]
GO
ALTER TABLE [dbo].[tblSuDungDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSuDungDV_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblSuDungDV] CHECK CONSTRAINT [FK_tblSuDungDV_tblHoaDon]
GO
ALTER TABLE [dbo].[tblThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblThietBi_tblPhong] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhong] ([MaPh])
GO
ALTER TABLE [dbo].[tblThietBi] CHECK CONSTRAINT [FK_tblThietBi_tblPhong]
GO
USE [master]
GO
ALTER DATABASE [QL_KS] SET  READ_WRITE 
GO
