create database QuanLyBanHang
USE QuanLyBanHang
GO
/****** Object:  Table [dbo].[Content]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nchar](10) NULL,
	[Image] [varbinary](250) NULL,
	[CategoryID] [int] NULL,
	[Detail] [nchar](10) NULL,
	[Warranty] [nchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[MetaKeywords] [varchar](250) NULL,
	[MetaDescriptions] [varchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [varchar](500) NULL,
	[Language] [nchar](10) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[CredentialID] [int] IDENTITY(1,1) NOT NULL,
	[UserGroupID] [int] NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[CredentialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTSanPham](
	[CTSanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[SoLuong] [int] NULL,
	[AnhSanPham] [varchar](200) NULL,
	[ChiTiet] [nvarchar](300) NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [PK_CTSanPham] PRIMARY KEY CLUSTERED 
(
	[CTSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[DanhMucSanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[DanhMucSanPhamPID] [int] NULL,
	[TenDanhMucSanPham] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[Status] [bit] NULL,
	[Language] [nvarchar](50) NULL,
	[LaDoNam] [bit] NULL,
	[LaDoNu] [bit] NULL,
	[LaDoTreEm] [bit] NULL,
 CONSTRAINT [PK_DanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[DanhMucSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChiNhanHang]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiNhanHang](
	[DiaChiNhanHangID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHangID] [int] NULL,
	[ThanhPhoID] [int] NULL,
	[QuanHuyenID] [int] NULL,
	[XqaPhuongID] [int] NULL,
	[DiaChiChiTiet] [nvarchar](200) NULL,
	[SoDienThoai] [int] NULL,
 CONSTRAINT [PK_DiaChiNhanHang] PRIMARY KEY CLUSTERED 
(
	[DiaChiNhanHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[DonHangID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVienID] [int] NULL,
	[KhachHangID] [int] NULL,
	[DiaChiNhanHangID] [int] NULL,
	[NgayXuat] [date] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[GiaTriDonHang] [float] NULL,
	[NgayNhan] [date] NULL,
	[Status] [bit] NULL,
	[DiaChiNhanHangChiTiet] [nvarchar](500) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[DonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](100) NULL,
	[SoDienThoai] [int] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[UserID] [int] NULL,
	[DiaChi] [nvarchar](300) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDanhMucSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDanhMucSanPham](
	[DanhMucSanPhamPID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDanhMucSanPham] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_LoaiDanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[DanhMucSanPhamPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThongSo]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThongSo](
	[LoaiThongSoID] [int] NOT NULL,
	[TenLoaiThongSo] [nvarchar](100) NULL,
	[DacDiem] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiThongSo] PRIMARY KEY CLUSTERED 
(
	[LoaiThongSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoSanPham](
	[LoSanPhamID] [int] NOT NULL,
	[PhanLoaiSanPhamID] [int] NULL,
	[NhapKhoID] [int] NULL,
	[SoSerie] [varchar](100) NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoSanPham] PRIMARY KEY CLUSTERED 
(
	[LoSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[QueQuan] [nvarchar](200) NULL,
	[SoDienThoai1] [int] NULL,
	[SoDienThoai2] [int] NULL,
	[Email] [varchar](100) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhapKho]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapKho](
	[NhapKhoID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVienID] [int] NULL,
	[NgayNhap] [date] NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_NhapKho] PRIMARY KEY CLUSTERED 
(
	[NhapKhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoaiSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiSanPham](
	[PhanLoaiSanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[TenPhanLoaiSanPham] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[DanhMucSanPhamID] [int] NULL,
 CONSTRAINT [PK_PhanLoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[PhanLoaiSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[QuanHuyenID] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanHuyen] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuanHuyen] PRIMARY KEY CLUSTERED 
(
	[QuanHuyenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[SanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSanPhamID] [int] NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[ThongTinSanPham] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayTao] [datetime] NULL,
	[AnhSanPham] [varchar](200) NULL,
	[MaSanPham] [varchar](10) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[GiaSanPham] [float] NULL,
	[ThemHinhAnh] [xml] NULL,
	[Hot] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhamDonHang]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamDonHang](
	[SanPhamDonHangID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[DonHangID] [int] NULL,
	[GhiChu] [nvarchar](300) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SanPhamDonHang] PRIMARY KEY CLUSTERED 
(
	[SanPhamDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[ThanhPhoID] [int] IDENTITY(1,1) NOT NULL,
	[TenThanhPho] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[ThanhPhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongSoSanPham]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoSanPham](
	[ThongSoSanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiThongSoID] [int] NULL,
	[SanPhamID] [int] NULL,
	[GiaTri] [float] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongSoSanPham] PRIMARY KEY CLUSTERED 
(
	[ThongSoSanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [char](50) NULL,
	[Phone] [int] NULL,
	[ThanhPhoID] [int] NULL,
	[QuanHuyenID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[XaPhuongID] [int] NULL,
	[GroupID] [int] NULL,
	[PasswordSalt] [varchar](200) NULL,
	[DiaChiChiTiet] [nvarchar](300) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[UserGroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XaPhuong]    Script Date: 12/15/2020 10:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XaPhuong](
	[XaPhuongID] [int] IDENTITY(1,1) NOT NULL,
	[TenXaPhuong] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_XaPhuong] PRIMARY KEY CLUSTERED 
(
	[XaPhuongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CTSanPham] ON 

INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (11, 10, NULL, 10, N'~/Images/ProductImage/ao.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 45)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (12, 11, NULL, 200, N'~/Images/ProductImage/ao1.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 45)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (13, 12, NULL, 20, N'~/Images/ProductImage/0f34491528a20e0c1ebec686681b9298.jpg', N'Sản phẩm dành cho phái đẹp,thời trang, gọn tiện', 45)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (14, 13, NULL, 30, N'~/Images/ProductImage/3983a7a02300304ebc87eeef999b3e9b.jpg', N'Sản phẩm dành cho phái đẹp,thời trang, gọn tiện', NULL)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (15, 14, NULL, 40, N'~/Images/ProductImage/63b49f1783add3401220d0615d7dd5f5.jpg', N'Sản phẩm có đẩy đủ thể loại : Dây bạc-Mặt trắng,Dây bạc-Mặt đen,Vàng hồng', 50)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (16, 15, NULL, 40, N'~/Images/ProductImage/ba6f4c36ba4372ccd136f1c0285a1a63.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 50)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (17, 16, NULL, 40, N'~/Images/ProductImage/f8c7ae3fbc30b05e8b26df0711ace8eb.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 41)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (18, 17, NULL, 10, N'~/Images/ProductImage/906b91a7555feca3b6a12ec85c856697.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 44)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (19, 18, NULL, 10, N'~/Images/ProductImage/66fb82039ec5234e8ad9b4fee1ba2d4d.jpg', N'Sản phẩm dành cho phái đẹp,thời trang, gọn tiện', 37)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (20, 19, NULL, 10, N'~/Images/ProductImage/fc6e5e47f0a216c475c547631e3ddddc.jpg', N'Sản phẩm dành cho phái đẹp,thời trang, gọn tiện', 49)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (21, 20, NULL, 50, N'~/Images/ProductImage/bd524a89f51b0d6afe6b9fa145170aea.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 50)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (22, 21, NULL, 30, N'~/Images/ProductImage/ae933aef2ed148c0021d71b42956f285.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 5)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (23, 22, NULL, 10, N'~/Images/ProductImage/39aa238bc9370ff1c61071db62c90624.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 34)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (24, 23, NULL, 10, N'~/Images/ProductImage/928a169eabfc536659e5333abb6dba58.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 10)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (25, 24, NULL, 20, N'~/Images/ProductImage/4dfc47d96e020f0121a5f0af1ed8741d.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 35)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (26, 25, NULL, 30, N'~/Images/ProductImage/c576624e5940d32962f7b1c740efdd74.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 49)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (27, 26, NULL, 25, N'~/Images/ProductImage/02487e17d729777aeb3db46650337fba.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 45)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (28, 27, NULL, 35, N'~/Images/ProductImage/20e7853b374fea195c67c7f8932d5a60.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 47)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (29, 29, NULL, 10, N'~/Images/ProductImage/294168e66197aa7688223a5870badca6.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 41)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (30, 30, NULL, 25, N'~/Images/ProductImage/d308f1e577322969e48cedecd5f13b93.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,sang trọng, quý phái', 8)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (31, 31, NULL, 40, N'~/Images/ProductImage/fa4bfa85220afff1b9c019f6ac320e89.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 11)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (32, 32, NULL, 24, N'~/Images/ProductImage/93f40b051eb242c4ea27184279d74153.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 5)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (33, 33, NULL, 15, N'~/Images/ProductImage/cfeaf815322ede6b8609fb37fb2b59f0.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 30)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (34, 34, NULL, 60, N'~/Images/ProductImage/f63c328fdeeca21cda923e6c08e094b1.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 45)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (35, 35, NULL, 10, N'~/Images/ProductImage/57129431fbf2de242a282aa1a7864fd8.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 23)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (36, 35, NULL, 10, N'~/Images/ProductImage/57129431fbf2de242a282aa1a7864fd8.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 23)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (37, 36, NULL, 26, N'~/Images/ProductImage/5800e594a3b41d1142a840365f4ff7ea.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 43)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (38, 37, NULL, 10, N'~/Images/ProductImage/63eb5cf6815c3915b36cdfe93b96637e.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 48)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (39, 38, NULL, 30, N'~/Images/ProductImage/5593bf414ec00e493821207598454bed.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 0)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (40, 39, NULL, 15, N'~/Images/ProductImage/6f900cd2c34abe168b71125269ec54fc.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 12)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (41, 40, NULL, 25, N'~/Images/ProductImage/70e94287247b011e943ac244a7a8ed0c.jpg', N'Sản phẩm dành cho phái đẹp,thời trang,năng động,thoáng mát', 34)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (42, 41, NULL, 22, N'~/Images/ProductImage/528dd28315d5664b77a57b283eb59f40.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 20)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (43, 42, NULL, 10, N'~/Images/ProductImage/f4a02750e10beb05a43011b4a8339c88.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 20)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (44, 43, NULL, 100, N'~/Images/ProductImage/039dae60b0832c6ff44068ccb2298f38.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 43)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (45, 43, NULL, 100, N'~/Images/ProductImage/039dae60b0832c6ff44068ccb2298f38.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 43)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (46, 44, NULL, 40, N'~/Images/ProductImage/601ba6a245bc99c2ea0b71f12d5e402a.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 24)
INSERT [dbo].[CTSanPham] ([CTSanPhamID], [SanPhamID], [GhiChu], [SoLuong], [AnhSanPham], [ChiTiet], [GiamGia]) VALUES (47, 45, NULL, 10, N'~/Images/ProductImage/ac289cfb950cb67ed9894cef6553f07f.jpg', N'Sản phẩm dành cho phái mạnh,thời trang,năng động,thoáng mát', 10)
SET IDENTITY_INSERT [dbo].[CTSanPham] OFF
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (1, 4, N'Áo thời trang', NULL, 1, N'vi', 1, NULL, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (2, 5, N'Áo thời trang', NULL, 1, N'vi', NULL, 1, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (3, 4, N'Quần thời trang', NULL, 1, N'vi', 1, NULL, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (4, 5, N'Quần thời trang', NULL, 1, N'vi', NULL, 1, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (5, 4, N'Giày dép', NULL, 1, N'vi', 1, NULL, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (6, 5, N'Giày dép', NULL, 1, N'vi', NULL, 1, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (7, 4, N'Phụ kiện thời trang', NULL, 1, N'vi', 1, NULL, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (8, 5, N'Phụ kiện thời trang', NULL, 1, N'vi', NULL, 1, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (9, 4, N'Đồ thể thao', NULL, 1, N'vi', 1, NULL, NULL)
INSERT [dbo].[DanhMucSanPham] ([DanhMucSanPhamID], [DanhMucSanPhamPID], [TenDanhMucSanPham], [GhiChu], [Status], [Language], [LaDoNam], [LaDoNu], [LaDoTreEm]) VALUES (10, 5, N'Đồ thể thao', NULL, 1, N'vi', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (3, NULL, 1, NULL, CAST(N'2019-08-05' AS Date), NULL, 1000000, CAST(N'2019-05-10' AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (4, NULL, 2, NULL, CAST(N'2019-07-05' AS Date), NULL, 3000000, CAST(N'2019-05-11' AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (5, NULL, 3, NULL, CAST(N'2019-10-07' AS Date), NULL, 200000, CAST(N'2019-05-15' AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (6, NULL, 4, NULL, CAST(N'2019-10-07' AS Date), NULL, 2500000, CAST(N'2019-05-04' AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (7, NULL, 4, NULL, CAST(N'2019-05-21' AS Date), NULL, 2000000, CAST(N'2019-05-03' AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (13, NULL, 10, NULL, NULL, N'', 258000, CAST(N'2019-05-21' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (14, NULL, 12, NULL, NULL, N'', 247000, CAST(N'2019-05-10' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (15, NULL, 13, NULL, NULL, N'', 247000, CAST(N'2019-05-10' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (16, NULL, 14, NULL, NULL, N'', 608000, CAST(N'2019-05-23' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (17, NULL, 15, NULL, NULL, N'', 139000, CAST(N'2019-05-22' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (18, NULL, 16, NULL, NULL, N'', 69500, CAST(N'2019-05-17' AS Date), 0, N'Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (19, NULL, 17, NULL, NULL, N'test', 587000, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (20, NULL, 18, NULL, NULL, N'', 534000, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (21, NULL, 19, NULL, NULL, N'', 468791, CAST(N'2020-12-16' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (22, NULL, 20, NULL, NULL, N'', 468791, CAST(N'2020-12-16' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (23, NULL, 21, NULL, NULL, N'', 529000, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (24, NULL, 22, NULL, NULL, N'', 387000, CAST(N'2020-12-16' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (25, NULL, 23, NULL, NULL, N'', 356000, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (26, NULL, 24, NULL, NULL, N'', 566500, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (27, NULL, 25, NULL, NULL, N'', 259000, CAST(N'2020-12-16' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (28, NULL, 26, NULL, NULL, N'', 369791, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
INSERT [dbo].[DonHang] ([DonHangID], [NhanVienID], [KhachHangID], [DiaChiNhanHangID], [NgayXuat], [GhiChu], [GiaTriDonHang], [NgayNhan], [Status], [DiaChiNhanHangChiTiet]) VALUES (29, NULL, 27, NULL, NULL, N'csa', 517000, CAST(N'2020-12-15' AS Date), 0, N'Mỹ Đình Hà Nội')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (1, N'Nguyễn Văn A', CAST(N'1997-04-10' AS Date), 1, N'nguyenvana@gmail.com', 984535352, NULL, NULL, N'Sa Pa')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (2, N'Nguyễn Văn Anh', CAST(N'1997-05-10' AS Date), 1, N'nguyenvana@gmail.com', 984583927, NULL, NULL, N'Nam Định')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (3, N'Nguyễn Văn Anh', CAST(N'1997-12-20' AS Date), 1, N'nguyenvana@gmail.com', 911111111, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (4, N'Lê Kim Phi', CAST(N'2019-05-15' AS Date), 1, N'lekimphi1997@gmail.com', 333533555, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (5, N'Lê Kim Phi', CAST(N'2019-05-08' AS Date), 1, N'tramanhtrduyhung@gmail.com', 984535352, NULL, NULL, N'Nam Định')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (6, N'Vũ Ngọc Bách', CAST(N'2019-05-05' AS Date), 1, N'tranquangkhanh92@gmail.com', 984535352, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (7, N'Kim  Phi', CAST(N'1997-10-04' AS Date), 0, N'facebook@gmail.com', 984535352, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (8, N'Lê Kim Phi', CAST(N'1994-01-05' AS Date), 1, N'phikl.hvitclan@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (9, N'Lê Kim Phi', CAST(N'1992-04-05' AS Date), 1, N'lekimphi1997@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (10, N'Lê Kim Phi', CAST(N'1997-01-03' AS Date), 1, N'lekimphi1997@gmail.com', 984583927, NULL, 2, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (11, N'Lê Kim Phi', CAST(N'1997-02-01' AS Date), 1, N'phikl.hvitclan@gmail.com', 984583927, NULL, 3, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (12, N'Lê Kim Phi', CAST(N'1997-10-05' AS Date), 1, N'lekimphi1997@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (13, N'Lê Kim Phi', CAST(N'1997-10-04' AS Date), 1, N'lekimphi1997@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (14, N'Lê Kim Phi', CAST(N'1997-10-05' AS Date), 1, N'lekimphi1997@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (15, N'Lê Kim Phi', CAST(N'1997-10-04' AS Date), 1, N'phikl.hvitclan@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (16, N'Lê Kim Phi', CAST(N'1997-10-04' AS Date), 1, N'phikl.hvitclan@gmail.com', 984583927, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (17, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 974375904, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (18, N'Lê Kim Phi', NULL, 1, N'phikl.hvitclan@gmail.com', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (19, N'Lê Kim Phi', NULL, 1, N'phikl.hvitclan@gmail.com', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (20, N'Lê Kim Phi', NULL, 1, N'phikl.hvitclan@gmail.com', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (21, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (22, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (23, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (24, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (25, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (26, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [NgaySinh], [GioiTinh], [Email], [SoDienThoai], [GhiChu], [UserID], [DiaChi]) VALUES (27, N'Lê Kim Phi', NULL, 1, N'phi.lekim@ncc.asia', 829338633, NULL, NULL, N'Hà Nội')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiDanhMucSanPham] ON 

INSERT [dbo].[LoaiDanhMucSanPham] ([DanhMucSanPhamPID], [TenLoaiDanhMucSanPham], [status]) VALUES (4, N'Đồ Nam', 1)
INSERT [dbo].[LoaiDanhMucSanPham] ([DanhMucSanPhamPID], [TenLoaiDanhMucSanPham], [status]) VALUES (5, N'Đồ Nữ', 1)
INSERT [dbo].[LoaiDanhMucSanPham] ([DanhMucSanPhamPID], [TenLoaiDanhMucSanPham], [status]) VALUES (7, N'Tất cả', 1)
SET IDENTITY_INSERT [dbo].[LoaiDanhMucSanPham] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [SoDienThoai1], [SoDienThoai2], [Email], [GhiChu], [UserID]) VALUES (1, N'Lê Kim Phi', CAST(N'1997-05-10' AS Date), 1, N'Hà Nội', NULL, 984583927, 335525252, N'lekimphi1997@gmail.com', NULL, NULL)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [QueQuan], [SoDienThoai1], [SoDienThoai2], [Email], [GhiChu], [UserID]) VALUES (2, N'Vũ Ngọc Bách', CAST(N'1997-12-20' AS Date), 1, N'Sa Pa', NULL, 984583927, 324342342, N'Bachsapq01@gmail.com', NULL, 2)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhanLoaiSanPham] ON 

INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (1, N'Áo thun', NULL, 1)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (2, N'Áo sơ mi', NULL, 1)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (3, N'Áo nỉ', NULL, 2)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (4, N'Áo len', NULL, 2)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (5, N'Quần jean', NULL, 3)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (6, N'Quần âu', NULL, 3)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (7, N'Quần short', NULL, 4)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (8, N'Giày thể thao', NULL, 5)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (9, N'Giày da', NULL, 5)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (10, N'Dép tông', NULL, 6)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (11, N'Vớ', NULL, 6)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (12, N'Áo thun năng động', NULL, 9)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (13, N'Bộ đồ thể thao', NULL, 9)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (14, N'Phụ kiện thể thao', NULL, 10)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (15, N'Ví tiền', NULL, 7)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (16, N'Thắt lưng', NULL, 7)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (17, N'Mũ', NULL, 8)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (18, N'Đồng Hồ & Nhẫn', NULL, 8)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (19, N'Nước hoa', NULL, 7)
INSERT [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID], [TenPhanLoaiSanPham], [GhiChu], [DanhMucSanPhamID]) VALUES (20, N'Áo sơ mi', NULL, 2)
SET IDENTITY_INSERT [dbo].[PhanLoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (10, 20, N'Áo sơ mi trắng búp bê', N'Áo sơ mi chất liệu vải siêu mát,đầy đủ size', NULL, NULL, N'~/Images/ProductImage/5ef5f9a2ef7610284967.jpg', N'1A', 1, NULL, 110000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (11, 20, N'Áo sơ mi caro tay phồng', N'Sản phẩm chất liệu thoáng mát, siêu đẹp', NULL, NULL, N'~/Images/ProductImage/ec7ea9761be9a4aabe797e3fe03829b9.jpg', N'2A', 1, NULL, 97000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (12, 14, N'Túi da trần khóa ngang, túi đeo chéo nữ - T716', N'Sản phẩm thời trang chất lượng tốt , phù hợp cho phái đẹp ', NULL, NULL, N'~/Images/ProductImage/d2223108e963bce526b5573e3f6ce14c.jpg', N'3A', 1, NULL, 129000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (13, 14, N'[SIÊU PHẨM] Túi đeo chéo nữ mẫu mới chất lượng Quảng Châu cao cấp, chanel', N'Túi đeo thời trang , chất lượng siêu đẹp', NULL, NULL, N'~/Images/ProductImage/f5c18c3b6cf59250d655d9171f234f62.jpg', N'4A', 1, NULL, 250000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (14, 18, N'[NEW TREND]Đồng Hồ Nữ Barsh 0810 Dây Thép Hàng Chính Hãng Thiết Kế Nhỏ Sang Trọng', N'Sản phẩm chất liệu tốt đầy đủ các loại ', NULL, NULL, N'~/Images/ProductImage/6d16c33bdfc7bd6f91e4e13226106189.jpg', N'5A', 1, NULL, 59000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (15, 18, N'Đồng hồ nữ CHENXI CX003 dây thép lụa cao cấp, kính tráng sapphire in Hoa 3D nổi sang trọng', N'Đồng hồ nữ CHENXI CX003 dây thép lụa cao cấp, kính tráng sapphire in Hoa 3D nổi sang trọng', NULL, NULL, N'~/Images/ProductImage/2d0225de8a25776d82784491888e6a4f.jpg', N'6A', 1, NULL, 259000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (16, 18, N'Đồng hồ nữ Ulzzang 5028 dây thép lưới titatium khóa nam châm mặt tròn họa tiết', N'Đồng hồ chĩnh hãng san trọng', NULL, NULL, N'~/Images/ProductImage/1115a391e1e3bd3c7b075f85e687cd53.jpg', N'8A', 1, NULL, 129000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (17, 18, N'ĐỒNG HỒ NỮ DIMINI G189 DÂY THÉP LỤA KHÓA TỪ SANG TRỌNG', N'ĐỒNG HỒ NỮ DIMINI G189 DÂY THÉP LỤA KHÓA TỪ SANG TRỌNG', NULL, NULL, N'~/Images/ProductImage/d222745bb61e4be012bb88062ba50c9b.jpg', N'9A', 1, NULL, 129000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (18, 18, N'Đồng hồ nữ MINI FOCUS MF044 dây thép lụa bầu trời lấp lánh tặng vòng tay nút thắt', N'Sản phẩm đồng hồ chất lượng cao, chính hãng ', NULL, NULL, N'~/Images/ProductImage/29cbdbe77cb10432d5d5e4bc14d17aeb.jpg', N'10A', 1, NULL, 299000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (19, 18, N'Đồng hồ nữ Kimio 6268 hình thoi nhỏ xinh - dây thép ko gỉ size 30mm', N'Sản phẩm đồng hồ chất lượng cao, chính hãng ', NULL, NULL, N'~/Images/ProductImage/f0cf209640e913b3da0071b9be3042aa.jpg', N'11A', 1, NULL, 288000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (20, 18, N'Đồng hồ nữ JW HSP2851 dây thép không rỉ, mặt kính size 24mm', N'Sản phẩm đồng hồ chất lượng cao, chính hãng ', NULL, NULL, N'~/Images/ProductImage/f3b481fb1fe210f71d3e708478dae2f9.jpg', N'12A', 1, NULL, 69500, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (21, 20, N'Sơ mi giả 2 lớp', N'Sơ mi giả 2 lớp', NULL, NULL, N'~/Images/ProductImage/dd159dbeedbb70721f042ea0040ce9a6.jpg', N'13A', 1, NULL, 160000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (22, 20, N'Áo Sơ Mi Nữ UNI dài tay công sở Cao Cấp Chất Luạ Mềm Không nhăn AN1767[ Thời trang nữ]', N'Áo sơ mi chất liệu vải siêu mát,đầy đủ size', NULL, NULL, N'~/Images/ProductImage/6c2a842f41cdda12e2614bce5b16b2be.jpg', N'14A', 1, NULL, 99000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (23, 20, N'áo sơ mi nam nữ hàn quốc', N'áo sơ mi nam nữ hàn quốc', NULL, NULL, N'~/Images/ProductImage/def33ccb7c750db87e602962d5d09884.jpg', N'15A', 1, NULL, 70000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (24, 20, N'FREESHIP 99K TOÀN QUỐC_Áo Sơ Mi Nữ Form Rộng Tay Lỡ Kẻ Sọc Caro 1951', N'Áo sơ mi chất liệu vải siêu mát,đầy đủ size', NULL, NULL, N'~/Images/ProductImage/9b83b0e3dafccd378a279d1be2bb1572.jpg', N'16A', 1, NULL, 98000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (25, 20, N'Áo kiểu chất Chiffon hoạ tiết hoa thiết kế thanh lịch', N'Áo kiểu chất Chiffon hoạ tiết hoa thiết kế thanh lịch', NULL, NULL, N'~/Images/ProductImage/f7290de1562cce7b86a3be089d466fb4.jpg', N'19A', 1, NULL, 139791, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (26, 20, N'Áo sơ mi nữ tay ngắn', N'Áo sơ mi nữ tay ngắn thời trang , thoáng mát', NULL, NULL, N'~/Images/ProductImage/6cce52c924c3d265c57984d8e28c6e0a.jpg', N'20A', 1, NULL, 144000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (27, 1, N'[ MUA 3 SP FREESHIP ] ÁO THUN NAM CỔ TRÒN COTTON ', N'ÁO THUN NAM CỔ TRÒN COTTON ', NULL, NULL, N'~/Images/ProductImage/e04818b308336dbf004e280ac39a6724.jpg', N'21A', 1, NULL, 10000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (28, 18, N'Đồng hồ nữ DIMINI nam châm dây lụa tuyệt đẹp', N'Đồng hồ nữ DIMINI nam châm dây lụa tuyệt đẹp', NULL, NULL, N'~/Images/ProductImage/a4171c09105347dc237d734fcadad7f9.jpg', N'22A', 1, NULL, 69000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (29, 20, N'Áo sơ mi nữ siêu xinh, áo sơ mi công sở chất lụa đẹp nhiều màu', N'Áo sơ mi nữ siêu xinh, áo sơ mi công sở chất lụa đẹp nhiều màu', NULL, NULL, N'~/Images/ProductImage/f1f2b353ef00ff7d9042177929a4e1a2.jpg', N'23A', 1, NULL, 129000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (30, 14, N'Kính Hàn Quốc ', N'Sản phẩm chống tia uv, được ưa chuộng', NULL, NULL, N'~/Images/ProductImage/85f155ee43a26ca9b8acb5b8eca5c6c2.jpg', N'24A', 1, NULL, 1380000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (31, 7, N'Quần short đùi nữ hàng cotton rẻ đẹp', N'Quần short đùi nữ hàng cotton rẻ đẹp', NULL, NULL, N'~/Images/ProductImage/3fc421108d9c4bb3898fead19c355be3.jpg', N'25A', 1, NULL, 16000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (32, 7, N'Hình chụp thật - Quần short đùi jean 2 mẫu ( rách và không) size S M L', N' Quần short đùi jean 2 mẫu ( rách và không) size S M L', NULL, NULL, N'~/Images/ProductImage/021b617695259537335370200238bc2d.jpg', N'26A', 1, NULL, 128250, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (33, 7, N'SHORT NỮ LƯNG CAO RÁCH + ẢNH THẬT', N'SHORT NỮ LƯNG CAO RÁCH + ẢNH THẬT', NULL, NULL, N'~/Images/ProductImage/6f961fc0430f4dc15fe5ee5801ba4d8d.jpg', N'26A', 1, NULL, 110000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (34, 7, N'Short nữ thời trang thiết kế cạp cao gọn bụng kiểu sáng phong cách QCNP937', N'Quần short thoáng mát, tuyệt đẹp', NULL, NULL, N'~/Images/ProductImage/a5c06fba993a408c0a6f96b8b0528f58.jpg', N'27A', 1, NULL, 260000, NULL, 1)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (35, 7, N'Quần Short Ống Rộng Cạp Cao Hàn Quốc', N'ần Đùi Lưng Eo Cao Đơn Giản Quần Sooc Mùa Hè Ulzzang Thời Trang - K70225', NULL, NULL, N'~/Images/ProductImage/7abf80701755cbf226ff9e325373ea6d.jpg', N'28A', 1, NULL, 32000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (36, 3, N'Áo Hoodie Kì Lân Vetement Unicorn Unisex', N'Áo Hoodie Kì Lân Vetement Unicorn Unisex', NULL, NULL, N'~/Images/ProductImage/4b8b0cabdc0a93ebf950866386b3bdeb.jpg', N'28A', 1, NULL, 159000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (37, 3, N'[YVDCQM6Y]Áo nỉ dành cho cả nam và nữ', N'Style Cá tính Vải Nỉ Dài tay Hình Chữ Cỡ áo Loại 1 size', NULL, NULL, N'~/Images/ProductImage/63eb5cf6815c3915b36cdfe93b96637e.jpg', N'29A', 1, NULL, 59264, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (38, 3, N'Áo nỉ nữ Hàn Quốc cổ tròn đẹp chui đầu không mũ in quả trám BN 64982 [kèm ảnh thật]', N'Đẹp hợp thời trang', NULL, NULL, N'~/Images/ProductImage/659e2ad7e3de3ecf9b286f8b032b9ab4.jpg', N'30A', 1, NULL, 71000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (39, 1, N'Album 7 - BST áo thun unisex form rộng mùa hè thời trang phong cách Hàn Quốc', N'Áothun chất liệu vải siêu mát,đầy đủ size', NULL, NULL, N'~/Images/ProductImage/6f900cd2c34abe168b71125269ec54fc.jpg', N'31A', 1, NULL, 39000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (40, 1, N'Áo thun unisex nam nữ chất lượng.', N'Chất liệu cotton mát mẻ form áo rộng rãi thoải mái freesize, giá sỉ.', NULL, NULL, N'~/Images/ProductImage/8f11fd7612fa084e8060804daaa472bf.jpg', N'32A', 1, NULL, 69000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (41, 1, N'ÁO THUN NAM XÁM CHÌ ÁO PHÔNG NAM COTTON CHẤT ĐẸP (RUST)', N'ÁO THUN NAM XÁM CHÌ ÁO PHÔNG NAM COTTON CHẤT ĐẸP (RUST)', NULL, NULL, N'~/Images/ProductImage/528dd28315d5664b77a57b283eb59f40.jpg', N'33A', 1, NULL, 50000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (42, 1, N'áO Thun Nam Ngắn Tay Cổ Bẻ Nhiều Màu Logo Ong Cotton MS ', N'áO Thun Nam Ngắn Tay Cổ Bẻ Nhiều Màu Logo Ong Cotton MS ', NULL, NULL, N'~/Images/ProductImage/674de1772daa87cc75737891f1f616d7.jpg', N'34A', 1, NULL, 79000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (43, 1, N'Áo Thun lai bầu Zip Eo Fox_Unisex', N'Áo Thun lai bầu Zip Eo Fox_Unisex', NULL, NULL, N'~/Images/ProductImage/61abd8be2bfbe9f8eb47c809636d4881.jpg', N'35A', 1, NULL, 85000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (44, 2, N'ÁO SƠ MI TAY DÀI CHẤT NẾN', N'ÁO SƠ MI TAY DÀI CHẤT NẾN, LỊCH LÃM', NULL, NULL, N'~/Images/ProductImage/c1d1933a0af3d0e6ccea48537af012ba.jpg', N'46A', 1, NULL, 155000, NULL, NULL)
INSERT [dbo].[SanPham] ([SanPhamID], [LoaiSanPhamID], [TenSanPham], [ThongTinSanPham], [GhiChu], [NgayTao], [AnhSanPham], [MaSanPham], [Status], [TopHot], [GiaSanPham], [ThemHinhAnh], [Hot]) VALUES (45, 2, N'Sơ mi nam xám', N'Áo sơ mi lịch lãm quý phái', NULL, NULL, N'~/Images/ProductImage/ac289cfb950cb67ed9894cef6553f07f.jpg', N'36A', 1, NULL, 150000, NULL, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPhamDonHang] ON 

INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (7, 17, 13, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (8, 14, 14, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (9, 16, 14, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (10, 14, 15, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (11, 16, 15, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (12, 21, 16, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (13, 19, 16, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (14, 20, 17, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (15, 20, 18, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (16, 21, 19, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (17, 22, 19, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (18, 23, 19, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (19, 24, 19, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (20, 21, 20, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (21, 26, 20, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (22, 23, 20, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (23, 21, 21, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (24, 22, 21, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (25, 25, 21, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (26, 23, 21, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (27, 21, 22, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (28, 22, 22, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (29, 25, 22, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (30, 23, 22, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (31, 21, 23, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (32, 22, 23, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (33, 10, 23, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (34, 17, 24, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (35, 16, 24, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (36, 21, 25, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (37, 22, 25, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (38, 11, 25, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (39, 17, 26, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (40, 20, 26, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (41, 28, 26, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (42, 18, 26, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (43, 21, 27, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (44, 22, 27, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (45, 21, 28, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (46, 25, 28, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (47, 23, 28, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (48, 21, 29, NULL, 2)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (49, 22, 29, NULL, 1)
INSERT [dbo].[SanPhamDonHang] ([SanPhamDonHangID], [SanPhamID], [DonHangID], [GhiChu], [SoLuong]) VALUES (50, 24, 29, NULL, 1)
SET IDENTITY_INSERT [dbo].[SanPhamDonHang] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [Name], [Address], [Email], [Phone], [ThanhPhoID], [QuanHuyenID], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [XaPhuongID], [GroupID], [PasswordSalt], [DiaChiChiTiet]) VALUES (2, N'KimPhi', N'123456', N'Lê Kim Phi', N'Hà Nội', N'lekimphi1997@gmail.com                            ', 984583927, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, N'e10adc3949ba59abbe56e057f20f883e', NULL)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Name], [Address], [Email], [Phone], [ThanhPhoID], [QuanHuyenID], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [XaPhuongID], [GroupID], [PasswordSalt], [DiaChiChiTiet]) VALUES (3, N'Admin', N'123456', N'Lê Kim Phi', N'Hà Nội', N'philk.hvitclan@gmail.com                          ', 984583927, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, N'e10adc3949ba59abbe56e057f20f883e', NULL)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Name], [Address], [Email], [Phone], [ThanhPhoID], [QuanHuyenID], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [XaPhuongID], [GroupID], [PasswordSalt], [DiaChiChiTiet]) VALUES (4, N'NgocBach', N'123456', N'Vũ Ngọc Bách', N'Hà Nội', N'BachSaPa01@gmail.com                              ', 335355555, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, N'e10adc3949ba59abbe56e057f20f883e', NULL)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Name], [Address], [Email], [Phone], [ThanhPhoID], [QuanHuyenID], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [XaPhuongID], [GroupID], [PasswordSalt], [DiaChiChiTiet]) VALUES (6, N'NguyenVanA', NULL, N'Nguyễn Văn Anh', N'Hà Nội', N'nguyenvana@gmail.com                              ', 911111111, NULL, NULL, CAST(N'2019-05-09 17:06:36.607' AS DateTime), NULL, CAST(N'2019-05-16 21:44:09.233' AS DateTime), NULL, 1, NULL, 2, N'e10adc3949ba59abbe56e057f20f883e', N'Hà Nội')
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Name], [Address], [Email], [Phone], [ThanhPhoID], [QuanHuyenID], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [XaPhuongID], [GroupID], [PasswordSalt], [DiaChiChiTiet]) VALUES (7, N'facebook@gmail.com', N'123', N'Kim  Phi', NULL, N'facebook@gmail.com                                ', NULL, NULL, NULL, CAST(N'2019-05-10 12:34:24.323' AS DateTime), NULL, NULL, NULL, 1, NULL, 3, N'202cb962ac59075b964b07152d234b70', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserGroup] ON 

INSERT [dbo].[UserGroup] ([UserGroupID], [GroupName]) VALUES (1, N'Admin')
INSERT [dbo].[UserGroup] ([UserGroupID], [GroupName]) VALUES (2, N'Mods')
INSERT [dbo].[UserGroup] ([UserGroupID], [GroupName]) VALUES (3, N'Members')
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_Role]
GO
ALTER TABLE [dbo].[Credential]  WITH CHECK ADD  CONSTRAINT [FK_Credential_UserGroup] FOREIGN KEY([UserGroupID])
REFERENCES [dbo].[UserGroup] ([UserGroupID])
GO
ALTER TABLE [dbo].[Credential] CHECK CONSTRAINT [FK_Credential_UserGroup]
GO
ALTER TABLE [dbo].[CTSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSanPham_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[CTSanPham] CHECK CONSTRAINT [FK_CTSanPham_SanPham]
GO
ALTER TABLE [dbo].[DanhMucSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DanhMucSanPham_LoaiDanhMucSanPham] FOREIGN KEY([DanhMucSanPhamPID])
REFERENCES [dbo].[LoaiDanhMucSanPham] ([DanhMucSanPhamPID])
GO
ALTER TABLE [dbo].[DanhMucSanPham] CHECK CONSTRAINT [FK_DanhMucSanPham_LoaiDanhMucSanPham]
GO
ALTER TABLE [dbo].[DiaChiNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiNhanHang_KhachHang] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[DiaChiNhanHang] CHECK CONSTRAINT [FK_DiaChiNhanHang_KhachHang]
GO
ALTER TABLE [dbo].[DiaChiNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiNhanHang_QuanHuyen] FOREIGN KEY([QuanHuyenID])
REFERENCES [dbo].[QuanHuyen] ([QuanHuyenID])
GO
ALTER TABLE [dbo].[DiaChiNhanHang] CHECK CONSTRAINT [FK_DiaChiNhanHang_QuanHuyen]
GO
ALTER TABLE [dbo].[DiaChiNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiNhanHang_ThanhPho] FOREIGN KEY([ThanhPhoID])
REFERENCES [dbo].[ThanhPho] ([ThanhPhoID])
GO
ALTER TABLE [dbo].[DiaChiNhanHang] CHECK CONSTRAINT [FK_DiaChiNhanHang_ThanhPho]
GO
ALTER TABLE [dbo].[DiaChiNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiNhanHang_XaPhuong] FOREIGN KEY([XqaPhuongID])
REFERENCES [dbo].[XaPhuong] ([XaPhuongID])
GO
ALTER TABLE [dbo].[DiaChiNhanHang] CHECK CONSTRAINT [FK_DiaChiNhanHang_XaPhuong]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_DiaChiNhanHang] FOREIGN KEY([DiaChiNhanHangID])
REFERENCES [dbo].[DiaChiNhanHang] ([DiaChiNhanHangID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_DiaChiNhanHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_User]
GO
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoSanPham_NhapKho] FOREIGN KEY([NhapKhoID])
REFERENCES [dbo].[NhapKho] ([NhapKhoID])
GO
ALTER TABLE [dbo].[LoSanPham] CHECK CONSTRAINT [FK_LoSanPham_NhapKho]
GO
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoSanPham_PhanLoaiSanPham] FOREIGN KEY([PhanLoaiSanPhamID])
REFERENCES [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID])
GO
ALTER TABLE [dbo].[LoSanPham] CHECK CONSTRAINT [FK_LoSanPham_PhanLoaiSanPham]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_User]
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [FK_NhapKho_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [FK_NhapKho_NhanVien]
GO
ALTER TABLE [dbo].[PhanLoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_PhanLoaiSanPham_DanhMucSanPham] FOREIGN KEY([DanhMucSanPhamID])
REFERENCES [dbo].[DanhMucSanPham] ([DanhMucSanPhamID])
GO
ALTER TABLE [dbo].[PhanLoaiSanPham] CHECK CONSTRAINT [FK_PhanLoaiSanPham_DanhMucSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoaiSanPham] FOREIGN KEY([LoaiSanPhamID])
REFERENCES [dbo].[PhanLoaiSanPham] ([PhanLoaiSanPhamID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoaiSanPham]
GO
ALTER TABLE [dbo].[SanPhamDonHang]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamDonHang_DonHang] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[SanPhamDonHang] CHECK CONSTRAINT [FK_SanPhamDonHang_DonHang]
GO
ALTER TABLE [dbo].[SanPhamDonHang]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamDonHang_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[SanPhamDonHang] CHECK CONSTRAINT [FK_SanPhamDonHang_SanPham]
GO
ALTER TABLE [dbo].[ThongSoSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoSanPham_LoaiThongSo] FOREIGN KEY([LoaiThongSoID])
REFERENCES [dbo].[LoaiThongSo] ([LoaiThongSoID])
GO
ALTER TABLE [dbo].[ThongSoSanPham] CHECK CONSTRAINT [FK_ThongSoSanPham_LoaiThongSo]
GO
ALTER TABLE [dbo].[ThongSoSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoSanPham_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[ThongSoSanPham] CHECK CONSTRAINT [FK_ThongSoSanPham_SanPham]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_QuanHuyen] FOREIGN KEY([QuanHuyenID])
REFERENCES [dbo].[QuanHuyen] ([QuanHuyenID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_QuanHuyen]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_ThanhPho] FOREIGN KEY([ThanhPhoID])
REFERENCES [dbo].[ThanhPho] ([ThanhPhoID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_ThanhPho]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroup] ([UserGroupID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_XaPhuong] FOREIGN KEY([XaPhuongID])
REFERENCES [dbo].[XaPhuong] ([XaPhuongID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_XaPhuong]
GO
